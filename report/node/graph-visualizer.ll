inline.NumInlined: 621
inline.NumDeleted: 342
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintNodesEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::SmallVector", align 8 ; 12 uses
  %2 = alloca %"class.v8::base::SmallVector", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.sink16.i.sroa.gep.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge98, label %.lr.ph97

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %3 = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.l, i64 1
  %5 = insertelement <2 x ptr> poison, ptr %i.h, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.i, i64 1
  br label %bb.b

._crit_edge98:                                    ; preds = %._crit_edge93, %bb.a
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv:bb.a
  %i.am = load i16, ptr %i.al, align 2            ; 3 uses
  %i.an = zext i16 %i.am to i64                   ; 3 uses
  store ptr %i.h, ptr %1, align 8
  store <2 x ptr> %6, ptr %.sink16.i.sroa.gep.a, align 8
  %i.ao = icmp ugt i16 %i.am, 32
  br i1 %i.ao, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit

end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv:bb.a
_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit
  %i.bh = phi ptr [ %.pre100, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.h, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.an ; 4 uses
  store ptr %i.bi, ptr %.sink16.i.sroa.gep.a, align 8
  %i.bj = load i8, ptr %i.y, align 4
  %.not = icmp eq i8 %i.bj, 78
  br i1 %.not, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %.sroa.0.0.copyload.i.i48 = load i32, ptr %i.bo, align 4
  store i32 %.sroa.0.0.copyload.i.i43, ptr %i.j, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.a, align 4
  store i32 %.sroa.0.0.copyload.i.i48, ptr %.sroa.5.0..sroa_idx.a, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.bp = load ptr, ptr %1, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store ptr %i.bq, ptr %.sink16.i.sroa.gep.a, align 8
  store ptr %i.j, ptr %2, align 8
  store <2 x ptr> %4, ptr %i.k, align 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.pre101 = load ptr, ptr %1, align 8
  %.pre102 = load ptr, ptr %.sink16.i.sroa.gep.a, align 8
  br label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread: ; preds = %bb.d, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEaSEOS7_.exit, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter11PrintBlocksEv:bb.a
.lr.ph31:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %2 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.l, i64 1
  br label %bb.b

._crit_edge32:                                    ; preds = %._crit_edge, %bb.a
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter11PrintBlocksEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  store ptr %i.i, ptr %1, align 8, !alias.scope !22
  store <2 x ptr> %3, ptr %i.j, align 8, !alias.scope !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.05.i = load ptr, ptr %i.ad, align 8, !noalias !22 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
end_hunk_6
