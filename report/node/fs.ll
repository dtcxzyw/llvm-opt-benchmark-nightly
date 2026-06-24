inline.NumInlined: 59
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.uv__statx = type { i32, i32, i64, i32, i32, i32, i16, i16, i64, i64, i64, i64, %struct.uv__statx_timestamp, %struct.uv__statx_timestamp, %struct.uv__statx_timestamp, %struct.uv__statx_timestamp, i32, i32, i32, i32, [14 x i64] }
%struct.uv__statx_timestamp = type { i64, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.pollfd = type { i32, i16, i16 }
%struct.uv_fs_s = type { ptr, i32, [6 x ptr], i32, ptr, ptr, i64, ptr, ptr, %struct.uv_stat_t, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, double, double, %struct.uv__work, [4 x %struct.uv_buf_t] }
%struct.uv_stat_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.uv_timespec_t, %struct.uv_timespec_t, %struct.uv_timespec_t, %struct.uv_timespec_t }
%struct.uv_timespec_t = type { i64, i64 }
%struct.uv__work = type { ptr, ptr, ptr, %struct.uv__queue }
%struct.uv__queue = type { ptr, ptr }
%struct.uv_buf_t = type { ptr, i64 }

@.str = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"../../deps/uv/src/unix/fs.c\00", align 1
@__PRETTY_FUNCTION__.uv_fs_access = private unnamed_addr constant [70 x i8] c"int uv_fs_access(uv_loop_t *, uv_fs_t *, const char *, int, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_chmod = private unnamed_addr constant [69 x i8] c"int uv_fs_chmod(uv_loop_t *, uv_fs_t *, const char *, int, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_chown = private unnamed_addr constant [84 x i8] c"int uv_fs_chown(uv_loop_t *, uv_fs_t *, const char *, uv_uid_t, uv_gid_t, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_lchown = private unnamed_addr constant [85 x i8] c"int uv_fs_lchown(uv_loop_t *, uv_fs_t *, const char *, uv_uid_t, uv_gid_t, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_lutime = private unnamed_addr constant [81 x i8] c"int uv_fs_lutime(uv_loop_t *, uv_fs_t *, const char *, double, double, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_lstat = private unnamed_addr constant [64 x i8] c"int uv_fs_lstat(uv_loop_t *, uv_fs_t *, const char *, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_mkdir = private unnamed_addr constant [69 x i8] c"int uv_fs_mkdir(uv_loop_t *, uv_fs_t *, const char *, int, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_open = private unnamed_addr constant [73 x i8] c"int uv_fs_open(uv_loop_t *, uv_fs_t *, const char *, int, int, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_scandir = private unnamed_addr constant [71 x i8] c"int uv_fs_scandir(uv_loop_t *, uv_fs_t *, const char *, int, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_opendir = private unnamed_addr constant [66 x i8] c"int uv_fs_opendir(uv_loop_t *, uv_fs_t *, const char *, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_readlink = private unnamed_addr constant [67 x i8] c"int uv_fs_readlink(uv_loop_t *, uv_fs_t *, const char *, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_realpath = private unnamed_addr constant [67 x i8] c"int uv_fs_realpath(uv_loop_t *, uv_fs_t *, const char *, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_rmdir = private unnamed_addr constant [64 x i8] c"int uv_fs_rmdir(uv_loop_t *, uv_fs_t *, const char *, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_stat = private unnamed_addr constant [63 x i8] c"int uv_fs_stat(uv_loop_t *, uv_fs_t *, const char *, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_unlink = private unnamed_addr constant [65 x i8] c"int uv_fs_unlink(uv_loop_t *, uv_fs_t *, const char *, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_utime = private unnamed_addr constant [80 x i8] c"int uv_fs_utime(uv_loop_t *, uv_fs_t *, const char *, double, double, uv_fs_cb)\00", align 1
@__PRETTY_FUNCTION__.uv_fs_statfs = private unnamed_addr constant [65 x i8] c"int uv_fs_statfs(uv_loop_t *, uv_fs_t *, const char *, uv_fs_cb)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@uv__fs_statx.no_statx = internal unnamed_addr global i32 0, align 4
@uv__fs_mkstemp.once = internal global i32 0, align 4
@uv__fs_mkstemp.no_cloexec_support = internal unnamed_addr global i32 0, align 4
@uv__fs_mkstemp.pattern = internal constant [7 x i8] c"XXXXXX\00", align 1
@uv__mkostemp = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"mkostemp\00", align 1
@uv__preadv.cache = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"preadv64\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"pwritev64\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"preadv\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pwritev\00", align 1
@uv__fs_try_copy_file_range.no_copy_file_range_support = internal unnamed_addr global i32 0, align 4
@uv__pwritev.cache = internal unnamed_addr global i64 0, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"uv__has_active_reqs(req->loop)\00", align 1
@__PRETTY_FUNCTION__.uv__fs_done = private unnamed_addr constant [41 x i8] c"void uv__fs_done(struct uv__work *, int)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"req->result == 0\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @uv__fs_post(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 336
  tail call void @uv__work_submit(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef nonnull @uv__fs_work, ptr noundef nonnull @uv__fs_done) #15
  ret void
}

declare void @uv__work_submit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @uv__fs_work(ptr noundef %0) #0 {
bb.a:
  %1 = alloca [2 x %struct.timespec], align 16    ; 7 uses
  %2 = alloca %struct.statfs, align 8             ; 10 uses
  %3 = alloca %struct.uv__statx, align 8          ; 5 uses
  %4 = alloca %struct.stat, align 8               ; 14 uses
  %5 = alloca %struct.pollfd, align 4             ; 6 uses
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %6 = alloca %struct.statfs, align 8             ; 5 uses
  %7 = alloca %struct.statfs, align 8             ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %struct.uv__statx, align 8          ; 5 uses
  %9 = alloca %struct.stat, align 8               ; 14 uses
  %10 = alloca [2 x %struct.timespec], align 16   ; 7 uses
  %11 = alloca [2 x %struct.timespec], align 16   ; 7 uses
  %12 = alloca %struct.uv__statx, align 8         ; 5 uses
  %13 = alloca %struct.stat, align 8              ; 14 uses
  %14 = alloca %struct.uv_fs_s, align 8           ; 19 uses
  %15 = alloca %struct.stat, align 8              ; 11 uses
  %16 = alloca %struct.stat, align 8              ; 6 uses
  %17 = alloca [2 x %struct.timespec], align 16   ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -272 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, -4
  %spec.select = icmp ult i32 %i.f, -2
  %i.g = tail call ptr @__errno_location() #16    ; 31 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 -44 ; 8 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 -40 ; 9 uses
  %i.j = getelementptr i8, ptr %0, i64 -56        ; 12 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 -32 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %.sroa.42.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr i8, ptr %0, i64 -232       ; 24 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 -64 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = getelementptr i8, ptr %0, i64 -240       ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 -224 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds i8, ptr %0, i64 -216 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -208 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ae = getelementptr inbounds i8, ptr %0, i64 -200 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ag = getelementptr inbounds i8, ptr %0, i64 -184 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds i8, ptr %0, i64 -176 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ak = getelementptr inbounds i8, ptr %0, i64 -168 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.am = getelementptr inbounds i8, ptr %0, i64 -152 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ao = getelementptr inbounds i8, ptr %0, i64 -128 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aq = getelementptr inbounds i8, ptr %0, i64 -112 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.as = getelementptr inbounds i8, ptr %0, i64 -96 ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %0, i64 -144 ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %0, i64 -52 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %0, i64 -256 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %0, i64 -48 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 -264 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 104
  %.sroa.42.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.4.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 104
  %i.bx = getelementptr inbounds i8, ptr %0, i64 -24 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %0, i64 -20 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 272 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 296 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 284 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 288 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 336 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 280
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 304
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 384
  br label %bb.b

bb.b:                                             ; preds = %uv__fs_readlink.exit.thread, %bb.a
  store i32 0, ptr %i.g, align 4
  %i.cw = load i32, ptr %i.d, align 8
  switch i32 %i.cw, label %bb.fz [
    i32 12, label %bb.c
    i32 13, label %bb.d
    i32 26, label %bb.e
    i32 2, label %bb.f
    i32 29, label %bb.h
    i32 14, label %bb.an
    i32 27, label %bb.ao
    i32 30, label %bb.ap
    i32 16, label %bb.aq
    i32 8, label %bb.ar
    i32 15, label %bb.ay
    i32 9, label %bb.az
    i32 11, label %bb.ba
    i32 36, label %bb.bf
    i32 7, label %bb.bk
    i32 23, label %bb.br
    i32 19, label %bb.bs
    i32 20, label %bb.bt
    i32 35, label %bb.bu
    i32 1, label %bb.ck
    i32 3, label %bb.cl
    i32 22, label %bb.cy
    i32 31, label %bb.db
    i32 32, label %bb.de
    i32 33, label %bb.di
    i32 25, label %bb.dk
    i32 28, label %bb.dr
    i32 21, label %bb.du
    i32 18, label %bb.dv
    i32 5, label %bb.dw
    i32 6, label %bb.ep
    i32 34, label %bb.ew
    i32 24, label %bb.fa
    i32 17, label %bb.fb
    i32 10, label %bb.fc
    i32 4, label %bb.fh
  ]

bb.c:                                             ; preds = %bb.b
  %i.cx = load ptr, ptr %i.p, align 8
  %i.cy = load i32, ptr %i.au, align 4
  %i.cz = call i32 @access(ptr noundef %i.cx, i32 noundef %i.cy) #15
  %i.da = sext i32 %i.cz to i64
  br label %uv__fs_readlink.exit

bb.d:                                             ; preds = %bb.b
  %i.db = load ptr, ptr %i.p, align 8
  %i.dc = load i32, ptr %i.az, align 8
  %i.dd = call i32 @chmod(ptr noundef %i.db, i32 noundef %i.dc) #15
  %i.de = sext i32 %i.dd to i64
  br label %uv__fs_readlink.exit

bb.e:                                             ; preds = %bb.b
  %i.df = load ptr, ptr %i.p, align 8
  %i.dg = load i32, ptr %i.bx, align 8
  %i.dh = load i32, ptr %i.by, align 4
  %i.di = call i32 @chown(ptr noundef %i.df, i32 noundef %i.dg, i32 noundef %i.dh) #15
  %i.dj = sext i32 %i.di to i64
  br label %uv__fs_readlink.exit

bb.f:                                             ; preds = %bb.b
  %i.dk = load i32, ptr %i.j, align 8
  %i.dl = call i32 @uv__close_nocancel(i32 noundef %i.dk) #15 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %bb.g, label %uv__fs_close.exit

bb.g:                                             ; preds = %bb.f
  %i.dn = load i32, ptr %i.g, align 4             ; 2 uses
  %switch.selectcmp.case1.i = icmp ne i32 %i.dn, 4
  %switch.selectcmp.case2.i = icmp ne i32 %i.dn, 115
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.do = sext i1 %switch.selectcmp.not.i to i32
  br label %uv__fs_close.exit

uv__fs_close.exit:                                ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.do, %bb.g ], [ %i.dl, %bb.f ]
  %i.dp = sext i32 %.0.i to i64
  br label %uv__fs_readlink.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.dq = load ptr, ptr %i.p, align 8             ; 2 uses
  store i32 6, ptr %i.bz, align 8
  store i32 1, ptr %i.ca, align 8
  store ptr null, ptr %i.ce, align 8
  store ptr null, ptr %i.cf, align 8
  %.not.i152 = icmp eq ptr %i.dq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i8 0, i64 40, i1 false)
  br i1 %.not.i152, label %bb.i, label %uv_fs_open.exit155

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2006, ptr noundef nonnull @__PRETTY_FUNCTION__.uv_fs_open) #17, !inline_history !8
end_hunk_0
begin_hunk_1_@uv__fs_work:bb.a
uv__fs_opendir.exit:                              ; preds = %bb.dc, %bb.dd
  %.sink.i = phi ptr [ null, %bb.dd ], [ %i.nv, %bb.dc ]
  %.0.i103 = phi i64 [ -1, %bb.dd ], [ 0, %bb.dc ]
  store ptr %.sink.i, ptr %i.x, align 8
  br label %uv__fs_readlink.exit

bb.de:                                            ; preds = %bb.b
  %.val74 = load ptr, ptr %i.x, align 8           ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.val74, i64 8 ; 3 uses
  %i.oc = load i64, ptr %i.ob, align 8
  %.not22.i = icmp eq i64 %i.oc, 0
  br i1 %.not22.i, label %uv__fs_readdir.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.de
  %i.od = getelementptr inbounds nuw i8, ptr %.val74, i64 48
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %i.oe = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %i.pa, %.outer.i ] ; 2 uses
  %.023.ph18.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %i.oz, %.outer.i ] ; 5 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.dh, %.lr.ph.i
  store i32 0, ptr %i.g, align 4
  %i.of = load ptr, ptr %i.od, align 8
  %i.og = call ptr @readdir64(ptr noundef %i.of) #15 ; 6 uses
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %bb.dg, label %sub_0.i

bb.dg:                                            ; preds = %bb.df
  %i.oi = load i32, ptr %i.g, align 4
  %.not.i104 = icmp eq i32 %i.oi, 0
  br i1 %.not.i104, label %uv__fs_readdir.exit, label %.loopexit6.i

sub_0.i:                                          ; preds = %bb.df
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 19
  %i.ok = load i8, ptr %i.oj, align 1
  %.not23.i = icmp eq i8 %i.ok, 46
  br i1 %.not23.i, label %.tail.i, label %.tail1.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 20
  %i.om = load i8, ptr %i.ol, align 1
  switch i8 %i.om, label %.tail1.thread.i [
    i8 0, label %bb.dh
    i8 46, label %.tail1.i
  ]

.tail1.i:                                         ; preds = %.tail.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 21
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = icmp eq i8 %i.oo, 0
  br i1 %i.op, label %bb.dh, label %.tail1.thread.i

bb.dh:                                            ; preds = %.tail.i, %.tail1.i
  %i.oq = load i64, ptr %i.ob, align 8
  %i.or = icmp ugt i64 %i.oq, %i.oe
  br i1 %i.or, label %bb.df, label %uv__fs_readdir.exit, !llvm.loop !16

.tail1.thread.i:                                  ; preds = %.tail.i, %.tail1.i, %sub_0.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.og, i64 19
  %i.ot = load ptr, ptr %.val74, align 8
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %i.oe ; 2 uses
  %i.ov = call ptr @uv__strdup(ptr noundef nonnull %i.os) #15 ; 2 uses
  store ptr %i.ov, ptr %i.ou, align 8
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %.loopexit6.i, label %.outer.i

.outer.i:                                         ; preds = %.tail1.thread.i
  %i.ox = call i32 @uv__fs_get_dirent_type(ptr noundef nonnull %i.og) #15
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store i32 %i.ox, ptr %i.oy, align 8
  %i.oz = add i32 %.023.ph18.i, 1                 ; 3 uses
  %i.pa = zext i32 %i.oz to i64                   ; 2 uses
  %i.pb = load i64, ptr %i.ob, align 8
  %i.pc = icmp ugt i64 %i.pb, %i.pa
  br i1 %i.pc, label %.lr.ph.i, label %uv__fs_readdir.exit, !llvm.loop !16

.loopexit6.i:                                     ; preds = %.tail1.thread.i, %bb.dg
  %.not26.i = icmp eq i32 %.023.ph18.i, 0
  br i1 %.not26.i, label %uv__fs_readdir.exit, label %.lr.ph21.preheader.i

.lr.ph21.preheader.i:                             ; preds = %.loopexit6.i
  %wide.trip.count.i = zext i32 %.023.ph18.i to i64
  br label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.lr.ph21.i, %.lr.ph21.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph21.preheader.i ], [ %indvars.iv.next.i, %.lr.ph21.i ] ; 3 uses
  %i.pd = load ptr, ptr %.val74, align 8
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %indvars.iv.i
  %i.pf = load ptr, ptr %i.pe, align 8
  call void @uv__free(ptr noundef %i.pf) #15
  %i.pg = load ptr, ptr %.val74, align 8
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.pg, i64 %indvars.iv.i
  store ptr null, ptr %i.ph, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %uv__fs_readdir.exit, label %.lr.ph21.i, !llvm.loop !17

uv__fs_readdir.exit:                              ; preds = %.outer.i, %.lr.ph21.i, %bb.dh, %bb.de, %bb.dg, %.loopexit6.i
  %.024.i = phi i32 [ -1, %.loopexit6.i ], [ %.023.ph18.i, %bb.dg ], [ %.023.ph18.i, %bb.dh ], [ -1, %.lr.ph21.i ], [ 0, %bb.de ], [ %i.oz, %.outer.i ]
  %i.pi = sext i32 %.024.i to i64
  br label %uv__fs_readlink.exit

bb.di:                                            ; preds = %bb.b
  %i.pj = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 48 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8            ; 2 uses
  %.not.i105 = icmp eq ptr %i.pl, null
  br i1 %.not.i105, label %uv__fs_closedir.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pm = call i32 @closedir(ptr noundef nonnull %i.pl) ; 0 uses
  store ptr null, ptr %i.pk, align 8
  %.pre.i106 = load ptr, ptr %i.x, align 8
  br label %uv__fs_closedir.exit

uv__fs_closedir.exit:                             ; preds = %bb.di, %bb.dj
  %i.pn = phi ptr [ %.pre.i106, %bb.dj ], [ %i.pj, %bb.di ]
  call void @uv__free(ptr noundef %i.pn) #15
  br label %.thread181

bb.dk:                                            ; preds = %bb.b
  %i.po = load ptr, ptr %i.p, align 8
  %i.pp = call i64 @pathconf(ptr noundef %i.po, i32 noundef 4) #15 ; 2 uses
  %i.pq = icmp eq i64 %i.pp, -1
  %spec.store.select.i.i = select i1 %i.pq, i64 4096, i64 %i.pp ; 5 uses
  %i.pr = call ptr @uv__malloc(i64 noundef %spec.store.select.i.i) #15 ; 5 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_readlink.exit.thread

bb.dm:                                            ; preds = %bb.dk
  %i.pt = load ptr, ptr %i.p, align 8
  %i.pu = call i64 @readlink(ptr noundef %i.pt, ptr noundef nonnull %i.pr, i64 noundef %spec.store.select.i.i) #15 ; 3 uses
  %i.pv = icmp eq i64 %i.pu, -1
  br i1 %i.pv, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  call void @uv__free(ptr noundef nonnull %i.pr) #15
  br label %uv__fs_readlink.exit.thread

bb.do:                                            ; preds = %bb.dm
  %i.pw = icmp eq i64 %i.pu, %spec.store.select.i.i
  br i1 %i.pw, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.px = add nuw nsw i64 %spec.store.select.i.i, 1
  %i.py = call ptr @uv__reallocf(ptr noundef nonnull %i.pr, i64 noundef %i.px) #15 ; 2 uses
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %uv__fs_readlink.exit.thread, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.lcssa310 = phi i64 [ %spec.store.select.i.i, %bb.dp ], [ %i.pu, %bb.do ]
  %.0.i107 = phi ptr [ %i.py, %bb.dp ], [ %i.pr, %bb.do ] ; 2 uses
  %i.qa = getelementptr inbounds i8, ptr %.0.i107, i64 %.lcssa310
  store i8 0, ptr %i.qa, align 1
  br label %.thread181

bb.dr:                                            ; preds = %bb.b
  %i.qb = load ptr, ptr %i.p, align 8
  %i.qc = call ptr @realpath(ptr noundef %i.qb, ptr noundef null) #15 ; 3 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %uv__fs_readlink.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qe = call ptr @uv__strdup(ptr noundef nonnull %i.qc) #15 ; 2 uses
  call void @free(ptr noundef nonnull %i.qc) #15
  %i.qf = icmp eq ptr %i.qe, null
  br i1 %i.qf, label %bb.dt, label %.thread181

bb.dt:                                            ; preds = %bb.ds
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_readlink.exit.thread

bb.du:                                            ; preds = %bb.b
  %i.qg = load ptr, ptr %i.p, align 8
  %i.qh = load ptr, ptr %i.q, align 8
  %i.qi = call i32 @rename(ptr noundef %i.qg, ptr noundef %i.qh) #15
  %i.qj = sext i32 %i.qi to i64
  br label %uv__fs_readlink.exit

bb.dv:                                            ; preds = %bb.b
  %i.qk = load ptr, ptr %i.p, align 8
  %i.ql = call i32 @rmdir(ptr noundef %i.qk) #15
  %i.qm = sext i32 %i.ql to i64
  br label %uv__fs_readlink.exit

bb.dw:                                            ; preds = %bb.b
  %i.qn = load i32, ptr %i.au, align 4            ; 3 uses
  %i.qo = load i32, ptr %i.j, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.qp = load i64, ptr %i.k, align 8
  store i64 %i.qp, ptr %i.b, align 8
  %i.qq = load i64, ptr %i.av, align 8            ; 2 uses
  %i.qr = load atomic i32, ptr @uv__fs_try_copy_file_range.no_copy_file_range_support monotonic, align 4
  %.not.i.i109 = icmp eq i32 %i.qr, 0
  br i1 %.not.i.i109, label %bb.dx, label %.critedge.sink.split.i

bb.dx:                                            ; preds = %bb.dw
  %i.qs = call i64 @uv__fs_copy_file_range(i32 noundef %i.qn, ptr noundef nonnull %i.b, i32 noundef %i.qo, ptr noundef null, i64 noundef %i.qq, i32 noundef 0) #15
  %.not11.i.i = icmp eq i64 %i.qs, -1
  br i1 %.not11.i.i, label %bb.dy, label %.critedge.thread25.i

bb.dy:                                            ; preds = %bb.dx
  %i.qt = load i32, ptr %i.g, align 4             ; 2 uses
  switch i32 %i.qt, label %bb.ee [
    i32 13, label %bb.dz
    i32 38, label %bb.ea
    i32 1, label %bb.eb
    i32 95, label %.critedge.sink.split.i
    i32 18, label %.critedge.sink.split.i
  ]

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.qu = call i32 @fstatfs64(i32 noundef %i.qn, ptr noundef nonnull %7) #15
  %i.qv = icmp ne i32 %i.qu, -1
  %i.qw = load i64, ptr %7, align 8
  %.not.i.i.i = icmp eq i64 %i.qw, 12805120
  %or.cond.i.i.i = select i1 %i.qv, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %uv__is_buggy_cephfs.exit.i.i, label %uv__is_buggy_cephfs.exit.thread.i.i

uv__is_buggy_cephfs.exit.thread.i.i:              ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %thread-pre-split.i

uv__is_buggy_cephfs.exit.i.i:                     ; preds = %bb.dz
  %i.qx = call i32 @uv__kernel_version() #15
  %i.qy = icmp ugt i32 %i.qx, 267263
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br i1 %i.qy, label %thread-pre-split.i, label %.critedge.sink.split.i

bb.ea:                                            ; preds = %bb.dy
  store atomic i32 1, ptr @uv__fs_try_copy_file_range.no_copy_file_range_support monotonic, align 4
  br label %thread-pre-split.i

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.qz = call i32 @fstatfs64(i32 noundef %i.qo, ptr noundef nonnull %6) #15
  %i.ra = icmp eq i32 %i.qz, -1
  br i1 %i.ra, label %uv__is_cifs_or_smb.exit.thread.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rb = load i64, ptr %6, align 8
  %i.rc = trunc i64 %i.rb to i32
  switch i32 %i.rc, label %uv__is_cifs_or_smb.exit.thread.i.i [
    i32 20859, label %bb.ed
    i32 -28095166, label %bb.ed
    i32 -11317950, label %bb.ed
  ]

uv__is_cifs_or_smb.exit.thread.i.i:               ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %thread-pre-split.i

bb.ed:                                            ; preds = %bb.ec, %bb.ec, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.critedge.sink.split.i

thread-pre-split.i:                               ; preds = %uv__is_cifs_or_smb.exit.thread.i.i, %bb.ea, %uv__is_buggy_cephfs.exit.i.i, %uv__is_buggy_cephfs.exit.thread.i.i
  %.pr.i = load i32, ptr %i.g, align 4
  br label %bb.ee

bb.ee:                                            ; preds = %thread-pre-split.i, %bb.dy
  %i.rd = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.qt, %bb.dy ]
  %i.re = icmp eq i32 %i.rd, 38
  br i1 %i.re, label %.critedge.i, label %.critedge.thread.i

.critedge.sink.split.i:                           ; preds = %bb.dw, %bb.ed, %uv__is_buggy_cephfs.exit.i.i, %bb.dy, %bb.dy
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.ee
  %i.rf = call i64 @sendfile64(i32 noundef %i.qo, i32 noundef %i.qn, ptr noundef nonnull %i.b, i64 noundef %i.qq) #15
  %.not.i111 = icmp eq i64 %i.rf, -1
  br i1 %.not.i111, label %.critedge.thread.i, label %.critedge.thread25.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.ee
  %i.rg = load i64, ptr %i.b, align 8
  %i.rh = load i64, ptr %i.k, align 8
  %i.ri = icmp sgt i64 %i.rg, %i.rh
  br i1 %i.ri, label %.critedge.thread25.i, label %bb.ef

.critedge.thread25.i:                             ; preds = %.critedge.thread.i, %.critedge.i, %bb.dx
  %i.rj = load i64, ptr %i.b, align 8             ; 2 uses
  %i.rk = load i64, ptr %i.k, align 8
  %i.rl = sub nsw i64 %i.rj, %i.rk
  store i64 %i.rj, ptr %i.k, align 8
  br label %uv__fs_sendfile.exit

bb.ef:                                            ; preds = %.critedge.thread.i
  %i.rm = load i32, ptr %i.g, align 4
  switch i32 %i.rm, label %uv__fs_sendfile.exit [
    i32 22, label %bb.eg
    i32 5, label %bb.eg
    i32 88, label %bb.eg
    i32 18, label %bb.eg
  ]

bb.eg:                                            ; preds = %bb.ef, %bb.ef, %bb.ef, %bb.ef
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.rn = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ro = load i32, ptr %i.au, align 4            ; 2 uses
  %i.rp = load i32, ptr %i.j, align 8             ; 2 uses
  %i.rq = load i64, ptr %i.k, align 8             ; 2 uses
  %.not.i20.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i20.i, label %.loopexit.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.eg, %.outer68.i.i
  %.0.ph151.i.i = phi i32 [ %.0105.us177.i.i, %.outer68.i.i ], [ 1, %bb.eg ]
  %.047.ph149.i.i = phi i64 [ %i.sp, %.outer68.i.i ], [ %i.rq, %bb.eg ] ; 5 uses
  %.048.ph148.i.i = phi i64 [ %i.sq, %.outer68.i.i ], [ 0, %bb.eg ]
  %i.rr = icmp ne i32 %.0.ph151.i.i, 0
  br label %bb.eh

bb.eh:                                            ; preds = %.backedge, %.lr.ph.i.i
  %.0105.us.i.i = phi i1 [ %i.rr, %.lr.ph.i.i ], [ false, %.backedge ] ; 2 uses
  %.048104.us.i.i = phi i64 [ %.048.ph148.i.i, %.lr.ph.i.i ], [ 0, %.backedge ] ; 6 uses
  %i.rs = sub nuw i64 %i.rn, %.048104.us.i.i
  %spec.store.select.us.i.i = call i64 @llvm.umin.i64(i64 %i.rs, i64 8192) ; 2 uses
  br i1 %.0105.us.i.i, label %.split.us.us.i.i, label %.split.us110.i.i

.split.us110.i.i:                                 ; preds = %bb.eh, %bb.ei
  %i.rt = call i64 @read(i32 noundef %i.ro, ptr noundef nonnull %i.a, i64 noundef %spec.store.select.us.i.i) #15 ; 2 uses
  switch i64 %i.rt, label %.preheader64.i.i [
    i64 -1, label %bb.ei
    i64 0, label %.loopexit.i.i
  ]

bb.ei:                                            ; preds = %.split.us110.i.i
  %i.ru = load i32, ptr %i.g, align 4             ; 2 uses
  %i.rv = icmp eq i32 %i.ru, 4
  br i1 %i.rv, label %.split.us110.i.i, label %.split102.us109.i.i, !llvm.loop !18

bb.ej:                                            ; preds = %.split102.us109.i.i
  switch i32 %i.rw, label %uv__fs_sendfile_emul.exit.i [
    i32 5, label %.backedge
    i32 29, label %.backedge
  ]

.backedge:                                        ; preds = %bb.ej, %bb.ej
  br label %bb.eh

.split102.us109.i.i:                              ; preds = %bb.ei, %bb.ek
  %i.rw = phi i32 [ %i.rz, %bb.ek ], [ %i.ru, %bb.ei ]
  %i.rx = icmp eq i64 %.048104.us.i.i, 0          ; 2 uses
  %or.cond.us.i.i = and i1 %.0105.us.i.i, %i.rx
  br i1 %or.cond.us.i.i, label %bb.ej, label %.split122.us.i.i

.split.us.us.i.i:                                 ; preds = %bb.eh, %bb.ek
  %i.ry = call i64 @pread64(i32 noundef %i.ro, ptr noundef nonnull %i.a, i64 noundef %spec.store.select.us.i.i, i64 noundef %.047.ph149.i.i) #15 ; 2 uses
  switch i64 %i.ry, label %.preheader64.i.i [
    i64 -1, label %bb.ek
    i64 0, label %.loopexit.i.i
  ]

bb.ek:                                            ; preds = %.split.us.us.i.i
  %i.rz = load i32, ptr %i.g, align 4             ; 2 uses
  %i.sa = icmp eq i32 %i.rz, 4
  br i1 %i.sa, label %.split.us.us.i.i, label %.split102.us109.i.i, !llvm.loop !18

.preheader64.i.i:                                 ; preds = %.split.us110.i.i, %.split.us.us.i.i
  %.0105.us177.i.i = phi i32 [ 1, %.split.us.us.i.i ], [ 0, %.split.us110.i.i ]
  %.us-phi98.i.i = phi i64 [ %i.ry, %.split.us.us.i.i ], [ %i.rt, %.split.us110.i.i ] ; 6 uses
  %i.sb = icmp sgt i64 %.us-phi98.i.i, 0
  br i1 %i.sb, label %.outer.split.i.i, label %.outer68.i.i

.split122.us.i.i:                                 ; preds = %.split102.us109.i.i
  br i1 %i.rx, label %uv__fs_sendfile_emul.exit.i, label %.loopexit.thread.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.outer.split.i.i
  %i.sc = call i64 @write(i32 noundef %i.rp, ptr noundef nonnull %i.si, i64 noundef %i.sh) #15 ; 2 uses
  %cond.i.i = icmp eq i64 %i.sc, -1
  br i1 %cond.i.i, label %bb.el, label %.outer.i.i

bb.el:                                            ; preds = %.preheader.i.i
  %i.sd = load i32, ptr %i.g, align 4
  switch i32 %i.sd, label %uv__fs_sendfile_emul.exit.i [
    i32 4, label %.preheader.i.i.backedge
    i32 11, label %bb.em
  ]

.preheader.i.i.backedge:                          ; preds = %bb.el, %.critedge57.i.i
  br label %.preheader.i.i, !llvm.loop !19

.outer.i.i:                                       ; preds = %.preheader.i.i
  %i.se = add nsw i64 %i.sc, %.049.ph147.i.i      ; 3 uses
  %i.sf = icmp slt i64 %i.se, %.us-phi98.i.i
  %i.sg = sub nsw i64 %.us-phi98.i.i, %i.se
  br i1 %i.sf, label %.outer.split.i.i, label %.outer68.i.i, !llvm.loop !19

.outer.split.i.i:                                 ; preds = %.preheader64.i.i, %.outer.i.i
  %i.sh = phi i64 [ %i.sg, %.outer.i.i ], [ %.us-phi98.i.i, %.preheader64.i.i ]
  %.049.ph147.i.i = phi i64 [ %i.se, %.outer.i.i ], [ 0, %.preheader64.i.i ] ; 2 uses
  %i.si = getelementptr inbounds i8, ptr %i.a, i64 %.049.ph147.i.i
  br label %.preheader.i.i

bb.em:                                            ; preds = %bb.el
  store i32 %i.rp, ptr %5, align 4
  store i16 4, ptr %i.aw, align 4
  store i16 0, ptr %i.ax, align 2
  br label %bb.en

bb.en:                                            ; preds = %bb.eo, %bb.em
  %i.sj = call i32 @poll(ptr noundef nonnull %5, i64 noundef 1, i32 noundef -1) #15
  %i.sk = icmp eq i32 %i.sj, -1
  br i1 %i.sk, label %bb.eo, label %.critedge57.i.i

bb.eo:                                            ; preds = %bb.en
  %i.sl = load i32, ptr %i.g, align 4
  %i.sm = icmp eq i32 %i.sl, 4
  br i1 %i.sm, label %bb.en, label %.critedge6.i.i, !llvm.loop !20

.critedge57.i.i:                                  ; preds = %bb.en
  %i.sn = load i16, ptr %i.ax, align 2
  %i.so = and i16 %i.sn, -5
  %.not55.i.i = icmp eq i16 %i.so, 0
  br i1 %.not55.i.i, label %.preheader.i.i.backedge, label %.critedge6.i.i

.critedge6.i.i:                                   ; preds = %.critedge57.i.i, %bb.eo
  store i32 5, ptr %i.g, align 4
  br label %uv__fs_sendfile_emul.exit.i

.outer68.i.i:                                     ; preds = %.outer.i.i, %.preheader64.i.i
  %i.sp = add nsw i64 %.us-phi98.i.i, %.047.ph149.i.i ; 2 uses
  %i.sq = add nsw i64 %.us-phi98.i.i, %.048104.us.i.i ; 3 uses
  %i.sr = icmp ult i64 %i.sq, %i.rn
  br i1 %i.sr, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !21

.loopexit.i.i:                                    ; preds = %.outer68.i.i, %.split.us110.i.i, %.split.us.us.i.i
  %.047.ph96.i.i = phi i64 [ %.047.ph149.i.i, %.split.us110.i.i ], [ %.047.ph149.i.i, %.split.us.us.i.i ], [ %i.sp, %.outer68.i.i ]
  %.04882.i.i = phi i64 [ %.048104.us.i.i, %.split.us110.i.i ], [ %.048104.us.i.i, %.split.us.us.i.i ], [ %i.sq, %.outer68.i.i ] ; 2 uses
  %.not56.old.i.i = icmp eq i64 %.04882.i.i, -1
  br i1 %.not56.old.i.i, label %uv__fs_sendfile_emul.exit.i, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.loopexit.i.i, %.split122.us.i.i, %bb.eg
  %.047.ph95.i.i = phi i64 [ %.047.ph149.i.i, %.split122.us.i.i ], [ %.047.ph96.i.i, %.loopexit.i.i ], [ %i.rq, %bb.eg ]
  %.04881.i.i = phi i64 [ %.048104.us.i.i, %.split122.us.i.i ], [ %.04882.i.i, %.loopexit.i.i ], [ 0, %bb.eg ]
  store i64 %.047.ph95.i.i, ptr %i.k, align 8
  br label %uv__fs_sendfile_emul.exit.i

uv__fs_sendfile_emul.exit.i:                      ; preds = %bb.ej, %bb.el, %.loopexit.thread.i.i, %.loopexit.i.i, %.critedge6.i.i, %.split122.us.i.i
  %.161.i.i = phi i64 [ -1, %.loopexit.i.i ], [ %.04881.i.i, %.loopexit.thread.i.i ], [ -1, %.critedge6.i.i ], [ -1, %bb.el ], [ -1, %.split122.us.i.i ], [ -1, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %uv__fs_sendfile.exit

uv__fs_sendfile.exit:                             ; preds = %.critedge.thread25.i, %bb.ef, %uv__fs_sendfile_emul.exit.i
  %.0.i112 = phi i64 [ %i.rl, %.critedge.thread25.i ], [ %.161.i.i, %uv__fs_sendfile_emul.exit.i ], [ -1, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %uv__fs_readlink.exit

bb.ep:                                            ; preds = %bb.b
  %i.ss = load ptr, ptr %i.p, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.st = load atomic i32, ptr @uv__fs_statx.no_statx monotonic, align 4
  %.not.i.i113 = icmp eq i32 %i.st, 0
  br i1 %.not.i.i113, label %bb.eq, label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  %i.su = call i32 @uv__statx(i32 noundef -100, ptr noundef %i.ss, i32 noundef 0, i32 noundef 4095, ptr noundef nonnull %3) #15 ; 2 uses
  switch i32 %i.su, label %bb.es [
    i32 0, label %bb.et
    i32 -1, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq
  %i.sv = load i32, ptr %i.g, align 4
  switch i32 %i.sv, label %uv__fs_statx.exit.i115 [
    i32 22, label %bb.es
end_hunk_1
