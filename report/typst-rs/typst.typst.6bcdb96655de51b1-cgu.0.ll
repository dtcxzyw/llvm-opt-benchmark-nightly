Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1k_4item4ItemEECs9fPPV5zPXBl_5typst:bb.a
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i), !noalias !7609
  %i.d = shl i64 %.val1.i, 3
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1.i, 17
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp uge i64 %i.h, %i.f
  tail call void @llvm.assume(i1 %i.i), !noalias !7609
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j), !noalias !7609
  %i.k = sub nuw nsw i64 -16, %i.e
  %i.l = getelementptr inbounds i8, ptr %.val.i, i64 %i.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !7609
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7610)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !7611, !nonnull !28, !noundef !28 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !7611, !noundef !28 ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1g_4item4ItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit.i: ; preds = %.lr.ph
  %i.r = icmp eq i64 %i.t, %i.p
  br i1 %i.r, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1g_4item4ItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs9fPPV5zPXBl_5typst.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit.i
  %.sroa.0.0.i3 = phi i64 [ %i.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs9fPPV5zPXBl_5typst.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw [328 x i8], ptr %i.n, i64 %.sroa.0.0.i3 ; 2 uses
  %i.t = add i64 %.sroa.0.0.i3, 1                 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit3key3KeyECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(144) %i.u), !noalias !7610, !inline_history !7606
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit4item4ItemECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit.i unwind label %.body.i, !noalias !7610, !inline_history !7606

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit: ; preds = %.lr.ph5
  %i.v = add i64 %.sroa.0.1.i4, 1                 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.p
  br i1 %i.w, label %.body, label %.lr.ph5

.body.i:                                          ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = icmp eq i64 %i.t, %i.p
  br i1 %i.y, label %.body, label %.lr.ph5

.lr.ph5:                                          ; preds = %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit
  %.sroa.0.1.i4 = phi i64 [ %i.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit ], [ %i.t, %.body.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [328 x i8], ptr %i.n, i64 %.sroa.0.1.i4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit3key3KeyECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(144) %i.aa), !noalias !7610, !inline_history !7607
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit4item4ItemECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(328) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit unwind label %bb.b, !inline_history !7607

bb.b:                                             ; preds = %.lr.ph5
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !7610, !inline_history !7608
  unreachable

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1g_4item4ItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs9fPPV5zPXBl_5typst.exit
  %.val.i1 = load i64, ptr %0, align 8, !range !37, !alias.scope !7610, !noundef !28 ; 2 uses
  %i.ac = icmp eq i64 %.val.i1, 0
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1J_4item4ItemEEECs9fPPV5zPXBl_5typst.exit, label %bb.d

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs9fPPV5zPXBl_5typst.exit, %.body.i
  %.val2.i = load i64, ptr %0, align 8, !range !37, !alias.scope !7610, !noundef !28 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i, 0
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1Q_4item4ItemEEECs9fPPV5zPXBl_5typst.exit.i, label %bb.c

bb.c:                                             ; preds = %.body
  %i.ae = mul nuw i64 %.val2.i, 328
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !7610, !inline_history !7612
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1Q_4item4ItemEEECs9fPPV5zPXBl_5typst.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1Q_4item4ItemEEECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.c, %.body
  resume { ptr, i32 } %i.x

bb.d:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1g_4item4ItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i
  %i.af = mul nuw i64 %.val.i1, 328
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !7610, !inline_history !7612
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1J_4item4ItemEEECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1J_4item4ItemEEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1g_4item4ItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1k_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7617)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !7617, !noundef !28 ; 4 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !7617, !nonnull !28, !noundef !28
  %or.cond.i.i.i.i.i.i = icmp slt i64 %.val1.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.d = shl i64 %.val1.i, 3
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1.i, 17
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp uge i64 %i.h, %i.f
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub nuw nsw i64 -16, %i.e
  %i.l = getelementptr inbounds i8, ptr %.val.i, i64 %i.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !7617
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7618)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !alias.scope !7619, !nonnull !28, !noundef !28 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.n, align 8, !alias.scope !7619, !noundef !28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1d_5value5ValueEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 %.val.i.i, i64 noundef %.val1.i.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1g_5value5ValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.b, !noalias !7619

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val4.i.i = load i64, ptr %0, align 8, !range !37, !alias.scope !7619, !noundef !28 ; 2 uses
  %i.p = icmp eq i64 %.val4.i.i, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Q_5value5ValueEEECs9fPPV5zPXBl_5typst.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = mul nuw i64 %.val4.i.i, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !7619
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Q_5value5ValueEEECs9fPPV5zPXBl_5typst.exit.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1g_5value5ValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i
  %.val2.i.i = load i64, ptr %0, align 8, !range !37, !alias.scope !7619, !noundef !28 ; 2 uses
  %i.r = icmp eq i64 %.val2.i.i, 0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1w_5value5ValueEECs9fPPV5zPXBl_5typst.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1g_5value5ValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i
  %i.s = mul nuw i64 %.val2.i.i, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !7619
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1w_5value5ValueEECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Q_5value5ValueEEECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1w_5value5ValueEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1g_5value5ValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskmAm0p7xljK_9once_cell4sync8OnceCellINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs261H7cERR92_10serde_json5value5ValueEEECs9fPPV5zPXBl_5typst(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskmAm0p7xljK_9once_cell3imp8OnceCellINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs261H7cERR92_10serde_json5value5ValueEEECs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs261H7cERR92_10serde_json5value5ValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 %.0.val, i64 noundef %.8.val)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = icmp eq i64 %.8.val, 0
  br i1 %i.c, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs261H7cERR92_10serde_json5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.c
  %i.d = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef 8) #56
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs261H7cERR92_10serde_json5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %.8.val, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskmAm0p7xljK_9once_cell3imp8OnceCellINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs261H7cERR92_10serde_json5value5ValueEEECs9fPPV5zPXBl_5typst.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.d
  %i.f = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.f, i64 noundef 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskmAm0p7xljK_9once_cell3imp8OnceCellINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs261H7cERR92_10serde_json5value5ValueEEECs9fPPV5zPXBl_5typst.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs261H7cERR92_10serde_json5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskmAm0p7xljK_9once_cell3imp8OnceCellINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs261H7cERR92_10serde_json5value5ValueEEECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7623)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !7623
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !7623
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !7623, !nonnull !28, !align !39, !noundef !28 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !7623, !noundef !28 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !noalias !7623
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %1 = phi ptr [ %3, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %.sroa.0.03.us.i.i = phi i64 [ %2, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %2 = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noalias !7623, !noundef !28
  %i.h = icmp eq i8 %i.g, -128
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.i = add i64 %.sroa.0.03.us.i.i, -16
  %i.j = load i64, ptr %i.c, align 8, !noalias !7623, !noundef !28
  %i.k = and i64 %i.j, %i.i
  store i8 -1, ptr %i.f, align 1, !noalias !7623
  %i.l = load ptr, ptr %.val2.i, align 8, !noalias !7623, !nonnull !28, !noundef !28
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i8 -1, ptr %i.n, align 1, !noalias !7623
  %i.o = load i64, ptr %i.e, align 8, !noalias !7623, !noundef !28
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.e, align 8, !noalias !7623
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !noalias !7623
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %3 = phi ptr [ %.pre.i.i, %bb.b ], [ %1, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.q = add nuw i64 %.sroa.0.03.i.i, 1
  %i.r = load ptr, ptr %.val2.i, align 8, !noalias !7623, !nonnull !28, !noundef !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.03.i.i ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !7623, !noundef !28
  %i.u = icmp eq i8 %i.t, -128
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.v = add i64 %.sroa.0.03.i.i, -16
  %i.w = load i64, ptr %i.c, align 8, !noalias !7623, !noundef !28
  %i.x = and i64 %i.w, %i.v
  store i8 -1, ptr %i.s, align 1, !noalias !7623
  %i.y = load ptr, ptr %.val2.i, align 8, !noalias !7623, !nonnull !28, !noundef !28
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store i8 -1, ptr %i.aa, align 1, !noalias !7623
  %i.ab = load ptr, ptr %.val2.i, align 8, !noalias !7623, !nonnull !28, !noundef !28
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !noalias !7623, !inline_history !7622
  %i.ad = load i64, ptr %i.e, align 8, !noalias !7623, !noundef !28
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.e, align 8, !noalias !7623
  br label %bb.d

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !noalias !7623, !noundef !28 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 8
  %i.ah = add i64 %i.af, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %.sroa.04.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noalias !7623, !noundef !28
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.an = sub i64 %.sroa.04.0.i.i, %i.al
  store i64 %i.an, ptr %i.am, align 8, !noalias !7623
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint10ConstraintNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7638)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7642)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7643, !nonnull !28, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !7643, !noundef !28 ; 4 uses
  %i.d = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEENtNtNtBK_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 5 uses
  %i.f = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.g = load i64, ptr %i.e, align 16, !range !46, !alias.scope !7644, !noalias !7643, !noundef !28 ; 4 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.i = icmp ne i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.g, -11
  %i.k = icmp samesign ugt i64 %i.g, 10
  %i.l = select i1 %i.k, i64 %i.j, i64 5
  switch i64 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 5, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  ]

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 16 dereferenceable(64) %.sink.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i unwind label %bb.g, !noalias !7643

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.p = icmp eq i64 %i.f, %.val1.i.i.i.i.i
  br i1 %i.p, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEENtNtNtBK_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.q = add i64 %.sroa.0.1.i.i.i.i.i.i.i7, 1     ; 2 uses
  %i.r = icmp eq i64 %i.q, %.val1.i.i.i.i.i
  br i1 %i.r, label %.body.i.i.i.i.i, label %.lr.ph

bb.g:                                             ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.f, %.val1.i.i.i.i.i
  br i1 %i.t, label %.body.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i.i.i.i.i7 = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i7
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 16 dereferenceable(96) %i.u) #62
          to label %bb.f unwind label %bb.h, !noalias !7643

bb.h:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !7643
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.f, %bb.g
  %.val4.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !37, !alias.scope !7643, !noundef !28 ; 2 uses
  %i.w = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.w, label %.body.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.body.i.i.i.i.i
  %i.x = mul nuw i64 %.val4.i.i.i.i.i, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !7643
  br label %.body.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEENtNtNtBK_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, %bb.a
  %.val2.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !37, !alias.scope !7643, !noundef !28 ; 2 uses
  %i.y = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEENtNtNtBK_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %i.z = mul nuw i64 %.val2.i.i.i.i.i, 96
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !7643
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.i, %.body.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !7645
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !7645, !noundef !28
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs9fPPV5zPXBl_5typst(ptr %.val2.i.i.i.i, i64 %.val3.i.i.i.i) #62, !noalias !7645
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ac) #62
          to label %bb.m unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.j, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEENtNtNtBK_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !7645 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !7645, !noundef !28 ; 3 uses
  %i.af = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex5MutexNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEEECs9fPPV5zPXBl_5typst.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i
  %i.ag = shl i64 %.val1.i.i.i.i, 5               ; 2 uses
  %i.ah = add i64 %i.ag, 32                       ; 2 uses
  %i.ai = add i64 %.val1.i.i.i.i, 17
  %i.aj = add i64 %i.ai, %i.ah                    ; 4 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah
  %i.al = icmp ult i64 %i.aj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ak)
  tail call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex5MutexNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEEECs9fPPV5zPXBl_5typst.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i
  %i.an = sub nuw nsw i64 -32, %i.ag
  %i.ao = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.an
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !7645
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex5MutexNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEEECs9fPPV5zPXBl_5typst.exit

bb.l:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !7646
  unreachable

bb.m:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %i.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex5MutexNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCalloEEEECs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__12___ComemoCallEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.aq)
end_hunk_0
