Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.13?download=true
inline.NumInlined: 256
inline.NumDeleted: 82
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringINtNtBI_4sync3ArceEEECsa9sSWSfjDbm_4jiff:bb.a
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !41
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i unwind label %bb.e, !noalias !33

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.t = icmp eq i64 %i.p, %i.e
  br i1 %i.t, label %.body.i, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !33
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i, %bb.c
  %i.v = icmp eq i64 %i.c, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.w = mul nuw i64 %i.c, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i, %bb.a
  %i.x = icmp eq i64 %i.c, 0
  br i1 %i.x, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringINtNtB9_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i
  %i.y = mul nuw i64 %i.c, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !43
  br label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringINtNtB9_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.m

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringINtNtB9_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEEB2c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !64, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !64, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !64, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBI_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i
  %.sroa.0.08.i.i = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.08.i.i ; 5 uses
  %i.h = add nuw nsw i64 %.sroa.0.08.i.i, 1       ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.b, !noalias !64

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !65, !noalias !64 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.j, label %.body.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !66, !noalias !64, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !67
  br label %.body.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !65, !noalias !64 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !66, !noalias !64, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !68
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.n = icmp eq i64 %i.h, %i.e
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBI_.exit.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.0.1.i.i15, 1      ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %.body.i, label %.lr.ph

.body.i.i:                                        ; preds = %bb.c, %bb.b
  %i.q = icmp eq i64 %i.h, %i.e
  br i1 %i.q, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i15 = phi i64 [ %i.o, %bb.f ], [ %i.h, %.body.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i.i15
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #26
          to label %bb.f unwind label %bb.g, !noalias !64

bb.g:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !64
  unreachable

.body.i:                                          ; preds = %bb.f, %.body.i.i
  %i.t = icmp eq i64 %i.c, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.h

bb.h:                                             ; preds = %.body.i
  %i.u = mul nuw i64 %i.c, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !69
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBI_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i, %bb.a
  %i.v = icmp eq i64 %i.c, 0
  br i1 %i.v, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1J_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBI_.exit.i
  %i.w = mul nuw i64 %i.c, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !70
  br label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1J_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.h, %.body.i
  resume { ptr, i32 } %i.i

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1J_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBI_.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !77, !noundef !4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !78
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #23
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !89 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !90, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !91
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !89 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !90, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !92
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !95, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !95, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !95, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !95, !noundef !4
  %i.k = load ptr, ptr %3, align 8, !alias.scope !95, !nonnull !4, !noundef !4
  %i.l = load ptr, ptr %i.d, align 8, !noalias !95, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !95, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !95, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !95
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !95
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !95
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !95
  store i64 0, ptr %i.b, align 8, !noalias !95
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !95
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !95
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !95
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !95
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !95
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.u, align 8, !noalias !95
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %4, align 4, !noalias !95
  call void @_RNvXs0_NtCs609xDM2Krl3_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2Q_16TimeZoneNameIter9from_iterB2l_B1U_E0ENtB2Q_12TimeZoneNameEB2U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2h_16TimeZoneNameIter9from_iterB1L_BX_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB2h_12TimeZoneNameENCINvNtB12_16in_place_collect24write_in_place_with_dropB4K_E0INtNtBc_6result6ResultB49_zEEB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCINvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2t_16TimeZoneNameIter9from_iterB1X_B19_E0EEB2x_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEEB2c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCINvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2t_16TimeZoneNameIter9from_iterB1X_B19_E0EEB2x_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENvYINtNtB6_4sync3ArceEINtNtB1f_7convert4FromB2l_E4fromEB2K_ECsa9sSWSfjDbm_4jiff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = mul i64 %i.c, 24                         ; 5 uses
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENvYINtNtB14_4sync3ArceEINtNtBc_7convert4FromB1L_E4fromENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2b_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2b_E0INtNtBc_6result6ResultB3I_zEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvYINtNtB1g_4sync3ArceEINtNtB4_7convert4FromB1X_E4fromEECsa9sSWSfjDbm_4jiff.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringINtNtBI_4sync3ArceEEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = and i64 %i.g, 8
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %i.s = lshr i64 %i.g, 4
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -16                        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #25
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.v) #25 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !96

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #27
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvYINtNtB1g_4sync3ArceEINtNtB4_7convert4FromB1X_E4fromEECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph114 = phi ptr [ %i.fl, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph113 = phi i64 [ %i.ew, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph112 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph111 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph114 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph111, null
  %i.d = icmp eq i32 %.sroa.025.0.ph112, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph259

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph259

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa105 = phi ptr [ %i.ex, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph114, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit ], [ %i.fl, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoName12split_at_mutBE_.exit ], [ %i.ew, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1C_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa105, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0107.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph113, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBW_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph114, i64 noundef %.sroa.16.0107.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph259:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0106258 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph112, %.lr.ph ]
  %.sroa.16.0107257 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph113, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0106258, -1           ; 4 uses
  %i.g = lshr i64 %.sroa.16.0107257, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph114, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 56
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits15to_span_generals_0B8_:bb.a
  %.sroa.54.sroa.0.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !213 ; 2 uses
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.54.sroa.4.0.copyload.i = load i64, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !213 ; 2 uses
  %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.54.sroa.5.0.copyload.i = load i64, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !213 ; 2 uses
  %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.54.sroa.6.0.copyload.i = load i64, ptr %.sroa.54.sroa.6.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !213 ; 2 uses
  %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.54.sroa.7.0.copyload.i = load i32, ptr %.sroa.54.sroa.7.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !213 ; 2 uses
  %.sroa.54.sroa.8.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.54.sroa.8.0.copyload.i = load i32, ptr %.sroa.54.sroa.8.0..sroa.54.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !213 ; 2 uses
  %.sroa.54.sroa.9.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.54.sroa.9.0.copyload.i = load i32, ptr %.sroa.54.sroa.9.0..sroa.54.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !213 ; 2 uses
  %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.54.sroa.10.0.copyload.i = load i32, ptr %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !213 ; 2 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.56.0.copyload.i = load i16, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !213
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.79.sroa.0.0.copyload.i = load i16, ptr %.sroa.79.0..sroa_idx.i, align 2, !alias.scope !213 ; 2 uses
  %.sroa.79.sroa.4.0..sroa.79.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.79.sroa.4.0.copyload.i = load i8, ptr %.sroa.79.sroa.4.0..sroa.79.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !213 ; 2 uses
  %.sroa.79.sroa.5.0..sroa.79.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.d = icmp slt i64 %.0.val, 0
  %.sroa.011.0.i = tail call i64 @llvm.abs.i64(i64 %.0.val, i1 true)
  %i.e = icmp ne i64 %.0.val, 0                   ; 3 uses
  %i.f = and i16 %.sroa.56.0.copyload.i, -17
  %masksel.i = select i1 %i.e, i16 16, i16 0
  %.sroa.013.0.i = or disjoint i16 %i.f, %masksel.i
  br i1 %i.d, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br i1 %i.e, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i16 %.sroa.79.sroa.0.0.copyload.i, 0
  %i.h = icmp eq i32 %.sroa.54.sroa.7.0.copyload.i, 0
  %or.cond.i.i = select i1 %i.g, i1 %i.h, i1 false
  %i.i = icmp eq i32 %.sroa.54.sroa.8.0.copyload.i, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.i, i1 false
  %i.j = icmp eq i32 %.sroa.54.sroa.9.0.copyload.i, 0
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.j, i1 false
  %i.k = icmp eq i32 %.sroa.54.sroa.10.0.copyload.i, 0
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.k, i1 false
  %i.l = icmp eq i64 %.sroa.54.sroa.0.0.copyload.i, 0
  %or.cond16.i.i = select i1 %or.cond11.i.i, i1 %i.l, i1 false
  %i.m = icmp eq i64 %.sroa.54.sroa.4.0.copyload.i, 0
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.m, i1 false
  %i.n = icmp eq i64 %.sroa.54.sroa.5.0.copyload.i, 0
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.n, i1 false
  %i.o = icmp eq i64 %.sroa.54.sroa.6.0.copyload.i, 0
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.o, i1 false
  br i1 %or.cond4.i.i, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.027.0.in.i.i = icmp eq i8 %.sroa.79.sroa.4.0.copyload.i, 0
  %spec.select.i.i = zext i1 %i.e to i8
  %spec.select.i = select i1 %.sroa.027.0.in.i.i, i8 %spec.select.i.i, i8 %.sroa.79.sroa.4.0.copyload.i
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i: ; preds = %.thread.i.i, %bb.d, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i, %.thread.i.i ], [ -1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 0, %bb.d ]
  %.sroa.1528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1528.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.79.sroa.5.0..sroa.79.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !215
  store i64 %.sroa.011.0.i, ptr %0, align 8, !alias.scope !212
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.54.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !212
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.54.sroa.4.0.copyload.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !212
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.54.sroa.5.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !212
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.54.sroa.6.0.copyload.i, ptr %.sroa.720.0..sroa_idx.i, align 8, !alias.scope !212
  %.sroa.821.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.54.sroa.7.0.copyload.i, ptr %.sroa.821.0..sroa_idx.i, align 8, !alias.scope !212
  %.sroa.922.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.54.sroa.8.0.copyload.i, ptr %.sroa.922.0..sroa_idx.i, align 4, !alias.scope !212
  %.sroa.1023.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.54.sroa.9.0.copyload.i, ptr %.sroa.1023.0..sroa_idx.i, align 8, !alias.scope !212
  %.sroa.1124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.54.sroa.10.0.copyload.i, ptr %.sroa.1124.0..sroa_idx.i, align 4, !alias.scope !212
  %.sroa.1225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.013.0.i, ptr %.sroa.1225.0..sroa_idx.i, align 8, !alias.scope !212
  %.sroa.1326.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.79.sroa.0.0.copyload.i, ptr %.sroa.1326.0..sroa_idx.i, align 2, !alias.scope !212
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span11try_minutesxEB7_.exit: ; preds = %bb.b, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i
  %.sink = phi i8 [ -2, %bb.b ], [ %.sroa.0.0.i.i, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sink, ptr %i.p, align 4, !alias.scope !212
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 4 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.c, label %bb.o, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %4, %2                           ; 6 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %i.d, 999999999
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.i, %bb.b
  %.sroa.016.0 = phi i64 [ %i.b, %bb.b ], [ %.sroa.016.1, %bb.i ], [ %i.y, %bb.n ], [ %i.w, %bb.m ], [ %.sroa.016.1, %bb.k ]
  %.sroa.02.0 = phi i32 [ 0, %bb.b ], [ %.sroa.02.1, %bb.i ], [ %i.z, %bb.n ], [ %i.x, %bb.m ], [ %.sroa.02.1, %bb.k ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.016.0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.02.0, ptr %i.h, align 8
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.i = icmp slt i32 %i.d, -999999999
  br i1 %i.i, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 1) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.o, label %bb.j, !prof !6

bb.g:                                             ; preds = %bb.e
  %i.l = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 -1) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.o, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = add nsw i32 %i.d, 1000000000
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.j
  %.sroa.016.1 = phi i64 [ %i.r, %bb.j ], [ %i.n, %bb.h ], [ %i.b, %bb.e ] ; 7 uses
  %.sroa.02.1 = phi i32 [ %i.s, %bb.j ], [ %i.o, %bb.h ], [ %i.d, %bb.e ] ; 6 uses
  %i.p = icmp eq i64 %.sroa.016.1, 0
  %i.q = icmp eq i32 %.sroa.02.1, 0
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.d, label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.r = extractvalue { i64, i1 } %i.j, 0
  %i.s = add nsw i32 %i.d, -1000000000
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.t = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1, i64 0)
  %i.u = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1, i32 0)
  %.not = icmp eq i64 %i.t, %i.u
  br i1 %.not, label %bb.d, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = icmp slt i64 %.sroa.016.1, 0
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i64 %.sroa.016.1, -1
  %i.x = add nsw i32 %.sroa.02.1, 1000000000
  br label %bb.d

bb.n:                                             ; preds = %bb.l
  %i.y = add nsw i64 %.sroa.016.1, 1
  %i.z = add nsw i32 %.sroa.02.1, -1000000000
  br label %bb.d

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.a, %bb.d
  %.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.g ], [ 1, %bb.d ], [ 0, %bb.f ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %1, 1000000000
  br i1 %i.a, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.c = load i8, ptr %i.b, align 2, !range !11, !noundef !4 ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 -1, label %bb.d
    i8 5, label %bb.d
    i8 4, label %bb.d
    i8 3, label %bb.d
    i8 2, label %bb.d
    i8 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  store i32 1, ptr %0, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %2, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !12, !noundef !4
  %i.f = icmp ne i32 %1, 0
  %i.g = zext i1 %i.f to i8
  %.sroa.02.0 = or i8 %i.e, %i.g
  store i8 %.sroa.02.0, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.44.0.insert.ext = zext nneg i8 %i.c to i16
  %.sroa.44.0.insert.shift = shl nuw nsw i16 %.sroa.44.0.insert.ext, 8
  %.sroa.03.0.insert.insert = or disjoint i16 %.sroa.44.0.insert.shift, 17
  %i.h = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %.sroa.03.0.insert.insert) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.3.0 = phi ptr [ %i.h, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits15to_span_general(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 45 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [64 x i8], align 8                ; 11 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.22446 = alloca [3 x i8], align 1         ; 2 uses
  %.sroa.21 = alloca [3 x i8], align 1            ; 2 uses
  %.sroa.22 = alloca [3 x i8], align 1            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 90
  %.val = load i8, ptr %i.l, align 2, !range !11, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 91
  %.val301 = load i8, ptr %i.m, align 1, !range !11, !noundef !4
  %.not.i = icmp eq i8 %.val, -1
  %.not7.i = icmp eq i8 %.val301, -1
  %or.cond.i = or i1 %.not.i, %.not7.i
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 11) #23, !noalias !300
  store ptr %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.o, align 4
  br label %bb.es

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 58 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(61) %i.d, i8 0, i64 61, i1 false)
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 7 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !range !12, !alias.scope !301, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.af = load i8, ptr %i.ae, align 1, !range !13, !alias.scope !301, !noundef !4 ; 2 uses
  %i.ag = icmp slt i64 %i.z, 0
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !6

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp slt i64 %i.z, 0
  br i1 %i.ah, label %bb.f, label %bb.h, !prof !6

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i298 = phi i8 [ %i.af, %bb.d ], [ 0, %bb.e ]
  %i.ai = tail call fastcc { i64, ptr } @_RNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits14get_unit_value7general(i8 noundef 9, i64 noundef %i.z, i8 noundef %.sroa.01.0.i298) #23, !noalias !301
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300

bb.g:                                             ; preds = %bb.d
  %i.aj = icmp eq i8 %i.af, -1
  %i.ak = sub nsw i64 0, %i.z
  %spec.select.i299 = select i1 %i.aj, i64 %i.ak, i64 %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.018.0.i295 = phi i64 [ %i.z, %bb.e ], [ %spec.select.i299, %bb.g ]
  %i.al = inttoptr i64 %.sroa.018.0.i295 to ptr
  %i.am = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.al, 1
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300: ; preds = %bb.f, %bb.h
  %.merged.i296 = phi { i64, ptr } [ %i.ai, %bb.f ], [ %i.am, %bb.h ] ; 2 uses
  %i.an = extractvalue { i64, ptr } %.merged.i296, 0
  %i.ao = extractvalue { i64, ptr } %.merged.i296, 1 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread646
  %.sroa.713.sroa.4.0.copyload.i = phi i8 [ 0, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit ], [ %.sroa.0.0.i.i648, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread646 ] ; 3 uses
  %.sroa.713.sroa.0.0.copyload.i = phi i16 [ 0, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit ], [ %.sroa.012.0.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread646 ] ; 6 uses
  %.sroa.510.0.copyload.i = phi i16 [ 0, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit ], [ %masksel.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread646 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 7 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.z, label %bb.t

bb.j:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300
  store ptr %i.ao, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.at, align 4
  br label %bb.es

bb.k:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300
  %i.au = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.av = add i64 %i.au, -19999
  %or.cond.i308 = icmp ult i64 %i.av, -39997
  br i1 %or.cond.i308, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call noundef i8 @_RNvXsQ_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #23, !noalias !302
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = or disjoint i32 %i.ay, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ba = trunc nsw i64 %i.au to i32
  %i.bb = shl nsw i32 %i.ba, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.3.0.insert.insert.i.i = phi i32 [ %i.bb, %bb.m ], [ %i.az, %bb.l ] ; 5 uses
  %i.bc = trunc i32 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.bc, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread, label %bb.n

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.416.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.416.0.extract.trunc.i = trunc i32 %.sroa.416.0.extract.shift.i to i8
  %i.bd = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.416.0.extract.trunc.i), !noalias !302
  %i.be = ptrtoint ptr %i.bd to i64
  br label %bb.o

bb.n:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.517.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 16 ; 2 uses
  %.sroa.517.0.extract.trunc.i = trunc nuw i32 %.sroa.517.0.extract.shift.i to i16 ; 2 uses
  %.sroa.79.0.copyload.i = load i32, ptr %i.p, align 4 ; 3 uses
  %i.bf = icmp slt i32 %.sroa.3.0.insert.insert.i.i, 0 ; 2 uses
  %i.bg = sub i16 0, %.sroa.517.0.extract.trunc.i
  %.sroa.012.0.i = select i1 %i.bf, i16 %i.bg, i16 %.sroa.517.0.extract.trunc.i ; 2 uses
  %.not = icmp eq i32 %.sroa.517.0.extract.shift.i, 0 ; 2 uses
  %masksel.i = select i1 %.not, i16 0, i16 512    ; 2 uses
  %brmerge = or i1 %i.bf, %.not
  %.sroa.3.0.insert.insert.i.i.lobit = ashr i32 %.sroa.3.0.insert.insert.i.i, 31
  %.mux = trunc nsw i32 %.sroa.3.0.insert.insert.i.i.lobit to i8
  br i1 %brmerge, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread646, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n
  %i.bh = and i32 %.sroa.79.0.copyload.i, 255
  %.sroa.027.0.in.i.i = icmp eq i32 %i.bh, 0
  br i1 %.sroa.027.0.in.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread646, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit: ; preds = %.thread.i.i
  %i.bi = trunc i32 %.sroa.79.0.copyload.i to i8  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, -2
  br i1 %i.bj, label %bb.o, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread646

bb.o:                                             ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit
  %.sroa.0401.0515 = phi i64 [ %i.be, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread ], [ 0, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit ] ; 2 uses
  %i.bk = inttoptr i64 %.sroa.0401.0515 to ptr    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bk, ptr %i.c, align 8
  %i.bl = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB2_5ErrorNtB6_9IntoError10into_error(i16 2316)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bn = icmp eq i64 %.sroa.0401.0515, 0
  br i1 %i.bn, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = atomicrmw add ptr %i.bk, i64 -1 release, align 8, !noalias !303
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.r, label %common.resume
end_hunk_1
begin_hunk_2_@_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits28to_unsigned_duration_general:bb.a
  %i.ax = add i64 %i.av, %.sroa.05.3              ; 4 uses
  %i.ay = icmp ult i64 %i.ax, %i.av
  br i1 %i.ay, label %bb.z, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  %i.az = trunc nuw nsw i64 %i.aw to i32
  %i.ba = mul nuw nsw i32 %i.az, 1000
  %i.bb = add nuw nsw i32 %i.ba, %.sroa.19.3      ; 3 uses
  %i.bc = icmp samesign ugt i32 %i.bb, 999999999
  br i1 %i.bc, label %bb.x, label %bb.u

bb.x:                                             ; preds = %bb.w
  %i.bd = icmp eq i64 %i.ax, -1
  br i1 %i.bd, label %bb.z, label %bb.y, !prof !6

bb.y:                                             ; preds = %bb.x
  %i.be = add nuw i64 %i.ax, 1
  %i.bf = add nsw i32 %i.bb, -1000000000
  br label %bb.u

bb.z:                                             ; preds = %bb.x, %bb.v
  %i.bg = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 277) #23
  store ptr %i.bg, ptr %0, align 8
  br label %bb.d

bb.aa:                                            ; preds = %bb.ac, %bb.ae, %bb.u
  %.sroa.19.5 = phi i32 [ %.sroa.19.4, %bb.u ], [ %i.bs, %bb.ae ], [ %i.bo, %bb.ac ] ; 2 uses
  %.sroa.05.5 = phi i64 [ %.sroa.05.4, %bb.u ], [ %i.br, %bb.ae ], [ %i.bl, %bb.ac ] ; 3 uses
  %i.bh = load i32, ptr %1, align 8, !range !14, !noundef !4
  %i.bi = trunc nuw i32 %i.bh to i1
  br i1 %i.bi, label %bb.ag, label %bb.ao

bb.ab:                                            ; preds = %bb.u
  %i.bj = udiv i64 %i.at, 1000000000              ; 2 uses
  %i.bk = urem i64 %i.at, 1000000000
  %i.bl = add i64 %i.bj, %.sroa.05.4              ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.af, label %bb.ac, !prof !6

bb.ac:                                            ; preds = %bb.ab
  %i.bn = trunc nuw nsw i64 %i.bk to i32
  %i.bo = add nuw nsw i32 %.sroa.19.4, %i.bn      ; 3 uses
  %i.bp = icmp samesign ugt i32 %i.bo, 999999999
  br i1 %i.bp, label %bb.ad, label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  %i.bq = icmp eq i64 %i.bl, -1
  br i1 %i.bq, label %bb.af, label %bb.ae, !prof !6

bb.ae:                                            ; preds = %bb.ad
  %i.br = add nuw i64 %i.bl, 1
  %i.bs = add nsw i32 %i.bo, -1000000000
  br label %bb.aa

bb.af:                                            ; preds = %bb.ad, %bb.ab
  %i.bt = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 21) #23
  store ptr %i.bt, ptr %0, align 8
  br label %bb.d

bb.ag:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util19fractional_duration(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %.val, i32 noundef %i.bv) #23
  %i.bw = load i64, ptr %i.a, align 8, !range !9, !noundef !4
  %i.bx = trunc nuw i64 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.bx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bz = load ptr, ptr %i.by, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.bz, ptr %0, align 8
  br label %bb.d

bb.ai:                                            ; preds = %bb.ag
  %i.ca = load i64, ptr %i.by, align 8, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0172.0 = tail call i64 @llvm.abs.i64(i64 %i.ca, i1 false) ; 2 uses
  %.sroa.0173.0 = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 false) ; 4 uses
  %i.cd = icmp ult i32 %.sroa.0173.0, 1000000000
  br i1 %i.cd, label %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ce = udiv i32 %.sroa.0173.0, 1000000000
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = add nuw i64 %.sroa.0172.0, %i.cf
  %i.ch = urem i32 %.sroa.0173.0, 1000000000
  br label %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit

_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit: ; preds = %bb.ai, %bb.aj
  %.sroa.3.0.i = phi i32 [ %i.ch, %bb.aj ], [ %.sroa.0173.0, %bb.ai ]
  %.sroa.0.0.i215 = phi i64 [ %i.cg, %bb.aj ], [ %.sroa.0172.0, %bb.ai ]
  %i.ci = add i64 %.sroa.0.0.i215, %.sroa.05.5    ; 4 uses
  %i.cj = icmp ult i64 %i.ci, %.sroa.05.5
  br i1 %i.cj, label %bb.an, label %bb.ak, !prof !6

bb.ak:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit
  %i.ck = add nuw nsw i32 %.sroa.3.0.i, %.sroa.19.5 ; 3 uses
  %i.cl = icmp samesign ugt i32 %i.ck, 999999999
  br i1 %i.cl, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cm = icmp eq i64 %i.ci, -1
  br i1 %i.cm, label %bb.an, label %bb.am, !prof !6

bb.am:                                            ; preds = %bb.al
  %i.cn = add nuw i64 %i.ci, 1
  %i.co = add nsw i32 %i.ck, -1000000000
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit
  %i.cp = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 1302) #23
  store ptr %i.cp, ptr %0, align 8
  br label %bb.d

bb.ao:                                            ; preds = %bb.ak, %bb.am, %bb.aa
  %.sroa.19.6 = phi i32 [ %.sroa.19.5, %bb.aa ], [ %i.co, %bb.am ], [ %i.ck, %bb.ak ]
  %.sroa.05.6 = phi i64 [ %.sroa.05.5, %bb.aa ], [ %i.cn, %bb.am ], [ %i.ci, %bb.ak ]
  store i64 %.sroa.05.6, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits7set_hms(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !11, !noundef !4 ; 2 uses
  %i.c = icmp ult i8 %i.b, 6
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.d = load i32, ptr %0, align 8, !range !14, !alias.scope !364, !noundef !4
  %.not.i37 = icmp eq i32 %i.d, 0
  br i1 %.not.i37, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !noalias !364
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !11, !alias.scope !364, !noundef !4
  %.not7.i45 = icmp eq i8 %i.f, -1
  br i1 %.not7.i45, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 5, ptr %i.e, align 1, !alias.scope !364
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.sroa.424.0.insert.ext = zext nneg i8 %i.b to i16
  %.sroa.424.0.insert.shift = shl nuw nsw i16 %.sroa.424.0.insert.ext, 8
  %.sroa.023.0.insert.insert = or disjoint i16 %.sroa.424.0.insert.shift, 19
  %i.g = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %.sroa.023.0.insert.insert) #23
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction.exit

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction.exit: ; preds = %bb.j, %bb.g, %bb.f
  %.sroa.7.0 = phi ptr [ %i.g, %bb.f ], [ undef, %bb.g ], [ undef, %bb.j ]
  %.sroa.02.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ]
  %i.h = insertvalue { i64, ptr } poison, i64 %.sroa.02.0, 0
  %i.i = insertvalue { i64, ptr } %i.h, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.i

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.j, align 8, !alias.scope !364
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !12, !alias.scope !364, !noundef !4
  %i.m = icmp ne i64 %1, 0
  %i.n = zext i1 %i.m to i8
  %.sroa.02.0.i46 = or i8 %i.l, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %i.o, align 8, !alias.scope !365
  %i.p = icmp ne i64 %2, 0
  %i.q = zext i1 %i.p to i8
  %.sroa.02.0.i35 = or i8 %.sroa.02.0.i46, %i.q
  store i8 3, ptr %i.a, align 2, !alias.scope !366
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.r, align 8, !alias.scope !366
  %i.s = icmp ne i64 %3, 0
  %i.t = zext i1 %i.s to i8
  %.sroa.02.0.i = or i8 %.sroa.02.0.i35, %i.t     ; 2 uses
  store i8 %.sroa.02.0.i, ptr %i.k, align 8, !alias.scope !366
  %i.u = trunc nuw i32 %4 to i1
  br i1 %i.u, label %bb.h, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.v = icmp ult i32 %5, 1000000000
  br i1 %i.v, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28, !noalias !367
  unreachable

bb.j:                                             ; preds = %bb.h
  store i32 1, ptr %0, align 8, !alias.scope !367
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %6, align 4, !alias.scope !367
  %i.w = icmp ne i32 %5, 0
  %i.x = zext i1 %i.w to i8
  %.sroa.02.0.i48 = or i8 %.sroa.02.0.i, %i.x
  store i8 %.sroa.02.0.i48, ptr %i.k, align 8, !alias.scope !367
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #25
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #25 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !370
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8, !alias.scope !370
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !370
  %i.i = load i64, ptr %i.a, align 8, !range !9, !noalias !370, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsa9sSWSfjDbm_4jiff.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !10, !noalias !370, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !370
  br label %bb.f

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !370, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !370
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !370
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !370
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsa9sSWSfjDbm_4jiff.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.n, %bb.e ], [ undef, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsa9sSWSfjDbm_4jiff.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.e ], [ -1, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsa9sSWSfjDbm_4jiff.exit ], [ -1, %bb.a ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneE8grow_oneBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !373
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !373
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !373, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !373, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !373, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !373
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !373
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameE8grow_oneBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !376
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !376
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !376
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !376, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !376, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !376, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !376
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !376
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner14CachedTimeZoneE8grow_oneBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !379
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !379
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !379
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !379, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !379, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_2
