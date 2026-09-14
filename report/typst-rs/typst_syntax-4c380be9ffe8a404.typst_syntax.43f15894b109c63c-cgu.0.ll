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
define noundef nonnull ptr @_RNvMNtCs5PEMdK7bMAG_12typst_syntax6sourceNtB2_6Source9with_root(i16 noundef range(i16 1, 0) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
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
begin_hunk_2_@_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser11try_reparse:bb.a

bb.dp:                                            ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64
  br label %bb.dw

.preheader.i76.i:                                 ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64, %bb.ds
  %.sroa.07.0.i.i = phi ptr [ %i.nq, %bb.ds ], [ %.sroa.026.0305.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64 ] ; 4 uses
  %i.nj = load i8, ptr %.sroa.07.0.i.i, align 8, !range !30, !noalias !9794, !noundef !19
  switch i8 %i.nj, label %default.unreachable [
    i8 0, label %bb.dq
    i8 1, label %.loopexit.i77.i
    i8 2, label %bb.dr
    i8 3, label %bb.ds
  ]

bb.dq:                                            ; preds = %.preheader.i76.i
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  br label %.loopexit.i77.i

bb.dr:                                            ; preds = %.preheader.i76.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !9794, !nonnull !19, !noundef !19
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  br label %.loopexit.i77.i

bb.ds:                                            ; preds = %.preheader.i76.i
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !noalias !9794, !nonnull !19, !noundef !19
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  br label %.preheader.i76.i

.loopexit.i77.i:                                  ; preds = %.preheader.i76.i, %bb.dr, %bb.dq
  %.sroa.04.0.i78.i = phi ptr [ %i.nk, %bb.dq ], [ %i.nn, %bb.dr ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %.preheader.i76.i ] ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i78.i, i64 15
  %i.ns = load i8, ptr %i.nr, align 1, !alias.scope !9795, !noalias !9794, !noundef !19 ; 2 uses
  %.not.i.i79.i = icmp sgt i8 %i.ns, -1           ; 2 uses
  %i.nt = and i8 %i.ns, 127
  %i.nu = zext nneg i8 %i.nt to i64
  %i.nv = load ptr, ptr %.sroa.04.0.i78.i, align 8, !alias.scope !9795, !noalias !9794, !nonnull !19
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i78.i, i64 8
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !9795, !noalias !9794
  %.sroa.3.0.i.i80.i = select i1 %.not.i.i79.i, i64 %i.nx, i64 %i.nu
  %.sroa.0.0.i.i81.i = select i1 %.not.i.i79.i, ptr %i.nv, ptr %.sroa.04.0.i78.i ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i81.i, i64 %.sroa.3.0.i.i80.i ; 4 uses
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i: ; preds = %bb.dv, %.loopexit.i77.i
  %i.nz = phi ptr [ %i.pi, %bb.dv ], [ %.sroa.0.0.i.i81.i, %.loopexit.i77.i ] ; 6 uses
  %.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.nz, %i.ny ; 2 uses
  br i1 %.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not, label %bb.dt, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i

bb.dt:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 1 ; 3 uses
  %i.ob = load i8, ptr %i.nz, align 1, !noalias !9796, !noundef !19 ; 5 uses
  %i.oc = icmp sgt i8 %i.ob, -1
  br i1 %i.oc, label %bb.du, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i: ; preds = %bb.dt
  %i.od = and i8 %i.ob, 31
  %i.oe = zext nneg i8 %i.od to i32               ; 3 uses
  %i.of = icmp ne ptr %i.oa, %i.ny
  call void @llvm.assume(i1 %i.of)
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 2 ; 3 uses
  %i.oh = load i8, ptr %i.oa, align 1, !noalias !9796, !noundef !19
  %i.oi = shl nuw nsw i32 %i.oe, 6
  %i.oj = and i8 %i.oh, 63
  %i.ok = zext nneg i8 %i.oj to i32               ; 2 uses
  %i.ol = or disjoint i32 %i.oi, %i.ok
  %i.om = icmp samesign ugt i8 %i.ob, -33
  br i1 %i.om, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.on = zext nneg i8 %i.ob to i32
  br label %bb.dv

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i
  %i.oo = icmp ne ptr %i.og, %i.ny
  call void @llvm.assume(i1 %i.oo)
  %i.op = getelementptr inbounds nuw i8, ptr %i.nz, i64 3 ; 3 uses
  %i.oq = load i8, ptr %i.og, align 1, !noalias !9796, !noundef !19
  %i.or = shl nuw nsw i32 %i.ok, 6
  %i.os = and i8 %i.oq, 63
  %i.ot = zext nneg i8 %i.os to i32
  %i.ou = or disjoint i32 %i.or, %i.ot            ; 2 uses
  %i.ov = shl nuw nsw i32 %i.oe, 12
  %i.ow = or disjoint i32 %i.ou, %i.ov
  %i.ox = icmp samesign ugt i8 %i.ob, -17
  br i1 %i.ox, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i, label %bb.dv

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i
  %i.oy = icmp ne ptr %i.op, %i.ny
  call void @llvm.assume(i1 %i.oy)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.pa = load i8, ptr %i.op, align 1, !noalias !9796, !noundef !19
  %i.pb = shl nuw nsw i32 %i.oe, 18
  %i.pc = and i32 %i.pb, 1835008
  %i.pd = shl nuw nsw i32 %i.ou, 6
  %i.pe = and i8 %i.pa, 63
  %i.pf = zext nneg i8 %i.pe to i32
  %i.pg = or disjoint i32 %i.pd, %i.pf
  %i.ph = or disjoint i32 %i.pg, %i.pc
  br label %bb.dv

bb.dv:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i, %bb.du, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i
  %i.pi = phi ptr [ %i.op, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i ], [ %i.oz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i ], [ %i.og, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i ], [ %i.oa, %bb.du ]
  %spec.select.i.ph.i.i.i = phi i32 [ %i.ow, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i ], [ %i.ph, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i ], [ %i.ol, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i ], [ %i.on, %bb.du ]
  switch i32 %spec.select.i.ph.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i [
    i32 10, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 11, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 12, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 13, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 133, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 8232, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 8233, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
  ]

_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i: ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i
  %i.pj = zext i1 %.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not to i8
  br label %bb.dw

bb.dw:                                            ; preds = %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i, %bb.dp, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64
  %.sroa.03.0.i75.i = phi i8 [ 0, %bb.dp ], [ %i.pj, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i ], [ 1, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64 ]
  %i.pk = or i8 %.sroa.03.0.i75.i, %.sroa.0141.0304.i
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i: ; preds = %bb.dw, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64
  %storemerge.i.i = phi i8 [ %i.pk, %bb.dw ], [ 0, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  %i.pl = icmp eq i8 %.sroa.0.0.i74.i, 6
  br i1 %i.pl, label %.preheader.i84.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i

.sink.split.i.i:                                  ; preds = %bb.eb, %bb.ea
  %.sink.i = phi i64 [ 1, %bb.ea ], [ -1, %bb.eb ]
  %i.pm = add i64 %.sink.i, %i.mk                 ; 4 uses
  store i64 %i.pm, ptr %i.e, align 8, !alias.scope !9797, !noalias !9798
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i

.preheader.i84.i:                                 ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i, %bb.dz
  %.sroa.05.0.i85.i = phi ptr [ %i.pu, %bb.dz ], [ %.sroa.026.0305.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i ] ; 4 uses
  %i.pn = load i8, ptr %.sroa.05.0.i85.i, align 8, !range !30, !noalias !9799, !noundef !19
  switch i8 %i.pn, label %default.unreachable [
    i8 0, label %bb.dx
    i8 1, label %.loopexit.i86.i
    i8 2, label %bb.dy
    i8 3, label %bb.dz
  ]

bb.dx:                                            ; preds = %.preheader.i84.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i85.i, i64 8
  br label %.loopexit.i86.i

bb.dy:                                            ; preds = %.preheader.i84.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i85.i, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !noalias !9799, !nonnull !19, !noundef !19
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  br label %.loopexit.i86.i

bb.dz:                                            ; preds = %.preheader.i84.i
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i85.i, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !9799, !nonnull !19, !noundef !19
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  br label %.preheader.i84.i

.loopexit.i86.i:                                  ; preds = %.preheader.i84.i, %bb.dy, %bb.dx
  %.sroa.02.0.i87.i = phi ptr [ %i.po, %bb.dx ], [ %i.pr, %bb.dy ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %.preheader.i84.i ] ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i87.i, i64 15
  %i.pw = load i8, ptr %i.pv, align 1, !alias.scope !9800, !noalias !9799, !noundef !19 ; 2 uses
  %.not.i.i88.i = icmp sgt i8 %i.pw, -1           ; 2 uses
  %i.px = and i8 %i.pw, 127
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i87.i, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !9800, !noalias !9799
  %.sroa.3.0.i.i89.i = select i1 %.not.i.i88.i, i64 %i.qa, i64 %i.py
  %cond.i.i = icmp eq i64 %.sroa.3.0.i.i89.i, 1
  br i1 %cond.i.i, label %bb.ea, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i

bb.ea:                                            ; preds = %.loopexit.i86.i
  %i.qb = load ptr, ptr %.sroa.02.0.i87.i, align 8, !alias.scope !9800, !noalias !9799, !nonnull !19
  %.sroa.0.0.i.i90.i = select i1 %.not.i.i88.i, ptr %i.qb, ptr %.sroa.02.0.i87.i
  %lhsc.i91.i = load i8, ptr %.sroa.0.0.i.i90.i, align 1, !noalias !9799 ; 2 uses
  %i.qc = icmp eq i8 %lhsc.i91.i, 91
  br i1 %i.qc, label %.sink.split.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qd = icmp eq i8 %lhsc.i91.i, 93
  %i.qe = icmp ne i64 %i.mk, 0
  %or.cond.i.i = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond.i.i, label %.sink.split.i.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i: ; preds = %bb.eb, %.loopexit.i86.i, %.sink.split.i.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i
  %i.qf = phi i64 [ %i.mi, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i ], [ %i.pm, %.sink.split.i.i ], [ %i.mi, %.loopexit.i86.i ], [ %i.mi, %bb.eb ] ; 2 uses
  %i.qg = phi i64 [ %i.mj, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i ], [ %i.pm, %.sink.split.i.i ], [ %i.mj, %.loopexit.i86.i ], [ %i.mj, %bb.eb ] ; 2 uses
  %i.qh = phi i64 [ %i.mk, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i ], [ %i.pm, %.sink.split.i.i ], [ %i.mk, %.loopexit.i86.i ], [ %i.mk, %bb.eb ]
  %i.qi = icmp eq ptr %i.ml, %i.mg
  br i1 %i.qi, label %._crit_edge.loopexit.i, label %.lr.ph307.i

._crit_edge.loopexit.i:                           ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i
  %i.qj = icmp eq i64 %i.qf, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.df, %.thread455.i
  %9 = phi i1 [ false, %bb.df ], [ true, %._crit_edge.loopexit.i ], [ false, %.thread455.i ]
  %i.qk = phi ptr [ %i.mg, %bb.df ], [ %i.mg, %._crit_edge.loopexit.i ], [ %.sroa.0.0.i.i58, %.thread455.i ]
  %.idx459.i = phi i64 [ 0, %bb.df ], [ %.idx.i, %._crit_edge.loopexit.i ], [ 0, %.thread455.i ]
  %.sroa.07.1166458.i = phi i64 [ 0, %bb.df ], [ %..sroa.07.0.i, %._crit_edge.loopexit.i ], [ 0, %.thread455.i ] ; 3 uses
  %i.ql = phi i1 [ true, %bb.df ], [ %i.qj, %._crit_edge.loopexit.i ], [ true, %.thread455.i ]
  %i.qm = phi i64 [ 0, %bb.df ], [ %i.qg, %._crit_edge.loopexit.i ], [ 0, %.thread455.i ] ; 2 uses
  %.sroa.0141.0.lcssa.i = phi i8 [ 1, %bb.df ], [ %storemerge.i.i, %._crit_edge.loopexit.i ], [ 1, %.thread455.i ] ; 3 uses
  %.sroa.024.0.lcssa.i = phi i64 [ 0, %bb.df ], [ %i.ni, %._crit_edge.loopexit.i ], [ 0, %.thread455.i ]
  %i.qn = icmp ult i64 %.sroa.018.0.lcssa.i, %.sroa.07.1166458.i
  %.not46.i = icmp samesign ugt i64 %.sroa.018.0.lcssa.i, %i.it
  %or.cond.i = select i1 %i.qn, i1 true, i1 %.not46.i, !prof !49
  br i1 %or.cond.i, label %bb.ec, label %bb.ed, !prof !49

bb.ec:                                            ; preds = %._crit_edge.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.07.1166458.i, i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %i.it, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #62, !noalias !9784
  unreachable

bb.ed:                                            ; preds = %._crit_edge.i
  %.idx328.i = shl nuw nsw i64 %.sroa.018.0.lcssa.i, 5 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i58, i64 %.idx328.i
  %i.qp = icmp samesign eq i64 %.idx459.i, %.idx328.i
  br i1 %i.qp, label %._crit_edge316.i, label %.lr.ph315.i

.lr.ph315.i:                                      ; preds = %bb.ed, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i
  %.sroa.028.0313.i = phi i64 [ %i.rn, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ], [ 0, %bb.ed ]
  %.sroa.030.0312.i = phi ptr [ %i.qq, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ], [ %i.qk, %bb.ed ] ; 5 uses
  %.sroa.0145.0311.i = phi i8 [ %storemerge.i101.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ], [ %.sroa.0141.0.lcssa.i, %bb.ed ]
  %.sroa.0147.0310.i = phi i64 [ %.sroa.0147.1.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ], [ %i.qm, %bb.ed ] ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.030.0312.i, i64 32 ; 2 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ei, %.lr.ph315.i
  %.sroa.04.0.i92.i = phi ptr [ %.sroa.030.0312.i, %.lr.ph315.i ], [ %i.re, %bb.ei ] ; 6 uses
  %i.qr = load i8, ptr %.sroa.04.0.i92.i, align 8, !range !30, !noalias !9784, !noundef !19
  switch i8 %i.qr, label %default.unreachable [
    i8 0, label %bb.ef
    i8 1, label %bb.eg
    i8 2, label %bb.eh
    i8 3, label %bb.ei
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 23
  %i.qt = load i8, ptr %i.qs, align 1, !noalias !9784, !noundef !19 ; 2 uses
  %.not14.i95.i = icmp sgt i8 %i.qt, -1
  br i1 %.not14.i95.i, label %bb.ej, label %bb.ek

bb.eg:                                            ; preds = %bb.ee
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 40
  %i.qx = load i64, ptr %i.qw, align 8, !noalias !9801, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

bb.eh:                                            ; preds = %bb.ee
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !9784, !nonnull !19, !noundef !19 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 47
  %i.rb = load i8, ptr %i.ra, align 1, !noalias !9801, !noundef !19 ; 2 uses
  %.not.i93.i = icmp sgt i8 %i.rb, -1
  br i1 %.not.i93.i, label %bb.el, label %bb.em

bb.ei:                                            ; preds = %bb.ee
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  br label %bb.ee

bb.ej:                                            ; preds = %bb.ef
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 16
  %i.rg = load i64, ptr %i.rf, align 8, !noalias !9784, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

bb.ek:                                            ; preds = %bb.ef
  %i.rh = and i8 %i.qt, 127
  %i.ri = zext nneg i8 %i.rh to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

bb.el:                                            ; preds = %bb.eh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 40
  %i.rk = load i64, ptr %i.rj, align 8, !noalias !9801, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

bb.em:                                            ; preds = %bb.eh
  %i.rl = and i8 %i.rb, 127
  %i.rm = zext nneg i8 %i.rl to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i: ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.eg
  %.sroa.0.1.i94.i = phi i64 [ %i.rg, %bb.ej ], [ %i.qx, %bb.eg ], [ %i.ri, %bb.ek ], [ %i.rm, %bb.em ], [ %i.rk, %bb.el ]
  %i.rn = add i64 %.sroa.0.1.i94.i, %.sroa.028.0313.i ; 2 uses
  %.sroa.0.0.in.i98.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0312.i, i64 1
  %.sroa.0.0.i99.i = load i8, ptr %.sroa.0.0.in.i98.i, align 1, !range !21, !alias.scope !9802, !noalias !9803, !noundef !19 ; 2 uses
  switch i8 %.sroa.0.0.i99.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit117.i [
    i8 9, label %bb.eu
    i8 7, label %.preheader.i102.i
    i8 2, label %bb.en
    i8 3, label %bb.en
    i8 4, label %bb.en
  ]

bb.en:                                            ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i
  br label %bb.eu

.preheader.i102.i:                                ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i, %bb.eq
  %.sroa.07.0.i103.i = phi ptr [ %i.rv, %bb.eq ], [ %.sroa.030.0312.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i ] ; 4 uses
  %i.ro = load i8, ptr %.sroa.07.0.i103.i, align 8, !range !30, !noalias !9803, !noundef !19
  switch i8 %i.ro, label %default.unreachable [
    i8 0, label %bb.eo
    i8 1, label %.loopexit.i104.i
    i8 2, label %bb.ep
    i8 3, label %bb.eq
  ]

bb.eo:                                            ; preds = %.preheader.i102.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i103.i, i64 8
  br label %.loopexit.i104.i

bb.ep:                                            ; preds = %.preheader.i102.i
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i103.i, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !noalias !9803, !nonnull !19, !noundef !19
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  br label %.loopexit.i104.i

bb.eq:                                            ; preds = %.preheader.i102.i
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i103.i, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !noalias !9803, !nonnull !19, !noundef !19
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  br label %.preheader.i102.i

.loopexit.i104.i:                                 ; preds = %.preheader.i102.i, %bb.ep, %bb.eo
  %.sroa.04.0.i105.i = phi ptr [ %i.rp, %bb.eo ], [ %i.rs, %bb.ep ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %.preheader.i102.i ] ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i105.i, i64 15
  %i.rx = load i8, ptr %i.rw, align 1, !alias.scope !9804, !noalias !9803, !noundef !19 ; 2 uses
  %.not.i.i106.i = icmp sgt i8 %i.rx, -1          ; 2 uses
  %i.ry = and i8 %i.rx, 127
  %i.rz = zext nneg i8 %i.ry to i64
  %i.sa = load ptr, ptr %.sroa.04.0.i105.i, align 8, !alias.scope !9804, !noalias !9803, !nonnull !19
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i105.i, i64 8
  %i.sc = load i64, ptr %i.sb, align 8, !alias.scope !9804, !noalias !9803
  %.sroa.3.0.i.i107.i = select i1 %.not.i.i106.i, i64 %i.sc, i64 %i.rz
  %.sroa.0.0.i.i108.i = select i1 %.not.i.i106.i, ptr %i.sa, ptr %.sroa.04.0.i105.i ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i108.i, i64 %.sroa.3.0.i.i107.i ; 4 uses
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i109.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i109.i: ; preds = %bb.et, %.loopexit.i104.i
  %i.se = phi ptr [ %i.tn, %bb.et ], [ %.sroa.0.0.i.i108.i, %.loopexit.i104.i ] ; 6 uses
  %.not.i.not.not.not.i.not.not.not.i110.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.se, %i.sd ; 2 uses
  br i1 %.not.i.not.not.not.i.not.not.not.i110.not.not.not.i.not.not.not.not.not, label %bb.er, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i111.i

bb.er:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i109.i
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 1 ; 3 uses
  %i.sg = load i8, ptr %i.se, align 1, !noalias !9805, !noundef !19 ; 5 uses
  %i.sh = icmp sgt i8 %i.sg, -1
  br i1 %i.sh, label %bb.es, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i: ; preds = %bb.er
  %i.si = and i8 %i.sg, 31
  %i.sj = zext nneg i8 %i.si to i32               ; 3 uses
  %i.sk = icmp ne ptr %i.sf, %i.sd
  call void @llvm.assume(i1 %i.sk)
  %i.sl = getelementptr inbounds nuw i8, ptr %i.se, i64 2 ; 3 uses
  %i.sm = load i8, ptr %i.sf, align 1, !noalias !9805, !noundef !19
  %i.sn = shl nuw nsw i32 %i.sj, 6
  %i.so = and i8 %i.sm, 63
  %i.sp = zext nneg i8 %i.so to i32               ; 2 uses
  %i.sq = or disjoint i32 %i.sn, %i.sp
  %i.sr = icmp samesign ugt i8 %i.sg, -33
  br i1 %i.sr, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.ss = zext nneg i8 %i.sg to i32
  br label %bb.et

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i
  %i.st = icmp ne ptr %i.sl, %i.sd
  call void @llvm.assume(i1 %i.st)
  %i.su = getelementptr inbounds nuw i8, ptr %i.se, i64 3 ; 3 uses
  %i.sv = load i8, ptr %i.sl, align 1, !noalias !9805, !noundef !19
  %i.sw = shl nuw nsw i32 %i.sp, 6
  %i.sx = and i8 %i.sv, 63
  %i.sy = zext nneg i8 %i.sx to i32
  %i.sz = or disjoint i32 %i.sw, %i.sy            ; 2 uses
  %i.ta = shl nuw nsw i32 %i.sj, 12
  %i.tb = or disjoint i32 %i.sz, %i.ta
  %i.tc = icmp samesign ugt i8 %i.sg, -17
  br i1 %i.tc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i, label %bb.et

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i
  %i.td = icmp ne ptr %i.su, %i.sd
  call void @llvm.assume(i1 %i.td)
  %i.te = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  %i.tf = load i8, ptr %i.su, align 1, !noalias !9805, !noundef !19
  %i.tg = shl nuw nsw i32 %i.sj, 18
  %i.th = and i32 %i.tg, 1835008
  %i.ti = shl nuw nsw i32 %i.sz, 6
  %i.tj = and i8 %i.tf, 63
  %i.tk = zext nneg i8 %i.tj to i32
  %i.tl = or disjoint i32 %i.ti, %i.tk
  %i.tm = or disjoint i32 %i.tl, %i.th
  br label %bb.et

bb.et:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i, %bb.es, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i
  %i.tn = phi ptr [ %i.su, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i ], [ %i.te, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i ], [ %i.sl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i ], [ %i.sf, %bb.es ]
end_hunk_2
begin_hunk_3_@_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser11try_reparse:bb.a
  br i1 %cond.i126.i, label %bb.ey, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i

bb.ey:                                            ; preds = %.loopexit.i122.i
  %i.uf = load ptr, ptr %.sroa.02.0.i123.i, align 8, !alias.scope !9807, !noalias !9806, !nonnull !19
  %.sroa.0.0.i.i127.i = select i1 %.not.i.i124.i, ptr %i.uf, ptr %.sroa.02.0.i123.i
  %lhsc.i128.i = load i8, ptr %.sroa.0.0.i.i127.i, align 1, !noalias !9806 ; 2 uses
  %i.ug = icmp eq i8 %lhsc.i128.i, 91
  br i1 %i.ug, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.uh = add i64 %.sroa.0147.0310.i, 1
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i

bb.fa:                                            ; preds = %bb.ey
  %i.ui = icmp eq i8 %lhsc.i128.i, 93
  %i.uj = icmp ne i64 %.sroa.0147.0310.i, 0
  %or.cond.i129.i = select i1 %i.ui, i1 %i.uj, i1 false
  %i.uk = sext i1 %or.cond.i129.i to i64
  %spec.select.i67 = add i64 %.sroa.0147.0310.i, %i.uk
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i: ; preds = %bb.fa, %bb.ez, %.loopexit.i122.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit117.i
  %.sroa.0147.1.i = phi i64 [ %.sroa.0147.0310.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit117.i ], [ %spec.select.i67, %bb.fa ], [ %.sroa.0147.0310.i, %.loopexit.i122.i ], [ %i.uh, %bb.ez ] ; 2 uses
  %i.ul = icmp eq ptr %i.qq, %i.qo
  br i1 %i.ul, label %._crit_edge316.i, label %.lr.ph315.i

._crit_edge316.i:                                 ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i, %bb.ed
  %.sroa.0147.0.lcssa.i = phi i64 [ %i.qm, %bb.ed ], [ %.sroa.0147.1.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ] ; 2 uses
  %.sroa.0145.0.lcssa.i = phi i8 [ %.sroa.0141.0.lcssa.i, %bb.ed ], [ %storemerge.i101.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ]
  %.sroa.028.0.lcssa.i = phi i64 [ 0, %bb.ed ], [ %i.rn, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ]
  %i.um = add i64 %.sroa.024.0.lcssa.i, %8        ; 3 uses
  %i.un = add i64 %i.iv, %i.um
  %i.uo = add i64 %i.un, %.sroa.028.0.lcssa.i     ; 5 uses
  %i.up = icmp ne i64 %.sroa.018.0.lcssa.i, %i.it ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9809
  call fastcc void @_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(272) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.um, i8 noundef 0), !noalias !9810
  %.val5.i.i = load i64, ptr %i.c, align 8, !range !26, !noalias !9809, !noundef !19
  %i.uq = icmp ne i64 %.val5.i.i, 2
  %i.ur = zext i1 %i.uq to i8
  %i.us = or i8 %.sroa.0141.0.lcssa.i, %i.ur      ; 3 uses
  %.val17.i.i = load i8, ptr %i.iw, align 8, !range !21, !noalias !9809, !noundef !19 ; 2 uses
  %i.ut = icmp ne i8 %.val17.i.i, 0
  %.val818.i.i = load i64, ptr %i.ix, align 8, !noalias !9809 ; 3 uses
  %i.uu = icmp ult i64 %.val818.i.i, %i.uo
  %or.cond19.i.i = select i1 %i.ut, i1 %i.uu, i1 false
  br i1 %or.cond19.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge316.i
  %i.uv = trunc nuw i8 %i.us to i1                ; 2 uses
  br i1 %.not, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.i.i
  %i.uw = icmp eq i8 %.val17.i.i, 49
  %or.cond16.i320.i = and i1 %i.ql, %i.uw
  br i1 %or.cond16.i320.i, label %._crit_edge.i.i, label %.lr.ph322.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.fb
  %storemerge20.us.i.i = phi i1 [ %i.ux, %bb.fb ], [ %i.uv, %.lr.ph.i.i ]
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11markup_expr(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c, i1 noundef zeroext %storemerge20.us.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.fb unwind label %.split.us.i.i, !noalias !9811

bb.fb:                                            ; preds = %.lr.ph.split.us.i.i
  %.val4.us.i.i = load i64, ptr %i.c, align 8, !range !26, !noalias !9809, !noundef !19
  %i.ux = icmp ne i64 %.val4.us.i.i, 2            ; 2 uses
  %.val.us.i.i = load i8, ptr %i.iw, align 8, !range !21, !noalias !9809, !noundef !19
  %i.uy = icmp ne i8 %.val.us.i.i, 0
  %.val8.us.i.i = load i64, ptr %i.ix, align 8, !noalias !9809 ; 2 uses
  %i.uz = icmp ult i64 %.val8.us.i.i, %i.uo
  %or.cond.us.i.i = select i1 %i.uy, i1 %i.uz, i1 false
  br i1 %or.cond.us.i.i, label %.lr.ph.split.us.i.i, label %._crit_edge.i.loopexit.i

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.i.i
  %lpad.thr_comm.split-lp.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.lr.ph.split.i.i:                                 ; preds = %bb.fc
  %i.va = load i64, ptr %i.e, align 8, !alias.scope !9808, !noalias !9812
  %i.vb = icmp eq i64 %i.va, 0
  %i.vc = icmp eq i8 %.val.i.i, 49
  %or.cond16.i.i = and i1 %i.vc, %i.vb
  br i1 %or.cond16.i.i, label %._crit_edge.i.loopexit469.i, label %.lr.ph322.i

._crit_edge.i.loopexit.i:                         ; preds = %bb.fb
  %i.vd = zext i1 %i.ux to i8
  br label %._crit_edge.i.i

._crit_edge.i.loopexit469.i:                      ; preds = %bb.fc, %.lr.ph.split.i.i
  %i.ve = zext i1 %i.vh to i8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit469.i, %._crit_edge.i.loopexit.i, %.lr.ph.split.i.preheader.i, %._crit_edge316.i
  %.sroa.0141.1.i = phi i8 [ %i.us, %._crit_edge316.i ], [ %i.vd, %._crit_edge.i.loopexit.i ], [ %i.us, %.lr.ph.split.i.preheader.i ], [ %i.ve, %._crit_edge.i.loopexit469.i ]
  %.val7.i.i = phi i64 [ %.val818.i.i, %._crit_edge316.i ], [ %.val8.us.i.i, %._crit_edge.i.loopexit.i ], [ %.val818.i.i, %.lr.ph.split.i.preheader.i ], [ %.val8.i.i, %._crit_edge.i.loopexit469.i ]
  %i.vf = load i8, ptr %i.iy, align 4, !range !20, !noalias !9809, !noundef !19
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.fe, label %bb.fd

.lr.ph322.i:                                      ; preds = %.lr.ph.split.i.preheader.i, %.lr.ph.split.i.i
  %storemerge20.i321.i = phi i1 [ %i.vh, %.lr.ph.split.i.i ], [ %i.uv, %.lr.ph.split.i.preheader.i ]
  invoke fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser11markup_expr(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c, i1 noundef zeroext %storemerge20.i321.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.fc unwind label %.split.i.i, !noalias !9811

bb.fc:                                            ; preds = %.lr.ph322.i
  %.val4.i.i = load i64, ptr %i.c, align 8, !range !26, !noalias !9809, !noundef !19
  %i.vh = icmp ne i64 %.val4.i.i, 2               ; 2 uses
  %.val.i.i = load i8, ptr %i.iw, align 8, !range !21, !noalias !9809, !noundef !19 ; 2 uses
  %i.vi = icmp ne i8 %.val.i.i, 0
  %.val8.i.i = load i64, ptr %i.ix, align 8, !noalias !9809 ; 2 uses
  %i.vj = icmp ult i64 %.val8.i.i, %i.uo
  %or.cond.i134.i = select i1 %i.vi, i1 %i.vj, i1 false
  br i1 %or.cond.i134.i, label %.lr.ph.split.i.i, label %._crit_edge.i.loopexit469.i

bb.fd:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false), !noalias !9809
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14reparse_markup.exit.thread.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14reparse_markup.exit.thread.i: ; preds = %bb.fe, %bb.fd
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(272) %i.b), !noalias !9810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9809
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit140.i

bb.fe:                                            ; preds = %._crit_edge.i.i
  %i.vk = icmp eq i64 %.val7.i.i, %i.uo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false), !noalias !9809
  br i1 %i.vk, label %bb.ff, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14reparse_markup.exit.thread.i

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false), !noalias !9809
  %.sroa.0157.0.copyload.i = load i64, ptr %i.iz, align 8, !noalias !9809 ; 9 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i59, align 8, !noalias !9809 ; 8 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i60, align 8, !noalias !9809 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB12_3vec6EcoVecBY_EEEECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.ja)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax5lexer5LexerEBF_.exit.i.i.i.i unwind label %bb.fg, !noalias !9813

bb.fg:                                            ; preds = %bb.ff
  %i.vl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.jb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit.i.i.i.i unwind label %bb.fi, !noalias !9813

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax5lexer5LexerEBF_.exit.i.i.i.i: ; preds = %bb.ff
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.jb)
          to label %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14reparse_markup.exit.i unwind label %bb.fh, !noalias !9813

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit.i.i.i.i: ; preds = %bb.fh, %bb.fg
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.vm, %bb.fh ], [ %i.vl, %bb.fg ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser9MemoArenaEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.jc) #59
          to label %common.resume unwind label %bb.fi, !noalias !9813

bb.fh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax5lexer5LexerEBF_.exit.i.i.i.i
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit.i.i.i.i

bb.fi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit.i.i.i.i, %bb.fg
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !9814
  unreachable

common.resume.sink.split.i:                       ; preds = %bb.ft, %bb.fo
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.vr, %bb.fo ], [ %i.vz, %bb.ft ]
  %i.vo = shl nuw i64 %.sroa.0157.0.copyload.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.vo, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !9784
  br label %common.resume

.split.i.i:                                       ; preds = %.lr.ph322.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.split.i.i, %.split.us.i.i
  %.us-phi.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %.split.i.i ], [ %lpad.thr_comm.split-lp.us.i.i, %.split.us.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser6ParserEBF_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c) #59
          to label %common.resume unwind label %bb.fk, !noalias !9810

bb.fk:                                            ; preds = %bb.fj
  %i.vp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !9810
  unreachable

_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14reparse_markup.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax5lexer5LexerEBF_.exit.i.i.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser9MemoArenaEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.jc), !noalias !9810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9809
  %.not47.i = icmp eq i64 %.sroa.0157.0.copyload.i, -1
  br i1 %.not47.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit140.i, label %bb.fl

bb.fl:                                            ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14reparse_markup.exit.i
  br i1 %i.up, label %bb.fm, label %.critedge.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit140.i: ; preds = %bb.fu, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i138.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14reparse_markup.exit.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser14reparse_markup.exit.thread.i
  %brmerge4.i = select i1 %9, i1 true, i1 %i.up
  br i1 %brmerge4.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.i, label %bb.fx

bb.fm:                                            ; preds = %bb.fl
  %i.vq = icmp eq i8 %.sroa.0141.1.i, %.sroa.0145.0.lcssa.i
  br i1 %i.vq, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i unwind label %bb.fo, !noalias !9815, !inline_history !6

bb.fo:                                            ; preds = %bb.fn
  %i.vr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vs = icmp eq i64 %.sroa.0157.0.copyload.i, 0
  br i1 %i.vs, label %common.resume, label %common.resume.sink.split.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %bb.fn
  %i.vt = icmp eq i64 %.sroa.0157.0.copyload.i, 0
  br i1 %i.vt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.i, label %bb.fp

bb.fp:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %i.vu = shl nuw i64 %.sroa.0157.0.copyload.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.vu, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !9815, !inline_history !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.i: ; preds = %bb.fp, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit140.i
  %i.vv = shl i64 %.sroa.0.0.i61, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9787
  br label %bb.ci

bb.fq:                                            ; preds = %bb.fm
  %.old.i = load i64, ptr %i.e, align 8, !noalias !9787, !noundef !19
  %.old171.i = icmp eq i64 %.old.i, %.sroa.0147.0.lcssa.i
  br i1 %.old171.i, label %bb.fr, label %bb.fs

.critedge.i:                                      ; preds = %bb.fl
  %i.vw = load i64, ptr %i.e, align 8, !noalias !9787
  %i.vx = icmp eq i64 %i.vw, %.sroa.0147.0.lcssa.i
  %or.cond172.i = select i1 %.not, i1 true, i1 %i.vx
  br i1 %or.cond172.i, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %.critedge.i, %bb.fq
  %.sroa.018.0.lcssa.lcssa398.i = phi i64 [ %.sroa.018.0.lcssa.i, %bb.fq ], [ %i.it, %.critedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9787
  store i64 %.sroa.0157.0.copyload.i, ptr %i.d, align 8, !noalias !9787
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !9787
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !9787
  %i.vy = call fastcc noundef zeroext i1 @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode16replace_children(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.07.1166458.i, i64 noundef %.sroa.018.0.lcssa.lcssa398.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !9781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9787
  br i1 %i.vy, label %bb.fw, label %bb.fv

bb.fs:                                            ; preds = %.critedge.i, %bb.fq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i138.i unwind label %bb.ft, !noalias !9816, !inline_history !6

bb.ft:                                            ; preds = %bb.fs
  %i.vz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wa = icmp eq i64 %.sroa.0157.0.copyload.i, 0
  br i1 %i.wa, label %common.resume, label %common.resume.sink.split.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i138.i: ; preds = %bb.fs
  %i.wb = icmp eq i64 %.sroa.0157.0.copyload.i, 0
  br i1 %i.wb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit140.i, label %bb.fu

bb.fu:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i138.i
  %i.wc = shl nuw i64 %.sroa.0157.0.copyload.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.wc, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !9816, !inline_history !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit140.i

bb.fv:                                            ; preds = %bb.fr
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.um, ptr %i.wd, align 8, !alias.scope !9781, !noalias !9817
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.uo, ptr %i.we, align 8, !alias.scope !9781, !noalias !9817
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fr
  %storemerge.i66 = phi i64 [ 1, %bb.fv ], [ 0, %bb.fr ]
  store i64 %storemerge.i66, ptr %0, align 8, !alias.scope !9781, !noalias !9817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9787
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser25expand_and_reparse_markup.exit

bb.fx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit140.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9787
  store i64 0, ptr %0, align 8, !alias.scope !9781, !noalias !9817
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser25expand_and_reparse_markup.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 22) i8 @_RNvNtCs5PEMdK7bMAG_12typst_syntax9highlight14highlight_hash(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNode12next_sibling(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.e = load ptr, ptr %i.c, align 8, !noundef !19
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !19, !align !29, !noundef !19
  %i.g = tail call { i64, ptr } @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  %i.h = extractvalue { i64, ptr } %i.g, 0
  switch i64 %i.h, label %bb.g [
    i64 60, label %bb.j
    i64 30, label %bb.j
    i64 31, label %bb.j
    i64 32, label %bb.j
    i64 33, label %bb.j
    i64 34, label %bb.j
    i64 35, label %bb.j
    i64 36, label %bb.j
    i64 37, label %bb.j
    i64 38, label %bb.j
    i64 39, label %bb.j
    i64 40, label %bb.j
    i64 41, label %bb.j
    i64 42, label %bb.j
    i64 45, label %bb.j
    i64 46, label %bb.j
    i64 48, label %bb.j
    i64 50, label %bb.j
    i64 51, label %bb.j
    i64 52, label %bb.j
    i64 53, label %bb.j
    i64 54, label %bb.j
    i64 55, label %bb.j
    i64 56, label %bb.j
    i64 57, label %bb.j
    i64 58, label %bb.j
    i64 59, label %bb.j
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit12: ; preds = %bb.o, %bb.n, %bb.p, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.x, %bb.p ], [ %i.x, %bb.n ], [ %i.x, %bb.o ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9858)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9859, !noundef !19 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit12
  %i.l = load i64, ptr %i.j, align 8, !noalias !9860, !noundef !19
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.j, align 8, !noalias !9860
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.i) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit unwind label %bb.v, !inline_history !8

bb.f:                                             ; preds = %bb.s, %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit12

bb.g:                                             ; preds = %bb.b, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9861)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !9862, !noundef !19 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.q, align 8, !noalias !9863, !noundef !19
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !9863
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit10

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.p) #57, !inline_history !2
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeEBF_.exit10

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMsc_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10LinkedNode13leftmost_leaf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.a, align 8, !noundef !19
  %.not8 = icmp eq ptr %i.v, null
  br i1 %.not8, label %bb.m, label %bb.l
end_hunk_3
