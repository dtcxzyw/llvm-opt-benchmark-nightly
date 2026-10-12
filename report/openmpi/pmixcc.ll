Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmixcc?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.64 = private unnamed_addr constant [14 x i8] c"-Wl,--dynamic\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"-Wl,-Bdynamic\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"no-compiler-specified\00", align 1
@environ = external local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [18 x i8] c"no-compiler-found\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"spawn-failed\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"%s%spmixcc-wrapper-data.txt\00", align 1
@pmix_pinstall_dirs = external local_unnamed_addr global %struct.pmix_pinstall_dirs_t, align 8
@.str.71 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"Cannot open configuration file %s\0A\00", align 1
@parse_options_idx = internal unnamed_addr global i32 -1, align 4
@.str.73 = private unnamed_addr constant [14 x i8] c"compiler_args\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"compiler\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"project\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"preprocessor_flags\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"compiler_flags\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"compiler_flags_prefix\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"linker_flags\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"linker_flags_static\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"libs\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"libs_static\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"dyn_lib_file\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"static_lib_file\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"required_file\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"project_short\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"compiler_env\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"compiler_flags_env\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"includedir\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"libdir\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"-I/usr/include\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"-L/usr/lb\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"-L/usr/lib64\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 31 uses
  %i.i = alloca ptr, align 8                      ; 9 uses
  %2 = alloca %struct.stat, align 8               ; 3 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i32 0, ptr %i.g, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store ptr null, ptr %i.h, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !16
  %i.m = tail call zeroext i1 @pmix_output_init() #16
  br i1 %i.m, label %bb.b, label %bb.er

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @pmix_mca_base_framework_open(ptr noundef nonnull @pmix_pinstalldirs_base_framework, i32 noundef 0) #16 ; 3 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !47
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 577, i32 noundef %i.n) #17 ; 0 uses
  br label %bb.er

bb.d:                                             ; preds = %bb.b
  %i.q = tail call i32 @pmix_pinstall_dirs_base_init(ptr noundef null, i64 noundef 0) #16 ; 3 uses
  %.not166 = icmp eq i32 %i.q, 0
  br i1 %.not166, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !47
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 585, i32 noundef %i.q) #17 ; 0 uses
  br label %bb.er

bb.f:                                             ; preds = %bb.d
  %i.t = tail call i32 @pmix_show_help_init(ptr noundef null) #16 ; 0 uses
  %i.u = tail call i32 @pmix_util_keyval_parse_init() #16 ; 3 uses
  %.not167 = icmp eq i32 %i.u, 0
  br i1 %.not167, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %i.u) #16 ; 0 uses
  br label %bb.er

bb.h:                                             ; preds = %bb.f
  %i.w = tail call i32 @pmix_mca_base_open(ptr noundef null) #16 ; 3 uses
  %.not168 = icmp eq i32 %i.w, 0
  br i1 %.not168, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %i.w) #16 ; 0 uses
  br label %bb.er

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %1, align 8, !tbaa !18
  %i.z = tail call noalias ptr @pmix_basename(ptr noundef %i.y) #16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pinstall_dirs, i64 112), align 8, !tbaa !49
  %i.ab = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.70, ptr noundef %i.aa, ptr noundef nonnull @.str.71) #16 ; 0 uses
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %data_init.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @pmix_util_keyval_parse(ptr noundef nonnull %i.ac, ptr noundef nonnull @data_callback) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %data_init.exit, label %data_init.exit.thread207

data_init.exit.thread207:                         ; preds = %bb.k
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !47
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.72, ptr noundef %i.ag) #17 ; 0 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !18
  call void @free(ptr noundef %i.ai) #16
  br label %data_init.exit.thread

data_init.exit:                                   ; preds = %bb.k
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !18
  call void @free(ptr noundef %i.aj) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  %.pr = load i32, ptr @user_data_idx, align 4    ; 2 uses
  %i.ak = icmp sgt i32 %0, 1
  %i.al = icmp slt i32 %.pr, 0                    ; 2 uses
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %data_init.exit
  %i.an = load i32, ptr @parse_options_idx, align 4, !tbaa !12 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.critedge310, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ap = zext nneg i32 %0 to i64
  br label %.lr.ph.split

data_init.exit.thread:                            ; preds = %bb.j, %data_init.exit.thread207
  %.0.i206 = phi i32 [ %i.ae, %data_init.exit.thread207 ], [ -29, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !47
  %i.ar = call ptr @PMIx_Error_string(i32 noundef %.0.i206) #16
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.7, ptr noundef %i.z, ptr noundef %i.ar) #17 ; 0 uses
  br label %bb.er

.lr.ph.splitthread-pre-split:                     ; preds = %find_options_index.exit
  %.pr389 = load i32, ptr @parse_options_idx, align 4, !tbaa !12
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.at = phi i32 [ %.pr389, %.lr.ph.splitthread-pre-split ], [ %i.an, %.lr.ph.split.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph.split.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  %.not16.i = icmp slt i32 %i.at, 0
  br i1 %.not16.i, label %find_options_index.exit, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.lr.ph.split, %.loopexit.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %.loopexit.i ], [ 0, %.lr.ph.split ] ; 5 uses
  %i.aw = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw [160 x i8], ptr %i.aw, i64 %indvars.iv23.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph19.i
  %i.ba = call i32 @PMIx_Argv_count(ptr noundef nonnull %i.ay) #16
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i, label %.loopexit.i

bb.l:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bc = call i32 @PMIx_Argv_count(ptr noundef nonnull %i.bh) #16
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.preheader.i ] ; 2 uses
  %i.bf = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw [160 x i8], ptr %i.bf, i64 %indvars.iv23.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !18
  %i.bk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) %i.bj) #18
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.loopexit12.loopexit.i, label %bb.l

.loopexit.i:                                      ; preds = %bb.l, %.preheader.i, %.lr.ph19.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %i.bm = load i32, ptr @parse_options_idx, align 4, !tbaa !12
  %i.bn = sext i32 %i.bm to i64
  %.not.not.i = icmp slt i64 %indvars.iv23.i, %i.bn
  br i1 %.not.not.i, label %.lr.ph19.i, label %find_options_index.exit, !llvm.loop !1

.loopexit12.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bo = trunc nuw nsw i64 %indvars.iv23.i to i32
  br label %find_options_index.exit

find_options_index.exit:                          ; preds = %.loopexit.i, %.lr.ph.split, %.loopexit12.loopexit.i
  %.011.i = phi i32 [ -1, %.lr.ph.split ], [ %i.bo, %.loopexit12.loopexit.i ], [ -1, %.loopexit.i ] ; 3 uses
  store i32 %.011.i, ptr @user_data_idx, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = icmp samesign ult i64 %indvars.iv.next, %i.ap
  %3 = icmp slt i32 %.011.i, 0                    ; 2 uses
  %4 = select i1 %i.bp, i1 %3, i1 false
  br i1 %4, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %find_options_index.exit, %data_init.exit
  %.pr209 = phi i32 [ %.pr, %data_init.exit ], [ %.011.i, %find_options_index.exit ]
  %.lcssa = phi i1 [ %i.al, %data_init.exit ], [ %3, %find_options_index.exit ]
  br i1 %.lcssa, label %.critedge310, label %thread-pre-split

.critedge310:                                     ; preds = %.lr.ph, %._crit_edge
  %i.bq = load i32, ptr @default_data_idx, align 4, !tbaa !12 ; 2 uses
  store i32 %i.bq, ptr @user_data_idx, align 4, !tbaa !12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %._crit_edge, %.critedge310
  %i.br = phi i32 [ %i.bq, %.critedge310 ], [ %.pr209, %._crit_edge ] ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %thread-pre-split
  %i.bt = call ptr @PMIx_Argv_join(ptr noundef nonnull %1, i32 noundef 32) #16 ; 2 uses
  %i.bu = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef %i.z, ptr noundef %i.bt, ptr noundef null) #16 ; 0 uses
  call void @free(ptr noundef %i.bt) #16
  call void @exit(i32 noundef 1) #19
  unreachable

bb.n:                                             ; preds = %thread-pre-split
  %i.bv = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw [160 x i8], ptr %i.bv, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !25 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.cd = icmp eq ptr %i.bz, null
  %i.ce = icmp eq ptr %i.cb, null
  %or.cond.i = or i1 %i.cd, %i.ce
  br i1 %or.cond.i, label %load_env_data.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.cb) #16 ; 0 uses
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.ch = call ptr @getenv(ptr noundef %i.cg) #16 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  call void @free(ptr noundef %i.cg) #16
  br i1 %i.ci, label %load_env_data.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %.not.i188 = icmp eq ptr %i.cj, null
  br i1 %.not.i188, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.cj) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ck = call noalias ptr @strdup(ptr noundef nonnull %i.ch) #16
  store ptr %i.ck, ptr %i.cc, align 8, !tbaa !18
  br label %load_env_data.exit

load_env_data.exit:                               ; preds = %bb.n, %bb.o, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %i.cl = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.cm = load i32, ptr @user_data_idx, align 4, !tbaa !12
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [160 x i8], ptr %i.cl, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.cs = icmp eq ptr %i.cq, null
  br i1 %i.cs, label %load_env_data_argv.exit, label %bb.s

bb.s:                                             ; preds = %load_env_data.exit
  %i.ct = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.cq, ptr noundef nonnull @.str.10) #16 ; 0 uses
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.cv = call ptr @getenv(ptr noundef %i.cu) #16 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  call void @free(ptr noundef %i.cu) #16
  br i1 %i.cw, label %load_env_data_argv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !16 ; 2 uses
  %.not.i190 = icmp eq ptr %i.cx, null
  br i1 %.not.i190, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @PMIx_Argv_free(ptr noundef nonnull %i.cx) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cy = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.cv, i32 noundef 32) #16
  store ptr %i.cy, ptr %i.cr, align 8, !tbaa !16
  br label %load_env_data_argv.exit

load_env_data_argv.exit:                          ; preds = %load_env_data.exit, %bb.s, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.cz = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.da = load i32, ptr @user_data_idx, align 4, !tbaa !12
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [160 x i8], ptr %i.cz, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.di = icmp eq ptr %i.de, null
  %i.dj = icmp eq ptr %i.dg, null
  %or.cond.i191 = or i1 %i.di, %i.dj
  br i1 %or.cond.i191, label %load_env_data_argv.exit193, label %bb.w

bb.w:                                             ; preds = %load_env_data_argv.exit
  %i.dk = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.de, ptr noundef nonnull %i.dg) #16 ; 0 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.dm = call ptr @getenv(ptr noundef %i.dl) #16 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  call void @free(ptr noundef %i.dl) #16
  br i1 %i.dn, label %load_env_data_argv.exit193, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !16 ; 2 uses
  %.not.i192 = icmp eq ptr %i.do, null
  br i1 %.not.i192, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @PMIx_Argv_free(ptr noundef nonnull %i.do) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dp = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.dm, i32 noundef 32) #16
  store ptr %i.dp, ptr %i.dh, align 8, !tbaa !16
  br label %load_env_data_argv.exit193

load_env_data_argv.exit193:                       ; preds = %load_env_data_argv.exit, %bb.w, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.dq = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.dr = load i32, ptr @user_data_idx, align 4, !tbaa !12
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [160 x i8], ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !24 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.dx = icmp eq ptr %i.dv, null
  br i1 %i.dx, label %load_env_data_argv.exit196, label %bb.aa

bb.aa:                                            ; preds = %load_env_data_argv.exit193
  %i.dy = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.dv, ptr noundef nonnull @.str.11) #16 ; 0 uses
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ea = call ptr @getenv(ptr noundef %i.dz) #16 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  call void @free(ptr noundef %i.dz) #16
  br i1 %i.eb, label %load_env_data_argv.exit196, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !16 ; 2 uses
  %.not.i195 = icmp eq ptr %i.ec, null
  br i1 %.not.i195, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @PMIx_Argv_free(ptr noundef nonnull %i.ec) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ed = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.ea, i32 noundef 32) #16
  store ptr %i.ed, ptr %i.dw, align 8, !tbaa !16
  br label %load_env_data_argv.exit196

load_env_data_argv.exit196:                       ; preds = %load_env_data_argv.exit193, %bb.aa, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ee = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.ef = load i32, ptr @user_data_idx, align 4, !tbaa !12
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [160 x i8], ptr %i.ee, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.el = icmp eq ptr %i.ej, null
  br i1 %i.el, label %load_env_data_argv.exit199, label %bb.ae

bb.ae:                                            ; preds = %load_env_data_argv.exit196
  %i.em = call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.12) #16 ; 0 uses
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.eo = call ptr @getenv(ptr noundef %i.en) #16 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  call void @free(ptr noundef %i.en) #16
  br i1 %i.ep, label %load_env_data_argv.exit199, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !16 ; 2 uses
  %.not.i198 = icmp eq ptr %i.eq, null
  br i1 %.not.i198, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @PMIx_Argv_free(ptr noundef nonnull %i.eq) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.er = call ptr @PMIx_Argv_split(ptr noundef nonnull %i.eo, i32 noundef 32) #16
  store ptr %i.er, ptr %i.ek, align 8, !tbaa !16
  br label %load_env_data_argv.exit199

load_env_data_argv.exit199:                       ; preds = %load_env_data_argv.exit196, %bb.ae, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.es = load ptr, ptr @options_data, align 8, !tbaa !20
  %i.et = load i32, ptr @user_data_idx, align 4, !tbaa !12
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [160 x i8], ptr %i.es, i64 %i.eu ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 136
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !27 ; 4 uses
  %.not170 = icmp eq ptr %i.ex, null
  br i1 %.not170, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %load_env_data_argv.exit199
  %i.ey = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ex, ptr noundef nonnull dereferenceable(14) @.str.13) #18
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !28
  %i.fc = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef %i.fb, ptr noundef %i.z, ptr noundef null) #16 ; 0 uses
  br label %.thread217

end_hunk_0
