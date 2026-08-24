Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fourinarow?download=true
inline.NumInlined: 25
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@DEPTH = dso_local global i32 3, align 4
@off = dso_local local_unnamed_addr global i32 0, align 4
@C4VERT = dso_local local_unnamed_addr global i64 0, align 8
@C3VERT = dso_local local_unnamed_addr global i64 0, align 8
@C2VERT = dso_local local_unnamed_addr global i64 0, align 8
@C4HORIZ = dso_local local_unnamed_addr global i64 0, align 8
@C3HORIZ = dso_local local_unnamed_addr global i64 0, align 8
@C2HORIZ = dso_local local_unnamed_addr global i64 0, align 8
@C4UP_R = dso_local local_unnamed_addr global i64 0, align 8
@C3UP_R = dso_local local_unnamed_addr global i64 0, align 8
@C2UP_R = dso_local local_unnamed_addr global i64 0, align 8
@C4UP_L = dso_local local_unnamed_addr global i64 0, align 8
@C3UP_L = dso_local local_unnamed_addr global i64 0, align 8
@C2UP_L = dso_local local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ERROR: Faulty column: %d.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"test.in\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Recursion depth: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Alpha-Beta pruning: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [17 x i8] c"----------------\00", align 1
@str.1 = private unnamed_addr constant [23 x i8] c"ERROR: Unknown player.\00", align 1
@str.2 = private unnamed_addr constant [34 x i8] c"ERROR: Could not open indata file\00", align 1
@str.3 = private unnamed_addr constant [23 x i8] c"Using pruning method 1\00", align 1
@str.4 = private unnamed_addr constant [23 x i8] c"Using pruning method 2\00", align 1
@str.5 = private unnamed_addr constant [26 x i8] c"The player is the winner.\00", align 1
@str.6 = private unnamed_addr constant [28 x i8] c"The computer is the winner.\00", align 1
@str.7 = private unnamed_addr constant [12 x i8] c"It's a tie.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_patterns() local_unnamed_addr #0 {
bb.a:
  %C4VERT.promoted = load i64, ptr @C4VERT, align 8, !tbaa !8
  %i.a = shl i64 %C4VERT.promoted, 21             ; 3 uses
  %i.b = or i64 %i.a, 2113665
  store i64 %i.b, ptr @C4VERT, align 8, !tbaa !8
  %i.c = lshr exact i64 %i.a, 7
  %i.d = or i64 %i.c, 16513
  store i64 %i.d, ptr @C3VERT, align 8, !tbaa !8
  %i.e = lshr exact i64 %i.a, 14
  %i.f = or i64 %i.e, 129
  store i64 %i.f, ptr @C2VERT, align 8, !tbaa !8
  store i64 15, ptr @C4HORIZ, align 8, !tbaa !8
  store i64 7, ptr @C3HORIZ, align 8, !tbaa !8
  store i64 3, ptr @C2HORIZ, align 8, !tbaa !8
  %C4UP_R.promoted = load i64, ptr @C4UP_R, align 8, !tbaa !8
  %i.g = shl i64 %C4UP_R.promoted, 24             ; 3 uses
  %i.h = or i64 %i.g, 16843009
  store i64 %i.h, ptr @C4UP_R, align 8, !tbaa !8
  %i.i = lshr exact i64 %i.g, 8
  %i.j = or i64 %i.i, 65793
  store i64 %i.j, ptr @C3UP_R, align 8, !tbaa !8
  %i.k = lshr exact i64 %i.g, 16
  %i.l = or i64 %i.k, 257
  store i64 %i.l, ptr @C2UP_R, align 8, !tbaa !8
  %C4UP_L.promoted = load i64, ptr @C4UP_L, align 8, !tbaa !8
  %i.m = shl i64 %C4UP_L.promoted, 18             ; 3 uses
  %i.n = or i64 %i.m, 2130440
  store i64 %i.n, ptr @C4UP_L, align 8, !tbaa !8
  %i.o = lshr exact i64 %i.m, 6
  %i.p = or i64 %i.o, 33288
  store i64 %i.p, ptr @C3UP_L, align 8, !tbaa !8
  %i.q = lshr exact i64 %i.m, 12
  %i.r = or i64 %i.q, 520
  store i64 %i.r, ptr @C2UP_L, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_board(ptr nofree noundef writeonly captures(none) initializes((0, 49)) %0) local_unnamed_addr #2 {
.preheader11:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %0, i8 46, i64 6, i1 false), !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, i8 46, i64 6, i1 false), !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, i8 46, i64 6, i1 false), !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, i8 46, i64 6, i1 false), !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, i8 46, i64 6, i1 false), !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, i8 46, i64 6, i1 false), !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.f, i8 46, i64 6, i1 false), !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 0, ptr %i.g, align 1, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 0, ptr %i.h, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.i, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.j, align 1, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 0, ptr %i.k, align 1, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.l, align 1, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.m, align 1, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_board(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.b = tail call i32 @putc(i32 noundef 32, ptr noundef %i.a), !inline_history !14 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %i.e = sext i8 %i.d to i32
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %i.j = sext i8 %i.i to i32
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = sext i8 %i.n to i32
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = sext i8 %i.s to i32
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %i.y = sext i8 %i.x to i32
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ad = sext i8 %i.ac to i32
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ai = sext i8 %i.ah to i32
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ai) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.al = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ak), !inline_history !14 ; 0 uses
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 5) ; 0 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.an = load i8, ptr %invariant.gep, align 1, !tbaa !10
  %i.ao = sext i8 %i.an to i32
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ao) ; 0 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = load i8, ptr %gep.1, align 1, !tbaa !10
  %i.ar = sext i8 %i.aq to i32
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ar) ; 0 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.at = load i8, ptr %gep.2, align 1, !tbaa !10
  %i.au = sext i8 %i.at to i32
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.au) ; 0 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.aw = load i8, ptr %gep.3, align 1, !tbaa !10
  %i.ax = sext i8 %i.aw to i32
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ax) ; 0 uses
  %gep.4 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.az = load i8, ptr %gep.4, align 1, !tbaa !10
  %i.ba = sext i8 %i.az to i32
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ba) ; 0 uses
  %gep.5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load i8, ptr %gep.5, align 1, !tbaa !10
  %i.bd = sext i8 %i.bc to i32
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bd) ; 0 uses
  %gep.6 = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.bf = load i8, ptr %gep.6, align 1, !tbaa !10
  %i.bg = sext i8 %i.bf to i32
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bg) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.bj = tail call i32 @putc(i32 noundef 10, ptr noundef %i.bi), !inline_history !14 ; 0 uses
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 4) ; 0 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bl = load i8, ptr %invariant.gep.1, align 1, !tbaa !10
  %i.bm = sext i8 %i.bl to i32
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bm) ; 0 uses
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bo = load i8, ptr %gep.1.1, align 1, !tbaa !10
  %i.bp = sext i8 %i.bo to i32
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bp) ; 0 uses
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.br = load i8, ptr %gep.2.1, align 1, !tbaa !10
  %i.bs = sext i8 %i.br to i32
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bs) ; 0 uses
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.bu = load i8, ptr %gep.3.1, align 1, !tbaa !10
  %i.bv = sext i8 %i.bu to i32
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bv) ; 0 uses
  %gep.4.1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i8, ptr %gep.4.1, align 1, !tbaa !10
  %i.by = sext i8 %i.bx to i32
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.by) ; 0 uses
  %gep.5.1 = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.ca = load i8, ptr %gep.5.1, align 1, !tbaa !10
  %i.cb = sext i8 %i.ca to i32
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cb) ; 0 uses
  %gep.6.1 = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.cd = load i8, ptr %gep.6.1, align 1, !tbaa !10
  %i.ce = sext i8 %i.cd to i32
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ce) ; 0 uses
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ch = tail call i32 @putc(i32 noundef 10, ptr noundef %i.cg), !inline_history !14 ; 0 uses
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 3) ; 0 uses
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cj = load i8, ptr %invariant.gep.2, align 1, !tbaa !10
  %i.ck = sext i8 %i.cj to i32
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ck) ; 0 uses
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cm = load i8, ptr %gep.1.2, align 1, !tbaa !10
  %i.cn = sext i8 %i.cm to i32
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cn) ; 0 uses
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.cp = load i8, ptr %gep.2.2, align 1, !tbaa !10
  %i.cq = sext i8 %i.cp to i32
  %i.cr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cq) ; 0 uses
  %gep.3.2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load i8, ptr %gep.3.2, align 1, !tbaa !10
  %i.ct = sext i8 %i.cs to i32
  %i.cu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ct) ; 0 uses
  %gep.4.2 = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.cv = load i8, ptr %gep.4.2, align 1, !tbaa !10
  %i.cw = sext i8 %i.cv to i32
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cw) ; 0 uses
  %gep.5.2 = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.cy = load i8, ptr %gep.5.2, align 1, !tbaa !10
  %i.cz = sext i8 %i.cy to i32
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cz) ; 0 uses
  %gep.6.2 = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.db = load i8, ptr %gep.6.2, align 1, !tbaa !10
  %i.dc = sext i8 %i.db to i32
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.dc) ; 0 uses
  %i.de = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.df = tail call i32 @putc(i32 noundef 10, ptr noundef %i.de), !inline_history !14 ; 0 uses
  %i.dg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 2) ; 0 uses
  %invariant.gep.3 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dh = load i8, ptr %invariant.gep.3, align 1, !tbaa !10
  %i.di = sext i8 %i.dh to i32
  %i.dj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.di) ; 0 uses
  %gep.1.3 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.dk = load i8, ptr %gep.1.3, align 1, !tbaa !10
  %i.dl = sext i8 %i.dk to i32
  %i.dm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.dl) ; 0 uses
  %gep.2.3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dn = load i8, ptr %gep.2.3, align 1, !tbaa !10
  %i.do = sext i8 %i.dn to i32
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.do) ; 0 uses
  %gep.3.3 = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.dq = load i8, ptr %gep.3.3, align 1, !tbaa !10
  %i.dr = sext i8 %i.dq to i32
  %i.ds = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.dr) ; 0 uses
  %gep.4.3 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.dt = load i8, ptr %gep.4.3, align 1, !tbaa !10
  %i.du = sext i8 %i.dt to i32
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.du) ; 0 uses
  %gep.5.3 = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.dw = load i8, ptr %gep.5.3, align 1, !tbaa !10
  %i.dx = sext i8 %i.dw to i32
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.dx) ; 0 uses
  %gep.6.3 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dz = load i8, ptr %gep.6.3, align 1, !tbaa !10
  %i.ea = sext i8 %i.dz to i32
  %i.eb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ea) ; 0 uses
  %i.ec = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ed = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ec), !inline_history !14 ; 0 uses
  %i.ee = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1) ; 0 uses
  %invariant.gep.4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ef = load i8, ptr %invariant.gep.4, align 1, !tbaa !10
  %i.eg = sext i8 %i.ef to i32
  %i.eh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.eg) ; 0 uses
  %gep.1.4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load i8, ptr %gep.1.4, align 1, !tbaa !10
  %i.ej = sext i8 %i.ei to i32
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ej) ; 0 uses
  %gep.2.4 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.el = load i8, ptr %gep.2.4, align 1, !tbaa !10
  %i.em = sext i8 %i.el to i32
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.em) ; 0 uses
  %gep.3.4 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.eo = load i8, ptr %gep.3.4, align 1, !tbaa !10
  %i.ep = sext i8 %i.eo to i32
  %i.eq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ep) ; 0 uses
  %gep.4.4 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.er = load i8, ptr %gep.4.4, align 1, !tbaa !10
  %i.es = sext i8 %i.er to i32
  %i.et = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.es) ; 0 uses
  %gep.5.4 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.eu = load i8, ptr %gep.5.4, align 1, !tbaa !10
  %i.ev = sext i8 %i.eu to i32
  %i.ew = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ev) ; 0 uses
  %gep.6.4 = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.ex = load i8, ptr %gep.6.4, align 1, !tbaa !10
  %i.ey = sext i8 %i.ex to i32
  %i.ez = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ey) ; 0 uses
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.fb = tail call i32 @putc(i32 noundef 10, ptr noundef %i.fa), !inline_history !14 ; 0 uses
end_hunk_0
