Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.13?download=true
inline.NumInlined: 1152
inline.NumDeleted: 749
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEBH_:bb.a

.body:                                            ; preds = %bb.d, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.z ], [ %i.g, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #28
          to label %common.resume unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_.exit20 unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_.exit20: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %bb.b

bb.ac:                                            ; preds = %.body13, %.body9, %.body23, %.body5, %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ad:                                            ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body5

.body5:                                           ; preds = %bb.h, %bb.ad
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.af, %bb.ad ], [ %i.i, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ag) #28
          to label %.body23 unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit7: ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !153, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ai)
          to label %bb.af unwind label %bb.ae, !noalias !153, !inline_history !151

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit7
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 72, i64 noundef 8) #31, !noalias !153
  br label %.body23

.body23:                                          ; preds = %bb.ae, %.body5
  %.pn = phi { ptr, i32 } [ %eh.lpad-body6, %.body5 ], [ %i.aj, %bb.ae ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #28
          to label %common.resume unwind label %bb.ac

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit7
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 72, i64 noundef 8) #31, !noalias !153
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_.exit27 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_.exit27: ; preds = %bb.af
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %bb.b

bb.ai:                                            ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body9

.body9:                                           ; preds = %bb.l, %bb.ai
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.ao, %bb.ai ], [ %i.l, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #28
          to label %common.resume unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit11: ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_.exit29 unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit11
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_.exit29: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit11
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %bb.b

bb.al:                                            ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body13

.body13:                                          ; preds = %bb.p, %bb.al
  %eh.lpad-body14 = phi { ptr, i32 } [ %i.at, %bb.al ], [ %i.o, %bb.p ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #28
          to label %common.resume unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit15: ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_.exit31 unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit15
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEB1e_.exit31: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir4TypeEEB1a_.exit15
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8ScopeDefEEB1i_(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEENvMs0_B2o_B2l_3keyEB2S_EB2W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !8
  %i.h = mul i64 %i.d, 80                         ; 7 uses
  %i.i = udiv i64 %i.h, 72                        ; 2 uses
  %i.j = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEENvMs0_B1O_B1L_3keyENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2i_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2i_E0INtNtBc_6result6ResultB41_zEEB2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEENvMs0_B20_B1X_3keyEEB2y_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #28
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 72                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !158, !nonnull !8, !noundef !8 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !158, !nonnull !8, !noundef !8 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 80                  ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  store i64 0, ptr %i.a, align 8, !noalias !158
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !158
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !158
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !158
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !158
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.y = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.y, label %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEE32forget_allocation_drop_remainingB1x_.exit, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit.i.i: ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.w
  br i1 %i.z, label %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEE32forget_allocation_drop_remainingB1x_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit.i.i
  %.sroa.0.0.i.i17 = phi i64 [ %i.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit.i.i ], [ 0, %.noexc ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i17 ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.0.0.i.i17, 1     ; 4 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val8.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !159, !noalias !158, !nonnull !8, !noundef !8
  %i.ad = getelementptr i8, ptr %i.aa, i64 24
  %.val9.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !159, !noalias !158
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymbolEBF_(ptr nonnull %.val8.i.i, ptr %.val9.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit.i.i unwind label %bb.e, !noalias !160

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit10.i.i: ; preds = %.lr.ph19
  %i.ae = add i64 %.sroa.0.1.i.i18, 1             ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.w
  br i1 %i.af, label %.body, label %.lr.ph19

bb.e:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = icmp eq i64 %i.ab, %i.w
  br i1 %i.ah, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit10.i.i
  %.sroa.0.1.i.i18 = phi i64 [ %i.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit10.i.i ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i18 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %.val.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !159, !noalias !158, !nonnull !8, !noundef !8
  %i.ak = getelementptr i8, ptr %i.ai, i64 24
  %.val7.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !159, !noalias !158
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymbolEBF_(ptr nonnull %.val.i.i, ptr %.val7.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit10.i.i unwind label %bb.f, !noalias !160

bb.f:                                             ; preds = %.lr.ph19
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !160
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit10.i.i, %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.ag, %bb.e ], [ %i.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit10.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEB2i_EEB2m_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %bb.b unwind label %bb.m

_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEE32forget_allocation_drop_remainingB1x_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEEB1c_.exit.i.i, %.noexc
  %.not.i = icmp ne i64 %i.d, 0
  %i.an = mul nuw i64 %i.i, 72                    ; 4 uses
  %i.ao = icmp ne i64 %i.h, %i.an
  %or.cond = select i1 %.not.i, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.h, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEB1y_EB1C_.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEB1y_EB1C_.exit.thread: ; preds = %bb.i, %2, %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEE32forget_allocation_drop_remainingB1x_.exit, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.at, %bb.j ], [ %i.e, %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEE32forget_allocation_drop_remainingB1x_.exit ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.i, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEENvMs0_B20_B1X_3keyEEB2y_(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  ret void

bb.h:                                             ; preds = %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEE32forget_allocation_drop_remainingB1x_.exit
  %i.ar = icmp ult i64 %i.h, 72
  br i1 %i.ar, label %2, label %bb.j

2:                                                ; preds = %bb.h
  %3 = icmp eq i64 %i.h, 0
  br i1 %3, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEB1y_EB1C_.exit.thread, label %bb.i

bb.i:                                             ; preds = %2
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8) #31
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEB1y_EB1C_.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.as = icmp ule i64 %i.an, %i.h
  call void @llvm.assume(i1 %i.as)
  %i.at = call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 0, -15) %i.an) #31 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEB1y_EB1C_.exit.thread, !prof !161

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.an) #33
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.body, %bb.b
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4O_13SemanticsImpl20resolve_derive_macro00EIB2m_NtB4Q_5MacroEEB4Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !8 ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.i = invoke noundef i64 @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB46_13SemanticsImpl20resolve_derive_macro00ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB48_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %.noexc unwind label %.loopexit.split-lp ; 3 uses

bb.b:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEIB1M_NtCs8Xq8PKFYOms_3hir5MacroEEEB49_.exit
  %.val12 = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEIB1M_NtCs8Xq8PKFYOms_3hir5MacroEEEB49_.exit ], [ %.val12.pre, %.loopexit ], [ %i.g, %.loopexit.split-lp ]
  %.val11 = phi ptr [ inttoptr (i64 4 to ptr), %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEIB1M_NtCs8Xq8PKFYOms_3hir5MacroEEEB49_.exit ], [ %.val11.pre, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ap, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEIB1M_NtCs8Xq8PKFYOms_3hir5MacroEEEB49_.exit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !178
  store i64 %.val12, ptr %i.e, align 8, !noalias !178
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.val11, ptr %i.j, align 8, !noalias !178
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENtNtNtBR_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.r unwind label %bb.q

.loopexit:                                        ; preds = %.noexc.i, %.noexc15, %.noexc16, %.noexc17, %.noexc10.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.val11.pre = load ptr, ptr %1, align 8, !alias.scope !16
  %.val12.pre = load i64, ptr %i.f, align 8, !alias.scope !16
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.loopexit22, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !179, !noalias !180, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !177, !nonnull !8, !align !9
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !177, !nonnull !8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !177, !nonnull !8, !align !9 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4c_13SemanticsImpl20resolve_derive_macro00ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedB4e_.exit.i, %.lr.ph.i
  %.sroa.0.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.an, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4c_13SemanticsImpl20resolve_derive_macro00ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedB4e_.exit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %.sroa.0.05.i ; 3 uses
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.r, align 4, !noalias !182
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.42.0.copyload.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !noalias !182 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.53.0.copyload.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !182 ; 2 uses
  switch i32 %.sroa.01.0.copyload.i.i, label %.noexc.i [
    i32 2, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4c_13SemanticsImpl20resolve_derive_macro00ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedB4e_.exit.i
    i32 0, label %.noexc10.i
  ]

.noexc.i:                                         ; preds = %bb.c
  %i.s = invoke noundef nonnull align 4 ptr @_RINvMs9_NvCsileJQcQObtj_7hir_defs8_1__NtB8_19BuiltinDeriveImplId3locDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_ECs8Xq8PKFYOms_3hir(i32 noundef %.sroa.42.0.copyload.i.i, i32 noundef %.sroa.53.0.copyload.i.i, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.q)
          to label %.noexc15 unwind label %.loopexit ; 2 uses

.noexc15:                                         ; preds = %.noexc.i
  %i.t = invoke { i32, i32 } @_RNvXsT_CsileJQcQObtj_7hir_defNtB5_5AdtIdNtB5_9HasModule6module(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.s, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.q)
          to label %.noexc16 unwind label %.loopexit ; 2 uses

.noexc16:                                         ; preds = %.noexc15
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = extractvalue { i32, i32 } %i.t, 1
  %i.w = invoke { i32, i32 } @_RINvMs8_NvCsileJQcQObtj_7hir_defsi_1__NtB8_10ModuleIdLt5krateDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECs8Xq8PKFYOms_3hir(i32 noundef %i.u, i32 noundef %i.v, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.q)
          to label %.noexc17 unwind label %.loopexit ; 2 uses

.noexc17:                                         ; preds = %.noexc16
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = extractvalue { i32, i32 } %i.w, 1
  %i.z = invoke noundef nonnull align 4 ptr @_RNvNtCsileJQcQObtj_7hir_def9lang_item10lang_items(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.q, i32 noundef %i.x, i32 noundef %i.y)
          to label %.noexc18 unwind label %.loopexit ; 11 uses

.noexc18:                                         ; preds = %.noexc17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ab = load i8, ptr %i.aa, align 4, !range !17, !noalias !183, !noundef !8
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.m
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.l
  ]

.noexc10.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !184
  invoke void @_RNvNtCs8Xq8PKFYOms_3hir9semantics22macro_call_to_macro_id(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef %.sroa.42.0.copyload.i.i, i32 noundef %.sroa.53.0.copyload.i.i)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %.noexc10.i
  %i.ac = load i32, ptr %i.d, align 4, !range !185, !noalias !184, !noundef !8 ; 2 uses
  %.not42.i.i.i = icmp eq i32 %i.ac, -1
  %.sroa.8.0.copyload4.i = load i64, ptr %.sroa.8.0..sroa_idx3.i, align 4, !noalias !177
  %.sroa.8.0.i = select i1 %.not42.i.i.i, i64 undef, i64 %.sroa.8.0.copyload4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !184
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4c_13SemanticsImpl20resolve_derive_macro00ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedB4e_.exit.i

default.unreachable:                              ; preds = %.noexc18
  unreachable

bb.d:                                             ; preds = %.noexc18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  br label %bb.m

bb.e:                                             ; preds = %.noexc18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 108
  br label %bb.m

bb.f:                                             ; preds = %.noexc18
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  br label %bb.m

bb.g:                                             ; preds = %.noexc18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  br label %bb.m

bb.h:                                             ; preds = %.noexc18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  br label %bb.m

bb.i:                                             ; preds = %.noexc18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  br label %bb.m

bb.j:                                             ; preds = %.noexc18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  br label %bb.m

bb.k:                                             ; preds = %.noexc18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  br label %bb.m

bb.l:                                             ; preds = %.noexc18, %.noexc18
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.noexc18
  %.sink.i.i.i = phi i64 [ 88, %bb.l ], [ 64, %bb.k ], [ 76, %bb.j ], [ 40, %bb.i ], [ 52, %bb.h ], [ 28, %bb.g ], [ 16, %bb.f ], [ 100, %bb.d ], [ 112, %bb.e ], [ 4, %.noexc18 ]
  %.sroa.04.0.in.i.i.i = phi ptr [ %i.al, %bb.l ], [ %i.ak, %bb.k ], [ %i.aj, %bb.j ], [ %i.ai, %bb.i ], [ %i.ah, %bb.h ], [ %i.ag, %bb.g ], [ %i.af, %bb.f ], [ %i.ad, %bb.d ], [ %i.ae, %bb.e ], [ %i.z, %.noexc18 ]
  %.sroa.04.0.i.i.i = load i32, ptr %.sroa.04.0.in.i.i.i, align 4, !noalias !183 ; 2 uses
  %.not43.i.i.i = icmp eq i32 %.sroa.04.0.i.i.i, -1
  br i1 %.not43.i.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4c_13SemanticsImpl20resolve_derive_macro00ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedB4e_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.14.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink.i.i.i
  %.sroa.14.0.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx31.i.i.i, align 4, !noalias !183
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4c_13SemanticsImpl20resolve_derive_macro00ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedB4e_.exit.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEENCNCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4c_13SemanticsImpl20resolve_derive_macro00ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedB4e_.exit.i: ; preds = %bb.n, %bb.m, %.noexc19, %bb.c
  %.sroa.8.1.i = phi i64 [ undef, %bb.c ], [ %.sroa.14.0.i.i.i, %bb.n ], [ %.sroa.8.0.i, %.noexc19 ], [ undef, %bb.m ]
  %.sroa.01.1.i = phi i32 [ -1, %bb.c ], [ %.sroa.04.0.i.i.i, %bb.n ], [ %i.ac, %.noexc19 ], [ -1, %bb.m ]
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.sroa.0.05.i ; 2 uses
end_hunk_0
