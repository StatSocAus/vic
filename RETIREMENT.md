# Legacy branch website transition

The central SSA Victoria and Tasmania page is the destination for current branch information:

- https://www.statsoc.org.au/Victoria
- Affiliate Organisations: https://www.statsoc.org.au/Di-Cook-Award

This proposal retires the duplicate branch-website role by adding a visible resource notice and central-site navigation. It preserves the repository and its existing resource URLs. It does not redirect visitors automatically, delete files, archive the repository or disable GitHub Pages.

## Preserved state and dependencies

The proposal starts from commit `883124f6ae3c47a9de015a88b35e03349886410a`. A complete local Git bundle was captured before changes. GitHub Pages currently publishes `main` at `/docs`; merging a change to these rendered files will publish it.

- The central Victoria page still links to `https://statsocaus.github.io/vic/council.html` for past councillors. Keep this URL available until a replacement is published and that link is updated.
- Preserve council source, rendered history, all CSV files and the explanatory constitutional and representative-role notes. The current rendered council section is a historical snapshot. Its date-dependent R renderer must be reviewed before any full rebuild.
- Preserve `slack.html`, `slack-coc.html`, their sources, joining instructions and code of conduct. The notice does not change Slack invitations, administrator details or community rules.
- Preserve all `intro/` and `docs/intro/` HTML, sources, images, fonts, CSS, JavaScript and audio. Existing slide URLs remain unchanged.
- The separate Di Cook award archive is outside this repository and is retained.

## Newer slides not yet in the Pages output

The repository contains 46 introductory HTML decks in `intro/`, while `docs/intro/` contains 40. These six source decks are preserved but are missing from the current Pages output:

- `intro/2025-05-28-event.html`
- `intro/2025-08-05-event.html`
- `intro/2025-10-27-event-Belz-Lecture-ECSS-Showcase.html`
- `intro/2026-03-18-event-ABS-Careers.html`
- `intro/2026-04-21-event.html`
- `intro/2026-06-25-mentoring-event.html`

This is tracked separately in https://github.com/StatSocAus/vic/issues/3. The notice-only proposal preserves these files without claiming that their deployment has been fixed.

## Review with Victorino before later retirement steps

Confirm whether Pages should remain the resource/slide host or whether Central will provide replacement destinations for council history, Slack information and slides. Verify newer slide output and accompanying assets. Update dependent central links only after their replacements work. Any redirect, repository archival or Pages shutdown needs a separate reviewed change.

The notices are mirrored into the R Markdown sources and the currently deployed HTML; the site navbar link is mirrored into `_site.yml` and the four rendered core pages. This avoids a date-dependent full-site rebuild during this transition.

## Rollback

Revert the notice commit to restore the previous source and rendered pages. No Pages configuration or existing resource URL changes are required.
