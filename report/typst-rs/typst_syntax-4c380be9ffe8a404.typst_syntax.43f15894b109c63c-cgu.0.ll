Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1m_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1080, !nonnull !19, !noundef !19 ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.a
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1080, !noundef !19 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !1080, !noundef !19 ; 4 uses
  %i.k = icmp ult i64 %i.j, 288230376151711744
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1080, !noundef !19 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.h
  store i64 %i.n, ptr %i.i, align 8, !noalias !1080
  br label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1080, !nonnull !19, !noundef !19 ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.j
  %i.s = shl nuw nsw i64 %i.h, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !noalias !1080
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2d_(ptr nonnull align 8 dereferenceable(40) %0) #59
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.c to i64
  %i.w = sub nuw i64 %i.v, %i.u
  %i.x = lshr exact i64 %i.w, 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1080, !nonnull !19, !noundef !19 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub nuw i64 %i.u, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.ac, i64 noundef %i.x)
          to label %bb.h unwind label %bb.f, !noalias !1080

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1080, !noundef !19 ; 3 uses
  %.not.i.i4.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i4.i, label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1080, !noundef !19 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 288230376151711744
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1080, !noundef !19 ; 2 uses
  %.not3.i.i5.i = icmp eq i64 %i.aj, %i.ag
  br i1 %.not3.i.i5.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ak = add i64 %i.ag, %i.ae
  store i64 %i.ak, ptr %i.af, align 8, !noalias !1080
  br label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.y, align 8, !noalias !1080, !nonnull !19, !noundef !19 ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aj
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ag
  %i.ao = shl nuw nsw i64 %i.ae, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.am, i64 %i.ao, i1 false), !noalias !1080
  br label %bb.j

_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit: ; preds = %bb.b, %bb.d, %bb.h, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1t_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1083, !nonnull !19, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1083, !nonnull !19, !noundef !19
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.f)
          to label %bb.d unwind label %bb.b, !noalias !1083

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1083, !noundef !19 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2k_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !alias.scope !1083, !nonnull !19, !noundef !19
  %i.l = shl nuw i64 %i.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1083
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2k_.exit.i

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1083, !noundef !19 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !alias.scope !1083, !nonnull !19, !noundef !19
  %i.q = shl nuw i64 %i.n, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1083
  br label %_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtBO_5alloc6GlobalEEB2k_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB10_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEEB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !align !37, !noundef !19 ; 2 uses
  %i.b = atomicrmw sub ptr %.val, i32 1 release, align 4
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, -1073741825
  %or.cond.i.i = icmp eq i32 %i.d, -2147483648
  br i1 %or.cond.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1G_.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val, i32 noundef %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1G_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1G_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEEB20_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !19, !align !29, !noundef !19 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !20, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #57
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw sub ptr %.val, i32 1073741823 release, align 4
  %i.i = add i32 %i.h, -1073741823                ; 2 uses
  %or.cond.not.i.i = icmp ult i32 %i.i, 1073741824
  br i1 %or.cond.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit, label %bb.e, !prof !39

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val, i32 noundef %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1e_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2i_10SyntaxNode10with_hintsINtB1c_6EcoVecB1K_EE0EEB2k_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !range !20, !alias.scope !1089, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1089, !nonnull !19 ; 6 uses
  %.not.i.i = icmp ne ptr %i.e, inttoptr (i64 16 to ptr) ; 2 uses
  %or.cond.not.i.i = select i1 %i.d, i1 %.not.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.b, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !1089
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1089, !noundef !19 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1089, !noundef !19
  %i.l = sub i64 %i.k, %i.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef %i.l)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i unwind label %bb.c, !noalias !1088

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %i.e, i64 0) #59
          to label %common.resume.i unwind label %bb.h, !noalias !1088

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.a
  br i1 %.not.i.i, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax.exit

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit.i
  %.val16.in.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.pre.i = load i64, ptr %.val16.in.phi.trans.insert.i, align 8, !alias.scope !1088
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i, %bb.b
  %.val16.i = phi i64 [ %.val16.pre.i, %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ 0, %bb.b ]
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1088
  %.not.i.i.i = icmp eq i64 %i.o, 1
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1088
  %i.p = getelementptr i8, ptr %i.e, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !1088, !noundef !19 ; 2 uses
  %i.q = icmp ult i64 %.val.i.i.i.i, 1152921504606846976
  %i.r = shl i64 %.val.i.i.i.i, 4                 ; 2 uses
  %i.s = icmp ult i64 %i.r, 9223372036854775784
  %narrow.i.i.i.i.i = and i1 %i.q, %i.s
  br i1 %narrow.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !1088
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.t = add nuw nsw i64 %i.r, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.u, align 8, !noalias !1088
  store i64 8, ptr %i.a, align 8, !noalias !1088
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.t, ptr %i.v, align 8, !noalias !1088
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef %.val16.i)
          to label %bb.f unwind label %bb.e, !noalias !1088

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.g, !noalias !1088

bb.f:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1088
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax.exit

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1088
  unreachable

common.resume.i:                                  ; preds = %bb.e, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1088
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2f_3astB2b_4castNtB33_17DestructuringItemEEINtNtCs1xwejQucwHj_5alloc3vec3VecNtB33_5IdentENCNvMs14_B33_NtB33_13Destructuring8bindings0EEB2f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !1096, !noundef !19 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load i64, ptr %i.a, align 8, !alias.scope !1096 ; 2 uses
  %i.b = icmp eq ptr %.val4.i, null
  %i.c = icmp eq i64 %.val5.i, 0
  %or.cond.i.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  %i.d = shl nuw i64 %.val5.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1097
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1096, !noundef !19 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !1096 ; 2 uses
  %i.g = icmp eq ptr %.val.i, null
  %i.h = icmp eq i64 %.val1.i, 0
  %or.cond.i8.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i8.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2C_3astB2y_4castNtB3q_17DestructuringItemEENCNvMs14_B3q_NtB3q_13Destructuring8bindings0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtB3q_5IdentEEEB2C_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.i = shl nuw i64 %.val1.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1098
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2C_3astB2y_4castNtB3q_17DestructuringItemEENCNvMs14_B3q_NtB3q_13Destructuring8bindings0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtB3q_5IdentEEEB2C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2C_3astB2y_4castNtB3q_17DestructuringItemEENCNvMs14_B3q_NtB3q_13Destructuring8bindings0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtB3q_5IdentEEEB2C_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEEB1n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1120, !nonnull !19, !noundef !19 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !1120, !noundef !19
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !noalias !1120
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #59
          to label %bb.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.g = load i64, ptr %0, align 8, !range !35, !alias.scope !1121, !noundef !19
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1123, !noundef !19
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1125, !noundef !19 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !noalias !1126, !noundef !19
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !noalias !1126
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.l) #57, !inline_history !2
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEEEB15_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node14LinkedChildrenEBF_.exit, %bb.d, %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB24_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1145, !noundef !19 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB1O_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1147, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEEB1Y_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1147, !nonnull !19, !noundef !19 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1148
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
end_hunk_0
begin_hunk_1_@_RNvMNtCs5PEMdK7bMAG_12typst_syntax6sourceNtB2_6Source7replace:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit4.sink.split: ; preds = %bb.o, %bb.h
  %.sroa.3.0.ph = phi i64 [ 0, %bb.h ], [ %i.ak, %bb.o ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.h ], [ %i.aj, %bb.o ]
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit4: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit4.sink.split, %bb.o, %bb.h
  %.sroa.3.0 = phi i64 [ %i.ak, %bb.o ], [ 0, %bb.h ], [ %.sroa.3.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit4.sink.split ]
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.o ], [ 0, %bb.h ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit4.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ao = insertvalue { i64, i64 } %i.an, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ao

bb.p:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvMNtCs5PEMdK7bMAG_12typst_syntax6sourceNtB2_6Source9with_root(i16 noundef range(i16 1, 0) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 10 uses
  %i.b = invoke fastcc noundef nonnull ptr @_RNvMNtCs5PEMdK7bMAG_12typst_syntax5linesINtB2_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE3newB4_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  store i64 1, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i128 0, ptr %i.d, align 16
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.b, ptr %.sroa.52.0..sroa_idx, align 16
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i16 %0, ptr %.sroa.63.0..sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !1768
  %i.e = tail call noundef align 16 dereferenceable_or_null(80) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 16) #60, !noalias !1768 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.f, !prof !23

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 80) #58
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEEEB22_(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.a) #59
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, ptr noundef nonnull align 16 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %eh.lpad-body15

bb.g:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %2) #59
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5PEMdK7bMAG_12typst_syntax7packageNtB2_15PackageManifest8validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(432) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [20 x i8], align 4                ; 12 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 231
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1786, !noalias !1785, !noundef !19 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.m, -1                ; 2 uses
  %i.n = and i8 %i.m, 127
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1786, !noalias !1785
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.q, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1787, !noalias !1784, !noundef !19 ; 2 uses
  %.not.i1.i = icmp sgt i8 %i.s, -1               ; 2 uses
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1787, !noalias !1784
  %.sroa.3.0.i2.i = select i1 %.not.i1.i, i64 %i.w, i64 %i.u
  %i.x = icmp eq i64 %.sroa.3.0.i.i, %.sroa.3.0.i2.i
  br i1 %i.x, label %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1787, !noalias !1784, !nonnull !19
  %.sroa.0.0.i3.i = select i1 %.not.i1.i, ptr %i.z, ptr %i.y
  %i.aa = load ptr, ptr %i.k, align 8, !alias.scope !1786, !noalias !1785, !nonnull !19
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.aa, ptr %i.k
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i, ptr nonnull %.sroa.0.0.i3.i, i64 %.sroa.3.0.i.i)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br i1 %i.ab, label %bb.b, label %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 292 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !19
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !noundef !19
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %bb.e

_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.a, %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.j, i8 0, i64 15, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  store i8 -128, ptr %.sroa.47.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.ah = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @246, ptr noundef nonnull %i.i)
          to label %bb.w unwind label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !19
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !noundef !19
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.ao = load i32, ptr %i.an, align 4, !noundef !19
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !19
  %.not = icmp eq i32 %i.ao, %i.aq
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.h, i8 0, i64 15, i1 false)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  store i8 -128, ptr %.sroa.428.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ac, ptr %i.g, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsc_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.ar = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @244, ptr noundef nonnull %i.g)
          to label %bb.t unwind label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !range !1788, !noundef !19
  %.not73 = icmp eq i32 %i.at, 2
  br i1 %.not73, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 8 dereferenceable(20) %i.as, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1789
  call void @_RNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !1789
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.av = load i32, ptr %i.au, align 8, !noalias !1789, !noundef !19 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !1789, !noundef !19 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !noalias !1789, !noundef !19 ; 3 uses
  store i32 %i.av, ptr %i.e, align 4, !alias.scope !1789
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ax, ptr %i.ba, align 4, !alias.scope !1789
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.az, ptr %i.bb, align 4, !alias.scope !1789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1789
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !1790, !noalias !1791, !noundef !19 ; 2 uses
  %i.be = icmp eq i32 %i.av, %i.bd
  br i1 %i.be, label %bb.h, label %.split85

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.f, align 4, !range !47, !alias.scope !1790, !noalias !1791, !noundef !19
  %i.bg = trunc nuw i32 %i.bf to i1               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = icmp ne i32 %i.ax, %i.bi                ; 2 uses
  %or.cond.not = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %or.cond.not, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !range !47, !alias.scope !1790, !noalias !1791, !noundef !19
  %i.bm = trunc nuw i32 %i.bl to i1
  br i1 %i.bm, label %bb.k, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread

.split85:                                         ; preds = %bb.g
  %i.bn = icmp ugt i32 %i.av, %i.bd
  br i1 %i.bn, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82

.thread.i:                                        ; preds = %bb.h, %bb.k
  br i1 %i.bj, label %.split84, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !range !47, !alias.scope !1792, !noalias !1793, !noundef !19
  %i.bq = trunc nuw i32 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp ugt i32 %i.az, %i.bs
  %or.cond91 = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %or.cond91, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82

.split84:                                         ; preds = %.thread.i
  %i.bu = icmp ugt i32 %i.ax, %i.bi
  br i1 %i.bu, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82

bb.k:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !1790, !noalias !1791
  %i.bx = icmp ne i32 %i.az, %i.bw                ; 2 uses
  %brmerge.i.not = and i1 %i.bx, %i.bg
  br i1 %brmerge.i.not, label %.thread.i, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit

_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit: ; preds = %bb.k
  br i1 %i.bx, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread

bb.l:                                             ; preds = %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread, %bb.f
  store i64 0, ptr %0, align 8
  br label %bb.p

_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82: ; preds = %bb.j, %.split85, %.split84, %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.450.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsh_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_12VersionBoundNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.by, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsc_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  %i.bz = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @242, ptr noundef nonnull %i.c)
          to label %bb.n unwind label %bb.m

_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread: ; preds = %bb.j, %bb.i, %.split85, %.split84, %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.m:                                             ; preds = %bb.o, %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %bb.r unwind label %bb.q

bb.n:                                             ; preds = %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82
  br i1 %i.bz, label %bb.o, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit78, !prof !23

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #62
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.o
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit78: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit76, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit78, %bb.l
  ret void

bb.q:                                             ; preds = %bb.v, %bb.s, %bb.m
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.r:                                             ; preds = %bb.v, %bb.s, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.v ], [ %i.cd, %bb.s ], [ %i.ca, %bb.m ]
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.u, %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #59
          to label %bb.r unwind label %bb.q

bb.t:                                             ; preds = %bb.e
  br i1 %i.ar, label %bb.u, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit76, !prof !23

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #62
          to label %.noexc75 unwind label %bb.s

.noexc75:                                         ; preds = %bb.u
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit76: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 1, ptr %0, align 8
  br label %bb.p

bb.v:                                             ; preds = %bb.x, %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #59
          to label %bb.r unwind label %bb.q

bb.w:                                             ; preds = %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  br i1 %i.ah, label %bb.x, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !23

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #62
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.x
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 1, ptr %0, align 8
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 13 uses
  %i.d = icmp samesign ult i32 %1, 128
  %.sink7.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sink7.sroa.gep8 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sink7.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.e = icmp samesign ult i32 %1, 2048
  %i.f = trunc i32 %1 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128
  %i.i = lshr i32 %1, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %1, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %1, 18
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = or disjoint i8 %i.r, -16
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.j, -64
  store i8 %i.t, ptr %i.c, align 4, !alias.scope !1807
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = or disjoint i8 %i.n, -32
  store i8 %i.v, ptr %i.c, align 4, !alias.scope !1807
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.l, ptr %i.w, align 1, !alias.scope !1807
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.f:                                             ; preds = %bb.d
  store i8 %i.s, ptr %i.c, align 4, !alias.scope !1807
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.p, ptr %i.x, align 1, !alias.scope !1807
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.l, ptr %i.y, align 2, !alias.scope !1807
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sink7.sroa.phi = phi ptr [ %.sink7.sroa.gep, %bb.c ], [ %.sink7.sroa.gep8, %bb.e ], [ %.sink7.sroa.gep9, %bb.f ]
  %.sroa.0.05.i = phi i64 [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.f ]
  store i8 %i.h, ptr %.sink7.sroa.phi, align 1, !alias.scope !1807
  call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_1
begin_hunk_2_@_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2p_3astB2l_4castNtB3d_17DestructuringItemEENCNvMs14_B3d_NtB3d_13Destructuring8bindings0EINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtB3d_5IdentEENtNtNtB9_6traits8iterator8Iterator4nextB2p_:bb.a

.loopexit53.i.i.i:                                ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtBU_4node10SyntaxNode4castNtBS_17DestructuringItemEINtB7_5FnMutTRB1q_EE8call_mutBU_.exit.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtBU_4node10SyntaxNode4castNtBS_17DestructuringItemEINtB7_5FnMutTRB1q_EE8call_mutBU_.exit.peel.i.i.i
  %.lcssa46.i.i.i = phi { i64, ptr } [ %i.t, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtBU_4node10SyntaxNode4castNtBS_17DestructuringItemEINtB7_5FnMutTRB1q_EE8call_mutBU_.exit.peel.i.i.i ], [ %i.z, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtBU_4node10SyntaxNode4castNtBS_17DestructuringItemEINtB7_5FnMutTRB1q_EE8call_mutBU_.exit.i.i.i ]
  %.lcssa44.i.i.i = phi i64 [ %i.u, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtBU_4node10SyntaxNode4castNtBS_17DestructuringItemEINtB7_5FnMutTRB1q_EE8call_mutBU_.exit.peel.i.i.i ], [ %i.aa, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtBU_4node10SyntaxNode4castNtBS_17DestructuringItemEINtB7_5FnMutTRB1q_EE8call_mutBU_.exit.i.i.i ]
  %.lcssa28.i.i.i = phi ptr [ %i.s, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtBU_4node10SyntaxNode4castNtBS_17DestructuringItemEINtB7_5FnMutTRB1q_EE8call_mutBU_.exit.peel.i.i.i ], [ %i.y, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtBU_4node10SyntaxNode4castNtBS_17DestructuringItemEINtB7_5FnMutTRB1q_EE8call_mutBU_.exit.i.i.i ]
  store ptr %.lcssa28.i.i.i, ptr %i.g, align 8, !alias.scope !10738, !noalias !10739
  %i.ab = extractvalue { i64, ptr } %.lcssa46.i.i.i, 1
  br label %bb.j

.loopexit49.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.lcssa37.i.i.i = phi ptr [ %i.p, %.lr.ph.preheader.i.i.i ], [ %i.x, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.s, %.lr.ph.preheader.i.i.i ], [ %i.y, %.lr.ph.i.i.i ]
  store ptr %.lcssa.i.i.i, ptr %i.g, align 8, !alias.scope !10738, !noalias !10739
  br label %bb.j

.loopexit50.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.lcssa38.i.i.i = phi ptr [ %i.p, %.lr.ph.preheader.i.i.i ], [ %i.x, %.lr.ph.i.i.i ]
  %.lcssa24.i.i.i = phi ptr [ %i.s, %.lr.ph.preheader.i.i.i ], [ %i.y, %.lr.ph.i.i.i ]
  store ptr %.lcssa24.i.i.i, ptr %i.g, align 8, !alias.scope !10738, !noalias !10739
  br label %bb.j

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.lcssa39.i.i.i = phi ptr [ %i.p, %.lr.ph.preheader.i.i.i ], [ %i.x, %.lr.ph.i.i.i ]
  %.lcssa25.i.i.i = phi ptr [ %i.s, %.lr.ph.preheader.i.i.i ], [ %i.y, %.lr.ph.i.i.i ]
  store ptr %.lcssa25.i.i.i, ptr %i.g, align 8, !alias.scope !10738, !noalias !10739
  br label %bb.j

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.i
  %.lcssa29.i.i.i = phi ptr [ %i.y, %bb.i ], [ %i.s, %bb.h ]
  store ptr %.lcssa29.i.i.i, ptr %i.g, align 8, !alias.scope !10738, !noalias !10739
  br label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread

bb.j:                                             ; preds = %.loopexit.i.i.i, %.loopexit50.i.i.i, %.loopexit49.i.i.i, %.loopexit51.i.i.i, %.loopexit52.i.i.i, %.loopexit53.i.i.i
  %.sroa.031.0.ph = phi i64 [ %.lcssa44.i.i.i, %.loopexit53.i.i.i ], [ 63, %.loopexit52.i.i.i ], [ 62, %.loopexit51.i.i.i ], [ 64, %.loopexit49.i.i.i ], [ 65, %.loopexit50.i.i.i ], [ 61, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.8.0.ph = phi ptr [ %i.ab, %.loopexit53.i.i.i ], [ %.lcssa41.i.i.i, %.loopexit52.i.i.i ], [ %.lcssa40.i.i.i, %.loopexit51.i.i.i ], [ %.lcssa37.i.i.i, %.loopexit49.i.i.i ], [ %.lcssa38.i.i.i, %.loopexit50.i.i.i ], [ %.lcssa39.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10749
  store i64 %.sroa.031.0.ph, ptr %i.b, align 8, !noalias !10749
  store ptr %.sroa.8.0.ph, ptr %.sroa.433.0..sroa_idx, align 8, !noalias !10749
  %i.ac = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.031.0.ph, i64 63)
  switch i64 %i.ac, label %bb.k [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %.preheader
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvMs13_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7Pattern8bindings(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b), !noalias !10749, !inline_history !10655
  br label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10752), !noalias !10750
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.sroa.03.0.i.i.i.i = phi ptr [ %.sroa.8.0.ph, %bb.m ], [ %i.an, %bb.p ] ; 3 uses
  %i.ad = load i8, ptr %.sroa.03.0.i.i.i.i, align 8, !range !30, !noalias !10753, !noundef !19
  switch i8 %i.ad, label %.unreachabledefault [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
    i8 1, label %bb.o
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
    i8 3, label %bb.p
  ]

.unreachabledefault:                              ; preds = %bb.n
  unreachable

default.unreachable:                              ; preds = %.preheader
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !10753, !nonnull !19, !noundef !19 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !10754, !nonnull !19, !noundef !19 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !10754, !noundef !19
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.aj
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !10753, !nonnull !19, !noundef !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %bb.n

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i: ; preds = %bb.n, %bb.n, %bb.o
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ak, %bb.o ], [ inttoptr (i64 8 to ptr), %bb.n ], [ inttoptr (i64 8 to ptr), %bb.n ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ah, %bb.o ], [ inttoptr (i64 8 to ptr), %bb.n ], [ inttoptr (i64 8 to ptr), %bb.n ]
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i
  %i.ao = phi ptr [ %i.aq, %bb.s ], [ %.sroa.3.0.i.i.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i.i ] ; 3 uses
  %i.ap = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.ao
  br i1 %i.ap, label %_RNvMsO_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_5Named7pattern.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -32 ; 5 uses
  %.sroa.0.0.in.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ao, i64 -31
  %.sroa.0.0.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.0.0.in.i.i.i.i.i.i.i.i, align 1, !range !21, !alias.scope !10755, !noalias !10756, !noundef !19
  switch i8 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.s [
    i8 56, label %.loopexit23.i.loopexit.i.i.i.loopexit
    i8 107, label %.loopexit23.i.loopexit.i.i.i.loopexit233
    i8 -121, label %.loopexit23.i.loopexit.i.i.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.ar = tail call { i64, ptr } @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq), !alias.scope !10755, !noalias !10756 ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i64 %i.as, -1
  br i1 %.not.i.i.i.i.i.i.i.i13, label %bb.q, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = extractvalue { i64, ptr } %i.ar, 1
  br label %.loopexit23.i.loopexit.i.i.i

.loopexit23.i.loopexit.i.i.i.loopexit:            ; preds = %bb.r
  br label %.loopexit23.i.loopexit.i.i.i

.loopexit23.i.loopexit.i.i.i.loopexit233:         ; preds = %bb.r
  br label %.loopexit23.i.loopexit.i.i.i

.loopexit23.i.loopexit.i.i.i:                     ; preds = %bb.r, %.loopexit23.i.loopexit.i.i.i.loopexit233, %.loopexit23.i.loopexit.i.i.i.loopexit, %bb.t
  %.sroa.9.0.ph.i.i.i.i.i = phi ptr [ %i.aq, %.loopexit23.i.loopexit.i.i.i.loopexit233 ], [ %i.aq, %.loopexit23.i.loopexit.i.i.i.loopexit ], [ %i.at, %bb.t ], [ %i.aq, %bb.r ]
  %.sroa.0.0.ph.i.i.i.i.i = phi i64 [ 62, %.loopexit23.i.loopexit.i.i.i.loopexit233 ], [ 61, %.loopexit23.i.loopexit.i.i.i.loopexit ], [ %i.as, %bb.t ], [ 63, %bb.r ]
  %i.au = ptrtoint ptr %.sroa.9.0.ph.i.i.i.i.i to i64
  br label %_RNvMsO_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_5Named7pattern.exit

_RNvMsO_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_5Named7pattern.exit: ; preds = %bb.q, %.loopexit23.i.loopexit.i.i.i
  %storemerge156 = phi i64 [ %.sroa.0.0.ph.i.i.i.i.i, %.loopexit23.i.loopexit.i.i.i ], [ 31, %bb.q ]
  %storemerge = phi i64 [ %i.au, %.loopexit23.i.loopexit.i.i.i ], [ ptrtoint (ptr @_RNvNvXs76_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4NoneNtB8_7AstNode11placeholder11PLACEHOLDER to i64), %bb.q ]
  store i64 %storemerge156, ptr %i.a, align 8, !alias.scope !10757, !noalias !10758
  store i64 %storemerge, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !10757, !noalias !10758
  call void @_RNvMs13_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7Pattern8bindings(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a), !noalias !10759, !inline_history !10655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10750
  br label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit

.preheader:                                       ; preds = %bb.j, %bb.v
  %.sroa.03.0.i.i = phi ptr [ %i.bf, %bb.v ], [ %.sroa.8.0.ph, %bb.j ] ; 3 uses
  %i.av = load i8, ptr %.sroa.03.0.i.i, align 8, !range !30, !noalias !10750, !noundef !19
  switch i8 %i.av, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 1, label %bb.u
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
    i8 3, label %bb.v
  ]

bb.u:                                             ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !10750, !nonnull !19, !noundef !19 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !10760, !nonnull !19, !noundef !19 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !10760, !noundef !19
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i

bb.v:                                             ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !10750, !nonnull !19, !noundef !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  br label %.preheader

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i: ; preds = %.preheader, %.preheader, %bb.u
  %.sroa.3.0.i.i = phi ptr [ %i.bc, %bb.u ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %i.az, %bb.u ], [ inttoptr (i64 8 to ptr), %.preheader ], [ inttoptr (i64 8 to ptr), %.preheader ]
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i
  %i.bg = phi ptr [ %i.bi, %bb.x ], [ %.sroa.0.0.i.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i ] ; 4 uses
  %i.bh = icmp eq ptr %i.bg, %.sroa.3.0.i.i
  br i1 %i.bh, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.sroa.01.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %.sroa.01.0.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i, align 1, !range !21, !alias.scope !10761, !noalias !10762, !noundef !19
  %.not.i.i = icmp eq i8 %.sroa.01.0.i.i.i.i.i, 99
  br i1 %.not.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %bb.w

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.x
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !10763
  %i.bj = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 9) 8) #60, !noalias !10763 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.y, label %.lr.ph.split.us.i.i.i.i.i

bb.y:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 8) #58, !noalias !10764
  unreachable

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store ptr %i.bg, ptr %i.bj, align 8, !noalias !10765
  br label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48: ; preds = %bb.w, %.lr.ph.split.us.i.i.i.i.i
  %.sroa.4.0.i10.i = phi i64 [ 1, %.lr.ph.split.us.i.i.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %.sroa.10.0.i9.i = phi ptr [ %i.bj, %.lr.ph.split.us.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10749
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit: ; preds = %bb.l, %_RNvMsO_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_5Named7pattern.exit
  %.sroa.0.0.copyload15.pr = load i64, ptr %i.c, align 8, !noalias !10735 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10749
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10735
  %.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10749
  %.not2 = icmp eq i64 %.sroa.0.0.copyload15.pr, -1
  br i1 %.not2, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit10: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i9, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1I_3ops8function6FnOnceTQB5_EE9call_onceBX_.exit.i6, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit ], [ null, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i9 ], [ %i.bt, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1I_3ops8function6FnOnceTQB5_EE9call_onceBX_.exit.i6 ]
  ret ptr %.sroa.0.0

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread: ; preds = %bb.f, %bb.g, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit, %._crit_edge.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10766)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !10766, !noundef !19 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bm, null
  br i1 %.not.i5, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit10, label %bb.z

bb.z:                                             ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10768)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !10769, !nonnull !19, !noundef !19
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !10769, !nonnull !19, !noundef !19 ; 3 uses
  %i.br = icmp eq ptr %i.bq, %i.bo
  br i1 %i.br, label %bb.aa, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1I_3ops8function6FnOnceTQB5_EE9call_onceBX_.exit.i6

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1I_3ops8function6FnOnceTQB5_EE9call_onceBX_.exit.i6: ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bs, ptr %i.bp, align 8, !alias.scope !10769
  %i.bt = load ptr, ptr %i.bq, align 8, !noalias !10769, !nonnull !19, !align !29, !noundef !19
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit10

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8.i8 = load i64, ptr %i.bu, align 8, !alias.scope !10766 ; 2 uses
  %i.bv = icmp eq i64 %.val8.i8, 0
  br i1 %i.bv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i9, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = shl nuw i64 %.val8.i8, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !10770
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i9

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit.i9: ; preds = %bb.ab, %bb.aa
  store ptr null, ptr %i.bl, align 8, !alias.scope !10766
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentEEEB1P_.exit: ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48
  %.sroa.8.sroa.5.0.copyload57 = phi i64 [ %.sroa.4.0.i10.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48 ], [ %.sroa.8.sroa.5.0.copyload, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit ] ; 2 uses
  %.sroa.8.sroa.0.0.copyload56 = phi ptr [ %.sroa.10.0.i9.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48 ], [ %.sroa.8.sroa.0.0.copyload, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit ] ; 5 uses
  %.sroa.0.0.copyload1555 = phi i64 [ %.sroa.4.0.i10.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit.thread48 ], [ %.sroa.0.0.copyload15.pr, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2c_3astB28_4castNtB30_17DestructuringItemEENCNvMs14_B30_NtB30_13Destructuring8bindings0EEINtB5_8FuseImplBY_E4nextB2c_.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload56) ]
  %i.bx = icmp ult i64 %.sroa.8.sroa.5.0.copyload57, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.sroa.0.0.copyload56, i64 %.sroa.8.sroa.5.0.copyload57
  store ptr %.sroa.8.sroa.0.0.copyload56, ptr %0, align 8
  store ptr %.sroa.8.sroa.0.0.copyload56, ptr %i.e, align 8
  store i64 %.sroa.0.0.copyload1555, ptr %i.f, align 8
  store ptr %i.by, ptr %i.d, align 8
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_18GraphemeIncompleteNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !54, !noundef !19
  switch i64 %i.b, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @605, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @604)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @606, i64 noundef 9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @607, i64 noundef 9)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @608, i64 noundef 13)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXso_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdentNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !29, !noundef !19
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.03.0.i = phi ptr [ %i.a, %bb.a ], [ %i.i, %bb.e ] ; 4 uses
  %i.b = load i8, ptr %.sroa.03.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.b, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %_RNvMsn_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdent6as_str.exit
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  br label %_RNvMsn_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdent6as_str.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !19, !noundef !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %_RNvMsn_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdent6as_str.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.b

_RNvMsn_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9MathIdent6as_str.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !10773, !noundef !19 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.k, -1                ; 2 uses
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = load ptr, ptr %.sroa.0.0.i, align 8, !alias.scope !10773, !nonnull !19
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !10773
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.p, i64 %i.m
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.n, ptr %.sroa.0.0.i
  %i.q = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.r = insertvalue { ptr, i64 } %i.q, i64 %.sroa.3.0.i.i, 1
  ret { ptr, i64 } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs5PEMdK7bMAG_12typst_syntax(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !10778 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 15
  %.val1 = load i8, ptr %i.b, align 1, !alias.scope !10778, !noundef !19
  %.not.i.i.i.i.i = icmp sgt i8 %.val1, -1
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %i.c = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !10779
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10779
  %i.e = getelementptr i8, ptr %.val, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !10779, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !10779
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  %i.f = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8, !noalias !10779
  store i64 8, ptr %i.a, align 8, !noalias !10779
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.h, align 8, !noalias !10779
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !10779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10779
  br label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsakL8LGkl72C_4ecow6string9EcoStringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0Cs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0Es_0INtNtB12_8function6FnOnceTOhEE9call_onceB1J_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNCNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 9), (16, 72)) %0) unnamed_addr #42 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8, !alias.scope !10782
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !alias.scope !10782
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !10782
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !10782
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !10782
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #5 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB4_12SpecWriteFmt14spec_write_fmtCs5PEMdK7bMAG_12typst_syntax.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !10783
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #43

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #43

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #43

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE8expected(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #44
end_hunk_2
