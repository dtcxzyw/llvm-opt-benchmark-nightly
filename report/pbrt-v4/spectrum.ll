Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/spectrum?download=true
inline.NumInlined: 2245
inline.NumDeleted: 449
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZNK4pbrt8Spectrum8ToStringB5cxx11Ev:bb.a
  %i.ad = icmp eq ptr %i.ac, %i.z
  br i1 %i.ad, label %common.resume, label %common.resume.sink.split

"_ZNK4pbrt13TaggedPointerIJNS_16ConstantSpectrumENS_22DenselySampledSpectrumENS_23PiecewiseLinearSpectrumENS_17RGBAlbedoSpectrumENS_20RGBUnboundedSpectrumENS_21RGBIlluminantSpectrumENS_17BlackbodySpectrumEEE11DispatchCPUIRZNKS_8Spectrum8ToStringB5cxx11EvE3$_0EEDcOT_.exit": ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c, %._crit_edge.i.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK4pbrt23PiecewiseLinearSpectrumclEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 5 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !25
  %i.g = fcmp olt float %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.b
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load float, ptr %i.i, align 4, !tbaa !25
  %i.k = fcmp ogt float %1, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.b, -2                         ; 3 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %"_ZN4pbrt12FindIntervalIZNKS_23PiecewiseLinearSpectrumclEfE3$_0EEmmRKT_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.02.i = phi i64 [ %.fr.i, %.lr.ph.i ], [ 1, %bb.d ] ; 2 uses
  %.0151.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.n = lshr i64 %.0151.i, 1                     ; 3 uses
  %i.o = add i64 %i.n, %.02.i                     ; 2 uses
  %i.p = shl i64 %i.o, 32
  %i.q = ashr exact i64 %i.p, 30
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !25
  %i.t = fcmp ole float %i.s, %1                  ; 2 uses
  %i.u = add i64 %i.o, 1
  %i.v = select i1 %i.t, i64 %i.u, i64 %.02.i
  %.fr.i = freeze i64 %i.v                        ; 3 uses
  %.neg.i = xor i64 %i.n, -1
  %i.w = add nsw i64 %.0151.i, %.neg.i
  %i.x = select i1 %i.t, i64 %i.w, i64 %i.n       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.z = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.l)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %i.aa = shl i64 %..i.i, 32
  %i.ab = select i1 %.inv.i, i64 %i.aa, i64 0
  br label %"_ZN4pbrt12FindIntervalIZNKS_23PiecewiseLinearSpectrumclEfE3$_0EEmmRKT_.exit"

"_ZN4pbrt12FindIntervalIZNKS_23PiecewiseLinearSpectrumclEfE3$_0EEmmRKT_.exit": ; preds = %bb.d, %._crit_edge.i
  %sext = phi i64 [ %i.ab, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.ac = ashr exact i64 %sext, 32                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = fsub float %1, %i.ae
  %sext7 = add i64 %sext, 4294967296
  %i.ag = ashr exact i64 %sext7, 32               ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !25
  %i.aj = fsub float %i.ai, %i.ae
  %i.ak = fdiv float %i.af, %i.aj                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ac
  %i.ao = load float, ptr %i.an, align 4, !tbaa !25
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ag
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !25
  %i.ar = fsub float 1.000000e+00, %i.ak
  %i.as = fmul float %i.ao, %i.ar
  %i.at = fmul float %i.ak, %i.aq
  %i.au = fadd float %i.as, %i.at
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %"_ZN4pbrt12FindIntervalIZNKS_23PiecewiseLinearSpectrumclEfE3$_0EEmmRKT_.exit"
  %.0 = phi float [ %i.au, %"_ZN4pbrt12FindIntervalIZNKS_23PiecewiseLinearSpectrumclEfE3$_0EEmmRKT_.exit" ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK4pbrt23PiecewiseLinearSpectrum8MaxValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 6 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not17.i.i = icmp eq i64 %i.b, 1
  br i1 %.not17.i.i, label %_ZSt11max_elementIPKfET_S2_S2_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.pre.i.i = load float, ptr %i.e, align 4, !tbaa !25 ; 2 uses
  %i.h = add i64 %.idx, -8                        ; 2 uses
  %i.i = lshr exact i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.k = phi float [ %i.p, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.prol ], [ %i.g, %.lr.ph.preheader.i.i ] ; 3 uses
  %.018.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.e, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.m = load float, ptr %i.l, align 4, !tbaa !25 ; 2 uses
  %i.n = fcmp olt float %i.k, %i.m                ; 2 uses
  %spec.select.i.i.prol = select i1 %i.n, ptr %i.l, ptr %.018.i.i.prol ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.p = select i1 %i.n, float %i.m, float %i.k   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !126

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi float [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.p, %.lr.ph.i.i.prol ]
  %.unr3 = phi ptr [ %i.g, %.lr.ph.preheader.i.i ], [ %i.o, %.lr.ph.i.i.prol ]
  %.018.i.i.unr = phi ptr [ %i.e, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.h, 28
  br i1 %i.q, label %_ZSt11max_elementIPKfET_S2_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.r = phi float [ %i.ay, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.s = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.unr3, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %.018.i.i = phi ptr [ %spec.select.i.i.7, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.t = load float, ptr %i.s, align 4, !tbaa !25 ; 2 uses
  %i.u = fcmp olt float %i.r, %i.t                ; 2 uses
  %spec.select.i.i = select i1 %i.u, ptr %i.s, ptr %.018.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.w = select i1 %i.u, float %i.t, float %i.r   ; 2 uses
  %i.x = load float, ptr %i.v, align 4, !tbaa !25 ; 2 uses
  %i.y = fcmp olt float %i.w, %i.x                ; 2 uses
  %spec.select.i.i.1 = select i1 %i.y, ptr %i.v, ptr %spec.select.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.aa = select i1 %i.y, float %i.x, float %i.w  ; 2 uses
  %i.ab = load float, ptr %i.z, align 4, !tbaa !25 ; 2 uses
  %i.ac = fcmp olt float %i.aa, %i.ab             ; 2 uses
  %spec.select.i.i.2 = select i1 %i.ac, ptr %i.z, ptr %spec.select.i.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.ae = select i1 %i.ac, float %i.ab, float %i.aa ; 2 uses
  %i.af = load float, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.ag = fcmp olt float %i.ae, %i.af             ; 2 uses
  %spec.select.i.i.3 = select i1 %i.ag, ptr %i.ad, ptr %spec.select.i.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ai = select i1 %i.ag, float %i.af, float %i.ae ; 2 uses
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !25 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj             ; 2 uses
  %spec.select.i.i.4 = select i1 %i.ak, ptr %i.ah, ptr %spec.select.i.i.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.am = select i1 %i.ak, float %i.aj, float %i.ai ; 2 uses
  %i.an = load float, ptr %i.al, align 4, !tbaa !25 ; 2 uses
  %i.ao = fcmp olt float %i.am, %i.an             ; 2 uses
  %spec.select.i.i.5 = select i1 %i.ao, ptr %i.al, ptr %spec.select.i.i.4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.aq = select i1 %i.ao, float %i.an, float %i.am ; 2 uses
  %i.ar = load float, ptr %i.ap, align 4, !tbaa !25 ; 2 uses
  %i.as = fcmp olt float %i.aq, %i.ar             ; 2 uses
  %spec.select.i.i.6 = select i1 %i.as, ptr %i.ap, ptr %spec.select.i.i.5
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  %i.au = select i1 %i.as, float %i.ar, float %i.aq ; 2 uses
  %i.av = load float, ptr %i.at, align 4, !tbaa !25 ; 2 uses
  %i.aw = fcmp olt float %i.au, %i.av             ; 2 uses
  %spec.select.i.i.7 = select i1 %i.aw, ptr %i.at, ptr %spec.select.i.i.6 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ax, %i.f
  %i.ay = select i1 %i.aw, float %i.av, float %i.au
  br i1 %.not.i.i.7, label %_ZSt11max_elementIPKfET_S2_S2_.exit, label %.lr.ph.i.i, !llvm.loop !127

_ZSt11max_elementIPKfET_S2_S2_.exit:              ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.011.i.i = phi ptr [ %i.e, %bb.b ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.7, %.lr.ph.i.i ]
  %i.az = load float, ptr %.011.i.i, align 4, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZSt11max_elementIPKfET_S2_S2_.exit
  %.0 = phi float [ %i.az, %_ZSt11max_elementIPKfET_S2_S2_.exit ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt23PiecewiseLinearSpectrumC2EN4pstd4spanIKfEES4_NS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 32)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree readonly captures(address) %3, i64 %4, ptr %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %.idx36 = shl i64 %2, 2                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx36
  %i.f = ptrtoint ptr %5 to i64                   ; 2 uses
  store i64 %i.f, ptr %0, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not.i.not.i = icmp eq i64 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.idx36, i64 noundef 4), !inline_history !128 ; 17 uses
  %i.n = load i64, ptr %i.i, align 8, !tbaa !39   ; 11 uses
  %.not13.i.i = icmp eq i64 %i.n, 0
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !40 ; 14 uses
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %min.iters.check = icmp ult i64 %i.n, 4
  %.pre.i.i48 = ptrtoaddr ptr %i.m to i64
  %6 = ptrtoaddr ptr %.pre.i.i to i64
  %i.o = sub i64 %6, %.pre.i.i48
  %diff.check = icmp ugt i64 %i.o, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.n, 28
  %n.vec = and i64 %i.n, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %wide.load = load <8 x float>, ptr %i.r, align 4, !tbaa !25
  %wide.load50 = load <8 x float>, ptr %i.s, align 4, !tbaa !25
  %wide.load51 = load <8 x float>, ptr %i.t, align 4, !tbaa !25
  %wide.load52 = load <8 x float>, ptr %i.u, align 4, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store <8 x float> %wide.load, ptr %i.q, align 4, !tbaa !25
  store <8 x float> %wide.load50, ptr %i.v, align 4, !tbaa !25
  store <8 x float> %wide.load51, ptr %i.w, align 4, !tbaa !25
  store <8 x float> %wide.load52, ptr %i.x, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.n, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index54
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index54
  %wide.load55 = load <4 x float>, ptr %i.aa, align 4, !tbaa !25
  store <4 x float> %wide.load55, ptr %i.z, align 4, !tbaa !25
  %index.next56 = add nuw i64 %index54, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next56, %n.vec53
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.n, %n.vec53
  br i1 %cmp.n57, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec53, %vec.epilog.middle.block ] ; 4 uses
  %i.ac = sub i64 %i.n, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i.prol
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.af = load float, ptr %i.ae, align 4, !tbaa !25
  store float %i.af, ptr %i.ad, align 4, !tbaa !25
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !131

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ag = sub i64 %indvars.iv.i.i.ph, %i.n
  %i.ah = icmp ugt i64 %i.ag, -8
  br i1 %i.ah, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i.i, label %iter.check76, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !48
  %i.aj = shl i64 %i.ai, 2
  %i.ak = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %.pre.i.i, i64 noundef %i.aj, i64 noundef 4), !inline_history !132
  br label %iter.check76

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !25
  store float %i.aq, ptr %i.ao, align 4, !tbaa !25
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.at = load float, ptr %i.as, align 4, !tbaa !25
  store float %i.at, ptr %i.ar, align 4, !tbaa !25
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.aw = load float, ptr %i.av, align 4, !tbaa !25
  store float %i.aw, ptr %i.au, align 4, !tbaa !25
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.2
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.az = load float, ptr %i.ay, align 4, !tbaa !25
  store float %i.az, ptr %i.ax, align 4, !tbaa !25
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.3
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.3
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !25
  store float %i.bc, ptr %i.ba, align 4, !tbaa !25
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !25
  store float %i.bf, ptr %i.bd, align 4, !tbaa !25
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.5
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !25
  store float %i.bi, ptr %i.bg, align 4, !tbaa !25
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.6
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.6
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !25
  store float %i.bl, ptr %i.bj, align 4, !tbaa !25
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %i.n
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !133

iter.check76:                                     ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  store i64 %2, ptr %i.h, align 8, !tbaa !48
  store ptr %i.m, ptr %i.g, align 8, !tbaa !40
  %i.bm = add i64 %.idx36, -4                     ; 3 uses
  %i.bn = lshr exact i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 5 uses
  %min.iters.check60 = icmp ult i64 %i.bm, 28
  %7 = ptrtoaddr ptr %i.m to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.bp = sub i64 %8, %7
  %diff.check59 = icmp ugt i64 %i.bp, -128
  %or.cond156 = select i1 %min.iters.check60, i1 true, i1 %diff.check59
  br i1 %or.cond156, label %vec.epilog.scalar.ph77.preheader, label %vector.main.loop.iter.check61

vector.main.loop.iter.check61:                    ; preds = %iter.check76
  %min.iters.check62 = icmp ult i64 %i.bm, 124
  br i1 %min.iters.check62, label %vec.epilog.ph80, label %vector.ph63

vector.ph63:                                      ; preds = %vector.main.loop.iter.check61
  %i.bq = and i64 %i.bo, 24
  %n.vec64 = and i64 %i.bo, 9223372036854775776   ; 5 uses
  %i.br = shl i64 %n.vec64, 2
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  br label %vector.body65

vector.body65:                                    ; preds = %vector.ph63, %vector.body65
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 3 uses
  %i.bt = shl i64 %index66, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.bt ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index66 ; 4 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 32
  %i.bw = getelementptr i8, ptr %next.gep, i64 64
  %i.bx = getelementptr i8, ptr %next.gep, i64 96
  %wide.load67 = load <8 x float>, ptr %next.gep, align 4, !tbaa !25
  %wide.load68 = load <8 x float>, ptr %i.bv, align 4, !tbaa !25
  %wide.load69 = load <8 x float>, ptr %i.bw, align 4, !tbaa !25
  %wide.load70 = load <8 x float>, ptr %i.bx, align 4, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  store <8 x float> %wide.load67, ptr %i.bu, align 4, !tbaa !25
  store <8 x float> %wide.load68, ptr %i.by, align 4, !tbaa !25
  store <8 x float> %wide.load69, ptr %i.bz, align 4, !tbaa !25
  store <8 x float> %wide.load70, ptr %i.ca, align 4, !tbaa !25
  %index.next71 = add nuw i64 %index66, 32        ; 2 uses
  %i.cb = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.cb, label %middle.block72, label %vector.body65, !llvm.loop !134

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.bo, %n.vec64
  br i1 %cmp.n73, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit, label %vec.epilog.iter.check78

vec.epilog.iter.check78:                          ; preds = %middle.block72
  %min.epilog.iters.check79 = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check79, label %vec.epilog.scalar.ph77.preheader, label %vec.epilog.ph80, !prof !50

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check61, %vec.epilog.iter.check78
  %vec.epilog.resume.val74 = phi i64 [ %n.vec64, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check61 ]
  %n.vec81 = and i64 %i.bo, 9223372036854775800   ; 4 uses
  %i.cc = shl i64 %n.vec81, 2
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph80
  %index83 = phi i64 [ %vec.epilog.resume.val74, %vec.epilog.ph80 ], [ %index.next86, %vec.epilog.vector.body82 ] ; 3 uses
  %i.ce = shl i64 %index83, 2
  %next.gep84 = getelementptr i8, ptr %1, i64 %i.ce
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index83
  %wide.load85 = load <8 x float>, ptr %next.gep84, align 4, !tbaa !25
  store <8 x float> %wide.load85, ptr %i.cf, align 4, !tbaa !25
  %index.next86 = add nuw i64 %index83, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.cg, label %vec.epilog.middle.block87, label %vec.epilog.vector.body82, !llvm.loop !135

vec.epilog.middle.block87:                        ; preds = %vec.epilog.vector.body82
  %cmp.n88 = icmp eq i64 %i.bo, %n.vec81
  br i1 %cmp.n88, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit, label %vec.epilog.scalar.ph77.preheader

vec.epilog.scalar.ph77.preheader:                 ; preds = %iter.check76, %vec.epilog.iter.check78, %vec.epilog.middle.block87
  %.013.i.ph = phi ptr [ %1, %iter.check76 ], [ %i.bs, %vec.epilog.iter.check78 ], [ %i.cd, %vec.epilog.middle.block87 ]
  %.01012.i.ph = phi i64 [ 0, %iter.check76 ], [ %n.vec64, %vec.epilog.iter.check78 ], [ %n.vec81, %vec.epilog.middle.block87 ]
  br label %vec.epilog.scalar.ph77

vec.epilog.scalar.ph77:                           ; preds = %vec.epilog.scalar.ph77.preheader, %vec.epilog.scalar.ph77
  %.013.i = phi ptr [ %i.cj, %vec.epilog.scalar.ph77 ], [ %.013.i.ph, %vec.epilog.scalar.ph77.preheader ] ; 2 uses
  %.01012.i = phi i64 [ %i.ck, %vec.epilog.scalar.ph77 ], [ %.01012.i.ph, %vec.epilog.scalar.ph77.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01012.i
  %i.ci = load float, ptr %.013.i, align 4, !tbaa !25
  store float %i.ci, ptr %i.ch, align 4, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.ck = add nuw nsw i64 %.01012.i, 1
  %.not.i = icmp eq ptr %i.cj, %i.e
  br i1 %.not.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit, label %vec.epilog.scalar.ph77, !llvm.loop !136

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit: ; preds = %vec.epilog.scalar.ph77, %middle.block72, %vec.epilog.middle.block87, %bb.a
  store i64 %2, ptr %i.i, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.idx38 = shl i64 %4, 2                         ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx38
  store i64 %i.f, ptr %i.cl, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not.i.not.i11 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i11, label %.loopexit, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i12

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i12: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit
  %i.cq = load ptr, ptr %5, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef ptr %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.idx38, i64 noundef 4)
          to label %.noexc unwind label %bb.d, !inline_history !137 ; 17 uses

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i12
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !39 ; 11 uses
  %.not13.i.i13 = icmp eq i64 %i.cu, 0
  %.pre.i.i14 = load ptr, ptr %i.cn, align 8, !tbaa !40 ; 14 uses
  br i1 %.not13.i.i13, label %._crit_edge.i.i24, label %iter.check109

iter.check109:                                    ; preds = %.noexc
  %min.iters.check96 = icmp ult i64 %i.cu, 4
  %.pre.i.i1492 = ptrtoaddr ptr %i.ct to i64
  %9 = ptrtoaddr ptr %.pre.i.i14 to i64
  %i.cv = sub i64 %9, %.pre.i.i1492
  %diff.check93 = icmp ugt i64 %i.cv, -128
  %or.cond157 = select i1 %min.iters.check96, i1 true, i1 %diff.check93
  br i1 %or.cond157, label %.lr.ph.i.i15.preheader, label %vector.main.loop.iter.check95

vector.main.loop.iter.check95:                    ; preds = %iter.check109
  %min.iters.check96.a = icmp ult i64 %i.cu, 32
  br i1 %min.iters.check96.a, label %vec.epilog.ph113, label %vector.ph97

vector.ph97:                                      ; preds = %vector.main.loop.iter.check95
  %i.cw = and i64 %i.cu, 28
  %n.vec98 = and i64 %i.cu, -32                   ; 4 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.ph97, %vector.body99
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body99 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index100 ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %index100 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %wide.load101 = load <8 x float>, ptr %i.cy, align 4, !tbaa !25
  %wide.load102 = load <8 x float>, ptr %i.cz, align 4, !tbaa !25
  %wide.load103 = load <8 x float>, ptr %i.da, align 4, !tbaa !25
  %wide.load104 = load <8 x float>, ptr %i.db, align 4, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  store <8 x float> %wide.load101, ptr %i.cx, align 4, !tbaa !25
  store <8 x float> %wide.load102, ptr %i.dc, align 4, !tbaa !25
  store <8 x float> %wide.load103, ptr %i.dd, align 4, !tbaa !25
  store <8 x float> %wide.load104, ptr %i.de, align 4, !tbaa !25
  %index.next105 = add nuw i64 %index100, 32      ; 2 uses
  %i.df = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.df, label %middle.block106, label %vector.body99, !llvm.loop !138

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %i.cu, %n.vec98
  br i1 %cmp.n107, label %._crit_edge.thread.i.i19, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block106
  %min.epilog.iters.check112 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check112, label %.lr.ph.i.i15.preheader, label %vec.epilog.ph113, !prof !47

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check95, %vec.epilog.iter.check111
  %vec.epilog.resume.val108 = phi i64 [ %n.vec98, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check95 ]
  %n.vec114 = and i64 %i.cu, -4                   ; 3 uses
  br label %vec.epilog.vector.body115

vec.epilog.vector.body115:                        ; preds = %vec.epilog.vector.body115, %vec.epilog.ph113
  %index116 = phi i64 [ %vec.epilog.resume.val108, %vec.epilog.ph113 ], [ %index.next118, %vec.epilog.vector.body115 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index116
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %index116
  %wide.load117 = load <4 x float>, ptr %i.dh, align 4, !tbaa !25
  store <4 x float> %wide.load117, ptr %i.dg, align 4, !tbaa !25
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next118, %n.vec114
  br i1 %i.di, label %vec.epilog.middle.block119, label %vec.epilog.vector.body115, !llvm.loop !139

vec.epilog.middle.block119:                       ; preds = %vec.epilog.vector.body115
  %cmp.n120 = icmp eq i64 %i.cu, %n.vec114
  br i1 %cmp.n120, label %._crit_edge.thread.i.i19, label %.lr.ph.i.i15.preheader

.lr.ph.i.i15.preheader:                           ; preds = %iter.check109, %vec.epilog.iter.check111, %vec.epilog.middle.block119
  %indvars.iv.i.i16.ph = phi i64 [ 0, %iter.check109 ], [ %n.vec98, %vec.epilog.iter.check111 ], [ %n.vec114, %vec.epilog.middle.block119 ] ; 4 uses
  %i.dj = sub i64 %i.cu, %indvars.iv.i.i16.ph
  %xtraiter159 = and i64 %i.dj, 7                 ; 2 uses
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol

.lr.ph.i.i15.prol:                                ; preds = %.lr.ph.i.i15.preheader, %.lr.ph.i.i15.prol
  %indvars.iv.i.i16.prol = phi i64 [ %indvars.iv.next.i.i17.prol, %.lr.ph.i.i15.prol ], [ %indvars.iv.i.i16.ph, %.lr.ph.i.i15.preheader ] ; 3 uses
  %prol.iter161 = phi i64 [ %prol.iter161.next, %.lr.ph.i.i15.prol ], [ 0, %.lr.ph.i.i15.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i16.prol
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.i.i16.prol
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !25
  store float %i.dm, ptr %i.dk, align 4, !tbaa !25
  %indvars.iv.next.i.i17.prol = add nuw nsw i64 %indvars.iv.i.i16.prol, 1 ; 2 uses
  %prol.iter161.next = add i64 %prol.iter161, 1   ; 2 uses
  %prol.iter161.cmp.not = icmp eq i64 %prol.iter161.next, %xtraiter159
  br i1 %prol.iter161.cmp.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol, !llvm.loop !140

.lr.ph.i.i15.prol.loopexit:                       ; preds = %.lr.ph.i.i15.prol, %.lr.ph.i.i15.preheader
  %indvars.iv.i.i16.unr = phi i64 [ %indvars.iv.i.i16.ph, %.lr.ph.i.i15.preheader ], [ %indvars.iv.next.i.i17.prol, %.lr.ph.i.i15.prol ]
  %i.dn = sub i64 %indvars.iv.i.i16.ph, %i.cu
  %i.do = icmp ugt i64 %i.dn, -8
  br i1 %i.do, label %._crit_edge.thread.i.i19, label %.lr.ph.i.i15

._crit_edge.i.i24:                                ; preds = %.noexc
  %.not.i.i.i.i.i25 = icmp eq ptr %.pre.i.i14, null
  br i1 %.not.i.i.i.i.i25, label %iter.check141, label %._crit_edge.thread.i.i19

._crit_edge.thread.i.i19:                         ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15, %middle.block106, %vec.epilog.middle.block119, %._crit_edge.i.i24
  %i.dp = load i64, ptr %i.co, align 8, !tbaa !48
  %i.dq = shl i64 %i.dp, 2
  %i.dr = load ptr, ptr %i.cl, align 8, !tbaa !49 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull %.pre.i.i14, i64 noundef %i.dq, i64 noundef 4)
          to label %iter.check141 unwind label %bb.d, !inline_history !137

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15
  %indvars.iv.i.i16 = phi i64 [ %indvars.iv.next.i.i17.7, %.lr.ph.i.i15 ], [ %indvars.iv.i.i16.unr, %.lr.ph.i.i15.prol.loopexit ] ; 10 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i16
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.i.i16
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !25
  store float %i.dx, ptr %i.dv, align 4, !tbaa !25
  %indvars.iv.next.i.i17 = add nuw nsw i64 %indvars.iv.i.i16, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i17
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.next.i.i17
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !25
  store float %i.ea, ptr %i.dy, align 4, !tbaa !25
  %indvars.iv.next.i.i17.1 = add nuw nsw i64 %indvars.iv.i.i16, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i17.1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.next.i.i17.1
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !25
  store float %i.ed, ptr %i.eb, align 4, !tbaa !25
  %indvars.iv.next.i.i17.2 = add nuw nsw i64 %indvars.iv.i.i16, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i17.2
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.next.i.i17.2
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !25
  store float %i.eg, ptr %i.ee, align 4, !tbaa !25
  %indvars.iv.next.i.i17.3 = add nuw nsw i64 %indvars.iv.i.i16, 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i17.3
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.next.i.i17.3
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !25
  store float %i.ej, ptr %i.eh, align 4, !tbaa !25
  %indvars.iv.next.i.i17.4 = add nuw nsw i64 %indvars.iv.i.i16, 5 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i17.4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.next.i.i17.4
  %i.em = load float, ptr %i.el, align 4, !tbaa !25
  store float %i.em, ptr %i.ek, align 4, !tbaa !25
  %indvars.iv.next.i.i17.5 = add nuw nsw i64 %indvars.iv.i.i16, 6 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i17.5
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.next.i.i17.5
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !25
  store float %i.ep, ptr %i.en, align 4, !tbaa !25
  %indvars.iv.next.i.i17.6 = add nuw nsw i64 %indvars.iv.i.i16, 7 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i17.6
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %indvars.iv.next.i.i17.6
  %i.es = load float, ptr %i.er, align 4, !tbaa !25
  store float %i.es, ptr %i.eq, align 4, !tbaa !25
  %indvars.iv.next.i.i17.7 = add nuw nsw i64 %indvars.iv.i.i16, 8 ; 2 uses
  %exitcond.not.i.i18.7 = icmp eq i64 %indvars.iv.next.i.i17.7, %i.cu
  br i1 %exitcond.not.i.i18.7, label %._crit_edge.thread.i.i19, label %.lr.ph.i.i15, !llvm.loop !141

iter.check141:                                    ; preds = %._crit_edge.thread.i.i19, %._crit_edge.i.i24
  store i64 %4, ptr %i.co, align 8, !tbaa !48
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !40
  %i.et = add i64 %.idx38, -4                     ; 3 uses
  %i.eu = lshr exact i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 5 uses
  %min.iters.check124 = icmp ult i64 %i.et, 28
  %10 = ptrtoaddr ptr %i.ct to i64
  %11 = ptrtoaddr ptr %3 to i64
  %i.ew = sub i64 %11, %10
  %diff.check123 = icmp ugt i64 %i.ew, -128
  %or.cond158 = select i1 %min.iters.check124, i1 true, i1 %diff.check123
  br i1 %or.cond158, label %vec.epilog.scalar.ph142.preheader, label %vector.main.loop.iter.check125

vector.main.loop.iter.check125:                   ; preds = %iter.check141
  %min.iters.check126 = icmp ult i64 %i.et, 124
  br i1 %min.iters.check126, label %vec.epilog.ph145, label %vector.ph127

vector.ph127:                                     ; preds = %vector.main.loop.iter.check125
  %i.ex = and i64 %i.ev, 24
  %n.vec128 = and i64 %i.ev, 9223372036854775776  ; 5 uses
  %i.ey = shl i64 %n.vec128, 2
  %i.ez = getelementptr i8, ptr %3, i64 %i.ey
  br label %vector.body129

vector.body129:                                   ; preds = %vector.ph127, %vector.body129
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next136, %vector.body129 ] ; 3 uses
  %i.fa = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %3, i64 %i.fa ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index130 ; 4 uses
  %i.fc = getelementptr i8, ptr %next.gep131, i64 32
  %i.fd = getelementptr i8, ptr %next.gep131, i64 64
  %i.fe = getelementptr i8, ptr %next.gep131, i64 96
  %wide.load132 = load <8 x float>, ptr %next.gep131, align 4, !tbaa !25
  %wide.load133 = load <8 x float>, ptr %i.fc, align 4, !tbaa !25
  %wide.load134 = load <8 x float>, ptr %i.fd, align 4, !tbaa !25
  %wide.load135 = load <8 x float>, ptr %i.fe, align 4, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  store <8 x float> %wide.load132, ptr %i.fb, align 4, !tbaa !25
  store <8 x float> %wide.load133, ptr %i.ff, align 4, !tbaa !25
  store <8 x float> %wide.load134, ptr %i.fg, align 4, !tbaa !25
  store <8 x float> %wide.load135, ptr %i.fh, align 4, !tbaa !25
  %index.next136 = add nuw i64 %index130, 32      ; 2 uses
  %i.fi = icmp eq i64 %index.next136, %n.vec128
  br i1 %i.fi, label %middle.block137, label %vector.body129, !llvm.loop !142

middle.block137:                                  ; preds = %vector.body129
  %cmp.n138 = icmp eq i64 %i.ev, %n.vec128
  br i1 %cmp.n138, label %.loopexit.loopexit, label %vec.epilog.iter.check143

vec.epilog.iter.check143:                         ; preds = %middle.block137
  %min.epilog.iters.check144 = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check144, label %vec.epilog.scalar.ph142.preheader, label %vec.epilog.ph145, !prof !50

vec.epilog.ph145:                                 ; preds = %vector.main.loop.iter.check125, %vec.epilog.iter.check143
  %vec.epilog.resume.val139 = phi i64 [ %n.vec128, %vec.epilog.iter.check143 ], [ 0, %vector.main.loop.iter.check125 ]
  %n.vec146 = and i64 %i.ev, 9223372036854775800  ; 4 uses
  %i.fj = shl i64 %n.vec146, 2
  %i.fk = getelementptr i8, ptr %3, i64 %i.fj
  br label %vec.epilog.vector.body147

vec.epilog.vector.body147:                        ; preds = %vec.epilog.vector.body147, %vec.epilog.ph145
  %index148 = phi i64 [ %vec.epilog.resume.val139, %vec.epilog.ph145 ], [ %index.next151, %vec.epilog.vector.body147 ] ; 3 uses
  %i.fl = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %3, i64 %i.fl
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index148
  %wide.load150 = load <8 x float>, ptr %next.gep149, align 4, !tbaa !25
  store <8 x float> %wide.load150, ptr %i.fm, align 4, !tbaa !25
  %index.next151 = add nuw i64 %index148, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.fn, label %vec.epilog.middle.block152, label %vec.epilog.vector.body147, !llvm.loop !143

vec.epilog.middle.block152:                       ; preds = %vec.epilog.vector.body147
  %cmp.n153 = icmp eq i64 %i.ev, %n.vec146
  br i1 %cmp.n153, label %.loopexit.loopexit, label %vec.epilog.scalar.ph142.preheader

vec.epilog.scalar.ph142.preheader:                ; preds = %iter.check141, %vec.epilog.iter.check143, %vec.epilog.middle.block152
  %.013.i21.ph = phi ptr [ %3, %iter.check141 ], [ %i.ez, %vec.epilog.iter.check143 ], [ %i.fk, %vec.epilog.middle.block152 ]
  %.01012.i22.ph = phi i64 [ 0, %iter.check141 ], [ %n.vec128, %vec.epilog.iter.check143 ], [ %n.vec146, %vec.epilog.middle.block152 ]
  br label %vec.epilog.scalar.ph142

vec.epilog.scalar.ph142:                          ; preds = %vec.epilog.scalar.ph142.preheader, %vec.epilog.scalar.ph142
  %.013.i21 = phi ptr [ %i.fq, %vec.epilog.scalar.ph142 ], [ %.013.i21.ph, %vec.epilog.scalar.ph142.preheader ] ; 2 uses
  %.01012.i22 = phi i64 [ %i.fr, %vec.epilog.scalar.ph142 ], [ %.01012.i22.ph, %vec.epilog.scalar.ph142.preheader ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.01012.i22
  %i.fp = load float, ptr %.013.i21, align 4, !tbaa !25
  store float %i.fp, ptr %i.fo, align 4, !tbaa !25
  %i.fq = getelementptr inbounds nuw i8, ptr %.013.i21, i64 4 ; 2 uses
  %i.fr = add nuw nsw i64 %.01012.i22, 1
  %.not.i23 = icmp eq ptr %i.fq, %i.cm
  br i1 %.not.i23, label %.loopexit.loopexit, label %vec.epilog.scalar.ph142, !llvm.loop !144

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph142, %vec.epilog.middle.block152, %middle.block137
  %.pre = load i64, ptr %i.i, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit
  %i.fs = phi i64 [ %2, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit ], [ %.pre, %.loopexit.loopexit ] ; 3 uses
  store i64 %4, ptr %i.cp, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.fs, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %4, ptr %i.b, align 8, !tbaa !51
  %i.ft = icmp eq i64 %i.fs, %4
  br i1 %i.ft, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZN4pbrt8LogFatalIJRA15_KcRA14_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 86, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(15) @.str.4, ptr noundef nonnull align 1 dereferenceable(14) @.str.5, ptr noundef nonnull align 1 dereferenceable(15) @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %._crit_edge.thread.i.i19, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i12
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.l

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.fw = add i64 %i.fs, -1                       ; 2 uses
  %.not = icmp eq i64 %i.fw, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.fx = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.pre40 = load float, ptr %i.fx, align 4, !tbaa !25
  br label %bb.g

._crit_edge:                                      ; preds = %bb.k, %bb.f
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.fy = phi float [ %.pre40, %.lr.ph ], [ %i.gb, %bb.k ] ; 2 uses
  %.039 = phi i64 [ 0, %.lr.ph ], [ %i.fz, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float %i.fy, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.fz = add nuw i64 %.039, 1                    ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !25 ; 3 uses
  store float %i.gb, ptr %i.d, align 4, !tbaa !25
  %i.gc = fcmp olt float %i.fy, %i.gb
  br i1 %i.gc, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4pbrt8LogFatalIJRA11_KcRA15_S1_S3_RfS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 88, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(11) @.str.7, ptr noundef nonnull align 1 dereferenceable(15) @.str.8, ptr noundef nonnull align 1 dereferenceable(11) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(15) @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %exitcond.not = icmp eq i64 %i.fz, %i.fw
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !145

bb.l:                                             ; preds = %bb.j, %bb.e
  %.pn = phi { ptr, i32 } [ %i.gd, %bb.j ], [ %i.fv, %bb.e ]
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.cl) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.fu, %bb.d ]
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA15_KcRA14_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !31, !alias.scope !148
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !33, !alias.scope !148
  store i8 0, ptr %i.a, align 8, !tbaa !34, !alias.scope !148
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA15_KcJRA14_S2_S4_RmS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA15_KcRA14_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !35, !alias.scope !148 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !34, !alias.scope !148
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #26
end_hunk_0
begin_hunk_1_@_ZN4pbrt23PiecewiseLinearSpectrum4ReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.jq = load ptr, ptr %i.jp, align 8
  invoke void %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull %i.ji, i64 noundef %i.jm, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.aj, !inline_history !2

bb.aj:                                            ; preds = %bb.ai
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #28
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.jt = load ptr, ptr %i.bq, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i78, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit79, label %bb.ak

bb.ak:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !48
  %i.jw = shl i64 %i.jv, 2
  %i.jx = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !44
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull %i.jt, i64 noundef %i.jw, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit79 unwind label %bb.al, !inline_history !2

bb.al:                                            ; preds = %bb.ak
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #28
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit79: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.an

bb.am:                                            ; preds = %bb.v, %.body50, %bb.ag
  %.pn23 = phi { ptr, i32 } [ %i.jh, %bb.ag ], [ %eh.lpad-body51, %.body50 ], [ %i.dj, %bb.v ]
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.an:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.kd = load ptr, ptr %6, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ke = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !189
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.ki) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

.body:                                            ; preds = %bb.l, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.am
  %.pn25 = phi { ptr, i32 } [ %.pn23, %bb.am ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.f ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i37 ], [ %i.az, %bb.l ] ; 2 uses
  %i.kj = load ptr, ptr %6, align 8, !tbaa !184   ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i80, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %bb.ap

bb.ap:                                            ; preds = %.body
  %i.kk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !189
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kj to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef %i.ko) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.i, %bb.ap, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %.pn25.pn = phi { ptr, i32 } [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn25, %bb.ap ], [ %.pn25, %.body ], [ %i.ao, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn25.pn
}

declare void @_ZN4pbrt13ReadFloatFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt23PiecewiseLinearSpectrum15FromInterleavedEN4pstd4spanIKfEEbNS1_3pmr21polymorphic_allocatorISt4byteEE(ptr nofree readonly captures(none) %0, i64 %1, i1 noundef zeroext %2, ptr %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %4 = alloca %class.anon.12, align 8             ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %5 = alloca %class.anon.12, align 8             ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.pstd::vector", align 8      ; 14 uses
  %7 = alloca %"class.pstd::vector", align 8      ; 20 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.g = and i64 %1, 1                            ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !tbaa !51
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA2_KcRA19_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 131, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(2) @.str.16, ptr noundef nonnull align 1 dereferenceable(19) @.str.17, ptr noundef nonnull align 1 dereferenceable(2) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.17, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.i = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 11 uses
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %6, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.l = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %7, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = load float, ptr %0, align 4, !tbaa !25
  %i.p = fcmp ogt float %i.o, 3.600000e+02
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 16, i64 noundef 4)
          to label %bb.e unwind label %bb.g, !inline_history !190 ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 4, ptr %i.v, align 8, !tbaa !48
  store ptr %i.t, ptr %i.k, align 8, !tbaa !40
  store float 3.590000e+02, ptr %i.t, align 4, !tbaa !25
  store i64 1, ptr %i.u, align 8, !tbaa !39
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 16, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit unwind label %bb.f, !inline_history !3 ; 3 uses

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 4, ptr %i.ab, align 8, !tbaa !48
  store ptr %i.z, ptr %i.n, align 8, !tbaa !40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !25
  store float %i.ad, ptr %i.z, align 4, !tbaa !25
  store i64 1, ptr %i.aa, align 8, !tbaa !39
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.thread.i.i117, %bb.af, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.h:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit, %bb.c
  %i.ag = phi ptr [ %i.z, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit ], [ null, %bb.c ]
  %.pre.i.i46150 = phi ptr [ %i.t, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit ], [ null, %bb.c ] ; 3 uses
  %i.ah = phi i64 [ 1, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit ], [ 0, %bb.c ] ; 4 uses
  %i.ai = phi i64 [ 4, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit ], [ 0, %bb.c ] ; 4 uses
  %i.aj = shl i64 %1, 31                          ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 32
  %.not143 = icmp eq i64 %i.aj, 0
  br i1 %.not143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.x, %bb.h
  %i.ap = phi i64 [ %i.ai, %bb.h ], [ %i.gb, %bb.x ] ; 3 uses
  %i.aq = phi i64 [ %i.ah, %bb.h ], [ %i.gf, %bb.x ] ; 3 uses
  %i.ar = phi ptr [ %i.ag, %bb.h ], [ %i.gc, %bb.x ] ; 3 uses
  %i.as = phi i64 [ %i.ai, %bb.h ], [ %i.do, %bb.x ] ; 16 uses
  %.pre.i84 = phi i64 [ %i.ah, %bb.h ], [ %i.ds, %bb.x ] ; 3 uses
  %.pre.i.i90 = phi ptr [ %.pre.i.i46150, %bb.h ], [ %i.dl, %bb.x ] ; 16 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %.pre.i.i90, i64 %.pre.i84
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !25
  %i.ax = fcmp olt float %i.aw, 8.300000e+02
  br i1 %i.ax, label %bb.y, label %bb.ah

bb.i:                                             ; preds = %.lr.ph, %bb.x
  %i.ay = phi ptr [ %.pre.i.i46150, %.lr.ph ], [ %i.dl, %bb.x ] ; 2 uses
  %i.az = phi i64 [ %i.ah, %.lr.ph ], [ %i.gf, %bb.x ] ; 2 uses
  %i.ba = phi i64 [ %i.ai, %.lr.ph ], [ %i.gb, %bb.x ] ; 2 uses
  %i.bb = phi ptr [ %.pre.i.i46150, %.lr.ph ], [ %i.go, %bb.x ] ; 3 uses
  %i.bc = phi i64 [ %i.ah, %.lr.ph ], [ %i.ds, %bb.x ] ; 8 uses
  %i.bd = phi i64 [ %i.ai, %.lr.ph ], [ %i.do, %bb.x ] ; 2 uses
  %.0142 = phi i64 [ 0, %.lr.ph ], [ %i.gp, %bb.x ] ; 3 uses
  %.idx = shl i64 %.0142, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.bc
  br i1 %i.bf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp eq i64 %i.bc, 0
  %i.bh = shl i64 %i.bc, 1
  %spec.select.i38 = select i1 %i.bg, i64 4, i64 %i.bh ; 4 uses
  %.not.i.i39 = icmp ult i64 %i.bc, %spec.select.i38
  br i1 %.not.i.i39, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bi = shl i64 %spec.select.i38, 2             ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i41, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.bi, i64 noundef 4)
          to label %.noexc57 unwind label %bb.u, !inline_history !3

.noexc57:                                         ; preds = %bb.l
  %.pre.i40 = load i64, ptr %i.am, align 8, !tbaa !39
  %.pre.i.i46.pre = load ptr, ptr %i.k, align 8, !tbaa !40
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i41

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i41: ; preds = %.noexc57, %bb.k
  %.pre.i.i46 = phi ptr [ %.pre.i.i46.pre, %.noexc57 ], [ %i.bb, %bb.k ] ; 14 uses
  %.pre24.i42 = phi i64 [ %.pre.i40, %.noexc57 ], [ %i.bc, %bb.k ] ; 11 uses
  %.0.i.i.i.i.i43 = phi ptr [ %i.bn, %.noexc57 ], [ null, %bb.k ] ; 15 uses
  %.not13.i.i44 = icmp eq i64 %.pre24.i42, 0
  br i1 %.not13.i.i44, label %._crit_edge.i.i55, label %iter.check231

iter.check231:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i41
  %.pre.i.i46214 = ptrtoaddr ptr %.pre.i.i46 to i64
  %.0.i.i.i.i.i43213 = ptrtoaddr ptr %.0.i.i.i.i.i43 to i64
  %min.iters.check216 = icmp ult i64 %.pre24.i42, 4
  %i.bo = sub i64 %.pre.i.i46214, %.0.i.i.i.i.i43213
  %diff.check215 = icmp ugt i64 %i.bo, -128
  %or.cond = select i1 %min.iters.check216, i1 true, i1 %diff.check215
  br i1 %or.cond, label %.lr.ph.i.i47.preheader, label %vector.main.loop.iter.check217

vector.main.loop.iter.check217:                   ; preds = %iter.check231
  %min.iters.check218 = icmp ult i64 %.pre24.i42, 32
  br i1 %min.iters.check218, label %vec.epilog.ph235, label %vector.ph219

vector.ph219:                                     ; preds = %vector.main.loop.iter.check217
  %i.bp = and i64 %.pre24.i42, 28
  %n.vec220 = and i64 %.pre24.i42, -32            ; 4 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.ph219, %vector.body221
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %index222 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %index222 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %wide.load223 = load <8 x float>, ptr %i.br, align 4, !tbaa !25
  %wide.load224 = load <8 x float>, ptr %i.bs, align 4, !tbaa !25
  %wide.load225 = load <8 x float>, ptr %i.bt, align 4, !tbaa !25
  %wide.load226 = load <8 x float>, ptr %i.bu, align 4, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  store <8 x float> %wide.load223, ptr %i.bq, align 4, !tbaa !25
  store <8 x float> %wide.load224, ptr %i.bv, align 4, !tbaa !25
  store <8 x float> %wide.load225, ptr %i.bw, align 4, !tbaa !25
  store <8 x float> %wide.load226, ptr %i.bx, align 4, !tbaa !25
  %index.next227 = add nuw i64 %index222, 32      ; 2 uses
  %i.by = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.by, label %middle.block228, label %vector.body221, !llvm.loop !191

middle.block228:                                  ; preds = %vector.body221
  %cmp.n229 = icmp eq i64 %.pre24.i42, %n.vec220
  br i1 %cmp.n229, label %._crit_edge.thread.i.i51, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block228
  %min.epilog.iters.check234 = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check234, label %.lr.ph.i.i47.preheader, label %vec.epilog.ph235, !prof !47

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check217, %vec.epilog.iter.check233
  %vec.epilog.resume.val230 = phi i64 [ %n.vec220, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check217 ]
  %n.vec236 = and i64 %.pre24.i42, -4             ; 3 uses
  br label %vec.epilog.vector.body237

vec.epilog.vector.body237:                        ; preds = %vec.epilog.vector.body237, %vec.epilog.ph235
  %index238 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph235 ], [ %index.next240, %vec.epilog.vector.body237 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %index238
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %index238
  %wide.load239 = load <4 x float>, ptr %i.ca, align 4, !tbaa !25
  store <4 x float> %wide.load239, ptr %i.bz, align 4, !tbaa !25
  %index.next240 = add nuw i64 %index238, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next240, %n.vec236
  br i1 %i.cb, label %vec.epilog.middle.block241, label %vec.epilog.vector.body237, !llvm.loop !192

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body237
  %cmp.n242 = icmp eq i64 %.pre24.i42, %n.vec236
  br i1 %cmp.n242, label %._crit_edge.thread.i.i51, label %.lr.ph.i.i47.preheader

.lr.ph.i.i47.preheader:                           ; preds = %iter.check231, %vec.epilog.iter.check233, %vec.epilog.middle.block241
  %indvars.iv.i.i48.ph = phi i64 [ 0, %iter.check231 ], [ %n.vec220, %vec.epilog.iter.check233 ], [ %n.vec236, %vec.epilog.middle.block241 ] ; 4 uses
  %i.cc = sub i64 %.pre24.i42, %indvars.iv.i.i48.ph
  %xtraiter = and i64 %i.cc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i47.prol.loopexit, label %.lr.ph.i.i47.prol

.lr.ph.i.i47.prol:                                ; preds = %.lr.ph.i.i47.preheader, %.lr.ph.i.i47.prol
  %indvars.iv.i.i48.prol = phi i64 [ %indvars.iv.next.i.i49.prol, %.lr.ph.i.i47.prol ], [ %indvars.iv.i.i48.ph, %.lr.ph.i.i47.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i47.prol ], [ 0, %.lr.ph.i.i47.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %indvars.iv.i.i48.prol
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %indvars.iv.i.i48.prol
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !25
  store float %i.cf, ptr %i.cd, align 4, !tbaa !25
  %indvars.iv.next.i.i49.prol = add nuw nsw i64 %indvars.iv.i.i48.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i47.prol.loopexit, label %.lr.ph.i.i47.prol, !llvm.loop !193

.lr.ph.i.i47.prol.loopexit:                       ; preds = %.lr.ph.i.i47.prol, %.lr.ph.i.i47.preheader
  %indvars.iv.i.i48.unr = phi i64 [ %indvars.iv.i.i48.ph, %.lr.ph.i.i47.preheader ], [ %indvars.iv.next.i.i49.prol, %.lr.ph.i.i47.prol ]
  %i.cg = sub i64 %indvars.iv.i.i48.ph, %.pre24.i42
  %i.ch = icmp ugt i64 %i.cg, -8
  br i1 %i.ch, label %._crit_edge.thread.i.i51, label %.lr.ph.i.i47

._crit_edge.i.i55:                                ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i41
  %.not.i.i.i.i.i56 = icmp eq ptr %.pre.i.i46, null
  br i1 %.not.i.i.i.i.i56, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i53, label %._crit_edge.thread.i.i51

._crit_edge.thread.i.i51:                         ; preds = %.lr.ph.i.i47.prol.loopexit, %.lr.ph.i.i47, %middle.block228, %vec.epilog.middle.block241, %._crit_edge.i.i55
  %i.ci = load i64, ptr %i.al, align 8, !tbaa !48
  %i.cj = shl i64 %i.ci, 2
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %.pre.i.i46, i64 noundef %i.cj, i64 noundef 4)
          to label %.noexc58 unwind label %bb.u, !inline_history !3

.noexc58:                                         ; preds = %._crit_edge.thread.i.i51
  %.pre2.pre.i52 = load i64, ptr %i.am, align 8, !tbaa !39
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i53

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i53: ; preds = %.noexc58, %._crit_edge.i.i55
  %.pre2.i54 = phi i64 [ %.pre2.pre.i52, %.noexc58 ], [ 0, %._crit_edge.i.i55 ]
  store i64 %spec.select.i38, ptr %i.al, align 8, !tbaa !48
  store ptr %.0.i.i.i.i.i43, ptr %i.k, align 8, !tbaa !40
  %.pre = load i64, ptr %i.an, align 8, !tbaa !48
  %.pre151 = load i64, ptr %i.ao, align 8, !tbaa !39
  br label %bb.m

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47.prol.loopexit, %.lr.ph.i.i47
  %indvars.iv.i.i48 = phi i64 [ %indvars.iv.next.i.i49.7, %.lr.ph.i.i47 ], [ %indvars.iv.i.i48.unr, %.lr.ph.i.i47.prol.loopexit ] ; 10 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %indvars.iv.i.i48
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %indvars.iv.i.i48
  %i.cp = load float, ptr %i.co, align 4, !tbaa !25
  store float %i.cp, ptr %i.cn, align 4, !tbaa !25
  %indvars.iv.next.i.i49 = add nuw nsw i64 %indvars.iv.i.i48, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %indvars.iv.next.i.i49
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %indvars.iv.next.i.i49
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !25
  store float %i.cs, ptr %i.cq, align 4, !tbaa !25
  %indvars.iv.next.i.i49.1 = add nuw nsw i64 %indvars.iv.i.i48, 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %indvars.iv.next.i.i49.1
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %indvars.iv.next.i.i49.1
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !25
  store float %i.cv, ptr %i.ct, align 4, !tbaa !25
  %indvars.iv.next.i.i49.2 = add nuw nsw i64 %indvars.iv.i.i48, 3 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %indvars.iv.next.i.i49.2
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %indvars.iv.next.i.i49.2
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !25
  store float %i.cy, ptr %i.cw, align 4, !tbaa !25
  %indvars.iv.next.i.i49.3 = add nuw nsw i64 %indvars.iv.i.i48, 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %indvars.iv.next.i.i49.3
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %indvars.iv.next.i.i49.3
  %i.db = load float, ptr %i.da, align 4, !tbaa !25
  store float %i.db, ptr %i.cz, align 4, !tbaa !25
  %indvars.iv.next.i.i49.4 = add nuw nsw i64 %indvars.iv.i.i48, 5 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i43, i64 %indvars.iv.next.i.i49.4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i46, i64 %indvars.iv.next.i.i49.4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !25
  store float %i.de, ptr %i.dc, align 4, !tbaa !25
  %indvars.iv.next.i.i49.5 = add nuw nsw i64 %indvars.iv.i.i48, 6 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4pbrt23PiecewiseLinearSpectrum15FromInterleavedEN4pstd4spanIKfEEbNS1_3pmr21polymorphic_allocatorISt4byteEE:bb.a
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre2.pre.i74, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ef, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i69.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec207 = and i64 %.pre2.pre.i74, -4          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next210, %vec.epilog.vector.body ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %index208
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %index208
  %wide.load209 = load <4 x float>, ptr %i.eq, align 4, !tbaa !25
  store <4 x float> %wide.load209, ptr %i.ep, align 4, !tbaa !25
  %index.next210 = add nuw i64 %index208, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next210, %n.vec207
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !196

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n211 = icmp eq i64 %.pre2.pre.i74, %n.vec207
  br i1 %cmp.n211, label %._crit_edge.thread.i.i73, label %.lr.ph.i.i69.preheader

.lr.ph.i.i69.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i70.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec207, %vec.epilog.middle.block ] ; 4 uses
  %i.es = sub i64 %.pre2.pre.i74, %indvars.iv.i.i70.ph
  %xtraiter355 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.lr.ph.i.i69.prol.loopexit, label %.lr.ph.i.i69.prol

.lr.ph.i.i69.prol:                                ; preds = %.lr.ph.i.i69.preheader, %.lr.ph.i.i69.prol
  %indvars.iv.i.i70.prol = phi i64 [ %indvars.iv.next.i.i71.prol, %.lr.ph.i.i69.prol ], [ %indvars.iv.i.i70.ph, %.lr.ph.i.i69.preheader ] ; 3 uses
  %prol.iter357 = phi i64 [ %prol.iter357.next, %.lr.ph.i.i69.prol ], [ 0, %.lr.ph.i.i69.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.i.i70.prol
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.i.i70.prol
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !25
  store float %i.ev, ptr %i.et, align 4, !tbaa !25
  %indvars.iv.next.i.i71.prol = add nuw nsw i64 %indvars.iv.i.i70.prol, 1 ; 2 uses
  %prol.iter357.next = add i64 %prol.iter357, 1   ; 2 uses
  %prol.iter357.cmp.not = icmp eq i64 %prol.iter357.next, %xtraiter355
  br i1 %prol.iter357.cmp.not, label %.lr.ph.i.i69.prol.loopexit, label %.lr.ph.i.i69.prol, !llvm.loop !197

.lr.ph.i.i69.prol.loopexit:                       ; preds = %.lr.ph.i.i69.prol, %.lr.ph.i.i69.preheader
  %indvars.iv.i.i70.unr = phi i64 [ %indvars.iv.i.i70.ph, %.lr.ph.i.i69.preheader ], [ %indvars.iv.next.i.i71.prol, %.lr.ph.i.i69.prol ]
  %i.ew = sub i64 %indvars.iv.i.i70.ph, %.pre2.pre.i74
  %i.ex = icmp ugt i64 %i.ew, -8
  br i1 %i.ex, label %._crit_edge.thread.i.i73, label %.lr.ph.i.i69

._crit_edge.i.i77:                                ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i63
  %.not.i.i.i.i.i78 = icmp eq ptr %.pre.i.i68, null
  br i1 %.not.i.i.i.i.i78, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i75, label %._crit_edge.thread.i.i73

._crit_edge.thread.i.i73:                         ; preds = %.lr.ph.i.i69.prol.loopexit, %.lr.ph.i.i69, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i77
  %i.ey = shl i64 %.pre2.pre.i74, 2
  %i.ez = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !44
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %.pre.i.i68, i64 noundef %i.ey, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i75 unwind label %bb.u, !inline_history !3

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i75: ; preds = %._crit_edge.thread.i.i73, %._crit_edge.i.i77
  store i64 %spec.select.i60, ptr %i.an, align 8, !tbaa !48
  store ptr %.0.i.i.i.i.i65, ptr %i.n, align 8, !tbaa !40
  br label %bb.q

.lr.ph.i.i69:                                     ; preds = %.lr.ph.i.i69.prol.loopexit, %.lr.ph.i.i69
  %indvars.iv.i.i70 = phi i64 [ %indvars.iv.next.i.i71.7, %.lr.ph.i.i69 ], [ %indvars.iv.i.i70.unr, %.lr.ph.i.i69.prol.loopexit ] ; 10 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.i.i70
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.i.i70
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !25
  store float %i.ff, ptr %i.fd, align 4, !tbaa !25
  %indvars.iv.next.i.i71 = add nuw nsw i64 %indvars.iv.i.i70, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.next.i.i71
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.next.i.i71
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !25
  store float %i.fi, ptr %i.fg, align 4, !tbaa !25
  %indvars.iv.next.i.i71.1 = add nuw nsw i64 %indvars.iv.i.i70, 2 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.next.i.i71.1
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.next.i.i71.1
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !25
  store float %i.fl, ptr %i.fj, align 4, !tbaa !25
  %indvars.iv.next.i.i71.2 = add nuw nsw i64 %indvars.iv.i.i70, 3 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.next.i.i71.2
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.next.i.i71.2
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !25
  store float %i.fo, ptr %i.fm, align 4, !tbaa !25
  %indvars.iv.next.i.i71.3 = add nuw nsw i64 %indvars.iv.i.i70, 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.next.i.i71.3
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.next.i.i71.3
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !25
  store float %i.fr, ptr %i.fp, align 4, !tbaa !25
  %indvars.iv.next.i.i71.4 = add nuw nsw i64 %indvars.iv.i.i70, 5 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.next.i.i71.4
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.next.i.i71.4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !25
  store float %i.fu, ptr %i.fs, align 4, !tbaa !25
  %indvars.iv.next.i.i71.5 = add nuw nsw i64 %indvars.iv.i.i70, 6 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.next.i.i71.5
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.next.i.i71.5
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !25
  store float %i.fx, ptr %i.fv, align 4, !tbaa !25
  %indvars.iv.next.i.i71.6 = add nuw nsw i64 %indvars.iv.i.i70, 7 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i65, i64 %indvars.iv.next.i.i71.6
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i68, i64 %indvars.iv.next.i.i71.6
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !25
  store float %i.ga, ptr %i.fy, align 4, !tbaa !25
  %indvars.iv.next.i.i71.7 = add nuw nsw i64 %indvars.iv.i.i70, 8 ; 2 uses
  %exitcond.not.i.i72.7 = icmp eq i64 %indvars.iv.next.i.i71.7, %.pre2.pre.i74
  br i1 %exitcond.not.i.i72.7, label %._crit_edge.thread.i.i73, label %.lr.ph.i.i69, !llvm.loop !198

bb.q:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i75, %bb.n, %bb.m
  %i.gb = phi i64 [ %spec.select.i60, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i75 ], [ %.pre2.pre.i74, %bb.n ], [ %i.dm, %bb.m ] ; 2 uses
  %i.gc = load ptr, ptr %i.n, align 8, !tbaa !40  ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %.pre2.pre.i74
  %i.ge = load float, ptr %i.dt, align 4, !tbaa !25
  store float %i.ge, ptr %i.gd, align 4, !tbaa !25
  %i.gf = add i64 %.pre2.pre.i74, 1               ; 3 uses
  store i64 %i.gf, ptr %i.ao, align 8, !tbaa !39
  %.not = icmp eq i64 %.0142, 0
  br i1 %.not, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.gg = getelementptr [4 x i8], ptr %i.dl, i64 %i.ds ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !25 ; 2 uses
  store float %i.gi, ptr %i.e, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.gj = getelementptr i8, ptr %i.gg, i64 -8
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !25 ; 2 uses
  store float %i.gk, ptr %i.f, align 4, !tbaa !25
  %i.gl = fcmp ogt float %i.gi, %i.gk
  br i1 %i.gl, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4pbrt8LogFatalIJRA14_KcRA26_S1_S3_RfS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 144, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(14) @.str.19, ptr noundef nonnull align 1 dereferenceable(26) @.str.20, ptr noundef nonnull align 1 dereferenceable(14) @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #27
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %._crit_edge.thread.i.i73, %bb.p, %._crit_edge.thread.i.i51, %bb.l
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.v:                                             ; preds = %bb.s
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.ao

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %bb.w
  %i.go = phi ptr [ %i.dn, %bb.q ], [ %i.dl, %bb.w ]
  %i.gp = add nuw i64 %.0142, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.gp, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !199

bb.y:                                             ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gr = icmp eq i64 %i.as, %.pre.i84
  br i1 %i.gr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gs = icmp eq i64 %i.as, 0                    ; 2 uses
  %i.gt = shl i64 %i.as, 1
  %spec.select.i82 = select i1 %i.gs, i64 4, i64 %i.gt ; 3 uses
  %.not.i.i83 = icmp ult i64 %i.as, %spec.select.i82
  br i1 %.not.i.i83, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gu = shl i64 %spec.select.i82, 2             ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i85, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gw = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = invoke noundef ptr %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.gu, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i85 unwind label %bb.ag, !inline_history !190

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i85: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i87 = phi ptr [ null, %bb.aa ], [ %i.gz, %bb.ab ] ; 14 uses
  br i1 %i.gs, label %._crit_edge.thread.i.i95, label %iter.check263

iter.check263:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i85
  %min.iters.check248 = icmp ult i64 %i.as, 4
  %.0.i.i.i.i.i87245 = ptrtoaddr ptr %.0.i.i.i.i.i87 to i64
  %8 = ptrtoaddr ptr %.pre.i.i90 to i64
  %i.ha = sub i64 %8, %.0.i.i.i.i.i87245
  %diff.check247 = icmp ugt i64 %i.ha, -128
  %or.cond341 = or i1 %min.iters.check248, %diff.check247
  br i1 %or.cond341, label %.lr.ph.i.i91.preheader, label %vector.main.loop.iter.check249

vector.main.loop.iter.check249:                   ; preds = %iter.check263
  %min.iters.check250 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check250, label %vec.epilog.ph267, label %vector.ph251

vector.ph251:                                     ; preds = %vector.main.loop.iter.check249
  %i.hb = and i64 %i.as, 28
  %n.vec252 = and i64 %i.as, -32                  ; 4 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.ph251, %vector.body253
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next259, %vector.body253 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %index254 ; 4 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %index254 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 96
  %wide.load255 = load <8 x float>, ptr %i.hd, align 4, !tbaa !25
  %wide.load256 = load <8 x float>, ptr %i.he, align 4, !tbaa !25
  %wide.load257 = load <8 x float>, ptr %i.hf, align 4, !tbaa !25
  %wide.load258 = load <8 x float>, ptr %i.hg, align 4, !tbaa !25
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  store <8 x float> %wide.load255, ptr %i.hc, align 4, !tbaa !25
  store <8 x float> %wide.load256, ptr %i.hh, align 4, !tbaa !25
  store <8 x float> %wide.load257, ptr %i.hi, align 4, !tbaa !25
  store <8 x float> %wide.load258, ptr %i.hj, align 4, !tbaa !25
  %index.next259 = add nuw i64 %index254, 32      ; 2 uses
  %i.hk = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.hk, label %middle.block260, label %vector.body253, !llvm.loop !200

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.as, %n.vec252
  br i1 %cmp.n261, label %._crit_edge.thread.i.i95, label %vec.epilog.iter.check265

vec.epilog.iter.check265:                         ; preds = %middle.block260
  %min.epilog.iters.check266 = icmp eq i64 %i.hb, 0
  br i1 %min.epilog.iters.check266, label %.lr.ph.i.i91.preheader, label %vec.epilog.ph267, !prof !47

vec.epilog.ph267:                                 ; preds = %vector.main.loop.iter.check249, %vec.epilog.iter.check265
  %vec.epilog.resume.val262 = phi i64 [ %n.vec252, %vec.epilog.iter.check265 ], [ 0, %vector.main.loop.iter.check249 ]
  %n.vec268 = and i64 %i.as, -4                   ; 3 uses
  br label %vec.epilog.vector.body269

vec.epilog.vector.body269:                        ; preds = %vec.epilog.vector.body269, %vec.epilog.ph267
  %index270 = phi i64 [ %vec.epilog.resume.val262, %vec.epilog.ph267 ], [ %index.next272, %vec.epilog.vector.body269 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %index270
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %index270
  %wide.load271 = load <4 x float>, ptr %i.hm, align 4, !tbaa !25
  store <4 x float> %wide.load271, ptr %i.hl, align 4, !tbaa !25
  %index.next272 = add nuw i64 %index270, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next272, %n.vec268
  br i1 %i.hn, label %vec.epilog.middle.block273, label %vec.epilog.vector.body269, !llvm.loop !201

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body269
  %cmp.n274 = icmp eq i64 %i.as, %n.vec268
  br i1 %cmp.n274, label %._crit_edge.thread.i.i95, label %.lr.ph.i.i91.preheader

.lr.ph.i.i91.preheader:                           ; preds = %iter.check263, %vec.epilog.iter.check265, %vec.epilog.middle.block273
  %indvars.iv.i.i92.ph = phi i64 [ 0, %iter.check263 ], [ %n.vec252, %vec.epilog.iter.check265 ], [ %n.vec268, %vec.epilog.middle.block273 ] ; 4 uses
  %i.ho = sub i64 %i.as, %indvars.iv.i.i92.ph
  %xtraiter358 = and i64 %i.ho, 7                 ; 2 uses
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %.lr.ph.i.i91.prol.loopexit, label %.lr.ph.i.i91.prol

.lr.ph.i.i91.prol:                                ; preds = %.lr.ph.i.i91.preheader, %.lr.ph.i.i91.prol
  %indvars.iv.i.i92.prol = phi i64 [ %indvars.iv.next.i.i93.prol, %.lr.ph.i.i91.prol ], [ %indvars.iv.i.i92.ph, %.lr.ph.i.i91.preheader ] ; 3 uses
  %prol.iter360 = phi i64 [ %prol.iter360.next, %.lr.ph.i.i91.prol ], [ 0, %.lr.ph.i.i91.preheader ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.i.i92.prol
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.i.i92.prol
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !25
  store float %i.hr, ptr %i.hp, align 4, !tbaa !25
  %indvars.iv.next.i.i93.prol = add nuw nsw i64 %indvars.iv.i.i92.prol, 1 ; 2 uses
  %prol.iter360.next = add i64 %prol.iter360, 1   ; 2 uses
  %prol.iter360.cmp.not = icmp eq i64 %prol.iter360.next, %xtraiter358
  br i1 %prol.iter360.cmp.not, label %.lr.ph.i.i91.prol.loopexit, label %.lr.ph.i.i91.prol, !llvm.loop !202

.lr.ph.i.i91.prol.loopexit:                       ; preds = %.lr.ph.i.i91.prol, %.lr.ph.i.i91.preheader
  %indvars.iv.i.i92.unr = phi i64 [ %indvars.iv.i.i92.ph, %.lr.ph.i.i91.preheader ], [ %indvars.iv.next.i.i93.prol, %.lr.ph.i.i91.prol ]
  %i.hs = sub i64 %indvars.iv.i.i92.ph, %i.as
  %i.ht = icmp ugt i64 %i.hs, -8
  br i1 %i.ht, label %._crit_edge.thread.i.i95, label %.lr.ph.i.i91

._crit_edge.thread.i.i95:                         ; preds = %.lr.ph.i.i91.prol.loopexit, %.lr.ph.i.i91, %middle.block260, %vec.epilog.middle.block273, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i85
  %i.hu = shl i64 %i.as, 2
  %i.hv = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %.pre.i.i90, i64 noundef %i.hu, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i97 unwind label %bb.ag, !inline_history !190

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i97: ; preds = %._crit_edge.thread.i.i95
  %.pre2.pre.i96 = load i64, ptr %i.at, align 8, !tbaa !39
  %.pre152.pre = load ptr, ptr %i.n, align 8, !tbaa !40
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.pre153.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !39
  %.phi.trans.insert154.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre155.pre = load i64, ptr %.phi.trans.insert154.phi.trans.insert, align 8, !tbaa !48
  store i64 %spec.select.i82, ptr %i.gq, align 8, !tbaa !48
  store ptr %.0.i.i.i.i.i87, ptr %i.k, align 8, !tbaa !40
  br label %bb.ac

.lr.ph.i.i91:                                     ; preds = %.lr.ph.i.i91.prol.loopexit, %.lr.ph.i.i91
  %indvars.iv.i.i92 = phi i64 [ %indvars.iv.next.i.i93.7, %.lr.ph.i.i91 ], [ %indvars.iv.i.i92.unr, %.lr.ph.i.i91.prol.loopexit ] ; 10 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.i.i92
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.i.i92
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !25
  store float %i.ia, ptr %i.hy, align 4, !tbaa !25
  %indvars.iv.next.i.i93 = add nuw nsw i64 %indvars.iv.i.i92, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.next.i.i93
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.next.i.i93
  %i.id = load float, ptr %i.ic, align 4, !tbaa !25
  store float %i.id, ptr %i.ib, align 4, !tbaa !25
  %indvars.iv.next.i.i93.1 = add nuw nsw i64 %indvars.iv.i.i92, 2 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.next.i.i93.1
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.next.i.i93.1
  %i.ig = load float, ptr %i.if, align 4, !tbaa !25
  store float %i.ig, ptr %i.ie, align 4, !tbaa !25
  %indvars.iv.next.i.i93.2 = add nuw nsw i64 %indvars.iv.i.i92, 3 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.next.i.i93.2
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.next.i.i93.2
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !25
  store float %i.ij, ptr %i.ih, align 4, !tbaa !25
  %indvars.iv.next.i.i93.3 = add nuw nsw i64 %indvars.iv.i.i92, 4 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.next.i.i93.3
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.next.i.i93.3
  %i.im = load float, ptr %i.il, align 4, !tbaa !25
  store float %i.im, ptr %i.ik, align 4, !tbaa !25
  %indvars.iv.next.i.i93.4 = add nuw nsw i64 %indvars.iv.i.i92, 5 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.next.i.i93.4
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.next.i.i93.4
  %i.ip = load float, ptr %i.io, align 4, !tbaa !25
  store float %i.ip, ptr %i.in, align 4, !tbaa !25
  %indvars.iv.next.i.i93.5 = add nuw nsw i64 %indvars.iv.i.i92, 6 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.next.i.i93.5
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.next.i.i93.5
  %i.is = load float, ptr %i.ir, align 4, !tbaa !25
  store float %i.is, ptr %i.iq, align 4, !tbaa !25
  %indvars.iv.next.i.i93.6 = add nuw nsw i64 %indvars.iv.i.i92, 7 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i87, i64 %indvars.iv.next.i.i93.6
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i90, i64 %indvars.iv.next.i.i93.6
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !25
  store float %i.iv, ptr %i.it, align 4, !tbaa !25
  %indvars.iv.next.i.i93.7 = add nuw nsw i64 %indvars.iv.i.i92, 8 ; 2 uses
  %exitcond.not.i.i94.7 = icmp eq i64 %indvars.iv.next.i.i93.7, %i.as
  br i1 %exitcond.not.i.i94.7, label %._crit_edge.thread.i.i95, label %.lr.ph.i.i91, !llvm.loop !203

bb.ac:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i97, %bb.z, %bb.y
  %i.iw = phi i64 [ %.pre155.pre, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i97 ], [ %i.ap, %bb.z ], [ %i.ap, %bb.y ] ; 8 uses
  %i.ix = phi i64 [ %.pre153.pre, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i97 ], [ %i.aq, %bb.z ], [ %i.aq, %bb.y ] ; 3 uses
  %.pre.i.i112 = phi ptr [ %.pre152.pre, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i97 ], [ %i.ar, %bb.z ], [ %i.ar, %bb.y ] ; 17 uses
  %i.iy = phi ptr [ %.0.i.i.i.i.i87, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i97 ], [ %.pre.i.i90, %bb.z ], [ %.pre.i.i90, %bb.y ]
  %i.iz = phi i64 [ %.pre2.pre.i96, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i97 ], [ %i.as, %bb.z ], [ %.pre.i84, %bb.y ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.iz
  store float 8.310000e+02, ptr %i.ja, align 4, !tbaa !25
  %i.jb = add i64 %i.iz, 1
  store i64 %i.jb, ptr %i.at, align 8, !tbaa !39
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.jd = getelementptr [4 x i8], ptr %.pre.i.i112, i64 %i.ix
  %i.je = getelementptr i8, ptr %i.jd, i64 -4
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.jg = icmp eq i64 %i.iw, %i.ix
  br i1 %i.jg, label %bb.ad, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit125

bb.ad:                                            ; preds = %bb.ac
  %i.jh = icmp eq i64 %i.iw, 0
  %i.ji = shl i64 %i.iw, 1
  %spec.select.i104 = select i1 %i.jh, i64 4, i64 %i.ji ; 4 uses
  %.not.i.i105 = icmp ult i64 %i.iw, %spec.select.i104
  br i1 %.not.i.i105, label %bb.ae, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit125

bb.ae:                                            ; preds = %bb.ad
  %i.jj = shl i64 %spec.select.i104, 2            ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i107, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jl = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = invoke noundef ptr %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, i64 noundef %i.jj, i64 noundef 4)
          to label %.noexc123 unwind label %bb.f, !inline_history !3

.noexc123:                                        ; preds = %bb.af
  %.pre.i106 = load i64, ptr %i.jc, align 8, !tbaa !39
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i107

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i107: ; preds = %.noexc123, %bb.ae
  %.pre24.i108 = phi i64 [ %.pre.i106, %.noexc123 ], [ %i.iw, %bb.ae ] ; 11 uses
  %.0.i.i.i.i.i109 = phi ptr [ %i.jp, %.noexc123 ], [ null, %bb.ae ] ; 14 uses
  %.not13.i.i110 = icmp eq i64 %.pre24.i108, 0
  br i1 %.not13.i.i110, label %._crit_edge.i.i121, label %iter.check295

iter.check295:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i107
  %min.iters.check282 = icmp ult i64 %.pre24.i108, 4
  %.0.i.i.i.i.i109277 = ptrtoaddr ptr %.0.i.i.i.i.i109 to i64
  %9 = ptrtoaddr ptr %.pre.i.i112 to i64
  %i.jq = sub i64 %9, %.0.i.i.i.i.i109277
  %diff.check279 = icmp ugt i64 %i.jq, -128
  %or.cond342 = select i1 %min.iters.check282, i1 true, i1 %diff.check279
  br i1 %or.cond342, label %.lr.ph.i.i113.preheader, label %vector.main.loop.iter.check281

vector.main.loop.iter.check281:                   ; preds = %iter.check295
  %min.iters.check282.a = icmp ult i64 %.pre24.i108, 32
  br i1 %min.iters.check282.a, label %vec.epilog.ph299, label %vector.ph283

vector.ph283:                                     ; preds = %vector.main.loop.iter.check281
  %i.jr = and i64 %.pre24.i108, 28
  %n.vec284 = and i64 %.pre24.i108, -32           ; 4 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.ph283, %vector.body285
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body285 ] ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %index286 ; 4 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %index286 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 96
  %wide.load287 = load <8 x float>, ptr %i.jt, align 4, !tbaa !25
  %wide.load288 = load <8 x float>, ptr %i.ju, align 4, !tbaa !25
  %wide.load289 = load <8 x float>, ptr %i.jv, align 4, !tbaa !25
  %wide.load290 = load <8 x float>, ptr %i.jw, align 4, !tbaa !25
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 96
  store <8 x float> %wide.load287, ptr %i.js, align 4, !tbaa !25
  store <8 x float> %wide.load288, ptr %i.jx, align 4, !tbaa !25
  store <8 x float> %wide.load289, ptr %i.jy, align 4, !tbaa !25
  store <8 x float> %wide.load290, ptr %i.jz, align 4, !tbaa !25
  %index.next291 = add nuw i64 %index286, 32      ; 2 uses
  %i.ka = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.ka, label %middle.block292, label %vector.body285, !llvm.loop !204

middle.block292:                                  ; preds = %vector.body285
  %cmp.n293 = icmp eq i64 %.pre24.i108, %n.vec284
  br i1 %cmp.n293, label %._crit_edge.thread.i.i117, label %vec.epilog.iter.check297

vec.epilog.iter.check297:                         ; preds = %middle.block292
  %min.epilog.iters.check298 = icmp eq i64 %i.jr, 0
  br i1 %min.epilog.iters.check298, label %.lr.ph.i.i113.preheader, label %vec.epilog.ph299, !prof !47

vec.epilog.ph299:                                 ; preds = %vector.main.loop.iter.check281, %vec.epilog.iter.check297
  %vec.epilog.resume.val294 = phi i64 [ %n.vec284, %vec.epilog.iter.check297 ], [ 0, %vector.main.loop.iter.check281 ]
  %n.vec300 = and i64 %.pre24.i108, -4            ; 3 uses
  br label %vec.epilog.vector.body301

vec.epilog.vector.body301:                        ; preds = %vec.epilog.vector.body301, %vec.epilog.ph299
  %index302 = phi i64 [ %vec.epilog.resume.val294, %vec.epilog.ph299 ], [ %index.next304, %vec.epilog.vector.body301 ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %index302
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %index302
  %wide.load303 = load <4 x float>, ptr %i.kc, align 4, !tbaa !25
  store <4 x float> %wide.load303, ptr %i.kb, align 4, !tbaa !25
  %index.next304 = add nuw i64 %index302, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next304, %n.vec300
  br i1 %i.kd, label %vec.epilog.middle.block305, label %vec.epilog.vector.body301, !llvm.loop !205

vec.epilog.middle.block305:                       ; preds = %vec.epilog.vector.body301
  %cmp.n306 = icmp eq i64 %.pre24.i108, %n.vec300
  br i1 %cmp.n306, label %._crit_edge.thread.i.i117, label %.lr.ph.i.i113.preheader

.lr.ph.i.i113.preheader:                          ; preds = %iter.check295, %vec.epilog.iter.check297, %vec.epilog.middle.block305
  %indvars.iv.i.i114.ph = phi i64 [ 0, %iter.check295 ], [ %n.vec284, %vec.epilog.iter.check297 ], [ %n.vec300, %vec.epilog.middle.block305 ] ; 4 uses
  %i.ke = sub i64 %.pre24.i108, %indvars.iv.i.i114.ph
  %xtraiter361 = and i64 %i.ke, 7                 ; 2 uses
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph.i.i113.prol.loopexit, label %.lr.ph.i.i113.prol

.lr.ph.i.i113.prol:                               ; preds = %.lr.ph.i.i113.preheader, %.lr.ph.i.i113.prol
  %indvars.iv.i.i114.prol = phi i64 [ %indvars.iv.next.i.i115.prol, %.lr.ph.i.i113.prol ], [ %indvars.iv.i.i114.ph, %.lr.ph.i.i113.preheader ] ; 3 uses
  %prol.iter363 = phi i64 [ %prol.iter363.next, %.lr.ph.i.i113.prol ], [ 0, %.lr.ph.i.i113.preheader ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.i.i114.prol
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i114.prol
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !25
  store float %i.kh, ptr %i.kf, align 4, !tbaa !25
  %indvars.iv.next.i.i115.prol = add nuw nsw i64 %indvars.iv.i.i114.prol, 1 ; 2 uses
  %prol.iter363.next = add i64 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i64 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph.i.i113.prol.loopexit, label %.lr.ph.i.i113.prol, !llvm.loop !206

.lr.ph.i.i113.prol.loopexit:                      ; preds = %.lr.ph.i.i113.prol, %.lr.ph.i.i113.preheader
  %indvars.iv.i.i114.unr = phi i64 [ %indvars.iv.i.i114.ph, %.lr.ph.i.i113.preheader ], [ %indvars.iv.next.i.i115.prol, %.lr.ph.i.i113.prol ]
  %i.ki = sub i64 %indvars.iv.i.i114.ph, %.pre24.i108
  %i.kj = icmp ugt i64 %i.ki, -8
  br i1 %i.kj, label %._crit_edge.thread.i.i117, label %.lr.ph.i.i113

._crit_edge.i.i121:                               ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i107
  %.not.i.i.i.i.i122 = icmp eq ptr %.pre.i.i112, null
  br i1 %.not.i.i.i.i.i122, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i119, label %._crit_edge.thread.i.i117

._crit_edge.thread.i.i117:                        ; preds = %.lr.ph.i.i113.prol.loopexit, %.lr.ph.i.i113, %middle.block292, %vec.epilog.middle.block305, %._crit_edge.i.i121
  %i.kk = load i64, ptr %i.jf, align 8, !tbaa !48
  %i.kl = shl i64 %i.kk, 2
  %i.km = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !44
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  invoke void %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull %.pre.i.i112, i64 noundef %i.kl, i64 noundef 4)
          to label %.noexc124 unwind label %bb.f, !inline_history !3

.noexc124:                                        ; preds = %._crit_edge.thread.i.i117
  %.pre2.pre.i118 = load i64, ptr %i.jc, align 8, !tbaa !39
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i119

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i119: ; preds = %.noexc124, %._crit_edge.i.i121
  %.pre2.i120 = phi i64 [ %.pre2.pre.i118, %.noexc124 ], [ 0, %._crit_edge.i.i121 ]
  store i64 %spec.select.i104, ptr %i.jf, align 8, !tbaa !48
  store ptr %.0.i.i.i.i.i109, ptr %i.n, align 8, !tbaa !40
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit125

.lr.ph.i.i113:                                    ; preds = %.lr.ph.i.i113.prol.loopexit, %.lr.ph.i.i113
  %indvars.iv.i.i114 = phi i64 [ %indvars.iv.next.i.i115.7, %.lr.ph.i.i113 ], [ %indvars.iv.i.i114.unr, %.lr.ph.i.i113.prol.loopexit ] ; 10 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.i.i114
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i114
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !25
  store float %i.ks, ptr %i.kq, align 4, !tbaa !25
  %indvars.iv.next.i.i115 = add nuw nsw i64 %indvars.iv.i.i114, 1 ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.next.i.i115
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i115
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !25
  store float %i.kv, ptr %i.kt, align 4, !tbaa !25
  %indvars.iv.next.i.i115.1 = add nuw nsw i64 %indvars.iv.i.i114, 2 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.next.i.i115.1
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i115.1
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !25
  store float %i.ky, ptr %i.kw, align 4, !tbaa !25
  %indvars.iv.next.i.i115.2 = add nuw nsw i64 %indvars.iv.i.i114, 3 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.next.i.i115.2
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i115.2
  %i.lb = load float, ptr %i.la, align 4, !tbaa !25
  store float %i.lb, ptr %i.kz, align 4, !tbaa !25
  %indvars.iv.next.i.i115.3 = add nuw nsw i64 %indvars.iv.i.i114, 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.next.i.i115.3
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i115.3
  %i.le = load float, ptr %i.ld, align 4, !tbaa !25
  store float %i.le, ptr %i.lc, align 4, !tbaa !25
  %indvars.iv.next.i.i115.4 = add nuw nsw i64 %indvars.iv.i.i114, 5 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.next.i.i115.4
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i115.4
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !25
  store float %i.lh, ptr %i.lf, align 4, !tbaa !25
  %indvars.iv.next.i.i115.5 = add nuw nsw i64 %indvars.iv.i.i114, 6 ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.next.i.i115.5
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i115.5
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !25
  store float %i.lk, ptr %i.li, align 4, !tbaa !25
  %indvars.iv.next.i.i115.6 = add nuw nsw i64 %indvars.iv.i.i114, 7 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i109, i64 %indvars.iv.next.i.i115.6
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i115.6
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !25
  store float %i.ln, ptr %i.ll, align 4, !tbaa !25
  %indvars.iv.next.i.i115.7 = add nuw nsw i64 %indvars.iv.i.i114, 8 ; 2 uses
  %exitcond.not.i.i116.7 = icmp eq i64 %indvars.iv.next.i.i115.7, %.pre24.i108
  br i1 %exitcond.not.i.i116.7, label %._crit_edge.thread.i.i117, label %.lr.ph.i.i113, !llvm.loop !207

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit125: ; preds = %bb.ac, %bb.ad, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i119
  %i.lo = phi i64 [ %spec.select.i104, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i119 ], [ %i.iw, %bb.ad ], [ %i.iw, %bb.ac ]
  %i.lp = phi ptr [ %.0.i.i.i.i.i109, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i119 ], [ %.pre.i.i112, %bb.ad ], [ %.pre.i.i112, %bb.ac ] ; 2 uses
  %i.lq = phi i64 [ %.pre2.i120, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i119 ], [ %i.iw, %bb.ad ], [ %i.ix, %bb.ac ] ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = load float, ptr %i.je, align 4, !tbaa !25
  store float %i.ls, ptr %i.lr, align 4, !tbaa !25
  %i.lt = add i64 %i.lq, 1                        ; 2 uses
  store i64 %i.lt, ptr %i.jc, align 8, !tbaa !39
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.thread.i.i95, %bb.ab
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ah:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit125, %._crit_edge
  %i.lv = phi i64 [ %i.lo, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit125 ], [ %i.ap, %._crit_edge ]
  %i.lw = phi i64 [ %i.lt, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit125 ], [ %i.aq, %._crit_edge ]
  %i.lx = phi ptr [ %i.lp, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE9push_backERKf.exit125 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.ly = load ptr, ptr %3, align 8, !tbaa !44
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = invoke noundef ptr %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 64, i64 noundef 8)
          to label %.noexc126 unwind label %.loopexit.split-lp, !inline_history !4 ; 5 uses

.noexc126:                                        ; preds = %bb.ah
  %i.mc = load ptr, ptr %i.k, align 8, !tbaa !40  ; 2 uses
  %i.md = load i64, ptr %i.at, align 8, !tbaa !39
  %i.me = getelementptr inbounds nuw i8, ptr %7, i64 24
  invoke void @_ZN4pbrt23PiecewiseLinearSpectrumC2EN4pstd4spanIKfEES4_NS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(64) %i.mb, ptr %i.mc, i64 %i.md, ptr %i.lx, i64 %i.lw, ptr nonnull %3)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt23PiecewiseLinearSpectrumEJRNS_6vectorIfNS1_IfEEEESA_RS3_EEEPT_DpOT0_.exit unwind label %.loopexit.split-lp

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt23PiecewiseLinearSpectrumEJRNS_6vectorIfNS1_IfEEEESA_RS3_EEEPT_DpOT0_.exit: ; preds = %.noexc126
  br i1 %2, label %bb.ai, label %_ZN4pbrt23PiecewiseLinearSpectrum5ScaleEf.exit

bb.ai:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt23PiecewiseLinearSpectrumEJRNS_6vectorIfNS1_IfEEEESA_RS3_EEEPT_DpOT0_.exit
  %i.mf = ptrtoint ptr %i.mb to i64               ; 2 uses
  %i.mg = load ptr, ptr @_ZN4pbrt7Spectra1yE, align 8, !tbaa !24
  %i.mh = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.mi = and i64 %i.mf, 144115188075855871
  %i.mj = inttoptr i64 %i.mi to ptr
  %i.mk = lshr i64 %i.mf, 57
  %i.ml = trunc nuw nsw i64 %i.mk to i32
  %i.mm = or i32 %i.ml, 3
  %i.mn = add nsw i32 %i.mm, -1
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRA11_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !35, !alias.scope !279 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA11_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !33 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !33
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA11_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #27
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA11_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !35
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !34
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !34
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #26
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.130, %bb.c ], [ @.str.131, %bb.r ], [ @.str.129, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.128, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #27
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !69
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !34
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !34
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn24
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

declare void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt22DenselySampledSpectrumC2ENS_8SpectrumEiiN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, ptr %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %class.anon.12, align 8             ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i32 %2, ptr %0, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.d, align 4, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = sub nsw i32 %3, %2
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = ptrtoint ptr %4 to i64
  store i64 %i.i, ptr %i.e, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.g, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKS3_.exit, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i: ; preds = %bb.a
  %i.m = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.m, i64 noundef 4), !inline_history !5 ; 14 uses
  %.pr.i.i = load i64, ptr %i.l, align 8, !tbaa !39 ; 11 uses
  %.not13.i.i.i = icmp eq i64 %.pr.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !40 ; 14 uses
  br i1 %.not13.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %min.iters.check = icmp ult i64 %.pr.i.i, 4
  %i.r = ptrtoaddr ptr %i.q to i64
  %6 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.s = sub i64 %6, %i.r
  %diff.check = icmp ugt i64 %i.s, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %.pr.i.i, 32
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %.pr.i.i, 28
  %n.vec = and i64 %.pr.i.i, -32                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !25
  %wide.load28 = load <8 x float>, ptr %i.w, align 4, !tbaa !25
  %wide.load29 = load <8 x float>, ptr %i.x, align 4, !tbaa !25
  %wide.load30 = load <8 x float>, ptr %i.y, align 4, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store <8 x float> %wide.load, ptr %i.u, align 4, !tbaa !25
  store <8 x float> %wide.load28, ptr %i.z, align 4, !tbaa !25
  store <8 x float> %wide.load29, ptr %i.aa, align 4, !tbaa !25
  store <8 x float> %wide.load30, ptr %i.ab, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %.pr.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index32
  %wide.load33 = load <4 x float>, ptr %i.ae, align 4, !tbaa !25
  store <4 x float> %wide.load33, ptr %i.ad, align 4, !tbaa !25
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !281

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %.pr.i.i, %n.vec31
  br i1 %cmp.n35, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 4 uses
  %i.ag = sub i64 %.pr.i.i, %indvars.iv.i.i.i.ph
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !25
  store float %i.aj, ptr %i.ah, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !282

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.ak = sub i64 %indvars.iv.i.i.i.ph, %.pr.i.i
  %i.al = icmp ugt i64 %i.ak, -8
  br i1 %i.al, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.k, align 8, !tbaa !48
  %i.an = shl i64 %i.am, 2
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.an, i64 noundef 4), !inline_history !283
  br label %.lr.ph.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !25
  store float %i.au, ptr %i.as, align 4, !tbaa !25
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !25
  store float %i.ax, ptr %i.av, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ba = load float, ptr %i.az, align 4, !tbaa !25
  store float %i.ba, ptr %i.ay, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.2
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !25
  store float %i.bd, ptr %i.bb, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.3
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !25
  store float %i.bg, ptr %i.be, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.4
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !25
  store float %i.bj, ptr %i.bh, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.5
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !25
  store float %i.bm, ptr %i.bk, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.6
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.6
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !25
  store float %i.bp, ptr %i.bn, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %.pr.i.i
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !284

.lr.ph.i.i:                                       ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  store i64 %i.h, ptr %i.k, align 8, !tbaa !48
  store ptr %i.q, ptr %i.j, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %i.m, i1 false), !tbaa !25
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKS3_.exit

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKS3_.exit: ; preds = %bb.a, %.lr.ph.i.i
  store i64 %i.h, ptr %i.l, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 %3, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 %2, ptr %i.c, align 4, !tbaa !57
  %.not = icmp slt i32 %3, %2
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKS3_.exit
  invoke void @_ZN4pbrt8LogFatalIJRA11_KcS3_S3_RiS3_S4_EEEvNS_8LogLevelEPS1_iS6_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.125, i32 noundef 415, ptr noundef nonnull @.str.134, ptr noundef nonnull align 1 dereferenceable(11) @.str.135, ptr noundef nonnull align 1 dereferenceable(11) @.str.136, ptr noundef nonnull align 1 dereferenceable(11) @.str.135, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.136, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.h

bb.e:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.br = load i64, ptr %1, align 8, !tbaa !17
  %i.bs = and i64 %i.br, 144115188075855871
  %.not21 = icmp eq i64 %i.bs, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.bt = sext i32 %2 to i64                      ; 2 uses
  %i.bu = add i32 %3, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.bv = trunc nsw i64 %indvars.iv to i32
  %i.bw = sitofp i32 %i.bv to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.bw, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.a, ptr %5, align 8, !tbaa !27
  %i.bx = load i64, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.by = and i64 %i.bx, 144115188075855871
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = lshr i64 %i.bx, 57
end_hunk_3
