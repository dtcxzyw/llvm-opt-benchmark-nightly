Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.09?download=true
inline.NumInlined: 413
inline.NumDeleted: 202
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufTllEEE14insert_no_growCs1hTjP0dFAwJ_12fontc_crater:bb.a

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14insert_no_growCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !6 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !373
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !12

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !6  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !8

bb.b:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !373
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !13

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRelEE14insert_no_growCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !6 ; 4 uses
  %.sroa.0.07.i = and i64 %.val2, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !376
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !12

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val2                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !6  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !8

bb.b:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val2             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !376
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !13

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.b
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val2
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [24 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeINtNtB6_3vec3VecTNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtB1G_9RunResultNtNtB1G_15ttx_diff_runner10DiffOutputNtB2F_9DiffErrorEEEERNtNtB6_5alloc6GlobalE13new_uninit_inB1G_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !379
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !379 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringB1u_EE13new_uninit_inCs1hTjP0dFAwJ_12fontc_crater() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEE13new_uninit_inB1T_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB6_3vec3VecNtNtNtB1y_2ci4html10AnnotationEEE13new_uninit_inB1y_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 1520, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1y_15ttx_diff_runner10DiffOutputEE13new_uninit_inB1y_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1608) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 1608, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1608) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1y_15ttx_diff_runner9DiffErrorEE13new_uninit_inB1y_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2312) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 2312, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2312) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB6_6string6StringEE13new_uninit_inCs1hTjP0dFAwJ_12fontc_crater() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1z_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB1z_15ttx_diff_runner15CompilerFailureEE13new_uninit_inB1z_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetReEE13new_uninit_inB1z_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 376, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetfEE13new_uninit_inB1z_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(240) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 240, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 240) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1A_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs1hTjP0dFAwJ_12fontc_crater() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringB1p_EE13new_uninit_inCs1hTjP0dFAwJ_12fontc_crater() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEE13new_uninit_inB1O_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetINtNtB6_3vec3VecNtNtNtB1t_2ci4html10AnnotationEEE13new_uninit_inB1t_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1424) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 1424, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1424) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1t_15ttx_diff_runner10DiffOutputEE13new_uninit_inB1t_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1512) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 1512, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1512) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtB1t_15ttx_diff_runner9DiffErrorEE13new_uninit_inB1t_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2216) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 2216, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2216) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtB6_6string6StringEE13new_uninit_inCs1hTjP0dFAwJ_12fontc_crater() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1u_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetRNtNtB1u_15ttx_diff_runner15CompilerFailureEE13new_uninit_inB1u_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetReEE13new_uninit_inB1u_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetfEE13new_uninit_inB1u_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRRNtNtCs1hTjP0dFAwJ_12fontc_crater6target6TargetNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1v_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs1hTjP0dFAwJ_12fontc_crater() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 24, 33) %2, ptr noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !6
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !382
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !12

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !6
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !8

bb.g:                                             ; preds = %._crit_edge.i17
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !382
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !13

_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
end_hunk_0
