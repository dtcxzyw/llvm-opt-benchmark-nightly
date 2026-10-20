Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Exceptions?download=true
inline.NumInlined: 2898
inline.NumDeleted: 1672
begin_hunk_0_@_ZN4llvm4bolt14BinaryFunction14updateEHRangesEv:bb.a
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(536) %i.be, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.084.0106) #23
  br i1 %i.bi, label %bb.i, label %bb.q

bb.i:                                             ; preds = %.lr.ph
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1568
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !471 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 840
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(536) %i.bl, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.084.0106) #23 ; 5 uses
  %i.bq = icmp ne ptr %.151108, null              ; 3 uses
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1568
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !471
  call void @_ZNK4llvm4bolt13MCPlusBuilder9getEHInfoERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.665") align 8 %3, ptr noundef nonnull align 8 dereferenceable(536) %i.bt, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.084.0106) #23
  %i.bu = load i8, ptr %i.o, align 8, !tbaa !690, !range !29, !noundef !30
  %i.bv = trunc nuw i8 %i.bu to i1                ; 2 uses
  %i.bw = load ptr, ptr %3, align 8
  %i.bx = load i64, ptr %i.p, align 8
  %.095 = select i1 %i.bv, i64 %i.bx, i64 0       ; 2 uses
  %.0 = select i1 %i.bv, ptr %i.bw, ptr null      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %or.cond3 = select i1 %i.bp, i1 %i.bq, i1 false
  %i.by = icmp eq ptr %.sroa.034.1109, %.0
  %or.cond57 = select i1 %or.cond3, i1 %i.by, i1 false
  %i.bz = icmp eq i64 %.sroa.7.1107, %.095
  %or.cond59 = select i1 %or.cond57, i1 %i.bz, i1 false
  br i1 %or.cond59, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1568
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !471
  %i.cd = call noundef ptr @_ZNK4llvm4bolt13MCPlusBuilder12getInstLabelERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.084.0106) #23 ; 2 uses
  %.not54 = icmp eq ptr %i.cd, null
  br i1 %.not54, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1376 ; 2 uses
  %i.cg = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(64) %i.cf) #23
  %i.ch = icmp eq i32 %i.cg, 35
  br i1 %i.ch, label %bb.m, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #27
  unreachable

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit: ; preds = %bb.l
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !165, !nonnull !30, !align !166 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1568
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i8 1, ptr %i.r, align 1, !tbaa !453
  store ptr @.str.31, ptr %4, align 8, !tbaa !443
  store i8 3, ptr %i.q, align 8, !tbaa !452
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1368
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !469
  %i.cn = call noundef ptr @_ZNK4llvm4bolt13MCPlusBuilder20getOrCreateInstLabelERNS_6MCInstERKNS_5TwineEPNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(536) %i.ck, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.084.0106, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef %i.cm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.co = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.cf) #23 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit
  %.048 = phi ptr [ %i.cn, %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit ], [ %i.cd, %bb.k ] ; 4 uses
  %.not5598 = icmp ne ptr %.048, null
  %.not55.not = and i1 %i.bq, %.not5598
  br i1 %.not55.not, label %bb.o, label %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.aw, align 8, !tbaa !464 ; 2 uses
  %i.cp = load i32, ptr %i.e, align 8, !tbaa !486 ; 2 uses
  %i.cq = load i32, ptr %i.f, align 4, !tbaa !487
  %.not.i = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i, label %bb.p, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EE18growAndEmplaceBackIJS3_S5_EEERS6_DpOT_.exit, !prof !488

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EE18growAndEmplaceBackIJS3_S5_EEERS6_DpOT_.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i32 %.sroa.0.0.copyload.i62, ptr %1, align 8, !tbaa !464
  store ptr %.151108, ptr %i.s, align 8, !tbaa !470
  store ptr %.048, ptr %.sroa.5.0..sroa_idx71, align 8, !tbaa !470
  store ptr %.sroa.034.1109, ptr %.sroa.6.0..sroa_idx73, align 8, !tbaa !470
  store i64 %.sroa.7.1107, ptr %.sroa.7.0..sroa_idx75, align 8, !tbaa !34
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EE15growAndPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit

bb.p:                                             ; preds = %bb.o
  %i.cr = zext i32 %i.cp to i64
  %i.cs = load ptr, ptr %2, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %i.cs, i64 %i.cr ; 5 uses
  store i32 %.sroa.0.0.copyload.i62, ptr %i.ct, align 8, !tbaa !464
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %.151108, ptr %i.cu, align 8, !tbaa !470
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %.048, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !470
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %.sroa.034.1109, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !470
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store i64 %.sroa.7.1107, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !34
  %i.cv = load i32, ptr %i.e, align 8, !tbaa !486
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !486
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit

_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit: ; preds = %bb.p, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EE18growAndEmplaceBackIJS3_S5_EEERS6_DpOT_.exit, %bb.n
  %.sroa.7.2 = select i1 %i.bp, i64 %.095, i64 %.sroa.7.1107
  %.3 = select i1 %i.bp, ptr %.048, ptr null
  %.sroa.034.2 = select i1 %i.bp, ptr %.0, ptr %.sroa.034.1109
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit, %bb.j, %bb.i, %.lr.ph
  %.sroa.7.5 = phi i64 [ %.sroa.7.1107, %.lr.ph ], [ %.sroa.7.1107, %bb.i ], [ %.sroa.7.2, %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit ], [ %.sroa.7.1107, %bb.j ] ; 2 uses
  %.6 = phi ptr [ %.151108, %.lr.ph ], [ null, %bb.i ], [ %.3, %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit ], [ %.151108, %bb.j ] ; 2 uses
  %.sroa.034.5 = phi ptr [ %.sroa.034.1109, %.lr.ph ], [ %.sroa.034.1109, %bb.i ], [ %.sroa.034.2, %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit ], [ %.sroa.034.1109, %bb.j ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.084.0106, i64 128 ; 2 uses
  %.not97 = icmp eq ptr %i.cx, %i.ba
  br i1 %.not97, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %._crit_edge119
  %i.cy = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.cy, align 8, !tbaa !464
  %i.cz = call noundef ptr @_ZNK4llvm4bolt14BinaryFunction19getFunctionEndLabelENS0_11FragmentNumE(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 %.sroa.0.0.copyload.i63)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.cy, align 8, !tbaa !464 ; 2 uses
  store i32 %.sroa.0.0.copyload.i64, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %.151.lcssa, ptr %6, align 8, !tbaa !692
  store ptr %i.cz, ptr %i.t, align 8, !tbaa !693
  store ptr %.sroa.034.1.lcssa, ptr %i.u, align 8, !tbaa !694
  store i64 %.sroa.7.1.lcssa, ptr %i.v, align 8, !tbaa !695
  %i.da = load i32, ptr %i.e, align 8, !tbaa !486 ; 2 uses
  %i.db = load i32, ptr %i.f, align 4, !tbaa !487
  %.not.i65 = icmp ult i32 %i.da, %i.db
  br i1 %.not.i65, label %bb.t, label %bb.s, !prof !488

bb.s:                                             ; preds = %bb.r
  %i.dc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EE18growAndEmplaceBackIJS3_S5_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit67

bb.t:                                             ; preds = %bb.r
  %i.dd = zext i32 %i.da to i64
  %i.de = load ptr, ptr %2, align 8, !tbaa !32
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %i.dd ; 2 uses
  store i32 %.sroa.0.0.copyload.i64, ptr %i.df, align 8, !tbaa !464
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !494
  %i.dh = load i32, ptr %i.e, align 8, !tbaa !486
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.e, align 8, !tbaa !486
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit67

_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit67: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %._crit_edge119.thread

._crit_edge119.thread:                            ; preds = %bb.g, %_ZN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEE12emplace_backIJS3_S5_EEERS6_DpOT_.exit67, %._crit_edge119
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.088.0124, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.dj, %i.l
  br i1 %.not96, label %._crit_edge127, label %bb.g

bb.u:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare noundef ptr @_ZN4llvm4bolt16FunctionFragment5beginEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm4bolt16FunctionFragment3endEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_ZNK4llvm4bolt13MCPlusBuilder9getEHInfoERKNS_6MCInstE(ptr dead_on_unwind writable sret(%"class.std::optional.665") align 8, ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm4bolt13MCPlusBuilder12getInstLabelERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm4bolt13MCPlusBuilder20getOrCreateInstLabelERNS_6MCInstERKNS_5TwineEPNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm4bolt14BinaryFunction19getFunctionEndLabelENS0_11FragmentNumE(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !486  ; 2 uses
  %.not = icmp ugt i32 %i.d, %1
  br i1 %.not, label %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.g = load i32, ptr %i.f, align 4, !tbaa !487
  %.not11 = icmp ult i32 %1, %i.g
  br i1 %.not11, label %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE7reserveEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1352
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef 8) #23
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !486
  br label %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE7reserveEm.exit.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.in = phi i32 [ %i.d, %bb.b ], [ %.pre.i.i, %bb.c ]
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64 ; 3 uses
  %.not11.i.i = icmp samesign eq i64 %i.e, %.pre-phi.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE7reserveEm.exit.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.pre-phi.i.i
  %i.k = sub nsw i64 %i.e, %.pre-phi.i.i
  %i.l = shl nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.l, i1 false), !tbaa !470
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE7reserveEm.exit.i.i
  %i.m = trunc i64 %i.e to i32
  store i32 %i.m, ptr %i.c, align 8, !tbaa !486
  br label %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE6resizeEm.exit

_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE6resizeEm.exit: ; preds = %.sink.split.i.i, %bb.a
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.a ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !470  ; 2 uses
  %.not7 = icmp eq ptr %i.p, null
  br i1 %.not7, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE6resizeEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1376 ; 2 uses
  %i.t = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(64) %i.s) #23
  %i.u = icmp eq i32 %i.t, 35
  br i1 %i.u, label %bb.e, label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #27
  unreachable

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit: ; preds = %bb.d
  %i.v = icmp eq i32 %1, 0
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1368
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !469  ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !453
  store ptr @.str.46, ptr %2, align 8, !tbaa !443
  store i8 3, ptr %i.z, align 8, !tbaa !452
  %i.ab = call noundef ptr @_ZN4llvm9MCContext21createNamedTempSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.y, ptr noundef nonnull align 8 dereferenceable(34) %2) #23
  store ptr %i.ab, ptr %i.o, align 8, !tbaa !470
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ac = add i32 %1, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr @.str.47, ptr %4, align 8, !tbaa !193, !alias.scope !700
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 17, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !34, !alias.scope !700
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !702, !alias.scope !700
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !34, !alias.scope !700
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 1, ptr %i.af, align 8, !tbaa !705, !alias.scope !700
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  store i32 %i.ac, ptr %i.ag, align 4, !tbaa !464, !alias.scope !700
  %i.ah = ptrtoint ptr %i.ag to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIjEEEEvlS2_S3_, ptr %i.ad, align 8, !alias.scope !700
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !443, !alias.scope !700
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 7, ptr %i.ai, align 8, !tbaa !452
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.aj, align 1, !tbaa !453
  store ptr %4, ptr %3, align 8, !tbaa !443
  %i.ak = call noundef ptr @_ZN4llvm9MCContext21createNamedTempSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.y, ptr noundef nonnull align 8 dereferenceable(34) %3) #23
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !470
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit

_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit: ; preds = %bb.f, %bb.g
  %i.al = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.s) #23 ; 0 uses
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !470
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit, %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE6resizeEm.exit
  %i.am = phi ptr [ %.pre, %_ZNSt11unique_lockIN4llvm3sys12SmartRWMutexILb0EEEED2Ev.exit ], [ %i.p, %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE6resizeEm.exit ]
  ret ptr %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt15CFIReaderWriterC2ERNS0_13BinaryContextERKNS_15DWARFDebugFrameE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8), (16, 20), (24, 32)) %0, ptr noundef nonnull align 8 dereferenceable(2268) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  store ptr %1, ptr %0, align 8, !tbaa !709
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store i32 0, ptr %i.b, align 8, !tbaa !495
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !463
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.d, align 8, !tbaa !496
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !497
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !489
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !499  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !499  ; 2 uses
  %.not3942 = icmp eq ptr %i.h, %i.j
  br i1 %.not3942, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 33
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE12emplace_hintIJmRS4_EEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE12emplace_hintIJmRS4_EEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit
  %.sroa.032.043 = phi ptr [ %i.h, %.lr.ph ], [ %i.ct, %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE12emplace_hintIJmRS4_EEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.032.043, align 8, !tbaa !501 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !511
  %i.r = icmp ne i32 %i.q, 1
  %.not40 = icmp eq ptr %i.o, null
  %.not = or i1 %.not40, %i.r
  br i1 %.not, label %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE12emplace_hintIJmRS4_EEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !514  ; 3 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !463  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.u, %bb.c ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !34
  %i.x = icmp ult i64 %i.w, %i.t                  ; 2 uses
  %.19.i.i.i = select i1 %i.x, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !465 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !706

_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit: ; preds = %.lr.ph.i.i.i
  %.not41 = icmp eq ptr %.19.i.i.i, %i.b
  br i1 %.not41, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !710
  %i.aa = icmp eq i64 %i.z, %i.t
  br i1 %i.aa, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !517
  %.not7 = icmp eq i64 %i.ac, 0
  br i1 %.not7, label %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE12emplace_hintIJmRS4_EEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !518
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !517
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.o, ptr %i.ad, align 8, !tbaa !518
  br label %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE12emplace_hintIJmRS4_EEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8, !tbaa !462
  %.not8 = icmp eq i32 %i.ai, 0
  br i1 %.not8, label %_ZNSt3mapImPKN4llvm5dwarf3FDEESt4lessImESaISt4pairIKmS4_EEE12emplace_hintIJmRS4_EEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit, label %bb.i
end_hunk_0
