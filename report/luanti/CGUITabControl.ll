inline.NumInlined: 628
inline.NumDeleted: 249
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gui14CGUITabControl17needScrollControlEibPi:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 0) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111  ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  %.not32 = icmp eq ptr %i.j, null
  %or.cond = or i1 %.not32, %i.o
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !112
  %i.r = add nsw i32 %i.q, 2                      ; 2 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.v = add nsw i32 %.sroa.0.0.extract.trunc, -2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = phi i32 [ %i.v, %bb.d ], [ %i.x, %bb.e ]
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = ptrtoint ptr %i.l to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 3
  %i.ad = trunc i64 %i.ac to i32
  %.not3544 = icmp slt i32 %spec.store.select, %i.ad
  br i1 %.not3544, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ag = zext nneg i32 %spec.store.select to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !76  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = lshr exact i64 %i.al, 3
  %i.an = trunc i64 %i.am to i32
  %i.ao = trunc nuw i64 %indvars.iv.next to i32
  %.not35 = icmp slt i32 %i.ao, %i.an
  br i1 %.not35, label %bb.h, label %._crit_edge, !llvm.loop !114

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ap = phi i64 [ %i.ab, %.lr.ph ], [ %i.al, %bb.g ]
  %i.aq = phi ptr [ %i.l, %.lr.ph ], [ %i.ai, %bb.g ]
  %.02445 = phi i32 [ %i.r, %.lr.ph ], [ %.125, %bb.g ] ; 2 uses
  %i.ar = ashr exact i64 %i.ap, 3
  %i.as = icmp ugt i64 %i.ar, %indvars.iv
  br i1 %i.as, label %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN3gui7IGUITabEEixEj) #21
  unreachable

_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit:         ; preds = %bb.h
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !79 ; 3 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %bb.j, label %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit

_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit: ; preds = %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(308) %i.au)
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.ay), !inline_history !115
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bc to i32
  %i.bd = load i32, ptr %i.ae, align 8, !tbaa !71
  %i.be = add i32 %i.bd, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.bf = load i32, ptr %i.af, align 8, !tbaa !116 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  %i.bh = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bf)
  %.06.i = select i1 %i.bg, i32 %i.bh, i32 %i.be
  %i.bi = add nsw i32 %.06.i, %.02445
  br label %bb.j

bb.j:                                             ; preds = %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit, %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit
  %.125 = phi i32 [ %i.bi, %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit ], [ %.02445, %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit ] ; 3 uses
  %.not34 = icmp sgt i32 %.125, %i.y
  br i1 %.not34, label %.thread, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.024.lcssa = phi i32 [ %i.r, %bb.f ], [ %.125, %bb.g ]
  %.not36 = icmp eq ptr %3, null
  br i1 %.not36, label %.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  store i32 %.024.lcssa, ptr %3, align 4, !tbaa !46
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.b, %bb.k, %._crit_edge, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %._crit_edge ], [ false, %bb.k ], [ true, %bb.j ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(388) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  %.sroa.0.0.extract.trunc = trunc i64 %i.d to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load i32, ptr %i.e, align 8, !tbaa !71
  %i.g = add i32 %i.f, %.sroa.0.0.extract.trunc   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = load i32, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.i)
  %.06 = select i1 %i.j, i32 %i.k, i32 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %.06, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3gui14CGUITabControl30calculateScrollIndexFromActiveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(388) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.c = load i8, ptr %i.b, align 2, !tbaa !70, !range !50, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 0) ; 5 uses
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !112  ; 2 uses
  %i.v = add nsw i32 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.z = add nsw i32 %.sroa.0.0.extract.trunc, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !64 ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ad = add i32 %i.u, %.sroa.0.0.extract.trunc
  %i.ae = sdiv i32 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.03157 = phi i32 [ %i.ab, %.lr.ph ], [ %2, %bb.h ] ; 5 uses
  %.03256 = phi i32 [ %i.ae, %.lr.ph ], [ %.2, %bb.h ] ; 2 uses
  %1 = zext nneg i32 %.03157 to i64               ; 2 uses
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ugt i64 %i.am, %1
  br i1 %i.an, label %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN3gui7IGUITabEEixEj) #21
  unreachable

_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit:         ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %1
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !79 ; 3 uses
  %.not42 = icmp eq ptr %i.ap, null
  br i1 %.not42, label %bb.h, label %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit

_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit: ; preds = %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(308) %i.ap)
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.at), !inline_history !115
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ax to i32
  %i.ay = load i32, ptr %i.af, align 8, !tbaa !71
  %i.az = add i32 %i.ay, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.ba = load i32, ptr %i.ag, align 8, !tbaa !116 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.ba)
  %.06.i = select i1 %i.bb, i32 %i.bc, i32 %i.az  ; 2 uses
  %i.bd = load i32, ptr %i.aa, align 8, !tbaa !64
  %i.be = icmp eq i32 %.03157, %i.bd
  %i.bf = sdiv i32 %.06.i, 2
  %.0 = select i1 %i.be, i32 %i.bf, i32 %.06.i
  %i.bg = sub nsw i32 %.03256, %.0                ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.v
  br i1 %i.bh, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit, %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit
  %.2 = phi i32 [ %i.bg, %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit ], [ %.03256, %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit ]
  %2 = add nsw i32 %.03157, -1
  %i.bi = icmp sgt i32 %.03157, 1
  br i1 %i.bi, label %bb.f, label %._crit_edge.thread, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.e
  %i.bj = icmp eq i32 %i.ab, 0
  br i1 %i.bj, label %._crit_edge.thread, label %.thread

.thread:                                          ; preds = %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit, %._crit_edge
  %.03155 = phi i32 [ %i.ab, %._crit_edge ], [ %.03157, %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !46
  %i.bk = call noundef zeroext i1 @_ZN3gui14CGUITabControl17needScrollControlEibPi(ptr noundef nonnull align 8 dereferenceable(388) %0, i32 noundef %.03155, i1 noundef zeroext true, ptr noundef nonnull %i.a)
  %i.bl = icmp slt i32 %.03155, 2
  %or.cond.not = or i1 %i.bl, %i.bk
  br i1 %or.cond.not, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %.thread
  %.promoted = load i32, ptr %i.a, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bo = zext nneg i32 %.03155 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph61, %bb.k
  %indvars.iv.a = phi i64 [ %i.bo, %.lr.ph61 ], [ %indvars.iv.next.a, %bb.k ] ; 3 uses
  %i.bp = phi i32 [ %.promoted, %.lr.ph61 ], [ %i.co, %bb.k ] ; 2 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1 ; 3 uses
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = icmp ugt i64 %i.bv, %indvars.iv.next.a
  br i1 %i.bw, label %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit45, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN3gui7IGUITabEEixEj) #21
  unreachable

_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit45:       ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next.a
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !79 ; 3 uses
  %.not43 = icmp eq ptr %i.by, null
  br i1 %.not43, label %bb.k, label %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit51

_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit51: ; preds = %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit45
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 168
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(308) %i.by)
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.cc), !inline_history !115
  %.sroa.0.0.extract.trunc.i48 = trunc i64 %i.cg to i32
  %i.ch = load i32, ptr %i.bm, align 8, !tbaa !71
  %i.ci = add i32 %i.ch, %.sroa.0.0.extract.trunc.i48 ; 2 uses
  %i.cj = load i32, ptr %i.bn, align 8, !tbaa !116 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %i.cl = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cj)
  %.06.i49 = select i1 %i.ck, i32 %i.cl, i32 %i.ci
  %i.cm = add nsw i32 %.06.i49, %i.bp             ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, %i.z
  br i1 %i.cn, label %.loopexit.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit51, %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit45
  %i.co = phi i32 [ %i.cm, %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit51 ], [ %i.bp, %_ZN4core5arrayIPN3gui7IGUITabEEixEj.exit45 ]
  %i.cp = icmp samesign ugt i64 %indvars.iv.a, 2
  br i1 %i.cp, label %bb.i, label %.loopexit, !llvm.loop !118

.loopexit.loopexit.split.loop.exit:               ; preds = %_ZNK3gui14CGUITabControl12calcTabWidthEPNS_8IGUIFontEPKw.exit51
  %i.cq = trunc nuw nsw i64 %indvars.iv.a to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.loopexit.loopexit.split.loop.exit, %.thread
  %.034 = phi i32 [ %.03155, %.thread ], [ %i.cq, %.loopexit.loopexit.split.loop.exit ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %bb.c, %.loopexit, %._crit_edge, %bb.d, %bb.a, %bb.b
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %.034, %.loopexit ], [ 0, %._crit_edge ], [ 0, %bb.h ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gui14CGUITabControl4drawEv(ptr noundef nonnull align 8 dereferenceable(388) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::rect", align 4        ; 29 uses
  %2 = alloca %"class.core::rect", align 4        ; 24 uses
  %3 = alloca %"class.core::rect", align 4        ; 11 uses
  %4 = alloca %"class.core::string", align 8      ; 11 uses
  %5 = alloca %"class.core::rect", align 4        ; 11 uses
  %6 = alloca %"class.core::string", align 8      ; 11 uses
  %7 = alloca %"class.core::string", align 8      ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.bu

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 25 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.bu, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 0) ; 9 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !119
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 3)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 424
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %i.ac)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not95 = icmp eq ptr %i.m, null
  br i1 %.not95, label %bb.bt, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !89
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !91
  %i.al = add nsw i32 %i.ak, 2                    ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !91
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = load i32, ptr %i.am, align 8, !tbaa !72
  %i.ao = add nsw i32 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !90
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !90 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.at = load i32, ptr %i.as, align 8, !tbaa !72
  %i.au = xor i32 %i.at, -1
  %i.av = add i32 %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !91
  %i.ax = add nsw i32 %i.ar, -2
  store i32 %i.ax, ptr %i.aq, align 4, !tbaa !90
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !92 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !76  ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 3
  %i.bh = trunc i64 %i.bg to i32
  %.not173 = icmp ult i32 %i.az, %i.bh
  br i1 %.not173, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.i
  %i.bi = load i32, ptr %1, align 4, !tbaa !88
  %i.bj = add nsw i32 %i.bi, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
end_hunk_0
