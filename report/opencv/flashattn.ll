Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/flashattn?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MLAS_PLATFORM = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$_ZZ15GetMlasPlatformvE12MlasPlatform = comdat any

$_ZGVZ15GetMlasPlatformvE12MlasPlatform = comdat any

@_ZZ15GetMlasPlatformvE12MlasPlatform = linkonce_odr hidden global %struct.MLAS_PLATFORM zeroinitializer, comdat, align 8
@_ZGVZ15GetMlasPlatformvE12MlasPlatform = linkonce_odr hidden global i64 0, comdat, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_Z26MlasFlashAttentionThreadedPvl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !31
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %i.l = sext i32 %i.k to i64                     ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34   ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !35
  %i.u = sext i32 %i.t to i64                     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36   ; 6 uses
  %i.x = sext i32 %i.w to i64                     ; 19 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42 ; 2 uses
  %i.an = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.b, label %_Z15GetMlasPlatformv.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.ap = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #6
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %_Z15GetMlasPlatformv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #6
  br label %_Z15GetMlasPlatformv.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #6
  resume { ptr, i32 } %i.aq

_Z15GetMlasPlatformv.exit:                        ; preds = %bb.a, %bb.b, %bb.d
  %i.ar = add nsw i64 %i.d, -1
  %i.as = add nsw i64 %i.ar, %i.o
  %i.at = sdiv i64 %i.as, %i.d                    ; 3 uses
  %i.au = mul nsw i64 %i.l, %i.i
  %i.av = mul nsw i64 %i.au, %i.at                ; 2 uses
  %i.aw = sdiv i64 %i.av, %i.ae                   ; 3 uses
  %i.ax = srem i64 %i.av, %i.ae                   ; 2 uses
  %i.ay = icmp slt i64 %1, %i.ax
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z15GetMlasPlatformv.exit
  %i.az = add i64 %i.aw, 1                        ; 2 uses
  %i.ba = mul nsw i64 %i.az, %1                   ; 2 uses
  %i.bb = add i64 %i.az, %i.ba
  br label %bb.h

bb.g:                                             ; preds = %_Z15GetMlasPlatformv.exit
  %i.bc = mul nsw i64 %i.aw, %1
  %i.bd = add nsw i64 %i.bc, %i.ax                ; 2 uses
  %i.be = add nsw i64 %i.bd, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0184 = phi i64 [ %i.ba, %bb.f ], [ %i.bd, %bb.g ] ; 2 uses
  %.0183 = phi i64 [ %i.bb, %bb.f ], [ %i.be, %bb.g ] ; 2 uses
  %i.bf = icmp slt i64 %.0184, %.0183
  br i1 %i.bf, label %.lr.ph238, label %._crit_edge239

.lr.ph238:                                        ; preds = %bb.h
  %i.bg = mul i64 %i.ab, %1                       ; 3 uses
  %i.bh = getelementptr i8, ptr %i.z, i64 %i.bg   ; 5 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.d ; 5 uses
  %i.bj = icmp sgt i32 %i.c, 0
  %i.bk = getelementptr [4 x i8], ptr %i.bi, i64 %i.d ; 5 uses
  %i.bl = mul nsw i64 %i.g, %i.d
  %i.bm = getelementptr [4 x i8], ptr %i.bk, i64 %i.bl ; 4 uses
  %i.bn = icmp sgt i32 %i.q, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = icmp sgt i32 %i.w, 0
  %i.bq = icmp slt i32 %i.w, 1
  %i.br = mul nsw i64 %i.x, %i.l
  %i.bs = shl nsw i64 %i.l, 2
  %i.bt = mul nsw i64 %i.x, %i.l
  %scevgep258.a = getelementptr i8, ptr %i.z, i64 %i.bg
  %i.bu = shl nsw i64 %i.g, 2
  %i.bv = add nsw i64 %i.bu, 8
  %i.bw = mul i64 %i.bv, %i.d
  %i.bx = getelementptr i8, ptr %i.z, i64 %i.bg
  %scevgep260.a = getelementptr i8, ptr %i.bx, i64 %i.bw
  %i.by = shl nsw i64 %i.x, 2
  %min.iters.check281 = icmp ult i32 %i.c, 8
  %n.vec283 = and i64 %i.d, 2147483640            ; 3 uses
  %cmp.n288 = icmp eq i64 %n.vec283, %i.d
  %min.iters.check267 = icmp ult i32 %i.w, 8
  %n.vec269 = and i64 %i.x, 2147483640            ; 3 uses
  %cmp.n278 = icmp eq i64 %n.vec269, %i.x
  %min.iters.check = icmp ult i32 %i.w, 4
  %.mask = and i64 %i.bt, 2305843009213693952
  %stride.check265 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %i.x, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  %xtraiter = and i64 %i.x, 3
  %i.bz = and i32 %i.w, 3
  %lcmp.mod.not = icmp eq i32 %i.bz, 0
  br label %bb.i

._crit_edge239:                                   ; preds = %._crit_edge235.split, %bb.h
  ret void

bb.i:                                             ; preds = %.lr.ph238, %._crit_edge235.split
  %.0182236 = phi i64 [ %.0184, %.lr.ph238 ], [ %i.fx, %._crit_edge235.split ] ; 3 uses
  %i.ca = srem i64 %.0182236, %i.at
  %i.cb = mul i64 %i.ca, %i.d                     ; 4 uses
  %i.cc = sdiv i64 %.0182236, %i.at               ; 2 uses
  %i.cd = srem i64 %i.cc, %i.l                    ; 2 uses
  %i.ce = sdiv i64 %i.cc, %i.l                    ; 2 uses
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  br i1 %min.iters.check281, label %.lr.ph.preheader291, label %vector.body284

vector.body284:                                   ; preds = %.lr.ph.preheader, %vector.body284
  %index285 = phi i64 [ %index.next286, %vector.body284 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index285 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.cf, align 4, !tbaa !44
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.cg, align 4, !tbaa !44
  %index.next286 = add nuw i64 %index285, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next286, %n.vec283
  br i1 %i.ch, label %middle.block287, label %vector.body284, !llvm.loop !14

middle.block287:                                  ; preds = %vector.body284
  br i1 %cmp.n288, label %._crit_edge, label %.lr.ph.preheader291

.lr.ph.preheader291:                              ; preds = %.lr.ph.preheader, %middle.block287
  %.0181217.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec283, %middle.block287 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block287, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !44
  br i1 %i.bn, label %.lr.ph228, label %._crit_edge.._crit_edge229_crit_edge

._crit_edge.._crit_edge229_crit_edge:             ; preds = %._crit_edge
  %.pre = sub nsw i64 %i.o, %i.cb
  %.pre249 = call i64 @llvm.smin.i64(i64 %.pre, i64 %i.d)
  br label %._crit_edge229

.lr.ph228:                                        ; preds = %._crit_edge
  %i.ci = mul nsw i64 %i.ce, %i.l
  %i.cj = add nsw i64 %i.ci, %i.cd                ; 2 uses
  %i.ck = mul nsw i64 %i.cj, %i.o
  %i.cl = add nsw i64 %i.ck, %i.cb
  %i.cm = mul nsw i64 %i.cl, %i.u
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.cm
  %i.co = mul nsw i64 %i.cj, %i.r
  %i.cp = sub nsw i64 %i.o, %i.cb
  %.sroa.speculated203 = call i64 @llvm.smin.i64(i64 %i.cp, i64 %i.d) ; 6 uses
  %i.cq = icmp sgt i64 %.sroa.speculated203, 0
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader291, %.lr.ph
  %.0181217 = phi i64 [ %i.cs, %.lr.ph ], [ %.0181217.ph, %.lr.ph.preheader291 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.0181217
  store float f0xFF7FFFFF, ptr %i.cr, align 4, !tbaa !44
  %i.cs = add nuw nsw i64 %.0181217, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge229:                                   ; preds = %._crit_edge225, %._crit_edge.._crit_edge229_crit_edge
  %.sroa.speculated.pre-phi = phi i64 [ %.pre249, %._crit_edge.._crit_edge229_crit_edge ], [ %.sroa.speculated203, %._crit_edge225 ] ; 5 uses
  %i.ct = icmp slt i64 %.sroa.speculated.pre-phi, 1
  %brmerge = select i1 %i.ct, i1 true, i1 %i.bq
  br i1 %brmerge, label %._crit_edge235.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge229
  %i.cu = mul i64 %i.ce, %i.o
  %i.cv = add i64 %i.cu, %i.cb
  %i.cw = mul i64 %i.cv, %i.l
  %i.cx = add i64 %i.cw, %i.cd                    ; 2 uses
  %i.cy = mul i64 %i.cx, %i.x
  %i.cz = getelementptr [4 x i8], ptr %i.am, i64 %i.cy ; 3 uses
  %i.da = add nsw i64 %.sroa.speculated.pre-phi, -1
  %i.db = mul i64 %i.bs, %i.da
  %i.dc = add i64 %i.db, 4
  %i.dd = shl i64 %i.cx, 2
  %i.de = add i64 %i.dc, %i.dd
  %i.df = mul i64 %i.de, %i.x
  %scevgep257 = getelementptr i8, ptr %i.am, i64 %i.df ; 2 uses
  %i.dg = shl i64 %.sroa.speculated.pre-phi, 2
  %scevgep259 = getelementptr i8, ptr %scevgep258.a, i64 %i.dg
  %i.dh = mul i64 %i.by, %.sroa.speculated.pre-phi
  %scevgep261 = getelementptr i8, ptr %scevgep260.a, i64 %i.dh
  %bound0 = icmp ult ptr %i.cz, %scevgep259
  %bound1 = icmp ult ptr %i.bh, %scevgep257
  %found.conflict = and i1 %bound0, %bound1
  %bound0262 = icmp ult ptr %i.cz, %scevgep261
  %bound1263 = icmp ult ptr %i.bm, %scevgep257
  %found.conflict264 = and i1 %bound0262, %bound1263
  %i.di = or i1 %found.conflict264, %stride.check265
  %conflict.rdx = or i1 %found.conflict, %i.di
  br label %.preheader

bb.j:                                             ; preds = %.lr.ph228, %._crit_edge225
  %.0180226 = phi i64 [ 0, %.lr.ph228 ], [ %i.ee, %._crit_edge225 ]
  %.0180226.fr = freeze i64 %.0180226             ; 5 uses
  %i.dj = add nsw i64 %.0180226.fr, %i.co         ; 2 uses
  %i.dk = mul nsw i64 %i.dj, %i.u
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dk
  %i.dm = mul nsw i64 %i.dj, %i.x
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.dm
  %i.do = sub nsw i64 %i.r, %.0180226.fr
  %.sroa.speculated199 = call i64 @llvm.smin.i64(i64 %i.do, i64 %i.g) ; 10 uses
  %i.dp = load float, ptr %i.bo, align 8, !tbaa !48
  call void @_Z18MlasSgemmOperation15CBLAS_TRANSPOSES_mmmfPKfmS1_mfPfm(i32 noundef 111, i32 noundef 112, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated199, i64 noundef %i.u, float noundef %i.dp, ptr noundef %i.cn, i64 noundef %i.u, ptr noundef %i.dl, i64 noundef %i.u, float noundef 0.000000e+00, ptr noundef nonnull %i.bk, i64 noundef %.sroa.speculated199)
  br i1 %i.cq, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %bb.j
  %.not = icmp eq i64 %.0180226.fr, 0
  br i1 %.not, label %.lr.ph224.split.us, label %.lr.ph224.split

.lr.ph224.split.us:                               ; preds = %.lr.ph224, %.lr.ph224.split.us
  %.0179221.us = phi i64 [ %i.eb, %.lr.ph224.split.us ], [ 0, %.lr.ph224 ] ; 4 uses
  %i.dq = mul i64 %.0179221.us, %.sroa.speculated199
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.dq ; 3 uses
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 184), align 8, !tbaa !62
  %i.dt = call noundef float %i.ds(ptr noundef nonnull %i.dr, i64 noundef %.sroa.speculated199) ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.0179221.us ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !44 ; 2 uses
  %i.dw = fcmp olt float %i.dv, %i.dt
  %.sroa.speculated197.us = select i1 %i.dw, float %i.dt, float %i.dv ; 2 uses
  store float %.sroa.speculated197.us, ptr %i.du, align 4, !tbaa !44
  %i.dx = fneg float %.sroa.speculated197.us
  store float %i.dx, ptr %i.a, align 4, !tbaa !44
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 192), align 8, !tbaa !63
  %i.dz = call noundef float %i.dy(ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dr, i64 noundef %.sroa.speculated199, ptr noundef nonnull %i.a)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0179221.us
  store float %i.dz, ptr %i.ea, align 4, !tbaa !44
  %i.eb = add nuw nsw i64 %.0179221.us, 1         ; 2 uses
  %exitcond245.not = icmp eq i64 %i.eb, %.sroa.speculated203
  br i1 %exitcond245.not, label %._crit_edge225, label %.lr.ph224.split.us, !llvm.loop !16

._crit_edge225:                                   ; preds = %.loopexit, %.lr.ph224.split.us, %bb.j
  %i.ec = icmp eq i64 %.0180226.fr, 0
  %i.ed = select i1 %i.ec, float 0.000000e+00, float 1.000000e+00
  call void @_Z18MlasSgemmOperation15CBLAS_TRANSPOSES_mmmfPKfmS1_mfPfm(i32 noundef 111, i32 noundef 111, i64 noundef %.sroa.speculated203, i64 noundef %i.x, i64 noundef %.sroa.speculated199, float noundef 1.000000e+00, ptr noundef nonnull %i.bk, i64 noundef %.sroa.speculated199, ptr noundef %i.dn, i64 noundef %i.x, float noundef %i.ed, ptr noundef nonnull %i.bm, i64 noundef %i.x)
  %i.ee = add nsw i64 %.0180226.fr, %i.g          ; 2 uses
  %i.ef = icmp slt i64 %i.ee, %i.r
  br i1 %i.ef, label %bb.j, label %._crit_edge229, !llvm.loop !17

.lr.ph224.split:                                  ; preds = %.lr.ph224, %.loopexit
  %.0179221 = phi i64 [ %i.fg, %.loopexit ], [ 0, %.lr.ph224 ] ; 5 uses
  %i.eg = mul i64 %.0179221, %.sroa.speculated199
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.eg ; 3 uses
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 184), align 8, !tbaa !62
  %i.ej = call noundef float %i.ei(ptr noundef nonnull %i.eh, i64 noundef %.sroa.speculated199) ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.0179221 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !44 ; 3 uses
  %i.em = fcmp olt float %i.el, %i.ej
  %.sroa.speculated197 = select i1 %i.em, float %i.ej, float %i.el ; 3 uses
  store float %.sroa.speculated197, ptr %i.ek, align 4, !tbaa !44
  %i.en = fneg float %.sroa.speculated197
  store float %i.en, ptr %i.a, align 4, !tbaa !44
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 192), align 8, !tbaa !63
  %i.ep = call noundef float %i.eo(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh, i64 noundef %.sroa.speculated199, ptr noundef nonnull %i.a)
  %i.eq = fsub float %i.el, %.sroa.speculated197
  %i.er = call noundef float @expf(float noundef %i.eq) #6 ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0179221 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !44
  %i.eu = call float @llvm.fmuladd.f32(float %i.er, float %i.et, float %i.ep)
  store float %i.eu, ptr %i.es, align 4, !tbaa !44
  br i1 %i.bp, label %.lr.ph220, label %.loopexit

.lr.ph220:                                        ; preds = %.lr.ph224.split
  %i.ev = mul nuw nsw i64 %.0179221, %i.x
  %i.ew = getelementptr [4 x i8], ptr %i.bm, i64 %i.ev ; 2 uses
  br i1 %min.iters.check267, label %scalar.ph266.preheader, label %vector.ph268

vector.ph268:                                     ; preds = %.lr.ph220
  %broadcast.splatinsert270 = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat271 = shufflevector <4 x float> %broadcast.splatinsert270, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph268
  %index273 = phi i64 [ 0, %vector.ph268 ], [ %index.next276, %vector.body272 ] ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %index273 ; 3 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 16     ; 2 uses
  %wide.load274.a = load <4 x float>, ptr %i.ex, align 4, !tbaa !44
  %wide.load275 = load <4 x float>, ptr %i.ey, align 4, !tbaa !44
  %i.ez = fmul <4 x float> %broadcast.splat271, %wide.load274.a
  %i.fa = fmul <4 x float> %broadcast.splat271, %wide.load275
  store <4 x float> %i.ez, ptr %i.ex, align 4, !tbaa !44
  store <4 x float> %i.fa, ptr %i.ey, align 4, !tbaa !44
  %index.next276 = add nuw i64 %index273, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next276, %n.vec269
  br i1 %i.fb, label %middle.block277, label %vector.body272, !llvm.loop !18

middle.block277:                                  ; preds = %vector.body272
  br i1 %cmp.n278, label %.loopexit, label %scalar.ph266.preheader

scalar.ph266.preheader:                           ; preds = %.lr.ph220, %middle.block277
  %.0178218.ph = phi i64 [ 0, %.lr.ph220 ], [ %n.vec269, %middle.block277 ]
  br label %scalar.ph266

scalar.ph266:                                     ; preds = %scalar.ph266.preheader, %scalar.ph266
  %.0178218 = phi i64 [ %i.ff, %scalar.ph266 ], [ %.0178218.ph, %scalar.ph266.preheader ] ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %i.ew, i64 %.0178218 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !44
  %i.fe = fmul float %i.er, %i.fd
  store float %i.fe, ptr %i.fc, align 4, !tbaa !44
  %i.ff = add nuw nsw i64 %.0178218, 1            ; 2 uses
  %exitcond243.not = icmp eq i64 %i.ff, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %scalar.ph266, !llvm.loop !19

.loopexit:                                        ; preds = %scalar.ph266, %middle.block277, %.lr.ph224.split
  %i.fg = add nuw nsw i64 %.0179221, 1            ; 2 uses
  %exitcond244.not = icmp eq i64 %i.fg, %.sroa.speculated203
  br i1 %exitcond244.not, label %._crit_edge225, label %.lr.ph224.split, !llvm.loop !16

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge232
  %.0176234 = phi i64 [ %i.fz, %._crit_edge232 ], [ 0, %.preheader.preheader ] ; 3 uses
  %.0177233 = phi ptr [ %i.fy, %._crit_edge232 ], [ %i.cz, %.preheader.preheader ] ; 7 uses
  %i.fh = mul nuw nsw i64 %.0176234, %i.x
  %i.fi = getelementptr [4 x i8], ptr %i.bm, i64 %i.fh ; 6 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0176234 ; 6 uses
  %brmerge292 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge292, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !44, !alias.scope !64
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fl = getelementptr [4 x i8], ptr %i.fi, i64 %index
  %wide.load = load <4 x float>, ptr %i.fl, align 4, !tbaa !44, !alias.scope !65
  %i.fm = fdiv <4 x float> %wide.load, %broadcast.splat
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0177233, i64 %index
  store <4 x float> %i.fm, ptr %i.fn, align 4, !tbaa !44, !alias.scope !66, !noalias !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge232, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.0230.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0230.prol = phi i64 [ %i.fu, %scalar.ph.prol ], [ %.0230.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fp = getelementptr [4 x i8], ptr %i.fi, i64 %.0230.prol
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !44
  %i.fr = load float, ptr %i.fj, align 4, !tbaa !44
  %i.fs = fdiv float %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.0177233, i64 %.0230.prol
  store float %i.fs, ptr %i.ft, align 4, !tbaa !44
  %i.fu = add nuw nsw i64 %.0230.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !25

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0230.unr = phi i64 [ %.0230.ph, %scalar.ph.preheader ], [ %i.fu, %scalar.ph.prol ]
  %i.fv = sub nsw i64 %.0230.ph, %i.x
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %._crit_edge232, label %scalar.ph

._crit_edge235.split:                             ; preds = %._crit_edge232, %._crit_edge229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.fx = add i64 %.0182236, 1                    ; 2 uses
  %exitcond248.not = icmp eq i64 %i.fx, %.0183
  br i1 %exitcond248.not, label %._crit_edge239, label %bb.i, !llvm.loop !26

._crit_edge232:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fy = getelementptr inbounds [4 x i8], ptr %.0177233, i64 %i.br
  %i.fz = add nuw nsw i64 %.0176234, 1            ; 2 uses
  %exitcond247.not = icmp eq i64 %i.fz, %.sroa.speculated.pre-phi
  br i1 %exitcond247.not, label %._crit_edge235.split, label %.preheader, !llvm.loop !27

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0230 = phi i64 [ %i.gx, %scalar.ph ], [ %.0230.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ga = getelementptr [4 x i8], ptr %i.fi, i64 %.0230
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !44
  %i.gc = load float, ptr %i.fj, align 4, !tbaa !44
  %i.gd = fdiv float %i.gb, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0177233, i64 %.0230
  store float %i.gd, ptr %i.ge, align 4, !tbaa !44
  %i.gf = add nuw nsw i64 %.0230, 1               ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %i.fi, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !44
  %i.gi = load float, ptr %i.fj, align 4, !tbaa !44
  %i.gj = fdiv float %i.gh, %i.gi
end_hunk_0
