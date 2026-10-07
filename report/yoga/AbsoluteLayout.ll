Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/AbsoluteLayout?download=true
inline.NumInlined: 733
inline.NumDeleted: 181
begin_hunk_0_@_ZN8facebook4yoga25layoutAbsoluteDescendantsEPNS0_4NodeES2_NS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjjffff:bb.a
  %i.aq = insertelement <2 x float> %i.ap, float %8, i64 1
  br label %bb.g

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.ar = trunc i8 %.2100 to i1
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.098.lcssa = phi i1 [ false, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ %i.ar, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not12.i.i.i113 = icmp eq ptr %i.at, null
  br i1 %.not12.i.i.i113, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %.lr.ph.i.i.i114
  %.013.i.i.i115 = phi ptr [ %i.au, %.lr.ph.i.i.i114 ], [ %i.at, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %i.au = load ptr, ptr %.013.i.i.i115, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i115, i64 noundef 24) #12
  %.not.i.i.i116 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i116, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117, label %.lr.ph.i.i.i114, !llvm.loop !96

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117: ; preds = %.lr.ph.i.i.i114, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret i1 %.098.lcssa

bb.f:                                             ; preds = %bb.br
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit171

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.aw = phi i64 [ %i.w, %.lr.ph ], [ %i.lb, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.ax = phi ptr [ %i.v, %.lr.ph ], [ %i.lc, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 2 uses
  %.098292 = phi i8 [ 0, %.lr.ph ], [ %.2100, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 696
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 704
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !27 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.aw, %i.bf
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.aw, i64 noundef %i.bf) #10
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.aw
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37 ; 58 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, 12
  %i.bl = icmp eq i8 %i.bk, 4
  br i1 %i.bl, label %bb.bq, label %bb.j

.loopexit:                                        ; preds = %bb.bi
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit171

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit171

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = lshr i32 %i.bn, 28
  %i.bp = trunc nuw nsw i32 %i.bo to i8
  %i.bq = and i8 %i.bp, 3
  switch i8 %i.bq, label %bb.bq [
    i8 2, label %bb.k
    i8 0, label %bb.bh
  ]

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.bs = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i32 noundef 4)
          to label %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit unwind label %bb.ag

_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit: ; preds = %bb.k
  br i1 %i.bs, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit
  %i.bt = load float, ptr %i.z, align 4, !tbaa !14
  %i.bu = load i16, ptr %i.ab, align 1, !tbaa !11 ; 2 uses
  %i.bv = and i16 %i.bu, 7
  %.not14.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not14.i.i, label %bb.m, label %.noexc119

bb.m:                                             ; preds = %bb.l
  %i.bw = load i16, ptr %i.ac, align 1, !tbaa !11 ; 2 uses
  %i.bx = and i16 %i.bw, 7
  %.not15.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not15.i.i, label %bb.n, label %.noexc119

bb.n:                                             ; preds = %bb.m
  %i.by = load i16, ptr %i.ad, align 1, !tbaa !11 ; 2 uses
  %i.bz = and i16 %i.by, 7
  %.not16.i.i = icmp eq i16 %i.bz, 0
  %.val.i.i = load i16, ptr %i.ae, align 1
  %.sroa.0.0.pre.i.i = select i1 %.not16.i.i, i16 %.val.i.i, i16 %i.by
  br label %.noexc119

.noexc119:                                        ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.0.0.i177 = phi i16 [ %.sroa.0.0.pre.i.i, %bb.n ], [ %i.bu, %bb.l ], [ %i.bw, %bb.m ]
  %i.ca = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.i177, float noundef 0.000000e+00)
          to label %.noexc120 unwind label %bb.ah ; 2 uses

.noexc120:                                        ; preds = %.noexc119
  %.sink.i.inv.i.i = fcmp oge float %i.ca, 0.000000e+00
  %i.cb = select i1 %.sink.i.inv.i.i, float %i.ca, float 0.000000e+00
  %i.cc = load i16, ptr %i.af, align 1, !tbaa !11 ; 2 uses
  %i.cd = and i16 %i.cc, 7
  %.not14.i11.i = icmp eq i16 %i.cd, 0
  br i1 %.not14.i11.i, label %bb.o, label %.noexc121

bb.o:                                             ; preds = %.noexc120
  %i.ce = load i16, ptr %i.ag, align 1, !tbaa !11 ; 2 uses
  %i.cf = and i16 %i.ce, 7
  %.not15.i7.i = icmp eq i16 %i.cf, 0
  br i1 %.not15.i7.i, label %bb.p, label %.noexc121

bb.p:                                             ; preds = %bb.o
  %i.cg = load i16, ptr %i.ad, align 1, !tbaa !11 ; 2 uses
  %i.ch = and i16 %i.cg, 7
  %.not16.i8.i = icmp eq i16 %i.ch, 0
  %.val.i9.i = load i16, ptr %i.ae, align 1
  %.sroa.0.0.pre.i10.i = select i1 %.not16.i8.i, i16 %.val.i9.i, i16 %i.cg
  br label %.noexc121

.noexc121:                                        ; preds = %bb.p, %bb.o, %.noexc120
  %.sroa.0.0.i = phi i16 [ %.sroa.0.0.pre.i10.i, %bb.p ], [ %i.cc, %.noexc120 ], [ %i.ce, %bb.o ]
  %i.ci = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.i, float noundef 0.000000e+00)
          to label %.noexc125 unwind label %bb.ah ; 2 uses

.noexc125:                                        ; preds = %.noexc121
  %.sink.i.inv.i3.i = fcmp oge float %i.ci, 0.000000e+00
  %i.cj = select i1 %.sink.i.inv.i3.i, float %i.ci, float 0.000000e+00
  %i.ck = fadd float %i.cb, %i.cj
  %i.cl = fsub float %i.bt, %i.ck
  %i.cm = load float, ptr %i.ah, align 4, !tbaa !14
  %i.cn = load i16, ptr %i.ai, align 1, !tbaa !11
  %i.co = and i16 %i.cn, 7
  %.not.i3.i = icmp eq i16 %i.co, 0
  %i.cp = load i16, ptr %i.aj, align 1
  %i.cq = and i16 %i.cp, 7
  %.not7.i.i = icmp eq i16 %i.cq, 0
  %spec.select.i.i = select i1 %.not7.i.i, ptr %i.ae, ptr %i.aj
  %.sroa.0.0.in.i.i = select i1 %.not.i3.i, ptr %spec.select.i.i, ptr %i.ai
  %.sroa.0.0.i4.i = load i16, ptr %.sroa.0.0.in.i.i, align 1, !tbaa !12
  %i.cr = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.i4.i, float noundef 0.000000e+00)
          to label %.noexc127 unwind label %bb.ai ; 2 uses

.noexc127:                                        ; preds = %.noexc125
  %i.cs = load i16, ptr %i.ak, align 1, !tbaa !11
  %i.ct = and i16 %i.cs, 7
  %.not.i12.i = icmp eq i16 %i.ct, 0
  %i.cu = load i16, ptr %i.aj, align 1
  %i.cv = and i16 %i.cu, 7
  %.not7.i13.i = icmp eq i16 %i.cv, 0
  %spec.select.i14.i = select i1 %.not7.i13.i, ptr %i.ae, ptr %i.aj
  %.sroa.0.0.in.i15.i = select i1 %.not.i12.i, ptr %spec.select.i14.i, ptr %i.ak
  %.sroa.0.0.i16.i = load i16, ptr %.sroa.0.0.in.i15.i, align 1, !tbaa !12
  %i.cw = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.i16.i, float noundef 0.000000e+00)
          to label %bb.q unwind label %bb.ai      ; 2 uses

bb.q:                                             ; preds = %.noexc127
  %.sink.i.inv.i.i123 = fcmp oge float %i.cr, 0.000000e+00
  %i.cx = select i1 %.sink.i.inv.i.i123, float %i.cr, float 0.000000e+00
  %.sink.i.inv.i3.i124 = fcmp oge float %i.cw, 0.000000e+00
  %i.cy = select i1 %.sink.i.inv.i3.i124, float %i.cw, float 0.000000e+00
  %i.cz = fadd float %i.cx, %i.cy
  %i.da = fsub float %i.cm, %i.cz
  br label %.thread

.thread:                                          ; preds = %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit, %bb.q
  %i.db = phi float [ %i.cl, %bb.q ], [ %9, %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit ]
  %i.dc = phi float [ %i.da, %bb.q ], [ %10, %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit ]
  invoke void @_ZN8facebook4yoga19layoutAbsoluteChildEPKNS0_4NodeES3_PS1_ffNS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bh, float noundef %i.db, float noundef %i.dc, i32 noundef %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(60) %4, i32 noundef %5, i32 noundef %6)
          to label %bb.r unwind label %bb.ai

bb.r:                                             ; preds = %.thread
  %i.dd = trunc i8 %.098292 to i1
  br i1 %i.dd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.bh, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.df = phi i8 [ 1, %bb.r ], [ %i.de, %bb.s ]
  %i.dg = load i32, ptr %i.al, align 8
  %i.dh = trunc i32 %i.dg to i8                   ; 2 uses
  %i.di = lshr i8 %i.dh, 2                        ; 2 uses
  %i.dj = and i8 %i.di, 3                         ; 3 uses
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  switch i8 %i.dj, label %bb.v [
    i8 2, label %.thread190
    i8 3, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit155
  ]

bb.v:                                             ; preds = %bb.t, %bb.u
  %spec.select.i = phi i8 [ 2, %bb.t ], [ 3, %bb.u ]
  %i.dk = icmp samesign ult i8 %i.dj, 2           ; 3 uses
  %i.dl = select i1 %i.dk, i8 %spec.select.i, i8 0 ; 3 uses
  %12 = trunc i8 %i.di to i1
  br i1 %12, label %bb.w, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit

bb.w:                                             ; preds = %bb.v
  %i.dm = and i8 %i.dh, 8
  %.not241 = icmp eq i8 %i.dm, 0
  br i1 %.not241, label %bb.ab, label %.thread190

.thread190:                                       ; preds = %bb.u, %bb.w
  %.0.i186193 = phi i8 [ %i.dj, %bb.w ], [ 3, %bb.u ]
  %i.dn = phi i1 [ %i.dk, %bb.w ], [ false, %bb.u ]
  %i.do = phi i8 [ %i.dl, %bb.w ], [ 0, %bb.u ]   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bh, i64 87
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !11
  %i.dr = and i16 %i.dq, 7
  %.not.i130 = icmp eq i16 %i.dr, 0
  br i1 %.not.i130, label %bb.x, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.x:                                             ; preds = %.thread190
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bh, i64 91
  %i.dt = load i16, ptr %i.ds, align 1, !tbaa !11
  %i.du = and i16 %i.dt, 7
  %.not1.i = icmp eq i16 %i.du, 0
  br i1 %.not1.i, label %bb.y, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.dw = load i16, ptr %i.dv, align 1, !tbaa !11
  %i.dx = and i16 %i.dw, 7
  %.not2.i = icmp eq i16 %i.dx, 0
  br i1 %.not2.i, label %bb.z, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bh, i64 99
  %i.dz = load i16, ptr %i.dy, align 1, !tbaa !11
  %i.ea = and i16 %i.dz, 7
  %.not3.i = icmp eq i16 %i.ea, 0
  br i1 %.not3.i, label %bb.aa, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bh, i64 95
  %i.ec = load i16, ptr %i.eb, align 1, !tbaa !11
  %i.ed = and i16 %i.ec, 7
  %.not4.i = icmp eq i16 %i.ed, 0
  br i1 %.not4.i, label %.split, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

.split:                                           ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bh, i64 97
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !11
  %.fr244 = freeze i16 %i.ef
  %i.eg = and i16 %.fr244, 7
  %.not245 = icmp eq i16 %i.eg, 0
  %spec.select = select i1 %.not245, ptr %1, ptr %0
  br label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.ab:                                            ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bh, i64 89
  %i.ei = load i16, ptr %i.eh, align 1, !tbaa !11
  %i.ej = and i16 %i.ei, 7
  %.not.i131 = icmp eq i16 %i.ej, 0
  br i1 %.not.i131, label %bb.ac, label %.thread237

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bh, i64 93
  %i.el = load i16, ptr %i.ek, align 1, !tbaa !11
  %i.em = and i16 %i.el, 7
  %.not1.i132 = icmp eq i16 %i.em, 0
  br i1 %.not1.i132, label %bb.ad, label %.thread237

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.eo = load i16, ptr %i.en, align 1, !tbaa !11
  %i.ep = and i16 %i.eo, 7
  %.not2.i133 = icmp eq i16 %i.ep, 0
  br i1 %.not2.i133, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit, label %.thread237

_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit: ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bh, i64 101
  %i.er = load i16, ptr %i.eq, align 1, !tbaa !11
  %.fr242 = freeze i16 %i.er
  %i.es = and i16 %.fr242, 7
  %.not243 = icmp eq i16 %i.es, 0
  br i1 %.not243, label %.thread202, label %.thread237

.thread237:                                       ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit, %bb.ad, %bb.ac, %bb.ab
  br label %.thread202

_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread: ; preds = %.split, %bb.aa, %bb.z, %bb.y, %bb.x, %.thread190
  %i.et = phi ptr [ %spec.select, %.split ], [ %0, %bb.z ], [ %0, %bb.aa ], [ %0, %bb.y ], [ %0, %.thread190 ], [ %0, %bb.x ]
  %i.eu = icmp eq i8 %.0.i186193, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 592 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bh, i64 592
  %i.ex = zext i1 %i.dn to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ex ; 2 uses
  br i1 %i.eu, label %bb.af, label %bb.ae

.thread202:                                       ; preds = %.thread237, %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit
  %.ph206 = phi ptr [ %1, %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit ], [ %0, %.thread237 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bh, i64 620
  %i.fa = getelementptr inbounds nuw i8, ptr %.ph206, i64 596
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bh, i64 592
  %i.fc = zext i1 %i.dk to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

bb.ae:                                            ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bh, i64 608
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

bb.af:                                            ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bh, i64 616
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i: ; preds = %bb.af, %bb.ae, %.thread202
  %.in = phi ptr [ %i.ey, %bb.af ], [ %i.fd, %.thread202 ], [ %i.ey, %bb.ae ]
  %.in246.a = phi ptr [ %i.ev, %bb.af ], [ %i.fa, %.thread202 ], [ %i.ev, %bb.ae ]
  %.in247 = phi ptr [ %i.ff, %bb.af ], [ %i.ez, %.thread202 ], [ %i.fe, %bb.ae ]
  %i.fg = phi i8 [ %i.do, %bb.af ], [ %i.dl, %.thread202 ], [ %i.do, %bb.ae ]
  %.0.i6.i = phi i32 [ 0, %bb.af ], [ 1, %.thread202 ], [ 2, %bb.ae ]
  %i.fh = load float, ptr %.in247, align 4, !tbaa !14
  %i.fi = load float, ptr %.in246.a, align 4, !tbaa !14
  %i.fj = load float, ptr %.in, align 4, !tbaa !14
  %i.fk = fsub float %i.fi, %i.fj
  %i.fl = fsub float %i.fk, %i.fh
  invoke void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %i.bh, float noundef %i.fl, i32 noundef %.0.i6.i)
          to label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit unwind label %bb.aj

bb.ag:                                            ; preds = %bb.k
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit171

bb.ah:                                            ; preds = %.noexc121, %.noexc119
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit171

bb.ai:                                            ; preds = %.noexc127, %.noexc125, %.thread
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit171

bb.aj:                                            ; preds = %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit171

_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit: ; preds = %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i, %bb.v
  %i.fq = phi i8 [ %i.fg, %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i ], [ %i.dl, %bb.v ] ; 3 uses
  %i.fr = and i8 %i.fq, -3
  %i.fs = icmp eq i8 %i.fr, 1
  br i1 %i.fs, label %bb.ak, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit155

bb.ak:                                            ; preds = %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit
  %.not248 = icmp samesign ult i8 %i.fq, 2
  br i1 %.not248, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bh, i64 87
  %i.fu = load i16, ptr %i.ft, align 1, !tbaa !11
  %i.fv = and i16 %i.fu, 7
  %.not.i136 = icmp eq i16 %i.fv, 0
  br i1 %.not.i136, label %bb.am, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit141.thread

bb.am:                                            ; preds = %bb.al
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bh, i64 91
  %i.fx = load i16, ptr %i.fw, align 1, !tbaa !11
  %i.fy = and i16 %i.fx, 7
  %.not1.i137 = icmp eq i16 %i.fy, 0
  br i1 %.not1.i137, label %bb.an, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit141.thread

bb.an:                                            ; preds = %bb.am
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.ga = load i16, ptr %i.fz, align 1, !tbaa !11
  %i.gb = and i16 %i.ga, 7
  %.not2.i138 = icmp eq i16 %i.gb, 0
  br i1 %.not2.i138, label %bb.ao, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit141.thread

bb.ao:                                            ; preds = %bb.an
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bh, i64 99
  %i.gd = load i16, ptr %i.gc, align 1, !tbaa !11
  %i.ge = and i16 %i.gd, 7
  %.not3.i139 = icmp eq i16 %i.ge, 0
  br i1 %.not3.i139, label %bb.ap, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit141.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bh, i64 95
  %i.gg = load i16, ptr %i.gf, align 1, !tbaa !11
  %i.gh = and i16 %i.gg, 7
  %.not4.i140 = icmp eq i16 %i.gh, 0
  br i1 %.not4.i140, label %.split222, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit141.thread

.split222:                                        ; preds = %bb.ap
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bh, i64 97
  %i.gj = load i16, ptr %i.gi, align 1, !tbaa !11
  %.fr251 = freeze i16 %i.gj
  %i.gk = and i16 %.fr251, 7
  %.not252 = icmp eq i16 %i.gk, 0
  br i1 %.not252, label %bb.at, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit141.thread

bb.aq:                                            ; preds = %bb.ak
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bh, i64 89
end_hunk_0
