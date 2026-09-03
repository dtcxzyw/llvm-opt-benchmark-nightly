Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/emerge?download=true
inline.NumInlined: 1608
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN13EmergeManager16getOptimalThreadEv:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.019 = phi i64 [ %i.bv, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.01018 = phi i64 [ %spec.select15, %.lr.ph ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.01117 = phi i64 [ %spec.select, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.019
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !137 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 344
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 312
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 368
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !233 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !233
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  %i.bb = icmp ne ptr %i.au, null
  %.neg.i.i.i16 = sext i1 %i.bb to i64
  %i.bc = add nsw i64 %i.ba, %.neg.i.i.i16
  %i.bd = mul nsw i64 %i.bc, 85
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !234
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 352
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !235
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 6
  %i.bl = add nsw i64 %i.bd, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 328
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !236
  %i.bo = load ptr, ptr %i.as, align 8, !tbaa !234
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 6
  %i.bt = add nsw i64 %i.bl, %i.bs                ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %.01018
  %spec.select = select i1 %i.bu, i64 %.019, i64 %.01117 ; 2 uses
  %spec.select15 = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %.01018)
  %i.bv = add nuw i64 %.019, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.h
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !479
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12EmergeThread9pushBlockEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(376) %0, i48 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.core::vector3d", align 8    ; 3 uses
  store i48 %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -6
  %.not.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.b, ptr noundef nonnull align 8 dereferenceable(6) %2, i64 6, i1 false), !tbaa.struct !217
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  store ptr %i.g, ptr %i.a, align 8, !tbaa !214
  br label %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 2 dereferenceable(6) %2)
  br label %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.b, %bb.c
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN13EmergeManager12getQueueSizeEv(ptr noundef nonnull align 8 dereferenceable(480) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96
  %i.e = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13EmergeManager14isBlockInQueueEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(480) %0, i48 %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.05.0.extract.trunc = trunc i48 %1 to i16 ; 4 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %.014.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.e, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !183  ; 2 uses
  %i.h = icmp slt i16 %i.g, %.sroa.05.0.extract.trunc
  br i1 %i.h, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq i16 %i.g, %.sroa.05.0.extract.trunc
  br i1 %i.i, label %bb.d, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.k = load i16, ptr %i.j, align 2, !tbaa !184  ; 2 uses
  %i.l = icmp slt i16 %i.k, %.sroa.2.0.extract.trunc
  br i1 %i.l, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i16 %i.k, %.sroa.2.0.extract.trunc
  br i1 %i.m, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.o = load i16, ptr %i.n, align 2, !tbaa !185
  %i.p = icmp slt i16 %i.o, %.sroa.3.0.extract.trunc
  br i1 %i.p, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.d, %.lr.ph.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.e ], [ %.014.i.i.i, %bb.c ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.r, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load i16, ptr %i.s, align 2, !tbaa !183  ; 2 uses
  %i.u = icmp sgt i16 %i.t, %.sroa.05.0.extract.trunc
  br i1 %i.u, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i16 %i.t, %.sroa.05.0.extract.trunc
  br i1 %i.v, label %bb.h, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread7.i.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.x = load i16, ptr %i.w, align 2, !tbaa !184  ; 2 uses
  %i.y = icmp sgt i16 %i.x, %.sroa.2.0.extract.trunc
  br i1 %i.y, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i16 %i.x, %.sroa.2.0.extract.trunc
  br i1 %i.z, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread7.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i: ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !185
  %i.ac = icmp sgt i16 %i.ab, %.sroa.3.0.extract.trunc
  br i1 %i.ac, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread7.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread7.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, %bb.i, %bb.g
  br label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit

_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread7.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, %bb.h, %bb.f, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.sroa.0.0.i.i = phi i1 [ true, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread7.i.i ], [ false, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ false, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i ], [ false, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i ], [ false, %bb.h ], [ false, %bb.f ]
  %i.ad = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i48 @_ZN13EmergeManager18getContainingChunkEN4core8vector3dIsEES2_(i48 %0, i48 %1) local_unnamed_addr #13 align 2 {
bb.a:
  %.sroa.058.0.extract.trunc = trunc i48 %0 to i16
  %.sroa.2.0.extract.shift = lshr i48 %0, 16
  %.sroa.3.0.extract.shift = lshr i48 %0, 32
  %.sroa.053.0.extract.trunc = trunc i48 %1 to i16 ; 3 uses
  %.sroa.455.0.extract.shift = lshr i48 %1, 16
  %.sroa.6.0.extract.shift = lshr i48 %1, 32
  %2 = insertelement <2 x i48> poison, i48 %1, i64 0
  %3 = shufflevector <2 x i48> %2, <2 x i48> poison, <2 x i32> zeroinitializer
  %4 = and <2 x i48> %3, <i48 -4294967296, i48 4294901760>
  %.sroa.045.0.extract.trunc = sub i16 0, %.sroa.053.0.extract.trunc
  %i.a = sdiv i16 %.sroa.045.0.extract.trunc, 2   ; 2 uses
  %5 = sub i16 %.sroa.058.0.extract.trunc, %i.a   ; 2 uses
  %6 = sext i16 %5 to i32                         ; 2 uses
  %7 = sext i16 %.sroa.053.0.extract.trunc to i32 ; 2 uses
  %reass.sub = sub nsw i32 %6, %7
  %8 = add nsw i32 %reass.sub, 1
  %9 = icmp slt i16 %5, 0
  %10 = select i1 %9, i32 %8, i32 %6
  %11 = sdiv i32 %10, %7
  %12 = ashr i48 %1, 32
  %13 = trunc nsw i48 %12 to i32
  %.sroa.0.0.extract.trunc = trunc i32 %11 to i16
  %14 = mul i16 %.sroa.0.0.extract.trunc, %.sroa.053.0.extract.trunc
  %15 = add i16 %14, %i.a
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16
  %.sroa.455.0.extract.trunc = trunc i48 %.sroa.455.0.extract.shift to i16 ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i16
  %16 = sub <2 x i48> zeroinitializer, %4
  %17 = lshr exact <2 x i48> %16, <i48 32, i48 16>
  %18 = trunc <2 x i48> %17 to <2 x i16>
  %19 = sdiv <2 x i16> %18, splat (i16 2)         ; 2 uses
  %20 = insertelement <2 x i16> poison, i16 %.sroa.3.0.extract.trunc, i64 0
  %21 = insertelement <2 x i16> %20, i16 %.sroa.2.0.extract.trunc, i64 1
  %22 = sub <2 x i16> %21, %19                    ; 2 uses
  %23 = sext i16 %.sroa.455.0.extract.trunc to i32
  %24 = sext <2 x i16> %22 to <2 x i32>           ; 2 uses
  %25 = insertelement <2 x i32> poison, i32 %13, i64 0
  %26 = insertelement <2 x i32> %25, i32 %23, i64 1 ; 2 uses
  %27 = sub nsw <2 x i32> %24, %26
  %28 = add nsw <2 x i32> %27, splat (i32 1)
  %29 = icmp slt <2 x i16> %22, zeroinitializer
  %30 = select <2 x i1> %29, <2 x i32> %28, <2 x i32> %24
  %31 = sdiv <2 x i32> %30, %26
  %32 = trunc <2 x i32> %31 to <2 x i16>
  %33 = insertelement <2 x i16> poison, i16 %.sroa.6.0.extract.trunc, i64 0
  %34 = insertelement <2 x i16> %33, i16 %.sroa.455.0.extract.trunc, i64 1
  %35 = mul <2 x i16> %34, %32
  %36 = add <2 x i16> %35, %19
  %37 = zext <2 x i16> %36 to <2 x i48>
  %38 = shl nuw <2 x i48> %37, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i39 = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %38)
  %.sroa.0.0.insert.ext.i40 = zext i16 %15 to i48
  %.sroa.0.0.insert.insert.i41 = or disjoint i48 %.sroa.2.0.insert.insert.i39, %.sroa.0.0.insert.ext.i40
  ret i48 %.sroa.0.0.insert.insert.i41
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN13EmergeManager20getSpawnLevelAtPointEN4core8vector2dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i32 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !141  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.c, %bb.d
  %i.h = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156, !nonnull !88, !align !157 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !480
  %.v.i = select i1 %i.l, i64 976, i64 984
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.18, ptr %i.a, align 8, !tbaa !117
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !163  ; 5 uses
  %.not.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i2, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZTW11errorstream.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !170
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !163 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre3 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %.pre3, %bb.f ], [ %i.r, %bb.e ]
  %i.x = phi ptr [ %.pre.i, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !176 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !182
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !115
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa)
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i8 [ %i.ae, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext %.0.i.i.i)
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.k:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(200) %i.g, i32 %1)
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW11errorstream.exit, %bb.k
  %.0 = phi i32 [ %i.ao, %bb.k ], [ 0, %_ZTW11errorstream.exit ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN13EmergeManager18isBlockUndergroundEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i48 %1) local_unnamed_addr #14 align 2 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i48 %1, 16
  %.sroa.1.0.extract.trunc = trunc i48 %.sroa.1.0.extract.shift to i16
  %i.a = sext i16 %.sroa.1.0.extract.trunc to i32
  %i.b = mul nsw i32 %i.a, 17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i16, ptr %i.e, align 8, !tbaa !481
  %i.g = sext i16 %i.f to i32
  %i.h = icmp sle i32 %i.b, %i.g
  ret i1 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13EmergeManager18popBlockEmergeDataEN4core8vector3dIsEEP15BlockEmergeData(ptr noundef nonnull align 8 dereferenceable(480) %0, i48 %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.011.0.extract.trunc = trunc i48 %1 to i16 ; 4 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %.014.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.b, %bb.a ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !183  ; 2 uses
  %i.f = icmp slt i16 %i.e, %.sroa.011.0.extract.trunc
  br i1 %i.f, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq i16 %i.e, %.sroa.011.0.extract.trunc
  br i1 %i.g, label %bb.c, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.i = load i16, ptr %i.h, align 2, !tbaa !184  ; 2 uses
  %i.j = icmp slt i16 %i.i, %.sroa.2.0.extract.trunc
  br i1 %i.j, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i16 %i.i, %.sroa.2.0.extract.trunc
  br i1 %i.k, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.m = load i16, ptr %i.l, align 2, !tbaa !185
  %i.n = icmp slt i16 %i.m, %.sroa.3.0.extract.trunc
  br i1 %i.n, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.c, %.lr.ph.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.d ], [ %.014.i.i.i, %bb.b ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.p, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.r = load i16, ptr %i.q, align 2, !tbaa !183  ; 2 uses
  %i.s = icmp sgt i16 %i.r, %.sroa.011.0.extract.trunc
  br i1 %i.s, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i16 %i.r, %.sroa.011.0.extract.trunc
  br i1 %i.t, label %bb.g, label %_ZNSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_:bb.a
_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34: ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !185
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.em = load i16, ptr %i.el, align 2, !tbaa !185
  %i.en = icmp slt i16 %i.ek, %i.em
  br i1 %i.en, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread85, %bb.ac, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !219 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %1
  br i1 %i.eq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread
  %i.er = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load i16, ptr %i.es, align 2, !tbaa !183 ; 2 uses
  %i.eu = icmp slt i16 %i.bj, %i.et
  br i1 %i.eu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = icmp eq i16 %i.bj, %i.et
  br i1 %i.ev, label %bb.ag, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !184 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 34
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !184 ; 2 uses
  %i.fa = icmp slt i16 %i.ex, %i.ez
  br i1 %i.fa, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = icmp eq i16 %i.ex, %i.ez
  br i1 %i.fb, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35: ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !185
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 36
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !185
  %i.fg = icmp slt i16 %i.fd, %i.ff
  br i1 %i.fg, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread: ; preds = %bb.ae, %bb.ag, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !444
  %i.fj = icmp eq ptr %i.fi, null                 ; 2 uses
  %spec.select99 = select i1 %i.fj, ptr null, ptr %i.er
  %spec.select100 = select i1 %i.fj, ptr %1, ptr %i.er
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94: ; preds = %bb.ah, %bb.af, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02126.i36 = load ptr, ptr %i.fk, align 8, !tbaa !219 ; 2 uses
  %.not27.i37 = icmp eq ptr %.02126.i36, null
  br i1 %.not27.i37, label %._crit_edge.thread.i54, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.fm = load i16, ptr %i.fl, align 2            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fo = load i16, ptr %i.fn, align 2
  br label %.backedge102

.backedge102:                                     ; preds = %.backedge102.backedge, %.lr.ph.i38
  %.02128.i39 = phi ptr [ %.02126.i36, %.lr.ph.i38 ], [ %.02128.i39.be, %.backedge102.backedge ] ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 32
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !183 ; 3 uses
  %i.fr = icmp slt i16 %i.bj, %i.fq
  br i1 %i.fr, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %bb.ai

bb.ai:                                            ; preds = %.backedge102
  %i.fs = icmp eq i16 %i.bj, %i.fq
  br i1 %i.fs, label %bb.aj, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 34
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !184 ; 2 uses
  %i.fv = icmp slt i16 %i.fm, %i.fu
  br i1 %i.fv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = icmp eq i16 %i.fm, %i.fu
  br i1 %i.fw, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56: ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 36
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !185
  %i.fz = icmp slt i16 %i.fo, %i.fy
  br i1 %i.fz, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56, %bb.aj, %.backedge102
  %i.ga = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 16
  %.021.i43 = load ptr, ptr %i.ga, align 8, !tbaa !219 ; 2 uses
  %.not.i44 = icmp eq ptr %.021.i43, null
  br i1 %.not.i44, label %._crit_edge.thread.i54, label %.backedge102.backedge

.backedge102.backedge:                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread
  %.02128.i39.be = phi ptr [ %.021.i43, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41 ], [ %.021.i4396, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ]
  br label %.backedge102, !llvm.loop !577

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread: ; preds = %bb.ai, %bb.ak, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56
  %i.gb = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 24
  %.021.i4396 = load ptr, ptr %i.gb, align 8, !tbaa !219 ; 2 uses
  %.not.i4497 = icmp eq ptr %.021.i4396, null
  br i1 %.not.i4497, label %._crit_edge.i45.thread, label %.backedge102.backedge

._crit_edge.thread.i54:                           ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94
  %.020.lcssa40.i55 = phi ptr [ %i.a, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94 ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41 ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !94
  %i.ge = icmp eq ptr %.020.lcssa40.i55, %i.gd
  br i1 %i.ge, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.al

bb.al:                                            ; preds = %._crit_edge.thread.i54
  %i.gf = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i55) #33 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !183
  br label %._crit_edge.i45.thread

._crit_edge.i45.thread:                           ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread, %bb.al
  %i.gg = phi i16 [ %.pre, %bb.al ], [ %i.fq, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 2 uses
  %.020.lcssa39.i46 = phi ptr [ %.020.lcssa40.i55, %bb.al ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 3 uses
  %.sroa.06.0.i47 = phi ptr [ %i.gf, %bb.al ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 3 uses
  %i.gh = icmp slt i16 %i.gg, %i.bj
  br i1 %i.gh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i45.thread
  %i.gi = icmp eq i16 %i.gg, %i.bj
  br i1 %i.gi, label %bb.an, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

bb.an:                                            ; preds = %bb.am
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 34
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !184 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !184 ; 2 uses
  %i.gn = icmp slt i16 %i.gk, %i.gm
  br i1 %i.gn, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.go = icmp eq i16 %i.gk, %i.gm
  br i1 %i.go, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53: ; preds = %bb.ao
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 36
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !185
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !185
  %i.gt = icmp slt i16 %i.gq, %i.gs
  br i1 %i.gt, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, %bb.ao, %bb.am
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, %bb.an, %._crit_edge.i45.thread, %._crit_edge.thread.i54, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29, %bb.aa, %._crit_edge.i21.thread, %._crit_edge.thread.i30, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i, %bb.l, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread, %bb.ad, %bb.c, %bb.e, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit
  %.sroa.078.2 = phi ptr [ null, %bb.e ], [ null, %._crit_edge.i45.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit ], [ %spec.select99, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread ], [ %1, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bz, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread ], [ %1, %bb.ad ], [ null, %._crit_edge.i21.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread ], [ %spec.select, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread ], [ null, %bb.c ], [ %.sroa.06.0.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i ], [ null, %bb.l ], [ %.sroa.06.0.i23, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24 ], [ null, %._crit_edge.thread.i30 ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29 ], [ null, %bb.aa ], [ %.sroa.06.0.i47, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48 ], [ null, %._crit_edge.thread.i54 ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53 ], [ null, %bb.an ]
  %.sroa.12.2 = phi ptr [ %i.f, %bb.e ], [ %.020.lcssa39.i46, %._crit_edge.i45.thread ], [ %i.f, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit ], [ %spec.select100, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34 ], [ %.020.lcssa39.i, %._crit_edge.i.thread ], [ %i.bz, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread ], [ null, %bb.ad ], [ %.020.lcssa39.i22, %._crit_edge.i21.thread ], [ %i.ep, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread ], [ %spec.select98, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread ], [ %i.f, %bb.c ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i ], [ %.020.lcssa40.i, %._crit_edge.thread.i ], [ %.020.lcssa39.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i ], [ %.020.lcssa39.i, %bb.l ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24 ], [ %.020.lcssa40.i31, %._crit_edge.thread.i30 ], [ %.020.lcssa39.i22, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29 ], [ %.020.lcssa39.i22, %bb.aa ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48 ], [ %.020.lcssa40.i55, %._crit_edge.thread.i54 ], [ %.020.lcssa39.i46, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53 ], [ %.020.lcssa39.i46, %bb.an ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare extern_weak void @_ZTH10infostream() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #24

declare extern_weak void @_ZTH11errorstream() #2

declare extern_weak void @_ZTH13verbosestream() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(none) }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{ptr @_ZNSt12__shared_ptrI13MetricCounterLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{!1, !127}
!2 = distinct !{null}
!3 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!4 = distinct !{!4, !127}
!5 = distinct !{!5, !127}
!6 = distinct !{null, null}
!7 = distinct !{!7, !127}
!8 = distinct !{!8, !127}
!9 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!10 = distinct !{null}
!11 = distinct !{!11, !127}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 _ZTS14NodeDefManager", !21, i64 0}
!23 = !{!"bool", !17, i64 0}
!24 = !{!"p1 _ZTSSt3setIjSt4lessIjESaIjEE", !21, i64 0}
!25 = !{!"p1 _ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !21, i64 0}
!26 = !{!"p1 _ZTS8BiomeGen", !21, i64 0}
!27 = !{!"p1 _ZTS12BiomeManager", !21, i64 0}
!28 = !{!"p1 _ZTS10OreManager", !21, i64 0}
!29 = !{!"p1 _ZTS17DecorationManager", !21, i64 0}
!30 = !{!"p1 _ZTS16SchematicManager", !21, i64 0}
!31 = !{!"_ZTS12EmergeParams", !22, i64 0, !23, i64 8, !18, i64 12, !24, i64 16, !25, i64 24, !26, i64 32, !27, i64 40, !28, i64 48, !29, i64 56, !30, i64 64}
!32 = !{!31, !26, i64 32}
!33 = !{!"vtable pointer", !16, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!31, !27, i64 40}
!36 = !{!31, !28, i64 48}
!37 = !{!31, !29, i64 56}
!38 = !{!31, !30, i64 64}
!39 = !{!"_ZTSSt4lessIjE"}
!40 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !39, i64 0}
!41 = !{!"_ZTSSt14_Rb_tree_color", !17, i64 0}
!42 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!43 = !{!"_ZTSSt18_Rb_tree_node_base", !41, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!44 = !{!"long", !17, i64 0}
!45 = !{!"_ZTSSt15_Rb_tree_header", !43, i64 0, !44, i64 32}
!46 = !{!"_ZTSNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE13_Rb_tree_implIS3_Lb1EEE", !40, i64 0, !45, i64 8}
!47 = !{!"_ZTSSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE", !46, i64 0}
!48 = !{!"_ZTSSt3setIjSt4lessIjESaIjEE", !47, i64 0}
!49 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!50 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !49, i64 0}
!51 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !50, i64 0, !45, i64 8}
!52 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !51, i64 0}
!53 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !52, i64 0}
!54 = !{!"p1 _ZTS12MapgenParams", !21, i64 0}
!55 = !{!"p1 _ZTS18MapSettingsManager", !21, i64 0}
!56 = !{!"any p2 pointer", !21, i64 0}
!57 = !{!"p2 _ZTS6Mapgen", !56, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIP6MapgenSaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIP6MapgenSaIS1_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIP6MapgenSaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIP6MapgenSaIS1_EE", !60, i64 0}
!62 = !{!"p2 _ZTS12EmergeThread", !56, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIP12EmergeThreadSaIS1_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIP12EmergeThreadSaIS1_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIP12EmergeThreadSaIS1_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIP12EmergeThreadSaIS1_EE", !65, i64 0}
!67 = !{!"p1 _ZTS6Server", !21, i64 0}
!68 = !{!"p1 _ZTS19MapDatabaseAccessor", !21, i64 0}
!69 = !{!"_ZTSSt12__mutex_base", !17, i64 0}
!70 = !{!"_ZTSSt5mutex", !69, i64 0}
!71 = !{!"_ZTSSt4lessIN4core8vector3dIsEEE"}
!72 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4core8vector3dIsEEEE", !71, i64 0}
!73 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !72, i64 0, !45, i64 8}
!74 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE", !73, i64 0}
!75 = !{!"_ZTSSt3mapIN4core8vector3dIsEE15BlockEmergeDataSt4lessIS2_ESaISt4pairIKS2_S3_EEE", !74, i64 0}
!76 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !56, i64 0}
!77 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!78 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !77, i64 0}
!79 = !{!"float", !17, i64 0}
!80 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !79, i64 0, !44, i64 8}
!81 = !{!"_ZTSSt10_HashtableItSt4pairIKtjESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !76, i64 0, !44, i64 8, !78, i64 16, !44, i64 24, !80, i64 32, !77, i64 48}
!82 = !{!"_ZTSSt13unordered_mapItjSt4hashItESt8equal_toItESaISt4pairIKtjEEE", !81, i64 0}
!83 = !{!"_ZTS13EmergeManager", !22, i64 0, !23, i64 8, !18, i64 12, !48, i64 16, !53, i64 64, !54, i64 112, !55, i64 120, !61, i64 128, !66, i64 152, !23, i64 176, !67, i64 184, !68, i64 192, !70, i64 200, !75, i64 240, !82, i64 288, !18, i64 344, !18, i64 348, !18, i64 352, !17, i64 360, !26, i64 440, !27, i64 448, !28, i64 456, !29, i64 464, !30, i64 472}
!84 = !{!83, !22, i64 0}
!85 = !{!31, !22, i64 0}
!86 = !{!83, !23, i64 8}
!87 = !{i8 0, i8 2}
!88 = !{}
!89 = !{!31, !23, i64 8}
!90 = !{!83, !18, i64 12}
!91 = !{!31, !18, i64 12}
!92 = !{!45, !41, i64 0}
!93 = !{!45, !42, i64 8}
!94 = !{!45, !42, i64 16}
!95 = !{!45, !42, i64 24}
!96 = !{!45, !44, i64 32}
!97 = !{!81, !76, i64 0}
!98 = !{!81, !44, i64 8}
!99 = !{!80, !79, i64 0}
!100 = !{!83, !67, i64 184}
!101 = !{!83, !27, i64 448}
!102 = !{!83, !28, i64 456}
!103 = !{!83, !29, i64 464}
!104 = !{!83, !30, i64 472}
!105 = !{!83, !54, i64 112}
!106 = !{!83, !26, i64 440}
!107 = !{!"p1 _ZTS8Settings", !21, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"p1 omnipotent char", !21, i64 0}
!110 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !109, i64 0}
!111 = !{!110, !109, i64 0}
!112 = !{!44, !44, i64 0}
!113 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !110, i64 0, !44, i64 8, !17, i64 16}
!114 = !{!113, !109, i64 0}
!115 = !{!17, !17, i64 0}
!116 = !{!113, !44, i64 8}
!117 = !{!109, !109, i64 0}
!118 = !{!21, !21, i64 0}
!119 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!120 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !119, i64 0}
!121 = !{!120, !119, i64 0}
!122 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 8, !18, i64 12}
!123 = !{!122, !18, i64 8}
!124 = !{!122, !18, i64 12}
!125 = !{!18, !18, i64 0}
!126 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!83, !18, i64 344}
!129 = !{!63, !62, i64 0}
!130 = !{!63, !62, i64 16}
!131 = !{!58, !57, i64 0}
!132 = !{!58, !57, i64 16}
!133 = !{!81, !77, i64 16}
!134 = !{!78, !77, i64 0}
!135 = !{!63, !62, i64 8}
!136 = !{!"p1 _ZTS12EmergeThread", !21, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!83, !23, i64 176}
!139 = !{!58, !57, i64 8}
!140 = !{!"p1 _ZTS6Mapgen", !21, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!57, !57, i64 0}
!143 = !{!83, !68, i64 192}
!144 = !{!"p1 _ZTS9LogTarget", !21, i64 0}
!145 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!146 = !{!"_ZTSSt6locale", !145, i64 0}
!147 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !146, i64 56}
!148 = !{!"_ZTSSt14_Function_base", !17, i64 0, !21, i64 16}
!149 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !148, i64 0, !21, i64 24}
!150 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !147, i64 0, !149, i64 64, !18, i64 96, !17, i64 100}
!151 = !{!"_ZTS17DummyStreamBuffer", !147, i64 0}
!152 = !{!"_ZTSSo"}
!153 = !{!"p1 _ZTSSo", !21, i64 0}
!154 = !{!"_ZTS11StreamProxy", !153, i64 0}
!155 = !{!"_ZTS9LogStream", !144, i64 0, !150, i64 8, !151, i64 368, !152, i64 432, !152, i64 704, !154, i64 976, !154, i64 984}
!156 = !{!155, !144, i64 0}
!157 = !{i64 8}
!158 = !{!"_ZTS10MapgenType", !17, i64 0}
!159 = !{!"short", !17, i64 0}
!160 = !{!"_ZTSN4core8vector3dIsEE", !159, i64 0, !159, i64 2, !159, i64 4}
end_hunk_1
