Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_gcp-560b30696848f8bf.deltalake_gcp.465a4255beeeefa9-cgu.06?download=true
inline.NumInlined: 182
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs62u4JVtZyFF_13deltalake_gcp, ptr @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyEE5force0E0Cs62u4JVtZyFF_13deltalake_gcp }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\DB\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorECs62u4JVtZyFF_13deltalake_gcp, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsi_NtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connectionNtB5_23SpawnedReqwestConnectorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs2_NtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connectionNtB5_23SpawnedReqwestConnectorNtB5_13HttpConnector7connect }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\DB\00\00\001\00\00\00" }>, align 8
@5 = private unnamed_addr constant [25 x i8] c"crates/gcp/src/config.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\18\00\00\00\00\00\00\00\7F\00\00\00@\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\18\00\00\00\00\00\00\00\8E\00\00\00@\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\18\00\00\00\00\00\00\00\A5\00\00\003\00\00\00" }>, align 8
@_RNvNtCs62u4JVtZyFF_13deltalake_gcp6config15CREDENTIAL_KEYS = internal global <{ ptr, [16 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtCs62u4JVtZyFF_13deltalake_gcp6config15CREDENTIAL_KEYS0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB8_, [16 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleNtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp }>, align 8
@10 = private unnamed_addr constant [23 x i8] c"SpawnedReqwestConnector", align 1
@11 = private unnamed_addr constant [7 x i8] c"runtime", align 1

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef range(i64 0, 576460752303423488) i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_3gcp18GoogleCloudStorageNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3n_ENtNtB5_6marker4SendEL_EEE000ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3gcp18GoogleCloudStorageNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3N_ENtNtB5_6marker4SendEL_EEE000E0ECs62u4JVtZyFF_13deltalake_gcp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 1
  %.pre.i = load i64, ptr %2, align 8, !noalias !15 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.020.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !14, !noalias !16, !noundef !3
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !3 ; 2 uses
  %i.g = sub nuw nsw i64 %.sroa.01.021.i, %i.b    ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.i, align 8, !alias.scope !14, !noalias !16, !noundef !3
  %.not.i.i = icmp ule i64 %.val14.i, %.pre.i
  %i.j = zext i1 %.not.i.i to i64
  %i.k = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.j ; 2 uses
  %i.l = icmp ule i64 %i.k, %1
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3gcp18GoogleCloudStorageNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3N_ENtNtB5_6marker4SendEL_EEE000E0ECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3gcp18GoogleCloudStorageNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3N_ENtNtB5_6marker4SendEL_EEE000E0ECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ 0, %bb.a ], [ %i.k, %._crit_edge.i ]
  ret i64 %.sroa.4.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef range(i64 0, 576460752303423488) i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3P_ENtNtB5_6marker4SendEL_EEE000EB2o_(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4f_ENtNtB5_6marker4SendEL_EEE000E0EB2O_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 1
  %.pre.i = load i64, ptr %2, align 8, !noalias !21 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.020.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !20, !noalias !22, !noundef !3
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !3 ; 2 uses
  %i.g = sub nuw nsw i64 %.sroa.01.021.i, %i.b    ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.i, align 8, !alias.scope !20, !noalias !22, !noundef !3
  %.not.i.i = icmp ule i64 %.val14.i, %.pre.i
  %i.j = zext i1 %.not.i.i to i64
  %i.k = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.j ; 2 uses
  %i.l = icmp ule i64 %i.k, %1
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4f_ENtNtB5_6marker4SendEL_EEE000E0EB2O_.exit

_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4f_ENtNtB5_6marker4SendEL_EEE000E0EB2O_.exit: ; preds = %bb.a, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ 0, %bb.a ], [ %i.k, %._crit_edge.i ]
  ret i64 %.sroa.4.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %1) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !38, !noalias !36, !noundef !3 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !38, !noalias !36, !nonnull !3, !noundef !3 ; 6 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.val.i.i.i.i = load i8, ptr %1, align 1, !range !4, !alias.scope !36, !noalias !35 ; 3 uses
  %i.m = add nsw i8 %.val.i.i.i.i, -18
  %i.n = icmp samesign ugt i8 %.val.i.i.i.i, 17
  %narrow.i.i.i.i.i = select i1 %i.n, i8 %i.m, i8 5
  %narrow.i.i.i.i.fr.i = freeze i8 %narrow.i.i.i.i.i ; 3 uses
  %.not.i = icmp eq i8 %narrow.i.i.i.i.fr.i, 5
  br i1 %.not.i, label %.split.i, label %.split.us.i

.split.us.i:                                      ; preds = %bb.b, %5
  %.sroa.9.0.i.us.i = phi i64 [ %6, %5 ], [ 0, %bb.b ]
  %.pn.i.us.i = phi i64 [ %7, %5 ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.us.i = and i64 %.pn.i.us.i, %i.i  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.us.i
  %.sroa.0.0.copyload.i27.us.i = load <16 x i8>, ptr %i.o, align 1, !noalias !39 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, %i.l
  %i.q = bitcast <16 x i1> %i.p to i16            ; 3 uses
  %.not.i.not33.us.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not33.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.split.us.i
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.q, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.us.i, %i.s
  %i.u = and i64 %i.t, %i.i
  %i.v = sub nsw i64 0, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %.val2.i.us45.us.i = load i8, ptr %i.x, align 1, !range !4, !alias.scope !40, !noalias !41, !noundef !3 ; 2 uses
  %i.y = add nsw i8 %.val2.i.us45.us.i, -18
  %i.z = icmp samesign ugt i8 %.val2.i.us45.us.i, 17
  %narrow1.i.i.i.i.us46.us.i = select i1 %i.z, i8 %i.y, i8 5
  %i.aa = icmp eq i8 %narrow.i.i.i.i.fr.i, %narrow1.i.i.i.i.us46.us.i
  br i1 %i.aa, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !42

bb.c:                                             ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.us.i, %i.ac
  %i.ae = and i64 %i.ad, %i.i
  %i.af = sub nsw i64 0, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %.val2.i.us.us.i = load i8, ptr %i.ah, align 1, !range !4, !alias.scope !40, !noalias !41, !noundef !3 ; 2 uses
  %i.ai = add nsw i8 %.val2.i.us.us.i, -18
  %i.aj = icmp samesign ugt i8 %.val2.i.us.us.i, 17
  %narrow1.i.i.i.i.us.us.i = select i1 %i.aj, i8 %i.ai, i8 5
  %i.ak = icmp eq i8 %narrow.i.i.i.i.fr.i, %narrow1.i.i.i.i.us.us.i
  br i1 %i.ak, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !43

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i: ; preds = %.lr.ph.us.i, %bb.c
  %.sroa.06.0.i34.us47.us.i = phi i16 [ %i.am, %bb.c ], [ %i.q, %.lr.ph.us.i ] ; 2 uses
  %i.al = add i16 %.sroa.06.0.i34.us47.us.i, -1
  %i.am = and i16 %i.al, %.sroa.06.0.i34.us47.us.i ; 3 uses
  %.not.i.not.us.us.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %bb.c

._crit_edge.split.us.us.i:                        ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, %.split.us.i
  %2 = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, splat (i8 -1)
  %3 = bitcast <16 x i1> %2 to i16
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !5

5:                                                ; preds = %._crit_edge.split.us.us.i
  %6 = add i64 %.sroa.9.0.i.us.i, 16              ; 2 uses
  %7 = add i64 %.sroa.01.0.i.us.i, %6
  br label %.split.us.i

.split.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.9.0.i.i = phi i64 [ %i.be, %bb.d ], [ 0, %bb.b ]
  %.pn.i.i = phi i64 [ %i.bf, %bb.d ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.an, align 1, !noalias !39 ; 2 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.l
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not33.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i
  %.sroa.06.0.i34.i = phi i16 [ %i.bd, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i ], [ %i.ap, %.split.i ] ; 3 uses
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.01.0.i.i, %i.ar
  %i.at = and i64 %i.as, %i.i
  %i.au = sub nsw i64 0, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -32
  %.val2.i.i = load i8, ptr %i.aw, align 1, !range !4, !alias.scope !40, !noalias !41, !noundef !3 ; 2 uses
  %i.ax = icmp samesign ult i8 %.val2.i.i, 18
  %i.ay = icmp eq i8 %.val.i.i.i.i, %.val2.i.i
  %or.cond.i = select i1 %i.ax, i1 %i.ay, i1 false, !prof !44
  br i1 %or.cond.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, !prof !44

._crit_edge.split.i:                              ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, %.split.i
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.d, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !5

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i: ; preds = %.lr.ph.i
  %i.bc = add i16 %.sroa.06.0.i34.i, -1
  %i.bd = and i16 %i.bc, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.not.i, label %._crit_edge.split.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.split.i
  %i.be = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.bf = add i64 %.sroa.01.0.i.i, %i.be
  br label %.split.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i: ; preds = %.lr.ph.us.i, %bb.c, %.lr.ph.i
  %.pre-phi = phi i64 [ %i.af, %bb.c ], [ %i.au, %.lr.ph.i ], [ %i.v, %.lr.ph.us.i ]
  %i.bg = getelementptr inbounds [32 x i8], ptr %i.j, i64 %.pre-phi
  br label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %._crit_edge.split.us.us.i, %._crit_edge.split.i, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i
  %i.bh = phi ptr [ %i.bg, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i ], [ null, %._crit_edge.split.i ], [ null, %._crit_edge.split.us.us.i ] ; 2 uses
  %.not = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.bi
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB6_25GoogleCloudStorageBuilder11with_configNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([872 x i8]) align 8 captures(none) dereferenceable(872) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(872) %1, i8 noundef range(i8 0, 23) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [616 x i8], align 8               ; 4 uses
  %i.b = alloca [616 x i8], align 8               ; 4 uses
  %i.c = add nsw i8 %2, -18
  %i.d = icmp samesign ugt i8 %2, 17
  %narrow = select i1 %i.d, i8 %i.c, i8 5
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.g
    i8 1, label %bb.m
    i8 2, label %bb.r
    i8 3, label %bb.w
    i8 4, label %bb.c
    i8 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 736
  invoke void @_RINvMs0_NtCsjyY8HP3IvQ6_12object_store6configINtB6_11ConfigValuebE5parseNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %3)
          to label %bb.l unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.a, ptr noundef nonnull align 8 dereferenceable(616) %1, i64 616, i1 false)
  invoke void @_RINvMs2_NtCsjyY8HP3IvQ6_12object_store6clientNtB6_13ClientOptions11with_configNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([616 x i8]) align 8 captures(none) dereferenceable(616) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(616) %i.a, i8 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %3)
          to label %bb.ab unwind label %bb.f

bb.e:                                             ; preds = %.body19, %.body13, %.body7, %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.g, %bb.f ], [ %eh.lpad-body8, %.body7 ], [ %eh.lpad-body14, %.body13 ], [ %eh.lpad-body20, %.body19 ]
  %.sroa.02.0 = phi i1 [ true, %.body ], [ %.sroa.02.1, %bb.f ], [ true, %.body7 ], [ true, %.body13 ], [ true, %.body19 ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.f) #16
          to label %bb.ad unwind label %bb.ac

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.02.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !range !6, !alias.scope !71, !noundef !3
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.k, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit22, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1, i64 872, i1 false)
  ret void

bb.m:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !range !6, !alias.scope !72, !noundef !3
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit10, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i6 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body7 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i6: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit10 unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i6
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.body7:                                           ; preds = %bb.o, %bb.q
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.s, %bb.q ], [ %i.q, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit10: ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.l

bb.r:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 6 uses
  %i.u = load i64, ptr %i.t, align 8, !range !6, !alias.scope !73, !noundef !3
  %i.v = icmp eq i64 %i.u, -9223372036854775808
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit16, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i12 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_0
