Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.03?download=true
inline.NumInlined: 699
inline.NumDeleted: 296
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtCsfr4kGEjnBfC_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCs5JB0sjZZtVB_12tokio_macros:bb.a
  %i.k = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !noalias !1407
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEEECs5JB0sjZZtVB_12tokio_macros.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEEECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1406
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @_RNvMs1O_NtCs1xwejQucwHj_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m), !noalias !1406
  %i.n = load i64, ptr %i.a, align 8, !range !1408, !noalias !1406, !noundef !11 ; 2 uses
  %i.o = add nuw i64 %i.n, 15
  %i.p = sub i64 0, %i.n
  %i.q = and i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1406, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1406
  %i.u = load <2 x i64>, ptr %i.b, align 8, !noalias !1406
  %i.v = add <2 x i64> %i.u, splat (i64 -1)
  store <2 x i64> %i.v, ptr %i.b, align 8, !noalias !1406
  %i.w = call noundef nonnull ptr @_RNvMs1O_NtCs1xwejQucwHj_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !1406 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !alias.scope !1406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1406
  br label %_RNvMsh_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE8make_mutCs5JB0sjZZtVB_12tokio_macros.exit

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8, !alias.scope !1406
  resume { ptr, i32 } %i.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEEECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.d, %bb.c
  store ptr %i.i, ptr %0, align 8, !alias.scope !1406
  br label %_RNvMsh_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE8make_mutCs5JB0sjZZtVB_12tokio_macros.exit

_RNvMsh_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE8make_mutCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.b, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEEECs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.b, %bb.b ], [ %i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEEECs5JB0sjZZtVB_12tokio_macros.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  ret ptr %i.z
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvXs1_NtCsfr4kGEjnBfC_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.val.i.i = load i64, ptr %.val, align 8, !noundef !11 ; 2 uses
  %i.a = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = add i64 %.val.i.i, 1                     ; 2 uses
  store i64 %i.b, ptr %.val, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvXsx_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXsx_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a
  ret ptr %.val
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1411, !noundef !11 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1411, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1411, !nonnull !11, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1411
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1417
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1418, !noundef !11 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1418, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1418
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1418
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCscBrinq2mG3I_3syn5parseINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_5token4SemiENtB5_5Parse5parseCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 12)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call { ptr, ptr } @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer6cursor(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = tail call noundef zeroext i1 @_RNvXs8O_NtCscBrinq2mG3I_3syn5tokenNtB6_4SemiNtB6_5Token4peek(ptr noundef %i.c, ptr noundef %i.d)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvMs9_NtCscBrinq2mG3I_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4SemiECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.g = load i64, ptr %i.a, align 8, !range !16, !alias.scope !1426, !noundef !11 ; 2 uses
  %.not.i = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !alias.scope !1427
  %2 = freeze i32 %.sroa.0.0.copyload.i           ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx7, i64 12, i1 false)
  store i64 %i.g, ptr %0, align 8, !alias.scope !1428
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %.sroa.411.0..sroa_idx, align 8, !alias.scope !1428
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = zext i32 %2 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or disjoint i64 %4, 1
  store i64 %5, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs5JB0sjZZtVB_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1433
  %i.e = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 1) #21, !noalias !1433 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs5JB0sjZZtVB_12tokio_macros.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.c) #23, !noalias !1434
  unreachable

_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i, ptr nonnull readonly align 1 %i.a, i64 range(i64 0, -9223372036854775808) %i.c, i1 false)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.i.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.c, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXss_NtCsfr4kGEjnBfC_11proc_macro23impNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRReE2eqCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !11, !noundef !11 ; 6 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.e, align 8, !noundef !11 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !14, !noundef !11 ; 2 uses
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1456, !noundef !11
  %i.k = icmp eq i64 %i.j, %.val1.i
  br i1 %i.k, label %bb.d, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !alias.scope !1456, !nonnull !11, !noundef !11
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.l, ptr nonnull readonly %.val.i, i64 %.val1.i), !alias.scope !1458, !noalias !1456
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre11starts_withReECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2), !noalias !1456
  br i1 %i.n, label %bb.f, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !alias.scope !1456, !nonnull !11, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1456, !noundef !11 ; 2 uses
  %i.r = icmp ult i64 %.val1.i, 3
  br i1 %i.r, label %.split.i.i.i.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.f
  %i.s = icmp eq i64 %.val1.i, 2
  br i1 %i.s, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.g, !prof !23

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1459, !noundef !11
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i, %.split.i.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef 2, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18, !noalias !1456
  unreachable

_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i, %.split.i.i.i.i
  %i.w = add i64 %.val1.i, -2
  %i.x = icmp eq i64 %i.q, %i.w
  br i1 %i.x, label %bb.h, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.h:                                             ; preds = %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %bcmp.i2.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.o, ptr nonnull readonly %i.y, i64 %i.q), !alias.scope !1460, !noalias !1456
  %i.z = icmp eq i32 %bcmp.i2.i.i, 0
  br label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1461
  store i64 0, ptr %i.c, align 8, !noalias !1461
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1461
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1461
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.aa, align 8, !noalias !1461
  store ptr %i.c, ptr %i.b, align 8, !noalias !1461
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @6, ptr %i.ab, align 8, !noalias !1461
  %i.ac = invoke noundef zeroext i1 @_RNvXsN_Csa5ERaWwhjCQ_10proc_macroNtB5_5IdentNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.j, !noalias !1462

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %common.resume unwind label %bb.m, !noalias !1462

bb.k:                                             ; preds = %bb.i
  br i1 %i.ac, label %bb.l, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit, !prof !26

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %.noexc.i.i unwind label %bb.j, !noalias !1462

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1462
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.aj, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1461
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val6 = load i64, ptr %i.af, align 8, !noundef !11
  %i.ag = icmp eq i64 %.val6, %.val1.i
  br i1 %i.ag, label %bb.n, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit

bb.n:                                             ; preds = %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val5 = load ptr, ptr %i.ah, align 8, !nonnull !11, !noundef !11
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.val5, ptr nonnull readonly %.val.i, i64 %.val1.i)
  %i.ai = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.n, %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit
  %.sroa.0.0.i = phi i1 [ %i.ai, %bb.n ], [ false, %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.o

bb.o:                                             ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.h, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.e, %bb.d, %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit
  %.sroa.0.0.in = phi i1 [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit ], [ false, %bb.c ], [ false, %bb.e ], [ %i.m, %bb.d ], [ %i.z, %bb.h ], [ false, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc unwind label %bb.d, !noalias !1471

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvXsq_NtCsaoeXog3N7id_5quote9to_tokensNtCsfr4kGEjnBfC_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.b, !noalias !1472

bb.b:                                             ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          cleanup
end_hunk_0
