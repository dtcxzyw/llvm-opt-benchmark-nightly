Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/AbsoluteLayout?download=true
inline.NumInlined: 725
inline.NumDeleted: 178
begin_hunk_0_@_ZN8facebook4yoga25layoutAbsoluteDescendantsEPNS0_4NodeES2_NS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjjffff:bb.a
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
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.aw = phi i64 [ %i.w, %.lr.ph ], [ %i.lj, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.ax = phi ptr [ %i.v, %.lr.ph ], [ %i.lk, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 2 uses
  %.098289 = phi i8 [ 0, %.lr.ph ], [ %.2100, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 5 uses
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
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

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
  %.not14.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not14.i.i.i, label %bb.m, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.bw = load i16, ptr %i.ac, align 1, !tbaa !11 ; 2 uses
  %i.bx = and i16 %i.bw, 7
  %.not15.i.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not15.i.i.i, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread28.i, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread28.i: ; preds = %bb.m
  %i.by = load i16, ptr %i.ad, align 1, !tbaa !11 ; 2 uses
  %i.bz = and i16 %i.by, 7
  %.not16.i.i.i = icmp eq i16 %i.bz, 0
  %.val.i = load i16, ptr %i.ae, align 1
  %.sroa.0.0.pre.i11.i30.i = select i1 %.not16.i.i.i, i16 %.val.i, i16 %i.by
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i: ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread28.i, %bb.m, %bb.l
  %.sroa.0.0.pre.i11.i30.sink.i = phi i16 [ %.sroa.0.0.pre.i11.i30.i, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread28.i ], [ %i.bw, %bb.m ], [ %i.bu, %bb.l ]
  %i.ca = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.pre.i11.i30.sink.i, float noundef 0.000000e+00)
          to label %.noexc119 unwind label %bb.ah ; 4 uses

.noexc119:                                        ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i
  %i.cb = load i16, ptr %i.af, align 1, !tbaa !11 ; 2 uses
  %i.cc = and i16 %i.cb, 7
  %.not14.i12.i13.i = icmp eq i16 %i.cc, 0
  br i1 %.not14.i12.i13.i, label %bb.n, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i

bb.n:                                             ; preds = %.noexc119
  %i.cd = load i16, ptr %i.ag, align 1, !tbaa !11 ; 2 uses
  %i.ce = and i16 %i.cd, 7
  %.not15.i8.i14.i = icmp eq i16 %i.ce, 0
  br i1 %.not15.i8.i14.i, label %bb.o, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i

bb.o:                                             ; preds = %bb.n
  %i.cf = load i16, ptr %i.ad, align 1, !tbaa !11
  %i.cg = and i16 %i.cf, 7
  %.not16.i9.i15.i = icmp eq i16 %i.cg, 0
  %spec.select.i10.i16.i = select i1 %.not16.i9.i15.i, ptr %i.ae, ptr %i.ad
  %.sroa.0.0.pre.i11.i11.i = load i16, ptr %spec.select.i10.i16.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i: ; preds = %bb.o, %bb.n, %.noexc119
  %.sroa.0.0.i12.i = phi i16 [ %i.cd, %bb.n ], [ %i.cb, %.noexc119 ], [ %.sroa.0.0.pre.i11.i11.i, %bb.o ]
  %i.ch = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.i12.i, float noundef 0.000000e+00)
          to label %bb.p unwind label %bb.ah      ; 4 uses

bb.p:                                             ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i
  %or.cond.i.i.i = fcmp ord float %i.ca, 0.000000e+00
  %i.ci = fcmp olt float %i.ca, 0.000000e+00
  %i.cj = fcmp uno float %i.ca, 0.000000e+00
  %.sink.i.i.i = select i1 %or.cond.i.i.i, i1 %i.ci, i1 %i.cj
  %i.ck = select i1 %.sink.i.i.i, float 0.000000e+00, float %i.ca
  %or.cond.i.i3.i = fcmp ord float %i.ch, 0.000000e+00
  %i.cl = fcmp uno float %i.ch, 0.000000e+00
  %i.cm = fcmp olt float %i.ch, 0.000000e+00
  %.sink.i.i4.i = select i1 %or.cond.i.i3.i, i1 %i.cm, i1 %i.cl
  %i.cn = select i1 %.sink.i.i4.i, float 0.000000e+00, float %i.ch
  %i.co = fadd float %i.ck, %i.cn
  %i.cp = fsub float %i.bt, %i.co
  %i.cq = load float, ptr %i.ah, align 4, !tbaa !14
  %i.cr = load i16, ptr %i.ai, align 1, !tbaa !11
  %i.cs = and i16 %i.cr, 7
  %.not.i3.i.i = icmp eq i16 %i.cs, 0
  %i.ct = load i16, ptr %i.aj, align 1
  %i.cu = and i16 %i.ct, 7
  %.not7.i.i.i = icmp eq i16 %i.cu, 0
  %spec.select.i4.i.i = select i1 %.not7.i.i.i, ptr %i.ae, ptr %i.aj
  %.sroa.0.0.in.i.i.i = select i1 %.not.i3.i.i, ptr %spec.select.i4.i.i, ptr %i.ai
  %.sroa.0.0.pre.i11.i.i = load i16, ptr %.sroa.0.0.in.i.i.i, align 1, !tbaa !12
  %i.cv = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.pre.i11.i.i, float noundef 0.000000e+00)
          to label %.noexc128 unwind label %bb.ai ; 4 uses

.noexc128:                                        ; preds = %bb.p
  %i.cw = load i16, ptr %i.ak, align 1, !tbaa !11
  %i.cx = and i16 %i.cw, 7
  %.not.i13.i5.i = icmp eq i16 %i.cx, 0
  %i.cy = load i16, ptr %i.aj, align 1
  %i.cz = and i16 %i.cy, 7
  %.not7.i14.i6.i = icmp eq i16 %i.cz, 0
  %spec.select.i15.i7.i = select i1 %.not7.i14.i6.i, ptr %i.ae, ptr %i.aj
  %.sroa.0.0.in.i16.i8.i = select i1 %.not.i13.i5.i, ptr %spec.select.i15.i7.i, ptr %i.ak
  %.sroa.0.0.pre.i11.i11.i121 = load i16, ptr %.sroa.0.0.in.i16.i8.i, align 1, !tbaa !12
  %i.da = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.pre.i11.i11.i121, float noundef 0.000000e+00)
          to label %bb.q unwind label %bb.ai      ; 4 uses

bb.q:                                             ; preds = %.noexc128
  %or.cond.i.i.i124 = fcmp ord float %i.cv, 0.000000e+00
  %i.db = fcmp olt float %i.cv, 0.000000e+00
  %i.dc = fcmp uno float %i.cv, 0.000000e+00
  %.sink.i.i.i125 = select i1 %or.cond.i.i.i124, i1 %i.db, i1 %i.dc
  %i.dd = select i1 %.sink.i.i.i125, float 0.000000e+00, float %i.cv
  %or.cond.i.i3.i126 = fcmp ord float %i.da, 0.000000e+00
  %i.de = fcmp uno float %i.da, 0.000000e+00
  %i.df = fcmp olt float %i.da, 0.000000e+00
  %.sink.i.i4.i127 = select i1 %or.cond.i.i3.i126, i1 %i.df, i1 %i.de
  %i.dg = select i1 %.sink.i.i4.i127, float 0.000000e+00, float %i.da
  %i.dh = fadd float %i.dd, %i.dg
  %i.di = fsub float %i.cq, %i.dh
  br label %.thread

.thread:                                          ; preds = %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit, %bb.q
  %i.dj = phi float [ %i.cp, %bb.q ], [ %9, %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit ]
  %i.dk = phi float [ %i.di, %bb.q ], [ %10, %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit ]
  invoke void @_ZN8facebook4yoga19layoutAbsoluteChildEPKNS0_4NodeES3_PS1_ffNS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bh, float noundef %i.dj, float noundef %i.dk, i32 noundef %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(60) %4, i32 noundef %5, i32 noundef %6)
          to label %bb.r unwind label %bb.ai

bb.r:                                             ; preds = %.thread
  %i.dl = trunc i8 %.098289 to i1
  br i1 %i.dl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = load i8, ptr %i.bh, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = phi i8 [ 1, %bb.r ], [ %i.dm, %bb.s ]
  %i.do = load i32, ptr %i.al, align 8
  %i.dp = trunc i32 %i.do to i8                   ; 2 uses
  %i.dq = lshr i8 %i.dp, 2                        ; 2 uses
  %i.dr = and i8 %i.dq, 3                         ; 3 uses
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  switch i8 %i.dr, label %bb.v [
    i8 2, label %.thread187
    i8 3, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit156
  ]

bb.v:                                             ; preds = %bb.t, %bb.u
  %spec.select.i = phi i8 [ 2, %bb.t ], [ 3, %bb.u ]
  %i.ds = icmp samesign ult i8 %i.dr, 2           ; 3 uses
  %i.dt = select i1 %i.ds, i8 %spec.select.i, i8 0 ; 3 uses
  %12 = trunc i8 %i.dq to i1
  br i1 %12, label %bb.w, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit

bb.w:                                             ; preds = %bb.v
  %i.du = and i8 %i.dp, 8
  %.not238 = icmp eq i8 %i.du, 0
  br i1 %.not238, label %bb.ab, label %.thread187

.thread187:                                       ; preds = %bb.u, %bb.w
  %.0.i183190 = phi i8 [ %i.dr, %bb.w ], [ 3, %bb.u ]
  %i.dv = phi i1 [ %i.ds, %bb.w ], [ false, %bb.u ]
  %i.dw = phi i8 [ %i.dt, %bb.w ], [ 0, %bb.u ]   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bh, i64 87
  %i.dy = load i16, ptr %i.dx, align 1, !tbaa !11
  %i.dz = and i16 %i.dy, 7
  %.not.i131 = icmp eq i16 %i.dz, 0
  br i1 %.not.i131, label %bb.x, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.x:                                             ; preds = %.thread187
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bh, i64 91
  %i.eb = load i16, ptr %i.ea, align 1, !tbaa !11
  %i.ec = and i16 %i.eb, 7
  %.not1.i = icmp eq i16 %i.ec, 0
  br i1 %.not1.i, label %bb.y, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.ee = load i16, ptr %i.ed, align 1, !tbaa !11
  %i.ef = and i16 %i.ee, 7
  %.not2.i = icmp eq i16 %i.ef, 0
  br i1 %.not2.i, label %bb.z, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bh, i64 99
  %i.eh = load i16, ptr %i.eg, align 1, !tbaa !11
  %i.ei = and i16 %i.eh, 7
  %.not3.i = icmp eq i16 %i.ei, 0
  br i1 %.not3.i, label %bb.aa, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bh, i64 95
  %i.ek = load i16, ptr %i.ej, align 1, !tbaa !11
  %i.el = and i16 %i.ek, 7
  %.not4.i = icmp eq i16 %i.el, 0
  br i1 %.not4.i, label %.split, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

.split:                                           ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %i.bh, i64 97
  %i.en = load i16, ptr %i.em, align 1, !tbaa !11
  %.fr241 = freeze i16 %i.en
  %i.eo = and i16 %.fr241, 7
  %.not242 = icmp eq i16 %i.eo, 0
  %spec.select = select i1 %.not242, ptr %1, ptr %0
  br label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.ab:                                            ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bh, i64 89
  %i.eq = load i16, ptr %i.ep, align 1, !tbaa !11
  %i.er = and i16 %i.eq, 7
  %.not.i132 = icmp eq i16 %i.er, 0
  br i1 %.not.i132, label %bb.ac, label %.thread234

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %i.bh, i64 93
  %i.et = load i16, ptr %i.es, align 1, !tbaa !11
  %i.eu = and i16 %i.et, 7
  %.not1.i133 = icmp eq i16 %i.eu, 0
  br i1 %.not1.i133, label %bb.ad, label %.thread234

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.ew = load i16, ptr %i.ev, align 1, !tbaa !11
  %i.ex = and i16 %i.ew, 7
  %.not2.i134 = icmp eq i16 %i.ex, 0
  br i1 %.not2.i134, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit, label %.thread234

_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit: ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bh, i64 101
  %i.ez = load i16, ptr %i.ey, align 1, !tbaa !11
  %.fr239 = freeze i16 %i.ez
  %i.fa = and i16 %.fr239, 7
  %.not240 = icmp eq i16 %i.fa, 0
  br i1 %.not240, label %.thread199, label %.thread234

.thread234:                                       ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit, %bb.ad, %bb.ac, %bb.ab
  br label %.thread199

_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread: ; preds = %.split, %bb.aa, %bb.z, %bb.y, %bb.x, %.thread187
  %i.fb = phi ptr [ %spec.select, %.split ], [ %0, %bb.z ], [ %0, %bb.aa ], [ %0, %bb.y ], [ %0, %.thread187 ], [ %0, %bb.x ]
  %i.fc = icmp eq i8 %.0.i183190, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 592 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bh, i64 592
  %i.ff = zext i1 %i.dv to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ff ; 2 uses
  br i1 %i.fc, label %bb.af, label %bb.ae

.thread199:                                       ; preds = %.thread234, %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit
  %.ph203 = phi ptr [ %1, %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit ], [ %0, %.thread234 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bh, i64 620
  %i.fi = getelementptr inbounds nuw i8, ptr %.ph203, i64 596
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bh, i64 592
  %i.fk = zext i1 %i.ds to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fk
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

bb.ae:                                            ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bh, i64 608
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

bb.af:                                            ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bh, i64 616
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i: ; preds = %bb.af, %bb.ae, %.thread199
  %.in = phi ptr [ %i.fg, %bb.af ], [ %i.fl, %.thread199 ], [ %i.fg, %bb.ae ]
  %.in243 = phi ptr [ %i.fd, %bb.af ], [ %i.fi, %.thread199 ], [ %i.fd, %bb.ae ]
  %.in244 = phi ptr [ %i.fn, %bb.af ], [ %i.fh, %.thread199 ], [ %i.fm, %bb.ae ]
  %i.fo = phi i8 [ %i.dw, %bb.af ], [ %i.dt, %.thread199 ], [ %i.dw, %bb.ae ]
  %.0.i6.i = phi i32 [ 0, %bb.af ], [ 1, %.thread199 ], [ 2, %bb.ae ]
  %i.fp = load float, ptr %.in244, align 4, !tbaa !14
  %i.fq = load float, ptr %.in243, align 4, !tbaa !14
  %i.fr = load float, ptr %.in, align 4, !tbaa !14
  %i.fs = fsub float %i.fq, %i.fr
  %i.ft = fsub float %i.fs, %i.fp
  invoke void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %i.bh, float noundef %i.ft, i32 noundef %.0.i6.i)
          to label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit unwind label %bb.aj

bb.ag:                                            ; preds = %bb.k
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.ah:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.ai:                                            ; preds = %.noexc128, %bb.p, %.thread
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.aj:                                            ; preds = %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit: ; preds = %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i, %bb.v
  %i.fy = phi i8 [ %i.fo, %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i ], [ %i.dt, %bb.v ] ; 3 uses
  %i.fz = and i8 %i.fy, -3
  %i.ga = icmp eq i8 %i.fz, 1
  br i1 %i.ga, label %bb.ak, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit156

bb.ak:                                            ; preds = %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit
  %.not245 = icmp samesign ult i8 %i.fy, 2
  br i1 %.not245, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bh, i64 87
  %i.gc = load i16, ptr %i.gb, align 1, !tbaa !11
  %i.gd = and i16 %i.gc, 7
  %.not.i137 = icmp eq i16 %i.gd, 0
  br i1 %.not.i137, label %bb.am, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bh, i64 91
  %i.gf = load i16, ptr %i.ge, align 1, !tbaa !11
  %i.gg = and i16 %i.gf, 7
  %.not1.i138 = icmp eq i16 %i.gg, 0
  br i1 %.not1.i138, label %bb.an, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.an:                                            ; preds = %bb.am
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.gi = load i16, ptr %i.gh, align 1, !tbaa !11
  %i.gj = and i16 %i.gi, 7
  %.not2.i139 = icmp eq i16 %i.gj, 0
  br i1 %.not2.i139, label %bb.ao, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.ao:                                            ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bh, i64 99
  %i.gl = load i16, ptr %i.gk, align 1, !tbaa !11
  %i.gm = and i16 %i.gl, 7
  %.not3.i140 = icmp eq i16 %i.gm, 0
  br i1 %.not3.i140, label %bb.ap, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bh, i64 95
  %i.go = load i16, ptr %i.gn, align 1, !tbaa !11
  %i.gp = and i16 %i.go, 7
  %.not4.i141 = icmp eq i16 %i.gp, 0
  br i1 %.not4.i141, label %.split219, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

.split219:                                        ; preds = %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bh, i64 97
  %i.gr = load i16, ptr %i.gq, align 1, !tbaa !11
  %.fr248 = freeze i16 %i.gr
  %i.gs = and i16 %.fr248, 7
  %.not249 = icmp eq i16 %i.gs, 0
  br i1 %.not249, label %bb.at, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.aq:                                            ; preds = %bb.ak
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bh, i64 89
end_hunk_0
