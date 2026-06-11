inline.NumInlined: 281
inline.NumDeleted: 114
begin_hunk_0_@_ZN6icu_785units12_GLOBAL__N_126getPreferenceMetadataIndexEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEENS_11StringPieceES7_S7_R10UErrorCode:bb.a
  %i.bj = call noundef i32 @_ZNK6icu_7810CharString11lastIndexOfEc(ptr noundef nonnull align 8 dereferenceable(60) %i.k, i8 noundef signext 45) #15 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.backedge
  %i.bl = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60) %i.k, i32 noundef %i.bj) #15 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %.backedge
  %i.bm = load ptr, ptr %i.k, align 8
  %i.bn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(8) @.str.26) #16
  %.not39 = icmp eq i32 %i.bn, 0
  br i1 %.not39, label %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60) %i.k, i32 noundef 0) #15
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull @.str.26) #15
  %i.bp = load ptr, ptr %8, align 8
  %i.bq = load i32, ptr %i.bh, align 8
  %i.br = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.bo, ptr noundef %i.bp, i32 noundef %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %6) #15 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.val41 = load i32, ptr %6, align 4
  %i.bs = icmp slt i32 %.val41, 1
  br i1 %i.bs, label %bb.k, label %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57

bb.k:                                             ; preds = %bb.j
  %i.bt = load i32, ptr %0, align 8               ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i44, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.k, %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit52.loopexit
  br label %.backedge, !llvm.loop !31

.lr.ph.i44:                                       ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bi, align 8
  %i.bw = load ptr, ptr %i.f, align 8
  %i.bx = load ptr, ptr %i.k, align 8
  %i.by = load ptr, ptr %i.p, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47, %.lr.ph.i44
  %i.bz = phi i8 [ 0, %.lr.ph.i44 ], [ %i.cr, %_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47 ] ; 2 uses
  %.02212.i45 = phi i32 [ 0, %.lr.ph.i44 ], [ %spec.select10.i50, %_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47 ] ; 2 uses
  %.02511.i46 = phi i32 [ %i.bt, %.lr.ph.i44 ], [ %spec.select.i49, %_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47 ] ; 2 uses
  %i.ca = add nuw nsw i32 %.02511.i46, %.02212.i45
  %i.cb = lshr i32 %i.ca, 1                       ; 4 uses
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cg, ptr noundef nonnull dereferenceable(1) %i.bw) #16 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(1) %i.bx) #16 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.n, label %_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 136
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.by) #16 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57, label %_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47

_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47: ; preds = %bb.n, %bb.m, %bb.l
  %i.cr = phi i8 [ 1, %bb.n ], [ %i.bz, %bb.l ], [ %i.bz, %bb.m ] ; 2 uses
  %.114.i.i48 = phi i32 [ %i.cp, %bb.n ], [ %i.ch, %bb.l ], [ %i.cl, %bb.m ]
  %i.cs = icmp slt i32 %.114.i.i48, 0             ; 2 uses
  %i.ct = add nuw nsw i32 %i.cb, 1
  %spec.select.i49 = select i1 %i.cs, i32 %.02511.i46, i32 %i.cb ; 2 uses
  %spec.select10.i50 = select i1 %i.cs, i32 %i.ct, i32 %.02212.i45 ; 2 uses
  %i.cu = icmp slt i32 %spec.select10.i50, %spec.select.i49
  br i1 %i.cu, label %bb.l, label %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit52.loopexit, !llvm.loop !30

_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit52.loopexit: ; preds = %_ZNK6icu_785units22UnitPreferenceMetadata9compareToERKS1_PbS4_S4_.exit.i47
  %i.cv = trunc nuw i8 %i.cr to i1
  br i1 %i.cv, label %._crit_edge.thread, label %.backedge.backedge

._crit_edge.thread:                               ; preds = %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit52.loopexit, %.preheader
  store i8 0, ptr %i.c, align 1
  %i.cw = load ptr, ptr %i.p, align 8
  %i.cx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(4) @.str.16) #16
  %.not38 = icmp eq i32 %i.cx, 0
  br i1 %.not38, label %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57.sink.split, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread
  %i.cy = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60) %i.p, i32 noundef 0) #15
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull @.str.16) #15
  %i.cz = load ptr, ptr %9, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.cy, ptr noundef %i.cz, i32 noundef %i.db, ptr noundef nonnull align 4 dereferenceable(4) %6) #15 ; 0 uses
  %.val = load i32, ptr %6, align 4
  %i.dd = call fastcc noundef i32 @_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 %.val)
  %.pre = load i8, ptr %i.c, align 1, !range !32
  %i.de = trunc nuw i8 %.pre to i1
  br i1 %i.de, label %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57, label %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57.sink.split

_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57.sink.split: ; preds = %bb.h, %bb.o, %._crit_edge.thread, %.thread, %bb.c
  %.sink = phi i32 [ 1, %.thread ], [ 2, %bb.o ], [ 1, %bb.c ], [ 2, %._crit_edge.thread ], [ 2, %bb.h ]
  store i32 %.sink, ptr %6, align 4
  br label %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57

_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57: ; preds = %bb.f, %bb.j, %bb.n, %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57.sink.split, %bb.b, %bb.o
  %.2 = phi i32 [ -1, %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57.sink.split ], [ -1, %bb.b ], [ %i.dd, %bb.o ], [ %i.cb, %bb.n ], [ -1, %bb.j ], [ %i.ak, %bb.f ]
  %i.df = load i8, ptr %i.s, align 4
  %.not.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57
  %i.dg = load ptr, ptr %i.p, align 8
  call void @uprv_free_78(ptr noundef %i.dg) #15
  br label %_ZN6icu_7810CharStringD2Ev.exit.i

_ZN6icu_7810CharStringD2Ev.exit.i:                ; preds = %bb.p, %_ZN6icu_785units12_GLOBAL__N_112binarySearchEPKNS_16MaybeStackVectorINS0_22UnitPreferenceMetadataELi8EEERKS3_PbS9_S9_R10UErrorCode.exit.thread57
  %i.dh = load i8, ptr %i.n, align 4
  %.not.i.i.i1.i = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i1.i, label %_ZN6icu_7810CharStringD2Ev.exit2.i, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i
  %i.di = load ptr, ptr %i.k, align 8
  call void @uprv_free_78(ptr noundef %i.di) #15
  br label %_ZN6icu_7810CharStringD2Ev.exit2.i

_ZN6icu_7810CharStringD2Ev.exit2.i:               ; preds = %bb.q, %_ZN6icu_7810CharStringD2Ev.exit.i
  %i.dj = load i8, ptr %i.i, align 4
  %.not.i.i.i3.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i3.i, label %_ZN6icu_785units22UnitPreferenceMetadataD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit2.i
  %i.dk = load ptr, ptr %i.f, align 8
  call void @uprv_free_78(ptr noundef %i.dk) #15
  br label %_ZN6icu_785units22UnitPreferenceMetadataD2Ev.exit

_ZN6icu_785units22UnitPreferenceMetadataD2Ev.exit: ; preds = %_ZN6icu_7810CharStringD2Ev.exit2.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZN6icu_785units22UnitPreferenceMetadataD2Ev.exit
  %.3 = phi i32 [ %.2, %_ZN6icu_785units22UnitPreferenceMetadataD2Ev.exit ], [ -1, %bb.a ]
  ret i32 %.3
}

declare void @_ZN6icu_7815MeasureUnitImpl13forIdentifierENS_11StringPieceER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::MeasureUnitImpl") align 8, ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6icu_785units12_GLOBAL__N_122ConversionRateDataSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_785units12_GLOBAL__N_122ConversionRateDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::CharString", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::ResourceTable", align 8 ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %12 = alloca %"class.icu_78::ResourceTable", align 8 ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %14 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %15 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %16 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %17 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %18 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %19 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %20 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %21 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %22 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %23 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %i.h = load i32, ptr %4, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.1) #16
  %.not53 = icmp eq i32 %i.j, 0
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 4
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.k = load ptr, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.n = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %11, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %.not5473 = icmp eq i8 %i.n, 0
  br i1 %.not5473, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %23, i64 13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.f

bb.e:                                             ; preds = %bb.ap
  %i.ac = add nuw nsw i32 %.074, 1                ; 2 uses
  %i.ad = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %11, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %.not54 = icmp eq i8 %i.ad, 0
  br i1 %.not54, label %._crit_edge77, label %bb.f, !llvm.loop !33

bb.f:                                             ; preds = %.lr.ph76, %bb.e
  %.074 = phi i32 [ 0, %.lr.ph76 ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.ae = load ptr, ptr %2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %13, align 8, !alias.scope !34
  store i16 2, ptr %i.o, align 8, !alias.scope !34
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !alias.scope !37
  store i16 2, ptr %i.p, align 8, !alias.scope !37
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %15, align 8, !alias.scope !40
  store i16 2, ptr %i.q, align 8, !alias.scope !40
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %16, align 8, !alias.scope !43
  store i16 2, ptr %i.r, align 8, !alias.scope !43
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %17, align 8, !alias.scope !46
  store i16 2, ptr %i.s, align 8, !alias.scope !46
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %17) #15
  %i.ah = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %12, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %.not5571 = icmp eq i8 %i.ah, 0
  br i1 %.not5571, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %bb.f
  %i.ai = load i32, ptr %4, align 4
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %bb.ap

.lr.ph:                                           ; preds = %bb.f, %bb.p
  %.05172 = phi i32 [ %i.ce, %bb.p ], [ 0, %bb.f ]
  %i.ak = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.al = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(7) @.str.17) #16
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15, !noalias !49
  store i32 0, ptr %i.e, align 4, !noalias !49
  %i.an = load ptr, ptr %2, align 8, !noalias !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !49
  %i.aq = call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %4) #15, !noalias !49, !inline_history !52
  store ptr %i.aq, ptr %10, align 8, !noalias !49
  %i.ar = load i32, ptr %i.e, align 4, !noalias !49
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %18, i8 noundef signext 1, ptr noundef nonnull %10, i32 noundef %i.ar) #15
  %i.as = load ptr, ptr %10, align 8, !noalias !49
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.as) #15, !srcloc !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15, !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.at = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %18) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph
  %i.au = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(7) @.str.18) #16
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15, !noalias !54
  store i32 0, ptr %i.d, align 4, !noalias !54
  %i.aw = load ptr, ptr %2, align 8, !noalias !54
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !54
  %i.az = call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %4) #15, !noalias !54, !inline_history !52
  store ptr %i.az, ptr %9, align 8, !noalias !54
  %i.ba = load i32, ptr %i.d, align 4, !noalias !54
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %19, i8 noundef signext 1, ptr noundef nonnull %9, i32 noundef %i.ba) #15
  %i.bb = load ptr, ptr %9, align 8, !noalias !54
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bb) #15, !srcloc !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15, !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %19) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.bd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(7) @.str.19) #16
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !57
  store i32 0, ptr %i.c, align 4, !noalias !57
  %i.bf = load ptr, ptr %2, align 8, !noalias !57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !57
  %i.bi = call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %4) #15, !noalias !57, !inline_history !52
  store ptr %i.bi, ptr %8, align 8, !noalias !57
  %i.bj = load i32, ptr %i.c, align 4, !noalias !57
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %20, i8 noundef signext 1, ptr noundef nonnull %8, i32 noundef %i.bj) #15
  %i.bk = load ptr, ptr %8, align 8, !noalias !57
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bk) #15, !srcloc !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %20) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(8) @.str.20) #16
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !60
  store i32 0, ptr %i.b, align 4, !noalias !60
  %i.bo = load ptr, ptr %2, align 8, !noalias !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !60
  %i.br = call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %4) #15, !noalias !60, !inline_history !52
  store ptr %i.br, ptr %7, align 8, !noalias !60
  %i.bs = load i32, ptr %i.b, align 4, !noalias !60
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %21, i8 noundef signext 1, ptr noundef nonnull %7, i32 noundef %i.bs) #15
  %i.bt = load ptr, ptr %7, align 8, !noalias !60
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bt) #15, !srcloc !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %21) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(8) @.str.21) #16
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !63
  store i32 0, ptr %i.a, align 4, !noalias !63
  %i.bx = load ptr, ptr %2, align 8, !noalias !63
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !63
  %i.ca = call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4) #15, !noalias !63, !inline_history !52
  store ptr %i.ca, ptr %6, align 8, !noalias !63
  %i.cb = load i32, ptr %i.a, align 4, !noalias !63
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %22, i8 noundef signext 1, ptr noundef nonnull %6, i32 noundef %i.cb) #15
  %i.cc = load ptr, ptr %6, align 8, !noalias !63
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.cc) #15, !srcloc !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull align 8 dereferenceable(64) %22) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.k, %bb.n, %bb.o, %bb.m, %bb.i
  %i.ce = add nuw nsw i32 %.05172, 1              ; 2 uses
  %i.cf = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %12, i32 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %.not55 = icmp eq i8 %i.cf, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph, !llvm.loop !66

bb.q:                                             ; preds = %._crit_edge
  %i.cg = load i16, ptr %i.o, align 8
  %i.ch = and i16 %i.cg, 1
  %.not57 = icmp eq i16 %i.ch, 0
  br i1 %.not57, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ci = load i16, ptr %i.p, align 8
  %i.cj = and i16 %i.ci, 1
  %.not58 = icmp eq i16 %i.cj, 0
  br i1 %.not58, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load i16, ptr %i.r, align 8
  %i.cl = and i16 %i.ck, 1
  %.not59 = icmp eq i16 %i.cl, 0
  br i1 %.not59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  store i32 2, ptr %4, align 4
  br label %bb.ap

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cm = load ptr, ptr %i.t, align 8
  %i.cn = call noundef ptr @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EE6createIJEEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) ; 7 uses
  %.not60.not = icmp eq ptr %i.cn, null
  br i1 %.not60.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 7, ptr %4, align 4
  br label %bb.ap

bb.w:                                             ; preds = %bb.u
  %i.co = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.co) #15 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 6 uses
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.cq, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.cs) #15
  store ptr null, ptr %i.cq, align 8
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm

bb.y:                                             ; preds = %bb.w
  %i.ct = add i64 %i.cp, 1
  %i.cu = load ptr, ptr %i.cq, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.cu) #15
  %i.cv = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.ct) #15 ; 3 uses
  store ptr %i.cv, ptr %i.cq, align 8
  %.not.i = icmp eq ptr %i.cv, null
  br i1 %.not.i, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm: ; preds = %bb.y, %bb.x
  %i.cw = load ptr, ptr %i.f, align 8
  %i.cx = load i8, ptr %i.cw, align 1
  %.not = icmp eq i8 %i.cx, 0
  br i1 %.not, label %bb.aa, label %bb.z

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.co, i64 %i.cp, i1 false)
  %i.cy = load ptr, ptr %i.cq, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cp
  store i8 0, ptr %i.cz, align 1
  %.pre = load ptr, ptr %i.cq, align 8
  %i.da = icmp eq ptr %.pre, null
  %i.db = load ptr, ptr %i.f, align 8
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp ne i8 %i.dc, 0
  %.not61 = xor i1 %i.da, %i.dd
  br i1 %.not61, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store i32 7, ptr %4, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit.thr_comm, %bb.z, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  call void @_ZN6icu_7818copyInvariantCharsERKNS_13UnicodeStringERNS_11FixedStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
  %i.df = load i32, ptr %4, align 4
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = load i16, ptr %i.p, align 8
  %i.di = and i16 %i.dh, 1
  %.not63 = icmp eq i16 %i.di, 0
  br i1 %.not63, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  store ptr %i.u, ptr %23, align 8
  store i32 40, ptr %i.v, align 8
  store i8 0, ptr %i.w, align 4
  store i32 0, ptr %i.x, align 8
  store i8 0, ptr %i.u, align 1
  %i.dj = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %23, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(4) %4) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.y, ptr %5, align 8
  store i32 40, ptr %i.z, align 8
  store i8 0, ptr %i.aa, align 4
  store i32 0, ptr %i.ab, align 8
  store i8 0, ptr %i.y, align 1
  %i.dk = load i32, ptr %i.x, align 8             ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.ac
  %.pre80 = load ptr, ptr %23, align 8
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.af, %bb.ac
  %i.dm = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %23, ptr noundef nonnull align 8 dereferenceable(60) %5) #15 ; 0 uses
  %i.dn = load i8, ptr %i.aa, align 4
  %.not.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_785units12_GLOBAL__N_110trimSpacesERNS_10CharStringER10UErrorCode.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i
  %i.do = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.do) #15
  br label %_ZN6icu_785units12_GLOBAL__N_110trimSpacesERNS_10CharStringER10UErrorCode.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.af
  %24 = phi ptr [ %26, %bb.af ], [ %.pre80, %.lr.ph.i.preheader ] ; 2 uses
  %25 = phi i32 [ %i.dt, %bb.af ], [ %i.dk, %.lr.ph.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.af ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %24, i64 %indvars.iv.i
  %i.dq = load i8, ptr %i.dp, align 1             ; 2 uses
  %i.dr = icmp eq i8 %i.dq, 32
  br i1 %i.dr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i
  %i.ds = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.dq, ptr noundef nonnull align 4 dereferenceable(4) %4) #15 ; 0 uses
  %.pre.i = load i32, ptr %i.x, align 8
  %.pre79 = load ptr, ptr %23, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i
  %26 = phi ptr [ %24, %.lr.ph.i ], [ %.pre79, %bb.ae ]
  %i.dt = phi i32 [ %25, %.lr.ph.i ], [ %.pre.i, %bb.ae ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next.i, %i.du
  br i1 %i.dv, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !67

_ZN6icu_785units12_GLOBAL__N_110trimSpacesERNS_10CharStringER10UErrorCode.exit: ; preds = %._crit_edge.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.dw = load i32, ptr %4, align 4
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZN6icu_785units12_GLOBAL__N_110trimSpacesERNS_10CharStringER10UErrorCode.exit
  %i.dy = load ptr, ptr %23, align 8
  %i.dz = load i32, ptr %i.x, align 8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i64 %i.ea, ptr %i.dy) ; 0 uses
  %i.ed = load ptr, ptr %i.eb, align 8
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = load i32, ptr %i.x, align 8
  %i.eg = icmp ne i32 %i.ef, 0
  %.not65 = xor i1 %i.ee, %i.eg
  br i1 %.not65, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 7, ptr %4, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %_ZN6icu_785units12_GLOBAL__N_110trimSpacesERNS_10CharStringER10UErrorCode.exit
  %i.eh = load i8, ptr %i.w, align 4
  %.not.i.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load ptr, ptr %23, align 8
  call void @uprv_free_78(ptr noundef %i.ei) #15
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.ab, %bb.aa
  %i.ej = load i16, ptr %i.q, align 8
  %i.ek = and i16 %i.ej, 1
  %.not66 = icmp eq i16 %i.ek, 0
  br i1 %.not66, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  call void @_ZN6icu_7818copyInvariantCharsERKNS_13UnicodeStringERNS_11FixedStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.em = load i16, ptr %i.r, align 8
  %i.en = and i16 %i.em, 1
  %.not67 = icmp eq i16 %i.en, 0
  br i1 %.not67, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  call void @_ZN6icu_7818copyInvariantCharsERKNS_13UnicodeStringERNS_11FixedStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  call void @_ZN6icu_7818copyInvariantCharsERKNS_13UnicodeStringERNS_11FixedStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.v, %bb.ao, %._crit_edge, %bb.t
  %.1 = phi i1 [ false, %._crit_edge ], [ false, %bb.t ], [ true, %bb.ao ], [ false, %bb.v ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br i1 %.1, label %bb.e, label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.ap, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %._crit_edge77, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #7

declare noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare void @_ZN6icu_7818copyInvariantCharsERKNS_13UnicodeStringERNS_11FixedStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EE6createIJEEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %i.d = load i32, ptr %0, align 8
  %i.e = icmp eq i32 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.c, 8
  %i.g = shl nsw i32 %i.c, 1
  %i.h = select i1 %i.f, i32 32, i32 %i.g         ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EE6resizeEii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.k) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EE6resizeEii.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %i.c, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.b, align 8
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.n)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.h)
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = sext i32 %.1.i to i64
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.o, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EE6resizeEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8
  tail call void @uprv_free_78(ptr noundef %i.t) #15
  br label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EE6resizeEii.exit: ; preds = %bb.f, %bb.g
  store ptr %i.l, ptr %i.a, align 8
  store i32 %i.h, ptr %i.b, align 8
  store i8 1, ptr %i.r, align 4
  br label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EE6resizeEii.exit, %bb.a
  %i.u = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 56) #15 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = load i32, ptr %0, align 8                ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %0, align 8
  %i.z = sext i32 %i.x to i64
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.u, ptr %i.ab, align 8
  br label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EE6resizeEii.exit.thread

_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EE6resizeEii.exit.thread: ; preds = %bb.b, %bb.c, %bb.j
  %.0 = phi ptr [ %i.u, %bb.j ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #7

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #9

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #5
end_hunk_0
