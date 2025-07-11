## How to use
 - Place a image in `/img/portfolio/`
 - Replace `your-email@domain.com` in `_config.yml` with your email address. Refer to [formspree](http://formspree.io/) for more information.
 - Create posts to display your projects. Use the follow as an example:

## Running the Site

### Prerequisites
- Ruby (for local run)
- Bundler (for local run)
- Docker (for Docker run)

---

### Local Run

1. Install dependencies:
   ```sh
   bundle install
   ```
2. Serve the site:
   ```sh
   bundle exec jekyll serve
   ```
3. Open your browser to [http://localhost:4000](http://localhost:4000)

---

### Docker Run

1. Build the Docker image:
   ```sh
   docker build -t my-jekyll-site .
   ```
2. Run the Docker container:
   ```sh
   docker run -p 4000:4000 my-jekyll-site
   ```
3. Open your browser to [http://localhost:4000](http://localhost:4000)

---

Feel free to use either method depending on your environment and preferences.
