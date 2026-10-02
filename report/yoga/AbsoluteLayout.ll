Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/AbsoluteLayout?download=true
inline.NumInlined: 733
inline.NumDeleted: 181
begin_hunk_0_@_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff:bb.a
  %i.ap = zext nneg i8 %4 to i64
  %switch.gep121 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf, i64 %i.ap
  %switch.load122 = load i8, ptr %switch.gep121, align 1
  %switch.ext123 = zext i8 %switch.load122 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %switch.ext123
  %i.as = load float, ptr %i.ar, align 4, !tbaa !14
  %switch113 = icmp samesign ult i8 %4, 2
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.au = zext i1 %switch113 to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14
  %i.ax = fsub float %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.az = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ay, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.ba = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ay, i16 %i.az, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i90 = fcmp oge float %i.ba, 0.000000e+00
  %i.bb = select i1 %.sink.i.inv.i90, float %i.ba, float 0.000000e+00
  %i.bc = fsub float %i.ax, %i.bb
  %i.bd = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.be = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.bd, float noundef %i.c) ; 2 uses
  %.inv.i92 = fcmp ord float %i.be, 0.000000e+00
  %i.bf = select i1 %.inv.i92, float %i.be, float 0.000000e+00
  %i.bg = fsub float %i.bc, %i.bf
  %i.bh = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.bi = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.bh, float noundef %i.c) ; 2 uses
  %.inv.i94 = fcmp ord float %i.bi, 0.000000e+00
  %i.bj = select i1 %.inv.i94, float %i.bi, float 0.000000e+00
  %i.bk = fsub float %i.bg, %i.bj                 ; 2 uses
  switch i8 %4, label %default.unreachable108 [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97
    i8 1, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %switch.lookup120
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97

bb.m:                                             ; preds = %switch.lookup120
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97

default.unreachable108:                           ; preds = %switch.lookup120
  unreachable

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97: ; preds = %switch.lookup120, %bb.l, %bb.m
  %.0.i96 = phi i32 [ 2, %bb.m ], [ 1, %switch.lookup120 ], [ 0, %bb.l ]
  %.not74 = icmp eq i32 %.0.i.i, %.0.i96
  br i1 %.not74, label %switch.lookup124, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100

_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100: ; preds = %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97, %switch.lookup120
  %.0.i.i98 = phi i64 [ 1, %switch.lookup120 ], [ %i.au, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.0.i.i98
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !14
  %i.bn = load float, ptr %i.av, align 4, !tbaa !14
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = fsub float %i.bo, %i.bk
  br label %switch.lookup124

switch.lookup124:                                 ; preds = %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97
  %i.bq = phi float [ %i.bp, %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100 ], [ %i.bk, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97 ]
  %i.br = zext nneg i8 %4 to i64
  %switch.gep125 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.br
  %switch.load126 = load i8, ptr %switch.gep125, align 1
  %switch.ext127 = zext i8 %switch.load126 to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %2, float noundef %i.bq, i32 noundef %switch.ext127)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.n:                                             ; preds = %bb.i, %bb.h
  br i1 %5, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = and i8 %i.bu, 12
  %i.bw = icmp eq i8 %i.bv, 12
  br i1 %i.bw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.d, align 8
  %i.by = lshr i32 %i.bx, 12
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 15                        ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.q, label %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.bs, align 8
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = and i8 %i.ce, 15
  br label %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i

bb.r:                                             ; preds = %bb.o
  %i.cg = load i32, ptr %i.bs, align 8
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = lshr i8 %i.ch, 4
  br label %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i

_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.cj = phi i8 [ %i.ci, %bb.r ], [ %i.cf, %bb.q ], [ %i.ca, %bb.p ]
  switch i8 %i.cj, label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit [
    i8 8, label %bb.s
    i8 0, label %bb.s
    i8 7, label %bb.s
    i8 1, label %bb.s
    i8 4, label %bb.s
    i8 9, label %bb.t
    i8 3, label %bb.t
    i8 2, label %bb.u
    i8 5, label %bb.u
    i8 6, label %bb.u
  ]

bb.s:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL26setFlexStartLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.t:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.u:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

._crit_edge:                                      ; preds = %bb.n
  %i.ck = load i32, ptr %i.d, align 8
  %i.cl = lshr i32 %i.ck, 24
  %i.cm = trunc nuw i32 %i.cl to i8
  %i.cn = and i8 %i.cm, 15                        ; 2 uses
  %i.co = icmp eq i8 %i.cn, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cq = load i32, ptr %i.cp, align 8            ; 3 uses
  %i.cr = lshr i32 %i.cq, 20
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = and i8 %i.cs, 15
  %i.cu = select i1 %i.co, i8 %i.ct, i8 %i.cn
  %.fr.i = freeze i8 %i.cu                        ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = and i8 %i.cw, 12
  %i.cy = icmp eq i8 %i.cx, 0
  %i.cz = icmp eq i8 %.fr.i, 5
  %or.cond.i.i = and i1 %i.cz, %i.cy
  %i.da = and i32 %i.cq, 8
  %.not.not.i.i = icmp eq i32 %i.da, 0
  %or.cond.i = select i1 %or.cond.i.i, i1 %.not.not.i.i, i1 false
  %i.db = icmp slt i32 %i.cq, -1073741824         ; 2 uses
  br i1 %or.cond.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i: ; preds = %._crit_edge
  br i1 %i.db, label %bb.v, label %bb.w

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i: ; preds = %._crit_edge
  br i1 %i.db, label %.thread33.i, label %.thread30.i

bb.v:                                             ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i
  switch i8 %.fr.i, label %.thread33.i [
    i8 3, label %.thread30.i
    i8 2, label %.thread35.i
  ]

bb.w:                                             ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i
  switch i8 %.fr.i, label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit [
    i8 9, label %.thread30.i
    i8 0, label %.thread30.i
    i8 1, label %.thread30.i
    i8 5, label %.thread30.i
    i8 7, label %.thread30.i
    i8 6, label %.thread30.i
    i8 4, label %.thread30.i
    i8 8, label %.thread30.i
    i8 10, label %.thread33.i
    i8 3, label %.thread33.i
    i8 2, label %.thread35.i
  ]

.thread30.i:                                      ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.v, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i
  tail call fastcc void @_ZN8facebook4yogaL26setFlexStartLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

.thread33.i:                                      ; preds = %bb.w, %bb.w, %bb.v, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i
  tail call fastcc void @_ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

.thread35.i:                                      ; preds = %bb.w, %bb.v
  tail call fastcc void @_ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit: ; preds = %.thread35.i, %.thread33.i, %.thread30.i, %bb.w, %bb.u, %bb.t, %bb.s, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %switch.lookup124, %switch.lookup
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook4yoga25layoutAbsoluteDescendantsEPNS0_4NodeES2_NS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjjffff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(60) %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !101
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !101 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %11, align 8, !tbaa !36, !alias.scope !101
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !101
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !37, !noalias !101
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.i = load i8, ptr %i.h, align 4, !noalias !101
  %i.j = and i8 %i.i, 12
  %i.k = icmp eq i8 %i.j, 8
  br i1 %i.k, label %bb.c, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, !prof !38

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge unwind label %bb.d

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %11, align 8, !tbaa !36
  %.pre319 = load i64, ptr %i.e, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !39, !alias.scope !101 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #12
  %.not.i.i.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !96

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.d, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit176
  %common.resume.op = phi { ptr, i32 } [ %.pn110, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit176 ], [ %i.m, %bb.d ], [ %i.m, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !alias.scope !101
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge, %bb.e
  %i.p = phi i64 [ %.pre319, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ null, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i112291 = icmp ne ptr %i.q, null
  %i.s = icmp ne i64 %i.p, 0
  %i.t = select i1 %.not.i112291, i1 true, i1 %i.s
  br i1 %i.t, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

.lr.ph:                                           ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %i.u = phi ptr [ %i.l, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.r, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ] ; 5 uses
  %i.v = phi ptr [ %1, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.q, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.w = phi i64 [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.p, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.x = add i32 %5, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = icmp eq i8 %3, 2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ap = insertelement <2 x float> poison, float %7, i64 0
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
  %i.aw = phi i64 [ %i.w, %.lr.ph ], [ %i.lc, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.ax = phi ptr [ %i.v, %.lr.ph ], [ %i.ld, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf:bb.a
  %.not = icmp eq i8 %i.t, 12
  br i1 %.not, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43, label %switch.lookup72

switch.lookup72:                                  ; preds = %bb.e
  %i.u = zext nneg i8 %3 to i64
  %switch.gep73 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.9, i64 %i.u
  %switch.load74 = load i16, ptr %switch.gep73, align 2
  %switch.ext75 = zext i16 %switch.load74 to i64
  %i.v = zext nneg i8 %3 to i64
  %switch.gep76 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.10, i64 %i.v
  %switch.load77 = load i8, ptr %switch.gep76, align 1
  %switch.ext78 = zext i8 %switch.load77 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext75
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.pn70 = load float, ptr %i.w, align 4, !tbaa !14
  %i.y = fsub float %i.n, %.pn70
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %switch.ext78
  %i.aa = load float, ptr %i.z, align 4, !tbaa !14
  %i.ab = fsub float %i.y, %i.aa
  br label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43: ; preds = %switch.lookup72, %bb.e, %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit
  %.034 = phi float [ %i.n, %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit ], [ %i.ab, %switch.lookup72 ], [ %i.n, %bb.e ]
  %switch = icmp samesign ult i8 %3, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.ad = zext i1 %switch to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.ah = icmp ult i8 %3, 2                       ; 2 uses
  %.0.i.i.i = zext i1 %i.ah to i32
  %i.ai = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i32 noundef %.0.i.i.i, i8 noundef zeroext 1)
  %i.aj = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i16 %i.ai, float noundef %4) ; 2 uses
  %.inv.i.i = fcmp ord float %i.aj, 0.000000e+00
  %i.ak = select i1 %.inv.i.i, float %i.aj, float 0.000000e+00
  %.0.i.i4.i = select i1 %i.ah, i32 3, i32 2
  %i.al = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i32 noundef %.0.i.i4.i, i8 noundef zeroext 1)
  %i.am = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i16 %i.al, float noundef %4) ; 2 uses
  %.inv.i5.i = fcmp ord float %i.am, 0.000000e+00
  %i.an = select i1 %.inv.i5.i, float %i.am, float 0.000000e+00
  %i.ao = fadd float %i.ak, %i.an
  %i.ap = fadd float %i.af, %i.ao
  %i.aq = fsub float %.034, %i.ap
  %i.ar = fmul float %i.aq, 5.000000e-01
  switch i8 %3, label %default.unreachable66 [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread
    i8 1, label %bb.f
    i8 2, label %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit
    i8 3, label %bb.g
  ]

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit

default.unreachable66:                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43
  unreachable

bb.f:                                             ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit

bb.g:                                             ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit

_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread, %bb.f, %bb.g
  %.pn71.in = phi ptr [ %i.au, %bb.g ], [ %i.at, %bb.f ], [ %i.as, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread ], [ %i.f, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43 ]
  %.0.i.i = phi i32 [ 2, %bb.g ], [ 3, %bb.f ], [ 1, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread ], [ 0, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43 ]
  %.pn71 = load float, ptr %.pn71.in, align 4, !tbaa !14
  %i.av = fadd float %i.ar, %.pn71
  %i.aw = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i32 noundef %.0.i.i, i8 noundef zeroext %2)
  %i.ax = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i16 %i.aw, float noundef %4) ; 2 uses
  %.inv.i = fcmp ord float %i.ax, 0.000000e+00
  %i.ay = select i1 %.inv.i, float %i.ax, float 0.000000e+00
  %i.az = fadd float %i.av, %i.ay                 ; 3 uses
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.bb = tail call noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i32 noundef 2)
  br i1 %i.bb, label %switch.lookup83, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = and i8 %i.bd, 12
  %.not35 = icmp eq i8 %i.be, 12
  br i1 %.not35, label %switch.lookup83, label %switch.lookup79

switch.lookup79:                                  ; preds = %bb.h
  %i.bf = zext nneg i8 %3 to i64
  %switch.gep80 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.bf
  %switch.load81 = load i8, ptr %switch.gep80, align 1
  %switch.ext82 = zext i8 %switch.load81 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %switch.ext82
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !14
  %i.bj = fadd float %i.az, %i.bi
  br label %switch.lookup83

switch.lookup83:                                  ; preds = %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit, %bb.h, %switch.lookup79
  %.0 = phi float [ %i.az, %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit ], [ %i.bj, %switch.lookup79 ], [ %i.az, %bb.h ]
  %i.bk = zext nneg i8 %3 to i64
  %switch.gep84 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.bk
  %switch.load85 = load i8, ptr %switch.gep84, align 1
  %switch.ext86 = zext i8 %switch.load85 to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %1, float noundef %.0, i32 noundef %switch.ext86)
  ret void
}

declare noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !88   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.c, %i.k
  br i1 %.not.i.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef %i.k) #10
  unreachable

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.0.peel = load ptr, ptr %i.l, align 8, !tbaa !37 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.peel, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %i.q = icmp eq i8 %i.p, 8
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.peel, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.peel, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !27
  %.not.peel = icmp eq ptr %i.t, %i.u
  br i1 %.not.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.peel, align 8
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !39
  store ptr %i.x, ptr %i.v, align 8, !tbaa !39
  store ptr %i.v, ptr %i.m, align 8, !tbaa !39
  store ptr %.0.peel, ptr %0, align 8, !tbaa !36
  store i64 0, ptr %i.b, align 8, !tbaa !88
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not.i.i.i6.not.peel = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i6.not.peel, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7

_ZNK8facebook4yoga4Node8getChildEm.exit7:         ; preds = %bb.d, %bb.f
  %i.aa = phi ptr [ %.0, %bb.f ], [ %.0.peel, %bb.d ]
  %.0.in = phi ptr [ %i.an, %bb.f ], [ %i.z, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !37  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 12
  %i.ae = icmp eq i8 %i.ad, 8
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 696 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 704 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !27
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.aa, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !39
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !39
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !39
  store ptr %.0, ptr %0, align 8, !tbaa !36
  store i64 0, ptr %i.b, align 8, !tbaa !88
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i6.not, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7, !llvm.loop !102

.loopexit12:                                      ; preds = %bb.f, %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 0) #10
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.c
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %_ZNK8facebook4yoga4Node8getChildEm.exit7, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not11 = icmp ult i64 %i.c, %i.l
  br i1 %.not11, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !90

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

tailrecurse:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92
  store ptr %i.q, ptr %0, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  store i64 %i.s, ptr %i.a, align 8, !tbaa !88
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !39
  store ptr %i.t, ptr %i.m, align 8, !tbaa !39
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #12
  %i.u = load i64, ptr %i.a, align 8, !tbaa !88
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !27  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not = icmp ult i64 %i.v, %i.ae
  br i1 %.not, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %tailrecurse, %bb.a
  %.lcssa6 = phi i64 [ %i.c, %bb.a ], [ %i.v, %tailrecurse ] ; 2 uses
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.aa, %tailrecurse ]
  store i64 %.lcssa6, ptr %i.a, align 8, !tbaa !88
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.lcssa6
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 12
  %i.ak = icmp eq i8 %i.aj, 8
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !38

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #2

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { "function-inline-cost-multiplier"="2" }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!"_ZTSN8facebook4yoga16StyleValueHandleE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTSN8facebook4yoga16SmallValueBufferILm4EE8OverflowE", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 int", !15, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!19, !18, i64 8}
!21 = !{!19, !18, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"any p2 pointer", !15, i64 0}
!24 = !{!"p2 _ZTSN8facebook4yoga4NodeE", !23, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!25, !24, i64 0}
!28 = !{!"p1 _ZTSN8facebook4yoga4NodeE", !15, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !15, i64 0}
!31 = !{!"_ZTSSt19_Fwd_list_node_base", !30, i64 0}
!32 = !{!"_ZTSNSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE14_Fwd_list_implE", !31, i64 0}
!33 = !{!"_ZTSSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !32, i64 0}
!34 = !{!"_ZTSSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !33, i64 0}
!35 = !{!"_ZTSN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorE", !28, i64 0, !29, i64 8, !34, i64 16}
!36 = !{!35, !28, i64 0}
!37 = !{!28, !28, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!31, !30, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"bool", !5, i64 0}
!42 = !{!"_ZTSN8facebook4yoga8NodeTypeE", !5, i64 0}
!43 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !13, i64 0}
!44 = !{!"_ZTSN8facebook4yoga9DirectionE", !5, i64 0}
!45 = !{!"_ZTSN8facebook4yoga13FlexDirectionE", !5, i64 0}
!46 = !{!"_ZTSN8facebook4yoga7JustifyE", !5, i64 0}
!47 = !{!"_ZTSN8facebook4yoga5AlignE", !5, i64 0}
!48 = !{!"_ZTSN8facebook4yoga12PositionTypeE", !5, i64 0}
!49 = !{!"_ZTSN8facebook4yoga4WrapE", !5, i64 0}
!50 = !{!"_ZTSN8facebook4yoga8OverflowE", !5, i64 0}
!51 = !{!"_ZTSN8facebook4yoga7DisplayE", !5, i64 0}
!52 = !{!"_ZTSN8facebook4yoga9BoxSizingE", !5, i64 0}
!53 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm9EE", !5, i64 0}
!54 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm3EE", !5, i64 0}
!55 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm2EE", !5, i64 0}
!56 = !{!"p1 _ZTSN8facebook4yoga13GridTrackSizeE", !15, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EE", !59, i64 0}
!61 = !{!"_ZTSN8facebook4yoga12GridLineTypeE", !5, i64 0}
!62 = !{!"_ZTSN8facebook4yoga8GridLineE", !61, i64 0, !6, i64 4}
!63 = !{!"_ZTSSt5arrayIjLm4EE", !5, i64 0}
!64 = !{!"_ZTSSt12_Base_bitsetILm1EE", !29, i64 0}
!65 = !{!"_ZTSSt6bitsetILm4EE", !64, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook4yoga16SmallValueBufferILm4EE8OverflowELb0EE", !16, i64 0}
!67 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !66, i64 0}
!68 = !{!"_ZTSSt5tupleIJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !67, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !68, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_ELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !70, i64 0}
!72 = !{!"_ZTSN8facebook4yoga16SmallValueBufferILm4EEE", !9, i64 0, !63, i64 4, !65, i64 24, !71, i64 32}
!73 = !{!"_ZTSN8facebook4yoga14StyleValuePoolE", !72, i64 0}
!74 = !{!"_ZTSN8facebook4yoga5StyleE", !44, i64 0, !45, i64 0, !46, i64 0, !46, i64 1, !46, i64 1, !47, i64 2, !47, i64 2, !47, i64 3, !48, i64 3, !49, i64 3, !50, i64 4, !51, i64 4, !52, i64 4, !10, i64 5, !10, i64 7, !10, i64 9, !10, i64 11, !53, i64 13, !53, i64 31, !53, i64 49, !53, i64 67, !54, i64 85, !55, i64 91, !55, i64 95, !55, i64 99, !10, i64 103, !60, i64 112, !60, i64 136, !60, i64 160, !60, i64 184, !62, i64 208, !62, i64 216, !62, i64 224, !62, i64 232, !73, i64 240}
!75 = !{!"_ZTSSt5arrayIN8facebook4yoga17CachedMeasurementELm8EE", !5, i64 0}
!76 = !{!"_ZTSN8facebook4yoga10SizingModeE", !5, i64 0}
!77 = !{!"_ZTSN8facebook4yoga17CachedMeasurementE", !13, i64 0, !13, i64 4, !76, i64 8, !76, i64 12, !13, i64 16, !13, i64 20}
!78 = !{!"_ZTSSt5arrayIfLm2EE", !5, i64 0}
!79 = !{!"_ZTSSt5arrayIfLm4EE", !5, i64 0}
!80 = !{!"_ZTSN8facebook4yoga13LayoutResultsE", !6, i64 0, !43, i64 4, !43, i64 8, !6, i64 12, !6, i64 16, !44, i64 20, !6, i64 24, !75, i64 28, !77, i64 220, !44, i64 244, !41, i64 244, !78, i64 248, !78, i64 256, !78, i64 264, !79, i64 272, !79, i64 288, !79, i64 304, !79, i64 320}
!81 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE12_Vector_implE", !25, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIPN8facebook4yoga4NodeESaIS3_EE", !82, i64 0}
!84 = !{!"p1 _ZTSN8facebook4yoga6ConfigE", !15, i64 0}
!85 = !{!"_ZTSSt5arrayIN8facebook4yoga15StyleSizeLengthELm2EE", !5, i64 0}
!86 = !{!"_ZTSN8facebook4yoga4NodeE", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !42, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !43, i64 32, !43, i64 36, !15, i64 40, !15, i64 48, !74, i64 56, !80, i64 336, !29, i64 672, !29, i64 680, !28, i64 688, !83, i64 696, !84, i64 720, !85, i64 728}
!87 = !{!86, !84, i64 720}
!88 = !{!35, !29, i64 8}
!89 = !{!33, !30, i64 0}
!90 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!91 = !{!"_ZTSSt4pairIPKN8facebook4yoga4NodeEmE", !28, i64 0, !29, i64 8}
!92 = !{!91, !28, i64 0}
!93 = !{!91, !29, i64 8}
!96 = distinct !{!96, !40}
!98 = !{ptr @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv}
!99 = distinct !{!99, i1 false, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!100 = distinct !{!100, !99, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!101 = !{!100}
!102 = distinct !{!102, !40, !103}
!103 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
