Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiii:bb.a
vector.body301:                                   ; preds = %vector.body301, %vector.ph297
  %index302 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body301 ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %index302 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %wide.load303 = load <4 x float>, ptr %i.kg, align 4, !tbaa !266
  %wide.load304 = load <4 x float>, ptr %i.kh, align 4, !tbaa !266
  %i.ki = fmul <4 x float> %broadcast.splat300, %wide.load303
  %i.kj = fmul <4 x float> %broadcast.splat300, %wide.load304
  store <4 x float> %i.ki, ptr %i.kg, align 4, !tbaa !266
  store <4 x float> %i.kj, ptr %i.kh, align 4, !tbaa !266
  %index.next305 = add nuw i64 %index302, 8       ; 2 uses
  %i.kk = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.kk, label %middle.block306, label %vector.body301, !llvm.loop !1087

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %n.vec298, %i.bk
  br i1 %cmp.n307, label %.split.us, label %.lr.ph103.us.us.1.preheader309

.lr.ph103.us.us.1.preheader309:                   ; preds = %.lr.ph103.us.us.1.preheader, %middle.block306
  %indvars.iv162.1.ph = phi i64 [ 0, %.lr.ph103.us.us.1.preheader ], [ %n.vec298, %middle.block306 ]
  br label %.lr.ph103.us.us.1

.lr.ph103.us.us.1:                                ; preds = %.lr.ph103.us.us.1.preheader309, %.lr.ph103.us.us.1
  %indvars.iv162.1 = phi i64 [ %indvars.iv.next163.1, %.lr.ph103.us.us.1 ], [ %indvars.iv162.1.ph, %.lr.ph103.us.us.1.preheader309 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv162.1 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !266
  %i.kn = fmul float %i.ax, %i.km
  store float %i.kn, ptr %i.kl, align 4, !tbaa !266
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162.1, 1 ; 2 uses
  %exitcond166.1.not = icmp eq i64 %indvars.iv.next163.1, %i.bk
  br i1 %exitcond166.1.not, label %.split.us, label %.lr.ph103.us.us.1, !llvm.loop !1088

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.split: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  br i1 %i.bc, label %.lr.ph.us116.us.preheader, label %.split.us

.lr.ph.us116.us.preheader:                        ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.split
  %i.ko = zext nneg i32 %i.bb to i64              ; 7 uses
  %i.kp = shl nuw nsw i64 %i.ko, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.kp, i1 false), !tbaa !266
  %min.iters.check = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check, label %._crit_edge.us118.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us116.us.preheader
  %n.vec = and i64 %i.ko, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.kq, align 4, !tbaa !266
  %wide.load194 = load <4 x float>, ptr %i.kr, align 4, !tbaa !266
  %i.ks = fmul <4 x float> %broadcast.splat, %wide.load
  %i.kt = fmul <4 x float> %broadcast.splat, %wide.load194
  store <4 x float> %i.ks, ptr %i.kq, align 4, !tbaa !266
  store <4 x float> %i.kt, ptr %i.kr, align 4, !tbaa !266
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !1089

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ko
  br i1 %cmp.n, label %._crit_edge104.us122.us, label %._crit_edge.us118.us.preheader

._crit_edge.us118.us.preheader:                   ; preds = %.lr.ph.us116.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us116.us.preheader ], [ %n.vec, %middle.block ]
  br label %._crit_edge.us118.us

._crit_edge.us118.us:                             ; preds = %._crit_edge.us118.us.preheader, %._crit_edge.us118.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us118.us ], [ %indvars.iv.ph, %._crit_edge.us118.us.preheader ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !266
  %i.kx = fmul float %i.ax, %i.kw
  store float %i.kx, ptr %i.kv, align 4, !tbaa !266
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ko
  br i1 %exitcond.not, label %._crit_edge104.us122.us, label %._crit_edge.us118.us, !llvm.loop !1090

._crit_edge104.us122.us:                          ; preds = %._crit_edge.us118.us, %middle.block
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bi ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ky, i8 0, i64 %i.kp, i1 false), !tbaa !266
  %min.iters.check196 = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check196, label %._crit_edge.us118.us.1.preheader, label %vector.ph197

vector.ph197:                                     ; preds = %._crit_edge104.us122.us
  %n.vec198 = and i64 %i.ko, 2147483640           ; 3 uses
  %broadcast.splatinsert199 = insertelement <4 x float> poison, float %i.ax, i64 0
  %broadcast.splat200 = shufflevector <4 x float> %broadcast.splatinsert199, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph197
  %index202 = phi i64 [ 0, %vector.ph197 ], [ %index.next205, %vector.body201 ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index202 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %wide.load203 = load <4 x float>, ptr %i.kz, align 4, !tbaa !266
  %wide.load204 = load <4 x float>, ptr %i.la, align 4, !tbaa !266
  %i.lb = fmul <4 x float> %broadcast.splat200, %wide.load203
  %i.lc = fmul <4 x float> %broadcast.splat200, %wide.load204
  store <4 x float> %i.lb, ptr %i.kz, align 4, !tbaa !266
  store <4 x float> %i.lc, ptr %i.la, align 4, !tbaa !266
  %index.next205 = add nuw i64 %index202, 8       ; 2 uses
  %i.ld = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.ld, label %middle.block206, label %vector.body201, !llvm.loop !1091

middle.block206:                                  ; preds = %vector.body201
  %cmp.n207 = icmp eq i64 %n.vec198, %i.ko
  br i1 %cmp.n207, label %.split.us, label %._crit_edge.us118.us.1.preheader

._crit_edge.us118.us.1.preheader:                 ; preds = %._crit_edge104.us122.us, %middle.block206
  %indvars.iv.1.ph = phi i64 [ 0, %._crit_edge104.us122.us ], [ %n.vec198, %middle.block206 ]
  br label %._crit_edge.us118.us.1

._crit_edge.us118.us.1:                           ; preds = %._crit_edge.us118.us.1.preheader, %._crit_edge.us118.us.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %._crit_edge.us118.us.1 ], [ %indvars.iv.1.ph, %._crit_edge.us118.us.1.preheader ] ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.1 ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !266
  %i.lg = fmul float %i.ax, %i.lf
  store float %i.lg, ptr %i.le, align 4, !tbaa !266
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %i.ko
  br i1 %exitcond.1.not, label %.split.us, label %._crit_edge.us118.us.1, !llvm.loop !1092

.split.us:                                        ; preds = %._crit_edge.us118.us.1, %.lr.ph103.us.us.1, %middle.block206, %middle.block306, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.split, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit.split.us
  %i.lh = load i8, ptr %i.l, align 2
  %i.li = or i8 %i.lh, 4
  store i8 %i.li, ptr %i.l, align 2
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  %i.lj = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiiiE5mutex release, align 1
  resume { ptr, i32 } %i.lj

bb.w:                                             ; preds = %.split.us, %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  store atomic i8 0, ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiiiE5mutex release, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b
  %i.lk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !466
  %i.ln = mul nsw i32 %i.lm, %6
  %i.lo = sext i32 %i.ln to i64
  %i.lp = load ptr, ptr %i.lk, align 8, !tbaa !1094
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.lo
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x
  %.079 = phi ptr [ %i.lq, %bb.x ], [ null, %bb.a ]
  ret ptr %.079
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(188) %0, float noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #7 align 2 !guid !1107 {
bb.a:
  %i.a = fcmp olt float %1, 1.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fsub float 1.000000e+00, %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call float @llvm.floor.f32(float %1)
  %i.d = fsub float %1, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink36 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.031 = phi float [ %i.d, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !393
  %i.h = tail call noundef ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiii(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(400) %4, ptr poison, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %7, i32 noundef %.sink36) ; 2 uses
  %.inv = fcmp oge float %.031, 0.000000e+00
  %.0.i = select i1 %.inv, float %.031, float 0.000000e+00 ; 2 uses
  %i.i = fcmp ogt float %.0.i, 1.000000e+00
  %.1.i = select i1 %i.i, float 1.000000e+00, float %.0.i ; 2 uses
  %i.j = fmul float %.1.i, %.1.i                  ; 5 uses
  %i.k = load i32, ptr %6, align 8, !tbaa !388
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %i.h, i64 %i.l ; 5 uses
  %i.n = icmp sgt i32 %8, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %8 to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %8, 12
  br i1 %min.iters.check, label %.lr.ph.preheader49, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.o = shl nuw nsw i64 %wide.trip.count, 2
  %i.p = getelementptr i8, ptr %2, i64 %i.o       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %bound0 = icmp ult ptr %2, %i.q
  %bound1 = icmp ult ptr %3, %i.p
  %found.conflict = and i1 %bound0, %bound1
  %9 = add nsw i64 %i.l, %wide.trip.count
  %10 = shl nsw i64 %9, 2
  %11 = getelementptr i8, ptr %i.h, i64 %10
  %bound043 = icmp ult ptr %2, %11
  %bound144 = icmp ult ptr %i.m, %i.p
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  br i1 %conflict.rdx, label %.lr.ph.preheader49, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.r = load float, ptr %3, align 4, !tbaa !266, !alias.scope !1108
  %i.s = fmul float %i.j, %i.r
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x float>, ptr %i.t, align 4, !tbaa !266, !alias.scope !1109
  %wide.load46 = load <4 x float>, ptr %i.u, align 4, !tbaa !266, !alias.scope !1109
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load47 = load <4 x float>, ptr %i.v, align 4, !tbaa !266, !alias.scope !1110, !noalias !1111
  %wide.load48 = load <4 x float>, ptr %i.w, align 4, !tbaa !266, !alias.scope !1110, !noalias !1111
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load47)
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load46, <4 x float> %wide.load48)
  store <4 x float> %i.x, ptr %i.v, align 4, !tbaa !266, !alias.scope !1110, !noalias !1111
  store <4 x float> %i.y, ptr %i.w, align 4, !tbaa !266, !alias.scope !1110, !noalias !1111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader49

.lr.ph.preheader49:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader49
  %i.aa = load float, ptr %3, align 4, !tbaa !266
  %i.ab = fmul float %i.j, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !266
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !266
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ad, float %i.af)
  store float %i.ag, ptr %i.ae, align 4, !tbaa !266
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader49
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader49 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.ah
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.d
  %i.aj = fsub float 1.000000e+00, %i.j
  %i.ak = load float, ptr %3, align 4, !tbaa !266
  %i.al = fmul float %i.aj, %i.ak
  store float %i.al, ptr %3, align 4, !tbaa !266
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.am = load float, ptr %3, align 4, !tbaa !266
  %i.an = fmul float %i.j, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !266
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !266
  %i.as = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ap, float %i.ar)
  store float %i.as, ptr %i.aq, align 4, !tbaa !266
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load float, ptr %3, align 4, !tbaa !266
  %i.au = fmul float %i.j, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.aw = load float, ptr %i.av, align 4, !tbaa !266
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !266
  %i.az = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aw, float %i.ay)
  store float %i.az, ptr %i.ax, align 4, !tbaa !266
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1106
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ImageCacheImpl9has_errorEv(ptr noundef nonnull align 64 dereferenceable(25240)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !guid !1117 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca float, align 4                    ; 12 uses
  %i.e = alloca float, align 4                    ; 13 uses
  %i.f = alloca float, align 4                    ; 10 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = alloca float, align 4                    ; 7 uses
  %i.i = alloca float, align 4                    ; 7 uses
  %i.j = alloca float, align 4                    ; 4 uses
  %8 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 14 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 15 uses
  %10 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %12 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %14 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %i.k = alloca [3 x float], align 8              ; 6 uses
  %16 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %i.l = alloca [3 x float], align 8              ; 6 uses
  %18 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %i.m = alloca [3 x float], align 8              ; 6 uses
  %20 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %22 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !273
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !322
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.n, i64 noundef %i.p) ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.60, i64 noundef 11) ; 0 uses
  %i.s = fpext float %2 to double
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, double noundef %i.s) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !274
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !280
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1118
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.aa, %bb.b ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = fpext float %3 to double                ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, double noundef %i.ac) ; 2 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.61, i64 noundef 5) ; 0 uses
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, double noundef %i.ac) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !274
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !280
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1118
  %.not.i125 = icmp eq i64 %i.al, 0
  br i1 %.not.i125, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127: ; preds = %bb.d, %bb.e
  %.0.i126 = phi ptr [ %i.am, %bb.d ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = fpext float %5 to double
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i126, double noundef %i.ao)
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %i.ar = insertelement <2 x float> poison, float %5, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %3, i64 1 ; 2 uses
  %i.at = fmul <2 x float> %i.as, %i.as
  %i.au = insertelement <2 x float> poison, float %4, i64 0
  %i.av = insertelement <2 x float> %i.au, float %2, i64 1 ; 2 uses
  %i.aw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.av, <2 x float> %i.at) ; 3 uses
  %i.ax = fcmp olt <2 x float> %i.aw, splat (float 1.000000e-16) ; 3 uses
  %i.ay = extractelement <2 x i1> %i.ax, i64 1
  br i1 %i.ay, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127
  %i.az = extractelement <2 x i1> %i.ax, i64 0
  br i1 %i.az, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = extractelement <2 x float> %i.aw, i64 0
end_hunk_0
