Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft11e-r2hc-odd?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan_adt = type { ptr, ptr, ptr, ptr }
%struct.opcnt = type { double, double, double, double }

@mksolver.sadt = internal constant { i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @mkplan, ptr null }, align 8
@mkplan.padt = internal constant %struct.plan_adt { ptr @fftw_rdft_solve, ptr @awake, ptr @print, ptr @destroy }, align 8
@.str = private unnamed_addr constant [26 x i8] c"(%se-r2hc-odd-%D%v%(%p%))\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fftw_reodft11e_r2hc_odd_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_mksolver(i64 noundef 16, ptr noundef nonnull @mksolver.sadt) #4
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.a) #4
  ret void
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.opcnt, align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.a = getelementptr i8, ptr %2, i64 212
  %.val = load i64, ptr %i.a, align 4
  %i.b = and i64 %.val, 8
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %applicable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %bb.d, label %applicable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39   ; 6 uses
  %i.m = and i64 %i.l, -9223372036854775807
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %applicable.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  switch i32 %i.p, label %applicable.exit.thread [
    i32 12, label %applicable.exit.thread40
    i32 16, label %applicable.exit.thread40
  ]

applicable.exit.thread40:                         ; preds = %bb.e, %bb.e
  %i.q = shl i64 %i.l, 3
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #4 ; 3 uses
  %i.s = tail call ptr @fftw_mktensor_1d(i64 noundef %i.l, i64 noundef 1, i64 noundef 1) #4
  %i.t = tail call ptr @fftw_mktensor_0d() #4
  %i.u = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.r, ptr noundef %i.r, i32 noundef 0) #4
  %i.v = tail call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.u) #4 ; 3 uses
  tail call void @fftw_ifree(ptr noundef %i.r) #4
  %.not38 = icmp eq ptr %i.v, null
  br i1 %.not38, label %applicable.exit.thread, label %bb.f

bb.f:                                             ; preds = %applicable.exit.thread40
  %i.w = load i32, ptr %i.o, align 8, !tbaa !40
  %i.x = icmp eq i32 %i.w, 12
  %i.y = select i1 %i.x, ptr @apply_re11, ptr @apply_ro11
  %i.z = tail call ptr @fftw_mkplan_rdft(i64 noundef 128, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull %i.y) #4 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store i64 %i.l, ptr %i.aa, align 8, !tbaa !17
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !41
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.v, ptr %i.af, align 8, !tbaa !18
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !19
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.am = tail call i32 @fftw_tensor_tornk1(ptr noundef %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al) #4 ; 0 uses
  call void @fftw_ops_zero(ptr noundef nonnull %3) #4
  %i.an = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.ao = shufflevector <2 x i64> %i.an, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ap = add nsw <2 x i64> %i.ao, <i64 -1, i64 0>
  %i.aq = uitofp <2 x i64> %i.ap to <2 x double>
  store <2 x double> %i.aq, ptr %3, align 16, !tbaa !20
  %i.ar = shl nsw i64 %i.l, 2
  %i.as = uitofp nneg i64 %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.as, ptr %i.at, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  call void @fftw_ops_zero(ptr noundef nonnull %i.au) #4
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !21
  call void @fftw_ops_madd2(i64 noundef %i.av, ptr noundef nonnull %3, ptr noundef nonnull %i.au) #4
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.au) #4
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a, %applicable.exit.thread40, %bb.f
  %.0 = phi ptr [ %i.z, %bb.f ], [ null, %bb.e ], [ null, %applicable.exit.thread40 ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call ptr @fftw_rdft_kind_str(i32 noundef %i.c) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, ptr noundef %i.j) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #4
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_0d() local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_re11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 27 uses
  %i.g = sdiv i64 %i.f, 2                         ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.n = shl i64 %i.f, 3
  %i.o = tail call ptr @fftw_malloc_plain(i64 noundef %i.n) #4 ; 40 uses
  %i.p = icmp sgt i64 %i.i, 0
  br i1 %i.p, label %.preheader195.lr.ph, label %._crit_edge232

.preheader195.lr.ph:                              ; preds = %bb.a
  %i.q = icmp sgt i64 %i.f, 0
  %i.r = shl i64 %i.f, 1                          ; 12 uses
  %i.s = mul i64 %i.f, 3                          ; 2 uses
  %i.t = shl nsw i64 %i.f, 2                      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = icmp sgt i64 %i.f, 3
  %i.w = xor i64 %i.g, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.g
  %i.y = sub nsw i64 %i.f, %i.g
  %i.z = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = add nsw i64 %i.g, 1
  %i.ab = sdiv i64 %i.aa, 2
  %i.ac = and i64 %i.ab, 1
  %.not184 = icmp eq i64 %i.ac, 0
  %i.ad = mul nsw i64 %i.g, %i.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.g, i64 3)
  %i.ae = add nsw i64 %smax, -2
  %i.af = lshr i64 %i.ae, 1                       ; 5 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ah = add nuw i64 %i.i, 2305843009213693951
  %i.ai = mul i64 %i.m, %i.ah
  %i.aj = shl i64 %i.ai, 3                        ; 3 uses
  %i.ak = shl nuw i64 %i.af, 3                    ; 4 uses
  %i.al = getelementptr i8, ptr %2, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.am, i64 8   ; 2 uses
  %i.an = shl i64 %i.f, 3                         ; 4 uses
  %i.ao = add i64 %i.an, -8
  %i.ap = sub i64 %i.ao, %i.ak
  %scevgep270.a = getelementptr i8, ptr %2, i64 %i.ap ; 5 uses
  %i.aq = getelementptr i8, ptr %2, i64 %i.aj
  %scevgep271.a = getelementptr i8, ptr %i.aq, i64 %i.an ; 5 uses
  %i.ar = shl i64 %i.g, 3                         ; 3 uses
  %i.as = add i64 %i.ar, -8
  %i.at = sub i64 %i.as, %i.ak
  %scevgep272.a = getelementptr i8, ptr %2, i64 %i.at ; 5 uses
  %i.au = add i64 %i.aj, %i.ar                    ; 2 uses
  %scevgep273.a = getelementptr i8, ptr %2, i64 %i.au ; 5 uses
  %i.av = getelementptr i8, ptr %2, i64 %i.ar
  %scevgep274.a = getelementptr i8, ptr %i.av, i64 8 ; 5 uses
  %i.aw = getelementptr i8, ptr %2, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.ak
  %scevgep275.a = getelementptr i8, ptr %i.ax, i64 16 ; 5 uses
  %i.ay = add i64 %i.an, -16
  %i.az = shl i64 %i.af, 4                        ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %scevgep276.a = getelementptr i8, ptr %i.o, i64 %i.ba ; 4 uses
  %scevgep277 = getelementptr i8, ptr %i.o, i64 %i.an ; 4 uses
  %scevgep278 = getelementptr i8, ptr %i.o, i64 8 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.o, i64 %i.az
  %scevgep279 = getelementptr i8, ptr %i.bb, i64 24 ; 4 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = insertelement <4 x ptr> poison, ptr %scevgep273.a, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %scevgep271.a, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep275.a, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep277, i64 3
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep272.a, i64 0
  %i.bj = insertelement <4 x ptr> %i.bi, ptr %scevgep270.a, i64 1
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %scevgep274.a, i64 2
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %scevgep276.a, i64 3
  %i.bm = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bn = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bo = insertelement <4 x ptr> poison, ptr %scevgep276.a, i64 0
  %i.bp = insertelement <4 x ptr> %i.bo, ptr %scevgep270.a, i64 1
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %scevgep274.a, i64 2
  %i.br = insertelement <4 x ptr> %i.bq, ptr %scevgep272.a, i64 3
  %i.bs = insertelement <4 x ptr> poison, ptr %scevgep271.a, i64 0
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %scevgep279, i64 1
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep273.a, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep277, i64 3
  %i.bw = insertelement <4 x ptr> poison, ptr %scevgep270.a, i64 0
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep278, i64 1
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep272.a, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep276.a, i64 3
  %i.ca = insertelement <4 x ptr> poison, ptr %scevgep277, i64 0
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %scevgep271.a, i64 1
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %scevgep275.a, i64 2
  %i.cd = insertelement <4 x ptr> %i.cc, ptr %scevgep273.a, i64 3
  %invariant.op = sub i64 4, %i.r
  %invariant.op390 = sub i64 8, %i.r
  %invariant.op392 = sub i64 12, %i.r
  %i.ce = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp sgt i64 %i.f, 23
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.cf = icmp ult <4 x ptr> %i.bd, %i.bh
  %i.cg = icmp ult <4 x ptr> %i.bl, %i.bn
  %.mask = and i64 %i.m, 1152921504606846976
  %stride.check284 = icmp ne i64 %.mask, 0
  %i.ch = and <4 x i1> %i.cf, %i.cg
  %bound0297 = icmp ult ptr %2, %scevgep279
  %bound1298 = icmp ult ptr %scevgep278, %scevgep
  %found.conflict299 = and i1 %bound0297, %bound1298
  %bound0302 = icmp ult ptr %scevgep270.a, %scevgep273.a
  %bound1303 = icmp ult ptr %scevgep272.a, %scevgep271.a
  %found.conflict304 = and i1 %bound0302, %bound1303
  %bound0308 = icmp ult ptr %scevgep270.a, %scevgep275.a
  %bound1309 = icmp ult ptr %scevgep274.a, %scevgep271.a
  %found.conflict310 = and i1 %bound0308, %bound1309
  %i.ci = icmp ult <4 x ptr> %i.bz, %i.cd
  %i.cj = icmp ult <4 x ptr> %i.br, %i.bv
  %i.ck = and <4 x i1> %i.cj, %i.ci
  %bound0335 = icmp ult ptr %scevgep272.a, %scevgep279
  %bound1336 = icmp ult ptr %scevgep278, %scevgep273.a
  %found.conflict337 = and i1 %bound0335, %bound1336
  %bound0340 = icmp ult ptr %scevgep274.a, %scevgep277
  %bound1341 = icmp ult ptr %scevgep276.a, %scevgep275.a
  %found.conflict342 = and i1 %bound0340, %bound1341
  %bound0345 = icmp ult ptr %scevgep274.a, %scevgep279
  %bound1346 = icmp ult ptr %scevgep278, %scevgep275.a
  %found.conflict347 = and i1 %bound0345, %bound1346
  %rdx.op = or <4 x i1> %i.ch, %i.ck
  %i.cl = bitcast <4 x i1> %rdx.op to i4
  %i.cm = icmp ne i4 %i.cl, 0
  %op.rdx = or i1 %i.cm, %found.conflict299
  %op.rdx358.a = or i1 %found.conflict304, %found.conflict310
  %op.rdx359.a = or i1 %found.conflict337, %found.conflict342
  %op.rdx360.a = or i1 %found.conflict347, %stride.check284
  %op.rdx361 = or i1 %op.rdx, %op.rdx358.a
  %op.rdx362 = or i1 %op.rdx359.a, %op.rdx360.a
  %op.rdx363 = or i1 %op.rdx361, %op.rdx362
  %n.vec = and i64 %i.ce, 9223372036854775806     ; 4 uses
  %i.cn = shl nuw i64 %n.vec, 1                   ; 2 uses
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert350 = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat351 = shufflevector <2 x i64> %broadcast.splatinsert350, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert352 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat353 = shufflevector <2 x i64> %broadcast.splatinsert352, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader195.lr.ph, %bb.c
  %.0231 = phi ptr [ %1, %.preheader195.lr.ph ], [ %i.mz, %bb.c ] ; 22 uses
  %.0166230 = phi ptr [ %2, %.preheader195.lr.ph ], [ %i.na, %bb.c ] ; 12 uses
  %.0173229 = phi i64 [ 0, %.preheader195.lr.ph ], [ %i.my, %bb.c ]
  br i1 %i.q, label %.lr.ph, label %.preheader194

.preheader194:                                    ; preds = %.lr.ph, %.preheader195
  %.0168.lcssa = phi i64 [ %i.g, %.preheader195 ], [ %i.cv, %.lr.ph ] ; 5 uses
  %.0167.lcssa = phi i64 [ 0, %.preheader195 ], [ %i.cu, %.lr.ph ] ; 4 uses
  %i.cp = icmp slt i64 %.0168.lcssa, %i.r
  br i1 %i.cp, label %.lr.ph203.preheader, label %.preheader193

.lr.ph203.preheader:                              ; preds = %.preheader194
  %3 = add i64 %.0167.lcssa, 1
  %4 = xor i64 %.0168.lcssa, -1
  %5 = add i64 %i.r, %4                           ; 2 uses
  %6 = lshr i64 %5, 2                             ; 2 uses
  %7 = add i64 %3, %6                             ; 3 uses
  %8 = add nuw nsw i64 %6, 1
  %xtraiter = and i64 %8, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol

.lr.ph203.prol:                                   ; preds = %.lr.ph203.preheader, %.lr.ph203.prol
  %.1202.prol = phi i64 [ %16, %.lr.ph203.prol ], [ %.0167.lcssa, %.lr.ph203.preheader ] ; 2 uses
  %.1169201.prol = phi i64 [ %17, %.lr.ph203.prol ], [ %.0168.lcssa, %.lr.ph203.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph203.prol ], [ 0, %.lr.ph203.preheader ]
  %9 = xor i64 %.1169201.prol, -1
  %10 = add i64 %i.r, %9
  %11 = mul nsw i64 %10, %i.b
  %12 = getelementptr inbounds [8 x i8], ptr %.0231, i64 %11
  %13 = load double, ptr %12, align 8, !tbaa !20
  %14 = fneg double %13
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202.prol
  store double %14, ptr %15, align 8, !tbaa !20
  %16 = add nuw nsw i64 %.1202.prol, 1            ; 2 uses
  %17 = add nsw i64 %.1169201.prol, 4             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol, !llvm.loop !45

.lr.ph203.prol.loopexit:                          ; preds = %.lr.ph203.prol, %.lr.ph203.preheader
  %.lcssa365.unr = phi i64 [ poison, %.lr.ph203.preheader ], [ %17, %.lr.ph203.prol ]
  %.1202.unr = phi i64 [ %.0167.lcssa, %.lr.ph203.preheader ], [ %16, %.lr.ph203.prol ]
  %.1169201.unr = phi i64 [ %.0168.lcssa, %.lr.ph203.preheader ], [ %17, %.lr.ph203.prol ]
  %18 = icmp ult i64 %5, 12
  br i1 %18, label %.preheader193, label %.lr.ph203

.lr.ph:                                           ; preds = %.preheader195, %.lr.ph
  %.0167199 = phi i64 [ %i.cu, %.lr.ph ], [ 0, %.preheader195 ] ; 2 uses
  %.0168198 = phi i64 [ %i.cv, %.lr.ph ], [ %i.g, %.preheader195 ] ; 2 uses
  %i.cq = mul nsw i64 %.0168198, %i.b
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0167199
  store double %i.cs, ptr %i.ct, align 8, !tbaa !20
  %i.cu = add nuw nsw i64 %.0167199, 1            ; 2 uses
  %i.cv = add nuw nsw i64 %.0168198, 4            ; 3 uses
  %i.cw = icmp slt i64 %i.cv, %i.f
  br i1 %i.cw, label %.lr.ph, label %.preheader194, !llvm.loop !46

.preheader193:                                    ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203, %.preheader194
  %.1169.lcssa = phi i64 [ %.0168.lcssa, %.preheader194 ], [ %.lcssa365.unr, %.lr.ph203.prol.loopexit ], [ %i.df, %.lr.ph203 ] ; 5 uses
  %.1.lcssa = phi i64 [ %.0167.lcssa, %.preheader194 ], [ %7, %.lr.ph203 ], [ %7, %.lr.ph203.prol.loopexit ] ; 4 uses
  %19 = icmp slt i64 %.1169.lcssa, %i.s
  br i1 %19, label %.lr.ph209.preheader, label %.preheader

.lr.ph209.preheader:                              ; preds = %.preheader193
  %20 = add i64 %.1.lcssa, 1
  %21 = xor i64 %.1169.lcssa, -1
  %22 = add i64 %i.s, %21                         ; 2 uses
  %23 = lshr i64 %22, 2                           ; 2 uses
  %24 = add i64 %20, %23                          ; 3 uses
  %25 = add nuw nsw i64 %23, 1
  %xtraiter370 = and i64 %25, 3                   ; 2 uses
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %.preheader193.a, label %.lr.ph209.prol

.lr.ph209.prol:                                   ; preds = %.lr.ph209.preheader, %.lr.ph209.prol
  %.2208.prol = phi i64 [ %32, %.lr.ph209.prol ], [ %.1.lcssa, %.lr.ph209.preheader ] ; 2 uses
  %.2170207.prol = phi i64 [ %33, %.lr.ph209.prol ], [ %.1169.lcssa, %.lr.ph209.preheader ] ; 2 uses
  %prol.iter372 = phi i64 [ %prol.iter372.next, %.lr.ph209.prol ], [ 0, %.lr.ph209.preheader ]
  %26 = sub nsw i64 %.2170207.prol, %i.r
  %27 = mul nsw i64 %26, %i.b
  %28 = getelementptr inbounds [8 x i8], ptr %.0231, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !20
  %30 = fneg double %29
  %31 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208.prol
  store double %30, ptr %31, align 8, !tbaa !20
  %32 = add nuw i64 %.2208.prol, 1                ; 2 uses
  %33 = add nsw i64 %.2170207.prol, 4             ; 3 uses
  %prol.iter372.next = add i64 %prol.iter372, 1   ; 2 uses
  %prol.iter372.cmp.not = icmp eq i64 %prol.iter372.next, %xtraiter370
  br i1 %prol.iter372.cmp.not, label %.preheader193.a, label %.lr.ph209.prol, !llvm.loop !47

.preheader193.a:                                  ; preds = %.lr.ph209.prol, %.lr.ph209.preheader
  %.lcssa366.unr = phi i64 [ poison, %.lr.ph209.preheader ], [ %33, %.lr.ph209.prol ]
  %.1169.lcssa.a = phi i64 [ %.1.lcssa, %.lr.ph209.preheader ], [ %32, %.lr.ph209.prol ]
  %.1.lcssa.a = phi i64 [ %.1169.lcssa, %.lr.ph209.preheader ], [ %33, %.lr.ph209.prol ]
  %34 = icmp ult i64 %22, 12
  br i1 %34, label %.preheader, label %.lr.ph209

.lr.ph203:                                        ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203
  %.1202 = phi i64 [ %i.de, %.lr.ph203 ], [ %.1202.unr, %.lr.ph203.prol.loopexit ] ; 5 uses
  %.1169201 = phi i64 [ %i.df, %.lr.ph203 ], [ %.1169201.unr, %.lr.ph203.prol.loopexit ] ; 5 uses
  %i.cx = xor i64 %.1169201, -1
  %35 = add i64 %i.r, %i.cx
  %36 = mul nsw i64 %35, %i.b
  %37 = getelementptr inbounds [8 x i8], ptr %.0231, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !20
  %39 = fneg double %38
  %40 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  store double %39, ptr %40, align 8, !tbaa !20
  %reass.sub = sub i64 %i.r, %.1169201
  %41 = add i64 %reass.sub, -5
  %42 = mul nsw i64 %41, %i.b
  %43 = getelementptr inbounds [8 x i8], ptr %.0231, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !20
  %45 = fneg double %44
  %46 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store double %45, ptr %47, align 8, !tbaa !20
  %reass.sub376 = sub i64 %i.r, %.1169201
  %48 = add i64 %reass.sub376, -9
  %49 = mul nsw i64 %48, %i.b
  %50 = getelementptr inbounds [8 x i8], ptr %.0231, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !20
  %52 = fneg double %51
  %53 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 16
  store double %52, ptr %54, align 8, !tbaa !20
  %reass.sub377 = sub i64 %i.r, %.1169201
  %i.cy = add i64 %reass.sub377, -13
  %i.cz = mul nsw i64 %i.cy, %i.b
  %i.da = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !20
  %i.dc = fneg double %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %55 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store double %i.dc, ptr %55, align 8, !tbaa !20
  %i.de = add nuw nsw i64 %.1202, 4               ; 2 uses
  %i.df = add nsw i64 %.1169201, 16               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.de, %7
  br i1 %exitcond.not.3, label %.preheader193, label %.lr.ph203, !llvm.loop !48

.preheader:                                       ; preds = %.preheader193.a, %.lr.ph209, %.preheader193
  %.2170.lcssa = phi i64 [ %.1169.lcssa, %.preheader193 ], [ %.lcssa366.unr, %.preheader193.a ], [ %i.do, %.lr.ph209 ] ; 3 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader193 ], [ %24, %.lr.ph209 ], [ %24, %.preheader193.a ] ; 2 uses
  %i.dg = icmp slt i64 %.2170.lcssa, %i.t
  br i1 %i.dg, label %.lr.ph214, label %._crit_edge

.lr.ph209:                                        ; preds = %.preheader193.a, %.lr.ph209
  %.2208 = phi i64 [ %i.dn, %.lr.ph209 ], [ %.1169.lcssa.a, %.preheader193.a ] ; 5 uses
  %.2170207 = phi i64 [ %i.do, %.lr.ph209 ], [ %.1.lcssa.a, %.preheader193.a ] ; 5 uses
  %i.dh = sub nsw i64 %.2170207, %i.r
  %56 = mul nsw i64 %i.dh, %i.b
  %57 = getelementptr inbounds [8 x i8], ptr %.0231, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !20
  %59 = fneg double %58
  %60 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  store double %59, ptr %60, align 8, !tbaa !20
  %.reass = add i64 %.2170207, %invariant.op
  %61 = mul nsw i64 %.reass, %i.b
  %62 = getelementptr inbounds [8 x i8], ptr %.0231, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !20
  %64 = fneg double %63
  %65 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 8
  store double %64, ptr %66, align 8, !tbaa !20
  %.reass391 = add i64 %.2170207, %invariant.op390
  %67 = mul nsw i64 %.reass391, %i.b
  %68 = getelementptr inbounds [8 x i8], ptr %.0231, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !20
  %70 = fneg double %69
  %71 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 16
  store double %70, ptr %72, align 8, !tbaa !20
  %.reass393 = add i64 %.2170207, %invariant.op392
  %i.di = mul nsw i64 %.reass393, %i.b
  %i.dj = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !20
  %i.dl = fneg double %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  %73 = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store double %i.dl, ptr %73, align 8, !tbaa !20
  %i.dn = add nuw i64 %.2208, 4                   ; 2 uses
  %i.do = add nsw i64 %.2170207, 16               ; 2 uses
  %exitcond242.not.3 = icmp eq i64 %i.dn, %24
  br i1 %exitcond242.not.3, label %.preheader, label %.lr.ph209, !llvm.loop !49

.lr.ph214:                                        ; preds = %.preheader, %.lr.ph214
  %.3213 = phi i64 [ %i.dv, %.lr.ph214 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.3171212 = phi i64 [ %i.dw, %.lr.ph214 ], [ %.2170.lcssa, %.preheader ] ; 2 uses
  %i.dp = xor i64 %.3171212, -1
  %i.dq = add i64 %i.t, %i.dp
  %i.dr = mul nsw i64 %i.dq, %i.b
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !20
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.3213
  store double %i.dt, ptr %i.du, align 8, !tbaa !20
  %i.dv = add nuw nsw i64 %.3213, 1               ; 2 uses
  %i.dw = add nsw i64 %.3171212, 4                ; 3 uses
  %i.dx = icmp slt i64 %i.dw, %i.t
  br i1 %i.dx, label %.lr.ph214, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph214, %.preheader
  %.3171.lcssa = phi i64 [ %.2170.lcssa, %.preheader ], [ %i.dw, %.lr.ph214 ]
  %.3.lcssa = phi i64 [ %.2.lcssa, %.preheader ], [ %i.dv, %.lr.ph214 ] ; 5 uses
  %i.dy = icmp slt i64 %.3.lcssa, %i.f
  br i1 %i.dy, label %.lr.ph221.preheader, label %._crit_edge222

.lr.ph221.preheader:                              ; preds = %._crit_edge
  %i.dz = sub nsw i64 %.3171.lcssa, %i.t          ; 2 uses
  %i.ea = sub i64 %i.f, %.3.lcssa
  %xtraiter.a = and i64 %i.ea, 7                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph221.prol.loopexit, label %.lr.ph221.prol

.lr.ph221.prol:                                   ; preds = %.lr.ph221.preheader, %.lr.ph221.prol
  %.4219.prol = phi i64 [ %i.ef, %.lr.ph221.prol ], [ %.3.lcssa, %.lr.ph221.preheader ] ; 2 uses
  %.4172218.prol = phi i64 [ %i.eg, %.lr.ph221.prol ], [ %i.dz, %.lr.ph221.preheader ] ; 2 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.lr.ph221.prol ], [ 0, %.lr.ph221.preheader ]
  %i.eb = mul nsw i64 %.4172218.prol, %i.b
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !20
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219.prol
  store double %i.ed, ptr %i.ee, align 8, !tbaa !20
  %i.ef = add nuw nsw i64 %.4219.prol, 1          ; 2 uses
  %i.eg = add nuw nsw i64 %.4172218.prol, 4       ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph221.prol.loopexit, label %.lr.ph221.prol, !llvm.loop !51

.lr.ph221.prol.loopexit:                          ; preds = %.lr.ph221.prol, %.lr.ph221.preheader
  %.4219.unr = phi i64 [ %.3.lcssa, %.lr.ph221.preheader ], [ %i.ef, %.lr.ph221.prol ]
  %.4172218.unr = phi i64 [ %i.dz, %.lr.ph221.preheader ], [ %i.eg, %.lr.ph221.prol ]
  %i.eh = sub i64 %.3.lcssa, %i.f
  %i.ei = icmp ugt i64 %i.eh, -8
  br i1 %i.ei, label %._crit_edge222, label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.prol.loopexit, %.lr.ph221
  %.4219 = phi i64 [ %i.gd, %.lr.ph221 ], [ %.4219.unr, %.lr.ph221.prol.loopexit ] ; 9 uses
  %.4172218 = phi i64 [ %i.ge, %.lr.ph221 ], [ %.4172218.unr, %.lr.ph221.prol.loopexit ] ; 9 uses
  %i.ej = mul nsw i64 %.4172218, %i.b
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219
  store double %i.el, ptr %i.em, align 8, !tbaa !20
  %i.en = add nuw nsw i64 %.4172218, 4
  %i.eo = mul nsw i64 %i.en, %i.b
  %i.ep = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !20
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store double %i.eq, ptr %i.es, align 8, !tbaa !20
  %i.et = add nuw nsw i64 %.4172218, 8
  %i.eu = mul nsw i64 %i.et, %i.b
  %i.ev = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store double %i.ew, ptr %i.ey, align 8, !tbaa !20
  %i.ez = add nuw nsw i64 %.4172218, 12
  %i.fa = mul nsw i64 %i.ez, %i.b
  %i.fb = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store double %i.fc, ptr %i.fe, align 8, !tbaa !20
  %i.ff = add nuw nsw i64 %.4172218, 16
  %i.fg = mul nsw i64 %i.ff, %i.b
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store double %i.fi, ptr %i.fk, align 8, !tbaa !20
  %i.fl = add nuw nsw i64 %.4172218, 20
  %i.fm = mul nsw i64 %i.fl, %i.b
  %i.fn = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store double %i.fo, ptr %i.fq, align 8, !tbaa !20
  %i.fr = add nuw nsw i64 %.4172218, 24
  %i.fs = mul nsw i64 %i.fr, %i.b
  %i.ft = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !20
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  store double %i.fu, ptr %i.fw, align 8, !tbaa !20
  %i.fx = add nuw nsw i64 %.4172218, 28
  %i.fy = mul nsw i64 %i.fx, %i.b
  %i.fz = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !20
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4219
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  store double %i.ga, ptr %i.gc, align 8, !tbaa !20
  %i.gd = add nuw nsw i64 %.4219, 8               ; 2 uses
  %i.ge = add nuw nsw i64 %.4172218, 32
  %exitcond.not.7 = icmp eq i64 %i.gd, %i.f
  br i1 %exitcond.not.7, label %._crit_edge222, label %.lr.ph221, !llvm.loop !52

._crit_edge222:                                   ; preds = %.lr.ph221.prol.loopexit, %.lr.ph221, %._crit_edge
  %i.gf = load ptr, ptr %i.u, align 8, !tbaa !18  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !28
  tail call void %i.gh(ptr noundef %i.gf, ptr noundef %i.o, ptr noundef %i.o) #4
  br i1 %i.v, label %.lr.ph225.preheader, label %._crit_edge226

.lr.ph225.preheader:                              ; preds = %._crit_edge222
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx363
  br i1 %brmerge, label %.lr.ph225.preheader365, label %vector.body

vector.body:                                      ; preds = %.lr.ph225.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph225.preheader ] ; 5 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %.lr.ph225.preheader ] ; 5 uses
  %i.gi = shl i64 %index, 1                       ; 4 uses
  %i.gj = or disjoint i64 %i.gi, 1                ; 2 uses
  %i.gk = or disjoint i64 %i.gi, 3
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.gj
  %wide.vec = load <4 x double>, ptr %i.gl, align 8, !tbaa !20, !alias.scope !63 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec354 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.gm = or disjoint i64 %i.gi, 2
  %i.gn = add nuw nsw i64 %i.gi, 4
  %i.go = sub nsw i64 %i.f, %i.gm
  %i.gp = sub nsw i64 %i.f, %i.gn
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.go
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gp
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !20, !alias.scope !64
  %i.gt = load double, ptr %i.gr, align 8, !tbaa !20, !alias.scope !64
  %i.gu = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1 ; 3 uses
  %i.gw = sub nsw i64 %i.f, %i.gj
  %i.gx = sub nsw i64 %i.f, %i.gk
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gw
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gx
  %i.ha = load double, ptr %i.gy, align 8, !tbaa !20, !alias.scope !64
  %i.hb = load double, ptr %i.gz, align 8, !tbaa !20, !alias.scope !64
  %i.hc = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.hb, i64 1 ; 3 uses
  %i.he = or disjoint i64 %index, 1               ; 4 uses
  %i.hf = add nuw nsw i64 %index, 2               ; 4 uses
  %i.hg = insertelement <2 x i64> poison, i64 %i.he, i64 0
  %i.hh = insertelement <2 x i64> %i.hg, i64 %i.hf, i64 1
  %i.hi = and <2 x i64> %i.hh, splat (i64 2)
  %i.hj = icmp eq <2 x i64> %i.hi, zeroinitializer
  %i.hk = fneg <2 x double> %strided.vec          ; 2 uses
  %i.hl = select <2 x i1> %i.hj, <2 x double> %strided.vec, <2 x double> %i.hk
  %i.hm = and <2 x i64> %vec.ind, splat (i64 2)
  %i.hn = icmp eq <2 x i64> %i.hm, zeroinitializer
  %i.ho = fneg <2 x double> %i.hd                 ; 2 uses
  %i.hp = select <2 x i1> %i.hn, <2 x double> %i.hd, <2 x double> %i.ho
  %i.hq = fadd <2 x double> %i.hl, %i.hp
  %i.hr = fmul <2 x double> %i.hq, splat (double f0x3FF6A09E667F3BCD)
  %i.hs = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %index
  store <2 x double> %i.hr, ptr %i.hs, align 8, !tbaa !20, !alias.scope !65, !noalias !66
  %i.ht = sub nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.hu = sdiv <2 x i64> %i.ht, splat (i64 2)
  %i.hv = and <2 x i64> %i.hu, splat (i64 1)
  %i.hw = icmp eq <2 x i64> %i.hv, zeroinitializer
  %i.hx = select <2 x i1> %i.hw, <2 x double> %strided.vec, <2 x double> %i.hk
  %i.hy = sub nsw i64 %i.f, %i.he                 ; 2 uses
  %i.hz = sub nsw i64 %i.f, %i.hf
  %i.ia = insertelement <2 x i64> poison, i64 %i.hy, i64 0
  %i.ib = insertelement <2 x i64> %i.ia, i64 %i.hz, i64 1
  %i.ic = sdiv <2 x i64> %i.ib, splat (i64 2)
  %i.id = and <2 x i64> %i.ic, splat (i64 1)
  %i.ie = icmp eq <2 x i64> %i.id, zeroinitializer
  %i.if = select <2 x i1> %i.ie, <2 x double> %i.hd, <2 x double> %i.ho
  %i.ig = fsub <2 x double> %i.hx, %i.if
  %i.ih = fmul <2 x double> %i.ig, splat (double f0x3FF6A09E667F3BCD)
  %i.ii = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.hy
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -8
  %reverse = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.ij, align 8, !tbaa !20, !alias.scope !67, !noalias !68
  %i.ik = sub nuw nsw <2 x i64> %broadcast.splat351, %vec.ind
  %i.il = and <2 x i64> %i.ik, splat (i64 2)
  %i.im = icmp eq <2 x i64> %i.il, zeroinitializer
  %i.in = fneg <2 x double> %strided.vec354       ; 2 uses
  %i.io = select <2 x i1> %i.im, <2 x double> %strided.vec354, <2 x double> %i.in
  %i.ip = sub nuw nsw i64 %i.g, %i.he             ; 2 uses
  %i.iq = sub nuw nsw i64 %i.g, %i.hf
  %i.ir = insertelement <2 x i64> poison, i64 %i.ip, i64 0
  %i.is = insertelement <2 x i64> %i.ir, i64 %i.iq, i64 1
  %i.it = and <2 x i64> %i.is, splat (i64 2)
  %i.iu = icmp eq <2 x i64> %i.it, zeroinitializer
  %i.iv = fneg <2 x double> %i.gv                 ; 2 uses
  %i.iw = select <2 x i1> %i.iu, <2 x double> %i.gv, <2 x double> %i.iv
  %i.ix = fsub <2 x double> %i.io, %i.iw
  %i.iy = fmul <2 x double> %i.ix, splat (double f0x3FF6A09E667F3BCD)
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.0166230, i64 %i.ip
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -8
  %reverse355 = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse355, ptr %i.ja, align 8, !tbaa !20, !alias.scope !69, !noalias !70
  %i.jb = add nuw <2 x i64> %broadcast.splat353, %vec.ind
  %i.jc = and <2 x i64> %i.jb, splat (i64 2)
  %i.jd = icmp eq <2 x i64> %i.jc, zeroinitializer
  %i.je = select <2 x i1> %i.jd, <2 x double> %strided.vec354, <2 x double> %i.in
  %i.jf = add nuw nsw i64 %i.he, %i.g             ; 2 uses
  %i.jg = add nuw nsw i64 %i.hf, %i.g
  %i.jh = insertelement <2 x i64> poison, i64 %i.jf, i64 0
  %i.ji = insertelement <2 x i64> %i.jh, i64 %i.jg, i64 1
  %i.jj = and <2 x i64> %i.ji, splat (i64 2)
  %i.jk = icmp eq <2 x i64> %i.jj, zeroinitializer
  %i.jl = select <2 x i1> %i.jk, <2 x double> %i.gv, <2 x double> %i.iv
  %i.jm = fadd <2 x double> %i.je, %i.jl
  %i.jn = fmul <2 x double> %i.jm, splat (double f0x3FF6A09E667F3BCD)
  %i.jo = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.jf
  store <2 x double> %i.jn, ptr %i.jo, align 8, !tbaa !20, !alias.scope !71, !noalias !72
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.jp = icmp eq i64 %index.next, %n.vec
  br i1 %i.jp, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge226, label %.lr.ph225.preheader365

.lr.ph225.preheader365:                           ; preds = %.lr.ph225.preheader, %middle.block
  %.ph = phi i64 [ %i.co, %middle.block ], [ 1, %.lr.ph225.preheader ]
  %.ph366 = phi i64 [ %i.cn, %middle.block ], [ 0, %.lr.ph225.preheader ]
  %.5223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph225.preheader ]
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader365, %.lr.ph225
  %i.jq = phi i64 [ %i.lx, %.lr.ph225 ], [ %.ph, %.lr.ph225.preheader365 ] ; 2 uses
  %i.jr = phi i64 [ %i.lw, %.lr.ph225 ], [ %.ph366, %.lr.ph225.preheader365 ]
  %.5223 = phi i64 [ %i.kd, %.lr.ph225 ], [ %.5223.ph, %.lr.ph225.preheader365 ] ; 7 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jq
  %i.jt = load double, ptr %i.js, align 8, !tbaa !20 ; 3 uses
  %i.ju = add nuw nsw i64 %i.jr, 2                ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !20 ; 3 uses
  %i.jx = sub nsw i64 %i.f, %i.ju
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.jx
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !20 ; 3 uses
  %i.ka = sub nsw i64 %i.f, %i.jq
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ka
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !20 ; 3 uses
  %i.kd = add nuw nsw i64 %.5223, 1               ; 6 uses
  %i.ke = and i64 %i.kd, 2
  %.not185 = icmp eq i64 %i.ke, 0
  %i.kf = fneg double %i.jt                       ; 2 uses
  %i.kg = select i1 %.not185, double %i.jt, double %i.kf
  %i.kh = and i64 %.5223, 2
  %.not186 = icmp eq i64 %i.kh, 0
  %i.ki = fneg double %i.kc                       ; 2 uses
  %i.kj = select i1 %.not186, double %i.kc, double %i.ki
  %i.kk = fadd double %i.kg, %i.kj
  %i.kl = fmul double %i.kk, f0x3FF6A09E667F3BCD
  %i.km = mul nsw i64 %.5223, %i.d
  %i.kn = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.km
  store double %i.kl, ptr %i.kn, align 8, !tbaa !20
  %i.ko = sub nsw i64 %i.f, %.5223
  %i.kp = sdiv i64 %i.ko, 2
  %i.kq = and i64 %i.kp, 1
  %.not187 = icmp eq i64 %i.kq, 0
  %i.kr = select i1 %.not187, double %i.jt, double %i.kf
  %i.ks = sub nsw i64 %i.f, %i.kd                 ; 2 uses
  %i.kt = sdiv i64 %i.ks, 2
  %i.ku = and i64 %i.kt, 1
  %.not188 = icmp eq i64 %i.ku, 0
  %i.kv = select i1 %.not188, double %i.kc, double %i.ki
  %i.kw = fsub double %i.kr, %i.kv
  %i.kx = fmul double %i.kw, f0x3FF6A09E667F3BCD
  %i.ky = mul nsw i64 %i.ks, %i.d
  %i.kz = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.ky
  store double %i.kx, ptr %i.kz, align 8, !tbaa !20
  %i.la = sub nuw nsw i64 %i.g, %.5223
  %i.lb = and i64 %i.la, 2
  %.not189 = icmp eq i64 %i.lb, 0
  %i.lc = fneg double %i.jw                       ; 2 uses
  %i.ld = select i1 %.not189, double %i.jw, double %i.lc
  %i.le = sub nuw nsw i64 %i.g, %i.kd             ; 2 uses
  %i.lf = and i64 %i.le, 2
  %.not190 = icmp eq i64 %i.lf, 0
  %i.lg = fneg double %i.jz                       ; 2 uses
  %i.lh = select i1 %.not190, double %i.jz, double %i.lg
  %i.li = fsub double %i.ld, %i.lh
  %i.lj = fmul double %i.li, f0x3FF6A09E667F3BCD
  %i.lk = mul nsw i64 %i.le, %i.d
  %i.ll = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.lk
  store double %i.lj, ptr %i.ll, align 8, !tbaa !20
  %i.lm = add nuw i64 %i.w, %.5223
  %i.ln = and i64 %i.lm, 2
  %.not191 = icmp eq i64 %i.ln, 0
  %i.lo = select i1 %.not191, double %i.jw, double %i.lc
  %i.lp = add nuw nsw i64 %i.kd, %i.g             ; 2 uses
  %i.lq = and i64 %i.lp, 2
  %.not192 = icmp eq i64 %i.lq, 0
  %i.lr = select i1 %.not192, double %i.jz, double %i.lg
  %i.ls = fadd double %i.lo, %i.lr
  %i.lt = fmul double %i.ls, f0x3FF6A09E667F3BCD
  %i.lu = mul nsw i64 %i.lp, %i.d
  %i.lv = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.lu
  store double %i.lt, ptr %i.lv, align 8, !tbaa !20
  %i.lw = shl nuw nsw i64 %i.kd, 1                ; 2 uses
  %i.lx = or disjoint i64 %i.lw, 1                ; 2 uses
  %exitcond242.not = icmp eq i64 %.5223, %i.af
  br i1 %exitcond242.not, label %._crit_edge226, label %.lr.ph225, !llvm.loop !61

._crit_edge226:                                   ; preds = %.lr.ph225, %middle.block, %._crit_edge222
  %.5.lcssa = phi i64 [ 0, %._crit_edge222 ], [ %i.ag, %middle.block ], [ %i.ag, %.lr.ph225 ] ; 3 uses
  %.lcssa197 = phi i64 [ 1, %._crit_edge222 ], [ %i.co, %middle.block ], [ %i.lx, %.lr.ph225 ]
  %i.ly = icmp eq i64 %.lcssa197, %i.g
  br i1 %i.ly, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge226
  %i.lz = load double, ptr %i.x, align 8, !tbaa !20 ; 3 uses
  %i.ma = load double, ptr %i.z, align 8, !tbaa !20 ; 3 uses
  %i.mb = add nuw nsw i64 %.5.lcssa, 1            ; 2 uses
  %i.mc = and i64 %i.mb, 2
  %.not = icmp eq i64 %i.mc, 0                    ; 2 uses
  %i.md = fneg double %i.lz                       ; 2 uses
  %i.me = select i1 %.not, double %i.lz, double %i.md
  %i.mf = and i64 %.5.lcssa, 2
  %.not182 = icmp eq i64 %i.mf, 0                 ; 2 uses
  %i.mg = fneg double %i.ma                       ; 2 uses
  %i.mh = select i1 %.not182, double %i.ma, double %i.mg
  %i.mi = fadd double %i.me, %i.mh
  %i.mj = fmul double %i.mi, f0x3FF6A09E667F3BCD
  %i.mk = mul nsw i64 %.5.lcssa, %i.d
  %i.ml = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.mk
  store double %i.mj, ptr %i.ml, align 8, !tbaa !20
  %i.mm = select i1 %.not182, double %i.md, double %i.lz
  %i.mn = select i1 %.not, double %i.ma, double %i.mg
  %i.mo = fadd double %i.mm, %i.mn
  %i.mp = fmul double %i.mo, f0x3FF6A09E667F3BCD
  %i.mq = sub nsw i64 %i.f, %i.mb
  %i.mr = mul nsw i64 %i.mq, %i.d
  %i.ms = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.mr
  store double %i.mp, ptr %i.ms, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge226
  %i.mt = load double, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %i.mu = fneg double %i.mt
  %i.mv = select i1 %.not184, double %i.mt, double %i.mu
  %i.mw = fmul double %i.mv, f0x3FF6A09E667F3BCD
  %i.mx = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.ad
  store double %i.mw, ptr %i.mx, align 8, !tbaa !20
  %i.my = add nuw nsw i64 %.0173229, 1            ; 2 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.k
  %i.na = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.m
  %exitcond243.not = icmp eq i64 %i.my, %i.i
  br i1 %exitcond243.not, label %._crit_edge232, label %.preheader195, !llvm.loop !62

._crit_edge232:                                   ; preds = %bb.c, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.o) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_ro11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 38 uses
  %i.g = sdiv i64 %i.f, 2                         ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.n = shl i64 %i.f, 3
  %i.o = tail call ptr @fftw_malloc_plain(i64 noundef %i.n) #4 ; 36 uses
  %i.p = icmp sgt i64 %i.i, 0
  br i1 %i.p, label %.preheader212.lr.ph, label %._crit_edge249

.preheader212.lr.ph:                              ; preds = %bb.a
  %i.q = icmp sgt i64 %i.f, 0
  %i.r = shl i64 %i.f, 1                          ; 2 uses
  %i.s = mul i64 %i.f, 3                          ; 8 uses
  %i.t = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = icmp sgt i64 %i.f, 3
  %i.w = xor i64 %i.g, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.g
  %i.y = sub nsw i64 %i.f, %i.g
  %i.z = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = add nsw i64 %i.g, 1
  %i.ab = sdiv i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, %i.g
  %i.ad = and i64 %i.ac, 1
  %.not201 = icmp eq i64 %i.ad, 0
  %i.ae = mul nsw i64 %i.g, %i.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.g, i64 3)
  %i.af = add nsw i64 %smax, -2
  %i.ag = lshr i64 %i.af, 1                       ; 5 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.ai = add nuw i64 %i.i, 2305843009213693951
  %i.aj = mul i64 %i.m, %i.ai
  %i.ak = shl i64 %i.aj, 3                        ; 3 uses
  %i.al = shl nuw i64 %i.ag, 3                    ; 4 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.an, i64 8   ; 2 uses
  %i.ao = shl i64 %i.f, 3                         ; 4 uses
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.al
  %scevgep287.a = getelementptr i8, ptr %2, i64 %i.aq ; 5 uses
  %i.ar = getelementptr i8, ptr %2, i64 %i.ak
  %scevgep288.a = getelementptr i8, ptr %i.ar, i64 %i.ao ; 5 uses
  %i.as = shl i64 %i.g, 3                         ; 3 uses
  %i.at = add i64 %i.as, -8
  %i.au = sub i64 %i.at, %i.al
  %scevgep289.a = getelementptr i8, ptr %2, i64 %i.au ; 5 uses
  %i.av = add i64 %i.ak, %i.as                    ; 2 uses
  %scevgep290.a = getelementptr i8, ptr %2, i64 %i.av ; 5 uses
  %i.aw = getelementptr i8, ptr %2, i64 %i.as
  %scevgep291.a = getelementptr i8, ptr %i.aw, i64 8 ; 5 uses
  %i.ax = getelementptr i8, ptr %2, i64 %i.av
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.al
  %scevgep292.a = getelementptr i8, ptr %i.ay, i64 16 ; 5 uses
  %i.az = add i64 %i.ao, -16
  %i.ba = shl i64 %i.ag, 4                        ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %scevgep293.a = getelementptr i8, ptr %i.o, i64 %i.bb ; 4 uses
  %scevgep294 = getelementptr i8, ptr %i.o, i64 %i.ao ; 4 uses
  %scevgep295 = getelementptr i8, ptr %i.o, i64 8 ; 4 uses
  %i.bc = getelementptr i8, ptr %i.o, i64 %i.ba
  %scevgep296 = getelementptr i8, ptr %i.bc, i64 24 ; 4 uses
  %i.bd = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.be = shufflevector <4 x ptr> %i.bd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bf = insertelement <4 x ptr> poison, ptr %scevgep290.a, i64 0
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep288.a, i64 1
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep292.a, i64 2
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %scevgep294, i64 3
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep289.a, i64 0
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %scevgep287.a, i64 1
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %scevgep291.a, i64 2
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %scevgep293.a, i64 3
  %i.bn = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bo = shufflevector <4 x ptr> %i.bn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep293.a, i64 0
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %scevgep287.a, i64 1
  %i.br = insertelement <4 x ptr> %i.bq, ptr %scevgep291.a, i64 2
  %i.bs = insertelement <4 x ptr> %i.br, ptr %scevgep289.a, i64 3
  %i.bt = insertelement <4 x ptr> poison, ptr %scevgep288.a, i64 0
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep296, i64 1
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep290.a, i64 2
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %scevgep294, i64 3
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep287.a, i64 0
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep295, i64 1
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep289.a, i64 2
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %scevgep293.a, i64 3
  %i.cb = insertelement <4 x ptr> poison, ptr %scevgep294, i64 0
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %scevgep288.a, i64 1
  %i.cd = insertelement <4 x ptr> %i.cc, ptr %scevgep292.a, i64 2
  %i.ce = insertelement <4 x ptr> %i.cd, ptr %scevgep290.a, i64 3
  %invariant.op = sub i64 4, %i.f
  %invariant.op410 = sub i64 8, %i.f
  %invariant.op412 = sub i64 12, %i.f
  %i.cf = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp sgt i64 %i.f, 23
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.cg = icmp ult <4 x ptr> %i.be, %i.bi
  %i.ch = icmp ult <4 x ptr> %i.bm, %i.bo
  %.mask = and i64 %i.m, 1152921504606846976
  %stride.check301 = icmp ne i64 %.mask, 0
  %i.ci = and <4 x i1> %i.cg, %i.ch
  %bound0314 = icmp ult ptr %2, %scevgep296
  %bound1315 = icmp ult ptr %scevgep295, %scevgep
  %found.conflict316 = and i1 %bound0314, %bound1315
  %bound0319 = icmp ult ptr %scevgep287.a, %scevgep290.a
  %bound1320 = icmp ult ptr %scevgep289.a, %scevgep288.a
  %found.conflict321 = and i1 %bound0319, %bound1320
  %bound0325 = icmp ult ptr %scevgep287.a, %scevgep292.a
  %bound1326 = icmp ult ptr %scevgep291.a, %scevgep288.a
  %found.conflict327 = and i1 %bound0325, %bound1326
  %i.cj = icmp ult <4 x ptr> %i.ca, %i.ce
  %i.ck = icmp ult <4 x ptr> %i.bs, %i.bw
  %i.cl = and <4 x i1> %i.ck, %i.cj
  %bound0352 = icmp ult ptr %scevgep289.a, %scevgep296
  %bound1353 = icmp ult ptr %scevgep295, %scevgep290.a
  %found.conflict354 = and i1 %bound0352, %bound1353
  %bound0357 = icmp ult ptr %scevgep291.a, %scevgep294
  %bound1358 = icmp ult ptr %scevgep293.a, %scevgep292.a
  %found.conflict359 = and i1 %bound0357, %bound1358
  %bound0362 = icmp ult ptr %scevgep291.a, %scevgep296
  %bound1363 = icmp ult ptr %scevgep295, %scevgep292.a
  %found.conflict364 = and i1 %bound0362, %bound1363
  %rdx.op = or <4 x i1> %i.ci, %i.cl
  %i.cm = bitcast <4 x i1> %rdx.op to i4
  %i.cn = icmp ne i4 %i.cm, 0
  %op.rdx = or i1 %i.cn, %found.conflict316
  %op.rdx375.a = or i1 %found.conflict321, %found.conflict327
  %op.rdx376.a = or i1 %found.conflict354, %found.conflict359
  %op.rdx377.a = or i1 %found.conflict364, %stride.check301
  %op.rdx378 = or i1 %op.rdx, %op.rdx375.a
  %op.rdx379 = or i1 %op.rdx376.a, %op.rdx377.a
  %op.rdx380 = or i1 %op.rdx378, %op.rdx379
  %n.vec = and i64 %i.cf, 9223372036854775806     ; 4 uses
  %i.co = shl nuw i64 %n.vec, 1                   ; 2 uses
  %i.cp = or disjoint i64 %i.co, 1                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert367 = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat368 = shufflevector <2 x i64> %broadcast.splatinsert367, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert369 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat370 = shufflevector <2 x i64> %broadcast.splatinsert369, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br label %.preheader212

.preheader212:                                    ; preds = %.preheader212.lr.ph, %bb.c
  %.0248 = phi ptr [ %1, %.preheader212.lr.ph ], [ %i.np, %bb.c ] ; 18 uses
  %.0182247 = phi ptr [ %2, %.preheader212.lr.ph ], [ %i.nq, %bb.c ] ; 12 uses
  %.0184246 = phi i64 [ 0, %.preheader212.lr.ph ], [ %i.no, %bb.c ]
  br i1 %i.q, label %.lr.ph, label %.preheader211

.preheader211:                                    ; preds = %.lr.ph, %.preheader212
  %.0185.lcssa = phi i64 [ %i.g, %.preheader212 ], [ %i.cy, %.lr.ph ] ; 5 uses
  %.0183.lcssa = phi i64 [ 0, %.preheader212 ], [ %i.cx, %.lr.ph ] ; 4 uses
  %i.cq = icmp slt i64 %.0185.lcssa, %i.r
  br i1 %i.cq, label %.lr.ph220.preheader, label %.preheader210

.lr.ph220.preheader:                              ; preds = %.preheader211
  %3 = add i64 %.0183.lcssa, 1
  %4 = xor i64 %.0185.lcssa, -1
  %5 = add i64 %i.r, %4                           ; 2 uses
  %6 = lshr i64 %5, 2                             ; 2 uses
  %7 = add i64 %3, %6                             ; 3 uses
  %8 = add nuw nsw i64 %6, 1
  %xtraiter = and i64 %8, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol

.lr.ph220.prol:                                   ; preds = %.lr.ph220.preheader, %.lr.ph220.prol
  %.1219.prol = phi i64 [ %15, %.lr.ph220.prol ], [ %.0183.lcssa, %.lr.ph220.preheader ] ; 2 uses
  %.1186218.prol = phi i64 [ %16, %.lr.ph220.prol ], [ %.0185.lcssa, %.lr.ph220.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph220.prol ], [ 0, %.lr.ph220.preheader ]
  %9 = sub nsw i64 %.1186218.prol, %i.f
  %10 = mul nsw i64 %9, %i.b
  %11 = getelementptr inbounds [8 x i8], ptr %.0248, i64 %10
  %12 = load double, ptr %11, align 8, !tbaa !20
  %13 = fneg double %12
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219.prol
  store double %13, ptr %14, align 8, !tbaa !20
  %15 = add nuw nsw i64 %.1219.prol, 1            ; 2 uses
  %16 = add nsw i64 %.1186218.prol, 4             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol, !llvm.loop !73

.lr.ph220.prol.loopexit:                          ; preds = %.lr.ph220.prol, %.lr.ph220.preheader
  %.lcssa382.unr = phi i64 [ poison, %.lr.ph220.preheader ], [ %16, %.lr.ph220.prol ]
  %.1219.unr = phi i64 [ %.0183.lcssa, %.lr.ph220.preheader ], [ %15, %.lr.ph220.prol ]
  %.1186218.unr = phi i64 [ %.0185.lcssa, %.lr.ph220.preheader ], [ %16, %.lr.ph220.prol ]
  %17 = icmp ult i64 %5, 12
  br i1 %17, label %.preheader210, label %.lr.ph220

.lr.ph:                                           ; preds = %.preheader212, %.lr.ph
  %.0183216 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %.preheader212 ] ; 2 uses
  %.0185215 = phi i64 [ %i.cy, %.lr.ph ], [ %i.g, %.preheader212 ] ; 2 uses
  %i.cr = xor i64 %.0185215, -1
  %i.cs = add nsw i64 %i.f, %i.cr
  %i.ct = mul nsw i64 %i.cs, %i.b
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0183216
  store double %i.cv, ptr %i.cw, align 8, !tbaa !20
  %i.cx = add nuw nsw i64 %.0183216, 1            ; 2 uses
  %i.cy = add nuw nsw i64 %.0185215, 4            ; 3 uses
  %i.cz = icmp slt i64 %i.cy, %i.f
  br i1 %i.cz, label %.lr.ph, label %.preheader211, !llvm.loop !74

.preheader210:                                    ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220, %.preheader211
  %.1186.lcssa = phi i64 [ %.0185.lcssa, %.preheader211 ], [ %.lcssa382.unr, %.lr.ph220.prol.loopexit ], [ %i.dh, %.lr.ph220 ] ; 5 uses
  %.1.lcssa = phi i64 [ %.0183.lcssa, %.preheader211 ], [ %7, %.lr.ph220 ], [ %7, %.lr.ph220.prol.loopexit ] ; 4 uses
  %18 = icmp slt i64 %.1186.lcssa, %i.s
  br i1 %18, label %.lr.ph225.preheader, label %.preheader

.lr.ph225.preheader:                              ; preds = %.preheader210
  %19 = add i64 %.1.lcssa, 1
  %20 = xor i64 %.1186.lcssa, -1
  %21 = add i64 %i.s, %20                         ; 2 uses
  %22 = lshr i64 %21, 2                           ; 2 uses
  %23 = add i64 %19, %22                          ; 3 uses
  %24 = add nuw nsw i64 %22, 1
  %xtraiter387 = and i64 %24, 3                   ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.preheader210.a, label %.lr.ph225.prol

.lr.ph225.prol:                                   ; preds = %.lr.ph225.preheader, %.lr.ph225.prol
  %.2224.prol = phi i64 [ %32, %.lr.ph225.prol ], [ %.1.lcssa, %.lr.ph225.preheader ] ; 2 uses
  %.2187223.prol = phi i64 [ %33, %.lr.ph225.prol ], [ %.1186.lcssa, %.lr.ph225.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph225.prol ], [ 0, %.lr.ph225.preheader ]
  %25 = xor i64 %.2187223.prol, -1
  %26 = add i64 %i.s, %25
  %27 = mul nsw i64 %26, %i.b
  %28 = getelementptr inbounds [8 x i8], ptr %.0248, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !20
  %30 = fneg double %29
  %31 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224.prol
  store double %30, ptr %31, align 8, !tbaa !20
  %32 = add nuw i64 %.2224.prol, 1                ; 2 uses
  %33 = add nsw i64 %.2187223.prol, 4             ; 3 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.preheader210.a, label %.lr.ph225.prol, !llvm.loop !75

.preheader210.a:                                  ; preds = %.lr.ph225.prol, %.lr.ph225.preheader
  %.lcssa383.unr = phi i64 [ poison, %.lr.ph225.preheader ], [ %33, %.lr.ph225.prol ]
  %.1186.lcssa.a = phi i64 [ %.1.lcssa, %.lr.ph225.preheader ], [ %32, %.lr.ph225.prol ]
  %.1.lcssa.a = phi i64 [ %.1186.lcssa, %.lr.ph225.preheader ], [ %33, %.lr.ph225.prol ]
  %34 = icmp ult i64 %21, 12
  br i1 %34, label %.preheader, label %.lr.ph225

.lr.ph220:                                        ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220
  %.1219 = phi i64 [ %i.dg, %.lr.ph220 ], [ %.1219.unr, %.lr.ph220.prol.loopexit ] ; 5 uses
  %.1186218 = phi i64 [ %i.dh, %.lr.ph220 ], [ %.1186218.unr, %.lr.ph220.prol.loopexit ] ; 5 uses
  %i.da = sub nsw i64 %.1186218, %i.f
  %35 = mul nsw i64 %i.da, %i.b
  %36 = getelementptr inbounds [8 x i8], ptr %.0248, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !20
  %38 = fneg double %37
  %39 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  store double %38, ptr %39, align 8, !tbaa !20
  %.reass = add i64 %.1186218, %invariant.op
  %40 = mul nsw i64 %.reass, %i.b
  %41 = getelementptr inbounds [8 x i8], ptr %.0248, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !20
  %43 = fneg double %42
  %44 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store double %43, ptr %45, align 8, !tbaa !20
  %.reass411 = add i64 %.1186218, %invariant.op410
  %46 = mul nsw i64 %.reass411, %i.b
  %47 = getelementptr inbounds [8 x i8], ptr %.0248, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !20
  %49 = fneg double %48
  %50 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 16
  store double %49, ptr %51, align 8, !tbaa !20
  %.reass413 = add i64 %.1186218, %invariant.op412
  %i.db = mul nsw i64 %.reass413, %i.b
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !20
  %i.de = fneg double %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %52 = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store double %i.de, ptr %52, align 8, !tbaa !20
  %i.dg = add nuw nsw i64 %.1219, 4               ; 2 uses
  %i.dh = add nsw i64 %.1186218, 16               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dg, %7
  br i1 %exitcond.not.3, label %.preheader210, label %.lr.ph220, !llvm.loop !76

.preheader:                                       ; preds = %.preheader210.a, %.lr.ph225, %.preheader210
  %.2187.lcssa = phi i64 [ %.1186.lcssa, %.preheader210 ], [ %.lcssa383.unr, %.preheader210.a ], [ %i.dr, %.lr.ph225 ] ; 3 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader210 ], [ %23, %.lr.ph225 ], [ %23, %.preheader210.a ] ; 2 uses
  %i.di = icmp slt i64 %.2187.lcssa, %i.t
  br i1 %i.di, label %.lr.ph231, label %._crit_edge

.lr.ph225:                                        ; preds = %.preheader210.a, %.lr.ph225
  %.2224 = phi i64 [ %i.dq, %.lr.ph225 ], [ %.1186.lcssa.a, %.preheader210.a ] ; 5 uses
  %.2187223 = phi i64 [ %i.dr, %.lr.ph225 ], [ %.1.lcssa.a, %.preheader210.a ] ; 5 uses
  %i.dj = xor i64 %.2187223, -1
  %53 = add i64 %i.s, %i.dj
  %54 = mul nsw i64 %53, %i.b
  %55 = getelementptr inbounds [8 x i8], ptr %.0248, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !20
  %57 = fneg double %56
  %58 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  store double %57, ptr %58, align 8, !tbaa !20
  %reass.sub = sub i64 %i.s, %.2187223
  %59 = add i64 %reass.sub, -5
  %60 = mul nsw i64 %59, %i.b
  %61 = getelementptr inbounds [8 x i8], ptr %.0248, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !20
  %63 = fneg double %62
  %64 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 8
  store double %63, ptr %65, align 8, !tbaa !20
  %reass.sub393 = sub i64 %i.s, %.2187223
  %66 = add i64 %reass.sub393, -9
  %67 = mul nsw i64 %66, %i.b
  %68 = getelementptr inbounds [8 x i8], ptr %.0248, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !20
  %70 = fneg double %69
  %71 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 16
  store double %70, ptr %72, align 8, !tbaa !20
  %reass.sub394 = sub i64 %i.s, %.2187223
  %i.dk = add i64 %reass.sub394, -13
  %i.dl = mul nsw i64 %i.dk, %i.b
  %i.dm = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !20
  %i.do = fneg double %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  %73 = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store double %i.do, ptr %73, align 8, !tbaa !20
  %i.dq = add nuw i64 %.2224, 4                   ; 2 uses
  %i.dr = add nsw i64 %.2187223, 16               ; 2 uses
  %exitcond259.not.3 = icmp eq i64 %i.dq, %23
  br i1 %exitcond259.not.3, label %.preheader, label %.lr.ph225, !llvm.loop !77

.lr.ph231:                                        ; preds = %.preheader, %.lr.ph231
  %.3230 = phi i64 [ %i.dx, %.lr.ph231 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.3188229 = phi i64 [ %i.dy, %.lr.ph231 ], [ %.2187.lcssa, %.preheader ] ; 2 uses
  %i.ds = sub nsw i64 %.3188229, %i.s
  %i.dt = mul nsw i64 %i.ds, %i.b
  %i.du = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.3230
  store double %i.dv, ptr %i.dw, align 8, !tbaa !20
  %i.dx = add nuw nsw i64 %.3230, 1               ; 2 uses
  %i.dy = add nsw i64 %.3188229, 4                ; 3 uses
  %i.dz = icmp slt i64 %i.dy, %i.t
  br i1 %i.dz, label %.lr.ph231, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph231, %.preheader
  %.3188.lcssa = phi i64 [ %.2187.lcssa, %.preheader ], [ %i.dy, %.lr.ph231 ]
  %.3.lcssa = phi i64 [ %.2.lcssa, %.preheader ], [ %i.dx, %.lr.ph231 ] ; 5 uses
  %i.ea = icmp slt i64 %.3.lcssa, %i.f
  br i1 %i.ea, label %.lr.ph238.preheader, label %._crit_edge239

.lr.ph238.preheader:                              ; preds = %._crit_edge
  %i.eb = sub nsw i64 %.3188.lcssa, %i.t          ; 2 uses
  %i.ec = sub i64 %i.f, %.3.lcssa
  %xtraiter.a = and i64 %i.ec, 3                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph238.prol.loopexit, label %.lr.ph238.prol

.lr.ph238.prol:                                   ; preds = %.lr.ph238.preheader, %.lr.ph238.prol
  %.4236.prol = phi i64 [ %i.ej, %.lr.ph238.prol ], [ %.3.lcssa, %.lr.ph238.preheader ] ; 2 uses
  %.4189235.prol = phi i64 [ %i.ek, %.lr.ph238.prol ], [ %i.eb, %.lr.ph238.preheader ] ; 2 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.lr.ph238.prol ], [ 0, %.lr.ph238.preheader ]
  %i.ed = xor i64 %.4189235.prol, -1
  %i.ee = add i64 %i.f, %i.ed
  %i.ef = mul nsw i64 %i.ee, %i.b
  %i.eg = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4236.prol
  store double %i.eh, ptr %i.ei, align 8, !tbaa !20
  %i.ej = add nuw nsw i64 %.4236.prol, 1          ; 2 uses
  %i.ek = add nuw nsw i64 %.4189235.prol, 4       ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph238.prol.loopexit, label %.lr.ph238.prol, !llvm.loop !79

.lr.ph238.prol.loopexit:                          ; preds = %.lr.ph238.prol, %.lr.ph238.preheader
  %.4236.unr = phi i64 [ %.3.lcssa, %.lr.ph238.preheader ], [ %i.ej, %.lr.ph238.prol ]
  %.4189235.unr = phi i64 [ %i.eb, %.lr.ph238.preheader ], [ %i.ek, %.lr.ph238.prol ]
  %i.el = sub i64 %.3.lcssa, %i.f
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %._crit_edge239, label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.prol.loopexit, %.lr.ph238
  %.4236 = phi i64 [ %i.fl, %.lr.ph238 ], [ %.4236.unr, %.lr.ph238.prol.loopexit ] ; 5 uses
  %.4189235 = phi i64 [ %i.fm, %.lr.ph238 ], [ %.4189235.unr, %.lr.ph238.prol.loopexit ] ; 5 uses
  %i.en = xor i64 %.4189235, -1
  %i.eo = add i64 %i.f, %i.en
  %i.ep = mul nsw i64 %i.eo, %i.b
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !20
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4236
  store double %i.er, ptr %i.es, align 8, !tbaa !20
  %reass.sub.a = sub i64 %i.f, %.4189235
  %i.et = add i64 %reass.sub.a, -5
  %i.eu = mul nsw i64 %i.et, %i.b
  %i.ev = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4236
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store double %i.ew, ptr %i.ey, align 8, !tbaa !20
  %reass.sub392 = sub i64 %i.f, %.4189235
  %i.ez = add i64 %reass.sub392, -9
  %i.fa = mul nsw i64 %i.ez, %i.b
  %i.fb = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4236
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store double %i.fc, ptr %i.fe, align 8, !tbaa !20
  %reass.sub393.a = sub i64 %i.f, %.4189235
  %i.ff = add i64 %reass.sub393.a, -13
  %i.fg = mul nsw i64 %i.ff, %i.b
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.4236
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store double %i.fi, ptr %i.fk, align 8, !tbaa !20
  %i.fl = add nuw nsw i64 %.4236, 4               ; 2 uses
  %i.fm = add nuw nsw i64 %.4189235, 16
  %exitcond.not.3.a = icmp eq i64 %i.fl, %i.f
  br i1 %exitcond.not.3.a, label %._crit_edge239, label %.lr.ph238, !llvm.loop !80

._crit_edge239:                                   ; preds = %.lr.ph238.prol.loopexit, %.lr.ph238, %._crit_edge
  %i.fn = load ptr, ptr %i.u, align 8, !tbaa !18  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !28
  tail call void %i.fp(ptr noundef %i.fn, ptr noundef %i.o, ptr noundef %i.o) #4
  br i1 %i.v, label %.lr.ph242.preheader, label %._crit_edge243

.lr.ph242.preheader:                              ; preds = %._crit_edge239
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx380
  br i1 %brmerge, label %.lr.ph242.preheader382, label %vector.body

vector.body:                                      ; preds = %.lr.ph242.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph242.preheader ] ; 5 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %.lr.ph242.preheader ] ; 9 uses
  %i.fq = shl i64 %index, 1                       ; 4 uses
  %i.fr = or disjoint i64 %i.fq, 1                ; 2 uses
  %i.fs = or disjoint i64 %i.fq, 3
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.fr
  %wide.vec = load <4 x double>, ptr %i.ft, align 8, !tbaa !20, !alias.scope !91 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec371 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.fu = or disjoint i64 %i.fq, 2
  %i.fv = add nuw nsw i64 %i.fq, 4
  %i.fw = sub nsw i64 %i.f, %i.fu
  %i.fx = sub nsw i64 %i.f, %i.fv
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fw
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fx
  %i.ga = load double, ptr %i.fy, align 8, !tbaa !20, !alias.scope !92
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !20, !alias.scope !92
  %i.gc = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.gb, i64 1 ; 3 uses
  %i.ge = sub nsw i64 %i.f, %i.fr
  %i.gf = sub nsw i64 %i.f, %i.fs
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ge
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gf
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !20, !alias.scope !92
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !20, !alias.scope !92
  %i.gk = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gj, i64 1 ; 3 uses
  %i.gm = or disjoint i64 %index, 1               ; 4 uses
  %i.gn = add nuw nsw i64 %index, 2               ; 4 uses
  %i.go = insertelement <2 x i64> poison, i64 %i.gm, i64 0
  %i.gp = insertelement <2 x i64> %i.go, i64 %i.gn, i64 1
  %i.gq = lshr <2 x i64> %i.gp, splat (i64 1)
  %i.gr = add nuw nsw <2 x i64> %i.gq, %vec.ind
  %i.gs = and <2 x i64> %i.gr, splat (i64 1)
  %i.gt = icmp eq <2 x i64> %i.gs, zeroinitializer
  %i.gu = fneg <2 x double> %strided.vec          ; 2 uses
  %i.gv = select <2 x i1> %i.gt, <2 x double> %strided.vec, <2 x double> %i.gu
  %i.gw = lshr <2 x i64> %vec.ind, splat (i64 1)
  %i.gx = add nuw nsw <2 x i64> %i.gw, %vec.ind
  %i.gy = and <2 x i64> %i.gx, splat (i64 1)
  %i.gz = icmp eq <2 x i64> %i.gy, zeroinitializer
  %i.ha = fneg <2 x double> %i.gl                 ; 2 uses
  %i.hb = select <2 x i1> %i.gz, <2 x double> %i.gl, <2 x double> %i.ha
  %i.hc = fadd <2 x double> %i.gv, %i.hb
  %i.hd = fmul <2 x double> %i.hc, splat (double f0x3FF6A09E667F3BCD)
  %i.he = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %index
  store <2 x double> %i.hd, ptr %i.he, align 8, !tbaa !20, !alias.scope !93, !noalias !94
  %i.hf = sub nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.hg = sdiv <2 x i64> %i.hf, splat (i64 2)
  %i.hh = add nsw <2 x i64> %i.hg, %vec.ind
  %i.hi = and <2 x i64> %i.hh, splat (i64 1)
  %i.hj = icmp eq <2 x i64> %i.hi, zeroinitializer
  %i.hk = select <2 x i1> %i.hj, <2 x double> %strided.vec, <2 x double> %i.gu
  %i.hl = sub nsw i64 %i.f, %i.gm                 ; 2 uses
  %i.hm = sub nsw i64 %i.f, %i.gn
  %i.hn = insertelement <2 x i64> poison, i64 %i.hl, i64 0
  %i.ho = insertelement <2 x i64> %i.hn, i64 %i.hm, i64 1
  %i.hp = sdiv <2 x i64> %i.ho, splat (i64 2)
  %i.hq = add nsw <2 x i64> %i.hp, %vec.ind
  %i.hr = and <2 x i64> %i.hq, splat (i64 1)
  %i.hs = icmp eq <2 x i64> %i.hr, zeroinitializer
  %i.ht = select <2 x i1> %i.hs, <2 x double> %i.gl, <2 x double> %i.ha
  %i.hu = fsub <2 x double> %i.hk, %i.ht
  %i.hv = fmul <2 x double> %i.hu, splat (double f0x3FF6A09E667F3BCD)
  %i.hw = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.hl
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -8
  %reverse = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.hx, align 8, !tbaa !20, !alias.scope !95, !noalias !96
  %i.hy = sub nuw nsw i64 %i.g, %i.gm             ; 2 uses
  %i.hz = sub nuw nsw i64 %i.g, %i.gn
  %i.ia = insertelement <2 x i64> poison, i64 %i.hy, i64 0
  %i.ib = insertelement <2 x i64> %i.ia, i64 %i.hz, i64 1 ; 5 uses
  %i.ic = sub nuw nsw <2 x i64> %broadcast.splat368, %vec.ind
  %i.id = lshr <2 x i64> %i.ic, splat (i64 1)
  %i.ie = add nuw nsw <2 x i64> %i.id, %i.ib
  %i.if = and <2 x i64> %i.ie, splat (i64 1)
  %i.ig = icmp eq <2 x i64> %i.if, zeroinitializer
  %i.ih = fneg <2 x double> %strided.vec371       ; 2 uses
  %i.ii = select <2 x i1> %i.ig, <2 x double> %strided.vec371, <2 x double> %i.ih
  %i.ij = lshr <2 x i64> %i.ib, splat (i64 1)
  %i.ik = add nuw nsw <2 x i64> %i.ij, %i.ib
  %i.il = and <2 x i64> %i.ik, splat (i64 1)
  %i.im = icmp eq <2 x i64> %i.il, zeroinitializer
  %i.in = fneg <2 x double> %i.gd                 ; 2 uses
  %i.io = select <2 x i1> %i.im, <2 x double> %i.gd, <2 x double> %i.in
  %i.ip = fsub <2 x double> %i.ii, %i.io
  %i.iq = fmul <2 x double> %i.ip, splat (double f0x3FF6A09E667F3BCD)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.0182247, i64 %i.hy
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -8
  %reverse372 = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse372, ptr %i.is, align 8, !tbaa !20, !alias.scope !97, !noalias !98
  %i.it = add nuw <2 x i64> %broadcast.splat370, %vec.ind
  %i.iu = lshr <2 x i64> %i.it, splat (i64 1)
  %i.iv = add nuw <2 x i64> %i.iu, %i.ib
  %i.iw = and <2 x i64> %i.iv, splat (i64 1)
  %i.ix = icmp eq <2 x i64> %i.iw, zeroinitializer
  %i.iy = select <2 x i1> %i.ix, <2 x double> %strided.vec371, <2 x double> %i.ih
  %i.iz = add nuw nsw i64 %i.gm, %i.g             ; 2 uses
  %i.ja = add nuw nsw i64 %i.gn, %i.g
  %i.jb = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %i.jc = insertelement <2 x i64> %i.jb, i64 %i.ja, i64 1
  %i.jd = lshr <2 x i64> %i.jc, splat (i64 1)
  %i.je = add nuw nsw <2 x i64> %i.jd, %i.ib
  %i.jf = and <2 x i64> %i.je, splat (i64 1)
  %i.jg = icmp eq <2 x i64> %i.jf, zeroinitializer
  %i.jh = select <2 x i1> %i.jg, <2 x double> %i.gd, <2 x double> %i.in
  %i.ji = fadd <2 x double> %i.iy, %i.jh
  %i.jj = fmul <2 x double> %i.ji, splat (double f0x3FF6A09E667F3BCD)
  %i.jk = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.iz
  store <2 x double> %i.jj, ptr %i.jk, align 8, !tbaa !20, !alias.scope !99, !noalias !100
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge243, label %.lr.ph242.preheader382

.lr.ph242.preheader382:                           ; preds = %.lr.ph242.preheader, %middle.block
  %.ph = phi i64 [ %i.cp, %middle.block ], [ 1, %.lr.ph242.preheader ]
  %.ph383 = phi i64 [ %i.co, %middle.block ], [ 0, %.lr.ph242.preheader ]
  %.5240.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph242.preheader ]
  br label %.lr.ph242

.lr.ph242:                                        ; preds = %.lr.ph242.preheader382, %.lr.ph242
  %i.jm = phi i64 [ %i.mh, %.lr.ph242 ], [ %.ph, %.lr.ph242.preheader382 ] ; 2 uses
  %i.jn = phi i64 [ %i.mg, %.lr.ph242 ], [ %.ph383, %.lr.ph242.preheader382 ]
  %.5240 = phi i64 [ %i.jz, %.lr.ph242 ], [ %.5240.ph, %.lr.ph242.preheader382 ] ; 11 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jm
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !20 ; 3 uses
  %i.jq = add nuw nsw i64 %i.jn, 2                ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !20 ; 3 uses
  %i.jt = sub nsw i64 %i.f, %i.jq
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !20 ; 3 uses
  %i.jw = sub nsw i64 %i.f, %i.jm
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !20 ; 3 uses
  %i.jz = add nuw nsw i64 %.5240, 1               ; 6 uses
  %i.ka = lshr i64 %i.jz, 1
  %i.kb = add nuw nsw i64 %i.ka, %.5240
  %i.kc = and i64 %i.kb, 1
  %.not202 = icmp eq i64 %i.kc, 0
  %i.kd = fneg double %i.jp                       ; 2 uses
  %i.ke = select i1 %.not202, double %i.jp, double %i.kd
  %i.kf = lshr i64 %.5240, 1
  %i.kg = add nuw nsw i64 %i.kf, %.5240
  %i.kh = and i64 %i.kg, 1
  %.not203 = icmp eq i64 %i.kh, 0
  %i.ki = fneg double %i.jy                       ; 2 uses
  %i.kj = select i1 %.not203, double %i.jy, double %i.ki
  %i.kk = fadd double %i.ke, %i.kj
  %i.kl = fmul double %i.kk, f0x3FF6A09E667F3BCD
  %i.km = mul nsw i64 %.5240, %i.d
  %i.kn = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.km
  store double %i.kl, ptr %i.kn, align 8, !tbaa !20
  %i.ko = sub nsw i64 %i.f, %.5240
  %i.kp = sdiv i64 %i.ko, 2
  %i.kq = add nsw i64 %i.kp, %.5240
  %i.kr = and i64 %i.kq, 1
  %.not204 = icmp eq i64 %i.kr, 0
  %i.ks = select i1 %.not204, double %i.jp, double %i.kd
  %i.kt = sub nsw i64 %i.f, %i.jz                 ; 2 uses
  %i.ku = sdiv i64 %i.kt, 2
  %i.kv = add nsw i64 %i.ku, %.5240
  %i.kw = and i64 %i.kv, 1
  %.not205 = icmp eq i64 %i.kw, 0
  %i.kx = select i1 %.not205, double %i.jy, double %i.ki
  %i.ky = fsub double %i.ks, %i.kx
  %i.kz = fmul double %i.ky, f0x3FF6A09E667F3BCD
  %i.la = mul nsw i64 %i.kt, %i.d
  %i.lb = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.la
  store double %i.kz, ptr %i.lb, align 8, !tbaa !20
  %i.lc = sub nuw nsw i64 %i.g, %i.jz             ; 6 uses
  %i.ld = sub nuw nsw i64 %i.g, %.5240
  %i.le = lshr i64 %i.ld, 1
  %i.lf = add nuw nsw i64 %i.le, %i.lc
  %i.lg = and i64 %i.lf, 1
  %.not206 = icmp eq i64 %i.lg, 0
  %i.lh = fneg double %i.js                       ; 2 uses
  %i.li = select i1 %.not206, double %i.js, double %i.lh
  %i.lj = lshr i64 %i.lc, 1
  %i.lk = add nuw nsw i64 %i.lj, %i.lc
  %i.ll = and i64 %i.lk, 1
  %.not207 = icmp eq i64 %i.ll, 0
  %i.lm = fneg double %i.jv                       ; 2 uses
  %i.ln = select i1 %.not207, double %i.jv, double %i.lm
  %i.lo = fsub double %i.li, %i.ln
  %i.lp = fmul double %i.lo, f0x3FF6A09E667F3BCD
  %i.lq = mul nsw i64 %i.lc, %i.d
  %i.lr = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.lq
  store double %i.lp, ptr %i.lr, align 8, !tbaa !20
  %i.ls = add nuw i64 %i.w, %.5240
  %i.lt = lshr i64 %i.ls, 1
  %i.lu = add nuw i64 %i.lt, %i.lc
  %i.lv = and i64 %i.lu, 1
  %.not208 = icmp eq i64 %i.lv, 0
  %i.lw = select i1 %.not208, double %i.js, double %i.lh
  %i.lx = add nuw nsw i64 %i.jz, %i.g             ; 2 uses
  %i.ly = lshr i64 %i.lx, 1
  %i.lz = add nuw nsw i64 %i.ly, %i.lc
  %i.ma = and i64 %i.lz, 1
  %.not209 = icmp eq i64 %i.ma, 0
  %i.mb = select i1 %.not209, double %i.jv, double %i.lm
  %i.mc = fadd double %i.lw, %i.mb
  %i.md = fmul double %i.mc, f0x3FF6A09E667F3BCD
  %i.me = mul nsw i64 %i.lx, %i.d
  %i.mf = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.me
  store double %i.md, ptr %i.mf, align 8, !tbaa !20
  %i.mg = shl nuw nsw i64 %i.jz, 1                ; 2 uses
  %i.mh = or disjoint i64 %i.mg, 1                ; 2 uses
  %exitcond259.not = icmp eq i64 %.5240, %i.ag
  br i1 %exitcond259.not, label %._crit_edge243, label %.lr.ph242, !llvm.loop !89

._crit_edge243:                                   ; preds = %.lr.ph242, %middle.block, %._crit_edge239
  %.5.lcssa = phi i64 [ 0, %._crit_edge239 ], [ %i.ah, %middle.block ], [ %i.ah, %.lr.ph242 ] ; 6 uses
  %.lcssa214 = phi i64 [ 1, %._crit_edge239 ], [ %i.cp, %middle.block ], [ %i.mh, %.lr.ph242 ]
  %i.mi = icmp eq i64 %.lcssa214, %i.g
  br i1 %i.mi, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge243
  %i.mj = load double, ptr %i.x, align 8, !tbaa !20 ; 3 uses
  %i.mk = load double, ptr %i.z, align 8, !tbaa !20 ; 3 uses
  %i.ml = add nuw nsw i64 %.5.lcssa, 1            ; 2 uses
  %i.mm = lshr i64 %i.ml, 1
  %i.mn = add nuw nsw i64 %i.mm, %.5.lcssa
  %i.mo = and i64 %i.mn, 1
  %.not = icmp eq i64 %i.mo, 0                    ; 2 uses
  %i.mp = fneg double %i.mj                       ; 2 uses
  %i.mq = select i1 %.not, double %i.mj, double %i.mp
  %i.mr = lshr i64 %.5.lcssa, 1                   ; 2 uses
  %i.ms = add nuw nsw i64 %i.mr, %.5.lcssa
  %i.mt = and i64 %i.ms, 1
  %.not199 = icmp eq i64 %i.mt, 0
  %i.mu = fneg double %i.mk                       ; 2 uses
  %i.mv = select i1 %.not199, double %i.mk, double %i.mu
  %i.mw = fadd double %i.mq, %i.mv
  %i.mx = fmul double %i.mw, f0x3FF6A09E667F3BCD
  %i.my = mul nsw i64 %.5.lcssa, %i.d
  %i.mz = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.my
  store double %i.mx, ptr %i.mz, align 8, !tbaa !20
  %i.na = sub nsw i64 %i.mr, %.5.lcssa
  %i.nb = and i64 %i.na, 1
  %.not200.not = icmp eq i64 %i.nb, 0
  %i.nc = select i1 %.not200.not, double %i.mp, double %i.mj
  %i.nd = select i1 %.not, double %i.mk, double %i.mu
  %i.ne = fadd double %i.nc, %i.nd
  %i.nf = fmul double %i.ne, f0x3FF6A09E667F3BCD
  %i.ng = sub nsw i64 %i.f, %i.ml
  %i.nh = mul nsw i64 %i.ng, %i.d
  %i.ni = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.nh
  store double %i.nf, ptr %i.ni, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge243
  %i.nj = load double, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %i.nk = fneg double %i.nj
  %i.nl = select i1 %.not201, double %i.nj, double %i.nk
  %i.nm = fmul double %i.nl, f0x3FF6A09E667F3BCD
  %i.nn = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.ae
  store double %i.nm, ptr %i.nn, align 8, !tbaa !20
  %i.no = add nuw nsw i64 %.0184246, 1            ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.k
  %i.nq = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.m
  %exitcond260.not = icmp eq i64 %i.no, %i.i
  br i1 %exitcond260.not, label %._crit_edge249, label %.preheader212, !llvm.loop !90

._crit_edge249:                                   ; preds = %bb.c, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.o) #4
  ret void
}

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_zero(ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_rdft_kind_str(i32 noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!"plan_s", !9, i64 0, !12, i64 8, !11, i64 40, !6, i64 48, !6, i64 52}
!14 = !{!"", !13, i64 0, !9, i64 56}
!15 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!16 = !{!"", !14, i64 0, !15, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !6, i64 120}
!17 = !{!16, !10, i64 88}
!18 = !{!16, !15, i64 64}
!19 = !{!16, !6, i64 120}
!20 = !{!11, !11, i64 0}
!21 = !{!16, !10, i64 96}
!22 = !{!16, !10, i64 72}
!23 = !{!16, !10, i64 80}
!24 = !{!16, !10, i64 104}
!25 = !{!16, !10, i64 112}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!14, !9, i64 56}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"problem_s", !9, i64 0}
!32 = !{!"p1 double", !9, i64 0}
!33 = !{!"", !31, i64 0, !9, i64 8, !9, i64 16, !32, i64 24, !32, i64 32, !5, i64 40}
!34 = !{!33, !9, i64 8}
!35 = !{!"", !6, i64 0, !5, i64 8}
!36 = !{!35, !6, i64 0}
!37 = !{!33, !9, i64 16}
!38 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!39 = !{!38, !10, i64 0}
!40 = !{!6, !6, i64 0}
!41 = !{!10, !10, i64 0}
!42 = !{!12, !11, i64 24}
!43 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!44 = !{!43, !9, i64 0}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !53}
!58 = distinct !{!58, !53}
!59 = distinct !{!59, !53}
!60 = distinct !{!60, !27, !29, !30}
!61 = distinct !{!61, !27, !29}
!62 = distinct !{!62, !27}
!63 = !{!54}
!64 = !{!55}
!65 = !{!56}
!66 = !{!59, !58, !57, !55, !54}
!67 = !{!59}
!68 = !{!58, !57, !55, !54}
!69 = !{!58}
!70 = !{!57, !55, !54}
!71 = !{!57}
!72 = !{!55, !54}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !27}
!77 = distinct !{!77, !27}
!78 = distinct !{!78, !27}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !81}
!86 = distinct !{!86, !81}
!87 = distinct !{!87, !81}
!88 = distinct !{!88, !27, !29, !30}
!89 = distinct !{!89, !27, !29}
!90 = distinct !{!90, !27}
!91 = !{!82}
!92 = !{!83}
!93 = !{!84}
!94 = !{!87, !86, !85, !83, !82}
!95 = !{!87}
!96 = !{!86, !85, !83, !82}
!97 = !{!86}
!98 = !{!85, !83, !82}
!99 = !{!85}
!100 = !{!83, !82}
end_hunk_0
