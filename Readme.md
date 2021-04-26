# a/A Practice Test Generator

This tool generates practice assessments for App Academy A01-style problems. It helps you get comfortable with common problem types and spec-driven workflows. Please use it to practice problem solving, not to memorize solutions.

## Requirements

- Ruby 2.6+ (any modern version should work)
- Bundler (`gem install bundler` if needed)

Install dependencies at the repo root:

```bash
bundle install
```

## How to use

1. Run one of the generators (details below):
   - `ruby practice_test_generator.rb` → creates `practice_assessment/`
   - `ruby category_generator.rb` → creates `category_assessment/` (interactive)
2. Open the generated directory and work in `practice_test.rb`.
3. Run specs as you go:
   - For `practice_assessment/`: a local `Gemfile` is created for you; run inside that folder: `bundle exec rspec spec/spec.rb`.
   - For `category_assessment/`: use the repo-level gems; run inside that folder: `bundle exec rspec spec.rb`.
4. Compare with `solution.rb` when you’re done.

Note: Do not edit files in `problems/`, `solutions/`, or `specs/`. These are the source templates used by the generators.

## Generators

All problems are registered in `resources/list.csv` with a name, category, and paths to their prompt, spec, and solution.

### Practice Assessment Generator

Command: `ruby practice_test_generator.rb`

Generates a randomized assessment across categories (excluding some lengthy/bonus problems) into `practice_assessment/` with:

- `lib/practice_test.rb` (your work goes here)
- `spec/spec.rb` (combined specs)
- `solution/solution.rb` (combined solutions)
- `Gemfile` and `resources/README.md`

### Category Generator

Command: `ruby category_generator.rb`

Interactively choose how many problems from each category to include. Shortcuts:

- Enter `all` → include all problems from all categories
- Enter `all, except: bonus` → include all non-bonus problems

Outputs `category_assessment/` with `practice_test.rb`, `spec.rb`, and `solution.rb`.

## Tips

- Timebox yourself to simulate the real assessment.
- Read spec failure messages; they usually point directly to the issue.
- Prefer clarity over cleverness. Aim for readable, well-named code.

## Contributing new problems

To add a new problem to the dataset:

1. Create three files:
   - `problems/<name>.rb` → prompt and empty method(s)
   - `specs/<name>_spec.rb` → RSpec tests for the method(s)
   - `solutions/<name>_solution.rb` → working reference solution
2. Add a line to `resources/list.csv`:

```
name,category,problems/<name>.rb,specs/<name>_spec.rb,solutions/<name>_solution.rb
```

Valid categories include `recursion`, `sort`, `enumerable`, `array`, `string`, and `bonus`.

## Overwriting notice

Running a generator will overwrite any existing files inside the generated assessment folder. Rename or move your work if you want to keep it before re-running a generator.

