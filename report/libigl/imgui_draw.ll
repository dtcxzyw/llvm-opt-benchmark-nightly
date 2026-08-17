inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_Z31ImFontAtlasBuildPackCustomRectsP11ImFontAtlasPv:bb.a

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.d, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %wide.trip.count37 = zext nneg i32 %i.b to i64
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %_ZNK8ImVectorI10stbrp_rectE14_grow_capacityEi.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8ImVectorI10stbrp_rectED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load <2 x i16>, ptr %i.y, align 8, !tbaa !93
  store <2 x i16> %i.ab, ptr %i.aa, align 4, !tbaa !93
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load <2 x i16>, ptr %i.ac, align 8, !tbaa !93
  store <2 x i16> %i.af, ptr %i.ae, align 4, !tbaa !93
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.next.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load <2 x i16>, ptr %i.ag, align 8, !tbaa !93
  store <2 x i16> %i.aj, ptr %i.ai, align 4, !tbaa !93
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.next.2
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load <2 x i16>, ptr %i.ak, align 8, !tbaa !93
  store <2 x i16> %i.an, ptr %i.am, align 4, !tbaa !93
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !503

._crit_edge32:                                    ; preds = %bb.i, %.preheader
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.j)
          to label %_ZN8ImVectorI10stbrp_rectED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge32
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #42
  unreachable

_ZN8ImVectorI10stbrp_rectED2Ev.exit:              ; preds = %._crit_edge32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void

bb.g:                                             ; preds = %.lr.ph31, %bb.i
  %indvars.iv34 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next35, %bb.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv34 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !395
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.v, align 8, !tbaa !202
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %indvars.iv34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !396
  %i.az = load <2 x i16>, ptr %i.at, align 4, !tbaa !93
  store <2 x i16> %i.az, ptr %i.aw, align 4, !tbaa !93
  %i.ba = load i32, ptr %i.w, align 4, !tbaa !236
  %i.bb = zext i16 %i.ay to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !376
  %i.be = zext i16 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.be, %i.bb
  %i.bg = tail call noundef i32 @llvm.smax.i32(i32 %i.ba, i32 %i.bf)
  store i32 %i.bg, ptr %i.w, align 4, !tbaa !236
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %._crit_edge32, label %bb.g, !llvm.loop !504
}

; Function Attrs: mustprogress nofree uwtable
define internal fastcc void @_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #29 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge59.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %2, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.e, ptr %i.d, align 4, !tbaa !395
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !395
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.k, ptr %i.j, align 4, !tbaa !395
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !395
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !395
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !395
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !395
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next.6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !395
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph58.unr-lcssa, label %.lr.ph, !llvm.loop !505

._crit_edge59.thread:                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 16, ptr noundef nonnull @_ZL19rect_height_comparePKvS0_)
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 16, ptr noundef nonnull @_ZL19rect_original_orderPKvS0_)
  br label %._crit_edge64

.lr.ph58.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph58.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph58.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !395
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph58, label %.lr.ph.epil, !llvm.loop !506

.lr.ph58:                                         ; preds = %.lr.ph.epil, %.lr.ph58.unr-lcssa
  %i.ae = zext nneg i32 %2 to i64                 ; 2 uses
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 16, ptr noundef nonnull @_ZL19rect_height_comparePKvS0_)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %wide.trip.count70 = zext nneg i32 %2 to i64    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph58, %bb.al
  %indvars.iv67 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next68, %bb.al ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv67 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i16, ptr %i.al, align 4, !tbaa !374 ; 2 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = icmp eq i16 %i.am, 0
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !376 ; 2 uses
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i16 0, ptr %i.as, align 2, !tbaa !396
  %3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i16 0, ptr %3, align 4, !tbaa !404
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.at = zext i16 %i.aq to i32                   ; 4 uses
  %i.au = load i32, ptr %i.af, align 8, !tbaa !392 ; 2 uses
  %i.av = add nsw i32 %i.an, -1
  %i.aw = add i32 %i.av, %i.au                    ; 2 uses
  %i.ax = srem i32 %i.aw, %i.au
  %i.ay = sub nsw i32 %i.aw, %i.ax                ; 11 uses
  %i.az = load i32, ptr %0, align 8, !tbaa !389   ; 3 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = load i32, ptr %i.ag, align 4, !tbaa !390 ; 4 uses
  %i.bc = icmp slt i32 %i.bb, %i.at
  br i1 %i.bc, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !388 ; 5 uses
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !393
  %i.bf = zext i16 %i.be to i32                   ; 3 uses
  %i.bg = add nsw i32 %i.ay, %i.bf                ; 2 uses
  %.not128.i.i = icmp sgt i32 %i.bg, %i.az
  br i1 %.not128.i.i, label %.._crit_edge.thread.i_crit_edge.i, label %.lr.ph.i.i

.._crit_edge.thread.i_crit_edge.i:                ; preds = %bb.g
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !386
  br label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bh = icmp sgt i32 %i.ay, 0
  %i.bi = load i32, ptr %i.ai, align 8, !tbaa !386 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 0                    ; 2 uses
  br i1 %i.bh, label %.lr.ph.i.preheader.us.i.i, label %.lr.ph.split.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.i.i, %bb.r
  %i.bk = phi i32 [ %i.cv, %bb.r ], [ %i.bg, %.lr.ph.i.i ]
  %i.bl = phi i32 [ %i.cu, %bb.r ], [ %i.bf, %.lr.ph.i.i ] ; 3 uses
  %.0133.us.i.i = phi ptr [ %.1.us.i.i, %bb.r ], [ null, %.lr.ph.i.i ] ; 3 uses
  %.074132.us.i.i = phi ptr [ %i.cs, %bb.r ], [ %i.bd, %.lr.ph.i.i ] ; 2 uses
  %.077131.us.i.i = phi ptr [ %i.cr, %bb.r ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %.080130.us.i.i = phi i32 [ %.181.us.i.i, %bb.r ], [ 1073741824, %.lr.ph.i.i ] ; 6 uses
  %.088129.us.i.i = phi i32 [ %.189.us.i.i, %bb.r ], [ 1073741824, %.lr.ph.i.i ] ; 4 uses
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %bb.l, %.lr.ph.i.preheader.us.i.i
  %i.bm = phi i32 [ %.pre-phi.i.us.i.i, %bb.l ], [ %i.bl, %.lr.ph.i.preheader.us.i.i ] ; 3 uses
  %.0364.i.us.i.i = phi i32 [ %.1.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ]
  %.0373.i.us.i.i = phi i32 [ %.138.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ] ; 4 uses
  %.0392.i.us.i.i = phi i32 [ %.140.i.us.i.i, %bb.l ], [ 0, %.lr.ph.i.preheader.us.i.i ] ; 4 uses
  %.0411.i.us.i.i = phi ptr [ %i.ck, %bb.l ], [ %.074132.us.i.i, %.lr.ph.i.preheader.us.i.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !394
  %i.bp = zext i16 %i.bo to i32                   ; 5 uses
  %i.bq = icmp slt i32 %.0392.i.us.i.i, %i.bp
  br i1 %i.bq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.us.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !379 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !393
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = sub nsw i32 %i.bu, %i.bm                ; 2 uses
  %i.bw = add nsw i32 %i.bv, %.0373.i.us.i.i
  %i.bx = icmp sgt i32 %i.bw, %i.ay
  %i.by = sub nsw i32 %i.ay, %.0373.i.us.i.i
  %spec.select.i.us.i.i = select i1 %i.bx, i32 %i.by, i32 %i.bv ; 2 uses
  %i.bz = sub nsw i32 %.0392.i.us.i.i, %i.bp
  %i.ca = mul nsw i32 %spec.select.i.us.i.i, %i.bz
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph.i.us.i.i
  %i.cb = sub nsw i32 %i.bp, %.0392.i.us.i.i
  %i.cc = mul nsw i32 %i.cb, %.0373.i.us.i.i      ; 2 uses
  %i.cd = icmp slt i32 %i.bm, %i.bl
  %i.ce = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !379 ; 3 uses
  %i.cg = load i16, ptr %i.cf, align 8, !tbaa !393
  %i.ch = zext i16 %i.cg to i32                   ; 4 uses
  br i1 %i.cd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = sub nsw i32 %i.ch, %i.bm
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cj = sub nsw i32 %i.ch, %i.bl
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.pre-phi.i.us.i.i = phi i32 [ %i.ch, %bb.k ], [ %i.ch, %bb.j ], [ %i.bu, %bb.h ] ; 2 uses
  %i.ck = phi ptr [ %i.cf, %bb.k ], [ %i.cf, %bb.j ], [ %i.bs, %bb.h ]
  %.140.i.us.i.i = phi i32 [ %i.bp, %bb.k ], [ %i.bp, %bb.j ], [ %.0392.i.us.i.i, %bb.h ] ; 7 uses
  %.pn.i.us.i.i = phi i32 [ %i.cj, %bb.k ], [ %i.ci, %bb.j ], [ %spec.select.i.us.i.i, %bb.h ]
  %.pn46.i.us.i.i = phi i32 [ %i.cc, %bb.k ], [ %i.cc, %bb.j ], [ %i.ca, %bb.h ]
  %.1.i.us.i.i = add nsw i32 %.pn46.i.us.i.i, %.0364.i.us.i.i ; 3 uses
  %.138.i.us.i.i = add nsw i32 %.pn.i.us.i.i, %.0373.i.us.i.i
  %i.cl = icmp samesign ugt i32 %i.bk, %.pre-phi.i.us.i.i
  br i1 %i.cl, label %.lr.ph.i.us.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i, !llvm.loop !507

bb.m:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i
  %i.cm = add nuw nsw i32 %.140.i.us.i.i, %i.at
  %.not103.us.i.i = icmp sgt i32 %i.cm, %i.bb
  br i1 %.not103.us.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp slt i32 %.140.i.us.i.i, %.080130.us.i.i
  br i1 %i.cn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = icmp eq i32 %.140.i.us.i.i, %.080130.us.i.i
  %i.cp = icmp slt i32 %.1.i.us.i.i, %.088129.us.i.i
  %or.cond.us.i.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.us.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.r

bb.q:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i
  %i.cq = icmp slt i32 %.140.i.us.i.i, %.080130.us.i.i
  %spec.select.us.i.i = tail call i32 @llvm.smin.i32(i32 %.140.i.us.i.i, i32 %.080130.us.i.i)
  %spec.select104.us.i.i = select i1 %i.cq, ptr %.077131.us.i.i, ptr %.0133.us.i.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.189.us.i.i = phi i32 [ %.088129.us.i.i, %bb.m ], [ %.088129.us.i.i, %bb.o ], [ %.1.i.us.i.i, %bb.p ], [ %.088129.us.i.i, %bb.q ] ; 3 uses
  %.181.us.i.i = phi i32 [ %.080130.us.i.i, %bb.m ], [ %.080130.us.i.i, %bb.o ], [ %.140.i.us.i.i, %bb.p ], [ %spec.select.us.i.i, %bb.q ] ; 3 uses
  %.1.us.i.i = phi ptr [ %.0133.us.i.i, %bb.m ], [ %.0133.us.i.i, %bb.o ], [ %.077131.us.i.i, %bb.p ], [ %spec.select104.us.i.i, %bb.q ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.074132.us.i.i, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !379 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !393
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = add nuw nsw i32 %i.ay, %i.cu            ; 2 uses
  %.not.us.i.i = icmp sgt i32 %i.cv, %i.az
  br i1 %.not.us.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us.i.i, !llvm.loop !508

_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit.loopexit.us.i.i: ; preds = %bb.l
  br i1 %i.bj, label %bb.q, label %bb.m

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %spec.select.i = select i1 %i.bj, i32 1073741824, i32 0
  br label %._crit_edge.thread208.i.i

._crit_edge.i.i:                                  ; preds = %bb.r
  %i.cw = icmp eq ptr %.1.us.i.i, null
  br i1 %i.cw, label %._crit_edge.thread.i.i, label %._crit_edge.thread208.i.i

._crit_edge.thread208.i.i:                        ; preds = %._crit_edge.i.i, %.lr.ph.split.i.i
  %.0.lcssa214.i.i = phi ptr [ %.1.us.i.i, %._crit_edge.i.i ], [ %i.ah, %.lr.ph.split.i.i ] ; 2 uses
  %.080.lcssa213.i.i = phi i32 [ %.181.us.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.split.i.i ]
  %.088.lcssa212.i.i = phi i32 [ %.189.us.i.i, %._crit_edge.i.i ], [ %spec.select.i, %.lr.ph.split.i.i ]
  %i.cx = load ptr, ptr %.0.lcssa214.i.i, align 8, !tbaa !509
  %i.cy = load i16, ptr %i.cx, align 8, !tbaa !393
  %i.cz = zext i16 %i.cy to i32
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread208.i.i, %._crit_edge.i.i, %.._crit_edge.thread.i_crit_edge.i
  %i.da = phi i32 [ %i.bi, %._crit_edge.thread208.i.i ], [ %i.bi, %._crit_edge.i.i ], [ %.pre.i, %.._crit_edge.thread.i_crit_edge.i ]
  %.0.lcssa207.i.i = phi ptr [ %.0.lcssa214.i.i, %._crit_edge.thread208.i.i ], [ null, %._crit_edge.i.i ], [ null, %.._crit_edge.thread.i_crit_edge.i ] ; 2 uses
  %.080.lcssa206.i.i = phi i32 [ %.080.lcssa213.i.i, %._crit_edge.thread208.i.i ], [ %.181.us.i.i, %._crit_edge.i.i ], [ 1073741824, %.._crit_edge.thread.i_crit_edge.i ] ; 2 uses
  %.088.lcssa205.i.i = phi i32 [ %.088.lcssa212.i.i, %._crit_edge.thread208.i.i ], [ %.189.us.i.i, %._crit_edge.i.i ], [ 1073741824, %.._crit_edge.thread.i_crit_edge.i ]
  %i.db = phi i32 [ %i.cz, %._crit_edge.thread208.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %.._crit_edge.thread.i_crit_edge.i ] ; 2 uses
  %i.dc = icmp eq i32 %i.da, 1
  br i1 %i.dc, label %.preheader127.i.i, label %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i

.preheader127.i.i:                                ; preds = %._crit_edge.thread.i.i
  %i.dd = icmp sgt i32 %i.ay, %i.bf
  br i1 %i.dd, label %.lr.ph173.i.i, label %.preheader.i.i.preheader

.lr.ph173.i.i:                                    ; preds = %.preheader127.i.i, %.lr.ph173.i.i
  %.072172.i.i = phi ptr [ %i.df, %.lr.ph173.i.i ], [ %i.bd, %.preheader127.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.072172.i.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !379 ; 3 uses
  %i.dg = load i16, ptr %i.df, align 8, !tbaa !393
  %i.dh = zext i16 %i.dg to i32
  %i.di = icmp sgt i32 %i.ay, %i.dh
  br i1 %i.di, label %.lr.ph173.i.i, label %.preheader.i.i.preheader, !llvm.loop !510

.preheader.i.i.preheader:                         ; preds = %.lr.ph173.i.i, %.preheader127.i.i
  %.173180.i.i.ph = phi ptr [ %i.bd, %.preheader127.i.i ], [ %i.df, %.lr.ph173.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.ac
  %.2181.i.i = phi ptr [ %.3.i.i, %bb.ac ], [ %.0.lcssa207.i.i, %.preheader.i.i.preheader ] ; 2 uses
  %.173180.i.i = phi ptr [ %i.ez, %bb.ac ], [ %.173180.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.175179.i.i = phi ptr [ %.276.i.i, %bb.ac ], [ %i.bd, %.preheader.i.i.preheader ]
  %.178178.i.i = phi ptr [ %.279.i.i, %bb.ac ], [ %i.ah, %.preheader.i.i.preheader ]
  %.282177.i.i = phi i32 [ %.383.i.i, %bb.ac ], [ %.080.lcssa206.i.i, %.preheader.i.i.preheader ] ; 4 uses
  %.085176.i.i = phi i32 [ %.186.i.i, %bb.ac ], [ %i.db, %.preheader.i.i.preheader ] ; 3 uses
  %.290175.i.i = phi i32 [ %.391.i.i, %bb.ac ], [ %.088.lcssa205.i.i, %.preheader.i.i.preheader ] ; 4 uses
  %i.dj = load i16, ptr %.173180.i.i, align 8, !tbaa !393 ; 2 uses
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = sub nsw i32 %i.dk, %i.ay                ; 5 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.i.i
  %.279.i.i = phi ptr [ %.178178.i.i, %.preheader.i.i ], [ %i.dm, %bb.s ] ; 2 uses
  %.276.i.i = phi ptr [ %.175179.i.i, %.preheader.i.i ], [ %i.dn, %bb.s ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.276.i.i, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !379 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 8, !tbaa !393
  %i.dp = zext i16 %i.do to i32
  %.not100.i.i = icmp slt i32 %i.dl, %i.dp
  br i1 %.not100.i.i, label %bb.t, label %bb.s, !llvm.loop !511

bb.t:                                             ; preds = %bb.s
  %i.dq = load i16, ptr %.276.i.i, align 8, !tbaa !393 ; 2 uses
  %i.dr = icmp ugt i16 %i.dj, %i.dq
  br i1 %i.dr, label %.lr.ph.i110.preheader.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i

.lr.ph.i110.preheader.i.i:                        ; preds = %bb.t
  %i.ds = zext i16 %i.dq to i32
  br label %.lr.ph.i110.i.i

.lr.ph.i110.i.i:                                  ; preds = %bb.y, %.lr.ph.i110.preheader.i.i
  %i.dt = phi i32 [ %.pre-phi.i116.i.i, %bb.y ], [ %i.ds, %.lr.ph.i110.preheader.i.i ] ; 3 uses
  %.0364.i111.i.i = phi i32 [ %.1.i120.i.i, %bb.y ], [ 0, %.lr.ph.i110.preheader.i.i ]
  %.0373.i112.i.i = phi i32 [ %.138.i121.i.i, %bb.y ], [ 0, %.lr.ph.i110.preheader.i.i ] ; 4 uses
  %.0392.i113.i.i = phi i32 [ %.140.i117.i.i, %bb.y ], [ 0, %.lr.ph.i110.preheader.i.i ] ; 4 uses
  %.0411.i114.i.i = phi ptr [ %i.er, %bb.y ], [ %.276.i.i, %.lr.ph.i110.preheader.i.i ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i, i64 2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !394
  %i.dw = zext i16 %i.dv to i32                   ; 5 uses
  %i.dx = icmp slt i32 %.0392.i113.i.i, %i.dw
  br i1 %i.dx, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.lr.ph.i110.i.i
  %i.dy = sub nsw i32 %i.dw, %.0392.i113.i.i
  %i.dz = mul nsw i32 %i.dy, %.0373.i112.i.i      ; 2 uses
  %i.ea = icmp sgt i32 %i.dl, %i.dt
  %i.eb = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !379 ; 3 uses
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !393
  %i.ee = zext i16 %i.ed to i32                   ; 4 uses
  br i1 %i.ea, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = sub nsw i32 %i.ee, %i.dl
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.eg = sub nsw i32 %i.ee, %i.dt
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i110.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.0411.i114.i.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !379 ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 8, !tbaa !393
  %i.ek = zext i16 %i.ej to i32                   ; 2 uses
  %i.el = sub nsw i32 %i.ek, %i.dt                ; 2 uses
  %i.em = add nsw i32 %i.el, %.0373.i112.i.i
  %i.en = icmp sgt i32 %i.em, %i.ay
  %i.eo = sub nsw i32 %i.ay, %.0373.i112.i.i
  %spec.select.i115.i.i = select i1 %i.en, i32 %i.eo, i32 %i.el ; 2 uses
  %i.ep = sub nsw i32 %.0392.i113.i.i, %i.dw
  %i.eq = mul nsw i32 %spec.select.i115.i.i, %i.ep
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.pre-phi.i116.i.i = phi i32 [ %i.ee, %bb.v ], [ %i.ee, %bb.w ], [ %i.ek, %bb.x ] ; 2 uses
  %i.er = phi ptr [ %i.ec, %bb.v ], [ %i.ec, %bb.w ], [ %i.ei, %bb.x ]
  %.140.i117.i.i = phi i32 [ %i.dw, %bb.v ], [ %i.dw, %bb.w ], [ %.0392.i113.i.i, %bb.x ] ; 2 uses
  %.pn.i118.i.i = phi i32 [ %i.ef, %bb.v ], [ %i.eg, %bb.w ], [ %spec.select.i115.i.i, %bb.x ]
  %.pn46.i119.i.i = phi i32 [ %i.dz, %bb.v ], [ %i.dz, %bb.w ], [ %i.eq, %bb.x ]
  %.1.i120.i.i = add nsw i32 %.pn46.i119.i.i, %.0364.i111.i.i ; 2 uses
  %.138.i121.i.i = add nsw i32 %.pn.i118.i.i, %.0373.i112.i.i
  %i.es = icmp samesign ult i32 %.pre-phi.i116.i.i, %i.dk
  br i1 %i.es, label %.lr.ph.i110.i.i, label %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i, !llvm.loop !507

_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i: ; preds = %bb.y, %bb.t
  %.039.lcssa.i108.i.i = phi i32 [ 0, %bb.t ], [ %.140.i117.i.i, %bb.y ] ; 4 uses
  %.036.lcssa.i109.i.i = phi i32 [ 0, %bb.t ], [ %.1.i120.i.i, %bb.y ] ; 3 uses
  %i.et = add nuw nsw i32 %.039.lcssa.i108.i.i, %i.at
  %.not101.i.i = icmp sgt i32 %i.et, %i.bb
  %.not102.i.i = icmp sgt i32 %.039.lcssa.i108.i.i, %.282177.i.i
  %or.cond106.i.i = select i1 %.not101.i.i, i1 true, i1 %.not102.i.i
  br i1 %or.cond106.i.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i
  %i.eu = icmp samesign ult i32 %.039.lcssa.i108.i.i, %.282177.i.i
  %i.ev = icmp slt i32 %.036.lcssa.i109.i.i, %.290175.i.i
  %or.cond126.i.i = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond126.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ew = icmp eq i32 %.036.lcssa.i109.i.i, %.290175.i.i
  %i.ex = icmp slt i32 %i.dl, %.085176.i.i
  %or.cond107.i.i = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %or.cond107.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i
  %.391.i.i = phi i32 [ %.036.lcssa.i109.i.i, %bb.ab ], [ %.290175.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i ], [ %.290175.i.i, %bb.aa ]
  %.186.i.i = phi i32 [ %i.dl, %bb.ab ], [ %.085176.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i ], [ %.085176.i.i, %bb.aa ] ; 2 uses
  %.383.i.i = phi i32 [ %.039.lcssa.i108.i.i, %bb.ab ], [ %.282177.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i ], [ %.282177.i.i, %bb.aa ] ; 2 uses
  %.3.i.i = phi ptr [ %.279.i.i, %bb.ab ], [ %.2181.i.i, %_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.exit122.i.i ], [ %.2181.i.i, %bb.aa ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.173180.i.i, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !379 ; 2 uses
  %.not99.i.i = icmp eq ptr %i.ez, null
  br i1 %.not99.i.i, label %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i, label %.preheader.i.i, !llvm.loop !512

_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i: ; preds = %bb.ac, %._crit_edge.thread.i.i
  %.287.i.i = phi i32 [ %i.db, %._crit_edge.thread.i.i ], [ %.186.i.i, %bb.ac ] ; 3 uses
  %.484.i.i = phi i32 [ %.080.lcssa206.i.i, %._crit_edge.thread.i.i ], [ %.383.i.i, %bb.ac ] ; 2 uses
  %.4.i.i = phi ptr [ %.0.lcssa207.i.i, %._crit_edge.thread.i.i ], [ %.3.i.i, %bb.ac ] ; 3 uses
  %i.fa = icmp eq ptr %.4.i.i, null
  br i1 %i.fa, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i
  %i.fb = add nuw nsw i32 %.484.i.i, %i.at        ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, %i.bb
  br i1 %i.fc, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = load ptr, ptr %i.aj, align 8, !tbaa !387 ; 6 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = trunc i32 %.287.i.i to i16              ; 2 uses
  store i16 %i.ff, ptr %i.fd, align 8, !tbaa !393
  %i.fg = trunc i32 %i.fb to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !394
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !379
  store ptr %i.fj, ptr %i.aj, align 8, !tbaa !387
  %i.fk = load ptr, ptr %.4.i.i, align 8, !tbaa !509 ; 3 uses
  %i.fl = load i16, ptr %i.fk, align 8, !tbaa !393
  %i.fm = zext i16 %i.fl to i32
  %i.fn = icmp sgt i32 %.287.i.i, %i.fm
  br i1 %i.fn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !379
  store ptr %i.fd, ptr %i.fo, align 8, !tbaa !379
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store ptr %i.fd, ptr %.4.i.i, align 8, !tbaa !509
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi ptr [ %i.fp, %bb.ag ], [ %i.fk, %bb.ah ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !379 ; 2 uses
  %.not54.i = icmp eq ptr %i.fr, null
  %.pre58.i = add nsw i32 %.287.i.i, %i.an        ; 3 uses
  br i1 %.not54.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %bb.aj
  %i.fs = phi ptr [ %i.fy, %bb.aj ], [ %i.fr, %bb.ai ] ; 4 uses
  %i.ft = phi ptr [ %i.fx, %bb.aj ], [ %i.fq, %bb.ai ]
  %.155.i = phi ptr [ %i.fs, %bb.aj ], [ %.0.i, %bb.ai ] ; 2 uses
  %i.fu = load i16, ptr %i.fs, align 8, !tbaa !393
  %i.fv = zext i16 %i.fu to i32
  %.not44.i = icmp slt i32 %.pre58.i, %i.fv
  br i1 %.not44.i, label %.critedge.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.fw = load ptr, ptr %i.aj, align 8, !tbaa !387
  store ptr %i.fw, ptr %i.ft, align 8, !tbaa !379
  store ptr %.155.i, ptr %i.aj, align 8, !tbaa !387
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !379 ; 2 uses
  %.not.i = icmp eq ptr %i.fy, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !513

.critedge.i:                                      ; preds = %bb.aj, %.lr.ph.i, %bb.ai
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.ai ], [ %.155.i, %.lr.ph.i ], [ %i.fs, %bb.aj ] ; 3 uses
  store ptr %.1.lcssa.i, ptr %i.fi, align 8, !tbaa !379
  %i.fz = load i16, ptr %.1.lcssa.i, align 8, !tbaa !393
  %i.ga = zext i16 %i.fz to i32
  %i.gb = icmp sgt i32 %.pre58.i, %i.ga
  br i1 %i.gb, label %bb.ak, label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit

bb.ak:                                            ; preds = %.critedge.i
  %i.gc = trunc i32 %.pre58.i to i16
  store i16 %i.gc, ptr %.1.lcssa.i, align 8, !tbaa !393
  br label %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit

_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit: ; preds = %bb.ak, %.critedge.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i16 %i.ff, ptr %i.gd, align 4, !tbaa !404
  %i.ge = trunc i32 %.484.i.i to i16
  %4 = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i16 %i.ge, ptr %4, align 2, !tbaa !396
  br label %bb.al

_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread: ; preds = %bb.e, %bb.f, %bb.ad, %bb.ae, %_ZL28stbrp__skyline_find_best_posP13stbrp_contextii.exit.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ak, i64 10
  store i16 -1, ptr %i.gf, align 2, !tbaa !396
  %5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i16 -1, ptr %5, align 4, !tbaa !404
  br label %bb.al

bb.al:                                            ; preds = %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit, %_ZL29stbrp__skyline_pack_rectangleP13stbrp_contextii.exit.thread, %bb.d
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge59, label %bb.b, !llvm.loop !514

._crit_edge59:                                    ; preds = %bb.al
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 16, ptr noundef nonnull @_ZL19rect_original_orderPKvS0_)
  %xtraiter4 = and i64 %wide.trip.count70, 1
  %i.gg = icmp eq i32 %2, 1
  br i1 %i.gg, label %.lr.ph63.epil.preheader, label %._crit_edge59.new

._crit_edge59.new:                                ; preds = %._crit_edge59
  %unroll_iter8 = and i64 %wide.trip.count70, 2147483646
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.thread.1, %._crit_edge59.new
  %indvars.iv72 = phi i64 [ 0, %._crit_edge59.new ], [ %indvars.iv.next73.1, %.thread.1 ] ; 3 uses
  %niter9 = phi i64 [ 0, %._crit_edge59.new ], [ %niter9.next.1, %.thread.1 ]
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv72 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i16, ptr %i.gi, align 4, !tbaa !404
  %i.gk = icmp eq i16 %i.gj, -1
  br i1 %i.gk, label %bb.am, label %.thread

bb.am:                                            ; preds = %.lr.ph63
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 10
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !396
  %.fr = freeze i16 %i.gm
  %i.gn = icmp ne i16 %.fr, -1
  %i.go = zext i1 %i.gn to i32
  br label %.thread

.thread:                                          ; preds = %.lr.ph63, %bb.am
  %.sink.a = phi i32 [ %i.go, %bb.am ], [ 1, %.lr.ph63 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 %.sink.a, ptr %i.gp, align 4, !tbaa !395
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv72 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load i16, ptr %i.gr, align 4, !tbaa !404
  %i.gt = icmp eq i16 %i.gs, -1
  br i1 %i.gt, label %bb.an, label %.thread.1

bb.an:                                            ; preds = %.thread
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 26
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !396
  %.fr.1 = freeze i16 %i.gv
  %i.gw = icmp ne i16 %.fr.1, -1
  %i.gx = zext i1 %i.gw to i32
  br label %.thread.1

.thread.1:                                        ; preds = %bb.an, %.thread
  %.sink.1 = phi i32 [ %i.gx, %bb.an ], [ 1, %.thread ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 28
  store i32 %.sink.1, ptr %i.gy, align 4, !tbaa !395
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %niter9.next.1 = add i64 %niter9, 2             ; 2 uses
  %niter9.ncmp.1 = icmp eq i64 %niter9.next.1, %unroll_iter8
  br i1 %niter9.ncmp.1, label %._crit_edge64.loopexit.unr-lcssa, label %.lr.ph63, !llvm.loop !515

._crit_edge64.loopexit.unr-lcssa:                 ; preds = %.thread.1
  %lcmp.mod6.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod6.not, label %._crit_edge64, label %.lr.ph63.epil.preheader

.lr.ph63.epil.preheader:                          ; preds = %._crit_edge64.loopexit.unr-lcssa, %._crit_edge59
  %indvars.iv72.epil.init = phi i64 [ 0, %._crit_edge59 ], [ %indvars.iv.next73.1, %._crit_edge64.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv72.epil.init ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i16, ptr %i.ha, align 4, !tbaa !404
  %i.hc = icmp eq i16 %i.hb, -1
  br i1 %i.hc, label %bb.ao, label %.thread.epil

bb.ao:                                            ; preds = %.lr.ph63.epil.preheader
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 10
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !396
  %.fr.epil = freeze i16 %i.he
  %i.hf = icmp ne i16 %.fr.epil, -1
  %i.hg = zext i1 %i.hf to i32
  br label %.thread.epil

.thread.epil:                                     ; preds = %bb.ao, %.lr.ph63.epil.preheader
  %.sink.epil = phi i32 [ %i.hg, %bb.ao ], [ 1, %.lr.ph63.epil.preheader ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 %.sink.epil, ptr %i.hh, align 4, !tbaa !395
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %.thread.epil, %._crit_edge64.loopexit.unr-lcssa, %._crit_edge59.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ImVectorI10stbrp_rectED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !356  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #42
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z40ImFontAtlasBuildRender8bppRectFromStringP11ImFontAtlasiiiiPKcch(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i8 noundef signext %6, i8 noundef zeroext %7) local_unnamed_addr #30 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge27.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  %i.e = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge27.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.b, align 8, !tbaa !235
  %i.k = mul nsw i32 %i.j, %2
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check33 = icmp ult i32 %3, 32
  %i.n = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %6, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <16 x i8> poison, i8 %7, i64 0
  %broadcast.splat35 = shufflevector <16 x i8> %broadcast.splatinsert34, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  %n.vec37 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert38 = insertelement <8 x i8> poison, i8 %6, i64 0
  %broadcast.splat39 = shufflevector <8 x i8> %broadcast.splatinsert38, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <8 x i8> poison, i8 %7, i64 0
  %broadcast.splat41 = shufflevector <8 x i8> %broadcast.splatinsert40, <8 x i8> poison, <8 x i32> zeroinitializer
  %cmp.n45 = icmp eq i64 %n.vec37, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.01926 = phi i32 [ 0, %.preheader.preheader ], [ %i.al, %._crit_edge ]
  %.02025 = phi ptr [ %i.m, %.preheader.preheader ], [ %i.ao, %._crit_edge ] ; 9 uses
  %.02124 = phi ptr [ %5, %.preheader.preheader ], [ %i.ap, %._crit_edge ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.o = mul i64 %indvar, %i.e
  %i.p = add i64 %i.o, %i.a
  %.0202532 = ptrtoaddr ptr %.02025 to i64
  %i.q = sub i64 %i.p, %.0202532
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02124, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !22
  %wide.load36 = load <16 x i8>, ptr %i.s, align 1, !tbaa !22
  %i.t = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.u = icmp eq <16 x i8> %wide.load36, %broadcast.splat
  %i.v = select <16 x i1> %i.t, <16 x i8> %broadcast.splat35, <16 x i8> zeroinitializer
  %i.w = select <16 x i1> %i.u, <16 x i8> %broadcast.splat35, <16 x i8> zeroinitializer
  %i.x = getelementptr inbounds nuw i8, ptr %.02025, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %i.v, ptr %i.x, align 1, !tbaa !22
  store <16 x i8> %i.w, ptr %i.y, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !516

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !517

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
