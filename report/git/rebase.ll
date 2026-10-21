Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/rebase?download=true
inline.NumInlined: 130
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.141 = private unnamed_addr constant [12 x i8] c" --progress\00", align 1
@.str.142 = private unnamed_addr constant [56 x i8] c"apply options and merge options cannot be used together\00", align 1
@.str.143 = private unnamed_addr constant [93 x i8] c"apply options are incompatible with rebase.rebaseMerges.  Consider adding --no-rebase-merges\00", align 1
@.str.144 = private unnamed_addr constant [89 x i8] c"apply options are incompatible with rebase.updateRefs.  Consider adding --no-update-refs\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"--update-refs\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"--rebase-merges\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"--autosquash\00", align 1
@.str.148 = private unnamed_addr constant [27 x i8] c"Unknown rebase backend: %s\00", align 1
@.str.149 = private unnamed_addr constant [56 x i8] c"options.type was just set above; should be unreachable.\00", align 1
@.str.150 = private unnamed_addr constant [58 x i8] c"--reschedule-failed-exec requires --exec or --interactive\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"--signoff\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"@{-1}\00", align 1
@.str.154 = private unnamed_addr constant [22 x i8] c"invalid upstream '%s'\00", align 1
@.str.155 = private unnamed_addr constant [33 x i8] c"Could not create new root commit\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@.str.157 = private unnamed_addr constant [27 x i8] c"no such branch/commit '%s'\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"No such ref: %s\00", align 1
@.str.160 = private unnamed_addr constant [35 x i8] c"Could not resolve HEAD to a commit\00", align 1
@.str.161 = private unnamed_addr constant [45 x i8] c"unexpected number of arguments left to parse\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"'%s': need exactly one merge base with branch\00", align 1
@.str.164 = private unnamed_addr constant [34 x i8] c"'%s': need exactly one merge base\00", align 1
@.str.165 = private unnamed_addr constant [38 x i8] c"Does not point to a valid commit '%s'\00", align 1
@.str.166 = private unnamed_addr constant [29 x i8] c"Please commit or stash them.\00", align 1
@.str.167 = private unnamed_addr constant [20 x i8] c"HEAD is up to date.\00", align 1
@.str.168 = private unnamed_addr constant [34 x i8] c"Current branch %s is up to date.\0A\00", align 1
@.str.169 = private unnamed_addr constant [35 x i8] c"HEAD is up to date, rebase forced.\00", align 1
@.str.170 = private unnamed_addr constant [49 x i8] c"Current branch %s is up to date, rebase forced.\0A\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"pre-rebase\00", align 1
@.str.172 = private unnamed_addr constant [39 x i8] c"The pre-rebase hook refused to rebase.\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"Changes to %s:\0A\00", align 1
@.str.174 = private unnamed_addr constant [24 x i8] c"Changes from %s to %s:\0A\00", align 1
@.str.175 = private unnamed_addr constant [59 x i8] c"First, rewinding head to replay your work on top of it...\0A\00", align 1
@.str.176 = private unnamed_addr constant [24 x i8] c"%s (start): checkout %s\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c"Could not detach HEAD\00", align 1
@.str.178 = private unnamed_addr constant [26 x i8] c"Fast-forwarded %s to %s.\0A\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"%s..%s\00", align 1
@.str.180 = private unnamed_addr constant [41 x i8] c"option callback does not expect negation\00", align 1
@.str.181 = private unnamed_addr constant [44 x i8] c"option callback does not expect an argument\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"ask\00", align 1
@.str.186 = private unnamed_addr constant [55 x i8] c"--empty=ask is deprecated; use '--empty=stop' instead.\00", align 1
@.str.187 = private unnamed_addr constant [75 x i8] c"unrecognized empty type '%s'; valid values are \22drop\22, \22keep\22, and \22stop\22.\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"--no-keep-empty\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"--keep-empty\00", align 1
@.str.190 = private unnamed_addr constant [186 x i8] c"--rebase-merges with an empty string argument is deprecated and will stop working in a future version of Git. Use --rebase-merges without an argument instead, which does the same thing.\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"no-rebase-cousins\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"rebase-cousins\00", align 1
@.str.193 = private unnamed_addr constant [31 x i8] c"Unknown rebase-merges mode: %s\00", align 1
@.str.194 = private unnamed_addr constant [98 x i8] c"git rebase [-i] [options] [--exec <cmd>] [--onto <newbase> | --keep-base] [<upstream> [<branch>]]\00", align 1
@.str.195 = private unnamed_addr constant [78 x i8] c"git rebase [-i] [options] [--exec <cmd>] [--onto <newbase>] --root [<branch>]\00", align 1
@.str.196 = private unnamed_addr constant [55 x i8] c"git rebase --continue | --abort | --skip | --edit-todo\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"rebase.stat\00", align 1
@.str.198 = private unnamed_addr constant [18 x i8] c"rebase.autosquash\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"commit.gpgsign\00", align 1
@.str.200 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.201 = private unnamed_addr constant [17 x i8] c"rebase.autostash\00", align 1
@.str.202 = private unnamed_addr constant [20 x i8] c"rebase.rebasemerges\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"rebase.updaterefs\00", align 1
@.str.204 = private unnamed_addr constant [28 x i8] c"rebase.reschedulefailedexec\00", align 1
@.str.205 = private unnamed_addr constant [17 x i8] c"rebase.forkpoint\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c"rebase.backend\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"./strbuf.h\00", align 1
@.str.208 = private unnamed_addr constant [30 x i8] c"strbuf_setlen() beyond buffer\00", align 1
@.str.209 = private unnamed_addr constant [19 x i8] c"!strbuf_slopbuf[0]\00", align 1
@__PRETTY_FUNCTION__.strbuf_setlen = private unnamed_addr constant [44 x i8] c"void strbuf_setlen(struct strbuf *, size_t)\00", align 1
@apply_dir.ret = internal unnamed_addr global ptr null, align 8
@.str.210 = private unnamed_addr constant [13 x i8] c"rebase-apply\00", align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@merge_dir.ret = internal unnamed_addr global ptr null, align 8
@.str.211 = private unnamed_addr constant [13 x i8] c"rebase-merge\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"edit_todo\00", align 1
@.str.214 = private unnamed_addr constant [19 x i8] c"show_current_patch\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"head-name\00", align 1
@.str.216 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c"invalid onto: '%s'\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"orig-head\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.220 = private unnamed_addr constant [24 x i8] c"invalid orig-head: '%s'\00", align 1
@.str.221 = private unnamed_addr constant [24 x i8] c"allow_rerere_autoupdate\00", align 1
@.str.222 = private unnamed_addr constant [20 x i8] c"--rerere-autoupdate\00", align 1
@.str.223 = private unnamed_addr constant [23 x i8] c"--no-rerere-autoupdate\00", align 1
@.str.224 = private unnamed_addr constant [47 x i8] c"ignoring invalid allow_rerere_autoupdate: '%s'\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"gpg_sign_opt\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"REBASE_HEAD\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"AUTO_MERGE\00", align 1
@state_dir_path.path = internal global %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@state_dir_path.prefix_len = internal unnamed_addr global i64 0, align 8
@.str.228 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.229 = private unnamed_addr constant [38 x i8] c"exec commands cannot contain newlines\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c" \09\0D\0C\0B\00", align 1
@.str.231 = private unnamed_addr constant [19 x i8] c"empty exec command\00", align 1
@.str.232 = private unnamed_addr constant [30 x i8] c"%s requires the merge backend\00", align 1
@.str.233 = private unnamed_addr constant [119 x i8] c"%s\0APlease specify which branch you want to rebase against.\0ASee git-rebase(1) for details.\0A\0A    git rebase '<branch>'\0A\0A\00", align 1
@.str.234 = private unnamed_addr constant [57 x i8] c"There is no tracking information for the current branch.\00", align 1
@.str.235 = private unnamed_addr constant [35 x i8] c"You are not currently on a branch.\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"<remote>\00", align 1
@.str.237 = private unnamed_addr constant [127 x i8] c"If you wish to set tracking information for this branch you can do so with:\0A\0A    git branch --set-upstream-to=%s/<branch> %s\0A\0A\00", align 1
@.str.238 = private unnamed_addr constant [16 x i8] c"%s: checkout %s\00", align 1
@.str.239 = private unnamed_addr constant [23 x i8] c"could not switch to %s\00", align 1
@.str.240 = private unnamed_addr constant [37 x i8] c"move_to_original_branch without onto\00", align 1
@.str.241 = private unnamed_addr constant [24 x i8] c"%s (finish): %s onto %s\00", align 1
@.str.242 = private unnamed_addr constant [29 x i8] c"%s (finish): returning to %s\00", align 1
@.str.243 = private unnamed_addr constant [20 x i8] c"GIT_SEQUENCE_EDITOR\00", align 1
@.str.244 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.245 = private unnamed_addr constant [25 x i8] c"Unhandled rebase type %d\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"stopped-sha\00", align 1
@.str.247 = private unnamed_addr constant [14 x i8] c"Nothing to do\00", align 1
@.str.248 = private unnamed_addr constant [26 x i8] c"rebase.abbreviatecommands\00", align 1
@.str.249 = private unnamed_addr constant [57 x i8] c"a base commit must be provided with --upstream or --onto\00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.252 = private unnamed_addr constant [21 x i8] c"invalid command '%d'\00", align 1
@__const.do_interactive_rebase.make_script_args = private unnamed_addr constant %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, align 8
@.str.253 = private unnamed_addr constant [4 x i8] c"^%s\00", align 1
@.str.254 = private unnamed_addr constant [29 x i8] c"could not generate todo list\00", align 1
@.str.255 = private unnamed_addr constant [14 x i8] c"detached HEAD\00", align 1
@.str.256 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.257 = private unnamed_addr constant [19 x i8] c"unusable todo list\00", align 1
@.str.258 = private unnamed_addr constant [8 x i8] c"%s...%s\00", align 1
@default_abbrev = external local_unnamed_addr global i32, align 4
@.str.259 = private unnamed_addr constant [30 x i8] c"could not create temporary %s\00", align 1
@.str.260 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.261 = private unnamed_addr constant [30 x i8] c"could not mark as interactive\00", align 1
@path_interactive.ret = internal unnamed_addr global ptr null, align 8
@.str.262 = private unnamed_addr constant [25 x i8] c"rebase-merge/interactive\00", align 1
@path_squash_onto.ret = internal unnamed_addr global ptr null, align 8
@.str.263 = private unnamed_addr constant [25 x i8] c"rebase-merge/squash-onto\00", align 1
@__const.edit_todo_file.new_todo = private unnamed_addr constant { %struct.strbuf, ptr, i32, i32, i32, i32, i32, [4 x i8] } { %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.264 = private unnamed_addr constant [21 x i8] c"could not read '%s'.\00", align 1
@comment_line_str = external local_unnamed_addr global ptr, align 8
@.str.265 = private unnamed_addr constant [21 x i8] c"could not write '%s'\00", align 1
@__const.run_am.format_patch = private unnamed_addr constant { %struct.strvec, %struct.strvec, i32, i32, i64, ptr, ptr, i32, i32, i32, [4 x i8], ptr, i8, [7 x i8], ptr, i8, [7 x i8], ptr } { %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, i32 0, i32 0, i64 0, ptr null, ptr null, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null }, align 8
@.str.266 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.267 = private unnamed_addr constant [28 x i8] c"GIT_REFLOG_ACTION=%s (pick)\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"--resolved\00", align 1
@.str.269 = private unnamed_addr constant [16 x i8] c"--resolvemsg=%s\00", align 1
@rebase_resolvemsg = external local_unnamed_addr global ptr, align 8
@.str.270 = private unnamed_addr constant [7 x i8] c"--skip\00", align 1
@.str.271 = private unnamed_addr constant [21 x i8] c"--show-current-patch\00", align 1
@.str.272 = private unnamed_addr constant [16 x i8] c"rebased-patches\00", align 1
@.str.273 = private unnamed_addr constant [32 x i8] c"could not open '%s' for writing\00", align 1
@.str.274 = private unnamed_addr constant [13 x i8] c"format-patch\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.276 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.277 = private unnamed_addr constant [13 x i8] c"--full-index\00", align 1
@.str.278 = private unnamed_addr constant [14 x i8] c"--cherry-pick\00", align 1
@.str.279 = private unnamed_addr constant [13 x i8] c"--right-only\00", align 1
@.str.280 = private unnamed_addr constant [17 x i8] c"--default-prefix\00", align 1
@.str.281 = private unnamed_addr constant [13 x i8] c"--no-renames\00", align 1
@.str.282 = private unnamed_addr constant [18 x i8] c"--no-cover-letter\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"--pretty=mboxrd\00", align 1
@.str.284 = private unnamed_addr constant [13 x i8] c"--topo-order\00", align 1
@.str.285 = private unnamed_addr constant [10 x i8] c"--no-base\00", align 1
@.str.286 = private unnamed_addr constant [127 x i8] c"\0Agit encountered an error while preparing the patches to replay\0Athese revisions:\0A\0A    %s\0A\0AAs a result, git cannot rebase them.\00", align 1
@.str.287 = private unnamed_addr constant [32 x i8] c"could not open '%s' for reading\00", align 1
@.str.288 = private unnamed_addr constant [11 x i8] c"--rebasing\00", align 1
@.str.289 = private unnamed_addr constant [22 x i8] c"--patch-format=mboxrd\00", align 1
@.str.290 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.291 = private unnamed_addr constant [22 x i8] c"-%s-rerere-autoupdate\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"-no\00", align 1
@__const.cleanup_autostash.dir = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cmd_rebase(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  %5 = alloca %struct.child_process, align 8      ; 26 uses
  %6 = alloca %struct.child_process, align 8      ; 10 uses
  %7 = alloca %struct.reset_head_opts, align 8    ; 7 uses
  %8 = alloca %struct.todo_list, align 8          ; 7 uses
  %9 = alloca %struct.todo_list, align 8          ; 6 uses
  %10 = alloca %struct.strvec, align 8            ; 7 uses
  %11 = alloca %struct.todo_list, align 8         ; 8 uses
  %12 = alloca %struct.replay_opts, align 8       ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %13 = alloca %struct.string_list, align 8       ; 5 uses
  %14 = alloca %struct.replay_opts, align 8       ; 5 uses
  %15 = alloca %struct.replay_opts, align 8       ; 5 uses
  %16 = alloca %struct.child_process, align 8     ; 6 uses
  %17 = alloca %struct.strbuf, align 8            ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %18 = alloca %struct.rebase_options, align 8    ; 166 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %19 = alloca %struct.strbuf, align 8            ; 6 uses
  %20 = alloca %struct.strbuf, align 8            ; 6 uses
  %21 = alloca %struct.strbuf, align 8            ; 17 uses
  %22 = alloca %struct.object_id, align 4         ; 22 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %23 = alloca %struct.object_id, align 4         ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %24 = alloca %struct.reset_head_opts, align 16  ; 15 uses
  %25 = alloca [43 x %struct.option], align 16    ; 486 uses
  %26 = alloca %struct.object_id, align 4         ; 3 uses
  %27 = alloca %struct.lock_file, align 8         ; 6 uses
  %28 = alloca %struct.string_list, align 8       ; 6 uses
  %29 = alloca %struct.string_list, align 8       ; 6 uses
  %30 = alloca %struct.strbuf, align 8            ; 6 uses
  %31 = alloca %struct.replay_opts, align 8       ; 10 uses
  %32 = alloca %struct.object_id, align 4         ; 4 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %33 = alloca %struct.diff_options, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.m, i8 0, i64 384, i1 false)
  store i32 -1, ptr %18, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 4 uses
  store i32 -1, ptr %i.n, align 4, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.p = tail call ptr @xstrdup(ptr noundef nonnull @.str) #17
  store ptr %i.p, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %18, i64 124 ; 23 uses
  store i32 1, ptr %i.q, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %18, i64 128 ; 12 uses
  store ptr @empty_strvec, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %18, i64 176 ; 4 uses
  store ptr @empty_strvec, ptr %i.s, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 204 ; 2 uses
  store i32 1, ptr %i.t, align 4, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 208 ; 6 uses
  store i32 -1, ptr %i.u, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 280 ; 2 uses
  store i32 1, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 284 ; 5 uses
  store i32 -1, ptr %i.w, align 4, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 344 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 360 ; 2 uses
  store ptr @strbuf_slopbuf, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 372 ; 6 uses
  store i32 -1, ptr %i.z, align 4, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 376 ; 8 uses
  store i32 -1, ptr %i.aa, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 380 ; 6 uses
  store i32 -1, ptr %i.ab, align 4, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 388 ; 3 uses
  store i32 -1, ptr %i.ac, align 4, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 392 ; 3 uses
  store i32 -1, ptr %i.ad, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store ptr null, ptr %i.d, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 0, ptr %i.f, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i32 0, ptr %i.g, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) @__const.cleanup_autostash.dir, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) @__const.cleanup_autostash.dir, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) @__const.cleanup_autostash.dir, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store i32 0, ptr %i.h, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store ptr null, ptr %i.i, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store i32 -1, ptr %i.j, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  store i32 0, ptr %i.k, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %24, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  store i32 10, ptr %25, align 16, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %25, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !91
  %i.af = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr @.str.1, ptr %i.af, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 13 uses
  store ptr %i.ah, ptr %i.ag, align 16, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i64 0, ptr %i.ai, align 8, !tbaa !93
  %i.aj = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr @.str.2, ptr %i.aj, align 16, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %25, i64 40
  store ptr @.str.3, ptr %i.ak, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %25, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %25, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, i8 0, i64 48, i1 false)
  store i32 9, ptr %i.am, align 16, !tbaa !90
  %i.an = getelementptr inbounds nuw i8, ptr %25, i64 100
  store i32 0, ptr %i.an, align 4, !tbaa !91
  %i.ao = getelementptr inbounds nuw i8, ptr %25, i64 104
  store ptr @.str.4, ptr %i.ao, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %25, i64 112
  store ptr %i.f, ptr %i.ap, align 16, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %25, i64 120
  store i64 4, ptr %i.aq, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %25, i64 128
  store ptr null, ptr %i.ar, align 16, !tbaa !94
  %i.as = getelementptr inbounds nuw i8, ptr %25, i64 136
  store ptr @.str.5, ptr %i.as, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %25, i64 144
  store i32 2, ptr %i.at, align 16, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %25, i64 148
  store i32 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %25, i64 152
  store ptr null, ptr %i.av, align 8, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %25, i64 160
  store i64 1, ptr %i.aw, align 16, !tbaa !98
  %i.ax = getelementptr inbounds nuw i8, ptr %25, i64 168
  %i.ay = getelementptr inbounds nuw i8, ptr %25, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.ay, align 16, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %25, i64 196
  store i32 0, ptr %i.az, align 4, !tbaa !91
  %i.ba = getelementptr inbounds nuw i8, ptr %25, i64 200
  store ptr @.str.6, ptr %i.ba, align 8, !tbaa !92
  %i.bb = getelementptr inbounds nuw i8, ptr %25, i64 208
  store ptr %i.g, ptr %i.bb, align 16, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %25, i64 216
  store i64 4, ptr %i.bc, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %25, i64 224
  store ptr null, ptr %i.bd, align 16, !tbaa !94
  %i.be = getelementptr inbounds nuw i8, ptr %25, i64 232
  store ptr @.str.7, ptr %i.be, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %25, i64 240
  store i32 2, ptr %i.bf, align 16, !tbaa !96
  %i.bg = getelementptr inbounds nuw i8, ptr %25, i64 244
  store i32 0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %25, i64 248
  store ptr null, ptr %i.bh, align 8, !tbaa !97
  %i.bi = getelementptr inbounds nuw i8, ptr %25, i64 256
  store i64 1, ptr %i.bi, align 16, !tbaa !98
  %i.bj = getelementptr inbounds nuw i8, ptr %25, i64 264
  %i.bk = getelementptr inbounds nuw i8, ptr %25, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  store i32 6, ptr %i.bk, align 16, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 292
  store i32 113, ptr %i.bl, align 4, !tbaa !91
  %i.bm = getelementptr inbounds nuw i8, ptr %25, i64 296
  store ptr @.str.8, ptr %i.bm, align 8, !tbaa !92
  %i.bn = getelementptr inbounds nuw i8, ptr %25, i64 304
  store ptr %i.q, ptr %i.bn, align 16, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %25, i64 312
  store i64 4, ptr %i.bo, align 8, !tbaa !93
  %i.bp = getelementptr inbounds nuw i8, ptr %25, i64 320
  store ptr null, ptr %i.bp, align 16, !tbaa !94
  %i.bq = getelementptr inbounds nuw i8, ptr %25, i64 328
  store ptr @.str.9, ptr %i.bq, align 8, !tbaa !95
  %i.br = getelementptr inbounds nuw i8, ptr %25, i64 336
  store i32 2, ptr %i.br, align 16, !tbaa !96
  %i.bs = getelementptr inbounds nuw i8, ptr %25, i64 340
  store i32 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %25, i64 344
  store ptr null, ptr %i.bt, align 8, !tbaa !97
  %i.bu = getelementptr inbounds nuw i8, ptr %25, i64 352
  store i64 7, ptr %i.bu, align 16, !tbaa !98
  %i.bv = getelementptr inbounds nuw i8, ptr %25, i64 360
  %i.bw = getelementptr inbounds nuw i8, ptr %25, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  store i32 5, ptr %i.bw, align 16, !tbaa !90
  %i.bx = getelementptr inbounds nuw i8, ptr %25, i64 388
  store i32 118, ptr %i.bx, align 4, !tbaa !91
  %i.by = getelementptr inbounds nuw i8, ptr %25, i64 392
  store ptr @.str.10, ptr %i.by, align 8, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %25, i64 400
  store ptr %i.q, ptr %i.bz, align 16, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %25, i64 408
  store i64 4, ptr %i.ca, align 8, !tbaa !93
  %i.cb = getelementptr inbounds nuw i8, ptr %25, i64 416
  store ptr null, ptr %i.cb, align 16, !tbaa !94
  %i.cc = getelementptr inbounds nuw i8, ptr %25, i64 424
  store ptr @.str.11, ptr %i.cc, align 8, !tbaa !95
  %i.cd = getelementptr inbounds nuw i8, ptr %25, i64 432
  store i32 2, ptr %i.cd, align 16, !tbaa !96
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 436
  store i32 0, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %25, i64 440
  store ptr null, ptr %i.cf, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %25, i64 448
  store i64 7, ptr %i.cg, align 16, !tbaa !98
  %i.ch = getelementptr inbounds nuw i8, ptr %25, i64 456
  %i.ci = getelementptr inbounds nuw i8, ptr %25, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  store i32 6, ptr %i.ci, align 16, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %25, i64 484
  store i32 110, ptr %i.cj, align 4, !tbaa !91
  %i.ck = getelementptr inbounds nuw i8, ptr %25, i64 488
  store ptr @.str.12, ptr %i.ck, align 8, !tbaa !92
  %i.cl = getelementptr inbounds nuw i8, ptr %25, i64 496
  store ptr %i.q, ptr %i.cl, align 16, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %25, i64 504
  store i64 4, ptr %i.cm, align 8, !tbaa !93
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 512
  store ptr null, ptr %i.cn, align 16, !tbaa !94
  %i.co = getelementptr inbounds nuw i8, ptr %25, i64 520
  store ptr @.str.13, ptr %i.co, align 8, !tbaa !95
  %i.cp = getelementptr inbounds nuw i8, ptr %25, i64 528
  store i32 2, ptr %i.cp, align 16, !tbaa !96
  %i.cq = getelementptr inbounds nuw i8, ptr %25, i64 532
  store i32 0, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %25, i64 536
  store ptr null, ptr %i.cr, align 8, !tbaa !97
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 544
  store i64 4, ptr %i.cs, align 16, !tbaa !98
  %i.ct = getelementptr inbounds nuw i8, ptr %25, i64 552
  %i.cu = getelementptr inbounds nuw i8, ptr %25, i64 576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store i32 13, ptr %i.cu, align 16, !tbaa !90
  %i.cv = getelementptr inbounds nuw i8, ptr %25, i64 580
  store i32 0, ptr %i.cv, align 4, !tbaa !91
  %i.cw = getelementptr inbounds nuw i8, ptr %25, i64 584
  store ptr @.str.14, ptr %i.cw, align 8, !tbaa !92
  %i.cx = getelementptr inbounds nuw i8, ptr %25, i64 592
  store ptr %i.s, ptr %i.cx, align 16, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %25, i64 600
  store i64 0, ptr %i.cy, align 8, !tbaa !93
  %i.cz = getelementptr inbounds nuw i8, ptr %25, i64 608
  store ptr @.str.14, ptr %i.cz, align 16, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %25, i64 616
  store ptr @.str.15, ptr %i.da, align 8, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %25, i64 624
  store i32 0, ptr %i.db, align 16, !tbaa !96
  %i.dc = getelementptr inbounds nuw i8, ptr %25, i64 628
  store i32 0, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %25, i64 632
  store ptr @parse_opt_strvec, ptr %i.dd, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw i8, ptr %25, i64 640
  %i.df = getelementptr inbounds nuw i8, ptr %25, i64 672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.de, i8 0, i64 32, i1 false)
  store i32 9, ptr %i.df, align 16, !tbaa !90
  %i.dg = getelementptr inbounds nuw i8, ptr %25, i64 676
  store i32 0, ptr %i.dg, align 4, !tbaa !91
  %i.dh = getelementptr inbounds nuw i8, ptr %25, i64 680
  store ptr @.str.16, ptr %i.dh, align 8, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %25, i64 688
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 168 ; 2 uses
  store ptr %i.dj, ptr %i.di, align 16, !tbaa !38
  %i.dk = getelementptr inbounds nuw i8, ptr %25, i64 696
  store i64 4, ptr %i.dk, align 8, !tbaa !93
  %i.dl = getelementptr inbounds nuw i8, ptr %25, i64 704
  store ptr null, ptr %i.dl, align 16, !tbaa !94
  %i.dm = getelementptr inbounds nuw i8, ptr %25, i64 712
  store ptr @.str.17, ptr %i.dm, align 8, !tbaa !95
  %i.dn = getelementptr inbounds nuw i8, ptr %25, i64 720
  store i32 2, ptr %i.dn, align 16, !tbaa !96
  %i.do = getelementptr inbounds nuw i8, ptr %25, i64 724
  store i32 0, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 728
  store ptr null, ptr %i.dp, align 8, !tbaa !97
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 736
  store i64 1, ptr %i.dq, align 16, !tbaa !98
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 744
  %i.ds = getelementptr inbounds nuw i8, ptr %25, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.ds, align 16, !tbaa !90
  %i.dt = getelementptr inbounds nuw i8, ptr %25, i64 772
  store i32 0, ptr %i.dt, align 4, !tbaa !91
  %i.du = getelementptr inbounds nuw i8, ptr %25, i64 776
  store ptr @.str.18, ptr %i.du, align 8, !tbaa !92
  %i.dv = getelementptr inbounds nuw i8, ptr %25, i64 784
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 228 ; 3 uses
  store ptr %i.dw, ptr %i.dv, align 16, !tbaa !38
  %i.dx = getelementptr inbounds nuw i8, ptr %25, i64 792
  store i64 4, ptr %i.dx, align 8, !tbaa !93
  %i.dy = getelementptr inbounds nuw i8, ptr %25, i64 800
  store ptr null, ptr %i.dy, align 16, !tbaa !94
  %i.dz = getelementptr inbounds nuw i8, ptr %25, i64 808
  store ptr @.str.19, ptr %i.dz, align 8, !tbaa !95
  %i.ea = getelementptr inbounds nuw i8, ptr %25, i64 816
end_hunk_0
begin_hunk_1_@cmd_rebase:bb.a
bb.au:                                            ; preds = %bb.at
  %i.vy = call fastcc ptr @_(ptr noundef nonnull @.str.100)
  call void (ptr, ...) @die(ptr noundef %i.vy) #18
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.vz = call i32 @trace2_is_enabled() #17
  %.not143 = icmp eq i32 %i.vz, 0
  br i1 %.not143, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val231 = load i32, ptr %18, align 8, !tbaa !24
  %.not380 = icmp eq i32 %.val231, 1
  br i1 %.not380, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @trace2_cmd_mode_fl(ptr noundef nonnull @.str.101, i32 noundef 1343, ptr noundef nonnull @.str.47) #17
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.wa = getelementptr inbounds nuw i8, ptr %18, i64 248
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !125
  %.not145 = icmp eq i64 %i.wb, 0
  br i1 %.not145, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @trace2_cmd_mode_fl(ptr noundef nonnull @.str.101, i32 noundef 1345, ptr noundef nonnull @.str.102) #17
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.wc = load i32, ptr %i.ho, align 8, !tbaa !121
  %i.wd = zext i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw [8 x i8], ptr @action_names, i64 %i.wd
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !89
  call void @trace2_cmd_mode_fl(ptr noundef nonnull @.str.101, i32 noundef 1347, ptr noundef %i.wf) #17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ax, %bb.ba, %bb.az, %bb.av
  %i.wg = call ptr @getenv(ptr noundef nonnull @.str.103) #17 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %18, i64 160 ; 8 uses
  store ptr %i.wg, ptr %i.wh, align 8, !tbaa !45
  %.not146 = icmp eq ptr %i.wg, null
  %i.wi = select i1 %.not146, ptr @.str.104, ptr %i.wg
  %i.wj = call ptr @xstrdup(ptr noundef nonnull %i.wi) #17
  store ptr %i.wj, ptr %i.wh, align 8, !tbaa !45
  %i.wk = load i32, ptr %i.ho, align 8, !tbaa !121 ; 2 uses
  switch i32 %i.wk, label %bb.cj [
    i32 1, label %bb.bc
    i32 2, label %bb.bn
    i32 3, label %bb.bs
    i32 4, label %bb.bz
    i32 5, label %bb.ch
    i32 6, label %bb.ci
    i32 0, label %bb.ck
  ]

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %i.wl = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.wm = call i32 @repo_get_oid(ptr noundef %i.wl, ptr noundef nonnull @.str.105, ptr noundef nonnull %26) #17
  %.not226 = icmp eq i32 %i.wm, 0
  br i1 %.not226, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.wn = call fastcc ptr @_(ptr noundef nonnull @.str.106)
  call void (ptr, ...) @die(ptr noundef %i.wn) #18
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.wo = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.wp = call i32 @repo_hold_locked_index(ptr noundef %i.wo, ptr noundef nonnull %27, i32 noundef 0) #17
  %i.wq = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.wr = call i32 @repo_read_index(ptr noundef %i.wq) #17
  %i.ws = icmp slt i32 %i.wr, 0
  br i1 %i.ws, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.wt = call fastcc ptr @_(ptr noundef nonnull @.str.107)
  call void (ptr, ...) @die(ptr noundef %i.wt) #18
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.wu = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 432
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !126
  %i.wx = call i32 @refresh_index(ptr noundef %i.ww, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef null) #17 ; 0 uses
  %i.wy = icmp sgt i32 %i.wp, -1
  br i1 %i.wy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.wz = load ptr, ptr @the_repository, align 8, !tbaa !40
  call void @repo_update_index_if_able(ptr noundef %i.wz, ptr noundef nonnull %27) #17
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.xa = call i32 @rollback_lock_file(ptr noundef nonnull %27) #17 ; 0 uses
  %i.xb = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.xc = call i32 @has_unstaged_changes(ptr noundef %i.xb, i32 noundef 1) #17
  %.not227 = icmp eq i32 %i.xc, 0
  br i1 %.not227, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xd = call fastcc ptr @_(ptr noundef nonnull @.str.108)
  %i.xe = call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.xd) ; 0 uses
  %i.xf = call i32 @common_exit(ptr noundef nonnull @.str.101, i32 noundef 1376, i32 noundef 1) #17
  call void @exit(i32 noundef %i.xf) #18
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.xg = call fastcc i32 @read_basic_state(ptr noundef %18)
  %.not228 = icmp eq i32 %i.xg, 0
  br i1 %.not228, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.xh = call i32 @common_exit(ptr noundef nonnull @.str.101, i32 noundef 1379, i32 noundef 1) #17
  call void @exit(i32 noundef %i.xh) #18
  unreachable

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %bb.kn

bb.bn:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, i8 0, i64 40, i1 false)
  %i.xi = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i8 1, ptr %i.xi, align 8
  %i.xj = load ptr, ptr @the_repository, align 8, !tbaa !40
  call void @rerere_clear(ptr noundef %i.xj, ptr noundef nonnull %28) #17
  call void @string_list_clear(ptr noundef nonnull %28, i32 noundef 1) #17
  %i.xk = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 2, ptr %i.xk, align 8, !tbaa !47
  %i.xl = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.xm = call i32 @reset_head(ptr noundef %i.xl, ptr noundef nonnull %24) #17
  %i.xn = icmp slt i32 %i.xm, 0
  br i1 %i.xn, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.xo = call fastcc ptr @_(ptr noundef nonnull @.str.109)
  call void (ptr, ...) @die(ptr noundef %i.xo) #18
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.xp = load ptr, ptr @the_repository, align 8, !tbaa !40
  call void @remove_branch_state(ptr noundef %i.xp, i32 noundef 0) #17
  %i.xq = call fastcc i32 @read_basic_state(ptr noundef %18)
  %.not225 = icmp eq i32 %i.xq, 0
  br i1 %.not225, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.xr = call i32 @common_exit(ptr noundef nonnull @.str.101, i32 noundef 1392, i32 noundef 1) #17
  call void @exit(i32 noundef %i.xr) #18
  unreachable

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %bb.kn

bb.bs:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %29, i8 0, i64 40, i1 false)
  %i.xs = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i8 1, ptr %i.xs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) @__const.cleanup_autostash.dir, i64 24, i1 false)
  %i.xt = load ptr, ptr @the_repository, align 8, !tbaa !40
  call void @rerere_clear(ptr noundef %i.xt, ptr noundef nonnull %29) #17
  call void @string_list_clear(ptr noundef nonnull %29, i32 noundef 1) #17
  %i.xu = call fastcc i32 @read_basic_state(ptr noundef %18)
  %.not223 = icmp eq i32 %i.xu, 0
  br i1 %.not223, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.xv = call i32 @common_exit(ptr noundef nonnull @.str.101, i32 noundef 1403, i32 noundef 1) #17
  call void @exit(i32 noundef %i.xv) #18
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.xw = load ptr, ptr %i.wh, align 8, !tbaa !45
  %i.xx = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !48 ; 2 uses
  %.not224 = icmp eq ptr %i.xy, null
  br i1 %.not224, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.xz = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !49
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yc = call ptr @oid_to_hex(ptr noundef nonnull %i.yb) #17
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %i.yd = phi ptr [ %i.yc, %bb.bv ], [ %i.xy, %bb.bu ]
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %30, ptr noundef nonnull @.str.110, ptr noundef %i.xw, ptr noundef %i.yd) #17
  %i.ye = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !49
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  store ptr %i.yg, ptr %24, align 16, !tbaa !50
  %i.yh = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !32
  %i.yj = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.yi, ptr %i.yj, align 8, !tbaa !51
  %i.yk = load ptr, ptr %i.xx, align 8, !tbaa !48
  %i.yl = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %i.yk, ptr %i.yl, align 16, !tbaa !52
  %i.ym = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 2, ptr %i.ym, align 8, !tbaa !47
  %i.yn = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.yo = call i32 @reset_head(ptr noundef %i.yn, ptr noundef nonnull %24) #17
  %i.yp = icmp slt i32 %i.yo, 0
  br i1 %i.yp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.yq = call fastcc ptr @_(ptr noundef nonnull @.str.111)
  %i.yr = load ptr, ptr %i.ye, align 8, !tbaa !49
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yt = call ptr @oid_to_hex(ptr noundef nonnull %i.ys) #17
  call void (ptr, ...) @die(ptr noundef %i.yq, ptr noundef %i.yt) #18
  unreachable

bb.by:                                            ; preds = %bb.bw
  call void @strbuf_release(ptr noundef nonnull %30) #17
  %i.yu = load ptr, ptr @the_repository, align 8, !tbaa !40
  call void @remove_branch_state(ptr noundef %i.yu, i32 noundef 0) #17
  %i.yv = call fastcc i32 @finish_rebase(ptr noundef %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  br label %bb.no

bb.bz:                                            ; preds = %bb.bb
  %i.yw = call fastcc ptr @state_dir_path(ptr noundef nonnull @.str.66, ptr noundef %18)
  %i.yx = call i32 @save_autostash(ptr noundef %i.yw) #17 ; 0 uses
  %i.yy = load i32, ptr %18, align 8, !tbaa !24
  %i.yz = icmp eq i32 %i.yy, 1
  br i1 %i.yz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.za = getelementptr inbounds nuw i8, ptr %31, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.za, i8 0, i64 208, i1 false)
  %i.zb = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 -1, ptr %i.zb, align 4, !tbaa !57
  %i.zc = getelementptr inbounds nuw i8, ptr %31, i64 72
  store ptr @empty_strvec, ptr %i.zc, align 8, !tbaa !28
  %i.zd = getelementptr inbounds nuw i8, ptr %31, i64 136
  store ptr @empty_strvec, ptr %i.zd, align 8, !tbaa !28
  %i.ze = getelementptr inbounds nuw i8, ptr %31, i64 216
  %i.zf = call ptr @replay_ctx_new() #17
  store ptr %i.zf, ptr %i.ze, align 8, !tbaa !58
  store i32 2, ptr %31, align 8, !tbaa !59
  %i.zg = call i32 @sequencer_remove_state(ptr noundef nonnull %31) #17
  call void @replay_opts_release(ptr noundef nonnull %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  br label %bb.no

bb.cb:                                            ; preds = %bb.bz
  store i64 0, ptr %i.te, align 8, !tbaa !42
  %i.zh = load ptr, ptr %i.tf, align 8, !tbaa !32 ; 2 uses
  %.not9.i255 = icmp eq ptr %i.zh, @strbuf_slopbuf
  br i1 %.not9.i255, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i8 0, ptr %i.zh, align 1, !tbaa !43
  br label %strbuf_setlen.exit257

bb.cd:                                            ; preds = %bb.cb
  %i.zi = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !43
  %.not10.i256 = icmp eq i8 %i.zi, 0
  br i1 %.not10.i256, label %strbuf_setlen.exit257, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @__assert_fail(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.207, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #18
  unreachable

strbuf_setlen.exit257:                            ; preds = %bb.cc, %bb.cd
  %i.zj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !44 ; 2 uses
  %i.zl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zk) #19
  call void @strbuf_add(ptr noundef nonnull %21, ptr noundef nonnull %i.zk, i64 noundef %i.zl) #17
  %i.zm = call i32 @remove_dir_recursively(ptr noundef nonnull %21, i32 noundef 0) #17
  %.not222 = icmp eq i32 %i.zm, 0
  br i1 %.not222, label %bb.no, label %bb.cf

bb.cf:                                            ; preds = %strbuf_setlen.exit257
  %i.zn = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i = icmp eq i32 %i.zn, 0
  br i1 %.not4.i, label %_.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.zo = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.112, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %bb.cf, %bb.cg
  %.0.i = phi ptr [ %i.zo, %bb.cg ], [ @.str.112, %bb.cf ]
  %i.zp = load ptr, ptr %i.zj, align 8, !tbaa !44
  %i.zq = call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %i.zp) #17 ; 0 uses
  br label %bb.no

bb.ch:                                            ; preds = %bb.bb
  %i.zr = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i32 1, ptr %i.zr, align 8, !tbaa !127
  br label %bb.kn

bb.ci:                                            ; preds = %bb.bb
  %i.zs = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i32 1, ptr %i.zs, align 8, !tbaa !127
  br label %bb.kn

bb.cj:                                            ; preds = %bb.bb
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.101, i32 noundef 1448, ptr noundef nonnull @.str.113, i32 noundef %i.wk) #18
  unreachable

bb.ck:                                            ; preds = %bb.bb
  br i1 %.not135, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.zt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !44 ; 2 uses
  %i.zv = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.zu, i32 noundef 47) #19 ; 2 uses
  %.not221 = icmp eq ptr %i.zv, null
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 1
  %i.zx = select i1 %.not221, ptr %i.zu, ptr %i.zw
  call fastcc void @strbuf_setlen(ptr noundef nonnull %21, i64 noundef 0)
  %i.zy = load ptr, ptr %i.zt, align 8, !tbaa !44
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %21, ptr noundef nonnull @.str.115, ptr noundef %i.zy) #17
  %i.zz = call fastcc ptr @_(ptr noundef nonnull @.str.116)
  %i.aaa = load ptr, ptr %i.tf, align 8, !tbaa !32
  call void (ptr, ...) @die(ptr noundef %i.zz, ptr noundef nonnull %i.zx, ptr noundef nonnull @.str.114, ptr noundef %i.aaa) #18
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.aab = load i32, ptr %i.q, align 4, !tbaa !27 ; 3 uses
  %i.aac = and i32 %i.aab, 16
  %i.aad = icmp eq i32 %i.aac, 0
  %i.aae = getelementptr inbounds nuw i8, ptr %18, i64 248 ; 3 uses
  %i.aaf = load i64, ptr %i.aae, align 8          ; 2 uses
  %i.aag = icmp eq i64 %i.aaf, 0                  ; 2 uses
  %or.cond15.not384 = select i1 %i.aad, i1 %i.aag, i1 false
  %i.aah = load i32, ptr %i.u, align 8
  %i.aai = icmp ne i32 %i.aah, 1
  %or.cond18.not = select i1 %or.cond15.not384, i1 %i.aai, i1 false
  %spec.select = zext i1 %or.cond18.not to i32    ; 2 uses
  %i.aaj = load i32, ptr %i.dw, align 4, !tbaa !60
  %i.aak = icmp ne i32 %i.aaj, 0
  %i.aal = load i32, ptr %i.ej, align 8
  %i.aam = icmp ne i32 %i.aal, 0
  %or.cond21 = select i1 %i.aak, i1 true, i1 %i.aam
  br i1 %or.cond21, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.aan = or i32 %i.aab, 8                       ; 2 uses
  store i32 %i.aan, ptr %i.q, align 4, !tbaa !27
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.aao = phi i32 [ %i.aab, %bb.cm ], [ %i.aan, %bb.cn ]
  %i.aap = getelementptr inbounds nuw i8, ptr %18, i64 136 ; 2 uses
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !128 ; 2 uses
  %.not407 = icmp eq i64 %i.aaq, 0
  br i1 %.not407, label %.preheader393, label %.lr.ph

.lr.ph:                                           ; preds = %bb.co
  %i.aar = load ptr, ptr %i.r, align 8, !tbaa !129
  br label %bb.cp

.preheader393:                                    ; preds = %skip_prefix_impl.exit262, %bb.co
  %.1101.lcssa = phi i32 [ %spec.select, %bb.co ], [ %.2102, %skip_prefix_impl.exit262 ]
  br i1 %i.aag, label %._crit_edge, label %.lr.ph406

.lr.ph406:                                        ; preds = %.preheader393
  %i.aas = load ptr, ptr %i.pc, align 8, !tbaa !130
  br label %bb.cz

bb.cp:                                            ; preds = %.lr.ph, %skip_prefix_impl.exit262
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %skip_prefix_impl.exit262 ] ; 2 uses
  %.1101403 = phi i32 [ %spec.select, %.lr.ph ], [ %.2102, %skip_prefix_impl.exit262 ] ; 19 uses
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.aar, i64 %indvars.iv
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !89 ; 17 uses
  %i.aav = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aau, ptr noundef nonnull dereferenceable(17) @.str.117) #19
  %.not212 = icmp eq i32 %i.aav, 0
  br i1 %.not212, label %skip_prefix_impl.exit262, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aaw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aau, ptr noundef nonnull dereferenceable(19) @.str.118) #19
  %.not213 = icmp eq i32 %i.aaw, 0
  br i1 %.not213, label %skip_prefix_impl.exit262, label %.preheader396.preheader

.preheader396.preheader:                          ; preds = %bb.cq
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aau, i64 1 ; 2 uses
  %i.aay = load i8, ptr %i.aau, align 1, !tbaa !43
  %i.aaz = icmp eq i8 %i.aay, 45
  br i1 %i.aaz, label %.preheader396.1, label %skip_prefix_impl.exit262

.preheader396.1:                                  ; preds = %.preheader396.preheader
  %i.aba = load i8, ptr %i.aax, align 1, !tbaa !43
  %i.abb = icmp eq i8 %i.aba, 67
  br i1 %i.abb, label %skip_prefix_impl.exit.preheader, label %.preheader394.1

skip_prefix_impl.exit.preheader:                  ; preds = %.preheader396.1
  %scevgep = getelementptr i8, ptr %i.aau, i64 2
  br label %skip_prefix_impl.exit

skip_prefix_impl.exit:                            ; preds = %skip_prefix_impl.exit.preheader, %bb.cr
  %.0 = phi ptr [ %i.abd, %bb.cr ], [ %scevgep, %skip_prefix_impl.exit.preheader ] ; 2 uses
  %i.abc = load i8, ptr %.0, align 1, !tbaa !43   ; 2 uses
end_hunk_1
begin_hunk_2_@cmd_rebase:bb.a
  %.not196 = icmp eq ptr %i.asg, null
  br i1 %.not196, label %bb.jf, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ash = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i301 = icmp eq i32 %i.ash, 0
  br i1 %.not4.i301, label %_.exit303, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.asi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.169, i32 noundef 5) #17
  br label %_.exit303

_.exit303:                                        ; preds = %bb.jd, %bb.je
  %.0.i302 = phi ptr [ %i.asi, %bb.je ], [ @.str.169, %bb.jd ]
  %i.asj = call i32 @puts(ptr noundef nonnull dereferenceable(1) %.0.i302) ; 0 uses
  br label %.thread368

bb.jf:                                            ; preds = %bb.jc, %bb.jb
  %i.ask = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i304 = icmp eq i32 %i.ask, 0
  br i1 %.not4.i304, label %_.exit306, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.asl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.170, i32 noundef 5) #17
  br label %_.exit306

_.exit306:                                        ; preds = %bb.jf, %bb.jg
  %.0.i305 = phi ptr [ %i.asl, %bb.jg ], [ @.str.170, %bb.jf ]
  %i.asm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i305, ptr noundef nonnull %.1351) ; 0 uses
  br label %.thread368

.thread368:                                       ; preds = %bb.ja, %_.exit306, %_.exit303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %bb.ji

bb.jh:                                            ; preds = %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %bb.np

bb.ji:                                            ; preds = %.thread368, %can_fast_forward.exit.thread, %can_fast_forward.exit, %bb.if
  %i.asn = load i32, ptr %i.g, align 4, !tbaa !36
  %.not197 = icmp eq i32 %i.asn, 0
  br i1 %.not197, label %bb.jj, label %bb.jo

bb.jj:                                            ; preds = %bb.ji
  %i.aso = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.asp = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !137
  %.not198 = icmp eq i32 %.1, 0
  br i1 %.not198, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.asr = load ptr, ptr %.196, align 8, !tbaa !89
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jj, %bb.jk
  %i.ass = phi ptr [ %i.asr, %bb.jk ], [ null, %bb.jj ]
  %i.ast = call i32 (ptr, ptr, ...) @run_hooks_l(ptr noundef %i.aso, ptr noundef nonnull @.str.171, ptr noundef %i.asq, ptr noundef %i.ass, ptr noundef null) #17
  %.not199 = icmp eq i32 %i.ast, 0
  br i1 %.not199, label %bb.jo, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.asu = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i307 = icmp eq i32 %i.asu, 0
  br i1 %.not4.i307, label %_.exit309, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.asv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.172, i32 noundef 5) #17
  br label %_.exit309

_.exit309:                                        ; preds = %bb.jm, %bb.jn
  %.0.i308 = phi ptr [ %i.asv, %bb.jn ], [ @.str.172, %bb.jm ]
  %i.asw = call i32 (ptr, ...) @error(ptr noundef %.0.i308) #17 ; 0 uses
  br label %bb.np

bb.jo:                                            ; preds = %bb.jl, %bb.ji
  %i.asx = load i32, ptr %i.q, align 4, !tbaa !27 ; 2 uses
  %i.asy = and i32 %i.asx, 4
  %.not200 = icmp eq i32 %i.asy, 0
  br i1 %.not200, label %bb.jy, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  %i.asz = and i32 %i.asx, 2
  %.not201 = icmp eq i32 %i.asz, 0
  br i1 %.not201, label %bb.jv, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ata = load i128, ptr %22, align 4
  %i.atb = getelementptr i8, ptr %22, i64 16
  %i.atc = load i128, ptr %i.atb, align 4
  %i.atd = or i128 %i.ata, %i.atc
  %i.ate = icmp ne i128 %i.atd, 0
  %i.atf = zext i1 %i.ate to i32
  %.not.i310.not = icmp eq i32 %i.atf, 0
  %i.atg = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i311 = icmp eq i32 %i.atg, 0             ; 2 uses
  br i1 %.not.i310.not, label %bb.jr, label %bb.jt

bb.jr:                                            ; preds = %bb.jq
  br i1 %.not4.i311, label %_.exit313, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.ath = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.173, i32 noundef 5) #17
  br label %_.exit313

_.exit313:                                        ; preds = %bb.jr, %bb.js
  %.0.i312 = phi ptr [ %i.ath, %bb.js ], [ @.str.173, %bb.jr ]
  %i.ati = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !72
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 8
  %i.atl = call ptr @oid_to_hex(ptr noundef nonnull %i.atk) #17
  %i.atm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i312, ptr noundef %i.atl) ; 0 uses
  br label %bb.jv

bb.jt:                                            ; preds = %bb.jq
  br i1 %.not4.i311, label %_.exit316, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.atn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.174, i32 noundef 5) #17
  br label %_.exit316

_.exit316:                                        ; preds = %bb.jt, %bb.ju
  %.0.i315 = phi ptr [ %i.atn, %bb.ju ], [ @.str.174, %bb.jt ]
  %i.ato = call ptr @oid_to_hex(ptr noundef nonnull %22) #17
  %i.atp = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !72
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.ats = call ptr @oid_to_hex(ptr noundef nonnull %i.atr) #17
  %i.att = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i315, ptr noundef %i.ato, ptr noundef %i.ats) ; 0 uses
  br label %bb.jv

bb.jv:                                            ; preds = %_.exit313, %_.exit316, %bb.jp
  %i.atu = load ptr, ptr @the_repository, align 8, !tbaa !40
  call void @repo_diff_setup(ptr noundef %i.atu, ptr noundef nonnull %33) #17
  call void @init_diffstat_widths(ptr noundef nonnull %33) #17
  %i.atv = getelementptr inbounds nuw i8, ptr %33, i64 280 ; 2 uses
  %i.atw = load i32, ptr %i.atv, align 8, !tbaa !148
  %i.atx = or i32 %i.atw, 10
  store i32 %i.atx, ptr %i.atv, align 8, !tbaa !148
  %i.aty = getelementptr inbounds nuw i8, ptr %33, i64 264
  store i32 1, ptr %i.aty, align 8, !tbaa !149
  call void @diff_setup_done(ptr noundef nonnull %33) #17
  %i.atz = load i128, ptr %22, align 4
  %i.aua = getelementptr i8, ptr %22, i64 16
  %i.aub = load i128, ptr %i.aua, align 4
  %i.auc = or i128 %i.atz, %i.aub
  %i.aud = icmp ne i128 %i.auc, 0
  %i.aue = zext i1 %i.aud to i32
  %.not.i318.not = icmp eq i32 %i.aue, 0
  br i1 %.not.i318.not, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.auf = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 448
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !133
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 80
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !135
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jv, %bb.jw
  %i.auk = phi ptr [ %i.auj, %bb.jw ], [ %22, %bb.jv ]
  %i.aul = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !72
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 8
  call void @diff_tree_oid(ptr noundef %i.auk, ptr noundef nonnull %i.aun, ptr noundef nonnull @.str.65, ptr noundef nonnull %33) #17
  call void @diffcore_std(ptr noundef nonnull %33) #17
  call void @diff_flush(ptr noundef nonnull %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jo
  %.val = load i32, ptr %18, align 8, !tbaa !24
  %.not387 = icmp eq i32 %.val, 1
  br i1 %.not387, label %.thread493, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.auo = load i32, ptr %i.q, align 4, !tbaa !27
  %i.aup = and i32 %i.auo, 1
  %.not205 = icmp eq i32 %i.aup, 0
  br i1 %.not205, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.auq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i319 = icmp eq i32 %i.auq, 0
  br i1 %.not4.i319, label %_.exit321, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.aur = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.175, i32 noundef 5) #17
  br label %_.exit321

_.exit321:                                        ; preds = %bb.ka, %bb.kb
  %.0.i320 = phi ptr [ %i.aur, %bb.kb ], [ @.str.175, %bb.ka ]
  %i.aus = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i320) ; 0 uses
  br label %bb.kc

bb.kc:                                            ; preds = %_.exit321, %bb.jz
  %i.aut = load ptr, ptr %i.wh, align 8, !tbaa !45
  %i.auu = load ptr, ptr %i.ah, align 8, !tbaa !123
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %19, ptr noundef nonnull @.str.176, ptr noundef %i.aut, ptr noundef %i.auu) #17
  %i.auv = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.auw = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 3 uses
  %34 = load <2 x ptr>, ptr %i.auw, align 8, !tbaa !150
  %35 = getelementptr inbounds nuw i8, <2 x ptr> %34, i64 8
  %36 = shufflevector <2 x ptr> %35, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %36, ptr %24, align 16, !tbaa !151
  %i.aux = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 21, ptr %i.aux, align 8, !tbaa !47
  %i.auy = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !32
  %i.ava = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.auz, ptr %i.ava, align 8, !tbaa !51
  %i.avb = load ptr, ptr %i.wh, align 8, !tbaa !45
  %i.avc = getelementptr inbounds nuw i8, ptr %24, i64 56
  store ptr %i.avb, ptr %i.avc, align 8, !tbaa !152
  %i.avd = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.ave = call i32 @reset_head(ptr noundef %i.avd, ptr noundef nonnull %24) #17
  %.not206 = icmp eq i32 %i.ave, 0
  br i1 %.not206, label %bb.kf, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.avf = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i322 = icmp eq i32 %i.avf, 0
  br i1 %.not4.i322, label %_.exit324, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.avg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.177, i32 noundef 5) #17
  br label %_.exit324

_.exit324:                                        ; preds = %bb.kd, %bb.ke
  %.0.i323 = phi ptr [ %i.avg, %bb.ke ], [ @.str.177, %bb.kd ]
  %i.avh = call i32 (ptr, ...) @error(ptr noundef %.0.i323) #17 ; 0 uses
  br label %bb.np

bb.kf:                                            ; preds = %bb.kc
  %i.avi = load ptr, ptr %i.auw, align 8, !tbaa !49
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 8 ; 2 uses
  %i.avk = load i128, ptr %22, align 4
  %i.avl = load i128, ptr %i.avj, align 1
  %i.avm = xor i128 %i.avk, %i.avl
  %i.avn = getelementptr i8, ptr %22, i64 16
  %i.avo = getelementptr i8, ptr %i.avj, i64 16
  %i.avp = load i128, ptr %i.avn, align 4
  %i.avq = load i128, ptr %i.avo, align 1
  %i.avr = xor i128 %i.avp, %i.avq
  %i.avs = or i128 %i.avm, %i.avr
  %i.avt = icmp ne i128 %i.avs, 0
  %i.avu = zext i1 %i.avt to i32
  %.not.i326.not = icmp eq i32 %i.avu, 0
  br i1 %.not.i326.not, label %bb.kg, label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.avv = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i327 = icmp eq i32 %i.avv, 0
  br i1 %.not4.i327, label %_.exit329, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.avw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.178, i32 noundef 5) #17
  br label %_.exit329

_.exit329:                                        ; preds = %bb.kg, %bb.kh
  %.0.i328 = phi ptr [ %i.avw, %bb.kh ], [ @.str.178, %bb.kg ]
  %i.avx = load ptr, ptr %i.ah, align 8, !tbaa !123
  %i.avy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.0.i328, ptr noundef %.1351, ptr noundef %i.avx) ; 0 uses
  %i.avz = call fastcc i32 @move_to_original_branch(ptr noundef %18) ; 0 uses
  %i.awa = call fastcc i32 @finish_rebase(ptr noundef %18)
  br label %bb.no

bb.ki:                                            ; preds = %bb.kf
  %i.awb = load i32, ptr %i.rr, align 8, !tbaa !124
  %.not208 = icmp eq i32 %i.awb, 0
  br i1 %.not208, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.awc = load ptr, ptr %i.auv, align 8, !tbaa !72
  br label %bb.km

bb.kk:                                            ; preds = %bb.ki
  %i.awd = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !139 ; 2 uses
  %.not209 = icmp eq ptr %i.awe, null
  br i1 %.not209, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.awf = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !132
  br label %bb.km

bb.km:                                            ; preds = %bb.kk, %bb.kl, %bb.kj
  %.sink511 = phi ptr [ %i.awc, %bb.kj ], [ %i.awg, %bb.kl ], [ %i.awe, %bb.kk ]
  %i.awh = getelementptr inbounds nuw i8, ptr %.sink511, i64 8
  %i.awi = call ptr @oid_to_hex(ptr noundef nonnull %i.awh) #17
  %i.awj = load ptr, ptr %i.auw, align 8, !tbaa !49
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 8
  %i.awl = call ptr @oid_to_hex(ptr noundef nonnull %i.awk) #17
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %20, ptr noundef nonnull @.str.179, ptr noundef %i.awi, ptr noundef %i.awl) #17
  %i.awm = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !32
  %i.awo = getelementptr inbounds nuw i8, ptr %18, i64 80
  store ptr %i.awn, ptr %i.awo, align 8, !tbaa !153
  br label %bb.kn

bb.kn:                                            ; preds = %bb.br, %bb.bm, %bb.km, %bb.ci, %bb.ch
  %.2108.ph = phi ptr [ %.1107, %bb.km ], [ null, %bb.ci ], [ null, %bb.ch ], [ null, %bb.br ], [ null, %bb.bm ] ; 2 uses
  %.1104.ph = phi ptr [ %.0103, %bb.km ], [ null, %bb.ci ], [ null, %bb.ch ], [ null, %bb.br ], [ null, %bb.bm ] ; 2 uses
  %.pr374 = load i32, ptr %18, align 8, !tbaa !24 ; 2 uses
  switch i32 %.pr374, label %bb.ni [
    i32 1, label %.thread493
    i32 0, label %bb.mf
  ]

.thread493:                                       ; preds = %bb.jy, %bb.kn
  %.1104499 = phi ptr [ %.1104.ph, %bb.kn ], [ %.0103, %bb.jy ]
  %.2108497 = phi ptr [ %.2108.ph, %bb.kn ], [ %.1107, %bb.jy ]
  %i.awp = load i32, ptr %i.q, align 4, !tbaa !27
  %i.awq = and i32 %i.awp, 16
  %.not.i331 = icmp eq i32 %i.awq, 0
  br i1 %.not.i331, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %.thread493
  %i.awr = call i32 @setenv(ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.244, i32 noundef 1) #17 ; 0 uses
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %.thread493
  %i.aws = load ptr, ptr %i.tb, align 8, !tbaa !41 ; 2 uses
  %.not21.i = icmp eq ptr %i.aws, null
  br i1 %.not21.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 2
  %i.awu = call ptr @xstrdup(ptr noundef nonnull %i.awt) #17
  %i.awv = load ptr, ptr %i.tb, align 8, !tbaa !41
  call void @free(ptr noundef %i.awv) #17
  store ptr %i.awu, ptr %i.tb, align 8, !tbaa !41
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.aww = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.awx = call i32 @repo_config_get_bool(ptr noundef %i.aww, ptr noundef nonnull @.str.248, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.awy = load i32, ptr %i.t, align 4, !tbaa !29
  %.not.i.i = icmp ne i32 %i.awy, 0
  %i.awz = zext i1 %.not.i.i to i32
  %i.axa = load i32, ptr %i.a, align 4, !tbaa !36
  %.not22.i.i = icmp eq i32 %i.axa, 0
  %i.axb = select i1 %.not22.i.i, i32 0, i32 4
  %i.axc = or disjoint i32 %i.axb, %i.awz
  %i.axd = load i32, ptr %i.w, align 4, !tbaa !31
  %.not23.i.i = icmp eq i32 %i.axd, 0
  %i.axe = select i1 %.not23.i.i, i32 0, i32 8
  %i.axf = or disjoint i32 %i.axc, %i.axe
  %i.axg = getelementptr inbounds nuw i8, ptr %18, i64 288
  %i.axh = load i32, ptr %i.axg, align 8, !tbaa !79
  %i.axi = icmp sgt i32 %i.axh, 0
  %i.axj = select i1 %i.axi, i32 16, i32 0
  %i.axk = or disjoint i32 %i.axf, %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %18, i64 100
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !136
  %.not24.i.i = icmp eq i32 %i.axm, 0
  %i.axn = select i1 %.not24.i.i, i32 0, i32 64
  %i.axo = or disjoint i32 %i.axk, %i.axn
  %i.axp = load i32, ptr %i.z, align 4, !tbaa !87
  %.not25.i.i = icmp eq i32 %i.axp, 0
  %i.axq = select i1 %.not25.i.i, i32 0, i32 128
  %i.axr = or disjoint i32 %i.axo, %i.axq
  %i.axs = load i32, ptr %i.q, align 4, !tbaa !27
  %i.axt = shl i32 %i.axs, 8
  %i.axu = and i32 %i.axt, 256
  %i.axv = or i32 %i.axr, %i.axu                  ; 4 uses
  %i.axw = load i32, ptr %i.ho, align 8, !tbaa !121 ; 2 uses
  switch i32 %i.axw, label %bb.me [
    i32 0, label %bb.ks
    i32 2, label %bb.lt
    i32 1, label %bb.lu
    i32 5, label %bb.lv
    i32 6, label %bb.md
  ]

bb.ks:                                            ; preds = %bb.kr
  %i.axx = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 4 uses
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !72
  %.not27.i.i = icmp eq ptr %i.axy, null
  %i.axz = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  %i.aya = load ptr, ptr %i.axz, align 8
  %.not28.i.i = icmp eq ptr %i.aya, null
  %or.cond376 = select i1 %.not27.i.i, i1 %.not28.i.i, i1 false
  br i1 %or.cond376, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.ayb = call fastcc ptr @_(ptr noundef nonnull @.str.249)
  call void (ptr, ...) @die(ptr noundef %i.ayb) #18
  unreachable

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.do_interactive_rebase.make_script_args, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) @__const.edit_todo_file.new_todo, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call fastcc void @get_replay_opts(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull %18)
  %i.ayc = load ptr, ptr %i.axz, align 8, !tbaa !132 ; 2 uses
  %i.ayd = load ptr, ptr %i.axx, align 8, !tbaa !72
  %i.aye = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 3 uses
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !49
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ayc, null        ; 2 uses
  %i.ayh = select i1 %.not.i.i.i.i, ptr %i.ayd, ptr %i.ayc
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 8 ; 2 uses
  %i.ayj = call ptr @oid_to_hex(ptr noundef nonnull %i.ayi) #17
  %i.ayk = call ptr @oid_to_hex(ptr noundef nonnull %i.ayg) #17
  %i.ayl = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.258, ptr noundef %i.ayj, ptr noundef %i.ayk) #17 ; 2 uses
  %i.aym = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.ayn = load i32, ptr @default_abbrev, align 4, !tbaa !36
  %i.ayo = call ptr @repo_find_unique_abbrev(ptr noundef %i.aym, ptr noundef nonnull %i.ayg, i32 noundef %i.ayn) #17 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.ayp = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.ayq = load i32, ptr @default_abbrev, align 4, !tbaa !36
  %i.ayr = call ptr @repo_find_unique_abbrev(ptr noundef %i.ayp, ptr noundef nonnull %i.ayi, i32 noundef %i.ayq) #17
  %i.ays = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.179, ptr noundef %i.ayr, ptr noundef %i.ayo) #17
  br label %get_revision_ranges.exit.i.i.i

bb.kw:                                            ; preds = %bb.ku
  %i.ayt = call ptr @xstrdup(ptr noundef %i.ayo) #17
  br label %get_revision_ranges.exit.i.i.i

get_revision_ranges.exit.i.i.i:                   ; preds = %bb.kw, %bb.kv
  %storemerge.i.i.i.i = phi ptr [ %i.ayt, %bb.kw ], [ %i.ays, %bb.kv ] ; 2 uses
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %10, ptr noundef nonnull @.str.65, ptr noundef %i.ayl, ptr noundef null) #17
  %i.ayu = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !139 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ayv, null
  br i1 %.not.i.i.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %get_revision_ranges.exit.i.i.i
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  %i.ayx = call ptr @oid_to_hex(ptr noundef nonnull %i.ayw) #17
  %i.ayy = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %10, ptr noundef nonnull @.str.253, ptr noundef %i.ayx) #17 ; 0 uses
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %get_revision_ranges.exit.i.i.i
  %i.ayz = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.aza = call i32 @sequencer_make_script(ptr noundef %i.ayz, ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef range(i32 0, 512) %i.axv) #17 ; 2 uses
  %.not25.i.i.i = icmp eq i32 %i.aza, 0
  br i1 %.not25.i.i.i, label %bb.lb, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.azb = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i.i.i.i = icmp eq i32 %i.azb, 0
  br i1 %.not4.i.i.i.i, label %_.exit.i.i.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.azc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.254, i32 noundef 5) #17
  br label %_.exit.i.i.i

_.exit.i.i.i:                                     ; preds = %bb.la, %bb.kz
  %.0.i.i.i.i = phi ptr [ %i.azc, %bb.la ], [ @.str.254, %bb.kz ]
  %i.azd = call i32 (ptr, ...) @error(ptr noundef %.0.i.i.i.i) #17 ; 0 uses
  br label %do_interactive_rebase.exit.i.i

bb.lb:                                            ; preds = %bb.ky
  %i.aze = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.azf = load ptr, ptr %i.aze, align 8, !tbaa !48 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.azf, null
  %spec.select.i.i.i = select i1 %.not26.i.i.i, ptr @.str.255, ptr %i.azf
  %i.azg = load ptr, ptr %i.axx, align 8, !tbaa !72
  %i.azh = load ptr, ptr %i.aye, align 8, !tbaa !49
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %i.azj = load ptr, ptr @merge_dir.ret, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.azj, null
  br i1 %.not.i.i.i.i.i, label %bb.lc, label %merge_dir.exit.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  %i.azk = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.azl = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.azk, ptr noundef nonnull @.str.211) #17 ; 2 uses
  store ptr %i.azl, ptr @merge_dir.ret, align 8, !tbaa !89
  br label %merge_dir.exit.i.i.i.i

merge_dir.exit.i.i.i.i:                           ; preds = %bb.lc, %bb.lb
  %i.azm = phi ptr [ %i.azl, %bb.lc ], [ %i.azj, %bb.lb ]
  %i.azn = call i32 @is_directory(ptr noundef %i.azm) #17
  %.not.i31.i.i.i = icmp eq i32 %i.azn, 0
  br i1 %.not.i31.i.i.i, label %bb.ld, label %bb.li

bb.ld:                                            ; preds = %merge_dir.exit.i.i.i.i
  %i.azo = load ptr, ptr @the_repository, align 8, !tbaa !40 ; 2 uses
  %i.azp = load ptr, ptr @merge_dir.ret, align 8, !tbaa !89 ; 2 uses
  %.not.i9.i.i.i.i = icmp eq ptr %i.azp, null
  br i1 %.not.i9.i.i.i.i, label %bb.le, label %merge_dir.exit10.i.i.i.i

bb.le:                                            ; preds = %bb.ld
  %i.azq = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.azo, ptr noundef nonnull @.str.211) #17 ; 2 uses
  store ptr %i.azq, ptr @merge_dir.ret, align 8, !tbaa !89
  br label %merge_dir.exit10.i.i.i.i

merge_dir.exit10.i.i.i.i:                         ; preds = %bb.le, %bb.ld
  %i.azr = phi ptr [ %i.azq, %bb.le ], [ %i.azp, %bb.ld ]
  %i.azs = call i32 @safe_create_dir_in_gitdir(ptr noundef %i.azo, ptr noundef %i.azr) #17
  %.not7.i.i.i.i = icmp eq i32 %i.azs, 0
  br i1 %.not7.i.i.i.i, label %bb.li, label %bb.lf

bb.lf:                                            ; preds = %merge_dir.exit10.i.i.i.i
  %i.azt = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i.i.i.i.i = icmp eq i32 %i.azt, 0
  br i1 %.not4.i.i.i.i.i, label %_.exit.i.i.i.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.azu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.259, i32 noundef 5) #17
  br label %_.exit.i.i.i.i

_.exit.i.i.i.i:                                   ; preds = %bb.lg, %bb.lf
  %.0.i.i.i.i.i = phi ptr [ %i.azu, %bb.lg ], [ @.str.259, %bb.lf ]
  %i.azv = load ptr, ptr @merge_dir.ret, align 8, !tbaa !89 ; 2 uses
  %.not.i11.i.i.i.i = icmp eq ptr %i.azv, null
  br i1 %.not.i11.i.i.i.i, label %bb.lh, label %merge_dir.exit12.i.i.i.i

bb.lh:                                            ; preds = %_.exit.i.i.i.i
  %i.azw = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.azx = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.azw, ptr noundef nonnull @.str.211) #17 ; 2 uses
  store ptr %i.azx, ptr @merge_dir.ret, align 8, !tbaa !89
  br label %merge_dir.exit12.i.i.i.i

merge_dir.exit12.i.i.i.i:                         ; preds = %bb.lh, %_.exit.i.i.i.i
  %i.azy = phi ptr [ %i.azx, %bb.lh ], [ %i.azv, %_.exit.i.i.i.i ]
  %i.azz = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i.i.i.i.i, ptr noundef %i.azy) #17 ; 0 uses
  br label %do_interactive_rebase.exit.i.i

bb.li:                                            ; preds = %merge_dir.exit10.i.i.i.i, %merge_dir.exit.i.i.i.i
  %i.baa = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bab = call ptr @get_main_ref_store(ptr noundef %i.baa) #17
  %i.bac = call i32 @refs_delete_reflog(ptr noundef %i.bab, ptr noundef nonnull @.str.226) #17 ; 0 uses
  %i.bad = load ptr, ptr @path_interactive.ret, align 8, !tbaa !89 ; 2 uses
  %.not.i13.i.i.i.i = icmp eq ptr %i.bad, null
  br i1 %.not.i13.i.i.i.i, label %bb.lj, label %path_interactive.exit.i.i.i.i

bb.lj:                                            ; preds = %bb.li
  %i.bae = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.baf = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.bae, ptr noundef nonnull @.str.262) #17 ; 2 uses
  store ptr %i.baf, ptr @path_interactive.ret, align 8, !tbaa !89
  br label %path_interactive.exit.i.i.i.i

path_interactive.exit.i.i.i.i:                    ; preds = %bb.lj, %bb.li
  %i.bag = phi ptr [ %i.baf, %bb.lj ], [ %i.bad, %bb.li ]
  %i.bah = call ptr @git_fopen(ptr noundef %i.bag, ptr noundef nonnull @.str.260) #17 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.bah, null
  br i1 %.not8.i.i.i.i, label %bb.lk, label %init_basic_state.exit.i.i.i

bb.lk:                                            ; preds = %path_interactive.exit.i.i.i.i
  %i.bai = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i14.i.i.i.i = icmp eq i32 %i.bai, 0
  br i1 %.not4.i14.i.i.i.i, label %_.exit16.i.i.i.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.baj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.261, i32 noundef 5) #17
  br label %_.exit16.i.i.i.i

_.exit16.i.i.i.i:                                 ; preds = %bb.ll, %bb.lk
  %.0.i15.i.i.i.i = phi ptr [ %i.baj, %bb.ll ], [ @.str.261, %bb.lk ]
  %i.bak = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i15.i.i.i.i) #17 ; 0 uses
  br label %do_interactive_rebase.exit.i.i

init_basic_state.exit.i.i.i:                      ; preds = %path_interactive.exit.i.i.i.i
  %i.bal = call i32 @fclose(ptr noundef nonnull %i.bah) ; 0 uses
  %i.bam = call i32 @write_basic_state(ptr noundef nonnull %12, ptr noundef nonnull %spec.select.i.i.i, ptr noundef %i.azg, ptr noundef nonnull %i.azi) #17
  %.not27.i.i.i = icmp eq i32 %i.bam, 0
  br i1 %.not27.i.i.i, label %bb.lm, label %do_interactive_rebase.exit.i.i

bb.lm:                                            ; preds = %init_basic_state.exit.i.i.i
  %i.ban = load ptr, ptr %i.axz, align 8, !tbaa !132
  %.not28.i.i.i = icmp eq ptr %i.ban, null
  br i1 %.not28.i.i.i, label %bb.ln, label %bb.lq

bb.ln:                                            ; preds = %bb.lm
  %i.bao = getelementptr inbounds nuw i8, ptr %18, i64 104 ; 2 uses
  %i.bap = load ptr, ptr %i.bao, align 8, !tbaa !70 ; 2 uses
  %.not29.i.i.i = icmp eq ptr %i.bap, null
  br i1 %.not29.i.i.i, label %bb.lq, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.baq = load ptr, ptr @path_squash_onto.ret, align 8, !tbaa !89 ; 2 uses
  %.not.i33.i.i.i = icmp eq ptr %i.baq, null
  br i1 %.not.i33.i.i.i, label %bb.lp, label %path_squash_onto.exit.i.i.i

bb.lp:                                            ; preds = %bb.lo
  %i.bar = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bas = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.bar, ptr noundef nonnull @.str.263) #17 ; 2 uses
  store ptr %i.bas, ptr @path_squash_onto.ret, align 8, !tbaa !89
  %.pre.i.i.i = load ptr, ptr %i.bao, align 8, !tbaa !70
  br label %path_squash_onto.exit.i.i.i

path_squash_onto.exit.i.i.i:                      ; preds = %bb.lp, %bb.lo
  %i.bat = phi ptr [ %.pre.i.i.i, %bb.lp ], [ %i.bap, %bb.lo ]
  %i.bau = phi ptr [ %i.bas, %bb.lp ], [ %i.baq, %bb.lo ]
  %i.bav = call ptr @oid_to_hex(ptr noundef %i.bat) #17
  call void (ptr, ptr, ...) @write_file(ptr noundef %i.bau, ptr noundef nonnull @.str.256, ptr noundef %i.bav) #17
  br label %bb.lq

bb.lq:                                            ; preds = %path_squash_onto.exit.i.i.i, %bb.ln, %bb.lm
  %i.baw = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 432
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !126
  call void @discard_index(ptr noundef %i.bay) #17
  %i.baz = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bba = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !156
  %i.bbc = call i32 @todo_list_parse_insn_buffer(ptr noundef %i.baz, ptr noundef nonnull %12, ptr noundef %i.bbb, ptr noundef nonnull %11) #17
  %.not30.i.i.i = icmp eq i32 %i.bbc, 0
  br i1 %.not30.i.i.i, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.101, i32 noundef 327, ptr noundef nonnull @.str.257) #18
  unreachable

bb.ls:                                            ; preds = %bb.lq
  %i.bbd = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bbe = load ptr, ptr %i.ah, align 8, !tbaa !123
  %i.bbf = load ptr, ptr %i.axx, align 8, !tbaa !72
  %i.bbg = load ptr, ptr %i.aye, align 8, !tbaa !49
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8
  %i.bbi = load i32, ptr %i.u, align 8, !tbaa !86
  %i.bbj = load i32, ptr %i.ab, align 4, !tbaa !88
  %i.bbk = call i32 @complete_action(ptr noundef %i.bbd, ptr noundef nonnull %12, i32 noundef range(i32 0, 512) %i.axv, ptr noundef %storemerge.i.i.i.i, ptr noundef %i.bbe, ptr noundef %i.bbf, ptr noundef nonnull %i.bbh, ptr noundef nonnull %i.pc, i32 noundef %i.bbi, i32 noundef %i.bbj, ptr noundef nonnull %11) #17
  br label %do_interactive_rebase.exit.i.i

do_interactive_rebase.exit.i.i:                   ; preds = %bb.ls, %init_basic_state.exit.i.i.i, %_.exit16.i.i.i.i, %merge_dir.exit12.i.i.i.i, %_.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.bbk, %bb.ls ], [ %i.aza, %_.exit.i.i.i ], [ 0, %init_basic_state.exit.i.i.i ], [ 0, %_.exit16.i.i.i.i ], [ 0, %merge_dir.exit12.i.i.i.i ]
  call void @replay_opts_release(ptr noundef nonnull %12) #17
  call void @free(ptr noundef %i.ayl) #17
  call void @free(ptr noundef %storemerge.i.i.i.i) #17
  call void @todo_list_release(ptr noundef nonnull %11) #17
  call void @strvec_clear(ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %run_sequencer_rebase.exit.i

bb.lt:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %i.bbl = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 1, ptr %i.bbl, align 8
  %i.bbm = load ptr, ptr @the_repository, align 8, !tbaa !40
  call void @rerere_clear(ptr noundef %i.bbm, ptr noundef nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call fastcc void @get_replay_opts(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull %18)
  %i.bbn = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bbo = call i32 @sequencer_continue(ptr noundef %i.bbn, ptr noundef nonnull %14) #17
  call void @replay_opts_release(ptr noundef nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %run_sequencer_rebase.exit.i

bb.lv:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call fastcc void @get_replay_opts(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull %18)
  %i.bbp = call ptr @rebase_path_todo() #17       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) @__const.edit_todo_file.new_todo, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) @__const.edit_todo_file.new_todo, i64 56, i1 false)
  %i.bbq = call i64 @strbuf_read_file(ptr noundef nonnull %8, ptr noundef %i.bbp, i64 noundef 0) #17
  %i.bbr = icmp slt i64 %i.bbq, 0
  br i1 %i.bbr, label %bb.lw, label %bb.ly

bb.lw:                                            ; preds = %bb.lv
  %i.bbs = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i.i31.i.i = icmp eq i32 %i.bbs, 0
  br i1 %.not4.i.i31.i.i, label %_.exit.i32.i.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.bbt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.264, i32 noundef 5) #17
  br label %_.exit.i32.i.i

_.exit.i32.i.i:                                   ; preds = %bb.lx, %bb.lw
  %.0.i.i33.i.i = phi ptr [ %i.bbt, %bb.lx ], [ @.str.264, %bb.lw ]
  %i.bbu = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i.i33.i.i, ptr noundef %i.bbp) #17 ; 0 uses
  br label %edit_todo_file.exit.i.i

bb.ly:                                            ; preds = %bb.lv
  %i.bbv = load ptr, ptr @comment_line_str, align 8, !tbaa !89
  call void @strbuf_stripspace(ptr noundef nonnull %8, ptr noundef %i.bbv) #17
  %i.bbw = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bbx = call i32 @edit_todo_list(ptr noundef %i.bbw, ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef range(i32 0, 512) %i.axv) #17 ; 2 uses
  %.not.i29.i.i = icmp eq i32 %i.bbx, 0
  br i1 %.not.i29.i.i, label %bb.lz, label %bb.mc

bb.lz:                                            ; preds = %bb.ly
  %i.bby = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bbz = and i32 %i.axv, 509
  %i.bca = call i32 @todo_list_write_to_file(ptr noundef %i.bby, ptr noundef nonnull %9, ptr noundef %i.bbp, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef %i.bbz) #17
  %.not11.i.i.i = icmp eq i32 %i.bca, 0
  br i1 %.not11.i.i.i, label %bb.mc, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bcb = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i12.i.i.i = icmp eq i32 %i.bcb, 0
  br i1 %.not4.i12.i.i.i, label %_.exit14.i.i.i, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bcc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.265, i32 noundef 5) #17
  br label %_.exit14.i.i.i

_.exit14.i.i.i:                                   ; preds = %bb.mb, %bb.ma
  %.0.i13.i.i.i = phi ptr [ %i.bcc, %bb.mb ], [ @.str.265, %bb.ma ]
  %i.bcd = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i13.i.i.i, ptr noundef %i.bbp) #17 ; 0 uses
  br label %bb.mc

bb.mc:                                            ; preds = %_.exit14.i.i.i, %bb.lz, %bb.ly
  %.0.i30.i.i = phi i32 [ %i.bbx, %bb.ly ], [ -1, %_.exit14.i.i.i ], [ 0, %bb.lz ]
  call void @todo_list_release(ptr noundef nonnull %8) #17
  call void @todo_list_release(ptr noundef nonnull %9) #17
  br label %edit_todo_file.exit.i.i

edit_todo_file.exit.i.i:                          ; preds = %bb.mc, %_.exit.i32.i.i
  %.09.i.i.i = phi i32 [ -1, %_.exit.i32.i.i ], [ %.0.i30.i.i, %bb.mc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @replay_opts_release(ptr noundef nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %run_sequencer_rebase.exit.i

bb.md:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %16, ptr noundef nonnull align 8 dereferenceable(136) @__const.run_am.format_patch, i64 136, i1 false)
  %i.bce = getelementptr inbounds nuw i8, ptr %16, i64 104
  store i8 8, ptr %i.bce, align 8
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %16, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.251, ptr noundef null) #17
  %i.bcf = call i32 @run_command(ptr noundef nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %run_sequencer_rebase.exit.i

bb.me:                                            ; preds = %bb.kr
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.101, i32 noundef 397, ptr noundef nonnull @.str.252, i32 noundef %i.axw) #18
  unreachable

run_sequencer_rebase.exit.i:                      ; preds = %bb.md, %edit_todo_file.exit.i.i, %bb.lu, %do_interactive_rebase.exit.i.i
  %.0.i.i = phi i32 [ %.0.i.i.i, %do_interactive_rebase.exit.i.i ], [ %i.bbo, %bb.lu ], [ %.09.i.i.i, %edit_todo_file.exit.i.i ], [ %i.bcf, %bb.md ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.nj

bb.mf:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(136) @__const.run_am.format_patch, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) @__const.run_am.format_patch, i64 136, i1 false)
  %i.bcg = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i8 8, ptr %i.bcg, align 8
  %i.bch = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.266) #17 ; 0 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bcj = load ptr, ptr %i.wh, align 8, !tbaa !45
  %i.bck = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %i.bci, ptr noundef nonnull @.str.267, ptr noundef %i.bcj) #17 ; 0 uses
  %i.bcl = load i32, ptr %i.ho, align 8, !tbaa !121
  switch i32 %i.bcl, label %bb.mn [
    i32 1, label %bb.mg
    i32 2, label %bb.mk
    i32 6, label %bb.mm
  ]

bb.mg:                                            ; preds = %bb.mf
  %i.bcm = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.268) #17 ; 0 uses
  %i.bcn = load ptr, ptr @rebase_resolvemsg, align 8, !tbaa !89
  %i.bco = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %5, ptr noundef nonnull @.str.269, ptr noundef %i.bcn) #17 ; 0 uses
  %i.bcp = load ptr, ptr %i.tb, align 8, !tbaa !41 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.bcp, null
  br i1 %.not64.i.i, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bcq = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull %i.bcp) #17 ; 0 uses
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %i.bcr = call i32 @run_command(ptr noundef nonnull %5) #17 ; 2 uses
  %.not65.i.i = icmp eq i32 %i.bcr, 0
  br i1 %.not65.i.i, label %bb.mj, label %run_am.exit.i

bb.mj:                                            ; preds = %bb.mi
  %i.bcs = call fastcc i32 @move_to_original_branch(ptr noundef nonnull readonly %18)
  br label %run_am.exit.i

bb.mk:                                            ; preds = %bb.mf
  %i.bct = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.270) #17 ; 0 uses
  %i.bcu = load ptr, ptr @rebase_resolvemsg, align 8, !tbaa !89
  %i.bcv = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %5, ptr noundef nonnull @.str.269, ptr noundef %i.bcu) #17 ; 0 uses
  %i.bcw = call i32 @run_command(ptr noundef nonnull %5) #17 ; 2 uses
  %.not63.i.i = icmp eq i32 %i.bcw, 0
  br i1 %.not63.i.i, label %bb.ml, label %run_am.exit.i

bb.ml:                                            ; preds = %bb.mk
  %i.bcx = call fastcc i32 @move_to_original_branch(ptr noundef nonnull readonly %18)
  br label %run_am.exit.i

bb.mm:                                            ; preds = %bb.mf
  %i.bcy = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.271) #17 ; 0 uses
  %i.bcz = call i32 @run_command(ptr noundef nonnull %5) #17
  br label %run_am.exit.i

bb.mn:                                            ; preds = %bb.mf
  %i.bda = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bdb = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.bda, ptr noundef nonnull @.str.272) #17 ; 10 uses
  %i.bdc = call i32 (ptr, i32, ...) @open64(ptr noundef %i.bdb, i32 noundef 577, i32 noundef 438) #17 ; 2 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %6, i64 84
  store i32 %i.bdc, ptr %i.bdd, align 4, !tbaa !158
  %i.bde = icmp slt i32 %i.bdc, 0
  br i1 %i.bde, label %bb.mo, label %bb.mq

bb.mo:                                            ; preds = %bb.mn
  %i.bdf = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i.i.i = icmp eq i32 %i.bdf, 0
  br i1 %.not4.i.i.i, label %_.exit.i.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bdg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.273, i32 noundef 5) #17
  br label %_.exit.i.i

_.exit.i.i:                                       ; preds = %bb.mp, %bb.mo
  %.0.i.i27.i = phi ptr [ %i.bdg, %bb.mp ], [ @.str.273, %bb.mo ]
  %i.bdh = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i.i27.i, ptr noundef %i.bdb) #17 ; 0 uses
  call void @free(ptr noundef %i.bdb) #17
  call void @child_process_clear(ptr noundef nonnull %5) #17
  br label %run_am.exit.i

bb.mq:                                            ; preds = %bb.mn
  %i.bdi = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i8 8, ptr %i.bdi, align 8
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %6, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.285, ptr noundef null) #17
  %i.bdj = getelementptr inbounds nuw i8, ptr %18, i64 352
  %i.bdk = load i64, ptr %i.bdj, align 8, !tbaa !159
  %.not.i26.i = icmp eq i64 %i.bdk, 0
  br i1 %.not.i26.i, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bdl = load ptr, ptr %i.y, align 8, !tbaa !160
  call void @strvec_split(ptr noundef nonnull %6, ptr noundef %i.bdl) #17
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  %i.bdm = load i32, ptr %i.rr, align 8, !tbaa !124
  %.not57.i.i = icmp eq i32 %i.bdm, 0
  %.pn.in.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not57.i.i, i64 24, i64 64
  %.pn.in.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %18, i64 %.pn.in.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.pn.i.i = load ptr, ptr %.pn.in.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !150
  %i.bdn = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.bdo = call ptr @oid_to_hex(ptr noundef nonnull %i.bdn) #17
  %i.bdp = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !49
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 8
  %i.bds = call ptr @oid_to_hex(ptr noundef nonnull %i.bdr) #17
  %i.bdt = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %6, ptr noundef nonnull @.str.258, ptr noundef %i.bdo, ptr noundef %i.bds) #17 ; 0 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !139 ; 2 uses
  %.not58.i.i = icmp eq ptr %i.bdv, null
  br i1 %.not58.i.i, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 8
  %i.bdx = call ptr @oid_to_hex(ptr noundef nonnull %i.bdw) #17
  %i.bdy = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %6, ptr noundef nonnull @.str.253, ptr noundef %i.bdx) #17 ; 0 uses
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %i.bdz = call i32 @run_command(ptr noundef nonnull %6) #17 ; 2 uses
  %.not59.i.i = icmp eq i32 %i.bdz, 0
  br i1 %.not59.i.i, label %bb.mx, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bea = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bea, i8 0, i64 48, i1 false)
  %i.beb = call i32 @unlink(ptr noundef %i.bdb) #17 ; 0 uses
  call void @free(ptr noundef %i.bdb) #17
  call void @child_process_clear(ptr noundef nonnull %5) #17
  %i.bec = load ptr, ptr %i.bdp, align 8, !tbaa !49
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 8
  store ptr %i.bed, ptr %7, align 8, !tbaa !50
  %i.bee = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !48
  %i.beg = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bef, ptr %i.beg, align 8, !tbaa !52
  %i.beh = load ptr, ptr %i.wh, align 8, !tbaa !45
  %i.bei = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.beh, ptr %i.bei, align 8, !tbaa !152
  %i.bej = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bek = call i32 @reset_head(ptr noundef %i.bej, ptr noundef nonnull %7) #17 ; 0 uses
  %i.bel = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i66.i.i = icmp eq i32 %i.bel, 0
  br i1 %.not4.i66.i.i, label %_.exit68.i.i, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bem = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.286, i32 noundef 5) #17
  br label %_.exit68.i.i

_.exit68.i.i:                                     ; preds = %bb.mw, %bb.mv
  %.0.i67.i.i = phi ptr [ %i.bem, %bb.mw ], [ @.str.286, %bb.mv ]
  %i.ben = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !153
  %i.bep = call i32 (ptr, ...) @error(ptr noundef %.0.i67.i.i, ptr noundef %i.beo) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %run_am.exit.i

bb.mx:                                            ; preds = %bb.mu
  %i.beq = call i32 (ptr, i32, ...) @open64(ptr noundef %i.bdb, i32 noundef 0) #17 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 %i.beq, ptr %i.ber, align 8, !tbaa !161
  %i.bes = icmp slt i32 %i.beq, 0
  br i1 %i.bes, label %bb.my, label %bb.na

bb.my:                                            ; preds = %bb.mx
  %i.bet = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not4.i69.i.i = icmp eq i32 %i.bet, 0
  br i1 %.not4.i69.i.i, label %_.exit71.i.i, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.beu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.287, i32 noundef 5) #17
  br label %_.exit71.i.i

_.exit71.i.i:                                     ; preds = %bb.mz, %bb.my
  %.0.i70.i.i = phi ptr [ %i.beu, %bb.mz ], [ @.str.287, %bb.my ]
  %i.bev = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i70.i.i, ptr noundef %i.bdb) #17 ; 0 uses
  call void @free(ptr noundef %i.bdb) #17
  call void @child_process_clear(ptr noundef nonnull %5) #17
  br label %run_am.exit.i

bb.na:                                            ; preds = %bb.mx
  %i.bew = load ptr, ptr %i.r, align 8, !tbaa !129
  call void @strvec_pushv(ptr noundef nonnull %5, ptr noundef %i.bew) #17
  %i.bex = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.288) #17 ; 0 uses
  %i.bey = load ptr, ptr @rebase_resolvemsg, align 8, !tbaa !89
  %i.bez = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %5, ptr noundef nonnull @.str.269, ptr noundef %i.bey) #17 ; 0 uses
  %i.bfa = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.289) #17 ; 0 uses
  %i.bfb = load i32, ptr %i.lz, align 8, !tbaa !80
  switch i32 %i.bfb, label %bb.nc [
    i32 1, label %.sink.split.i.i
    i32 2, label %bb.nb
  ]

bb.nb:                                            ; preds = %bb.na
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.nb, %bb.na
  %.str.223.sink.i.i = phi ptr [ @.str.223, %bb.nb ], [ @.str.222, %bb.na ]
  %i.bfc = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull %.str.223.sink.i.i) #17 ; 0 uses
  br label %bb.nc

bb.nc:                                            ; preds = %.sink.split.i.i, %bb.na
  %i.bfd = load ptr, ptr %i.tb, align 8, !tbaa !41 ; 2 uses
  %.not60.i.i = icmp eq ptr %i.bfd, null
  br i1 %.not60.i.i, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.bfe = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull %i.bfd) #17 ; 0 uses
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  %i.bff = call i32 @run_command(ptr noundef nonnull %5) #17 ; 3 uses
  %i.bfg = call i32 @unlink(ptr noundef %i.bdb) #17 ; 0 uses
  call void @free(ptr noundef %i.bdb) #17
  %.not61.i.i = icmp eq i32 %i.bff, 0
  br i1 %.not61.i.i, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  %i.bfh = call fastcc i32 @move_to_original_branch(ptr noundef nonnull readonly %18)
  br label %run_am.exit.i

bb.ng:                                            ; preds = %bb.ne
  %i.bfi = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !44
  %i.bfk = call i32 @is_directory(ptr noundef %i.bfj) #17
  %.not62.i.i = icmp eq i32 %i.bfk, 0
  br i1 %.not62.i.i, label %run_am.exit.i, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  call fastcc void @rebase_write_basic_state(ptr noundef nonnull readonly %18)
  br label %run_am.exit.i

run_am.exit.i:                                    ; preds = %bb.nh, %bb.ng, %bb.nf, %_.exit71.i.i, %_.exit68.i.i, %_.exit.i.i, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi
  %.0.i25.i = phi i32 [ %i.bfh, %bb.nf ], [ %i.bcs, %bb.mj ], [ %i.bcr, %bb.mi ], [ %i.bcx, %bb.ml ], [ %i.bcz, %bb.mm ], [ -1, %_.exit.i.i ], [ %i.bdz, %_.exit68.i.i ], [ -1, %_.exit71.i.i ], [ %i.bcw, %bb.mk ], [ %i.bff, %bb.nh ], [ %i.bff, %bb.ng ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.nj

bb.ni:                                            ; preds = %bb.kn
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.101, i32 noundef 759, ptr noundef nonnull @.str.245, i32 noundef %.pr374) #18
  unreachable

bb.nj:                                            ; preds = %run_am.exit.i, %run_sequencer_rebase.exit.i
  %.1104498 = phi ptr [ %.1104499, %run_sequencer_rebase.exit.i ], [ %.1104.ph, %run_am.exit.i ]
  %.2108496 = phi ptr [ %.2108497, %run_sequencer_rebase.exit.i ], [ %.2108.ph, %run_am.exit.i ]
  %.0.i330 = phi i32 [ %.0.i.i, %run_sequencer_rebase.exit.i ], [ %.0.i25.i, %run_am.exit.i ] ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.bfm = load i32, ptr %i.bfl, align 8, !tbaa !127
  %.not22.i = icmp ne i32 %i.bfm, 0
  %i.bfn = load i32, ptr %18, align 8
  %i.bfo = icmp eq i32 %i.bfn, 1
  %or.cond378 = select i1 %.not22.i, i1 true, i1 %i.bfo
  br i1 %or.cond378, label %run_specific_rebase.exit, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  switch i32 %.0.i330, label %run_specific_rebase.exit [
    i32 0, label %bb.nl
    i32 2, label %bb.nn
  ]

bb.nl:                                            ; preds = %bb.nk
  %i.bfp = call fastcc ptr @state_dir_path(ptr noundef nonnull @.str.246, ptr noundef nonnull %18)
  %i.bfq = call i32 @file_exists(ptr noundef %i.bfp) #17
  %.not23.i = icmp eq i32 %i.bfq, 0
  br i1 %.not23.i, label %bb.nm, label %run_specific_rebase.exit

bb.nm:                                            ; preds = %bb.nl
  %i.bfr = call fastcc i32 @finish_rebase(ptr noundef nonnull %18) ; 0 uses
  br label %run_specific_rebase.exit

bb.nn:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) @__const.cleanup_autostash.dir, i64 24, i1 false)
  %i.bfs = call fastcc ptr @state_dir_path(ptr noundef nonnull @.str.66, ptr noundef nonnull %18)
  %i.bft = call i32 @apply_autostash(ptr noundef %i.bfs) #17 ; 0 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !44
  call fastcc void @strbuf_addstr(ptr noundef nonnull %17, ptr noundef %i.bfv)
  %i.bfw = call i32 @remove_dir_recursively(ptr noundef nonnull %17, i32 noundef 0) #17 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %17) #17
  call void (ptr, ...) @die(ptr noundef nonnull @.str.247) #18
  unreachable

run_specific_rebase.exit:                         ; preds = %bb.nj, %bb.nk, %bb.nl, %bb.nm
  %.not24.i = icmp ne i32 %.0.i330, 0
  %i.bfx = sext i1 %.not24.i to i32
  br label %bb.no

bb.no:                                            ; preds = %.thread371, %bb.by, %bb.ca, %_.exit, %strbuf_setlen.exit257, %cleanup_autostash.exit, %run_specific_rebase.exit, %_.exit329
  %.1111 = phi i32 [ %i.bfx, %run_specific_rebase.exit ], [ %i.yv, %bb.by ], [ %i.zg, %bb.ca ], [ 1, %_.exit ], [ 0, %strbuf_setlen.exit257 ], [ 1, %cleanup_autostash.exit ], [ %i.awa, %_.exit329 ], [ %i.asb, %.thread371 ]
  %.3 = phi ptr [ %.2108496, %run_specific_rebase.exit ], [ null, %bb.by ], [ null, %bb.ca ], [ null, %_.exit ], [ null, %strbuf_setlen.exit257 ], [ %.1107, %cleanup_autostash.exit ], [ %.1107, %_.exit329 ], [ %.1107, %.thread371 ]
  %.2105 = phi ptr [ %.1104498, %run_specific_rebase.exit ], [ null, %bb.by ], [ null, %bb.ca ], [ null, %_.exit ], [ null, %strbuf_setlen.exit257 ], [ %.0103, %cleanup_autostash.exit ], [ %.0103, %_.exit329 ], [ %.0103, %.thread371 ]
  call void @strbuf_release(ptr noundef nonnull %21) #17
  call void @strbuf_release(ptr noundef nonnull %19) #17
  call void @strbuf_release(ptr noundef nonnull %20) #17
  %i.bfy = load ptr, ptr %i.o, align 8, !tbaa !26
  call void @free(ptr noundef %i.bfy) #17
  %i.bfz = load ptr, ptr %i.wh, align 8, !tbaa !45
  call void @free(ptr noundef %i.bfz) #17
  %i.bga = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !48
  call void @free(ptr noundef %i.bgb) #17
  call void @strvec_clear(ptr noundef nonnull %i.r) #17
  %i.bgc = load ptr, ptr %i.tb, align 8, !tbaa !41
  call void @free(ptr noundef %i.bgc) #17
  call void @string_list_clear(ptr noundef nonnull %i.pc, i32 noundef 0) #17
  %i.bgd = getelementptr inbounds nuw i8, ptr %18, i64 296
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !65
  call void @free(ptr noundef %i.bge) #17
  call void @string_list_clear(ptr noundef nonnull %i.rf, i32 noundef 0) #17
  call void @strbuf_release(ptr noundef nonnull %i.x) #17
  call void @strvec_clear(ptr noundef nonnull %i.s) #17
  call void @free(ptr noundef %.3) #17
  call void @free(ptr noundef %.2105) #17
  %i.bgf = icmp ne i32 %.1111, 0
  %i.bgg = zext i1 %i.bgf to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  ret i32 %i.bgg

bb.np:                                            ; preds = %bb.jh, %_.exit294, %_.exit324, %_.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.cleanup_autostash.dir, i64 24, i1 false)
  %i.bgh = call fastcc ptr @state_dir_path(ptr noundef nonnull @.str.66, ptr noundef nonnull readonly %18) ; 2 uses
  %i.bgi = call i32 @file_exists(ptr noundef %i.bgh) #17
  %.not.i332 = icmp eq i32 %i.bgi, 0
  br i1 %.not.i332, label %cleanup_autostash.exit, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.bgj = call i32 @apply_autostash(ptr noundef %i.bgh) #17 ; 0 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !44 ; 2 uses
  %i.bgm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bgl) #19
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.bgl, i64 noundef %i.bgm) #17
  %i.bgn = call i32 @remove_dir_recursively(ptr noundef nonnull %4, i32 noundef 0) #17
  %.not7.i = icmp eq i32 %i.bgn, 0
  br i1 %.not7.i, label %bb.nt, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
end_hunk_2
begin_hunk_3_@rebase_write_basic_state:bb.a
  tail call void (ptr, ptr, ...) @write_file(ptr noundef %i.ae, ptr noundef nonnull @.str.290, ptr noundef %i.af) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !69
  %.not25 = icmp eq i32 %i.ah, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call fastcc ptr @state_dir_path(ptr noundef nonnull @.str.16, ptr noundef %0)
  tail call void (ptr, ptr, ...) @write_file(ptr noundef %i.ai, ptr noundef nonnull @.str.151) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTS6commit", !12, i64 0}
!15 = !{!"p1 _ZTS9object_id", !12, i64 0}
!16 = !{!"any p2 pointer", !12, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"strvec", !17, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!21 = !{!"string_list", !20, i64 0, !18, i64 8, !18, i64 16, !9, i64 24, !12, i64 32}
!22 = !{!"strbuf", !18, i64 0, !18, i64 8, !13, i64 16}
!23 = !{!"rebase_options", !9, i64 0, !9, i64 4, !13, i64 8, !13, i64 16, !14, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !14, i64 56, !14, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !9, i64 96, !9, i64 100, !15, i64 104, !14, i64 112, !9, i64 120, !9, i64 124, !19, i64 128, !9, i64 152, !13, i64 160, !9, i64 168, !19, i64 176, !9, i64 200, !9, i64 204, !9, i64 208, !13, i64 216, !9, i64 224, !9, i64 228, !9, i64 232, !21, i64 240, !9, i64 280, !9, i64 284, !9, i64 288, !13, i64 296, !21, i64 304, !22, i64 344, !9, i64 368, !9, i64 372, !9, i64 376, !9, i64 380, !9, i64 384, !9, i64 388, !9, i64 392}
!24 = !{!23, !9, i64 0}
!25 = !{!23, !9, i64 4}
!26 = !{!23, !13, i64 8}
!27 = !{!23, !9, i64 124}
!28 = !{!19, !17, i64 0}
!29 = !{!23, !9, i64 204}
!30 = !{!23, !9, i64 280}
!31 = !{!23, !9, i64 284}
!32 = !{!22, !13, i64 16}
!33 = !{!23, !9, i64 376}
!34 = !{!23, !9, i64 388}
!35 = !{!23, !9, i64 392}
!36 = !{!9, !9, i64 0}
!37 = !{!"option", !9, i64 0, !9, i64 4, !13, i64 8, !12, i64 16, !18, i64 24, !13, i64 32, !13, i64 40, !9, i64 48, !12, i64 56, !18, i64 64, !12, i64 72, !18, i64 80, !12, i64 88}
!38 = !{!37, !12, i64 16}
!39 = !{!"p1 _ZTS10repository", !12, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!23, !13, i64 216}
!42 = !{!22, !18, i64 8}
!43 = !{!8, !8, i64 0}
!44 = !{!23, !13, i64 16}
!45 = !{!23, !13, i64 160}
!46 = !{!"reset_head_opts", !15, i64 0, !15, i64 8, !13, i64 16, !9, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!47 = !{!46, !9, i64 24}
!48 = !{!23, !13, i64 48}
!49 = !{!23, !14, i64 56}
!50 = !{!46, !15, i64 0}
!51 = !{!46, !13, i64 40}
!52 = !{!46, !13, i64 16}
!53 = !{!"object_id", !8, i64 0, !9, i64 32}
!54 = !{!"p1 _ZTS8rev_info", !12, i64 0}
!55 = !{!"p1 _ZTS10replay_ctx", !12, i64 0}
!56 = !{!"replay_opts", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !19, i64 72, !9, i64 96, !13, i64 104, !9, i64 112, !9, i64 116, !13, i64 120, !13, i64 128, !19, i64 136, !13, i64 160, !53, i64 168, !9, i64 204, !54, i64 208, !55, i64 216}
!57 = !{!56, !9, i64 4}
!58 = !{!56, !55, i64 216}
!59 = !{!56, !9, i64 0}
!60 = !{!23, !9, i64 228}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"string_list_item", !13, i64 0, !12, i64 8}
!63 = !{!62, !13, i64 0}
!64 = !{!23, !9, i64 232}
!65 = !{!23, !13, i64 296}
!66 = !{!23, !18, i64 312}
!67 = !{!23, !9, i64 384}
!68 = !{!23, !9, i64 368}
!69 = !{!23, !9, i64 168}
!70 = !{!23, !15, i64 104}
!71 = !{!23, !13, i64 88}
!72 = !{!23, !14, i64 64}
!73 = !{!"p1 _ZTS11commit_list", !12, i64 0}
!74 = !{!"commit_list", !14, i64 0, !73, i64 8}
!75 = !{!74, !73, i64 8}
!76 = !{!53, !9, i64 32}
!77 = !{!74, !14, i64 0}
!78 = !{!23, !9, i64 224}
!79 = !{!23, !9, i64 288}
!80 = !{!23, !9, i64 200}
!81 = !{!22, !18, i64 0}
!82 = distinct !{!82, !61}
!83 = distinct !{!83, !61}
!84 = distinct !{!84, !61}
!85 = distinct !{!85, !61}
!86 = !{!23, !9, i64 208}
!87 = !{!23, !9, i64 372}
!88 = !{!23, !9, i64 380}
!89 = !{!13, !13, i64 0}
!90 = !{!37, !9, i64 0}
!91 = !{!37, !9, i64 4}
!92 = !{!37, !13, i64 8}
!93 = !{!37, !18, i64 24}
!94 = !{!37, !13, i64 32}
!95 = !{!37, !13, i64 40}
!96 = !{!37, !9, i64 48}
!97 = !{!37, !12, i64 56}
!98 = !{!37, !18, i64 64}
!99 = !{!"_Bool", !8, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"p1 _ZTS15object_database", !12, i64 0}
!102 = !{!"p1 _ZTS18parsed_object_pool", !12, i64 0}
!103 = !{!"p1 _ZTS9ref_store", !12, i64 0}
!104 = !{!"p2 _ZTS13hashmap_entry", !16, i64 0}
!105 = !{!"hashmap", !104, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!106 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!107 = !{!"strmap", !105, i64 0, !106, i64 48, !9, i64 56}
!108 = !{!"repo_path_cache", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!109 = !{!"p1 _ZTS18fsmonitor_settings", !12, i64 0}
!110 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !109, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !9, i64 128, !13, i64 136}
!111 = !{!"p1 _ZTS10config_set", !12, i64 0}
!112 = !{!"p1 _ZTS15submodule_cache", !12, i64 0}
!113 = !{!"p1 _ZTS11index_state", !12, i64 0}
!114 = !{!"p1 _ZTS12remote_state", !12, i64 0}
!115 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!116 = !{!"repo_config_values", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!117 = !{!"p1 _ZTS6strmap", !12, i64 0}
!118 = !{!"p1 _ZTS22promisor_remote_config", !12, i64 0}
!119 = !{!"repository", !13, i64 0, !13, i64 8, !101, i64 16, !102, i64 24, !103, i64 32, !99, i64 40, !107, i64 48, !107, i64 112, !108, i64 176, !13, i64 232, !13, i64 240, !13, i64 248, !99, i64 256, !99, i64 257, !13, i64 264, !110, i64 272, !111, i64 416, !112, i64 424, !113, i64 432, !114, i64 440, !115, i64 448, !115, i64 456, !116, i64 464, !9, i64 512, !13, i64 520, !9, i64 528, !9, i64 532, !117, i64 536, !9, i64 544, !107, i64 552, !21, i64 616, !13, i64 656, !118, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !99, i64 689, !99, i64 690}
!120 = !{!119, !9, i64 296}
!121 = !{!23, !9, i64 152}
!122 = !{!23, !18, i64 184}
!123 = !{!23, !13, i64 72}
!124 = !{!23, !9, i64 96}
!125 = !{!23, !18, i64 248}
!126 = !{!119, !113, i64 432}
!127 = !{!23, !9, i64 120}
!128 = !{!23, !18, i64 136}
!129 = !{!23, !17, i64 128}
!130 = !{!23, !20, i64 240}
!131 = !{!23, !13, i64 32}
!132 = !{!23, !14, i64 24}
!133 = !{!119, !115, i64 448}
!134 = !{!"git_hash_algo", !13, i64 0, !9, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !115, i64 104}
!135 = !{!134, !15, i64 80}
!136 = !{!23, !9, i64 100}
!137 = !{!23, !13, i64 40}
!138 = !{!73, !73, i64 0}
!139 = !{!23, !14, i64 112}
!140 = !{!"p2 _ZTS17re_pattern_buffer", !16, i64 0}
!141 = !{!"diff_flags", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140}
!142 = !{!"p1 _ZTS6oidset", !12, i64 0}
!143 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!144 = !{!"p1 _ZTS13pathspec_item", !12, i64 0}
!145 = !{!"pathspec", !9, i64 0, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 8, !9, i64 12, !144, i64 16}
!146 = !{!"p1 _ZTS20emitted_diff_symbols", !12, i64 0}
!147 = !{!"diff_options", !13, i64 0, !13, i64 8, !9, i64 16, !9, i64 20, !13, i64 24, !9, i64 32, !140, i64 40, !18, i64 48, !18, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !141, i64 96, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !13, i64 328, !9, i64 336, !13, i64 344, !9, i64 352, !9, i64 356, !17, i64 360, !18, i64 368, !18, i64 376, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !13, i64 400, !9, i64 408, !9, i64 412, !142, i64 416, !9, i64 424, !9, i64 428, !9, i64 432, !12, i64 440, !143, i64 448, !9, i64 456, !8, i64 460, !145, i64 464, !12, i64 488, !12, i64 496, !12, i64 504, !12, i64 512, !12, i64 520, !12, i64 528, !12, i64 536, !12, i64 544, !9, i64 552, !146, i64 560, !9, i64 568, !9, i64 572, !39, i64 576, !117, i64 584, !9, i64 592, !9, i64 596, !9, i64 600}
!148 = !{!147, !9, i64 280}
!149 = !{!147, !9, i64 264}
!150 = !{!14, !14, i64 0}
!151 = !{!15, !15, i64 0}
!152 = !{!46, !13, i64 56}
!153 = !{!23, !13, i64 80}
!154 = !{!"p1 _ZTS9todo_item", !12, i64 0}
!155 = !{!"todo_list", !22, i64 0, !154, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48}
!156 = !{!155, !13, i64 16}
!157 = !{!"child_process", !19, i64 0, !19, i64 24, !9, i64 48, !9, i64 52, !18, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !13, i64 96, !9, i64 104, !9, i64 104, !9, i64 104, !9, i64 104, !9, i64 104, !9, i64 104, !101, i64 112, !9, i64 120, !9, i64 120, !9, i64 120, !9, i64 120, !12, i64 128}
!158 = !{!157, !9, i64 84}
!159 = !{!23, !18, i64 352}
!160 = !{!23, !13, i64 360}
!161 = !{!157, !9, i64 80}
!162 = !{!18, !18, i64 0}
!163 = !{!"p1 _ZTS13hashmap_entry", !12, i64 0}
!164 = !{!"hashmap_entry", !163, i64 0, !9, i64 8}
!165 = !{!"p2 _ZTS12refspec_item", !16, i64 0}
!166 = !{!"branch", !164, i64 0, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !9, i64 48, !165, i64 56, !9, i64 64, !9, i64 68, !13, i64 72}
!167 = !{!166, !13, i64 32}
!168 = !{!166, !13, i64 16}
!169 = !{!46, !13, i64 32}
!170 = distinct !{!170, !61}
!171 = !{!"object", !9, i64 0, !9, i64 0, !9, i64 4, !53, i64 8}
!172 = !{!"p1 _ZTS4tree", !12, i64 0}
!173 = !{!"commit", !171, i64 0, !18, i64 48, !73, i64 56, !172, i64 64, !9, i64 72}
!174 = !{!173, !73, i64 56}
!175 = distinct !{!175, !61}
!176 = !{!56, !13, i64 128}
!177 = !{!56, !9, i64 16}
!178 = !{!23, !17, i64 176}
!179 = !{!56, !9, i64 20}
!180 = !{!56, !9, i64 24}
!181 = !{!56, !9, i64 28}
!182 = !{!56, !9, i64 32}
!183 = !{!56, !9, i64 52}
!184 = !{!56, !9, i64 56}
!185 = !{!56, !9, i64 60}
!186 = !{!56, !13, i64 104}
!187 = !{!56, !13, i64 160}
!188 = !{!56, !13, i64 120}
!189 = !{!23, !20, i64 304}
!190 = !{!56, !9, i64 204}
end_hunk_3
