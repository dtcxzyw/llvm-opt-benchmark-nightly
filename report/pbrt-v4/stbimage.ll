Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbi_loadf_from_memory:bb.a

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 8 uses
  %i.b = tail call fastcc noundef i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i32, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  %i.i = select i1 %.not.i, i32 %i.h, i32 %i.g
  %.not9.i = icmp eq i32 %i.i, 0
  br i1 %.not9.i, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq i32 %4, 0
  br i1 %.not10.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %3, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ %i.j, %bb.e ], [ %4, %bb.d ]
  %i.l = load i32, ptr %1, align 4, !tbaa !20
  %i.m = load i32, ptr %2, align 4, !tbaa !20     ; 4 uses
  %i.n = shl i32 %i.k, 2
  %i.o = sext i32 %i.l to i64
  %i.p = sext i32 %i.n to i64
  %i.q = mul nsw i64 %i.p, %i.o                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = ashr i32 %i.m, 1                         ; 4 uses
  %i.s = icmp slt i32 %i.r, 1
  %.not32.i.i = icmp eq i64 %i.q, 0
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.t = icmp eq i32 %i.r, 1
  br i1 %i.t, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i.1, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %._crit_edge.i.i.1 ]
  %i.u = mul i64 %indvars.iv.i.i, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  %i.w = trunc i64 %indvars.iv.i.i to i32
  %i.x = xor i32 %i.w, -1
  %i.y = add i32 %i.m, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.q, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ae, %bb.g ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.ad, %bb.g ] ; 3 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.ac, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.ac, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.ac
  %i.af = sub nuw i64 %.02935.i.i, %i.ac          ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.g
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ag = mul i64 %indvars.iv.next.i.i, %i.q
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = trunc i64 %indvars.iv.next.i.i to i32
  %i.aj = xor i32 %i.ai, -1
  %i.ak = add i32 %i.m, %i.aj
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.q, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.02935.i.i.1 = phi i64 [ %i.q, %._crit_edge.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.03034.i.i.1 = phi ptr [ %i.an, %._crit_edge.i.i ], [ %i.aq, %bb.h ] ; 3 uses
  %.03133.i.i.1 = phi ptr [ %i.ah, %._crit_edge.i.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.ao = tail call i64 @llvm.umin.i64(i64 %.02935.i.i.1, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i.1, i64 %i.ao, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i.1, ptr align 1 %.03034.i.i.1, i64 %i.ao, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i.1, ptr nonnull align 16 %i.a, i64 %i.ao, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.03133.i.i.1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.03034.i.i.1, i64 %i.ao
  %i.ar = sub nuw i64 %.02935.i.i.1, %i.ao        ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.1, label %._crit_edge.i.i.1, label %bb.h, !llvm.loop !1

._crit_edge.i.i.1:                                ; preds = %bb.h
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2

_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.as = mul i64 %indvars.iv.i.i.epil.init, %i.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.as
  %i.au = trunc i64 %indvars.iv.i.i.epil.init to i32
  %i.av = xor i32 %i.au, -1
  %i.aw = add i32 %i.m, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul i64 %i.q, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ay
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.epil.preheader
  %.02935.i.i.epil = phi i64 [ %i.q, %.lr.ph.i.i.epil.preheader ], [ %i.bd, %bb.i ] ; 2 uses
  %.03034.i.i.epil = phi ptr [ %i.az, %.lr.ph.i.i.epil.preheader ], [ %i.bc, %bb.i ] ; 3 uses
  %.03133.i.i.epil = phi ptr [ %i.at, %.lr.ph.i.i.epil.preheader ], [ %i.bb, %bb.i ] ; 3 uses
  %i.ba = tail call i64 @llvm.umin.i64(i64 %.02935.i.i.epil, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i.epil, i64 %i.ba, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i.epil, ptr align 1 %.03034.i.i.epil, i64 %i.ba, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i.epil, ptr nonnull align 16 %i.a, i64 %i.ba, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.03133.i.i.epil, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.03034.i.i.epil, i64 %i.ba
  %i.bd = sub nuw i64 %.02935.i.i.epil, %i.ba     ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.epil, label %_ZL19stbi__vertical_flipPviii.exit.i, label %bb.i, !llvm.loop !1

_ZL19stbi__vertical_flipPviii.exit.i:             ; preds = %_ZL19stbi__vertical_flipPviii.exit.i.loopexit.unr-lcssa, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.be = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 13 uses
  %.not28 = icmp eq ptr %i.be, null
  br i1 %.not28, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %1, align 4, !tbaa !20    ; 3 uses
  %i.bg = load i32, ptr %2, align 4, !tbaa !20    ; 4 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %3, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bi = phi i32 [ %i.bh, %bb.l ], [ %4, %bb.k ] ; 8 uses
  %i.bj = or i32 %i.bg, %i.bf
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.bj, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.n, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i32 %i.bg, 0
  br i1 %i.bk, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.n
  %i.bl = udiv i32 2147483647, %i.bg
  %.not37.i.i.i = icmp sgt i32 %i.bf, %i.bl
  br i1 %.not37.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.n
  %i.bm = mul nuw nsw i32 %i.bg, %i.bf            ; 7 uses
  %i.bn = or i32 %i.bi, %i.bm
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.bn, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.o, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.o:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.bo = icmp eq i32 %i.bi, 0
  br i1 %i.bo, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.o
  %i.bp = udiv i32 2147483647, %i.bi
  %.not.i.i.i = icmp sgt i32 %i.bm, %i.bp
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.o
  %i.bq = mul nuw nsw i32 %i.bi, %i.bm            ; 2 uses
  %or.cond.i = icmp ugt i32 %i.bq, 536870911
  br i1 %or.cond.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i
  %i.br = shl nuw nsw i32 %i.bq, 2
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.bs) #42 ; 12 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.p

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.m
  tail call void @free(ptr noundef nonnull %i.be) #40
  %i.bv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.bv, align 8, !tbaa !19
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.p:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.bw = and i32 %i.bi, 1
  %.not.i31 = icmp eq i32 %i.bw, 0                ; 2 uses
  %i.bx = sext i1 %.not.i31 to i32
  %.0.i = add i32 %i.bi, %i.bx                    ; 4 uses
  %i.by = icmp sgt i32 %i.bm, 0
  br i1 %i.by, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.p
  %i.bz = icmp sgt i32 %.0.i, 0
  %i.ca = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 5 uses
  %i.cb = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 5 uses
  br i1 %i.bz, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %5 = sext i32 %i.bi to i64
  %wide.trip.count58.i = zext nneg i32 %i.bm to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter52 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.cc = icmp ult i32 %.0.i, 4
  %unroll_iter55 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  %lcmp.mod54 = icmp ne i64 %xtraiter52, 0
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.cd = mul nuw nsw i64 %indvars.iv55.i, %5     ; 5 uses
  br i1 %i.cc, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 5 uses
  %niter56 = phi i64 [ %niter56.next.3, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.ce = add nsw i64 %indvars.iv.i, %i.cd        ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.be, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !32
  %i.ch = uitofp i8 %i.cg to float
  %i.ci = fdiv float %i.ch, 2.550000e+02
  %i.cj = tail call noundef float @powf(float noundef %i.ci, float noundef %i.ca) #40
  %i.ck = fmul float %i.cb, %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ce
  store float %i.ck, ptr %i.cl, align 4, !tbaa !52
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.cm = add nsw i64 %indvars.iv.next.i, %i.cd   ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.be, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !32
  %i.cp = uitofp i8 %i.co to float
  %i.cq = fdiv float %i.cp, 2.550000e+02
  %i.cr = tail call noundef float @powf(float noundef %i.cq, float noundef %i.ca) #40
  %i.cs = fmul float %i.cb, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cm
  store float %i.cs, ptr %i.ct, align 4, !tbaa !52
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.cu = add nsw i64 %indvars.iv.next.i.1, %i.cd ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.be, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !32
  %i.cx = uitofp i8 %i.cw to float
  %i.cy = fdiv float %i.cx, 2.550000e+02
  %i.cz = tail call noundef float @powf(float noundef %i.cy, float noundef %i.ca) #40
  %i.da = fmul float %i.cb, %i.cz
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cu
  store float %i.da, ptr %i.db, align 4, !tbaa !52
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.dc = add nsw i64 %indvars.iv.next.i.2, %i.cd ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.be, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !32
  %i.df = uitofp i8 %i.de to float
  %i.dg = fdiv float %i.df, 2.550000e+02
  %i.dh = tail call noundef float @powf(float noundef %i.dg, float noundef %i.ca) #40
  %i.di = fmul float %i.cb, %i.dh
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dc
  store float %i.di, ptr %i.dj, align 4, !tbaa !52
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter56.next.3 = add i64 %niter56, 4           ; 2 uses
  %niter56.ncmp.3 = icmp eq i64 %niter56.next.3, %unroll_iter55
  br i1 %niter56.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !144

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod53.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.dk = add nsw i64 %indvars.iv.i.epil, %i.cd   ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.be, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !32
  %i.dn = uitofp i8 %i.dm to float
  %i.do = fdiv float %i.dn, 2.550000e+02
  %i.dp = tail call noundef float @powf(float noundef %i.do, float noundef %i.ca) #40
  %i.dq = fmul float %i.cb, %i.dp
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dk
  store float %i.dq, ptr %i.dr, align 4, !tbaa !52
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter52
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.q, !llvm.loop !145

._crit_edge.i:                                    ; preds = %bb.q, %._crit_edge.i.unr-lcssa
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !146

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i31, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %._crit_edge51.split.i
  %6 = sext i32 %i.bi to i64                      ; 5 uses
  %i.ds = sext i32 %.0.i to i64                   ; 5 uses
  %wide.trip.count63.i = zext nneg i32 %i.bm to i64 ; 2 uses
  %xtraiter57 = and i64 %wide.trip.count63.i, 3   ; 3 uses
  %i.dt = icmp ult i32 %i.bm, 4
  br i1 %i.dt, label %.lr.ph.i.epil.preheader, label %iter.check.new

iter.check.new:                                   ; preds = %iter.check
  %unroll_iter61 = and i64 %wide.trip.count63.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %iter.check.new
  %indvars.iv60.i = phi i64 [ 0, %iter.check.new ], [ %indvars.iv.next61.i.3, %.lr.ph.i ] ; 5 uses
  %niter62 = phi i64 [ 0, %iter.check.new ], [ %niter62.next.3, %.lr.ph.i ]
  %i.du = mul nuw nsw i64 %indvars.iv60.i, %6
  %i.dv = add nsw i64 %i.du, %i.ds                ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.be, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !32
  %i.dy = uitofp i8 %i.dx to float
  %i.dz = fdiv float %i.dy, 2.550000e+02
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dv
  store float %i.dz, ptr %i.ea, align 4, !tbaa !52
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.eb = mul nuw nsw i64 %indvars.iv.next61.i, %6
  %i.ec = add nsw i64 %i.eb, %i.ds                ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.be, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !32
  %i.ef = uitofp i8 %i.ee to float
  %i.eg = fdiv float %i.ef, 2.550000e+02
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ec
  store float %i.eg, ptr %i.eh, align 4, !tbaa !52
  %indvars.iv.next61.i.1 = or disjoint i64 %indvars.iv60.i, 2
  %i.ei = mul nuw nsw i64 %indvars.iv.next61.i.1, %6
  %i.ej = add nsw i64 %i.ei, %i.ds                ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.be, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !32
  %i.em = uitofp i8 %i.el to float
  %i.en = fdiv float %i.em, 2.550000e+02
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ej
  store float %i.en, ptr %i.eo, align 4, !tbaa !52
  %indvars.iv.next61.i.2 = or disjoint i64 %indvars.iv60.i, 3
  %i.ep = mul nuw nsw i64 %indvars.iv.next61.i.2, %6
  %i.eq = add nsw i64 %i.ep, %i.ds                ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.be, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !32
  %i.et = uitofp i8 %i.es to float
  %i.eu = fdiv float %i.et, 2.550000e+02
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.eq
  store float %i.eu, ptr %i.ev, align 4, !tbaa !52
  %indvars.iv.next61.i.3 = add nuw nsw i64 %indvars.iv60.i, 4 ; 2 uses
  %niter62.next.3 = add i64 %niter62, 4           ; 2 uses
  %niter62.ncmp.3 = icmp eq i64 %niter62.next.3, %unroll_iter61
  br i1 %niter62.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !147

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %iter.check
  %indvars.iv60.i.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next61.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv60.i.epil = phi i64 [ %indvars.iv60.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next61.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter58 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter58.next, %.lr.ph.i.epil ]
  %i.ew = mul nuw nsw i64 %indvars.iv60.i.epil, %6
  %i.ex = add nsw i64 %i.ew, %i.ds                ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.be, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !32
  %i.fa = uitofp i8 %i.ez to float
  %i.fb = fdiv float %i.fa, 2.550000e+02
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ex
  store float %i.fb, ptr %i.fc, align 4, !tbaa !52
  %indvars.iv.next61.i.epil = add nuw nsw i64 %indvars.iv60.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !148

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %._crit_edge51.split.i, %bb.p
  tail call void @free(ptr noundef nonnull %i.be) #40
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.r:                                             ; preds = %bb.j
  %i.fd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.5, ptr %i.fd, align 8, !tbaa !19
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

_ZL23stbi__float_postprocessPfPiS0_S0_i.exit:     ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.b, %bb.c, %_ZL19stbi__vertical_flipPviii.exit.i, %bb.r
  %.0 = phi ptr [ null, %bb.r ], [ null, %bb.b ], [ %i.c, %_ZL19stbi__vertical_flipPviii.exit.i ], [ %i.c, %bb.c ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.bt, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !22
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !3 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !28
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !28
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !32
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !34
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !30
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !149 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !28
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !28
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !32
  br label %stbi_loadf_from_file.exit

end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !241
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 76 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 29 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !30
  %i.m = load i8, ptr %i.h, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !27
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZL14stbi__bmp_testP13stbi__context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26
  %i.w = tail call noundef i32 %i.q(ptr noundef %i.s, ptr noundef nonnull %i.t, i32 noundef %i.v), !inline_history !157 ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !28
  %i.ag = add nsw i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !28
  %i.ah = icmp eq i32 %i.w, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.n, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.t, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aj = sext i32 %i.w to i64
  %i.ak = getelementptr inbounds i8, ptr %i.t, i64 %i.aj
  %.pre.i.i.i = load i8, ptr %i.t, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.al = phi i8 [ 0, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %.sink.i.i.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.ak, %bb.f ] ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.i, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.am, ptr %i.g, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

_ZL10stbi__get8P13stbi__context.exit.i.i:         ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i, %bb.b
  %i.an = phi ptr [ %i.j, %bb.b ], [ %.sink.i.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ]
  %i.ao = phi ptr [ %i.l, %bb.b ], [ %i.am, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 3 uses
  %.0.i.i.i = phi i8 [ %i.m, %bb.b ], [ %i.al, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ]
  %.not.i.i = icmp eq i8 %.0.i.i.i, 66
  br i1 %.not.i.i, label %bb.g, label %_ZL14stbi__bmp_testP13stbi__context.exit.thread

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.i
  %i.ap = icmp ult ptr %i.ao, %i.an
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !30
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit25.i.i

bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !27
  %.not.i20.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i20.i.i, label %_ZL14stbi__bmp_testP13stbi__context.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26
  %i.bb = tail call noundef i32 %i.av(ptr noundef %i.ax, ptr noundef nonnull %i.ay, i32 noundef %i.ba), !inline_history !157 ; 2 uses
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !28
  %i.bl = add nsw i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !28
  %i.bm = icmp eq i32 %i.bb, 0
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.as, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.ay, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i22.i.i

bb.l:                                             ; preds = %bb.j
  %i.bo = sext i32 %i.bb to i64
  %i.bp = getelementptr inbounds i8, ptr %i.ay, i64 %i.bo
  %.pre.i21.i.i = load i8, ptr %i.ay, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i22.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i22.i.i: ; preds = %bb.l, %bb.k
  %i.bq = phi i8 [ 0, %bb.k ], [ %.pre.i21.i.i, %bb.l ]
  %.sink.i.i23.i.i = phi ptr [ %i.bn, %bb.k ], [ %i.bp, %bb.l ]
  store ptr %.sink.i.i23.i.i, ptr %i.i, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.br, ptr %i.g, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit25.i.i

_ZL10stbi__get8P13stbi__context.exit25.i.i:       ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i22.i.i, %bb.h
  %.0.i24.i.i = phi i8 [ %i.ar, %bb.h ], [ %i.bq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i22.i.i ]
  %.not19.i.i = icmp eq i8 %.0.i24.i.i, 77
  br i1 %.not19.i.i, label %bb.m, label %_ZL14stbi__bmp_testP13stbi__context.exit.thread

bb.m:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit25.i.i
  %i.bs = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bt = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bv = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bw = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bx = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.by = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.bz = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.ca = shl nuw i32 %i.bz, 16
  %i.cb = or disjoint i32 %i.ca, %i.by            ; 2 uses
  %i.cc = add i32 %i.cb, -12                      ; 2 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 30)
  switch i32 %i.cd, label %_ZL14stbi__bmp_testP13stbi__context.exit [
    i32 24, label %_ZL14stbi__bmp_testP13stbi__context.exit.thread101
    i32 11, label %_ZL14stbi__bmp_testP13stbi__context.exit.thread101
    i32 7, label %_ZL14stbi__bmp_testP13stbi__context.exit.thread101
    i32 0, label %_ZL14stbi__bmp_testP13stbi__context.exit.thread101
  ]

_ZL14stbi__bmp_testP13stbi__context.exit.thread:  ; preds = %_ZL10stbi__get8P13stbi__context.exit25.i.i, %_ZL10stbi__get8P13stbi__context.exit.i.i, %bb.c, %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cf = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !19
  store <2 x ptr> %i.cf, ptr %i.g, align 8, !tbaa !19
  br label %bb.es

_ZL14stbi__bmp_testP13stbi__context.exit.thread101: ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ch = load <2 x ptr>, ptr %i.cg, align 8, !tbaa !19
  store <2 x ptr> %i.ch, ptr %i.g, align 8, !tbaa !19
  br label %bb.n

_ZL14stbi__bmp_testP13stbi__context.exit:         ; preds = %bb.m
  %.not = icmp eq i32 %i.cb, 124
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.cj = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !19
  store <2 x ptr> %i.cj, ptr %i.g, align 8, !tbaa !19
  br i1 %.not, label %bb.n, label %bb.es

bb.n:                                             ; preds = %_ZL14stbi__bmp_testP13stbi__context.exit.thread101, %_ZL14stbi__bmp_testP13stbi__context.exit
  %i.ck = phi ptr [ %i.cg, %_ZL14stbi__bmp_testP13stbi__context.exit.thread101 ], [ %i.ci, %_ZL14stbi__bmp_testP13stbi__context.exit ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  store i32 255, ptr %i.cl, align 4, !tbaa !60
  %i.cm = call fastcc noundef ptr @_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data(ptr noundef nonnull %0, ptr noundef %9)
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !57 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  %i.cr = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 true) ; 5 uses
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !57
  %i.cs = icmp samesign ugt i32 %i.cr, 16777216
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.ct, align 8, !tbaa !19
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.q:                                             ; preds = %bb.o
  %i.cu = load i32, ptr %0, align 8, !tbaa !56    ; 5 uses
  %i.cv = icmp ugt i32 %i.cu, 16777216
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.cw, align 8, !tbaa !19
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.s:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !63 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !64 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !65 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !66 ; 7 uses
  %i.df = load i32, ptr %i.cl, align 4, !tbaa !60 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !67 ; 4 uses
  %i.di = icmp eq i32 %i.dh, 12                   ; 3 uses
  %i.dj = load i32, ptr %9, align 4, !tbaa !61    ; 4 uses
  br i1 %i.di, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dk = icmp slt i32 %i.dj, 24
  br i1 %i.dk, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !68 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !69
  %i.dp = add i32 %i.dm, -24
  %i.dq = sub i32 %i.dp, %i.do
  %i.dr = sdiv i32 %i.dq, 3
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.ds = icmp slt i32 %i.dj, 16
  br i1 %i.ds, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !68 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !69
  %i.dx = add i32 %i.dh, %i.dw
  %i.dy = sub i32 %i.du, %i.dx
  %i.dz = ashr i32 %i.dy, 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ea = phi i32 [ %i.dm, %bb.u ], [ %i.du, %bb.w ]
  %.0321.i = phi i32 [ %i.dr, %bb.u ], [ %i.dz, %bb.w ] ; 2 uses
  %i.eb = icmp eq i32 %.0321.i, 0
  br i1 %i.eb, label %.thread.i, label %.thread247.i

.thread247.i:                                     ; preds = %bb.x
  %i.ec = icmp eq i32 %i.de, -16777216
  br label %bb.aa

.thread.i:                                        ; preds = %bb.x, %bb.v, %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !68 ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !28
  %i.ei = sext i32 %i.eh to i64
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ek = load ptr, ptr %i.ck, align 8, !tbaa !29
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = add i64 %i.el, %i.ei
  %i.eo = sub i64 %i.en, %i.em
  %.not.i = icmp eq i64 %i.eo, %i.ef
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread.i
  %i.ep = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.ep, align 8, !tbaa !19
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.z:                                             ; preds = %.thread.i
  %i.eq = icmp eq i32 %i.dj, 24
  %i.er = icmp eq i32 %i.de, -16777216            ; 2 uses
  %or.cond.i = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread247.i
  %i.es = phi i1 [ %i.ec, %.thread247.i ], [ %i.er, %bb.z ]
  %.03212251.i = phi i32 [ %.0321.i, %.thread247.i ], [ 0, %bb.z ]
  %i.et = phi i1 [ false, %.thread247.i ], [ true, %bb.z ]
  %i.eu = phi i32 [ %i.ea, %.thread247.i ], [ %i.ee, %bb.z ]
  %.not351.i = icmp eq i32 %i.de, 0
  %i.ev = select i1 %.not351.i, i32 3, i32 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ew = phi i1 [ %i.es, %bb.aa ], [ true, %bb.z ]
  %.03212250.i = phi i32 [ %.03212251.i, %bb.aa ], [ 0, %bb.z ] ; 4 uses
  %i.ex = phi i1 [ %i.et, %bb.aa ], [ true, %bb.z ]
  %i.ey = phi i32 [ %i.dj, %bb.aa ], [ 24, %bb.z ] ; 6 uses
  %i.ez = phi i32 [ %i.eu, %bb.aa ], [ %i.ee, %bb.z ] ; 3 uses
  %i.fa = phi i32 [ %i.ev, %bb.aa ], [ 3, %bb.z ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !58
  %.not352.i = icmp eq i32 %4, 0
  %i.fc = icmp sgt i32 %4, 2
  %spec.select.i = select i1 %i.fc, i32 %4, i32 %i.fa ; 11 uses
  %i.fd = icmp eq i32 %i.cu, 0                    ; 2 uses
  br i1 %i.fd, label %bb.ac, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.ab
  %i.fe = udiv i32 2147483647, %i.cu
  %.not23.i.i = icmp samesign ugt i32 %spec.select.i, %i.fe
  br i1 %.not23.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.ab
  %10 = mul nuw nsw i32 %spec.select.i, %i.cu     ; 3 uses
  %i.ff = icmp eq i32 %i.cp, 0                    ; 2 uses
  br i1 %i.ff, label %_ZL21stbi__mad3sizes_validiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.ac
  %i.fg = udiv i32 2147483647, %i.cr
  %.not.i.i68 = icmp samesign ugt i32 %10, %i.fg
  br i1 %.not.i.i68, label %bb.ad, label %_ZL21stbi__mad3sizes_validiiii.exit.i

bb.ad:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i
  %i.fh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.fh, align 8, !tbaa !19
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

_ZL21stbi__mad3sizes_validiiii.exit.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %bb.ac
  br i1 %i.fd, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %_ZL21stbi__mad3sizes_validiiii.exit.i
  %i.fi = udiv i32 2147483647, %i.cu
  %.not23.i.i.i = icmp samesign ugt i32 %spec.select.i, %i.fi
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %_ZL21stbi__mad3sizes_validiiii.exit.i
  br i1 %i.ff, label %_ZL17stbi__malloc_mad3iiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.fj = udiv i32 2147483647, %i.cr
  %.not.i.i.i69 = icmp samesign ugt i32 %10, %i.fj
  br i1 %.not.i.i.i69, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.fk = mul nuw nsw i32 %10, %i.cr
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.fl) #42 ; 30 uses
  %.not354.i = icmp eq ptr %i.fm, null
  br i1 %.not354.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %bb.ae

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i
  %i.fn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.fn, align 8, !tbaa !19
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ae:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.fo = icmp slt i32 %i.ey, 16
  br i1 %i.fo, label %bb.af, label %bb.ct

bb.af:                                            ; preds = %bb.ae
  %i.fp = icmp sgt i32 %.03212250.i, 256
  %or.cond6.i = or i1 %i.ex, %i.fp
  br i1 %or.cond6.i, label %bb.ag, label %.preheader45.i

.preheader45.i:                                   ; preds = %bb.af
  %i.fq = icmp sgt i32 %.03212250.i, 0
  br i1 %i.fq, label %.lr.ph79.i, label %._crit_edge.i

.lr.ph79.i:                                       ; preds = %.preheader45.i
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 15 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 8 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 14 uses
  %wide.trip.count.i = zext nneg i32 %.03212250.i to i64
  %.pre128.i = load ptr, ptr %i.g, align 8, !tbaa !30 ; 2 uses
  %.pre129.i = load ptr, ptr %i.i, align 8, !tbaa !33 ; 2 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.fm) #40
  %i.fy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.fy, align 8, !tbaa !19
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ah:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit384.i, %.lr.ph79.i
  %i.fz = phi ptr [ %.pre129.i, %.lr.ph79.i ], [ %i.js, %_ZL10stbi__get8P13stbi__context.exit384.i ] ; 2 uses
  %i.ga = phi ptr [ %.pre128.i, %.lr.ph79.i ], [ %i.jt, %_ZL10stbi__get8P13stbi__context.exit384.i ]
  %i.gb = phi ptr [ %.pre129.i, %.lr.ph79.i ], [ %i.ju, %_ZL10stbi__get8P13stbi__context.exit384.i ] ; 3 uses
  %i.gc = phi ptr [ %.pre128.i, %.lr.ph79.i ], [ %i.jv, %_ZL10stbi__get8P13stbi__context.exit384.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph79.i ], [ %indvars.iv.next.i, %_ZL10stbi__get8P13stbi__context.exit384.i ] ; 2 uses
  %i.gd = icmp ult ptr %i.gc, %i.gb
  br i1 %i.gd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 3 uses
  store ptr %i.ge, ptr %i.g, align 8, !tbaa !30
  %i.gf = load i8, ptr %i.gc, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gg = load i32, ptr %i.fr, align 8, !tbaa !27
  %.not.i365.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i365.i, label %_ZL10stbi__get8P13stbi__context.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = load ptr, ptr %i.fs, align 8, !tbaa !31
  %i.gi = load ptr, ptr %i.ft, align 8, !tbaa !25
  %i.gj = load i32, ptr %i.fv, align 4, !tbaa !26
  %i.gk = tail call noundef i32 %i.gh(ptr noundef %i.gi, ptr noundef nonnull %i.fu, i32 noundef %i.gj), !inline_history !158 ; 2 uses
  %i.gl = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.gm = load ptr, ptr %i.ck, align 8, !tbaa !29
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = load i32, ptr %i.fw, align 8, !tbaa !28
  %i.gs = add nsw i32 %i.gr, %i.gq
  store i32 %i.gs, ptr %i.fw, align 8, !tbaa !28
  %i.gt = icmp eq i32 %i.gk, 0
  br i1 %i.gt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.fr, align 8, !tbaa !27
  store i8 0, ptr %i.fu, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.gu = sext i32 %i.gk to i64
  %i.gv = getelementptr inbounds i8, ptr %i.fu, i64 %i.gu
  %.pre.i.i = load i8, ptr %i.fu, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.am, %bb.al
  %i.gw = phi i8 [ 0, %bb.al ], [ %.pre.i.i, %bb.am ]
  %.sink.i.i.i = phi ptr [ %i.fx, %bb.al ], [ %i.gv, %bb.am ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.i, align 8, !tbaa !33
  store ptr %i.fx, ptr %i.g, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.aj, %bb.ai
  %i.gx = phi ptr [ %i.fz, %bb.ai ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.fz, %bb.aj ] ; 2 uses
  %i.gy = phi ptr [ %i.ge, %bb.ai ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.ga, %bb.aj ]
  %i.gz = phi ptr [ %i.gb, %bb.ai ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.gb, %bb.aj ] ; 3 uses
  %i.ha = phi ptr [ %i.ge, %bb.ai ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.gc, %bb.aj ] ; 4 uses
  %.0.i366.i = phi i8 [ %i.gf, %bb.ai ], [ %i.gw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ 0, %bb.aj ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  store i8 %.0.i366.i, ptr %i.hc, align 2, !tbaa !32
  %i.hd = icmp ult ptr %i.ha, %i.gz
  br i1 %i.hd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 1 ; 3 uses
  store ptr %i.he, ptr %i.g, align 8, !tbaa !30
  %i.hf = load i8, ptr %i.ha, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit372.i

bb.ao:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.hg = load i32, ptr %i.fr, align 8, !tbaa !27
  %.not.i367.i = icmp eq i32 %i.hg, 0
  br i1 %.not.i367.i, label %_ZL10stbi__get8P13stbi__context.exit372.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hh = load ptr, ptr %i.fs, align 8, !tbaa !31
  %i.hi = load ptr, ptr %i.ft, align 8, !tbaa !25
  %i.hj = load i32, ptr %i.fv, align 4, !tbaa !26
  %i.hk = tail call noundef i32 %i.hh(ptr noundef %i.hi, ptr noundef nonnull %i.fu, i32 noundef %i.hj), !inline_history !158 ; 2 uses
  %i.hl = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.hm = load ptr, ptr %i.ck, align 8, !tbaa !29
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = load i32, ptr %i.fw, align 8, !tbaa !28
  %i.hs = add nsw i32 %i.hr, %i.hq
  store i32 %i.hs, ptr %i.fw, align 8, !tbaa !28
  %i.ht = icmp eq i32 %i.hk, 0
  br i1 %i.ht, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.fr, align 8, !tbaa !27
  store i8 0, ptr %i.fu, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i

bb.ar:                                            ; preds = %bb.ap
  %i.hu = sext i32 %i.hk to i64
  %i.hv = getelementptr inbounds i8, ptr %i.fu, i64 %i.hu
  %.pre.i368.i = load i8, ptr %i.fu, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i: ; preds = %bb.ar, %bb.aq
  %i.hw = phi i8 [ 0, %bb.aq ], [ %.pre.i368.i, %bb.ar ]
  %.sink.i.i370.i = phi ptr [ %i.fx, %bb.aq ], [ %i.hv, %bb.ar ] ; 3 uses
  store ptr %.sink.i.i370.i, ptr %i.i, align 8, !tbaa !33
  store ptr %i.fx, ptr %i.g, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit372.i

_ZL10stbi__get8P13stbi__context.exit372.i:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i, %bb.ao, %bb.an
  %i.hx = phi ptr [ %i.gx, %bb.an ], [ %.sink.i.i370.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i ], [ %i.gx, %bb.ao ] ; 2 uses
  %i.hy = phi ptr [ %i.he, %bb.an ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i ], [ %i.gy, %bb.ao ]
  %i.hz = phi ptr [ %i.gz, %bb.an ], [ %.sink.i.i370.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i ], [ %i.gz, %bb.ao ] ; 3 uses
  %i.ia = phi ptr [ %i.he, %bb.an ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i ], [ %i.ha, %bb.ao ] ; 4 uses
  %.0.i371.i = phi i8 [ %i.hf, %bb.an ], [ %i.hw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i369.i ], [ 0, %bb.ao ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  store i8 %.0.i371.i, ptr %i.ib, align 1, !tbaa !32
  %i.ic = icmp ult ptr %i.ia, %i.hz
  br i1 %i.ic, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit372.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 1 ; 3 uses
  store ptr %i.id, ptr %i.g, align 8, !tbaa !30
  %i.ie = load i8, ptr %i.ia, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit378.i

bb.at:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit372.i
  %i.if = load i32, ptr %i.fr, align 8, !tbaa !27
  %.not.i373.i = icmp eq i32 %i.if, 0
  br i1 %.not.i373.i, label %_ZL10stbi__get8P13stbi__context.exit378.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ig = load ptr, ptr %i.fs, align 8, !tbaa !31
  %i.ih = load ptr, ptr %i.ft, align 8, !tbaa !25
  %i.ii = load i32, ptr %i.fv, align 4, !tbaa !26
  %i.ij = tail call noundef i32 %i.ig(ptr noundef %i.ih, ptr noundef nonnull %i.fu, i32 noundef %i.ii), !inline_history !158 ; 2 uses
  %i.ik = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.il = load ptr, ptr %i.ck, align 8, !tbaa !29
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = trunc i64 %i.io to i32
  %i.iq = load i32, ptr %i.fw, align 8, !tbaa !28
  %i.ir = add nsw i32 %i.iq, %i.ip
  store i32 %i.ir, ptr %i.fw, align 8, !tbaa !28
  %i.is = icmp eq i32 %i.ij, 0
  br i1 %i.is, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.fr, align 8, !tbaa !27
  store i8 0, ptr %i.fu, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i375.i

bb.aw:                                            ; preds = %bb.au
end_hunk_1
begin_hunk_2_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a

bb.nz:                                            ; preds = %bb.ny
  call void @free(ptr noundef nonnull %i.cgb) #40
  store ptr null, ptr %i.cga, align 8, !tbaa !94
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfw, i64 80
  store ptr null, ptr %i.cgc, align 8, !tbaa !91
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %bb.ny
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cfw, i64 72 ; 2 uses
  %i.cge = load ptr, ptr %i.cgd, align 8, !tbaa !95 ; 2 uses
  %.not29.i.i304.i.i = icmp eq ptr %i.cge, null
  br i1 %.not29.i.i304.i.i, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  call void @free(ptr noundef nonnull %i.cge) #40
  store ptr null, ptr %i.cgd, align 8, !tbaa !95
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %indvars.iv.next.i.i305.i.i = add nuw nsw i64 %indvars.iv.i.i301.i.i, 1 ; 2 uses
  %exitcond.not.i.i306.i.i = icmp eq i64 %indvars.iv.next.i.i305.i.i, %wide.trip.count.i.i300.i.i
  br i1 %exitcond.not.i.i306.i.i, label %_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit.i, label %bb.nw, !llvm.loop !5

bb.od:                                            ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.cgf = load i32, ptr %.pre.i242.i, align 8, !tbaa !56 ; 6 uses
  %i.cgg = add i32 %i.cgf, 3
  %i.cgh = zext i32 %i.cgg to i64
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.asz, i64 18056
  %i.cgj = add i32 %i.cgf, -1
  %wide.trip.count.i.i = zext nneg i32 %..i.i to i64 ; 2 uses
  br label %bb.oe

bb.oe:                                            ; preds = %.thread341.i.i, %bb.od
  %indvars.iv.i.i = phi i64 [ 0, %bb.od ], [ %indvars.iv.next.i.i, %.thread341.i.i ] ; 3 uses
  %i.cgk = getelementptr inbounds nuw [48 x i8], ptr %7, i64 %indvars.iv.i.i ; 6 uses
  %i.cgl = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.cgh) #42 ; 2 uses
  %i.cgm = getelementptr inbounds nuw [96 x i8], ptr %i.atg, i64 %indvars.iv.i.i ; 3 uses
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgm, i64 72
  store ptr %i.cgl, ptr %i.cgn, align 8, !tbaa !95
  %.not292.not.i.i = icmp eq ptr %i.cgl, null
  br i1 %.not292.not.i.i, label %bb.of, label %bb.on

bb.of:                                            ; preds = %bb.oe
  %i.cgo = icmp sgt i32 %i.cfr, 0
  br i1 %i.cgo, label %.lr.ph.i.i308.i.i, label %.thread342.i.i

.thread342.i.i:                                   ; preds = %bb.of
  %i.cgp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.cgp, align 8, !tbaa !19
  br label %bb.qd

.lr.ph.i.i308.i.i:                                ; preds = %bb.of
  %wide.trip.count.i.i309.i.i = zext nneg i32 %i.cfr to i64
  br label %bb.og

bb.og:                                            ; preds = %bb.om, %.lr.ph.i.i308.i.i
  %indvars.iv.i.i310.i.i = phi i64 [ 0, %.lr.ph.i.i308.i.i ], [ %indvars.iv.next.i.i314.i.i, %bb.om ] ; 2 uses
  %i.cgq = getelementptr inbounds nuw [96 x i8], ptr %i.atg, i64 %indvars.iv.i.i310.i.i ; 5 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgq, i64 56
  %i.cgs = load ptr, ptr %i.cgr, align 8, !tbaa !93 ; 2 uses
  %.not.i.i311.i.i = icmp eq ptr %i.cgs, null
  br i1 %.not.i.i311.i.i, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  call void @free(ptr noundef nonnull %i.cgs) #40
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgq, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cgt, i8 0, i64 16, i1 false)
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oh, %bb.og
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgq, i64 64 ; 2 uses
  %i.cgv = load ptr, ptr %i.cgu, align 8, !tbaa !94 ; 2 uses
  %.not28.i.i312.i.i = icmp eq ptr %i.cgv, null
  br i1 %.not28.i.i312.i.i, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  call void @free(ptr noundef nonnull %i.cgv) #40
  store ptr null, ptr %i.cgu, align 8, !tbaa !94
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.cgq, i64 80
  store ptr null, ptr %i.cgw, align 8, !tbaa !91
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgq, i64 72 ; 2 uses
  %i.cgy = load ptr, ptr %i.cgx, align 8, !tbaa !95 ; 2 uses
  %.not29.i.i313.i.i = icmp eq ptr %i.cgy, null
  br i1 %.not29.i.i313.i.i, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  call void @free(ptr noundef nonnull %i.cgy) #40
  store ptr null, ptr %i.cgx, align 8, !tbaa !95
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %indvars.iv.next.i.i314.i.i = add nuw nsw i64 %indvars.iv.i.i310.i.i, 1 ; 2 uses
  %exitcond.not.i.i315.i.i = icmp eq i64 %indvars.iv.next.i.i314.i.i, %wide.trip.count.i.i309.i.i
  br i1 %exitcond.not.i.i315.i.i, label %bb.or, label %bb.og, !llvm.loop !5

bb.on:                                            ; preds = %bb.oe
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgm, i64 4
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgk, i64 24
  %i.chb = load <2 x i32>, ptr %i.cgi, align 8, !tbaa !20
  %i.chc = load <2 x i32>, ptr %i.cgz, align 4, !tbaa !20
  %i.chd = sdiv <2 x i32> %i.chb, %i.chc          ; 3 uses
  store <2 x i32> %i.chd, ptr %i.cha, align 8, !tbaa !20
  %i.che = extractelement <2 x i32> %i.chd, i64 1 ; 4 uses
  %i.chf = ashr i32 %i.che, 1
  %i.chg = getelementptr inbounds nuw i8, ptr %i.cgk, i64 36
  store i32 %i.chf, ptr %i.chg, align 4, !tbaa !262
  %i.chh = extractelement <2 x i32> %i.chd, i64 0 ; 3 uses
  %i.chi = add i32 %i.cgj, %i.chh
  %i.chj = udiv i32 %i.chi, %i.chh
  %i.chk = getelementptr inbounds nuw i8, ptr %i.cgk, i64 32
  store i32 %i.chj, ptr %i.chk, align 16, !tbaa !263
  %i.chl = getelementptr inbounds nuw i8, ptr %i.cgk, i64 40
  store i32 0, ptr %i.chl, align 8, !tbaa !264
  %i.chm = getelementptr inbounds nuw i8, ptr %i.cgm, i64 48
  %i.chn = load ptr, ptr %i.chm, align 8, !tbaa !86
  %i.cho = getelementptr inbounds nuw i8, ptr %i.cgk, i64 8
  %i.chp = insertelement <2 x ptr> poison, ptr %i.chn, i64 0
  %i.chq = shufflevector <2 x ptr> %i.chp, <2 x ptr> poison, <2 x i32> zeroinitializer
  store <2 x ptr> %i.chq, ptr %i.cho, align 8, !tbaa !19
  switch i32 %i.chh, label %.thread340.i.i [
    i32 1, label %bb.oo
    i32 2, label %bb.op
  ]

bb.oo:                                            ; preds = %bb.on
  %switch.selectcmp.i.i = icmp eq i32 %i.che, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @_ZL22stbi__resample_row_v_2PhS_S_ii, ptr @_ZL26stbi__resample_row_genericPhS_S_ii
  %switch.selectcmp738.i.i = icmp eq i32 %i.che, 1
  %switch.select739.i.i = select i1 %switch.selectcmp738.i.i, ptr @_ZL14resample_row_1PhS_S_ii, ptr %switch.select.i.i
  br label %.thread341.i.i

bb.op:                                            ; preds = %bb.on
  switch i32 %i.che, label %.thread340.i.i [
    i32 1, label %.thread341.i.i
    i32 2, label %bb.oq
  ]

bb.oq:                                            ; preds = %bb.op
  %i.chr = load ptr, ptr %i.atd, align 8, !tbaa !247
  br label %.thread341.i.i

.thread340.i.i:                                   ; preds = %bb.op, %bb.on
  br label %.thread341.i.i

bb.or:                                            ; preds = %bb.om
  %i.chs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.chs, align 8, !tbaa !19
  br label %bb.qd

.thread341.i.i:                                   ; preds = %.thread340.i.i, %bb.oq, %bb.op, %bb.oo
  %_ZL22stbi__resample_row_v_2PhS_S_ii.sink.i.i = phi ptr [ %switch.select739.i.i, %bb.oo ], [ %i.chr, %bb.oq ], [ @_ZL26stbi__resample_row_genericPhS_S_ii, %.thread340.i.i ], [ @_ZL22stbi__resample_row_h_2PhS_S_ii, %bb.op ]
  store ptr %_ZL22stbi__resample_row_v_2PhS_S_ii.sink.i.i, ptr %i.cgk, align 16, !tbaa !265
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.os, label %bb.oe, !llvm.loop !227

bb.os:                                            ; preds = %.thread341.i.i
  %i.cht = getelementptr inbounds nuw i8, ptr %.pre.i242.i, i64 4
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !57 ; 4 uses
  %i.chv = or i32 %i.cgf, %i.cfq
  %or.cond.not.i.i.i.i.i = icmp sgt i32 %i.chv, -1
  br i1 %or.cond.not.i.i.i.i.i, label %bb.ot, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i

bb.ot:                                            ; preds = %bb.os
  %i.chw = icmp eq i32 %i.cgf, 0
  br i1 %i.chw, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i.i:        ; preds = %bb.ot
  %i.chx = udiv i32 2147483647, %i.cgf
  %.not23.i.i.i.i = icmp sgt i32 %i.cfq, %i.chx
  br i1 %.not23.i.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i, %bb.ot
  %i.chy = mul nuw nsw i32 %i.cgf, %i.cfq         ; 3 uses
  %i.chz = or i32 %i.chu, %i.chy
  %or.cond.not.i10.i.i.i.i = icmp sgt i32 %i.chz, -1
  br i1 %or.cond.not.i10.i.i.i.i, label %bb.ou, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i

bb.ou:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i
  %i.cia = icmp eq i32 %i.chu, 0                  ; 2 uses
  br i1 %i.cia, label %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i:      ; preds = %bb.ou
  %i.cib = udiv i32 2147483647, %i.chu
  %.not.i.i317.i.i = icmp sgt i32 %i.chy, %i.cib
  br i1 %.not.i.i317.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i

_ZL21stbi__mad3sizes_validiiii.exit.i.i.i:        ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i, %bb.ou
  %i.cic = mul nuw nsw i32 %i.chu, %i.chy         ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.cic, 2147483647
  br i1 %.not9.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.i.i

_ZL17stbi__malloc_mad3iiii.exit.i.i:              ; preds = %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i
  %i.cid = add nsw i32 %i.cic, 1
  %11 = sext i32 %i.cid to i64
  %i.cie = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %11) #42 ; 4 uses
  %.not286.i.i = icmp eq ptr %i.cie, null
  br i1 %.not286.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i, label %.preheader364.i.i

.preheader364.i.i:                                ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i
  br i1 %i.cia, label %._crit_edge445.i.i, label %.lr.ph444.i.i

.lr.ph444.i.i:                                    ; preds = %.preheader364.i.i
  %i.cif = getelementptr inbounds nuw i8, ptr %i.asz, i64 18508 ; 2 uses
  %i.cig = icmp eq i32 %i.cfq, 1                  ; 2 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.cii = zext nneg i32 %i.cfq to i64            ; 6 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.cik = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %.lr.ph.preheader.i.i

_ZL17stbi__malloc_mad3iiii.exit.thread.i.i:       ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i, %_ZL21stbi__mad3sizes_validiiii.exit.i.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i, %bb.os
  %i.cil = icmp sgt i32 %i.cfr, 0
  br i1 %i.cil, label %.lr.ph.i.i318.i.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i

.lr.ph.i.i318.i.i:                                ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i
  %wide.trip.count.i.i319.i.i = zext nneg i32 %i.cfr to i64
  br label %bb.ov

bb.ov:                                            ; preds = %bb.pb, %.lr.ph.i.i318.i.i
  %indvars.iv.i.i320.i.i = phi i64 [ 0, %.lr.ph.i.i318.i.i ], [ %indvars.iv.next.i.i324.i.i, %bb.pb ] ; 2 uses
  %i.cim = getelementptr inbounds nuw [96 x i8], ptr %i.atg, i64 %indvars.iv.i.i320.i.i ; 5 uses
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 56
  %i.cio = load ptr, ptr %i.cin, align 8, !tbaa !93 ; 2 uses
  %.not.i.i321.i.i = icmp eq ptr %i.cio, null
  br i1 %.not.i.i321.i.i, label %bb.ox, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  call void @free(ptr noundef nonnull %i.cio) #40
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cim, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cip, i8 0, i64 16, i1 false)
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cim, i64 64 ; 2 uses
  %i.cir = load ptr, ptr %i.ciq, align 8, !tbaa !94 ; 2 uses
  %.not28.i.i322.i.i = icmp eq ptr %i.cir, null
  br i1 %.not28.i.i322.i.i, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void @free(ptr noundef nonnull %i.cir) #40
  store ptr null, ptr %i.ciq, align 8, !tbaa !94
  %i.cis = getelementptr inbounds nuw i8, ptr %i.cim, i64 80
  store ptr null, ptr %i.cis, align 8, !tbaa !91
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cim, i64 72 ; 2 uses
  %i.ciu = load ptr, ptr %i.cit, align 8, !tbaa !95 ; 2 uses
  %.not29.i.i323.i.i = icmp eq ptr %i.ciu, null
  br i1 %.not29.i.i323.i.i, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  call void @free(ptr noundef nonnull %i.ciu) #40
  store ptr null, ptr %i.cit, align 8, !tbaa !95
  br label %bb.pb

bb.pb:                                            ; preds = %bb.pa, %bb.oz
  %indvars.iv.next.i.i324.i.i = add nuw nsw i64 %indvars.iv.i.i320.i.i, 1 ; 2 uses
  %exitcond.not.i.i325.i.i = icmp eq i64 %indvars.iv.next.i.i324.i.i, %wide.trip.count.i.i319.i.i
  br i1 %exitcond.not.i.i325.i.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i, label %bb.ov, !llvm.loop !5

_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i: ; preds = %bb.pb, %_ZL17stbi__malloc_mad3iiii.exit.thread.i.i
  %i.civ = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.civ, align 8, !tbaa !19
  br label %bb.qd

.lr.ph.preheader.i.i:                             ; preds = %.loopexit.i.i, %.lr.ph444.i.i
  %i.ciw = phi ptr [ %.pre.i242.i, %.lr.ph444.i.i ], [ %i.ctt, %.loopexit.i.i ]
  %.0264443.i.i = phi i32 [ 0, %.lr.ph444.i.i ], [ %i.ctu, %.loopexit.i.i ] ; 2 uses
  %i.cix = load i32, ptr %i.ciw, align 8, !tbaa !56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.pe, %.lr.ph.preheader.i.i
  %indvars.iv512.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next513.i.i, %bb.pe ] ; 4 uses
  %i.ciy = getelementptr inbounds nuw [48 x i8], ptr %7, i64 %indvars.iv512.i.i ; 8 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 36 ; 3 uses
  %i.cja = load i32, ptr %i.ciz, align 4, !tbaa !262 ; 2 uses
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.ciy, i64 28
  %i.cjc = load i32, ptr %i.cjb, align 4, !tbaa !266 ; 2 uses
  %i.cjd = ashr i32 %i.cjc, 1
  %.not289.i.i = icmp slt i32 %i.cja, %i.cjd      ; 2 uses
  %i.cje = load ptr, ptr %i.ciy, align 16, !tbaa !265
  %i.cjf = getelementptr inbounds nuw [96 x i8], ptr %i.atg, i64 %indvars.iv512.i.i ; 3 uses
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cjf, i64 72
  %i.cjh = load ptr, ptr %i.cjg, align 8, !tbaa !95
  %i.cji = getelementptr inbounds nuw i8, ptr %i.ciy, i64 16 ; 4 uses
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.ciy, i64 8 ; 3 uses
  %.in.i.i = select i1 %.not289.i.i, ptr %i.cjj, ptr %i.cji
  %i.cjk = load ptr, ptr %.in.i.i, align 8, !tbaa !19
  %.in290.i.i = select i1 %.not289.i.i, ptr %i.cji, ptr %i.cjj
  %i.cjl = load ptr, ptr %.in290.i.i, align 8, !tbaa !19
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.ciy, i64 32
  %i.cjn = load i32, ptr %i.cjm, align 16, !tbaa !263
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.ciy, i64 24
  %i.cjp = load i32, ptr %i.cjo, align 8, !tbaa !267
  %i.cjq = call noundef ptr %i.cje(ptr noundef %i.cjh, ptr noundef %i.cjk, ptr noundef %i.cjl, i32 noundef %i.cjn, i32 noundef %i.cjp), !inline_history !228
  %i.cjr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv512.i.i
  store ptr %i.cjq, ptr %i.cjr, align 8, !tbaa !19
  %i.cjs = add nsw i32 %i.cja, 1                  ; 2 uses
  store i32 %i.cjs, ptr %i.ciz, align 4, !tbaa !262
  %.not291.i.i = icmp slt i32 %i.cjs, %i.cjc
  br i1 %.not291.i.i, label %bb.pe, label %bb.pc

bb.pc:                                            ; preds = %.lr.ph.i.i
  store i32 0, ptr %i.ciz, align 4, !tbaa !262
  %i.cjt = load ptr, ptr %i.cji, align 16, !tbaa !268 ; 2 uses
  store ptr %i.cjt, ptr %i.cjj, align 8, !tbaa !269
  %i.cju = getelementptr inbounds nuw i8, ptr %i.ciy, i64 40 ; 2 uses
  %i.cjv = load i32, ptr %i.cju, align 8, !tbaa !264
  %i.cjw = add nsw i32 %i.cjv, 1                  ; 2 uses
  store i32 %i.cjw, ptr %i.cju, align 8, !tbaa !264
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjf, i64 32
  %i.cjy = load i32, ptr %i.cjx, align 8, !tbaa !255
  %i.cjz = icmp slt i32 %i.cjw, %i.cjy
  br i1 %i.cjz, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjf, i64 36
  %i.ckb = load i32, ptr %i.cka, align 4, !tbaa !87
  %i.ckc = sext i32 %i.ckb to i64
  %i.ckd = getelementptr inbounds i8, ptr %i.cjt, i64 %i.ckc
  store ptr %i.ckd, ptr %i.cji, align 16, !tbaa !268
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc, %.lr.ph.i.i
  %indvars.iv.next513.i.i = add nuw nsw i64 %indvars.iv512.i.i, 1 ; 2 uses
  %exitcond516.not.i.i = icmp eq i64 %indvars.iv.next513.i.i, %wide.trip.count.i.i
  br i1 %exitcond516.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !229

._crit_edge.i.i:                                  ; preds = %bb.pe
  %i.cke = mul i32 %.0264443.i.i, %i.cfq
  %i.ckf = mul i32 %i.cke, %i.cix
  %i.ckg = zext i32 %i.ckf to i64
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.cie, i64 %i.ckg ; 12 uses
  br i1 %i.cft, label %bb.pf, label %bb.pm

bb.pf:                                            ; preds = %._crit_edge.i.i
  %i.cki = load ptr, ptr %i.c, align 16, !tbaa !19 ; 5 uses
  %i.ckj = load ptr, ptr %i.asz, align 8, !tbaa !55 ; 15 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckj, i64 8
  %i.ckl = load i32, ptr %i.ckk, align 8, !tbaa !58
  switch i32 %i.ckl, label %.preheader.i.i [
    i32 3, label %bb.pg
    i32 4, label %bb.pi
  ]

.preheader.i.i:                                   ; preds = %bb.pf
  %i.ckm = load i32, ptr %i.ckj, align 8, !tbaa !56
  %.not455.i.i = icmp eq i32 %i.ckm, 0
  br i1 %.not455.i.i, label %.loopexit.i.i, label %.lr.ph442.i.i

bb.pg:                                            ; preds = %bb.pf
  br i1 %i.cfs, label %.preheader347.i.i, label %.loopexit.sink.split.i.i

.preheader347.i.i:                                ; preds = %bb.pg
  %i.ckn = load i32, ptr %i.ckj, align 8, !tbaa !56
  %.not454.i.i = icmp eq i32 %i.ckn, 0
  br i1 %.not454.i.i, label %.loopexit.i.i, label %.lr.ph439.i.i

.lr.ph439.i.i:                                    ; preds = %.preheader347.i.i
  %i.cko = load ptr, ptr %i.cij, align 8, !tbaa !19
  %i.ckp = load ptr, ptr %i.cik, align 16, !tbaa !19
  br label %bb.ph

bb.ph:                                            ; preds = %bb.ph, %.lr.ph439.i.i
  %indvars.iv541.i.i = phi i64 [ 0, %.lr.ph439.i.i ], [ %indvars.iv.next542.i.i, %bb.ph ] ; 4 uses
  %.0260438.i.i = phi ptr [ %i.ckh, %.lr.ph439.i.i ], [ %i.ckz, %bb.ph ] ; 5 uses
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.cki, i64 %indvars.iv541.i.i
  %i.ckr = load i8, ptr %i.ckq, align 1, !tbaa !32
  store i8 %i.ckr, ptr %.0260438.i.i, align 1, !tbaa !32
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cko, i64 %indvars.iv541.i.i
  %i.ckt = load i8, ptr %i.cks, align 1, !tbaa !32
  %i.cku = getelementptr inbounds nuw i8, ptr %.0260438.i.i, i64 1
  store i8 %i.ckt, ptr %i.cku, align 1, !tbaa !32
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.ckp, i64 %indvars.iv541.i.i
  %i.ckw = load i8, ptr %i.ckv, align 1, !tbaa !32
  %i.ckx = getelementptr inbounds nuw i8, ptr %.0260438.i.i, i64 2
  store i8 %i.ckw, ptr %i.ckx, align 1, !tbaa !32
  %i.cky = getelementptr inbounds nuw i8, ptr %.0260438.i.i, i64 3
  store i8 -1, ptr %i.cky, align 1, !tbaa !32
  %i.ckz = getelementptr inbounds nuw i8, ptr %.0260438.i.i, i64 %i.cii
  %indvars.iv.next542.i.i = add nuw nsw i64 %indvars.iv541.i.i, 1 ; 2 uses
  %i.cla = load i32, ptr %i.ckj, align 8, !tbaa !56
  %i.clb = zext i32 %i.cla to i64
  %i.clc = icmp samesign ult i64 %indvars.iv.next542.i.i, %i.clb
  br i1 %i.clc, label %bb.ph, label %.loopexit.i.i, !llvm.loop !230

bb.pi:                                            ; preds = %bb.pf
  %i.cld = load i32, ptr %i.cif, align 4, !tbaa !71
  switch i32 %i.cld, label %.loopexit.sink.split.i.i [
    i32 0, label %.preheader349.i.i
    i32 2, label %bb.pk
  ]

.preheader349.i.i:                                ; preds = %bb.pi
end_hunk_2
begin_hunk_3_@_ZL14stbi__pnm_testP13stbi__context:bb.a
bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !30
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit14

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !27
  %.not.i9 = icmp eq i32 %i.an, 0
  br i1 %.not.i9, label %_ZL10stbi__get8P13stbi__context.exit14.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !26
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !6 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !28
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !28
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i10 = load i8, ptr %i.as, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11

_ZL19stbi__refill_bufferP13stbi__context.exit.i11: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i10, %bb.k ]
  %.sink.i.i12 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i12, ptr %i.c, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit14

_ZL10stbi__get8P13stbi__context.exit14:           ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11
  %.0.i13 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11 ]
  %.not = icmp ne i8 %.0.i, 80
  %i.bm = add i8 %.0.i13, -55
  %or.cond = icmp ult i8 %i.bm, -2
  %or.cond8 = or i1 %.not, %or.cond
  br i1 %or.cond8, label %_ZL10stbi__get8P13stbi__context.exit14.thread, label %bb.l

_ZL10stbi__get8P13stbi__context.exit14.thread:    ; preds = %bb.h, %_ZL10stbi__get8P13stbi__context.exit14
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bo = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !19
  store <2 x ptr> %i.bo, ptr %i.a, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit14, %_ZL10stbi__get8P13stbi__context.exit14.thread
  %.0 = phi i32 [ 0, %_ZL10stbi__get8P13stbi__context.exit14.thread ], [ 1, %_ZL10stbi__get8P13stbi__context.exit14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL14stbi__pnm_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %5) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = tail call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef %0, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.c, ptr %5, align 4, !tbaa !36
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !57
  %i.f = icmp ugt i32 %i.e, 16777216
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.g, align 8, !tbaa !19
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.i = icmp ugt i32 %i.h, 16777216
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.j, align 8, !tbaa !19
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  store i32 %i.h, ptr %1, align 4, !tbaa !20
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  store i32 %i.k, ptr %2, align 4, !tbaa !20
  %.not = icmp eq ptr %3, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !58  ; 5 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.pre, ptr %3, align 4, !tbaa !20
  %.pre57 = load i32, ptr %i.a, align 4, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi i32 [ %.pre57, %bb.g ], [ %i.k, %bb.f ] ; 5 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !36     ; 2 uses
  %i.o = sdiv i32 %i.n, 8                         ; 4 uses
  %i.p = or i32 %i.m, %.pre
  %or.cond.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %or.cond.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.q, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.i
  %i.r = udiv i32 2147483647, %i.m
  %.not37.i = icmp sgt i32 %.pre, %i.r
  br i1 %.not37.i, label %bb.l, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.i
  %i.s = mul i32 %i.m, %.pre                      ; 4 uses
  %i.t = or i32 %i.l, %i.s
  %or.cond.not.i16.i = icmp sgt i32 %i.t, -1
  br i1 %or.cond.not.i16.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.u = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.u, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i, label %_ZL21stbi__mul2sizes_validii.exit18.i

_ZL21stbi__mul2sizes_validii.exit18.i:            ; preds = %bb.j
  %i.v = udiv i32 2147483647, %i.l
  %.not.i = icmp sgt i32 %i.s, %i.v
  br i1 %.not.i, label %bb.l, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i, %bb.j
  %i.w = mul i32 %i.s, %i.l                       ; 4 uses
  %i.x = or i32 %i.o, %i.w
  %or.cond.not.i19.i = icmp sgt i32 %i.x, -1
  br i1 %or.cond.not.i19.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %.off = add i32 %i.n, 7
  %i.y = icmp ult i32 %.off, 15                   ; 2 uses
  br i1 %i.y, label %_ZL21stbi__mad4sizes_validiiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i

_ZL21stbi__mul2sizes_validii.exit21.i:            ; preds = %bb.k
  %i.z = udiv i32 2147483647, %i.o
  %.not38.i = icmp sgt i32 %i.w, %i.z
  br i1 %.not38.i, label %bb.l, label %_ZL21stbi__mad4sizes_validiiiii.exit

bb.l:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i, %_ZL21stbi__mul2sizes_validii.exit18.i, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %bb.h, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.aa, align 8, !tbaa !19
  br label %bb.s

_ZL21stbi__mad4sizes_validiiiii.exit:             ; preds = %bb.k, %_ZL21stbi__mul2sizes_validii.exit21.i
  br i1 %i.q, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mad4sizes_validiiiii.exit
  %i.ab = udiv i32 2147483647, %i.m
  %.not37.i.i = icmp sgt i32 %.pre, %i.ab
  br i1 %.not37.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i:   ; preds = %_ZL21stbi__mad4sizes_validiiiii.exit, %_ZL21stbi__mul2sizes_validii.exit.i.i
  br i1 %i.u, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i
  %i.ac = udiv i32 2147483647, %i.l
  %.not.i.i = icmp sgt i32 %i.s, %i.ac
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i
  br i1 %i.y, label %_ZL17stbi__malloc_mad4iiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i.i

_ZL21stbi__mul2sizes_validii.exit21.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i
  %i.ad = udiv i32 2147483647, %i.o
  %.not38.i.i = icmp sgt i32 %i.w, %i.ad
  br i1 %.not38.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL17stbi__malloc_mad4iiiii.exit

_ZL17stbi__malloc_mad4iiiii.exit:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i
  %i.ae = mul i32 %i.o, %i.w                      ; 3 uses
  %6 = sext i32 %i.ae to i64                      ; 3 uses
  %i.af = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %6) #42 ; 7 uses
  %.not49 = icmp eq ptr %i.af, null
  br i1 %.not49, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %bb.m

_ZL17stbi__malloc_mad4iiiii.exit.thread:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i, %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.ag, align 8, !tbaa !19
  br label %bb.s

bb.m:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not.i52 = icmp eq ptr %i.ai, null
  br i1 %.not.i52, label %..thread_crit_edge.i, label %bb.n

..thread_crit_edge.i:                             ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !33
  br label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30 ; 3 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = icmp sgt i32 %i.ae, %i.aq
  br i1 %i.ar, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %sext.i = shl i64 %i.ap, 32
  %i.as = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.am, i64 %i.as, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.av = getelementptr inbounds i8, ptr %i.af, i64 %i.as
  %i.aw = sub nsw i32 %i.ae, %i.aq
  %i.ax = tail call noundef i32 %i.ai(ptr noundef %i.au, ptr noundef nonnull %i.av, i32 noundef %i.aw), !inline_history !103 ; 0 uses
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !33
  store ptr %i.ay, ptr %i.al, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %bb.n, %..thread_crit_edge.i
  %i.az = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.ak, %bb.n ]
  %i.ba = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.am, %bb.n ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %6 ; 2 uses
  %.not32.i = icmp ugt ptr %i.bb, %i.az
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.p

bb.p:                                             ; preds = %.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ba, i64 %6, i1 false)
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.o, %.thread.i, %bb.p
  %.not50 = icmp eq i32 %4, 0
  br i1 %.not50, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %.not51 = icmp eq i32 %4, %i.bd
  br i1 %.not51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load i32, ptr %0, align 8, !tbaa !56
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !57
  %i.bg = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.af, i32 noundef %i.bd, i32 noundef %4, i32 noundef %i.be, i32 noundef %i.bf)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.q, %bb.a, %_ZL17stbi__malloc_mad4iiiii.exit.thread, %bb.l, %bb.e, %bb.c
  %.041 = phi ptr [ null, %bb.l ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ], [ %i.bg, %bb.r ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread ], [ %i.af, %bb.q ], [ %i.af, %_ZL10stbi__getnP13stbi__contextPhi.exit ]
  ret ptr %.041
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x i8], align 1                 ; 2 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.e = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 %i.f, 5638868765947084579
  %i.h = getelementptr i8, ptr %i.a, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 19495776774865985
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1196572451
  %i.p = getelementptr i8, ptr %i.a, i64 3
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 4538951
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not138 = icmp eq i32 %i.u, 0
  br i1 %.not138, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.76, ptr %i.v, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.w = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.x = load i8, ptr %i.a, align 16, !tbaa !32
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.012336 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.z = load i128, ptr %i.a, align 16
  %i.aa = xor i128 %i.z, 144150481438637697380701673535474650950
  %i.ab = getelementptr i8, ptr %i.a, i64 7
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 526417854750532455411190335003243059
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  %spec.select = select i1 %i.ah, i32 1, i32 %.012336 ; 2 uses
  %i.ai = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.aj = load i8, ptr %i.a, align 16, !tbaa !32
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph, !llvm.loop !274

._crit_edge:                                      ; preds = %.lr.ph
  %i.al = icmp eq i32 %spec.select, 0
  br i1 %i.al, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.78, ptr %i.am, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.e:                                             ; preds = %._crit_edge
  %i.an = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.ao = load i16, ptr %i.a, align 16
  %i.ap = xor i16 %i.ao, 22829
  %i.aq = getelementptr i8, ptr %i.a, i64 2
  %i.ar = load i8, ptr %i.aq, align 2
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 32
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not140 = icmp eq i32 %i.aw, 0
  br i1 %.not140, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.80, ptr %i.ax, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !19
  %i.az = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b, i32 noundef 10) #40 ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !19 ; 3 uses
  %i.bb = load i8, ptr %.promoted, align 1, !tbaa !32 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 32
  br i1 %i.bc, label %.lr.ph38, label %sub_0

.lr.ph38:                                         ; preds = %bb.g, %.lr.ph38
  %i.bd = phi ptr [ %i.be, %.lr.ph38 ], [ %.promoted, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  store ptr %i.be, ptr %i.b, align 8, !tbaa !19
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 32
  br i1 %i.bg, label %.lr.ph38, label %sub_0, !llvm.loop !275

sub_0:                                            ; preds = %.lr.ph38, %bb.g
  %i.bh = phi i8 [ %i.bb, %bb.g ], [ %i.bf, %.lr.ph38 ]
  %.lcssa35 = phi ptr [ %.promoted, %bb.g ], [ %i.be, %.lr.ph38 ] ; 3 uses
  %.not59 = icmp eq i8 %i.bh, 43
  br i1 %.not59, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %.not60 = icmp eq i8 %i.bj, 88
  br i1 %.not60, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 32
  br i1 %i.bm, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.80, ptr %i.bn, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.h:                                             ; preds = %.tail
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 3 ; 2 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !19
  %i.bp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bo, ptr noundef null, i32 noundef 10) #40 ; 4 uses
  %i.bq = trunc i64 %i.bp to i32                  ; 10 uses
  %i.br = icmp sgt i32 %i.ba, 16777216
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.bs, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp sgt i32 %i.bq, 16777216
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.bu, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.l:                                             ; preds = %bb.j
  store i32 %i.bq, ptr %1, align 4, !tbaa !20
  store i32 %i.ba, ptr %2, align 4, !tbaa !20
  %.not142 = icmp eq ptr %3, null
  br i1 %.not142, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %3, align 4, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bv = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.bv, i32 3, i32 %4 ; 9 uses
  %i.bw = call fastcc noundef i32 @_ZL21stbi__mad4sizes_validiiiii(i32 noundef %i.bq, i32 noundef %i.ba, i32 noundef %spec.store.select, i32 noundef 4)
  %.not143 = icmp eq i32 %i.bw, 0
  br i1 %.not143, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.bx, align 8, !tbaa !19
  br label %._crit_edge57.thread

bb.p:                                             ; preds = %bb.n
  %i.by = call fastcc noundef ptr @_ZL17stbi__malloc_mad4iiiii(i32 noundef %i.bq, i32 noundef %i.ba, i32 noundef %spec.store.select, i32 noundef 4) ; 11 uses
  %.not144 = icmp eq ptr %i.by, null
end_hunk_3
begin_hunk_4_@_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i159

bb.at:                                            ; preds = %bb.ar
  %i.hq = sext i32 %i.hg to i64
  %i.hr = getelementptr inbounds i8, ptr %i.cj, i64 %i.hq
  %.pre.i158 = load i8, ptr %i.cj, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i159

_ZL19stbi__refill_bufferP13stbi__context.exit.i159: ; preds = %bb.at, %bb.as
  %i.hs = phi i8 [ 0, %bb.as ], [ %.pre.i158, %bb.at ]
  %.sink.i.i160 = phi ptr [ %i.cn, %bb.as ], [ %i.hr, %bb.at ]
  store ptr %.sink.i.i160, ptr %i.cf, align 8, !tbaa !33
  store ptr %i.cn, ptr %i.ce, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit162

_ZL10stbi__get8P13stbi__context.exit162:          ; preds = %bb.ap, %bb.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i159
  %.0.i161 = phi i8 [ %i.hb, %bb.ap ], [ %i.hs, %_ZL19stbi__refill_bufferP13stbi__context.exit.i159 ], [ 0, %bb.aq ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ht = shl nsw i64 %indvars.iv, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ht
  store i8 %.0.i161, ptr %gep, align 1, !tbaa !32
  %i.hu = add nuw nsw i32 %.141, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hu, %i.ev
  br i1 %exitcond.not, label %.loopexit.loopexit63, label %.lr.ph42, !llvm.loop !280

.loopexit.loopexit:                               ; preds = %.lr.ph46, %middle.block
  %indvars.iv.next93.lcssa = phi i64 [ %i.fx, %middle.block ], [ %indvars.iv.next93, %.lr.ph46 ]
  %i.hv = trunc nsw i64 %indvars.iv.next93.lcssa to i32
  br label %.loopexit

.loopexit.loopexit63:                             ; preds = %_ZL10stbi__get8P13stbi__context.exit162
  %i.hw = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.loopexit.loopexit63, %.loopexit.loopexit, %.preheader10, %.preheader
  %.5 = phi i32 [ %i.hv, %.loopexit.loopexit ], [ %.211948, %.preheader ], [ %.211948, %.preheader10 ], [ %i.hw, %.loopexit.loopexit63 ], [ %.211948, %bb.ad ] ; 2 uses
  %i.hx = sub nsw i32 %i.bq, %.5                  ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 1
  br i1 %i.hy, label %..critedge_crit_edge, label %bb.ab, !llvm.loop !281

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 4
  br i1 %exitcond99.not, label %.lr.ph52, label %.preheader12, !llvm.loop !282

bb.au:                                            ; preds = %.lr.ph52, %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv100 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next101, %_ZL17stbi__hdr_convertPfPhi.exit ] ; 3 uses
  %i.hz = add nuw nsw i64 %indvars.iv100, %i.dv
  %i.ia = mul nsw i64 %i.hz, %i.cp
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ia ; 11 uses
  %i.ic = shl nuw nsw i64 %indvars.iv100, 2
  %i.id = getelementptr inbounds nuw i8, ptr %.1122, i64 %i.ic ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !32  ; 2 uses
  %.not.i163 = icmp eq i8 %i.if, 0
  br i1 %.not.i163, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nsw i32 %i.ig, -136
  %i.ii = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.ih) #40 ; 4 uses
  %i.ij = load i8, ptr %i.id, align 1, !tbaa !32  ; 2 uses
  br i1 %i.co, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ik = zext i8 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !32
  %i.in = zext i8 %i.im to i32
  %i.io = add nuw nsw i32 %i.in, %i.ik
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !32
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nuw nsw i32 %i.io, %i.ir
  %i.it = uitofp nneg i32 %i.is to float
  %i.iu = fmul float %i.ii, %i.it
  %i.iv = fdiv float %i.iu, 3.000000e+00
  store float %i.iv, ptr %i.ib, align 4, !tbaa !52
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.iw = uitofp i8 %i.ij to float
  %i.ix = fmul float %i.ii, %i.iw
  store float %i.ix, ptr %i.ib, align 4, !tbaa !52
  %i.iy = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !32
  %i.ja = uitofp i8 %i.iz to float
  %i.jb = fmul float %i.ii, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store float %i.jb, ptr %i.jc, align 4, !tbaa !52
  %i.jd = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !32
  %i.jf = uitofp i8 %i.je to float
  %i.jg = fmul float %i.ii, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store float %i.jg, ptr %i.jh, align 4, !tbaa !52
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 2, label %bb.az
    i32 4, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store float 1.000000e+00, ptr %i.ji, align 4, !tbaa !52
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store float 1.000000e+00, ptr %i.jj, align 4, !tbaa !52
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.bb:                                            ; preds = %bb.au
  switch i32 %spec.store.select, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 4, label %bb.bc
    i32 3, label %bb.bd
    i32 2, label %bb.be
    i32 1, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store float 1.000000e+00, ptr %i.jk, align 4, !tbaa !52
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store float 0.000000e+00, ptr %i.jl, align 4, !tbaa !52
  store <2 x float> zeroinitializer, ptr %i.ib, align 4, !tbaa !52
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.be:                                            ; preds = %bb.bb
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store float 1.000000e+00, ptr %i.jm, align 4, !tbaa !52
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  store float 0.000000e+00, ptr %i.ib, align 4, !tbaa !52
  br label %_ZL17stbi__hdr_convertPfPhi.exit

_ZL17stbi__hdr_convertPfPhi.exit:                 ; preds = %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.bf
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond103.not, label %._crit_edge53, label %bb.au, !llvm.loop !283

._crit_edge53:                                    ; preds = %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge57, label %bb.w, !llvm.loop !284

._crit_edge57:                                    ; preds = %._crit_edge53
  call void @free(ptr noundef nonnull %.1122) #40
  br label %._crit_edge57.thread

._crit_edge57.thread:                             ; preds = %.preheader14, %bb.an, %bb.ao, %bb.s, %._crit_edge57, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.z, %bb.q, %bb.o, %bb.k, %bb.i, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3128 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %bb.i ], [ null, %bb.k ], [ null, %._crit_edge.thread ], [ null, %bb.z ], [ %i.by, %bb.s ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ null, %bb.q ], [ null, %bb.o ], [ null, %bb.an ], [ %i.by, %._crit_edge57 ], [ null, %bb.ao ], [ %i.by, %.preheader14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %.3128
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__hdr_to_ldrPfiii(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not23.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 8 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.h = mul nuw nsw i32 %i.d, %3
  %4 = sext i32 %i.h to i64
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %4) #42 ; 13 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef nonnull %0) #40
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.k, align 8, !tbaa !19
  br label %bb.h

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.l = and i32 %3, 1
  %sext = add i32 %3, -1
  %.046 = add i32 %sext, %i.l                     ; 6 uses
  %i.m = icmp sgt i32 %i.d, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge55

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.n = icmp sgt i32 %.046, 0
  %i.o = load float, ptr @_ZL17stbi__h2l_scale_i, align 4 ; 3 uses
  %i.p = load float, ptr @_ZL17stbi__h2l_gamma_i, align 4 ; 3 uses
  br i1 %i.n, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %5 = sext i32 %3 to i64
  %wide.trip.count66 = zext nneg i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %.046 to i64 ; 2 uses
  %i.q = icmp slt i32 %.046, %3
  %6 = zext nneg i32 %.046 to i64
  %xtraiter85 = and i64 %wide.trip.count61, 1
  %i.r = icmp eq i32 %.046, 1
  %unroll_iter = and i64 %wide.trip.count61, 2147483646
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  %lcmp.mod87 = trunc i32 %.046 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.g
  %indvars.iv63 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next64, %bb.g ] ; 2 uses
  %i.s = mul nuw nsw i64 %indvars.iv63, %5        ; 4 uses
  br i1 %i.r, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv58 = phi i64 [ %indvars.iv.next59.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.t = add nsw i64 %indvars.iv58, %i.s          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !52
  %i.w = fmul float %i.v, %i.o
  %i.x = tail call noundef float @powf(float noundef %i.w, float noundef %i.p) #40
  %i.y = fmul float %i.x, 2.550000e+02
  %i.z = fadd float %i.y, 5.000000e-01            ; 2 uses
  %i.aa = fcmp olt float %i.z, 0.000000e+00
  %spec.store.select.us = select i1 %i.aa, float 0.000000e+00, float %i.z ; 2 uses
  %i.ab = fcmp ogt float %spec.store.select.us, 2.550000e+02
  %spec.store.select2.us = select i1 %i.ab, float 2.550000e+02, float %spec.store.select.us
  %i.ac = fptosi float %spec.store.select2.us to i32
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 %i.t
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !32
  %indvars.iv.next59 = or disjoint i64 %indvars.iv58, 1
  %i.af = add nsw i64 %indvars.iv.next59, %i.s    ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !52
  %i.ai = fmul float %i.ah, %i.o
  %i.aj = tail call noundef float @powf(float noundef %i.ai, float noundef %i.p) #40
  %i.ak = fmul float %i.aj, 2.550000e+02
  %i.al = fadd float %i.ak, 5.000000e-01          ; 2 uses
  %i.am = fcmp olt float %i.al, 0.000000e+00
  %spec.store.select.us.1 = select i1 %i.am, float 0.000000e+00, float %i.al ; 2 uses
  %i.an = fcmp ogt float %spec.store.select.us.1, 2.550000e+02
  %spec.store.select2.us.1 = select i1 %i.an, float 2.550000e+02, float %spec.store.select.us.1
  %i.ao = fptosi float %spec.store.select2.us.1 to i32
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds i8, ptr %i.i, i64 %i.af
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !32
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !285

bb.f:                                             ; preds = %._crit_edge.us
  %i.ar = add nsw i64 %i.s, %6                    ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !52
  %i.au = fmul float %i.at, 2.550000e+02
  %i.av = fadd float %i.au, 5.000000e-01          ; 2 uses
  %i.aw = fcmp olt float %i.av, 0.000000e+00
  %spec.store.select1.us = select i1 %i.aw, float 0.000000e+00, float %i.av ; 2 uses
  %i.ax = fcmp ogt float %spec.store.select1.us, 2.550000e+02
  %spec.store.select3.us = select i1 %i.ax, float 2.550000e+02, float %spec.store.select1.us
  %i.ay = fptosi float %spec.store.select3.us to i32
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds i8, ptr %i.i, i64 %i.ar
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !286

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod86.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv58.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59.1, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.bb = add nsw i64 %indvars.iv58.epil.init, %i.s ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !52
  %i.be = fmul float %i.bd, %i.o
  %i.bf = tail call noundef float @powf(float noundef %i.be, float noundef %i.p) #40
  %i.bg = fmul float %i.bf, 2.550000e+02
  %i.bh = fadd float %i.bg, 5.000000e-01          ; 2 uses
  %i.bi = fcmp olt float %i.bh, 0.000000e+00
  %spec.store.select.us.epil = select i1 %i.bi, float 0.000000e+00, float %i.bh ; 2 uses
  %i.bj = fcmp ogt float %spec.store.select.us.epil, 2.550000e+02
  %spec.store.select2.us.epil = select i1 %i.bj, float 2.550000e+02, float %spec.store.select.us.epil
  %i.bk = fptosi float %spec.store.select2.us.epil to i32
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds i8, ptr %i.i, i64 %i.bb
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  br i1 %i.q, label %bb.f, label %bb.g

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bn = icmp sgt i32 %3, 0
  br i1 %i.bn, label %iter.check, label %._crit_edge55

iter.check:                                       ; preds = %.preheader.lr.ph.split
  %i.bo = zext nneg i32 %3 to i64                 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 8 uses
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.main.loop.iter.check, label %.preheader.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check75 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %wide.load = load <8 x float>, ptr %i.bq, align 4, !tbaa !52
  %wide.load76 = load <8 x float>, ptr %i.br, align 4, !tbaa !52
  %wide.load77 = load <8 x float>, ptr %i.bs, align 4, !tbaa !52
  %wide.load78 = load <8 x float>, ptr %i.bt, align 4, !tbaa !52
  %i.bu = fmul <8 x float> %wide.load, splat (float 2.550000e+02)
  %i.bv = fmul <8 x float> %wide.load76, splat (float 2.550000e+02)
  %i.bw = fmul <8 x float> %wide.load77, splat (float 2.550000e+02)
  %i.bx = fmul <8 x float> %wide.load78, splat (float 2.550000e+02)
  %i.by = fadd <8 x float> %i.bu, splat (float 5.000000e-01) ; 2 uses
  %i.bz = fadd <8 x float> %i.bv, splat (float 5.000000e-01) ; 2 uses
  %i.ca = fadd <8 x float> %i.bw, splat (float 5.000000e-01) ; 2 uses
  %i.cb = fadd <8 x float> %i.bx, splat (float 5.000000e-01) ; 2 uses
  %i.cc = fcmp olt <8 x float> %i.by, zeroinitializer
  %i.cd = fcmp olt <8 x float> %i.bz, zeroinitializer
  %i.ce = fcmp olt <8 x float> %i.ca, zeroinitializer
  %i.cf = fcmp olt <8 x float> %i.cb, zeroinitializer
  %i.cg = select <8 x i1> %i.cc, <8 x float> zeroinitializer, <8 x float> %i.by ; 2 uses
  %i.ch = select <8 x i1> %i.cd, <8 x float> zeroinitializer, <8 x float> %i.bz ; 2 uses
  %i.ci = select <8 x i1> %i.ce, <8 x float> zeroinitializer, <8 x float> %i.ca ; 2 uses
  %i.cj = select <8 x i1> %i.cf, <8 x float> zeroinitializer, <8 x float> %i.cb ; 2 uses
  %i.ck = fcmp ogt <8 x float> %i.cg, splat (float 2.550000e+02)
  %i.cl = fcmp ogt <8 x float> %i.ch, splat (float 2.550000e+02)
  %i.cm = fcmp ogt <8 x float> %i.ci, splat (float 2.550000e+02)
  %i.cn = fcmp ogt <8 x float> %i.cj, splat (float 2.550000e+02)
  %i.co = select <8 x i1> %i.ck, <8 x float> splat (float 2.550000e+02), <8 x float> %i.cg
  %i.cp = select <8 x i1> %i.cl, <8 x float> splat (float 2.550000e+02), <8 x float> %i.ch
  %i.cq = select <8 x i1> %i.cm, <8 x float> splat (float 2.550000e+02), <8 x float> %i.ci
  %i.cr = select <8 x i1> %i.cn, <8 x float> splat (float 2.550000e+02), <8 x float> %i.cj
  %i.cs = fptosi <8 x float> %i.co to <8 x i32>
  %i.ct = fptosi <8 x float> %i.cp to <8 x i32>
  %i.cu = fptosi <8 x float> %i.cq to <8 x i32>
  %i.cv = fptosi <8 x float> %i.cr to <8 x i32>
  %i.cw = trunc <8 x i32> %i.cs to <8 x i8>
  %i.cx = trunc <8 x i32> %i.ct to <8 x i8>
  %i.cy = trunc <8 x i32> %i.cu to <8 x i8>
  %i.cz = trunc <8 x i32> %i.cv to <8 x i8>
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store <8 x i8> %i.cw, ptr %i.da, align 1, !tbaa !32
  store <8 x i8> %i.cx, ptr %i.db, align 1, !tbaa !32
  store <8 x i8> %i.cy, ptr %i.dc, align 1, !tbaa !32
  store <8 x i8> %i.cz, ptr %i.dd, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next82, %vec.epilog.vector.body ] ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index80
  %wide.load81 = load <8 x float>, ptr %i.df, align 4, !tbaa !52
  %i.dg = fmul <8 x float> %wide.load81, splat (float 2.550000e+02)
  %i.dh = fadd <8 x float> %i.dg, splat (float 5.000000e-01) ; 2 uses
  %i.di = fcmp olt <8 x float> %i.dh, zeroinitializer
  %i.dj = select <8 x i1> %i.di, <8 x float> zeroinitializer, <8 x float> %i.dh ; 2 uses
  %i.dk = fcmp ogt <8 x float> %i.dj, splat (float 2.550000e+02)
  %i.dl = select <8 x i1> %i.dk, <8 x float> splat (float 2.550000e+02), <8 x float> %i.dj
  %i.dm = fptosi <8 x float> %i.dl to <8 x i32>
  %i.dn = trunc <8 x i32> %i.dm to <8 x i8>
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 %index80
  store <8 x i8> %i.dn, ptr %i.do, align 1, !tbaa !32
  %index.next82 = add nuw i64 %index80, 8         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec79
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %n.vec79, %wide.trip.count
  br i1 %cmp.n83, label %._crit_edge55, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec79, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.prol ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.dq = mul nuw nsw i64 %indvars.iv.prol, %i.bo ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !52
  %i.dt = fmul float %i.ds, 2.550000e+02
  %i.du = fadd float %i.dt, 5.000000e-01          ; 2 uses
  %i.dv = fcmp olt float %i.du, 0.000000e+00
  %spec.store.select1.prol = select i1 %i.dv, float 0.000000e+00, float %i.du ; 2 uses
  %i.dw = fcmp ogt float %spec.store.select1.prol, 2.550000e+02
  %spec.store.select3.prol = select i1 %i.dw, float 2.550000e+02, float %spec.store.select1.prol
  %i.dx = fptosi float %spec.store.select3.prol to i32
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dq
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !289

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %i.ea = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge55, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader ], [ %indvars.iv.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.ec = mul nuw nsw i64 %indvars.iv, %i.bo      ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !52
  %i.ef = fmul float %i.ee, 2.550000e+02
  %i.eg = fadd float %i.ef, 5.000000e-01          ; 2 uses
  %i.eh = fcmp olt float %i.eg, 0.000000e+00
  %spec.store.select1 = select i1 %i.eh, float 0.000000e+00, float %i.eg ; 2 uses
  %i.ei = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select3 = select i1 %i.ei, float 2.550000e+02, float %spec.store.select1
  %i.ej = fptosi float %spec.store.select3 to i32
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ec
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.em = mul nuw nsw i64 %indvars.iv.next, %i.bo ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !52
  %i.ep = fmul float %i.eo, 2.550000e+02
  %i.eq = fadd float %i.ep, 5.000000e-01          ; 2 uses
  %i.er = fcmp olt float %i.eq, 0.000000e+00
  %spec.store.select1.1 = select i1 %i.er, float 0.000000e+00, float %i.eq ; 2 uses
  %i.es = fcmp ogt float %spec.store.select1.1, 2.550000e+02
  %spec.store.select3.1 = select i1 %i.es, float 2.550000e+02, float %spec.store.select1.1
  %i.et = fptosi float %spec.store.select3.1 to i32
  %i.eu = trunc i32 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.em
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.ew = mul nuw nsw i64 %indvars.iv.next.1, %i.bo ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !52
  %i.ez = fmul float %i.ey, 2.550000e+02
  %i.fa = fadd float %i.ez, 5.000000e-01          ; 2 uses
  %i.fb = fcmp olt float %i.fa, 0.000000e+00
  %spec.store.select1.2 = select i1 %i.fb, float 0.000000e+00, float %i.fa ; 2 uses
  %i.fc = fcmp ogt float %spec.store.select1.2, 2.550000e+02
  %spec.store.select3.2 = select i1 %i.fc, float 2.550000e+02, float %spec.store.select1.2
  %i.fd = fptosi float %spec.store.select3.2 to i32
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ew
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !32
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %i.fg = mul nuw nsw i64 %indvars.iv.next.2, %i.bo ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !52
  %i.fj = fmul float %i.fi, 2.550000e+02
  %i.fk = fadd float %i.fj, 5.000000e-01          ; 2 uses
  %i.fl = fcmp olt float %i.fk, 0.000000e+00
  %spec.store.select1.3 = select i1 %i.fl, float 0.000000e+00, float %i.fk ; 2 uses
end_hunk_4
begin_hunk_5_@_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data:bb.a
    i32 32, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  store i32 31744, ptr %i.ce, align 4, !tbaa !63
  store i32 992, ptr %i.cd, align 4, !tbaa !64
  store i32 31, ptr %i.cc, align 4, !tbaa !65
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.ai:                                            ; preds = %bb.ag
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.ce, align 4, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.dy, align 4, !tbaa !60
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.aj:                                            ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.ak:                                            ; preds = %bb.af
  br i1 %i.di, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dz = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.dz, ptr %i.ce, align 4, !tbaa !63
  %i.ea = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.ea, ptr %i.cd, align 4, !tbaa !64
  %i.eb = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 2 uses
  store i32 %i.eb, ptr %i.cc, align 4, !tbaa !65
  %i.ec = load i32, ptr %i.cf, align 4, !tbaa !69
  %i.ed = add nsw i32 %i.ec, 12
  store i32 %i.ed, ptr %i.cf, align 4, !tbaa !69
  %i.ee = load i32, ptr %i.ce, align 4, !tbaa !63
  %i.ef = load i32, ptr %i.cd, align 4, !tbaa !64 ; 2 uses
  %i.eg = icmp eq i32 %i.ee, %i.ef
  %i.eh = icmp eq i32 %i.ef, %i.eb
  %or.cond = and i1 %i.eg, %i.eh
  br i1 %or.cond, label %bb.am, label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.am:                                            ; preds = %bb.al
  %i.ei = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.13, ptr %i.ei, align 8, !tbaa !19
  br label %.critedge

bb.an:                                            ; preds = %bb.ak
  %i.ej = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.13, ptr %i.ej, align 8, !tbaa !19
  br label %.critedge

bb.ao:                                            ; preds = %bb.ac
  %i.ek = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.13, ptr %i.ek, align 8, !tbaa !19
  br label %bb.at

bb.ap:                                            ; preds = %bb.ac, %bb.ac
  %i.el = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.el, ptr %i.ce, align 4, !tbaa !63
  %i.em = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.em, ptr %i.cd, align 4, !tbaa !64
  %i.en = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.en, ptr %i.cc, align 4, !tbaa !65
  %i.eo = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.eo, ptr %i.cb, align 4, !tbaa !66
  br i1 %i.di, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai(ptr noundef %1, i32 noundef %i.dd)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ep = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.eq = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.er = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.es = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.et = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.eu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ev = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ew = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ex = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ey = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ez = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fa = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fb = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fc = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fd = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fe = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ff = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fg = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fh = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fi = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fj = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fk = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fl = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fm = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fn = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  switch i32 %i.bz, label %.critedge [
    i32 124, label %bb.as
    i32 108, label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit
  ]

bb.as:                                            ; preds = %bb.ar
  %i.fo = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.fp = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.fq = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.fr = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %i.fs = add i32 %i.bz, -108
  %switch.and = and i32 %i.fs, -17
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.ft = select i1 %switch.selectcmp, ptr inttoptr (i64 1 to ptr), ptr null
  br label %.critedge

_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ar, %bb.ae, %bb.al
  br label %.critedge

.critedge:                                        ; preds = %bb.at, %bb.ar, %bb.w, %bb.y, %bb.ab, %bb.am, %bb.an, %bb.u, %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit, %bb.t, %bb.p, %bb.n, %_ZL10stbi__get8P13stbi__context.exit.thread
  %.3 = phi ptr [ null, %_ZL10stbi__get8P13stbi__context.exit.thread ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit ], [ null, %bb.ar ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.ab ], [ null, %bb.y ], [ null, %bb.w ], [ %i.ft, %bb.at ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbi__mad3sizes_validiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #14 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15, label %_ZL21stbi__mul2sizes_validii.exit

_ZL21stbi__mul2sizes_validii.exit:                ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23 = icmp sgt i32 %0, %i.c
  br i1 %.not23, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15

_ZL21stbi__mul2sizes_validii.exit.thread15:       ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10, label %bb.c, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mul2sizes_validii.exit12.thread20, label %_ZL21stbi__mul2sizes_validii.exit12

_ZL21stbi__mul2sizes_validii.exit12:              ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit12.thread20

_ZL21stbi__mul2sizes_validii.exit12.thread20:     ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12
  %i.h = mul nuw nsw i32 %i.d, %2
  %i.i = xor i32 %3, 2147483647
  %i.j = icmp sle i32 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  br label %_ZL21stbi__mul2sizes_validii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.thread:         ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15, %bb.a, %_ZL21stbi__mul2sizes_validii.exit12.thread20, %_ZL21stbi__mul2sizes_validii.exit12, %_ZL21stbi__mul2sizes_validii.exit
  %i.l = phi i32 [ 0, %_ZL21stbi__mul2sizes_validii.exit12 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit ], [ %i.k, %_ZL21stbi__mul2sizes_validii.exit12.thread20 ], [ 0, %bb.a ], [ 0, %_ZL21stbi__mul2sizes_validii.exit.thread15 ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad3iiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #15 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23.i = icmp sgt i32 %0, %i.c
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i, label %bb.c, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mad3sizes_validiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit

_ZL21stbi__mad3sizes_validiiii.exit:              ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.h = mul nsw i32 %i.d, %2                     ; 2 uses
  %i.i = xor i32 %3, 2147483647
  %.not9 = icmp sgt i32 %i.h, %i.i
  br i1 %.not9, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit
  %i.j = add nsw i32 %i.h, %3
  %4 = sext i32 %i.j to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %4) #42
  br label %_ZL21stbi__mad3sizes_validiiii.exit.thread

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mad3sizes_validiiii.exit, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %_ZL21stbi__mad3sizes_validiiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ], [ null, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL10stbi__skipP13stbi__contexti(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.d, ptr %i.e, align 8, !tbaa !30
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %..thread_crit_edge, label %bb.e

..thread_crit_edge:                               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp sgt i32 %1, %i.o
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %i.j, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = sub nsw i32 %1, %i.o
  tail call void %i.r(ptr noundef %i.t, i32 noundef %i.u)
  br label %bb.g

.thread:                                          ; preds = %..thread_crit_edge, %bb.e
  %i.v = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.k, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = zext nneg i32 %1 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  store ptr %i.y, ptr %i.w, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 -1, 32) i32 @_ZL14stbi__high_bitj(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 65535                   ; 2 uses
  %i.c = lshr i32 %0, 16
  %spec.select = select i1 %i.b, i32 %i.c, i32 %0 ; 3 uses
  %spec.select23 = select i1 %i.b, i32 16, i32 0  ; 2 uses
  %i.d = icmp samesign ugt i32 %spec.select, 255  ; 2 uses
  %i.e = or disjoint i32 %spec.select23, 8
  %i.f = lshr i32 %spec.select, 8
  %.118 = select i1 %i.d, i32 %i.f, i32 %spec.select ; 3 uses
  %.1 = select i1 %i.d, i32 %i.e, i32 %spec.select23 ; 2 uses
  %i.g = icmp samesign ugt i32 %.118, 15          ; 2 uses
  %i.h = or disjoint i32 %.1, 4
  %i.i = lshr i32 %.118, 4
  %.219 = select i1 %i.g, i32 %i.i, i32 %.118     ; 3 uses
  %.2 = select i1 %i.g, i32 %i.h, i32 %.1         ; 2 uses
  %i.j = icmp samesign ugt i32 %.219, 3           ; 2 uses
  %i.k = or disjoint i32 %.2, 2
  %i.l = lshr i32 %.219, 2
  %.320 = select i1 %i.j, i32 %i.l, i32 %.219
  %.3 = select i1 %i.j, i32 %i.k, i32 %.2
  %i.m = icmp samesign ugt i32 %.320, 1
  %i.n = zext i1 %i.m to i32
  %.4 = add nuw nsw i32 %.3, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %.4, %bb.b ], [ -1, %bb.a ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 64) i32 @_ZL14stbi__bitcountj(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = and i32 %0, 1431655765
  %i.b = lshr i32 %0, 1
  %i.c = and i32 %i.b, 1431655765
  %i.d = add nuw i32 %i.c, %i.a                   ; 2 uses
  %i.e = and i32 %i.d, 858993459
  %i.f = lshr i32 %i.d, 2
  %i.g = and i32 %i.f, 858993459
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = add nuw nsw i32 %i.i, %i.h
  %i.k = and i32 %i.j, 252645135                  ; 2 uses
  %i.l = lshr i32 %i.k, 8
  %i.m = add nuw nsw i32 %i.l, %i.k               ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = add nuw nsw i32 %i.n, %i.m
  %i.p = and i32 %i.o, 63
  ret i32 %i.p
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ult i32 %2, 5
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4pbrt8LogFatalIJRA31_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1741, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(31) @.str.26) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = or i32 %3, %2
  %or.cond.not.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not.i.i.i, label %bb.e, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.e
  %i.d = udiv i32 2147483647, %3
  %.not23.i.i = icmp samesign ugt i32 %2, %i.d
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.e
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.f, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.f
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp sgt i32 %i.e, %i.h
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.i = mul nuw nsw i32 %i.e, %4
  %5 = sext i32 %i.i to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %5) #42 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %.preheader194

.preheader194:                                    ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %.lr.ph255, label %._crit_edge

.lr.ph255:                                        ; preds = %.preheader194
  %i.m = shl nsw i32 %1, 3
  %i.n = or disjoint i32 %i.m, %2                 ; 2 uses
  %.11166195 = add i32 %3, -1                     ; 37 uses
  %i.o = icmp sgt i32 %.11166195, -1              ; 12 uses
  switch i32 %i.n, label %bb.h [
    i32 10, label %.lr.ph255.split
    i32 11, label %.lr.ph255.split
    i32 12, label %.lr.ph255.split
    i32 17, label %.lr.ph255.split
    i32 19, label %.lr.ph255.split
    i32 20, label %.lr.ph255.split
    i32 28, label %.lr.ph255.split
    i32 25, label %.lr.ph255.split
    i32 26, label %.lr.ph255.split
    i32 33, label %.lr.ph255.split
    i32 34, label %.lr.ph255.split
    i32 35, label %.lr.ph255.split
  ]

.lr.ph255.split:                                  ; preds = %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255, %.lr.ph255
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.p = zext i32 %3 to i64                       ; 56 uses
  %min.iters.check710 = icmp ult i32 %3, 4
  %min.iters.check712 = icmp ult i32 %3, 16
  %i.q = and i64 %i.p, 12
  %n.vec714 = and i64 %i.p, 4294967280            ; 6 uses
  %i.r = trunc nuw i64 %n.vec714 to i32
  %i.s = sub i32 %.11166195, %i.r
  %i.t = shl nuw nsw i64 %n.vec714, 1
  %i.u = shl nuw nsw i64 %n.vec714, 2
  %cmp.n727 = icmp eq i64 %n.vec714, %i.p
  %min.epilog.iters.check734 = icmp eq i64 %i.q, 0
  %n.vec736 = and i64 %i.p, 4294967292            ; 5 uses
  %i.v = trunc nuw i64 %n.vec736 to i32
  %i.w = sub i32 %.11166195, %i.v
  %i.x = shl nuw nsw i64 %n.vec736, 1
  %i.y = shl nuw nsw i64 %n.vec736, 2
  %cmp.n749 = icmp eq i64 %n.vec736, %i.p
  %min.iters.check673 = icmp ult i32 %3, 5
  %min.iters.check675 = icmp ult i32 %3, 17
  %i.z = and i64 %i.p, 15                         ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 16, i64 %i.z       ; 2 uses
  %n.vec677 = sub nsw i64 %i.p, %i.ab             ; 5 uses
  %i.ac = trunc i64 %n.vec677 to i32
  %i.ad = sub i32 %.11166195, %i.ac
  %i.ae = shl nsw i64 %n.vec677, 2
  %min.epilog.iters.check694 = icmp samesign ult i64 %i.ab, 5
  %i.af = and i64 %i.p, 3                         ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 4, i64 %i.af
  %n.vec696 = sub nsw i64 %i.p, %i.ah             ; 4 uses
  %i.ai = trunc i64 %n.vec696 to i32
  %i.aj = sub i32 %.11166195, %i.ai
  %i.ak = shl nsw i64 %n.vec696, 2
  %min.iters.check632 = icmp ult i32 %3, 8
  %min.iters.check634 = icmp ult i32 %3, 32
  %i.al = and i64 %i.p, 24
  %n.vec636 = and i64 %i.p, 4294967264            ; 6 uses
  %i.am = trunc nuw i64 %n.vec636 to i32
  %i.an = sub i32 %.11166195, %i.am
  %i.ao = shl nuw nsw i64 %n.vec636, 1
  %i.ap = mul nuw nsw i64 %n.vec636, 3
  %cmp.n648 = icmp eq i64 %n.vec636, %i.p
  %min.epilog.iters.check655 = icmp eq i64 %i.al, 0
  %n.vec657 = and i64 %i.p, 4294967288            ; 5 uses
  %i.aq = trunc nuw i64 %n.vec657 to i32
  %i.ar = sub i32 %.11166195, %i.aq
  %i.as = shl nuw nsw i64 %n.vec657, 1
  %i.at = mul nuw nsw i64 %n.vec657, 3
  %cmp.n669 = icmp eq i64 %n.vec657, %i.p
  %min.iters.check593 = icmp ult i32 %3, 8
  %min.iters.check595 = icmp ult i32 %3, 32
  %i.au = and i64 %i.p, 24
  %n.vec597 = and i64 %i.p, 4294967264            ; 6 uses
  %i.av = trunc nuw i64 %n.vec597 to i32
  %i.aw = sub i32 %.11166195, %i.av
  %i.ax = mul nuw nsw i64 %n.vec597, 3
  %cmp.n608 = icmp eq i64 %n.vec597, %i.p
  %min.epilog.iters.check615 = icmp eq i64 %i.au, 0
  %n.vec617 = and i64 %i.p, 4294967288            ; 5 uses
  %i.ay = trunc nuw i64 %n.vec617 to i32
  %i.az = sub i32 %.11166195, %i.ay
  %i.ba = mul nuw nsw i64 %n.vec617, 3
  %cmp.n628 = icmp eq i64 %n.vec617, %i.p
  %min.iters.check552 = icmp ult i32 %3, 8
  %min.iters.check554 = icmp ult i32 %3, 32
  %i.bb = and i64 %i.p, 24
  %n.vec556 = and i64 %i.p, 4294967264            ; 6 uses
  %i.bc = trunc nuw i64 %n.vec556 to i32
  %i.bd = sub i32 %.11166195, %i.bc
  %i.be = shl nuw nsw i64 %n.vec556, 2
  %i.bf = mul nuw nsw i64 %n.vec556, 3
  %cmp.n568 = icmp eq i64 %n.vec556, %i.p
  %min.epilog.iters.check575 = icmp eq i64 %i.bb, 0
  %n.vec577 = and i64 %i.p, 4294967288            ; 5 uses
  %i.bg = trunc nuw i64 %n.vec577 to i32
  %i.bh = sub i32 %.11166195, %i.bg
  %i.bi = shl nuw nsw i64 %n.vec577, 2
  %i.bj = mul nuw nsw i64 %n.vec577, 3
  %cmp.n589 = icmp eq i64 %n.vec577, %i.p
  %min.iters.check513 = icmp ult i32 %3, 8
  %min.iters.check515 = icmp ult i32 %3, 32
  %i.bk = and i64 %i.p, 24
  %n.vec517 = and i64 %i.p, 4294967264            ; 6 uses
  %i.bl = trunc nuw i64 %n.vec517 to i32
  %i.bm = sub i32 %.11166195, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec517, 2
  %i.bo = shl nuw nsw i64 %n.vec517, 1
  %cmp.n528 = icmp eq i64 %n.vec517, %i.p
  %min.epilog.iters.check535 = icmp eq i64 %i.bk, 0
  %n.vec537 = and i64 %i.p, 4294967288            ; 5 uses
  %i.bp = trunc nuw i64 %n.vec537 to i32
  %i.bq = sub i32 %.11166195, %i.bp
  %i.br = shl nuw nsw i64 %n.vec537, 2
  %i.bs = shl nuw nsw i64 %n.vec537, 1
  %cmp.n548 = icmp eq i64 %n.vec537, %i.p
  %min.iters.check478 = icmp ult i32 %3, 9
  %min.iters.check480 = icmp ult i32 %3, 33
  %i.bt = and i64 %i.p, 31                        ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = select i1 %i.bu, i64 32, i64 %i.bt      ; 2 uses
  %n.vec482 = sub nsw i64 %i.p, %i.bv             ; 5 uses
  %i.bw = trunc i64 %n.vec482 to i32
  %i.bx = sub i32 %.11166195, %i.bw
  %i.by = mul nsw i64 %n.vec482, 3
  %i.bz = shl nsw i64 %n.vec482, 1
  %min.epilog.iters.check498 = icmp samesign ult i64 %i.bv, 9
  %i.ca = and i64 %i.p, 7                         ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 8, i64 %i.ca
  %n.vec500 = sub nsw i64 %i.p, %i.cc             ; 4 uses
  %i.cd = trunc i64 %n.vec500 to i32
  %i.ce = sub i32 %.11166195, %i.cd
  %i.cf = mul nsw i64 %n.vec500, 3
  %i.cg = shl nsw i64 %n.vec500, 1
  %min.iters.check436 = icmp ult i32 %3, 17
  %min.iters.check438 = icmp ult i32 %3, 129
  %i.ch = and i64 %i.p, 127                       ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 128, i64 %i.ch     ; 2 uses
  %n.vec440 = sub nsw i64 %i.p, %i.cj             ; 5 uses
  %i.ck = trunc i64 %n.vec440 to i32
  %i.cl = sub i32 %.11166195, %i.ck
  %i.cm = shl nsw i64 %n.vec440, 1
  %min.epilog.iters.check464 = icmp samesign ult i64 %i.cj, 17
  %i.cn = and i64 %i.p, 15                        ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = select i1 %i.co, i64 16, i64 %i.cn
  %n.vec466 = sub nsw i64 %i.p, %i.cp             ; 4 uses
  %i.cq = trunc i64 %n.vec466 to i32
  %i.cr = sub i32 %.11166195, %i.cq
  %i.cs = shl nsw i64 %n.vec466, 1
  %min.iters.check401 = icmp ult i32 %3, 8
  %min.iters.check403 = icmp ult i32 %3, 32
  %i.ct = and i64 %i.p, 24
  %n.vec405 = and i64 %i.p, 4294967264            ; 6 uses
  %i.cu = trunc nuw i64 %n.vec405 to i32
  %i.cv = sub i32 %.11166195, %i.cu
  %i.cw = shl nuw nsw i64 %n.vec405, 2
  %cmp.n414 = icmp eq i64 %n.vec405, %i.p
  %min.epilog.iters.check421 = icmp eq i64 %i.ct, 0
  %n.vec423 = and i64 %i.p, 4294967288            ; 5 uses
  %i.cx = trunc nuw i64 %n.vec423 to i32
  %i.cy = sub i32 %.11166195, %i.cx
  %i.cz = shl nuw nsw i64 %n.vec423, 2
  %cmp.n432 = icmp eq i64 %n.vec423, %i.p
  %min.iters.check366 = icmp ult i32 %3, 8
  %min.iters.check368 = icmp ult i32 %3, 32
  %i.da = and i64 %i.p, 24
  %n.vec370 = and i64 %i.p, 4294967264            ; 6 uses
  %i.db = trunc nuw i64 %n.vec370 to i32
  %i.dc = sub i32 %.11166195, %i.db
  %i.dd = mul nuw nsw i64 %n.vec370, 3
  %cmp.n379 = icmp eq i64 %n.vec370, %i.p
  %min.epilog.iters.check386 = icmp eq i64 %i.da, 0
  %n.vec388 = and i64 %i.p, 4294967288            ; 5 uses
  %i.de = trunc nuw i64 %n.vec388 to i32
  %i.df = sub i32 %.11166195, %i.de
  %i.dg = mul nuw nsw i64 %n.vec388, 3
  %cmp.n397 = icmp eq i64 %n.vec388, %i.p
  %min.iters.check324 = icmp ult i32 %3, 16
  %min.iters.check326 = icmp ult i32 %3, 128
  %i.dh = and i64 %i.p, 112
  %n.vec328 = and i64 %i.p, 4294967168            ; 6 uses
  %i.di = trunc nuw i64 %n.vec328 to i32
  %i.dj = sub i32 %.11166195, %i.di
  %i.dk = shl nuw nsw i64 %n.vec328, 1
  %cmp.n = icmp eq i64 %n.vec328, %i.p
  %min.epilog.iters.check351 = icmp eq i64 %i.dh, 0
  %n.vec353 = and i64 %i.p, 4294967280            ; 5 uses
  %i.dl = trunc nuw i64 %n.vec353 to i32
  %i.dm = sub i32 %.11166195, %i.dl
  %i.dn = shl nuw nsw i64 %n.vec353, 1
  %cmp.n362 = icmp eq i64 %n.vec353, %i.p
  %min.iters.check = icmp ult i32 %3, 9
  %min.iters.check305 = icmp ult i32 %3, 33
  %i.do = and i64 %i.p, 31                        ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 32, i64 %i.do      ; 2 uses
  %n.vec = sub nsw i64 %i.p, %i.dq                ; 5 uses
  %i.dr = trunc i64 %n.vec to i32
  %i.ds = sub i32 %.11166195, %i.dr
  %i.dt = mul nsw i64 %n.vec, 3
  %i.du = shl nsw i64 %n.vec, 2
  %min.epilog.iters.check = icmp samesign ult i64 %i.dq, 9
  %i.dv = and i64 %i.p, 7                         ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  %i.dx = select i1 %i.dw, i64 8, i64 %i.dv
  %n.vec311 = sub nsw i64 %i.p, %i.dx             ; 4 uses
  %i.dy = trunc i64 %n.vec311 to i32
  %i.dz = sub i32 %.11166195, %i.dy
  %i.ea = mul nsw i64 %n.vec311, 3
  %i.eb = shl nsw i64 %n.vec311, 2
  br label %bb.g

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef %0) #40
  %i.ec = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.ec, align 8, !tbaa !19
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph255.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph255.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.ed = trunc nuw nsw i64 %indvars.iv to i32
  %i.ee = mul i32 %3, %i.ed                       ; 2 uses
  %i.ef = mul i32 %i.ee, %1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %i.eg ; 63 uses
  %i.ei = mul i32 %i.ee, %2
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ej ; 63 uses
  switch i32 %i.n, label %.preheader192 [
    i32 10, label %.preheader
    i32 11, label %.preheader172
    i32 12, label %.preheader174
    i32 17, label %.preheader176
    i32 19, label %.preheader178
    i32 20, label %.preheader180
    i32 28, label %.preheader182
    i32 25, label %.preheader184
    i32 26, label %.preheader186
    i32 33, label %.preheader188
    i32 34, label %.preheader190
  ]

.preheader192:                                    ; preds = %bb.g
  br i1 %i.o, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader192
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check305, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.dt
  %i.em = getelementptr i8, ptr %i.eh, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.en = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ek, i64 %i.en
  %i.eo = shl i64 %index, 2
  %next.gep306 = getelementptr i8, ptr %i.eh, i64 %i.eo
  %wide.vec = load <128 x i8>, ptr %next.gep306, align 1, !tbaa !32
  %interleaved.vec = shufflevector <128 x i8> %wide.vec, <128 x i8> poison, <96 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14, i32 16, i32 17, i32 18, i32 20, i32 21, i32 22, i32 24, i32 25, i32 26, i32 28, i32 29, i32 30, i32 32, i32 33, i32 34, i32 36, i32 37, i32 38, i32 40, i32 41, i32 42, i32 44, i32 45, i32 46, i32 48, i32 49, i32 50, i32 52, i32 53, i32 54, i32 56, i32 57, i32 58, i32 60, i32 61, i32 62, i32 64, i32 65, i32 66, i32 68, i32 69, i32 70, i32 72, i32 73, i32 74, i32 76, i32 77, i32 78, i32 80, i32 81, i32 82, i32 84, i32 85, i32 86, i32 88, i32 89, i32 90, i32 92, i32 93, i32 94, i32 96, i32 97, i32 98, i32 100, i32 101, i32 102, i32 104, i32 105, i32 106, i32 108, i32 109, i32 110, i32 112, i32 113, i32 114, i32 116, i32 117, i32 118, i32 120, i32 121, i32 122, i32 124, i32 125, i32 126>
  store <96 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !309

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !104

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.11166198.ph = phi i32 [ %.11166195, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.dz, %vec.epilog.vector.body ]
  %.11197.ph = phi ptr [ %i.ek, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.eq, %vec.epilog.vector.body ]
  %.11153196.ph = phi ptr [ %i.eh, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.vector.body ]
  br label %.lr.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.eq = getelementptr i8, ptr %i.ek, i64 %i.ea
  %i.er = getelementptr i8, ptr %i.eh, i64 %i.eb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index312 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next320, %vec.epilog.vector.body ] ; 3 uses
  %i.es = mul i64 %index312, 3
  %next.gep313 = getelementptr i8, ptr %i.ek, i64 %i.es
  %i.et = shl i64 %index312, 2
  %next.gep314 = getelementptr i8, ptr %i.eh, i64 %i.et
  %wide.vec315 = load <32 x i8>, ptr %next.gep314, align 1, !tbaa !32
  %interleaved.vec319 = shufflevector <32 x i8> %wide.vec315, <32 x i8> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14, i32 16, i32 17, i32 18, i32 20, i32 21, i32 22, i32 24, i32 25, i32 26, i32 28, i32 29, i32 30>
  store <24 x i8> %interleaved.vec319, ptr %next.gep313, align 1, !tbaa !32
  %index.next320 = add nuw i64 %index312, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next320, %n.vec311
  br i1 %i.eu, label %.lr.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !310

.preheader190:                                    ; preds = %bb.g
  br i1 %i.o, label %iter.check731, label %.loopexit

iter.check731:                                    ; preds = %.preheader190
  br i1 %min.iters.check710, label %.lr.ph203.preheader, label %vector.main.loop.iter.check711

vector.main.loop.iter.check711:                   ; preds = %iter.check731
  br i1 %min.iters.check712, label %vec.epilog.ph735, label %vector.ph713

vector.ph713:                                     ; preds = %vector.main.loop.iter.check711
  %i.ev = getelementptr i8, ptr %i.ek, i64 %i.t
  %i.ew = getelementptr i8, ptr %i.eh, i64 %i.u
  br label %vector.body715

vector.body715:                                   ; preds = %vector.ph713, %vector.body715
  %index716 = phi i64 [ 0, %vector.ph713 ], [ %index.next725, %vector.body715 ] ; 3 uses
  %i.ex = shl i64 %index716, 1
  %next.gep717 = getelementptr i8, ptr %i.ek, i64 %i.ex
  %i.ey = shl i64 %index716, 2
  %next.gep718 = getelementptr i8, ptr %i.eh, i64 %i.ey
  %wide.vec719 = load <64 x i8>, ptr %next.gep718, align 1, !tbaa !32 ; 4 uses
  %strided.vec720 = shufflevector <64 x i8> %wide.vec719, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec721 = shufflevector <64 x i8> %wide.vec719, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec722 = shufflevector <64 x i8> %wide.vec719, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec723 = shufflevector <64 x i8> %wide.vec719, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ez = zext <16 x i8> %strided.vec720 to <16 x i16>
  %i.fa = zext <16 x i8> %strided.vec721 to <16 x i16>
  %i.fb = zext <16 x i8> %strided.vec722 to <16 x i16>
  %i.fc = mul nuw nsw <16 x i16> %i.ez, splat (i16 77)
  %i.fd = mul nuw <16 x i16> %i.fa, splat (i16 150)
  %i.fe = add nuw <16 x i16> %i.fd, %i.fc
  %i.ff = mul nuw nsw <16 x i16> %i.fb, splat (i16 29)
  %i.fg = add nuw <16 x i16> %i.fe, %i.ff
  %i.fh = lshr <16 x i16> %i.fg, splat (i16 8)
  %i.fi = trunc nuw <16 x i16> %i.fh to <16 x i8>
  %interleaved.vec724 = shufflevector <16 x i8> %i.fi, <16 x i8> %strided.vec723, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i8> %interleaved.vec724, ptr %next.gep717, align 1, !tbaa !32
  %index.next725 = add nuw i64 %index716, 16      ; 2 uses
  %i.fj = icmp eq i64 %index.next725, %n.vec714
  br i1 %i.fj, label %middle.block726, label %vector.body715, !llvm.loop !311

middle.block726:                                  ; preds = %vector.body715
  br i1 %cmp.n727, label %.loopexit, label %vec.epilog.iter.check733

vec.epilog.iter.check733:                         ; preds = %middle.block726
  br i1 %min.epilog.iters.check734, label %.lr.ph203.preheader, label %vec.epilog.ph735, !prof !106

vec.epilog.ph735:                                 ; preds = %vector.main.loop.iter.check711, %vec.epilog.iter.check733
  %vec.epilog.resume.val728 = phi i64 [ %n.vec714, %vec.epilog.iter.check733 ], [ 0, %vector.main.loop.iter.check711 ]
  %i.fk = getelementptr i8, ptr %i.ek, i64 %i.x
  %i.fl = getelementptr i8, ptr %i.eh, i64 %i.y
  br label %vec.epilog.vector.body737

vec.epilog.vector.body737:                        ; preds = %vec.epilog.vector.body737, %vec.epilog.ph735
  %index738 = phi i64 [ %vec.epilog.resume.val728, %vec.epilog.ph735 ], [ %index.next747, %vec.epilog.vector.body737 ] ; 3 uses
  %i.fm = shl i64 %index738, 1
  %next.gep739 = getelementptr i8, ptr %i.ek, i64 %i.fm
  %i.fn = shl i64 %index738, 2
  %next.gep740 = getelementptr i8, ptr %i.eh, i64 %i.fn
  %wide.vec741 = load <16 x i8>, ptr %next.gep740, align 1, !tbaa !32 ; 4 uses
  %strided.vec742 = shufflevector <16 x i8> %wide.vec741, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec743 = shufflevector <16 x i8> %wide.vec741, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec744 = shufflevector <16 x i8> %wide.vec741, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec745 = shufflevector <16 x i8> %wide.vec741, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fo = zext <4 x i8> %strided.vec742 to <4 x i16>
  %i.fp = zext <4 x i8> %strided.vec743 to <4 x i16>
  %i.fq = zext <4 x i8> %strided.vec744 to <4 x i16>
  %i.fr = mul nuw nsw <4 x i16> %i.fo, splat (i16 77)
  %i.fs = mul nuw <4 x i16> %i.fp, splat (i16 150)
  %i.ft = add nuw <4 x i16> %i.fs, %i.fr
  %i.fu = mul nuw nsw <4 x i16> %i.fq, splat (i16 29)
  %i.fv = add nuw <4 x i16> %i.ft, %i.fu
  %i.fw = lshr <4 x i16> %i.fv, splat (i16 8)
  %i.fx = trunc nuw <4 x i16> %i.fw to <4 x i8>
  %interleaved.vec746 = shufflevector <4 x i8> %i.fx, <4 x i8> %strided.vec745, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec746, ptr %next.gep739, align 1, !tbaa !32
  %index.next747 = add nuw i64 %index738, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next747, %n.vec736
  br i1 %i.fy, label %vec.epilog.middle.block748, label %vec.epilog.vector.body737, !llvm.loop !312

vec.epilog.middle.block748:                       ; preds = %vec.epilog.vector.body737
  br i1 %cmp.n749, label %.loopexit, label %.lr.ph203.preheader

.lr.ph203.preheader:                              ; preds = %iter.check731, %vec.epilog.iter.check733, %vec.epilog.middle.block748
  %.10165202.ph = phi i32 [ %.11166195, %iter.check731 ], [ %i.s, %vec.epilog.iter.check733 ], [ %i.w, %vec.epilog.middle.block748 ]
  %.10201.ph = phi ptr [ %i.ek, %iter.check731 ], [ %i.ev, %vec.epilog.iter.check733 ], [ %i.fk, %vec.epilog.middle.block748 ]
  %.10152200.ph = phi ptr [ %i.eh, %iter.check731 ], [ %i.ew, %vec.epilog.iter.check733 ], [ %i.fl, %vec.epilog.middle.block748 ]
  br label %.lr.ph203

.preheader188:                                    ; preds = %bb.g
  br i1 %i.o, label %iter.check691, label %.loopexit
end_hunk_5
begin_hunk_6_@_ZL19stbi__build_huffmanP13stbi__huffmanPi:.preheader64

bb.r:                                             ; preds = %._crit_edge74, %bb.p
  %.4 = phi i32 [ %i.fe, %._crit_edge74 ], [ %.25578, %bb.p ] ; 3 uses
  %.2 = phi i32 [ %i.ex, %._crit_edge74 ], [ %.079, %bb.p ] ; 2 uses
  %i.fh = trunc i64 %indvars.iv96 to i32
  %i.fi = sub nuw nsw i32 16, %i.fh
  %i.fj = shl i32 %.2, %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv96
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !20
  %i.fl = shl i32 %.2, 1                          ; 3 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 6 uses
  %i.fm = sub i32 %.4, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.next97
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !20
  %i.fo = sext i32 %.4 to i64                     ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.a, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !32
  %i.fr = zext i8 %i.fq to i64
  %i.fs = icmp eq i64 %indvars.iv.next97, %i.fr
  br i1 %i.fs, label %.lr.ph73.1, label %bb.s

.lr.ph73.1:                                       ; preds = %bb.r, %.lr.ph73.1
  %indvars.iv92.1 = phi i64 [ %indvars.iv.next93.1, %.lr.ph73.1 ], [ %i.fo, %bb.r ] ; 2 uses
  %.172.1 = phi i32 [ %i.ft, %.lr.ph73.1 ], [ %i.fl, %bb.r ] ; 3 uses
  %i.ft = add i32 %.172.1, 1                      ; 2 uses
  %i.fu = trunc i32 %.172.1 to i16
  %indvars.iv.next93.1 = add nsw i64 %indvars.iv92.1, 1 ; 3 uses
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %indvars.iv92.1
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !38
  %i.fw = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next93.1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !32
  %i.fy = zext i8 %i.fx to i64
  %i.fz = icmp eq i64 %indvars.iv.next97, %i.fy
  br i1 %i.fz, label %.lr.ph73.1, label %._crit_edge74.1, !llvm.loop !462

._crit_edge74.1:                                  ; preds = %.lr.ph73.1
  %i.ga = trunc nsw i64 %indvars.iv.next93.1 to i32
  %i.gb = trunc nuw nsw i64 %indvars.iv.next97 to i32
  %.highbits.1 = lshr i32 %.172.1, %i.gb
  %.not.1 = icmp eq i32 %.highbits.1, 0
  br i1 %.not.1, label %bb.s, label %bb.q

bb.s:                                             ; preds = %._crit_edge74.1, %bb.r
  %.4.1 = phi i32 [ %i.ga, %._crit_edge74.1 ], [ %.4, %bb.r ] ; 5 uses
  %.2.1 = phi i32 [ %i.ft, %._crit_edge74.1 ], [ %i.fl, %bb.r ] ; 2 uses
  %i.gc = trunc i64 %indvars.iv.next97 to i32
  %i.gd = sub nuw nsw i32 16, %i.gc
  %i.ge = shl i32 %.2.1, %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next97
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !20
  %i.gg = shl i32 %.2.1, 1
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next97.1, 17
  br i1 %exitcond.not.1, label %bb.t, label %bb.p, !llvm.loop !463

bb.t:                                             ; preds = %bb.s
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store i32 -1, ptr %i.gh, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %0, i8 -1, i64 512, i1 false)
  %i.gi = icmp sgt i32 %.4.1, 0
  br i1 %i.gi, label %.lr.ph83, label %.loopexit63

.lr.ph83:                                         ; preds = %bb.t
  %wide.trip.count = zext nneg i32 %.4.1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gj = icmp eq i32 %.4.1, 1
  br i1 %i.gj, label %.epil.preheader, label %.lr.ph83.new

.lr.ph83.new:                                     ; preds = %.lr.ph83
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.1, %.lr.ph83.new
  %indvars.iv104 = phi i64 [ 0, %.lr.ph83.new ], [ %indvars.iv.next105.1, %.loopexit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph83.new ], [ %niter.next.1, %.loopexit.1 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv104
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !32  ; 2 uses
  %i.gm = icmp ult i8 %i.gl, 10
  br i1 %i.gm, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvars.iv104
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !38
  %i.gp = zext i16 %i.go to i32
  %narrow = sub nuw nsw i8 9, %i.gl
  %i.gq = zext nneg i8 %narrow to i32             ; 2 uses
  %i.gr = shl nuw nsw i32 %i.gp, %i.gq
  %i.gs = trunc i64 %indvars.iv104 to i8
  %i.gt = zext nneg i32 %i.gr to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.gt
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.w
  %indvars.iv100 = phi i64 [ 0, %bb.v ], [ %indvars.iv.next101, %bb.w ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv100
  store i8 %i.gs, ptr %gep, align 1, !tbaa !32
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.gu = trunc nuw nsw i64 %indvars.iv.next101 to i32
  %.258.highbits = lshr i32 %i.gu, %i.gq
  %i.gv = icmp eq i32 %.258.highbits, 0
  br i1 %i.gv, label %bb.w, label %.loopexit, !llvm.loop !464

.loopexit:                                        ; preds = %bb.w, %bb.u
  %indvars.iv.next105 = or disjoint i64 %indvars.iv104, 1 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next105
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !32  ; 2 uses
  %i.gy = icmp ult i8 %i.gx, 10
  br i1 %i.gy, label %bb.x, label %.loopexit.1

bb.x:                                             ; preds = %.loopexit
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvars.iv.next105
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !38
  %i.hb = zext i16 %i.ha to i32
  %narrow.1 = sub nuw nsw i8 9, %i.gx
  %i.hc = zext nneg i8 %narrow.1 to i32           ; 2 uses
  %i.hd = shl nuw nsw i32 %i.hb, %i.hc
  %i.he = trunc i64 %indvars.iv.next105 to i8
  %i.hf = zext nneg i32 %i.hd to i64
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %0, i64 %i.hf
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %indvars.iv100.1 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next101.1, %bb.y ] ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %indvars.iv100.1
  store i8 %i.he, ptr %gep.1, align 1, !tbaa !32
  %indvars.iv.next101.1 = add nuw nsw i64 %indvars.iv100.1, 1 ; 2 uses
  %i.hg = trunc nuw nsw i64 %indvars.iv.next101.1 to i32
  %.258.highbits.1 = lshr i32 %i.hg, %i.hc
  %i.hh = icmp eq i32 %.258.highbits.1, 0
  br i1 %i.hh, label %bb.y, label %.loopexit.1, !llvm.loop !464

.loopexit.1:                                      ; preds = %bb.y, %.loopexit
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv104, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit63.loopexit.unr-lcssa, label %bb.u, !llvm.loop !465

.loopexit63.loopexit.unr-lcssa:                   ; preds = %.loopexit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit63, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit63.loopexit.unr-lcssa, %.lr.ph83
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next105.1, %.loopexit63.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod110 = trunc i32 %.4.1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv104.epil.init
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !32  ; 2 uses
  %i.hk = icmp ult i8 %i.hj, 10
  br i1 %i.hk, label %bb.z, label %.loopexit63

bb.z:                                             ; preds = %.epil.preheader
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvars.iv104.epil.init
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !38
  %i.hn = zext i16 %i.hm to i32
  %narrow.epil = sub nuw nsw i8 9, %i.hj
  %i.ho = zext nneg i8 %narrow.epil to i32        ; 2 uses
  %i.hp = shl nuw nsw i32 %i.hn, %i.ho
  %i.hq = trunc i64 %indvars.iv104.epil.init to i8
  %i.hr = zext nneg i32 %i.hp to i64
  %invariant.gep.epil = getelementptr inbounds nuw i8, ptr %0, i64 %i.hr
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv100.epil = phi i64 [ 0, %bb.z ], [ %indvars.iv.next101.epil, %bb.aa ] ; 2 uses
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.epil, i64 %indvars.iv100.epil
  store i8 %i.hq, ptr %gep.epil, align 1, !tbaa !32
  %indvars.iv.next101.epil = add nuw nsw i64 %indvars.iv100.epil, 1 ; 2 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv.next101.epil to i32
  %.258.highbits.epil = lshr i32 %i.hs, %i.ho
  %i.ht = icmp eq i32 %.258.highbits.epil, 0
  br i1 %i.ht, label %bb.aa, label %.loopexit63, !llvm.loop !464

.loopexit63:                                      ; preds = %.loopexit63.loopexit.unr-lcssa, %bb.aa, %.epil.preheader, %bb.t, %bb.q
  %.061 = phi i32 [ 0, %bb.q ], [ 1, %bb.t ], [ 1, %.epil.preheader ], [ 1, %bb.aa ], [ 1, %.loopexit63.loopexit.unr-lcssa ]
  ret i32 %.061
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad2iii(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #15 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad2sizes_validiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not10.i = icmp sgt i32 %0, %i.c
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i
  %i.d = mul nuw nsw i32 %1, %0                   ; 2 uses
  %i.e = xor i32 %2, 2147483647
  %.not7 = icmp sgt i32 %i.d, %i.e
  br i1 %.not7, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.f = add nsw i32 %i.d, %2
  %3 = sext i32 %i.f to i64
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %3) #42
  br label %_ZL21stbi__mad2sizes_validiii.exit.thread

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mad2sizes_validiii.exit, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %_ZL21stbi__mad2sizes_validiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL26stbi__free_jpeg_componentsP10stbi__jpegii(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.h) #40
  store ptr null, ptr %i.g, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr null, ptr %i.i, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.k) #40
  store ptr null, ptr %i.j, align 8, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef ptr @_ZL14resample_row_1PhS_S_ii(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone returned captures(ret: address, provenance) %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4) #14 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL22stbi__resample_row_v_2PhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #31 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.e, -32
  %i.f = sub i64 %i.c, %i.b
  %diff.check12 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i32 %3, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <32 x i8>, ptr %i.h, align 1, !tbaa !32
  %i.i = zext <32 x i8> %wide.load to <32 x i16>
  %i.j = mul nuw nsw <32 x i16> %i.i, splat (i16 3)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load14 = load <32 x i8>, ptr %i.k, align 1, !tbaa !32
  %i.l = zext <32 x i8> %wide.load14 to <32 x i16>
  %i.m = add nuw nsw <32 x i16> %i.l, splat (i16 2)
  %i.n = add nuw nsw <32 x i16> %i.m, %i.j
  %i.o = lshr <32 x i16> %i.n, splat (i16 2)
  %i.p = trunc nuw <32 x i16> %i.o to <32 x i8>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <32 x i8> %i.p, ptr %i.q, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !466

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.s, align 1, !tbaa !32
  %i.t = zext <8 x i8> %wide.load17 to <8 x i16>
  %i.u = mul nuw nsw <8 x i16> %i.t, splat (i16 3)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %index16
  %wide.load18 = load <8 x i8>, ptr %i.v, align 1, !tbaa !32
  %i.w = zext <8 x i8> %wide.load18 to <8 x i16>
  %i.x = add nuw nsw <8 x i16> %i.w, splat (i16 2)
  %i.y = add nuw nsw <8 x i16> %i.x, %i.u
  %i.z = lshr <8 x i16> %i.y, splat (i16 2)
  %i.aa = trunc nuw <8 x i16> %i.z to <8 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !32
  %index.next19 = add nuw i64 %index16, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !467

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !32
  %i.af = zext i8 %i.ae to i16
  %i.ag = mul nuw nsw i16 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.prol
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !32
  %i.aj = zext i8 %i.ai to i16
  %i.ak = add nuw nsw i16 %i.aj, 2
  %i.al = add nuw nsw i16 %i.ak, %i.ag
  %i.am = lshr i16 %i.al, 2
  %i.an = trunc nuw i16 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !468

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = zext i8 %i.as to i16
  %i.au = mul nuw nsw i16 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !32
  %i.ax = zext i8 %i.aw to i16
end_hunk_6
begin_hunk_7_@_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_:bb.a
  %i.gk = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.gl = tail call noundef i32 %i.gj(ptr noundef %i.gk), !inline_history !502
  %.not6.i.i60 = icmp eq i32 %i.gl, 0
  br i1 %.not6.i.i60, label %_ZL12stbi__at_eofP13stbi__context.exit.thread.i63, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = load i32, ptr %i.cy, align 8, !tbaa !27
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %_ZL20stbi__pnm_getintegerP13stbi__contextPc.exit70, label %_ZL12stbi__at_eofP13stbi__context.exit.i61

_ZL12stbi__at_eofP13stbi__context.exit.i61:       ; preds = %bb.ai, %_ZL10stbi__get8P13stbi__context.exit.i68
  %i.go = load ptr, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.gp = load ptr, ptr %i.g, align 8, !tbaa !33
  %.not14.i62 = icmp uge ptr %i.go, %i.gp
  %i.gq = add i8 %.0.i8.i6979, -58
  %i.gr = icmp ult i8 %i.gq, -10
  %or.cond87 = select i1 %.not14.i62, i1 true, i1 %i.gr
  br i1 %or.cond87, label %_ZL20stbi__pnm_getintegerP13stbi__contextPc.exit70, label %.thread118

.thread118:                                       ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.i61
  %i.gs = mul nsw i32 %.0.i58, 10
  %i.gt = zext nneg i8 %.0.i8.i6979 to i32
  %i.gu = add i32 %i.gs, -48
  %i.gv = add i32 %i.gu, %i.gt
  br label %bb.ak

_ZL12stbi__at_eofP13stbi__context.exit.thread.i63: ; preds = %bb.ah
  %.old85 = add i8 %.0.i8.i6979, -58
  %.old86 = icmp ult i8 %.old85, -10
  br i1 %.old86, label %_ZL20stbi__pnm_getintegerP13stbi__contextPc.exit70, label %bb.aj

bb.aj:                                            ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread.i63
  %.pre91 = load ptr, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %.pre92 = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.gw = icmp ult ptr %.pre91, %.pre92
  %i.gx = mul nsw i32 %.0.i58, 10
  %i.gy = zext nneg i8 %.0.i8.i6979 to i32
  %i.gz = add i32 %i.gx, -48
  %i.ha = add i32 %i.gz, %i.gy                    ; 3 uses
  br i1 %i.gw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread118, %bb.aj
  %i.hb = phi i32 [ %i.gv, %.thread118 ], [ %i.ha, %bb.aj ]
  %i.hc = phi ptr [ %i.go, %.thread118 ], [ %.pre91, %bb.aj ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  store ptr %i.hd, ptr %i.d, align 8, !tbaa !30
  %i.he = load i8, ptr %i.hc, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit.i68.backedge

bb.al:                                            ; preds = %bb.aj
  %i.hf = load i32, ptr %i.cy, align 8, !tbaa !27
  %.not.i7.i64 = icmp eq i32 %i.hf, 0
  br i1 %.not.i7.i64, label %_ZL10stbi__get8P13stbi__context.exit.i68.backedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hg = load ptr, ptr %i.cz, align 8, !tbaa !31
  %i.hh = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.hi = load i32, ptr %i.dd, align 4, !tbaa !26
  %i.hj = tail call noundef i32 %i.hg(ptr noundef %i.hh, ptr noundef nonnull %i.dc, i32 noundef %i.hi), !inline_history !503 ; 2 uses
  %i.hk = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.hl = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = load i32, ptr %i.de, align 8, !tbaa !28
  %i.hr = add nsw i32 %i.hq, %i.hp
  store i32 %i.hr, ptr %i.de, align 8, !tbaa !28
  %i.hs = icmp eq i32 %i.hj, 0
  br i1 %i.hs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.cy, align 8, !tbaa !27
  store i8 0, ptr %i.dc, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i66

bb.ao:                                            ; preds = %bb.am
  %i.ht = sext i32 %i.hj to i64
  %i.hu = getelementptr inbounds i8, ptr %i.dc, i64 %i.ht
  %.pre.i.i65 = load i8, ptr %i.dc, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i66

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i66: ; preds = %bb.ao, %bb.an
  %i.hv = phi i8 [ 0, %bb.an ], [ %.pre.i.i65, %bb.ao ]
  %.sink.i.i.i67 = phi ptr [ %i.df, %bb.an ], [ %i.hu, %bb.ao ]
  store ptr %.sink.i.i.i67, ptr %i.g, align 8, !tbaa !33
  store ptr %i.df, ptr %i.d, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit.i68.backedge

_ZL10stbi__get8P13stbi__context.exit.i68.backedge: ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i66, %bb.al, %bb.ak
  %.0.i8.i6979.be = phi i8 [ %i.he, %bb.ak ], [ %i.hv, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i66 ], [ 0, %bb.al ]
  %.0.i58.be = phi i32 [ %i.hb, %bb.ak ], [ %i.ha, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i66 ], [ %i.ha, %bb.al ]
  br label %_ZL10stbi__get8P13stbi__context.exit.i68, !llvm.loop !504

_ZL20stbi__pnm_getintegerP13stbi__contextPc.exit70: ; preds = %bb.ai, %_ZL12stbi__at_eofP13stbi__context.exit.i61, %_ZL12stbi__at_eofP13stbi__context.exit.thread.i63
  %i.hw = icmp sgt i32 %.0.i58, 65535
  br i1 %i.hw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZL20stbi__pnm_getintegerP13stbi__contextPc.exit70
  %i.hx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.73, ptr %i.hx, align 8, !tbaa !19
  br label %bb.ar

bb.aq:                                            ; preds = %_ZL20stbi__pnm_getintegerP13stbi__contextPc.exit70
  %i.hy = icmp sgt i32 %.0.i58, 255
  %. = select i1 %i.hy, i32 16, i32 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %_ZL10stbi__get8P13stbi__context.exit37.thread
  %.0 = phi i32 [ 0, %_ZL10stbi__get8P13stbi__context.exit37.thread ], [ 0, %bb.ap ], [ %., %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbi__mad4sizes_validiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -268435456, 268435456) %3) unnamed_addr #14 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread24, label %_ZL21stbi__mul2sizes_validii.exit

_ZL21stbi__mul2sizes_validii.exit:                ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not37 = icmp sgt i32 %0, %i.c
  br i1 %.not37, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24

_ZL21stbi__mul2sizes_validii.exit.thread24:       ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i16 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16, label %bb.c, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mul2sizes_validii.exit18.thread29, label %_ZL21stbi__mul2sizes_validii.exit18

_ZL21stbi__mul2sizes_validii.exit18:              ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit18.thread29

_ZL21stbi__mul2sizes_validii.exit18.thread29:     ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit18
  %i.h = mul nuw nsw i32 %i.d, %2                 ; 2 uses
  %i.i = or i32 %3, %i.h
  %or.cond.not.i19 = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i19, label %bb.d, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %_ZL21stbi__mul2sizes_validii.exit21.thread34, label %_ZL21stbi__mul2sizes_validii.exit21

_ZL21stbi__mul2sizes_validii.exit21:              ; preds = %bb.d
  %i.k = udiv i32 2147483647, %3
  %.not38 = icmp sgt i32 %i.h, %i.k
  br i1 %.not38, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit21.thread34

_ZL21stbi__mul2sizes_validii.exit21.thread34:     ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit21
  br label %_ZL21stbi__mul2sizes_validii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.thread:         ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29, %_ZL21stbi__mul2sizes_validii.exit.thread24, %bb.a, %_ZL21stbi__mul2sizes_validii.exit21.thread34, %_ZL21stbi__mul2sizes_validii.exit21, %_ZL21stbi__mul2sizes_validii.exit18, %_ZL21stbi__mul2sizes_validii.exit
  %i.l = phi i32 [ 0, %_ZL21stbi__mul2sizes_validii.exit21 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit18 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit ], [ 1, %_ZL21stbi__mul2sizes_validii.exit21.thread34 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit.thread24 ], [ 0, %bb.a ], [ 0, %_ZL21stbi__mul2sizes_validii.exit18.thread29 ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad4iiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -268435456, 268435456) %3) unnamed_addr #15 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not37.i = icmp sgt i32 %0, %i.c
  br i1 %.not37.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i16.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i, label %bb.c, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i, label %_ZL21stbi__mul2sizes_validii.exit18.i

_ZL21stbi__mul2sizes_validii.exit18.i:            ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i, %bb.c
  %i.h = mul nsw i32 %i.d, %2                     ; 3 uses
  %i.i = or i32 %3, %i.h
  %or.cond.not.i19.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i19.i, label %bb.d, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %_ZL21stbi__mad4sizes_validiiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i

_ZL21stbi__mul2sizes_validii.exit21.i:            ; preds = %bb.d
  %i.k = udiv i32 2147483647, %3
  %.not38.i = icmp sgt i32 %i.h, %i.k
  br i1 %.not38.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mad4sizes_validiiiii.exit

_ZL21stbi__mad4sizes_validiiiii.exit:             ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i, %bb.d
  %i.l = mul nsw i32 %i.h, %3
  %4 = sext i32 %i.l to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %4) #42
  br label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

_ZL21stbi__mad4sizes_validiiiii.exit.thread:      ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.i, %_ZL21stbi__mul2sizes_validii.exit21.i, %_ZL21stbi__mad4sizes_validiiiii.exit
  %.0 = phi ptr [ %i.m, %_ZL21stbi__mad4sizes_validiiiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit21.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit18.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.thread24.i ], [ null, %bb.a ], [ null, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL10stbi__getnP13stbi__contextPhi(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre35 = load ptr, ptr %.phi.trans.insert34, align 8, !tbaa !33
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp sgt i32 %2, %i.j
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %sext = shl i64 %i.i, 32
  %i.l = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.f, i64 %i.l, i1 false)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.q = sub nsw i32 %2, %i.j                     ; 2 uses
  %i.r = tail call noundef i32 %i.m(ptr noundef %i.o, ptr noundef nonnull %i.p, i32 noundef %i.q)
  %i.s = icmp eq i32 %i.r, %i.q
  %i.t = zext i1 %i.s to i32
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !33
  store ptr %i.u, ptr %i.e, align 8, !tbaa !30
  br label %bb.e

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.v = phi ptr [ %.pre35, %..thread_crit_edge ], [ %i.d, %bb.b ]
  %i.w = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  %i.x = sext i32 %2 to i64                       ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %.not32 = icmp ugt ptr %i.y, %i.v
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.w, i64 %i.x, i1 false)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.x
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.thread, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ %i.t, %bb.c ], [ 0, %.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 4 uses
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.backedge, %bb.a
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZL12stbi__at_eofP13stbi__context.exit, label %bb.b

bb.b:                                             ; preds = %.critedge2
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.o = tail call noundef i32 %i.m(ptr noundef %i.n), !inline_history !7
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %_ZL12stbi__at_eofP13stbi__context.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.a, align 8, !tbaa !27
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %_ZL12stbi__at_eofP13stbi__context.exit

_ZL12stbi__at_eofP13stbi__context.exit:           ; preds = %.critedge2, %bb.c
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !33
  %.not51 = icmp ult ptr %i.r, %i.s
  br i1 %.not51, label %_ZL12stbi__at_eofP13stbi__context.exit.thread, label %.critedge

_ZL12stbi__at_eofP13stbi__context.exit.thread:    ; preds = %bb.b, %_ZL12stbi__at_eofP13stbi__context.exit
  %i.t = load i8, ptr %1, align 1, !tbaa !32
  switch i8 %i.t, label %.critedge [
    i8 32, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 12, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 11, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 10, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 9, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 13, label %_ZL17stbi__pnm_isspacec.exit.thread
  ]

_ZL17stbi__pnm_isspacec.exit.thread:              ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.w = icmp ult ptr %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__pnm_isspacec.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.x, ptr %i.e, align 8, !tbaa !30
  %i.y = load i8, ptr %i.u, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.e:                                             ; preds = %_ZL17stbi__pnm_isspacec.exit.thread
  %i.z = load i32, ptr %i.a, align 8, !tbaa !27
  %.not.i19 = icmp eq i32 %i.z, 0
  br i1 %.not.i19, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !26
  %i.ad = tail call noundef i32 %i.aa(ptr noundef %i.ab, ptr noundef nonnull %i.g, i32 noundef %i.ac), !inline_history !6 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !28
  %i.al = add nsw i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.j, align 8, !tbaa !28
  %i.am = icmp eq i32 %i.ad, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.a, align 8, !tbaa !27
  store i8 0, ptr %i.g, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.h:                                             ; preds = %bb.f
  %i.an = sext i32 %i.ad to i64
  %i.ao = getelementptr inbounds i8, ptr %i.g, i64 %i.an
  %.pre.i = load i8, ptr %i.g, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.h, %bb.g
  %i.ap = phi i8 [ 0, %bb.g ], [ %.pre.i, %bb.h ]
  %.sink.i.i = phi ptr [ %i.k, %bb.g ], [ %i.ao, %bb.h ]
  store ptr %.sink.i.i, ptr %i.f, align 8, !tbaa !33
  store ptr %i.k, ptr %i.e, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.d, %bb.e, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %.0.i20 = phi i8 [ %i.y, %bb.d ], [ %i.ap, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.e ]
  store i8 %.0.i20, ptr %1, align 1, !tbaa !32
  br label %.critedge2.backedge

.critedge2.backedge:                              ; preds = %_ZL12stbi__at_eofP13stbi__context.exit28, %_ZL12stbi__at_eofP13stbi__context.exit28.thread, %_ZL12stbi__at_eofP13stbi__context.exit28.thread, %bb.l, %_ZL10stbi__get8P13stbi__context.exit
  br label %.critedge2, !llvm.loop !505

.critedge:                                        ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread, %bb.c, %_ZL12stbi__at_eofP13stbi__context.exit
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !31
  %.not.i21 = icmp eq ptr %i.aq, null
  br i1 %.not.i21, label %_ZL12stbi__at_eofP13stbi__context.exit24, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.at = tail call noundef i32 %i.ar(ptr noundef %i.as), !inline_history !7
  %.not6.i22 = icmp eq i32 %i.at, 0
  br i1 %.not6.i22, label %_ZL12stbi__at_eofP13stbi__context.exit24.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.a, align 8, !tbaa !27
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZL12stbi__at_eofP13stbi__context.exit24.thread43, label %_ZL12stbi__at_eofP13stbi__context.exit24

_ZL12stbi__at_eofP13stbi__context.exit24:         ; preds = %.critedge, %bb.j
end_hunk_7
