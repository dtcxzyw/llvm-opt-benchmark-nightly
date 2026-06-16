inline.NumInlined: 115
inline.NumDeleted: 35
begin_hunk_0_@af_cjk_hints_detect_features:bb.a
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !147 ; 2 uses
  %.not254.i = icmp eq ptr %i.jl, null
  br i1 %.not254.i, label %bb.bh, label %.thread250.i

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.jg, label %bb.bc, label %.thread250.i

bb.bc:                                            ; preds = %bb.bb
  br label %.thread250.i

.thread250.i:                                     ; preds = %bb.bc, %bb.bb, %.thread248.i
  %i.jm = phi i1 [ true, %bb.bc ], [ false, %bb.bb ], [ false, %.thread248.i ]
  %.0154.in.i = phi ptr [ %i.iw, %bb.bc ], [ %i.iv, %bb.bb ], [ %i.iv, %.thread248.i ]
  %.0153.i = phi ptr [ %i.jd, %bb.bc ], [ %i.ji, %bb.bb ], [ %i.jl, %.thread248.i ] ; 2 uses
  %.0154.i = load ptr, ptr %.0154.in.i, align 8, !tbaa !339 ; 3 uses
  %.not216.i = icmp eq ptr %.0154.i, null
  br i1 %.not216.i, label %.sink.split.i17, label %bb.bd

bb.bd:                                            ; preds = %.thread250.i
  %i.jn = load i16, ptr %.1165270.i, align 8, !tbaa !203
  %i.jo = sext i16 %i.jn to i64
  %i.jp = load i16, ptr %.0154.i, align 8, !tbaa !203
  %i.jq = sext i16 %i.jp to i64
  %i.jr = sub nsw i64 %i.jo, %i.jq
  %spec.select234.i = tail call i64 @llvm.abs.i64(i64 %i.jr, i1 true)
  %i.js = getelementptr inbounds nuw i8, ptr %.2168.i, i64 2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !148 ; 2 uses
  %i.ju = sext i16 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0153.i, i64 2
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !148 ; 2 uses
  %i.jx = sext i16 %i.jw to i64                   ; 2 uses
  %i.jy = icmp sgt i16 %i.jt, %i.jw
  %i.jz = sub nsw i64 %i.ju, %i.jx
  %i.ka = sub nsw i64 %i.jx, %i.ju
  %i.kb = select i1 %i.jy, i64 %i.jz, i64 %i.ka
  %i.kc = icmp slt i64 %i.kb, %spec.select234.i
  br i1 %i.kc, label %.sink.split.i17, label %bb.be

.sink.split.i17:                                  ; preds = %bb.bd, %.thread250.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.0153.i, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !207
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i17, %bb.bd
  %.2.i = phi ptr [ %.0154.i, %bb.bd ], [ %i.ke, %.sink.split.i17 ] ; 3 uses
  br i1 %i.jm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store ptr %.2.i, ptr %i.iw, align 8, !tbaa !386
  %i.kf = getelementptr inbounds nuw i8, ptr %.2.i, i64 24 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !199
  %i.kh = or i8 %i.kg, 2
  store i8 %i.kh, ptr %i.kf, align 8, !tbaa !199
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  store ptr %.2.i, ptr %i.iv, align 8, !tbaa !387
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.thread248.i, %bb.ba
  %i.ki = getelementptr inbounds nuw i8, ptr %.2168.i, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !104 ; 2 uses
  %.not217.i = icmp eq ptr %i.kj, %i.iu
  br i1 %.not217.i, label %.loopexit.loopexit.i, label %bb.az, !llvm.loop !388

.loopexit.loopexit.i:                             ; preds = %bb.bh
  %i.kk = icmp samesign uge i32 %.1162.i, %.1159.i
  %i.kl = icmp ne i32 %.1162.i, 0
  %i.km = select i1 %i.kl, i1 %i.kk, i1 false
  %i.kn = zext i1 %i.km to i8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.lr.ph271.i
  %.2163.i = phi i8 [ 0, %.lr.ph271.i ], [ %i.kn, %.loopexit.loopexit.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 24
  store i8 %.2163.i, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 56 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !386
  %.not219.i = icmp eq ptr %i.kq, null
  br i1 %.not219.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.loopexit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 48
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !387
  %.not220.i = icmp eq ptr %i.ks, null
  br i1 %.not220.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr null, ptr %i.kp, align 8, !tbaa !386
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %.loopexit.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 88 ; 2 uses
  %i.ku = icmp ult ptr %i.kt, %i.il
  br i1 %i.ku, label %.lr.ph271.i, label %af_cjk_hints_compute_edges.exit, !llvm.loop !389

af_cjk_hints_compute_edges.exit:                  ; preds = %bb.bk, %bb.b, %bb.ay, %._crit_edge266.i, %bb.ax, %af_cjk_hints_compute_segments.exit
  %.0 = phi i32 [ %i.ac, %af_cjk_hints_compute_segments.exit ], [ 0, %bb.ay ], [ %i.hi, %bb.ax ], [ %i.j, %bb.b ], [ 0, %._crit_edge266.i ], [ 0, %bb.bk ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @af_cjk_hints_compute_blue_edges(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw [15344 x i8], ptr %i.k, i64 %i.b ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !361
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28
  %i.p = udiv i32 %i.o, 40
  %i.q = zext nneg i32 %i.p to i64
  %sext = shl i64 %i.m, 32
  %i.r = ashr exact i64 %sext, 32                 ; 2 uses
  %i.s = mul nsw i64 %i.r, %i.q                   ; 2 uses
  %i.t = ashr i64 %i.s, 63
  %i.u = add nsw i64 %i.s, 32768
  %i.v = add nsw i64 %i.u, %i.t
  %i.w = lshr i64 %i.v, 16
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.x, i32 32)
  %spec.store.select = sext i32 %i.y to i64
  %i.z = icmp ult ptr %i.e, %i.j
  br i1 %i.z, label %.preheader.lr.ph, label %._crit_edge78

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 428
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !71 ; 2 uses
  %.not79 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br i1 %.not79, label %._crit_edge78, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i32 %i.ab to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.e
  %.05477.us = phi ptr [ %i.ag, %bb.e ], [ %i.e, %.preheader.us.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05477.us, i64 25
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.us
  %i.af = getelementptr inbounds nuw i8, ptr %.05477.us, i64 40
  store ptr %.360.us, ptr %i.af, align 8, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.us
  %i.ag = getelementptr inbounds nuw i8, ptr %.05477.us, i64 88 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.j
  br i1 %i.ah, label %.preheader.us, label %._crit_edge78, !llvm.loop !390

bb.f:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.05675.us = phi i64 [ %spec.store.select, %.preheader.us ], [ %.3.us, %bb.i ] ; 4 uses
  %.05774.us = phi ptr [ null, %.preheader.us ], [ %.360.us, %bb.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %indvars.iv ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !370 ; 2 uses
  %i.al = and i32 %i.ak, 1
  %.not70.us = icmp eq i32 %i.al, 0
  br i1 %.not70.us, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !201
  %i.an = sext i8 %i.am to i32
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !202
  %i.ap = icmp eq i32 %i.ao, %i.an
  %i.aq = and i32 %i.ak, 2
  %i.ar = icmp eq i32 %i.aq, 0
  %.not71.us = xor i1 %i.ar, %i.ap
  br i1 %.not71.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i16, ptr %.05477.us, align 8, !tbaa !203
  %i.at = sext i16 %i.as to i64                   ; 3 uses
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !363 ; 2 uses
  %i.av = sub nsw i64 %i.at, %i.au
  %i.aw = tail call i64 @llvm.abs.i64(i64 %i.av, i1 true)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !367 ; 2 uses
  %i.az = sub nsw i64 %i.at, %i.ay
  %i.ba = tail call i64 @llvm.abs.i64(i64 %i.az, i1 true)
  %i.bb = icmp samesign ugt i64 %i.aw, %i.ba      ; 2 uses
  %3 = select i1 %i.bb, i64 %i.ay, i64 %i.au
  %.0.us = select i1 %i.bb, ptr %i.ax, ptr %i.ai
  %i.bc = sub nsw i64 %i.at, %3
  %.053.us = tail call i64 @llvm.abs.i64(i64 %i.bc, i1 true)
  %sext72.us = shl i64 %.053.us, 32
  %i.bd = ashr exact i64 %sext72.us, 32
  %i.be = mul nsw i64 %i.bd, %i.r                 ; 2 uses
  %i.bf = ashr i64 %i.be, 63
  %i.bg = add nsw i64 %i.be, 32768
  %i.bh = add nsw i64 %i.bg, %i.bf
  %i.bi = shl i64 %i.bh, 16
  %i.bj = ashr i64 %i.bi, 32                      ; 2 uses
  %i.bk = icmp sgt i64 %.05675.us, %i.bj
  %.158.us = select i1 %i.bk, ptr %.0.us, ptr %.05774.us
  %.1.us = tail call i64 @llvm.smin.i64(i64 %.05675.us, i64 %i.bj)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.360.us = phi ptr [ %.05774.us, %bb.f ], [ %.158.us, %bb.h ], [ %.05774.us, %bb.g ] ; 3 uses
  %.3.us = phi i64 [ %.05675.us, %bb.f ], [ %.1.us, %bb.h ], [ %.05675.us, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !llvm.loop !391

._crit_edge.us:                                   ; preds = %bb.i
  %.not69.us = icmp eq ptr %.360.us, null
  br i1 %.not69.us, label %bb.e, label %bb.d

._crit_edge78:                                    ; preds = %bb.e, %.preheader.lr.ph, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_cjk_hint_edges(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 14 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = mul nuw nsw i64 %i.h, 88
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 4 uses
  %.not338 = icmp eq i32 %i.g, 0
  br i1 %.not338, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 5148
  %i.k = getelementptr i8, ptr %0, i64 5152
  br label %bb.c

.lr.ph285:                                        ; preds = %.thread
  %i.l = getelementptr i8, ptr %0, i64 5148       ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 5152       ; 2 uses
  %i.n = icmp ne i32 %1, 0
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.0175277 = phi ptr [ %i.e, %.lr.ph ], [ %i.au, %.thread ] ; 8 uses
  %.0176276 = phi ptr [ null, %.lr.ph ], [ %.2178, %.thread ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0175277, i64 24 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !199   ; 2 uses
  %i.q = and i8 %i.p, 4
  %.not232 = icmp eq i8 %i.q, 0
  br i1 %.not232, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0175277, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !198  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0175277, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !387  ; 8 uses
  %.not233 = icmp eq ptr %i.s, null
  br i1 %.not233, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not234 = icmp eq ptr %i.u, null
  br i1 %.not234, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198  ; 2 uses
  %.not235 = icmp eq ptr %i.w, null
  br i1 %.not235, label %.thread, label %.thread324

.thread324:                                       ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !392  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !199
  %i.ac = or i8 %i.ab, 4
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !199
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !392 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0175277, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !96
  %i.ag = or disjoint i8 %i.p, 4
  store i8 %i.ag, ptr %i.o, align 8, !tbaa !199
  %.not237 = icmp eq ptr %i.u, null
  br i1 %.not237, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !198
  %i.ah = icmp eq ptr %.pre, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread324, %bb.h
  %.0187261329 = phi ptr [ %i.u, %.thread324 ], [ %.0175277, %bb.h ]
  %.0186262328 = phi ptr [ %.0175277, %.thread324 ], [ %i.u, %bb.h ] ; 3 uses
  %i.ai = phi i64 [ %i.y, %.thread324 ], [ %i.ae, %bb.h ]
  %.val244 = load i32, ptr %i.j, align 4, !tbaa !86
  %.val245 = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %.0186262328, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %.0187261329, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !97
  %i.an = sub nsw i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.0186262328, i64 24 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !199
  %i.aq = tail call fastcc i64 @af_cjk_compute_stem_width(i32 %.val244, ptr readonly %.val245, i32 noundef range(i32 0, 2) %1, i64 noundef %i.an)
  %i.ar = add nsw i64 %i.aq, %i.ai
  %i.as = getelementptr inbounds nuw i8, ptr %.0186262328, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !96
  %i.at = or i8 %i.ap, 4
  store i8 %i.at, ptr %i.ao, align 8, !tbaa !199
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.not239 = icmp eq ptr %.0176276, null
  %spec.select = select i1 %.not239, ptr %.0175277, ptr %.0176276
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.c, %bb.j
  %.2178 = phi ptr [ %.0176276, %bb.c ], [ %spec.select, %bb.j ], [ %.0176276, %bb.e ], [ %.0176276, %bb.f ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0175277, i64 88 ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.i
  br i1 %i.av, label %bb.c, label %.lr.ph285, !llvm.loop !393

bb.k:                                             ; preds = %.lr.ph285, %bb.z
  %.1283 = phi ptr [ %i.e, %.lr.ph285 ], [ %i.ct, %bb.z ] ; 12 uses
  %.3179282 = phi ptr [ %.2178, %.lr.ph285 ], [ %.4, %bb.z ] ; 6 uses
  %.0183281 = phi i64 [ 0, %.lr.ph285 ], [ %.2185, %bb.z ] ; 7 uses
  %.0189280 = phi i64 [ 0, %.lr.ph285 ], [ %.1190, %bb.z ] ; 5 uses
  %.0191279 = phi i8 [ 0, %.lr.ph285 ], [ %.1192, %bb.z ] ; 4 uses
  %.0193278 = phi i32 [ 0, %.lr.ph285 ], [ %.1194, %bb.z ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1283, i64 24 ; 5 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !199 ; 3 uses
  %i.ay = and i8 %i.ax, 4
  %.not228 = icmp eq i8 %i.ay, 0
  br i1 %.not228, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.1283, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !387 ; 12 uses
  %.not229 = icmp eq ptr %i.ba, null
  br i1 %.not229, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = add nsw i32 %.0193278, 1
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %.not230 = icmp eq i8 %.0191279, 0
  br i1 %.not230, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.1283, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !96
  %i.be = add nsw i64 %.0189280, 64               ; 2 uses
  %i.bf = icmp slt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !96
  %i.bi = icmp slt i64 %i.bh, %i.be
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bj = add nsw i32 %.0193278, 1
  br label %bb.z

bb.r:                                             ; preds = %bb.p, %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !198
  %.not231 = icmp eq ptr %i.bl, null
  br i1 %.not231, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val242 = load i32, ptr %i.l, align 4, !tbaa !86
  %.val243 = load ptr, ptr %i.m, align 8, !tbaa !77
end_hunk_0
