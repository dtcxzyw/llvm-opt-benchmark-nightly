inline.NumInlined: 917
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder8ColorMapEEB15_:bb.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder8ColorMapEBJ_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder8ColorMapEBJ_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3tga7decoder8ColorMapEBJ_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtCs5XDXJCpOCOR_3png7decoder14interlace_info13InterlaceInfoENtNtB1n_6stream13DecodingErrorEECsa5QsYiPB8Gl_5image(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %cond = icmp eq i64 %.0.val, 0
  br i1 %cond, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136
  %i.b = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 1, label %bb.d
  ], !prof !139

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !140, !noalias !136
  store i8 3, ptr %i.a, align 8, !alias.scope !140, !noalias !136
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !136
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5XDXJCpOCOR_3png7decoder12read_decoder25ImageDataCompletionStatusNtNtB11_6stream13DecodingErrorEECsa5QsYiPB8Gl_5image(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %cond = icmp eq i64 %.0.val, 0
  br i1 %cond, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  %i.b = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i
    i64 1, label %bb.d
  ], !prof !139

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !146, !noalias !143
  store i8 3, ptr %i.a, align 8, !alias.scope !146, !noalias !143
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !143
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5XDXJCpOCOR_3png7decoder6stream13DecodingErrorECsa5QsYiPB8Gl_5image.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !149 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !149 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !149, !noundef !10 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !149
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #30, !noalias !149
  br label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !152
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !152, !nonnull !10, !align !36, !noundef !10 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !152, !noundef !10 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !152, !nonnull !10, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !152, !noundef !10
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add nuw i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !152, !noundef !10
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !152
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !152, !nonnull !10, !noundef !10
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !152
  %i.q = load i64, ptr %i.e, align 8, !noalias !152, !noundef !10
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !152
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !152, !nonnull !10, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !152, !noundef !10
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add nuw i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !152, !noundef !10
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !152
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !152, !nonnull !10, !noundef !10
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !152
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !152, !nonnull !10, !noundef !10
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !152, !inline_history !155
  %i.af = load i64, ptr %i.e, align 8, !noalias !152, !noundef !10
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !152
  br label %bb.d

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !152, !noundef !10 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !152, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !152
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1T_14AttributeValueEEENCNvMse_B1y_B1v_15clone_from_impl0EECsa5QsYiPB8Gl_5image(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1q_14AttributeValueEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.g ] ; 2 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !10
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -392
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -352
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(352) %i.h) #28
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -352
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(352) %i.j)
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtBE_14AttributeValueEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1q_14AttributeValueEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

_RNvXs1_NtCs37Y8JGf013z_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB1q_14AttributeValueEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9ITXtChunkEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9ITXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ITXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ITXtChunkEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ITXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ITXtChunkEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9TEXtChunkEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9TEXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9TEXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9TEXtChunkEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9TEXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9TEXtChunkEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9ZTXtChunkEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs5XDXJCpOCOR_3png13text_metadata9ZTXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ZTXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ZTXtChunkEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ZTXtChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs5XDXJCpOCOR_3png13text_metadata9ZTXtChunkEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryEEB1n_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder8DirEntryEEB1n_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtB4_6result6ResultIBC_DNtNtNtB1J_2io7decoder12ImageDecoderEL0_ENtNtB1J_5error10ImageErrorENtNtB4_6marker4SendNtB4a_4SyncEL_EEB1J_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !112, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDG_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtBR_6result6ResultIBy_DNtNtNtB1w_2io7decoder12ImageDecoderEL0_ENtNtB1w_5error10ImageErrorENtNtBR_6marker4SendNtB3X_4SyncEL_ENtNtBP_4drop4Drop4dropB1w_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !113, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #30
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDG_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtBR_6result6ResultIBy_DNtNtNtB1w_2io7decoder12ImageDecoderEL0_ENtNtB1w_5error10ImageErrorENtNtBR_6marker4SendNtB3X_4SyncEL_ENtNtBP_4drop4Drop4dropB1w_.exit

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDG_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtBR_6result6ResultIBy_DNtNtNtB1w_2io7decoder12ImageDecoderEL0_ENtNtB1w_5error10ImageErrorENtNtBR_6marker4SendNtB3X_4SyncEL_ENtNtBP_4drop4Drop4dropB1w_.exit: ; preds = %bb.c, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
end_hunk_0
begin_hunk_1_@_RNvMNtCsa5QsYiPB8Gl_5image8metadataNtB2_11Orientation21from_exif_chunk_inner:bb.a
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [2 x i8], align 2                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [2 x i8], align 2                 ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [2 x i8], align 2                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [2 x i8], align 2                 ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [2 x i8], align 2                 ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [2 x i8], align 2                 ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [2 x i8], align 2                 ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [4 x i8], align 4                ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [4 x i8], align 4                ; 10 uses
  %i.ae = alloca [24 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  store i64 0, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i32 0, ptr %i.ad, align 4
  %i.ah = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 4) ; 4 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !363
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = and i64 %i.ai, 3
  switch i64 %i.aj, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.c
    i64 0, label %bb.f
    i64 1, label %bb.d
  ], !prof !139

default.unreachable:                              ; preds = %bb.bx, %bb.bt, %bb.bp, %bb.bl, %bb.bh, %bb.bc, %bb.ay, %bb.aj, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.o, %bb.k, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult ptr %i.ah, inttoptr (i64 188978561024 to ptr)
  %i.al = and i64 %i.ai, 1095216660480
  %i.am = icmp ne i64 %i.al, 1095216660480
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.assume(i1 %i.am)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr i8, ptr %i.ah, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !366, !noalias !363
  store i8 3, ptr %i.ac, align 8, !alias.scope !366, !noalias !363
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao), !noalias !363
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ap = load i8, ptr %i.ad, align 4, !noundef !10 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !10
  %.not22 = icmp eq i8 %i.ap, %i.ar
  br i1 %.not22, label %bb.g, label %.loopexit

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !363
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  switch i8 %i.ap, label %.loopexit [
    i8 73, label %bb.h
    i8 77, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.at = load i8, ptr %i.as, align 2, !noundef !10
  %i.au = icmp eq i8 %i.at, 42
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 0
  %or.cond = select i1 %i.au, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.j, label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.az = load i8, ptr %i.ay, align 2, !noundef !10
  %i.ba = icmp eq i8 %i.az, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = icmp eq i8 %i.bc, 42
  %or.cond5 = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %or.cond5, label %bb.ax, label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !372
  store i32 0, ptr %i.ab, align 4, !noalias !372
  %i.be = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.ab, i64 noundef 4), !noalias !376 ; 4 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !377
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = and i64 %i.bf, 3
  switch i64 %i.bg, label %default.unreachable [
    i64 2, label %.thread.i
    i64 3, label %bb.l
    i64 0, label %.thread.i
    i64 1, label %bb.m
  ], !prof !139

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp ult ptr %i.be, inttoptr (i64 188978561024 to ptr)
  %i.bi = and i64 %i.bf, 1095216660480
  %i.bj = icmp ne i64 %i.bi, 1095216660480
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.assume(i1 %i.bj)
  br label %.thread.i

bb.m:                                             ; preds = %bb.k
  %i.bk = getelementptr i8, ptr %i.be, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !alias.scope !380, !noalias !377
  store i8 3, ptr %i.aa, align 8, !alias.scope !380, !noalias !377
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl), !noalias !383
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !377
  br label %.loopexit

bb.n:                                             ; preds = %bb.j
  %.val.i.i = load i32, ptr %i.ab, align 4, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !372
  %i.bm = zext i32 %.val.i.i to i64
  store i64 %i.bm, ptr %i.ag, align 8, !alias.scope !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !384
  store i16 0, ptr %i.z, align 2, !noalias !384
  %i.bn = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.z, i64 noundef 2), !noalias !388 ; 4 uses
  %.not.i51.i = icmp eq ptr %i.bn, null
  br i1 %.not.i51.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !389
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = and i64 %i.bo, 3
  switch i64 %i.bp, label %default.unreachable [
    i64 2, label %.thread139.i
    i64 3, label %bb.p
    i64 0, label %.thread139.i
    i64 1, label %bb.q
  ], !prof !139

bb.p:                                             ; preds = %bb.o
  %i.bq = icmp ult ptr %i.bn, inttoptr (i64 188978561024 to ptr)
  %i.br = and i64 %i.bo, 1095216660480
  %i.bs = icmp ne i64 %i.br, 1095216660480
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.assume(i1 %i.bs)
  br label %.thread139.i

bb.q:                                             ; preds = %bb.o
  %i.bt = getelementptr i8, ptr %i.bn, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !alias.scope !392, !noalias !389
  store i8 3, ptr %i.y, align 8, !alias.scope !392, !noalias !389
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu), !noalias !395
  br label %.thread139.i

.thread139.i:                                     ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !389
  br label %.loopexit

bb.r:                                             ; preds = %bb.n
  %.val.i53.i = load i16, ptr %i.z, align 2, !noalias !384 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !384
  %exitcond.not.i237 = icmp eq i16 %.val.i53.i, 0
  br i1 %exitcond.not.i237, label %.loopexit, label %.lr.ph239

bb.s:                                             ; preds = %bb.am
  %exitcond.not.i = icmp eq i16 %i.bv, %.val.i53.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.r, %bb.s
  %.sroa.036.0.i238 = phi i16 [ %i.bv, %bb.s ], [ 0, %bb.r ]
  %i.bv = add nuw i16 %.sroa.036.0.i238, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !396
  store i16 0, ptr %i.x, align 2, !noalias !396
  %i.bw = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.x, i64 noundef 2), !noalias !400 ; 4 uses
  %.not.i56.i = icmp eq ptr %i.bw, null
  br i1 %.not.i56.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !401
  %i.bx = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.by = and i64 %i.bx, 3
  switch i64 %i.by, label %default.unreachable [
    i64 2, label %.thread146.i
    i64 3, label %bb.u
    i64 0, label %.thread146.i
    i64 1, label %bb.v
  ], !prof !139

bb.u:                                             ; preds = %bb.t
  %i.bz = icmp ult ptr %i.bw, inttoptr (i64 188978561024 to ptr)
  %i.ca = and i64 %i.bx, 1095216660480
  %i.cb = icmp ne i64 %i.ca, 1095216660480
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.assume(i1 %i.cb)
  br label %.thread146.i

bb.v:                                             ; preds = %bb.t
  %i.cc = getelementptr i8, ptr %i.bw, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !alias.scope !404, !noalias !401
  store i8 3, ptr %i.w, align 8, !alias.scope !404, !noalias !401
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd), !noalias !407
  br label %.thread146.i

.thread146.i:                                     ; preds = %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !401
  br label %.loopexit

bb.w:                                             ; preds = %.lr.ph239
  %.val.i58.i = load i16, ptr %i.x, align 2, !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !408
  store i16 0, ptr %i.v, align 2, !noalias !408
  %i.ce = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.v, i64 noundef 2), !noalias !412 ; 4 uses
  %.not.i63.i = icmp eq ptr %i.ce, null
  br i1 %.not.i63.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !413
  %i.cf = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cg = and i64 %i.cf, 3
  switch i64 %i.cg, label %default.unreachable [
    i64 2, label %.thread154.i
    i64 3, label %bb.y
    i64 0, label %.thread154.i
    i64 1, label %bb.z
  ], !prof !139

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp ult ptr %i.ce, inttoptr (i64 188978561024 to ptr)
  %i.ci = and i64 %i.cf, 1095216660480
  %i.cj = icmp ne i64 %i.ci, 1095216660480
  call void @llvm.assume(i1 %i.ch)
  call void @llvm.assume(i1 %i.cj)
  br label %.thread154.i

bb.z:                                             ; preds = %bb.x
  %i.ck = getelementptr i8, ptr %i.ce, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !alias.scope !416, !noalias !413
  store i8 3, ptr %i.u, align 8, !alias.scope !416, !noalias !413
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cl), !noalias !419
  br label %.thread154.i

.thread154.i:                                     ; preds = %bb.z, %bb.y, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !413
  br label %.loopexit

bb.aa:                                            ; preds = %bb.w
  %.val.i65.i = load i16, ptr %i.v, align 2, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !420
  store i32 0, ptr %i.t, align 4, !noalias !420
  %i.cm = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.t, i64 noundef 4), !noalias !424 ; 4 uses
  %.not.i70.i = icmp eq ptr %i.cm, null
  br i1 %.not.i70.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !425
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = and i64 %i.cn, 3
  switch i64 %i.co, label %default.unreachable [
    i64 2, label %.thread162.i
    i64 3, label %bb.ac
    i64 0, label %.thread162.i
    i64 1, label %bb.ad
  ], !prof !139

bb.ac:                                            ; preds = %bb.ab
  %i.cp = icmp ult ptr %i.cm, inttoptr (i64 188978561024 to ptr)
  %i.cq = and i64 %i.cn, 1095216660480
  %i.cr = icmp ne i64 %i.cq, 1095216660480
  call void @llvm.assume(i1 %i.cp)
  call void @llvm.assume(i1 %i.cr)
  br label %.thread162.i

bb.ad:                                            ; preds = %bb.ab
  %i.cs = getelementptr i8, ptr %i.cm, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !428, !noalias !425
  store i8 3, ptr %i.s, align 8, !alias.scope !428, !noalias !425
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ct), !noalias !431
  br label %.thread162.i

.thread162.i:                                     ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !425
  br label %.loopexit

bb.ae:                                            ; preds = %bb.aa
  %i.cu = icmp eq i16 %.val.i58.i, 274
  %i.cv = icmp eq i16 %.val.i65.i, 3
  %i.cw = and i1 %i.cu, %i.cv
  %.val.i72.i = load i32, ptr %i.t, align 4, !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !420
  %i.cx = icmp eq i32 %.val.i72.i, 1
  %i.cy = and i1 %i.cw, %i.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !432
  store i16 0, ptr %i.r, align 2, !noalias !432
  %i.cz = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.r, i64 noundef 2), !noalias !436 ; 4 uses
  %.not.i77.i = icmp eq ptr %i.cz, null
  br i1 %.not.i77.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !437
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = and i64 %i.da, 3
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %.thread169.i
    i64 3, label %bb.ag
    i64 0, label %.thread169.i
    i64 1, label %bb.ah
  ], !prof !139

bb.ag:                                            ; preds = %bb.af
  %i.dc = icmp ult ptr %i.cz, inttoptr (i64 188978561024 to ptr)
  %i.dd = and i64 %i.da, 1095216660480
  %i.de = icmp ne i64 %i.dd, 1095216660480
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.de)
  br label %.thread169.i

bb.ah:                                            ; preds = %bb.af
  %i.df = getelementptr i8, ptr %i.cz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !alias.scope !440, !noalias !437
  store i8 3, ptr %i.q, align 8, !alias.scope !440, !noalias !437
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg), !noalias !443
  br label %.thread169.i

.thread169.i:                                     ; preds = %bb.ah, %bb.ag, %bb.af, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !437
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ae
  %.val.i79.i = load i16, ptr %i.r, align 2, !noalias !432 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !444
  store i16 0, ptr %i.p, align 2, !noalias !444
  %i.dh = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.p, i64 noundef 2), !noalias !448 ; 4 uses
  %.not.i84.i = icmp eq ptr %i.dh, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !444
  br i1 %.not.i84.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !449
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = and i64 %i.di, 3
  switch i64 %i.dj, label %default.unreachable [
    i64 2, label %.thread172.i
    i64 3, label %bb.ak
    i64 0, label %.thread172.i
    i64 1, label %bb.al
  ], !prof !139

bb.ak:                                            ; preds = %bb.aj
  %i.dk = icmp ult ptr %i.dh, inttoptr (i64 188978561024 to ptr)
  %i.dl = and i64 %i.di, 1095216660480
  %i.dm = icmp ne i64 %i.dl, 1095216660480
  call void @llvm.assume(i1 %i.dk)
  call void @llvm.assume(i1 %i.dm)
  br label %.thread172.i

bb.al:                                            ; preds = %bb.aj
  %i.dn = getelementptr i8, ptr %i.dh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !alias.scope !452, !noalias !449
  store i8 3, ptr %i.o, align 8, !alias.scope !452, !noalias !449
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.do), !noalias !455
  br label %.thread172.i

.thread172.i:                                     ; preds = %bb.al, %bb.ak, %bb.aj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !449
  br label %.loopexit

bb.am:                                            ; preds = %bb.ai
  br i1 %i.cy, label %bb.an, label %bb.s

bb.an:                                            ; preds = %bb.am
  %i.dp = load i64, ptr %i.ag, align 8, !alias.scope !369, !noundef !10
  %i.dq = add i64 %i.dp, -4
  %..i.i = call noundef range(i16 0, 256) i16 @llvm.umin.i16(i16 %.val.i79.i, i16 255)
  %i.dr = trunc nuw i16 %..i.i to i8
  switch i8 %i.dr, label %bb.ao [
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ap
    i8 4, label %bb.aq
    i8 5, label %bb.ar
    i8 6, label %bb.as
    i8 7, label %bb.at
    i8 8, label %bb.au
    i8 0, label %.loopexit
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ds = icmp ugt i16 %.val.i79.i, 8
  call void @llvm.assume(i1 %i.ds)
  br label %.loopexit

bb.ap:                                            ; preds = %bb.an
  br label %bb.aw

bb.aq:                                            ; preds = %bb.an
  br label %bb.aw

bb.ar:                                            ; preds = %bb.an
  br label %bb.aw

bb.as:                                            ; preds = %bb.an
  br label %bb.aw

bb.at:                                            ; preds = %bb.an
  br label %bb.aw

bb.au:                                            ; preds = %bb.an
  br label %bb.aw

bb.av:                                            ; preds = %bb.an
  br label %bb.aw

bb.aw:                                            ; preds = %bb.an, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sroa.0.0.i = phi i8 [ 2, %bb.ap ], [ 5, %bb.aq ], [ 3, %bb.au ], [ 7, %bb.at ], [ 1, %bb.as ], [ 6, %bb.ar ], [ 0, %bb.av ], [ 4, %bb.an ]
  store i64 %i.dq, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.loopexit

bb.ax:                                            ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !459
  store i32 0, ptr %i.n, align 4, !noalias !459
  %i.dt = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.n, i64 noundef 4), !noalias !463 ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i26, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !464
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = and i64 %i.du, 3
  switch i64 %i.dv, label %default.unreachable [
    i64 2, label %.thread.i27
    i64 3, label %bb.az
    i64 0, label %.thread.i27
    i64 1, label %bb.ba
  ], !prof !139

bb.az:                                            ; preds = %bb.ay
  %i.dw = icmp ult ptr %i.dt, inttoptr (i64 188978561024 to ptr)
  %i.dx = and i64 %i.du, 1095216660480
  %i.dy = icmp ne i64 %i.dx, 1095216660480
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.assume(i1 %i.dy)
  br label %.thread.i27

bb.ba:                                            ; preds = %bb.ay
  %i.dz = getelementptr i8, ptr %i.dt, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dz) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.dz, ptr %i.ea, align 8, !alias.scope !467, !noalias !464
  store i8 3, ptr %i.m, align 8, !alias.scope !467, !noalias !464
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ea), !noalias !470
  br label %.thread.i27

.thread.i27:                                      ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !464
  br label %.loopexit

bb.bb:                                            ; preds = %bb.ax
  %.val.i.i31 = load i32, ptr %i.n, align 4, !noalias !459
  %i.eb = call noundef i32 @llvm.bswap.i32(i32 %.val.i.i31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !459
  %i.ec = zext i32 %i.eb to i64
  store i64 %i.ec, ptr %i.ag, align 8, !alias.scope !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !471
  store i16 0, ptr %i.l, align 2, !noalias !471
  %i.ed = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.l, i64 noundef 2), !noalias !475 ; 4 uses
  %.not.i51.i32 = icmp eq ptr %i.ed, null
  br i1 %.not.i51.i32, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !476
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = and i64 %i.ee, 3
  switch i64 %i.ef, label %default.unreachable [
    i64 2, label %.thread138.i
    i64 3, label %bb.bd
    i64 0, label %.thread138.i
    i64 1, label %bb.be
  ], !prof !139

bb.bd:                                            ; preds = %bb.bc
  %i.eg = icmp ult ptr %i.ed, inttoptr (i64 188978561024 to ptr)
  %i.eh = and i64 %i.ee, 1095216660480
  %i.ei = icmp ne i64 %i.eh, 1095216660480
  call void @llvm.assume(i1 %i.eg)
  call void @llvm.assume(i1 %i.ei)
  br label %.thread138.i

bb.be:                                            ; preds = %bb.bc
  %i.ej = getelementptr i8, ptr %i.ed, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !alias.scope !479, !noalias !476
  store i8 3, ptr %i.k, align 8, !alias.scope !479, !noalias !476
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek), !noalias !482
  br label %.thread138.i

.thread138.i:                                     ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !476
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bb
  %.val.i53.i33 = load i16, ptr %i.l, align 2, !noalias !471 ; 2 uses
  %i.el = call noundef i16 @llvm.bswap.i16(i16 %.val.i53.i33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !471
  %exitcond.not.i35235 = icmp eq i16 %.val.i53.i33, 0
  br i1 %exitcond.not.i35235, label %.loopexit, label %.lr.ph

bb.bg:                                            ; preds = %bb.ca
  %exitcond.not.i35 = icmp eq i16 %i.em, %i.el
  br i1 %exitcond.not.i35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bf, %bb.bg
  %.sroa.036.0.i34236 = phi i16 [ %i.em, %bb.bg ], [ 0, %bb.bf ]
  %i.em = add nuw i16 %.sroa.036.0.i34236, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !483
  store i16 0, ptr %i.j, align 2, !noalias !483
  %i.en = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.j, i64 noundef 2), !noalias !487 ; 4 uses
  %.not.i56.i36 = icmp eq ptr %i.en, null
  br i1 %.not.i56.i36, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !488
  %i.eo = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  switch i64 %i.ep, label %default.unreachable [
    i64 2, label %.thread142.i
    i64 3, label %bb.bi
    i64 0, label %.thread142.i
    i64 1, label %bb.bj
  ], !prof !139

bb.bi:                                            ; preds = %bb.bh
  %i.eq = icmp ult ptr %i.en, inttoptr (i64 188978561024 to ptr)
  %i.er = and i64 %i.eo, 1095216660480
  %i.es = icmp ne i64 %i.er, 1095216660480
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.assume(i1 %i.es)
  br label %.thread142.i

bb.bj:                                            ; preds = %bb.bh
  %i.et = getelementptr i8, ptr %i.en, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8, !alias.scope !491, !noalias !488
  store i8 3, ptr %i.i, align 8, !alias.scope !491, !noalias !488
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eu), !noalias !494
  br label %.thread142.i

.thread142.i:                                     ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !488
  br label %.loopexit

bb.bk:                                            ; preds = %.lr.ph
  %.val.i58.i37 = load i16, ptr %i.j, align 2, !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !495
  store i16 0, ptr %i.h, align 2, !noalias !495
  %i.ev = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.h, i64 noundef 2), !noalias !499 ; 4 uses
  %.not.i63.i38 = icmp eq ptr %i.ev, null
  br i1 %.not.i63.i38, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !500
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 3
  switch i64 %i.ex, label %default.unreachable [
    i64 2, label %.thread149.i
    i64 3, label %bb.bm
    i64 0, label %.thread149.i
    i64 1, label %bb.bn
  ], !prof !139

bb.bm:                                            ; preds = %bb.bl
  %i.ey = icmp ult ptr %i.ev, inttoptr (i64 188978561024 to ptr)
  %i.ez = and i64 %i.ew, 1095216660480
  %i.fa = icmp ne i64 %i.ez, 1095216660480
  call void @llvm.assume(i1 %i.ey)
  call void @llvm.assume(i1 %i.fa)
  br label %.thread149.i

bb.bn:                                            ; preds = %bb.bl
  %i.fb = getelementptr i8, ptr %i.ev, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.fb, ptr %i.fc, align 8, !alias.scope !503, !noalias !500
  store i8 3, ptr %i.g, align 8, !alias.scope !503, !noalias !500
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fc), !noalias !506
  br label %.thread149.i

.thread149.i:                                     ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !500
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bk
  %.val.i65.i39 = load i16, ptr %i.h, align 2, !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !507
  store i32 0, ptr %i.f, align 4, !noalias !507
  %i.fd = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.f, i64 noundef 4), !noalias !511 ; 4 uses
  %.not.i70.i40 = icmp eq ptr %i.fd, null
  br i1 %.not.i70.i40, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !512
  %i.fe = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.ff = and i64 %i.fe, 3
  switch i64 %i.ff, label %default.unreachable [
    i64 2, label %.thread157.i
    i64 3, label %bb.bq
    i64 0, label %.thread157.i
    i64 1, label %bb.br
  ], !prof !139

bb.bq:                                            ; preds = %bb.bp
  %i.fg = icmp ult ptr %i.fd, inttoptr (i64 188978561024 to ptr)
  %i.fh = and i64 %i.fe, 1095216660480
  %i.fi = icmp ne i64 %i.fh, 1095216660480
  call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 %i.fi)
  br label %.thread157.i

bb.br:                                            ; preds = %bb.bp
  %i.fj = getelementptr i8, ptr %i.fd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8, !alias.scope !515, !noalias !512
  store i8 3, ptr %i.e, align 8, !alias.scope !515, !noalias !512
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fk), !noalias !518
  br label %.thread157.i

.thread157.i:                                     ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !512
  br label %.loopexit

bb.bs:                                            ; preds = %bb.bo
  %i.fl = icmp eq i16 %.val.i58.i37, 4609
  %i.fm = icmp eq i16 %.val.i65.i39, 768
  %i.fn = and i1 %i.fl, %i.fm
  %.val.i72.i41 = load i32, ptr %i.f, align 4, !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !507
  %i.fo = icmp eq i32 %.val.i72.i41, 16777216
  %i.fp = and i1 %i.fn, %i.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !519
  store i16 0, ptr %i.d, align 2, !noalias !519
  %i.fq = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.d, i64 noundef 2), !noalias !523 ; 4 uses
  %.not.i77.i42 = icmp eq ptr %i.fq, null
  br i1 %.not.i77.i42, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !524
  %i.fr = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fs = and i64 %i.fr, 3
  switch i64 %i.fs, label %default.unreachable [
    i64 2, label %.thread163.i
    i64 3, label %bb.bu
    i64 0, label %.thread163.i
    i64 1, label %bb.bv
  ], !prof !139

bb.bu:                                            ; preds = %bb.bt
  %i.ft = icmp ult ptr %i.fq, inttoptr (i64 188978561024 to ptr)
  %i.fu = and i64 %i.fr, 1095216660480
  %i.fv = icmp ne i64 %i.fu, 1095216660480
  call void @llvm.assume(i1 %i.ft)
  call void @llvm.assume(i1 %i.fv)
  br label %.thread163.i

bb.bv:                                            ; preds = %bb.bt
  %i.fw = getelementptr i8, ptr %i.fq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fw) ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.fw, ptr %i.fx, align 8, !alias.scope !527, !noalias !524
  store i8 3, ptr %i.c, align 8, !alias.scope !527, !noalias !524
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fx), !noalias !530
  br label %.thread163.i

.thread163.i:                                     ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !524
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bs
  %.val.i79.i43 = load i16, ptr %i.d, align 2, !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !531
  store i16 0, ptr %i.b, align 2, !noalias !531
  %i.fy = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.b, i64 noundef 2), !noalias !535 ; 4 uses
  %.not.i84.i44 = icmp eq ptr %i.fy, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !531
  br i1 %.not.i84.i44, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !536
  %i.fz = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.ga = and i64 %i.fz, 3
  switch i64 %i.ga, label %default.unreachable [
    i64 2, label %.thread166.i
    i64 3, label %bb.by
    i64 0, label %.thread166.i
    i64 1, label %bb.bz
  ], !prof !139

bb.by:                                            ; preds = %bb.bx
  %i.gb = icmp ult ptr %i.fy, inttoptr (i64 188978561024 to ptr)
  %i.gc = and i64 %i.fz, 1095216660480
  %i.gd = icmp ne i64 %i.gc, 1095216660480
  call void @llvm.assume(i1 %i.gb)
  call void @llvm.assume(i1 %i.gd)
  br label %.thread166.i

bb.bz:                                            ; preds = %bb.bx
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE14insert_no_growCsa5QsYiPB8Gl_5image:bb.a
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val2             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !1152
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !41

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.b
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

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDG_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTINtNtCsa5QsYiPB8Gl_5image5hooks13GenericReaderL0_EEEp6OutputINtNtB2g_6result6ResultIB1y_DNtNtNtB2V_2io7decoder12ImageDecoderEL0_ENtNtB2V_5error10ImageErrorENtNtB2g_6marker4SendNtB5o_4SyncEL_EEE14insert_no_growB2V_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !10 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !1155
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !40

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !10 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !11

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !1155
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !41

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
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
  %i.ae = getelementptr inbounds [40 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 24, 393) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !10
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
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #28
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !1158
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !40

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !10
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !11

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !1158
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !41

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !315

bb.h:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !10
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add nuw i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add nuw i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !10
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
          to label %bb.d unwind label %bb.e

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val16
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 24, 393) %2) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 7                            ; 2 uses
  %i.b = lshr i64 %2, 3
  tail call void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.b)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %2, 504                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 4 uses
  %i.f = icmp samesign ult i64 %i.a, 4
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 1, !alias.scope !1161, !noalias !1164
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.e, align 1, !alias.scope !1164, !noalias !1161
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !1161, !noalias !1164
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !1164, !noalias !1161
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.g = and i64 %2, 2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.i, align 1, !alias.scope !1166, !noalias !1169
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.j, align 1, !alias.scope !1169, !noalias !1166
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.i, align 1, !alias.scope !1166, !noalias !1169
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.j, align 1, !alias.scope !1169, !noalias !1166
  %i.k = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = and i64 %2, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.n, align 1, !alias.scope !1171, !noalias !1174
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.o, align 1, !alias.scope !1174, !noalias !1171
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.n, align 1, !alias.scope !1171, !noalias !1174
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.o, align 1, !alias.scope !1174, !noalias !1171
  br label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18check_for_overflow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca [31 x i8], align 1          ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  %i.f = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.f, align 4
  store i32 %2, ptr %i.e, align 4
  store i64 %3, ptr %i.d, align 8
  %i.g = icmp slt i32 %1, 1
  %i.h = icmp slt i32 %2, 1
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %1 to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit.thread, label %_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit, !prof !11

_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit: ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = zext nneg i32 %2 to i64
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.l, i64 %i.m)
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit
  store i8 -1, ptr %0, align 8
  br label %bb.g

_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit.thread: ; preds = %bb.b, %bb.a, %_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1176
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 8, ptr %i.p, align 1, !noalias !1176
  store i8 0, ptr %i.c, align 8, !noalias !1176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1176
  store ptr %i.f, ptr %i.a, align 8, !noalias !1176
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1176
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.q, align 8, !noalias !1176
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1176
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.r, align 8, !noalias !1176
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !1176
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @54, ptr noundef nonnull %i.a)
          to label %_RNCNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18check_for_overflows_0B9_.exit unwind label %bb.d, !noalias !1176

bb.d:                                             ; preds = %_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit.thread
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsa5QsYiPB8Gl_5image5error15ImageFormatHintEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #28
          to label %bb.f unwind label %bb.e, !noalias !1176

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1176
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.s

_RNCNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18check_for_overflows_0B9_.exit: ; preds = %_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder9num_bytes.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1176
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.52.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i, i64 31, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18check_for_overflows_0B9_.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoder10best_entry(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.09.sroa.3 = alloca [9 x i8], align 1     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3ico7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.d unwind label %.thread103
end_hunk_2
