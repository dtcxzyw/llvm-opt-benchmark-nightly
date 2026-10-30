Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_chat_template.candle_wasm_chat_template.41e4d5002cfb9e58-cgu.09?download=true
inline.NumInlined: 156
inline.NumDeleted: 105
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5error9ErrorReprECs5EKAXG1naGG_25candle_wasm_chat_template:bb.a
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs1fJj97VvEPD_9minijinja5debug9DebugInfoE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #18
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs1fJj97VvEPD_9minijinja5debug9DebugInfoEEECs5EKAXG1naGG_25candle_wasm_chat_template.exit11

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs1fJj97VvEPD_9minijinja5debug9DebugInfoEEECs5EKAXG1naGG_25candle_wasm_chat_template.exit11: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit9, %bb.q, %bb.r
  ret void

bb.s:                                             ; preds = %bb.o, %bb.j, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs1fJj97VvEPD_9minijinja5debug9DebugInfoEEECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit, %bb.o
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = load i8, ptr %0, align 8, !range !130, !alias.scope !129, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 6, label %bb.c
    i8 7, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 8, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 9, label %bb.e
    i8 10, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 11, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs0_NvNtNtCs1fJj97VvEPD_9minijinja5value6object1__NtB7_9DynObjectNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !133, !nonnull !4, !noundef !4
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !133
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs1fJj97VvEPD_9minijinja5error5ErrorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !136, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !136
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs1fJj97VvEPD_9minijinja(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #18
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !139, !nonnull !4, !noundef !4
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !139
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCs1fJj97VvEPD_9minijinja(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #18
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5EKAXG1naGG_25candle_wasm_chat_template.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsgCecv3eZDcN_5alloc4sync11data_offsetANtNtCs1fJj97VvEPD_9minijinja5value5Valuej2_ECs5EKAXG1naGG_25candle_wasm_chat_template(ptr nofree noundef readnone captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsgCecv3eZDcN_5alloc4sync11data_offsetNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapECs5EKAXG1naGG_25candle_wasm_chat_template(ptr nofree noundef readnone captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsgCecv3eZDcN_5alloc4sync11data_offseteECs5EKAXG1naGG_25candle_wasm_chat_template(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_from_abiNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEB1d_(i32 noundef %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = zext i32 %0 to i64
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = zext i32 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = icmp ne i32 %0, 0
  tail call void @llvm.assume(i1 %i.n)
  store i64 %i.m, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.m, ptr %i.p, align 8
  %i.q = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueE16into_boxed_sliceCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 6 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  store i64 %i.s, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = icmp samesign ult i64 %i.s, 2305843009213693952
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.s, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.w = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !8, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.x, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #15
          to label %bb.r unwind label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ad = icmp samesign ule i64 %i.s, %i.z
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.z, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.af, align 8
  %.idx = shl nuw nsw i64 %i.s, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.r, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ah = icmp eq i64 %i.s, 0
  br i1 %i.ah, label %_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsej0D7ZFyXq_12wasm_bindgen7JsValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.body

.body:                                            ; preds = %bb.n, %bb.i, %bb.j, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.i ], [ %i.ai, %bb.e ], [ %i.at, %bb.j ], [ %i.ay, %bb.n ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #16
          to label %.thread21 unwind label %bb.q

.lr.ph:                                           ; preds = %bb.d, %bb.p
  %i.aj = phi ptr [ %i.ak, %bb.p ], [ %i.r, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 5 uses
  %i.al = load i32, ptr %i.aj, align 4, !noalias !154, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXsk_Cs5EKAXG1naGG_25candle_wasm_chat_templateNtB5_7MessageNtNtNtCsej0D7ZFyXq_12wasm_bindgen7convert6traits14TryFromJsValue17try_from_js_value(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, i32 noundef %i.al)
          to label %bb.g unwind label %bb.e

_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsej0D7ZFyXq_12wasm_bindgen7JsValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %bb.p, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  store i64 %i.s, ptr %i.b, align 8, !noalias !155
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %i.am, align 8, !noalias !155
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.f unwind label %.thread26

.thread26:                                        ; preds = %_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsej0D7ZFyXq_12wasm_bindgen7JsValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread21

bb.f:                                             ; preds = %_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsej0D7ZFyXq_12wasm_bindgen7JsValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ao = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE16into_boxed_sliceBG_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret { ptr, i64 } %i.ao

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.ap = load i64, ptr %i.f, align 8, !range !6, !alias.scope !157, !noundef !4
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %bb.h, label %bb.l, !prof !5

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !alias.scope !157, !noundef !4
  store i32 %i.as, ptr %i.a, align 4, !noalias !158
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.k unwind label %bb.i, !noalias !158

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %.val.i.i11 = load i32, ptr %i.a, align 4, !alias.scope !159, !noalias !158, !noundef !4 ; 2 uses
  %i.au = icmp ugt i32 %.val.i.i11, 1027
  br i1 %i.au, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val.i.i11) #14, !noalias !160
  br label %.body

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !alias.scope !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.av = load i64, ptr %i.af, align 8, !alias.scope !161, !noundef !4 ; 3 uses
  %i.aw = load i64, ptr %i.i, align 8, !range !162, !alias.scope !161, !noundef !4
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.p unwind label %bb.n, !noalias !163

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #16
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ba = load ptr, ptr %i.ae, align 8, !alias.scope !161, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.ba, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.bc = add i64 %i.av, 1
  store i64 %i.bc, ptr %i.af, align 8, !alias.scope !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bd = icmp eq ptr %i.ak, %i.ag
  br i1 %i.bd, label %_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCsej0D7ZFyXq_12wasm_bindgen7JsValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, label %.lr.ph

bb.q:                                             ; preds = %bb.s, %.thread21, %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread21:                                        ; preds = %.body, %.thread26
  %.pn25 = phi { ptr, i32 } [ %i.an, %.thread26 ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #16
          to label %.thread unwind label %bb.q

bb.r:                                             ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %.thread21, %bb.s
  %.pn916 = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %.pn25, %.thread21 ]
  resume { ptr, i32 } %.pn916

bb.s:                                             ; preds = %bb.c, %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #16
          to label %.thread unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEB1d_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ult i64 %1, 192153584101141163
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %i.d = call { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1z_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBS_7convert5impls24js_value_vector_into_abiB3F_E0EEB3H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = trunc i64 %i.g to i32
  %i.i = trunc i64 %i.f to i32
  %i.j = insertvalue { i32, i32 } poison, i32 %i.h, 0
  %i.k = insertvalue { i32, i32 } %i.j, i32 %i.i, 1
  ret { i32, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldBX_NtCsej0D7ZFyXq_12wasm_bindgen7JsValueuNCINvNtNtB3s_7convert5impls24js_value_vector_into_abiBX_E0NCINvNvB1N_8for_each4callB3q_NCINvMsk_B8_INtB8_3VecB3q_E14extend_trustedINtB2T_3MapBI_B42_EE0E0E0EBZ_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not14 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted15 = load i64, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val713 = phi i64 [ %.promoted15, %.lr.ph ], [ %i.r, %bb.d ] ; 3 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.k = invoke noundef i32 @_RNvXse_Cs5EKAXG1naGG_25candle_wasm_chat_templateNtCsej0D7ZFyXq_12wasm_bindgen7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_7MessageE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.l = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !9, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.p, align 8, !noundef !4
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.val713
  store i32 %i.k, ptr %i.q, align 4, !noalias !175
  %i.r = add i64 %.val713, 1                      ; 2 uses
  store i64 %i.r, ptr %i.h, align 8, !alias.scope !176
  %.not.not = icmp eq ptr %i.j, %i.d
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !4, !align !9, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.u, align 8, !noundef !4
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEEB1r_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEEB1r_.exit: ; preds = %bb.g, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.t, %bb.f ]
  resume { ptr, i32 } %.pn10

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val612 = load ptr, ptr %1, align 8, !nonnull !4, !align !9, !noundef !4
  store i64 %.val713, ptr %.val612, align 8
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEEB1r_.exit unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtBd_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueE12insert_entryCs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs5EKAXG1naGG_25candle_wasm_chat_template()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  store ptr %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueNtB19_4LeafE16push_with_handleCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  store ptr %i.v, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3K_11VacantEntryB1D_B1Y_E12insert_entry0ECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 %i.aa, ptr noundef nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #16
          to label %bb.h unwind label %bb.f

.critedge9:                                       ; preds = %bb.h
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %.critedge9 unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1j_E12insert_entryCs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1s_NtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs5EKAXG1naGG_25candle_wasm_chat_template()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  store ptr %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1p_NtB19_4LeafE16push_with_handleCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  store ptr %i.v, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1D_NtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3t_11VacantEntryB1D_B1D_E12insert_entry0ECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 %i.aa, ptr noundef nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #16
          to label %bb.h unwind label %bb.f

.critedge9:                                       ; preds = %bb.h
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %.critedge9 unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntrymNtNtCs1fJj97VvEPD_9minijinja5value5ValueE12insert_entryCs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
