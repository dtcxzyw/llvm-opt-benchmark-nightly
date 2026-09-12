Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/YGNodeStyle?download=true
inline.NumInlined: 1221
inline.NumDeleted: 476
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8facebook4yoga5StyleeqERKS1_:bb.a
  %.0810.i.i.i.add.i76 = add nuw nsw i64 %.0810.i.i.i.idx.i74, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i73, i64 2
  %.not.i.i.i.i77 = icmp ne i64 %.0810.i.i.i.add.i76, 6
  %or.cond.not.i78 = select i1 %i.ao, i1 %.not.i.i.i.i77, i1 false
  br i1 %or.cond.not.i78, label %.lr.ph.i.i.i.i72, label %_ZN8facebook4yoga5Style12lengthsEqualILm3EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit, !llvm.loop !64

_ZN8facebook4yoga5Style12lengthsEqualILm3EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit: ; preds = %.lr.ph.i.i.i.i72
  br i1 %i.ao, label %bb.l, label %bb.x

bb.l:                                             ; preds = %_ZN8facebook4yoga5Style12lengthsEqualILm3EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 91
  br label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79, %bb.l
  %.011.i.i.i.i80 = phi ptr [ %i.at, %.lr.ph.i.i.i.i79 ], [ %i.ar, %bb.l ] ; 2 uses
  %.0810.i.i.i.idx.i81 = phi i64 [ %.0810.i.i.i.add.i83, %.lr.ph.i.i.i.i79 ], [ 0, %bb.l ] ; 2 uses
  %.0810.i.i.i.ptr.i82 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0810.i.i.i.idx.i81
  %i.as = tail call noundef zeroext i1 @_ZN8facebook4yoga5Style16sizeLengthsEqualERKNS0_16StyleValueHandleERKNS0_14StyleValuePoolES4_S7_(ptr noundef nonnull align 1 dereferenceable(2) %.0810.i.i.i.ptr.i82, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 1 dereferenceable(2) %.011.i.i.i.i80, ptr noundef nonnull align 8 dereferenceable(40) %i.l) ; 2 uses
  %.0810.i.i.i.add.i83 = add nuw nsw i64 %.0810.i.i.i.idx.i81, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i80, i64 2
  %.not.i.i.i.i84 = icmp ne i64 %.0810.i.i.i.add.i83, 4
  %or.cond.not.i85 = select i1 %i.as, i1 %.not.i.i.i.i84, i1 false
  br i1 %or.cond.not.i85, label %.lr.ph.i.i.i.i79, label %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit, !llvm.loop !65

_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit: ; preds = %.lr.ph.i.i.i.i79
  br i1 %i.as, label %bb.m, label %bb.x

bb.m:                                             ; preds = %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 95
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 95
  br label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %.lr.ph.i.i.i.i86, %bb.m
  %.011.i.i.i.i87 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i86 ], [ %i.av, %bb.m ] ; 2 uses
  %.0810.i.i.i.idx.i88 = phi i64 [ %.0810.i.i.i.add.i90, %.lr.ph.i.i.i.i86 ], [ 0, %bb.m ] ; 2 uses
  %.0810.i.i.i.ptr.i89 = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0810.i.i.i.idx.i88
  %i.aw = tail call noundef zeroext i1 @_ZN8facebook4yoga5Style16sizeLengthsEqualERKNS0_16StyleValueHandleERKNS0_14StyleValuePoolES4_S7_(ptr noundef nonnull align 1 dereferenceable(2) %.0810.i.i.i.ptr.i89, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 1 dereferenceable(2) %.011.i.i.i.i87, ptr noundef nonnull align 8 dereferenceable(40) %i.l) ; 2 uses
  %.0810.i.i.i.add.i90 = add nuw nsw i64 %.0810.i.i.i.idx.i88, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i87, i64 2
  %.not.i.i.i.i91 = icmp ne i64 %.0810.i.i.i.add.i90, 4
  %or.cond.not.i92 = select i1 %i.aw, i1 %.not.i.i.i.i91, i1 false
  br i1 %or.cond.not.i92, label %.lr.ph.i.i.i.i86, label %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit93, !llvm.loop !65

_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit93: ; preds = %.lr.ph.i.i.i.i86
  br i1 %i.aw, label %bb.n, label %bb.x

bb.n:                                             ; preds = %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit93
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 99
  br label %.lr.ph.i.i.i.i94

.lr.ph.i.i.i.i94:                                 ; preds = %.lr.ph.i.i.i.i94, %bb.n
  %.011.i.i.i.i95 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i94 ], [ %i.az, %bb.n ] ; 2 uses
  %.0810.i.i.i.idx.i96 = phi i64 [ %.0810.i.i.i.add.i98, %.lr.ph.i.i.i.i94 ], [ 0, %bb.n ] ; 2 uses
  %.0810.i.i.i.ptr.i97 = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.0810.i.i.i.idx.i96
  %i.ba = tail call noundef zeroext i1 @_ZN8facebook4yoga5Style16sizeLengthsEqualERKNS0_16StyleValueHandleERKNS0_14StyleValuePoolES4_S7_(ptr noundef nonnull align 1 dereferenceable(2) %.0810.i.i.i.ptr.i97, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 1 dereferenceable(2) %.011.i.i.i.i95, ptr noundef nonnull align 8 dereferenceable(40) %i.l) ; 2 uses
  %.0810.i.i.i.add.i98 = add nuw nsw i64 %.0810.i.i.i.idx.i96, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i95, i64 2
  %.not.i.i.i.i99 = icmp ne i64 %.0810.i.i.i.add.i98, 4
  %or.cond.not.i100 = select i1 %i.ba, i1 %.not.i.i.i.i99, i1 false
  br i1 %or.cond.not.i100, label %.lr.ph.i.i.i.i94, label %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit101, !llvm.loop !65

_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit101: ; preds = %.lr.ph.i.i.i.i94
  br i1 %i.ba, label %bb.o, label %bb.x

bb.o:                                             ; preds = %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit101
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 103
  %i.be = tail call noundef zeroext i1 @_ZN8facebook4yoga5Style12numbersEqualERKNS0_16StyleValueHandleERKNS0_14StyleValuePoolES4_S7_(ptr noundef nonnull align 1 dereferenceable(2) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 1 dereferenceable(2) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.l)
  br i1 %i.be, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = tail call noundef zeroext i1 @_ZSteqIN8facebook4yoga13GridTrackSizeESaIS2_EEbRKSt6vectorIT_T0_ES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
  br i1 %i.bh, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = tail call noundef zeroext i1 @_ZSteqIN8facebook4yoga13GridTrackSizeESaIS2_EEbRKSt6vectorIT_T0_ES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj)
  br i1 %i.bk, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bn = tail call noundef zeroext i1 @_ZSteqIN8facebook4yoga13GridTrackSizeESaIS2_EEbRKSt6vectorIT_T0_ES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
  br i1 %i.bn, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bq = tail call noundef zeroext i1 @_ZSteqIN8facebook4yoga13GridTrackSizeESaIS2_EEbRKSt6vectorIT_T0_ES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
  br i1 %i.bq, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bt = load i8, ptr %i.br, align 8, !tbaa !13
  %i.bu = load i8, ptr %i.bs, align 8, !tbaa !13
  %i.bv = icmp eq i8 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp eq i32 %i.bx, %i.bz
  %i.cb = select i1 %i.bv, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ce = load i8, ptr %i.cc, align 8, !tbaa !13
  %i.cf = load i8, ptr %i.cd, align 8, !tbaa !13
  %i.cg = icmp eq i8 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp eq i32 %i.ci, %i.ck
  %i.cm = select i1 %i.cg, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cp = load i8, ptr %i.cn, align 8, !tbaa !13
  %i.cq = load i8, ptr %i.co, align 8, !tbaa !13
  %i.cr = icmp eq i8 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.ct, %i.cv
  %i.cx = select i1 %i.cr, i1 %i.cw, i1 false
  br i1 %i.cx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.da = load i8, ptr %i.cy, align 8, !tbaa !13
  %i.db = load i8, ptr %i.cz, align 8, !tbaa !13
  %i.dc = icmp eq i8 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp eq i32 %i.de, %i.dg
  %i.di = select i1 %i.dc, i1 %i.dh, i1 false
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit101, %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit93, %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit, %_ZN8facebook4yoga5Style12lengthsEqualILm3EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit, %_ZN8facebook4yoga5Style12lengthsEqualILm9EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit71, %_ZN8facebook4yoga5Style12lengthsEqualILm9EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit63, %_ZN8facebook4yoga5Style12lengthsEqualILm9EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit55, %_ZN8facebook4yoga5Style12lengthsEqualILm9EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.dj = phi i1 [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit101 ], [ false, %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit93 ], [ false, %_ZN8facebook4yoga5Style16sizeLengthsEqualILm2EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit ], [ false, %_ZN8facebook4yoga5Style12lengthsEqualILm3EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit ], [ false, %_ZN8facebook4yoga5Style12lengthsEqualILm9EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit71 ], [ false, %_ZN8facebook4yoga5Style12lengthsEqualILm9EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit63 ], [ false, %_ZN8facebook4yoga5Style12lengthsEqualILm9EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit55 ], [ false, %_ZN8facebook4yoga5Style12lengthsEqualILm9EEEbRKSt5arrayINS0_16StyleValueHandleEXT_EERKNS0_14StyleValuePoolES7_SA_.exit ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ %i.di, %bb.w ]
  ret i1 %i.dj
}

declare void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetDirection(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 3
  %.not.i = icmp eq i8 %i.e, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9directionEvEETnDaXadL_ZNS3_12setDirectionENS2_9DirectionEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %1, 3
  %i.g = and i32 %i.c, -4
  %i.h = or disjoint i32 %i.g, %i.f
  store i32 %i.h, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9directionEvEETnDaXadL_ZNS3_12setDirectionENS2_9DirectionEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9directionEvEETnDaXadL_ZNS3_12setDirectionENS2_9DirectionEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 4) i32 @YGNodeStyleGetDirection(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 3
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetFlexDirection(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %2 = lshr i32 %i.c, 2
  %3 = trunc i32 %2 to i8
  %i.d = and i8 %3, 3
  %.not.i = icmp eq i8 %i.d, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style13flexDirectionEvEETnDaXadL_ZNS3_16setFlexDirectionENS2_13FlexDirectionEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %1, 2
  %i.f = and i32 %i.e, 12
  %i.g = and i32 %i.c, -13
  %i.h = or disjoint i32 %i.g, %i.f
  store i32 %i.h, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style13flexDirectionEvEETnDaXadL_ZNS3_16setFlexDirectionENS2_13FlexDirectionEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style13flexDirectionEvEETnDaXadL_ZNS3_16setFlexDirectionENS2_13FlexDirectionEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 4) i32 @YGNodeStyleGetFlexDirection(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetJustifyContent(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %2 = lshr i32 %i.c, 4
  %i.d = trunc i32 %2 to i8
  %3 = and i8 %i.d, 15
  %.not.i = icmp eq i8 %3, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style14justifyContentEvEETnDaXadL_ZNS3_17setJustifyContentENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %1, 4
  %i.f = and i32 %i.e, 240
  %i.g = and i32 %i.c, -241
  %i.h = or disjoint i32 %i.g, %i.f
  store i32 %i.h, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style14justifyContentEvEETnDaXadL_ZNS3_17setJustifyContentENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style14justifyContentEvEETnDaXadL_ZNS3_17setJustifyContentENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetJustifyContent(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetJustifyItems(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 8
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12justifyItemsEvEETnDaXadL_ZNS3_15setJustifyItemsENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 8
  %i.h = and i32 %i.g, 3840
  %i.i = and i32 %i.c, -3841
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12justifyItemsEvEETnDaXadL_ZNS3_15setJustifyItemsENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12justifyItemsEvEETnDaXadL_ZNS3_15setJustifyItemsENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetJustifyItems(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetJustifySelf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 12
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style11justifySelfEvEETnDaXadL_ZNS3_14setJustifySelfENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 12
  %i.h = and i32 %i.g, 61440
  %i.i = and i32 %i.c, -61441
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style11justifySelfEvEETnDaXadL_ZNS3_14setJustifySelfENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style11justifySelfEvEETnDaXadL_ZNS3_14setJustifySelfENS2_7JustifyEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetJustifySelf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 12
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetAlignContent(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 16
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12alignContentEvEETnDaXadL_ZNS3_15setAlignContentENS2_5AlignEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 16
  %i.h = and i32 %i.g, 983040
  %i.i = and i32 %i.c, -983041
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12alignContentEvEETnDaXadL_ZNS3_15setAlignContentENS2_5AlignEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style12alignContentEvEETnDaXadL_ZNS3_15setAlignContentENS2_5AlignEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetAlignContent(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 16
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetAlignItems(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 20
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style10alignItemsEvEETnDaXadL_ZNS3_13setAlignItemsENS2_5AlignEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 20
  %i.h = and i32 %i.g, 15728640
  %i.i = and i32 %i.c, -15728641
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style10alignItemsEvEETnDaXadL_ZNS3_13setAlignItemsENS2_5AlignEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style10alignItemsEvEETnDaXadL_ZNS3_13setAlignItemsENS2_5AlignEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetAlignItems(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 20
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @YGNodeStyleSetAlignSelf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = lshr i32 %i.c, 24
  %i.e = trunc nuw i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  %.not.i = icmp eq i8 %i.f, %i.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9alignSelfEvEETnDaXadL_ZNS3_12setAlignSelfENS2_5AlignEEES4_EEvP6YGNodeT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 24
  %i.h = and i32 %i.g, 251658240
  %i.i = and i32 %i.c, -251658241
  %i.j = or disjoint i32 %i.i, %i.h
  store i32 %i.j, ptr %i.b, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9alignSelfEvEETnDaXadL_ZNS3_12setAlignSelfENS2_5AlignEEES4_EEvP6YGNodeT1_.exit

_ZN12_GLOBAL__N_111updateStyleITnDaXadL_ZNK8facebook4yoga5Style9alignSelfEvEETnDaXadL_ZNS3_12setAlignSelfENS2_5AlignEEES4_EEvP6YGNodeT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16) i32 @YGNodeStyleGetAlignSelf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 24
  %i.d = and i32 %i.c, 15
  ret i32 %i.d
}

end_hunk_0
