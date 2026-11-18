Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api_macros-05cd97aa75190094.wasmi_c_api_macros.6cfab44ae3c9ebd5-cgu.1?download=true
inline.NumInlined: 272
inline.NumDeleted: 168
begin_hunk_0_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCseSCJ3UB48O9_10proc_macro9TokenTreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9m5QBc6kkBd_18wasmi_c_api_macros:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs9m5QBc6kkBd_18wasmi_c_api_macros.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs9m5QBc6kkBd_18wasmi_c_api_macros.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs7_NtCs5uUHdUE6bLW_5quote9___privateINtB5_20IdentFragmentAdapterRRReENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4
  %.val.i = load ptr, ptr %.val, align 8, !noalias !438, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !439, !nonnull !4, !noundef !4
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !noalias !439, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCs5uUHdUE6bLW_5quote14ident_fragmenteNtB5_13IdentFragment3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs7_NtCs5uUHdUE6bLW_5quote9___privateINtB5_20IdentFragmentAdapterRReENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !noalias !442, !nonnull !4, !noundef !4
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noalias !442, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCs5uUHdUE6bLW_5quote14ident_fragmenteNtB5_13IdentFragment3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !447, !noundef !4 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !6, !alias.scope !448, !noundef !4
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !447, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !447
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !447
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !447
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !447
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !447
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !447
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !447
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !447
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !447
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !447
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !447
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !457, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !457, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i, !prof !9

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !458, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !458, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !458
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !458
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCseSCJ3UB48O9_10proc_macro9TokenTreeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !475
  %i.f = mul nuw nsw i64 %i.e, 20                 ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !475
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.h, align 8, !noalias !475
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCseSCJ3UB48O9_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9m5QBc6kkBd_18wasmi_c_api_macros.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !476
  %i.j = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 4) #27, !noalias !476 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.f) #29, !noalias !475
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8, !noalias !475
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !475
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %2 = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.012.047.i = phi ptr [ %i.n, %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.d, %.lr.ph.preheader.i ] ; 14 uses
  %.sroa.7.045.i = phi i64 [ %i.o, %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.044.i = phi i64 [ %3, %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.e, %.lr.ph.preheader.i ]
  %3 = add nsw i64 %.sroa.10.044.i, -1            ; 2 uses
  %4 = icmp eq ptr %.sroa.012.047.i, %2
  br i1 %4, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCseSCJ3UB48O9_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 20
  %i.o = add nuw nsw i64 %.sroa.7.045.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 16
  %i.q = load i8, ptr %i.p, align 4, !range !5, !alias.scope !477, !noundef !4 ; 3 uses
  %i.r = icmp samesign ugt i8 %i.q, 3
  %i.s = zext nneg i8 %i.q to i64
  %i.t = add nsw i64 %i.s, -3
  %i.u = select i1 %i.r, i64 %i.t, i64 0
  switch i64 %i.u, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !478, !noundef !4
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef i32 @_RNvXsa_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v)
          to label %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i unwind label %bb.l, !noalias !479

_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i: ; preds = %bb.g, %bb.f
  %storemerge.i.i.i = phi i32 [ 0, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.y, align 4, !range !480, !alias.scope !481, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %.val.i.i.i.i = load i32, ptr %i.z, align 4, !range !480, !alias.scope !481, !noundef !4 ; 2 uses
  %.sroa.1016.sroa.0.0.extract.trunc17.i = trunc i32 %.val.i.i.i.i to i8
  %.sroa.1016.sroa.6.0.extract.shift18.i = and i32 %.val.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536
  br label %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ab = load i8, ptr %i.aa, align 4, !range !482, !alias.scope !483, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i.i.i = load i32, ptr %i.ac, align 4, !range !480, !alias.scope !483, !noundef !4
  br label %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %i.ae = load i16, ptr %i.ad, align 4, !alias.scope !477
  %.sroa.013.sroa.7.0.extract.trunc.i = zext i16 %i.ae to i32
  br label %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !range !484, !alias.scope !485, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 13
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !485
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !485, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i3.i.i = load i32, ptr %i.al, align 4, !range !480, !alias.scope !485, !noundef !4
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i32 %i.ak to i8
  %.sroa.1016.sroa.6.0.extract.shift.i = and i32 %i.ak, -256
  br label %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i
  %.sroa.013.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ], [ %.val.i.i.i, %bb.h ], [ %.sroa.013.sroa.7.0.extract.trunc.i, %bb.i ], [ %.val.i3.i.i, %bb.j ]
  %.sroa.1016.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1016.sroa.6.0.extract.shift18.i, %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.sroa.1016.sroa.6.0.extract.shift.i, %bb.j ]
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc17.i, %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ], [ %i.ab, %bb.h ], [ undef, %bb.i ], [ %.sroa.1016.sroa.0.0.extract.trunc.i, %bb.j ]
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.ai, %bb.j ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.ag, %bb.j ]
  %.sink.i.i = phi i8 [ %i.q, %_RNvXsz_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i.i ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ]
  %.sroa.013.sroa.0.0.i = load i32, ptr %.sroa.012.047.i, align 4, !range !480, !alias.scope !477, !noundef !4
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %.sroa.7.045.i ; 4 uses
  %.sroa.013.sroa.7.0.insert.ext.i = zext i32 %.sroa.013.sroa.7.0.i to i64
  %.sroa.013.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.013.sroa.7.0.insert.ext.i, 32
  %.sroa.013.sroa.0.0.insert.ext.i = zext i32 %.sroa.013.sroa.0.0.i to i64
  %.sroa.013.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.013.sroa.7.0.insert.shift.i, %.sroa.013.sroa.0.0.insert.ext.i
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i32
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1016.sroa.6.sroa.0.0.i, %.sroa.1016.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store i64 %.sroa.013.sroa.0.0.insert.insert.i, ptr %i.am, align 4, !noalias !479
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.1016.sroa.0.0.insert.insert.i, ptr %.sroa.430.0..sroa_idx.i, align 4, !noalias !479
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.531.0..sroa_idx.i, align 4, !noalias !479
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i8 %.sink.i.i, ptr %.sroa.632.0..sroa_idx.i, align 4, !noalias !479
  %i.an = icmp eq i64 %3, 0
  br i1 %i.an, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCseSCJ3UB48O9_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !479
  unreachable

bb.l:                                             ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.045.i, ptr %i.m, align 8, !noalias !475
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCseSCJ3UB48O9_10proc_macro9TokenTreeEECs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.m unwind label %bb.k, !noalias !479

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCseSCJ3UB48O9_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9m5QBc6kkBd_18wasmi_c_api_macros.exit: ; preds = %.lr.ph.i, %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.thread.i
  %5 = phi ptr [ %i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9m5QBc6kkBd_18wasmi_c_api_macros.exit.thread.i ], [ %i.m, %_RNvXs1b_CseSCJ3UB48O9_10proc_macroNtB6_9TokenTreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.m, %.lr.ph.i ]
  store i64 %i.e, ptr %5, align 8, !noalias !475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 20                  ; 3 uses
  %i.g = icmp eq ptr %.val1, %.val
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit8.i, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtB2j_6client11TokenStreamNtB34_4SpanNtNtB2j_6symbol6SymbolENtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.l = mul nuw i64 %i.i, 20
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtB2j_6client11TokenStreamNtB34_4SpanNtNtB2j_6symbol6SymbolENtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i
  %.sroa.0.09.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load i8, ptr %i.o, align 4, !range !5, !alias.scope !500, !noundef !4
  %i.q = icmp samesign ult i8 %i.p, 4
  br i1 %i.q, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !501, !noundef !4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs0_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.i
  %i.u = icmp eq i64 %i.n, %i.f
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = icmp eq i64 %i.n, %i.f
  br i1 %i.w, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit8.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i8, ptr %i.z, align 4, !range !5, !alias.scope !502, !noundef !4
  %i.ab = icmp samesign ult i8 %i.aa, 4
  br i1 %i.ab, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit8.i

bb.f:                                             ; preds = %.lr.ph12.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !503, !noundef !4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit8.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs0_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit8.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit8.i: ; preds = %bb.g, %bb.f, %.lr.ph12.i
  %i.af = icmp eq i64 %i.y, %i.f
  br i1 %i.af, label %.body, label %.lr.ph12.i

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtB2j_6client11TokenStreamNtB34_4SpanNtNtB2j_6symbol6SymbolENtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit4, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit
  %i.ak = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.al = mul nuw i64 %i.ai, 20
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 4) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtB2j_6client11TokenStreamNtB34_4SpanNtNtB2j_6symbol6SymbolENtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtB2j_6client11TokenStreamNtB34_4SpanNtNtB2j_6symbol6SymbolENtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, %bb.i
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtCseSCJ3UB48O9_10proc_macro6bridge9TokenTreeNtNtB2j_6client11TokenStreamNtB34_4SpanNtNtB2j_6symbol6SymbolENtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCs7djI6dnwcVV_11proc_macro29TokenTreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5                   ; 3 uses
  %i.g = icmp eq ptr %.val1, %.val
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCs7djI6dnwcVV_11proc_macro29TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %.lr.ph

.body:                                            ; preds = %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs7djI6dnwcVV_11proc_macro29TokenTreeNtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.l = shl nuw i64 %i.i, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs7djI6dnwcVV_11proc_macro29TokenTreeNtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCs7djI6dnwcVV_11proc_macro29TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0.i7 = phi i64 [ %i.o, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.0.i7
  %i.o = add nuw nsw i64 %.sroa.0.0.i7, 1         ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro29TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph9
  %i.p = add nuw nsw i64 %.sroa.0.1.i8, 1         ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %.body, label %.lr.ph9

bb.e:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.f
  br i1 %i.s, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i8 = phi i64 [ %i.p, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.1.i8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro29TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #32
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph9
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCs7djI6dnwcVV_11proc_macro29TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros.exit: ; preds = %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs7djI6dnwcVV_11proc_macro29TokenTreeNtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit4, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCs7djI6dnwcVV_11proc_macro29TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros.exit
  %i.y = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.z = shl nuw i64 %i.w, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs7djI6dnwcVV_11proc_macro29TokenTreeNtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs7djI6dnwcVV_11proc_macro29TokenTreeNtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCs7djI6dnwcVV_11proc_macro29TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, %bb.g
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs7djI6dnwcVV_11proc_macro29TokenTreeNtNtBO_5alloc6GlobalEECs9m5QBc6kkBd_18wasmi_c_api_macros.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCseSCJ3UB48O9_10proc_macro9TokenTreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9m5QBc6kkBd_18wasmi_c_api_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCseSCJ3UB48O9_10proc_macro9TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseSCJ3UB48O9_10proc_macro9TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseSCJ3UB48O9_10proc_macro9TokenTreeECs9m5QBc6kkBd_18wasmi_c_api_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
end_hunk_0
