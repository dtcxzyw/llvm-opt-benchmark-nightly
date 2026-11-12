Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/pack-objects?download=true
inline.NumInlined: 363
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.151 = private unnamed_addr constant [44 x i8] c"option callback does not expect an argument\00", align 1
@.str.152 = private unnamed_addr constant [41 x i8] c"option callback does not expect negation\00", align 1
@.str.153 = private unnamed_addr constant [29 x i8] c"unsupported index version %s\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"bad index version '%s'\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"follow\00", align 1
@.str.156 = private unnamed_addr constant [29 x i8] c"invalid value for '%s': '%s'\00", align 1
@cruft_expiration = internal unnamed_addr global i64 0, align 8
@.str.157 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@__PRETTY_FUNCTION__.option_parse_missing_action = private unnamed_addr constant [74 x i8] c"int option_parse_missing_action(const struct option *, const char *, int)\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"!unset\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@arg_missing_action = internal unnamed_addr global i32 0, align 4
@fn_show_object = internal unnamed_addr global ptr null, align 8
@.str.160 = private unnamed_addr constant [15 x i8] c"allow-promisor\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"--missing\00", align 1
@num_preferred_base = internal unnamed_addr global i32 0, align 4
@pbase_tree = internal unnamed_addr global ptr null, align 8
@pack_name_hash_fn.seen_version = internal unnamed_addr global i32 -1, align 4
@.str.162 = private unnamed_addr constant [52 x i8] c"name hash version changed from %d to %d mid-process\00", align 1
@.str.163 = private unnamed_addr constant [30 x i8] c"invalid name-hash version: %d\00", align 1
@sane_ctype = external local_unnamed_addr constant [256 x i8], align 16
@done_pbase_paths_num = internal unnamed_addr global i32 0, align 4
@done_pbase_paths_alloc = internal unnamed_addr global i32 0, align 4
@done_pbase_paths = internal unnamed_addr global ptr null, align 8
@.str.164 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"\0A/\00", align 1
@pbase_tree_cache = internal unnamed_addr global [256 x ptr] zeroinitializer, align 16
@nr_seen = internal unnamed_addr global i32 0, align 4
@no_closure_warning = internal constant [63 x i8] c"disabling bitmap writing, as some objects are not being packed\00", align 16
@reuse_packfile_bitmap = internal global ptr null, align 8
@bitmap_git = internal unnamed_addr global ptr null, align 8
@configured_exclusions = internal global %struct.oidmap zeroinitializer, align 8
@excluded_by_config = internal global %struct.oidset zeroinitializer, align 8
@.str.167 = private unnamed_addr constant [21 x i8] c"./odb/source-files.h\00", align 1
@.str.168 = private unnamed_addr constant [48 x i8] c"trying to downcast source of type '%d' to files\00", align 1
@ignore_packed_keep_in_core = internal unnamed_addr global i1 false, align 4
@ignore_packed_keep_in_core_open = internal unnamed_addr global i1 false, align 4
@ignore_packed_keep_in_core_has_cruft = internal unnamed_addr global i1 false, align 4
@.str.169 = private unnamed_addr constant [17 x i8] c"./pack-objects.h\00", align 1
@.str.170 = private unnamed_addr constant [43 x i8] c"OBJ_ANY cannot be set in pack-objects code\00", align 1
@no_try_delta.check = internal unnamed_addr global ptr null, align 8
@.str.171 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@git_attr__false = external constant [0 x i8], align 1
@.str.172 = private unnamed_addr constant [35 x i8] c"arg_missing_action == MA_ALLOW_ANY\00", align 1
@__PRETTY_FUNCTION__.show_object__ma_allow_any = private unnamed_addr constant [70 x i8] c"void show_object__ma_allow_any(struct object *, const char *, void *)\00", align 1
@.str.173 = private unnamed_addr constant [40 x i8] c"arg_missing_action == MA_ALLOW_PROMISOR\00", align 1
@__PRETTY_FUNCTION__.show_object__ma_allow_promisor = private unnamed_addr constant [75 x i8] c"void show_object__ma_allow_promisor(struct object *, const char *, void *)\00", align 1
@uri_protocols = internal global { ptr, i64, i64, i8, [7 x i8], ptr } zeroinitializer, align 8
@.str.175 = private unnamed_addr constant [12 x i8] c"pack.window\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"pack.windowmemory\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"pack.depth\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"pack.deltacachesize\00", align 1
@max_delta_cache_size = internal unnamed_addr global i64 268435456, align 8
@.str.179 = private unnamed_addr constant [21 x i8] c"pack.deltacachelimit\00", align 1
@.str.180 = private unnamed_addr constant [26 x i8] c"pack.writebitmaphashcache\00", align 1
@write_bitmap_options = internal unnamed_addr global i16 4, align 2
@.str.181 = private unnamed_addr constant [28 x i8] c"pack.writebitmaplookuptable\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"pack.usebitmaps\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"pack.allowpackreuse\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.186 = private unnamed_addr constant [40 x i8] c"invalid pack.allowPackReuse value: '%s'\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"pack.threads\00", align 1
@.str.188 = private unnamed_addr constant [41 x i8] c"invalid number of threads specified (%d)\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c"pack.indexversion\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"bad pack.indexVersion=%u\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"pack.writereverseindex\00", align 1
@.str.192 = private unnamed_addr constant [27 x i8] c"uploadpack.blobpackfileuri\00", align 1
@.str.193 = private unnamed_addr constant [101 x i8] c"value of uploadpack.blobpackfileuri must be of the form '<object-hash> <pack-hash> <uri>' (got '%s')\00", align 1
@.str.194 = private unnamed_addr constant [75 x i8] c"object already configured in another uploadpack.blobpackfileuri (got '%s')\00", align 1
@.str.195 = private unnamed_addr constant [556 x i8] c"git pack-objects [-q | --progress | --all-progress] [--all-progress-implied]\0A                 [--no-reuse-delta] [--delta-base-offset] [--non-empty]\0A                 [--local] [--incremental] [--window=<n>] [--depth=<n>]\0A                 [--revs [--unpacked | --all]] [--keep-pack=<pack-name>]\0A                 [--cruft] [--cruft-expiration=<time>]\0A                 [--stdout [--filter=<filter-spec>] | <base-name>]\0A                 [--shallow] [--keep-true-parents] [--[no-]sparse]\0A                 [--name-hash-version=<n>] [--path-walk] < <object-list>\00", align 1
@.str.196 = private unnamed_addr constant [39 x i8] c"invalid --name-hash-version option: %d\00", align 1
@.str.197 = private unnamed_addr constant [63 x i8] c"currently, --write-bitmap-index requires --name-hash-version=1\00", align 1
@.str.198 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"stdin_packs_found\00", align 1
@stdin_packs_found_nr = internal unnamed_addr global i32 0, align 4
@.str.200 = private unnamed_addr constant [18 x i8] c"stdin_packs_hints\00", align 1
@stdin_packs_hints_nr = internal unnamed_addr global i32 0, align 4
@__const.stdin_packs_read_input.packs = private unnamed_addr constant { { ptr, ptr, ptr, i32, i32, i32, i32, i8, [7 x i8] }, ptr, i8, [7 x i8] } { { ptr, ptr, ptr, i32, i32, i32, i32, i8, [7 x i8] } { ptr null, ptr @cmp_strmap_entry, ptr null, i32 0, i32 0, i32 0, i32 0, i8 1, [7 x i8] zeroinitializer }, ptr null, i8 1, [7 x i8] zeroinitializer }, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.201 = private unnamed_addr constant [67 x i8] c"packfile %s is a promisor but --exclude-promisor-objects was given\00", align 1
@.str.202 = private unnamed_addr constant [31 x i8] c"packfile %s cannot be accessed\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"./strbuf.h\00", align 1
@.str.204 = private unnamed_addr constant [30 x i8] c"strbuf_setlen() beyond buffer\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"!strbuf_slopbuf[0]\00", align 1
@__PRETTY_FUNCTION__.strbuf_setlen = private unnamed_addr constant [44 x i8] c"void strbuf_setlen(struct strbuf *, size_t)\00", align 1
@.str.206 = private unnamed_addr constant [25 x i8] c"could not find pack '%s'\00", align 1
@.str.207 = private unnamed_addr constant [43 x i8] c"could not get type of object %s in pack %s\00", align 1
@.str.208 = private unnamed_addr constant [41 x i8] c"loose object at %s could not be examined\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"unable to stat %s\00", align 1
@.str.210 = private unnamed_addr constant [26 x i8] c"Enumerating cruft objects\00", align 1
@.str.211 = private unnamed_addr constant [28 x i8] c"unable to add cruft objects\00", align 1
@.str.212 = private unnamed_addr constant [25 x i8] c"Traversing cruft objects\00", align 1
@__const.add_objects_in_unpacked_packs.opts = private unnamed_addr constant { i32, [4 x i8], ptr, i64 } { i32 29, [4 x i8] zeroinitializer, ptr null, i64 0 }, align 8
@.str.213 = private unnamed_addr constant [23 x i8] c"cannot open pack index\00", align 1
@.str.214 = private unnamed_addr constant [41 x i8] c"fgets returned NULL, not EOF, not error!\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"fgets\00", align 1
@.str.216 = private unnamed_addr constant [42 x i8] c"expected edge object ID, got garbage:\0A %s\00", align 1
@.str.217 = private unnamed_addr constant [37 x i8] c"expected object ID, got garbage:\0A %s\00", align 1
@.str.218 = private unnamed_addr constant [61 x i8] c"should_include_obj should only be called on existing objects\00", align 1
@__const.get_object_list.s_r_opt = private unnamed_addr constant { ptr, ptr, i8, [3 x i8], i32 } { ptr null, ptr null, i8 2, [3 x i8] zeroinitializer, i32 0 }, align 8
@save_commit_buffer = external local_unnamed_addr global i32, align 4
@.str.220 = private unnamed_addr constant [11 x i8] c"--shallow \00", align 1
@.str.221 = private unnamed_addr constant [24 x i8] c"not an object name '%s'\00", align 1
@.str.222 = private unnamed_addr constant [15 x i8] c"not a rev '%s'\00", align 1
@.str.223 = private unnamed_addr constant [18 x i8] c"bad revision '%s'\00", align 1
@.str.224 = private unnamed_addr constant [37 x i8] c"failed to pack objects via path-walk\00", align 1
@.str.225 = private unnamed_addr constant [29 x i8] c"unable to add recent objects\00", align 1
@recent_objects = internal global %struct.oid_array zeroinitializer, align 8
@reuse_packfiles = internal global ptr null, align 8
@reuse_packfiles_nr = internal global i64 0, align 8
@.str.226 = private unnamed_addr constant [32 x i8] c"expected non-empty reuse bitmap\00", align 1
@indexed_commits_nr = internal unnamed_addr global i32 0, align 4
@indexed_commits_alloc = internal unnamed_addr global i32 0, align 4
@indexed_commits = internal unnamed_addr global ptr null, align 8
@.str.227 = private unnamed_addr constant [29 x i8] c"unable to force loose object\00", align 1
@.str.228 = private unnamed_addr constant [38 x i8] c"loosen_unused_packed_objects/loosened\00", align 1
@has_sha1_pack_kept_or_nonlocal.last_found = internal unnamed_addr global ptr null, align 8
@.str.229 = private unnamed_addr constant [45 x i8] c"unable to pack objects reachable from tag %s\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@do_check_packed_object_crc = external local_unnamed_addr global i32, align 4
@.str.231 = private unnamed_addr constant [20 x i8] c"Compressing objects\00", align 1
@.str.232 = private unnamed_addr constant [31 x i8] c"inconsistency with delta count\00", align 1
@.str.233 = private unnamed_addr constant [17 x i8] c"Counting objects\00", align 1
@.str.234 = private unnamed_addr constant [16 x i8] c"invalid type %d\00", align 1
@.str.235 = private unnamed_addr constant [42 x i8] c"delta base offset overflow in pack for %s\00", align 1
@.str.236 = private unnamed_addr constant [38 x i8] c"delta base offset out of bound for %s\00", align 1
@.str.237 = private unnamed_addr constant [42 x i8] c"'size' is supposed to be the object size!\00", align 1
@hash_algos = external constant [3 x %struct.git_hash_algo], align 16
@.str.238 = private unnamed_addr constant [44 x i8] c"confusing delta dfs state in first pass: %d\00", align 1
@.str.239 = private unnamed_addr constant [45 x i8] c"confusing delta dfs state in second pass: %d\00", align 1
@.str.240 = private unnamed_addr constant [51 x i8] c"Path-based delta compression using up to %d thread\00", align 1
@.str.241 = private unnamed_addr constant [52 x i8] c"Path-based delta compression using up to %d threads\00", align 1
@.str.242 = private unnamed_addr constant [28 x i8] c"Compressing objects by path\00", align 1
@.str.243 = private unnamed_addr constant [28 x i8] c"unable to create thread: %s\00", align 1
@progress_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@progress_cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@cache_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@delta_cache_size = internal unnamed_addr global i64 0, align 8
@.str.244 = private unnamed_addr constant [25 x i8] c"object %s cannot be read\00", align 1
@.str.245 = private unnamed_addr constant [50 x i8] c"object %s inconsistent object length (%lu vs %lu)\00", align 1
@try_delta.warned = internal unnamed_addr global i32 0, align 4
@try_delta.warned.246 = internal unnamed_addr global i32 0, align 4
@.str.247 = private unnamed_addr constant [32 x i8] c"suboptimal pack - out of memory\00", align 1
@.str.248 = private unnamed_addr constant [32 x i8] c"unable to get type of object %s\00", align 1
@.str.249 = private unnamed_addr constant [41 x i8] c"Delta compression using up to %d threads\00", align 1
@.str.250 = private unnamed_addr constant [39 x i8] c"configured exclusion wasn't configured\00", align 1
@.str.251 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.252 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.253 = private unnamed_addr constant [16 x i8] c"Writing objects\00", align 1
@written_list = internal unnamed_addr global ptr null, align 8
@.str.254 = private unnamed_addr constant [9 x i8] c"<stdout>\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c"pack_to_stdout\00", align 1
@__PRETTY_FUNCTION__.write_pack_file = private unnamed_addr constant [27 x i8] c"void write_pack_file(void)\00", align 1
@reused_chunks_nr = internal unnamed_addr global i32 0, align 4
@nr_written = internal unnamed_addr global i32 0, align 4
@no_split_warning = internal constant [68 x i8] c"disabling bitmap writing, packs are split due to pack.packSizeLimit\00", align 16
@__const.write_pack_file.tmpname = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.256 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.257 = private unnamed_addr constant [21 x i8] c"failed utime() on %s\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"%s-%s.\00", align 1
@.str.259 = private unnamed_addr constant [7 x i8] c"bitmap\00", align 1
@.str.260 = private unnamed_addr constant [29 x i8] c"failed to write bitmap index\00", align 1
@.str.261 = private unnamed_addr constant [36 x i8] c"wrote %u objects while expecting %u\00", align 1
@.str.262 = private unnamed_addr constant [22 x i8] c"write_pack_file/wrote\00", align 1
@write_layer = internal unnamed_addr global i32 0, align 4
@.str.263 = private unnamed_addr constant [32 x i8] c"ordered %u objects, expected %u\00", align 1
@.str.264 = private unnamed_addr constant [38 x i8] c"non-zero bitmap position without MIDX\00", align 1
@.str.265 = private unnamed_addr constant [56 x i8] c"could not find expected object at offset %lu in pack %s\00", align 1
@.str.266 = private unnamed_addr constant [51 x i8] c"fewer words than expected in reuse_packfile_bitmap\00", align 1
@reused_chunks = internal unnamed_addr global ptr null, align 8
@reused_chunks_alloc = internal unnamed_addr global i32 0, align 4
@.str.267 = private unnamed_addr constant [10 x i8] c"type >= 0\00", align 1
@__PRETTY_FUNCTION__.write_reused_pack_one = private unnamed_addr constant [105 x i8] c"void write_reused_pack_one(struct packed_git *, size_t, struct hashfile *, off_t, struct pack_window **)\00", align 1
@.str.268 = private unnamed_addr constant [17 x i8] c"base_offset != 0\00", align 1
@.str.269 = private unnamed_addr constant [41 x i8] c"expected object at offset %lu in pack %s\00", align 1
@.str.270 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@__PRETTY_FUNCTION__.find_reused_offset = private unnamed_addr constant [32 x i8] c"off_t find_reused_offset(off_t)\00", align 1
@.str.271 = private unnamed_addr constant [39 x i8] c"recursive delta detected for object %s\00", align 1
@.str.272 = private unnamed_addr constant [47 x i8] c"pack too large for current definition of off_t\00", align 1
@.str.273 = private unnamed_addr constant [18 x i8] c"unable to read %s\00", align 1
@.str.274 = private unnamed_addr constant [19 x i8] c"delta size changed\00", align 1
@.str.275 = private unnamed_addr constant [19 x i8] c"deflate error (%d)\00", align 1
@.str.276 = private unnamed_addr constant [56 x i8] c"write_reuse_object: unable to parse object header of %s\00", align 1
@.str.277 = private unnamed_addr constant [75 x i8] c"write_reuse_object: could not locate %s, expected at offset %lu in pack %s\00", align 1
@.str.278 = private unnamed_addr constant [29 x i8] c"bad packed object CRC for %s\00", align 1
@.str.279 = private unnamed_addr constant [29 x i8] c"corrupt packed object for %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @oe_get_size_slow(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %2 = load i64, ptr %i.f, align 8                ; 2 uses
  %3 = and i64 %2, 25769803776
  %switch = icmp eq i64 %3, 25769803776
  br i1 %switch, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @to_pack, i64 96)) #21 ; 0 uses
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = call i32 @odb_read_object_info(ptr noundef %i.j, ptr noundef nonnull %1, ptr noundef nonnull %i.e) #21
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call fastcc ptr @_(ptr noundef nonnull @.str)
  %i.n = call ptr @oid_to_hex(ptr noundef nonnull %1) #21
  call void (ptr, ...) @die(ptr noundef %i.m, ptr noundef %i.n) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @to_pack, i64 96)) #21 ; 0 uses
  %i.p = load i64, ptr %i.e, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = and i64 %2, 1023
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  br label %oe_in_pack.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.y = ptrtoint ptr %1 to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 12
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 %i.ab
  br label %oe_in_pack.exit

oe_in_pack.exit:                                  ; preds = %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.t, %bb.f ], [ %i.ac, %bb.g ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !57 ; 2 uses
  %.not15 = icmp eq ptr %.0.i, null
  br i1 %.not15, label %bb.h, label %bb.i

bb.h:                                             ; preds = %oe_in_pack.exit
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.1, i32 noundef 2774, ptr noundef nonnull @.str.2) #22
  unreachable

bb.i:                                             ; preds = %oe_in_pack.exit
  %i.ad = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @to_pack, i64 96)) #21 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !63
  %i.ag = call ptr @use_pack(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, i64 noundef %i.af, ptr noundef nonnull %i.c) #21
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !46
  %i.ai = call i64 @unpack_object_header_buffer(ptr noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #21
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = call fastcc ptr @_(ptr noundef nonnull @.str.3)
  %i.al = call ptr @oid_to_hex(ptr noundef nonnull %1) #21
  call void (ptr, ...) @die(ptr noundef %i.ak, ptr noundef %i.al) #22
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @unuse_pack(ptr noundef nonnull %i.a) #21
  %i.am = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @to_pack, i64 96)) #21 ; 0 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.0 = phi i64 [ %i.p, %bb.d ], [ %i.an, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @odb_read_object_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !64
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !65
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.150, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @use_pack(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @unpack_object_header_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unuse_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cmd_pack_objects(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca [10 x i8], align 1                ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.object_id, align 4          ; 4 uses
  %i.h = alloca [10 x i8], align 1                ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 10 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca [32 x i8], align 16               ; 11 uses
  %i.n = alloca ptr, align 8                      ; 11 uses
  %5 = alloca %struct.hashfd_options, align 8     ; 5 uses
  %6 = alloca %struct.stat, align 8               ; 5 uses
  %7 = alloca %struct.strbuf, align 8             ; 11 uses
  %8 = alloca %struct.bitmap_writer, align 8      ; 10 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %struct.utimbuf, align 8            ; 5 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.oid_array, align 8         ; 7 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %11 = alloca %struct.object_info, align 8       ; 7 uses
  %i.v = alloca ptr, align 8                      ; 10 uses
  %12 = alloca %struct.object_id, align 4         ; 11 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 7 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %i.aa = alloca i32, align 4                     ; 6 uses
  %13 = alloca %struct.object_id, align 4         ; 8 uses
  %14 = alloca %struct.path_walk_info, align 8    ; 11 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %15 = alloca %struct.setup_revision_opt, align 8 ; 4 uses
  %i.ac = alloca [1000 x i8], align 16            ; 15 uses
  %16 = alloca %struct.object_id, align 4         ; 4 uses
  %i.ad = alloca [4163 x i8], align 16            ; 8 uses
  %17 = alloca %struct.object_id, align 4         ; 6 uses
  %i.ae = alloca ptr, align 8                     ; 5 uses
  %18 = alloca %struct.rev_info, align 8          ; 10 uses
  %19 = alloca %struct.strbuf, align 8            ; 8 uses
  %20 = alloca %struct.string_list, align 8       ; 10 uses
  %21 = alloca %struct.string_list, align 8       ; 12 uses
  %22 = alloca %struct.string_list, align 8       ; 9 uses
  %23 = alloca %struct.hashmap_iter, align 8      ; 5 uses
  %24 = alloca %struct.strbuf, align 8            ; 8 uses
  %25 = alloca %struct.strmap, align 8            ; 8 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %26 = alloca %struct.rev_info, align 8          ; 11 uses
  %i.ag = alloca i32, align 4                     ; 16 uses
  %i.ah = alloca i32, align 4                     ; 5 uses
  %27 = alloca %struct.strvec, align 8            ; 16 uses
  %i.ai = alloca i32, align 4                     ; 6 uses
  %i.aj = alloca i32, align 4                     ; 7 uses
  %i.ak = alloca i32, align 4                     ; 6 uses
  %i.al = alloca i32, align 4                     ; 6 uses
  %i.am = alloca i32, align 4                     ; 9 uses
  %28 = alloca %struct.string_list, align 8       ; 7 uses
  %29 = alloca %struct.list_objects_filter_options, align 8 ; 8 uses
  %30 = alloca [48 x %struct.option], align 16    ; 529 uses
  %31 = alloca %struct.rev_info, align 8          ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #21
  store i32 0, ptr %i.ag, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #21
  store i32 0, ptr %i.ah, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_pack_objects.rp, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #21
  store i32 0, ptr %i.ai, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #21
  store i32 0, ptr %i.aj, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #21
  store i32 0, ptr %i.ak, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #21
  store i32 0, ptr %i.al, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #21
  store i32 0, ptr %i.am, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %29, ptr noundef nonnull align 8 dereferenceable(88) @__const.cmd_pack_objects.filter_options, i64 88, i1 false)
  %i.an = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.ao = tail call ptr @repo_config_values(ptr noundef %i.an) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  store i32 13, ptr %30, align 16, !tbaa !266
  %i.ap = getelementptr inbounds nuw i8, ptr %30, i64 4
  store i32 113, ptr %i.ap, align 4, !tbaa !267
  %i.aq = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr @.str.4, ptr %i.aq, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr @progress, ptr %i.ar, align 16, !tbaa !68
end_hunk_0
