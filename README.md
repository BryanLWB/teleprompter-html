# Teleprompter HTML

一个零依赖的全屏台词滚动器。项目只有静态 HTML/CSS/JavaScript，适合演讲、直播、录课和提词使用。

## 功能

- 配置页编辑台词、速度、字号、行距、文字宽度、颜色、镜像和循环播放
- 展示页全屏滚动台词
- 展示页支持播放/暂停、重播、加速、减速、全屏和返回配置页
- 鼠标滚轮可临时快速滑动台词，停止滚轮后继续按设定速度播放
- 配置通过 URL hash 和 localStorage 保存，部署到普通静态服务器即可使用

## 使用

直接打开 `config.html`，编辑台词并点击“打开展示页”。

## Docker

克隆仓库后可以直接用 Docker Compose 启动：

```bash
docker compose up --build
```

启动后访问：

```text
http://127.0.0.1:8123
```

Compose 项目名、镜像名和容器名都使用 `teleprompter-html`。

也可以启动本地静态服务器：

```bash
python3 -m http.server 8123
```

然后访问：

```text
http://127.0.0.1:8123/config.html
```

## 文件

- `index.html`：入口页，自动跳转到配置页
- `config.html`：台词和播放参数配置页
- `display.html`：全屏台词展示页
- `Dockerfile`：静态站点镜像构建文件
- `docker-compose.yml`：Docker Compose 启动配置

## 快捷操作

展示页支持这些键盘和鼠标操作：

- 空格：播放/暂停
- `R`：重播
- 方向键上/右：加速
- 方向键下/左：减速
- `F`：全屏
- 鼠标滚轮：快速前后滑动台词

## 部署

这是纯静态项目，可以部署到 GitHub Pages、Netlify、Vercel 或任意静态文件服务器。

GitHub Pages 可以直接使用仓库根目录作为发布源。
