inline.NumInlined: 2716
inline.NumDeleted: 1431
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE21parse_terminated_withCsluMP4ekZjHw_14diesel_derives:bb.a
  br i1 %i.m, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.320.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.6.0..sroa_idx16, i64 200, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx15, i64 24, i1 false)
  store i64 %i.l, ptr %i.d, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !2848, !noalias !2851, !align !12, !noundef !11
  %.not.i.i.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.d, i64 232, i1 false), !noalias !2848
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !2853
  %i.n = call noundef align 8 dereferenceable_or_null(232) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 8, 465) 232, i64 noundef 8) #25, !noalias !2853 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.r, !prof !1935

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #29
          to label %.noexc.i unwind label %bb.k, !noalias !2856

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4attr4MetaECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.b) #27
          to label %.body unwind label %bb.l, !noalias !2856

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2856
  unreachable

bb.m:                                             ; preds = %bb.h
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 175 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #29
          to label %bb.n unwind label %bb.o, !noalias !2856

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4attr4MetaECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.d) #27
          to label %.body unwind label %bb.p, !noalias !2848

bb.p:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2848
  unreachable

bb.q:                                             ; preds = %bb.t, %bb.r
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.n, ptr noundef nonnull align 8 dereferenceable(232) %i.d, i64 232, i1 false), !noalias !2848
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !2848, !noalias !2851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = invoke noundef zeroext i1 @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer8is_empty(ptr noundef nonnull align 8 %1)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  br i1 %i.u, label %bb.f, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvMs9_NtCshMFl0SviwmK_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  %i.v = load i64, ptr %i.c, align 8, !range !126, !alias.scope !2860, !noalias !2857, !noundef !11 ; 2 uses
  %.not.i = icmp eq i64 %i.v, -1
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !alias.scope !2862 ; 2 uses
  br i1 %.not.i, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val8.i = load ptr, ptr %i.g, align 8, !alias.scope !2863, !align !12, !noundef !11 ; 4 uses
  %.not.i11 = icmp eq ptr %.val8.i, null
  br i1 %.not.i11, label %bb.w, label %_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE6unwrapCsluMP4ekZjHw_14diesel_derives.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 213 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.w
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE6unwrapCsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.v
  store ptr null, ptr %i.g, align 8, !alias.scope !2866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %.val8.i, i64 232, i1 false), !noalias !2863
  store i32 %.sroa.0.0.copyload.i, ptr %i.i, align 8, !noalias !2863
  %i.w = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !2869, !noalias !2874, !noundef !11 ; 3 uses
  %i.x = load i64, ptr %i.f, align 8, !range !547, !alias.scope !2869, !noalias !2874, !noundef !11
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.x, label %_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCsluMP4ekZjHw_14diesel_derives.exit

bb.x:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE6unwrapCsluMP4ekZjHw_14diesel_derives.exit.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBR_5token5CommaEE8grow_oneCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.y, !noalias !2874

bb.y:                                             ; preds = %bb.x
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4attr4MetaECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef 232, i64 noundef 8) #25
  br label %.body

_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE10push_punctCsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE6unwrapCsluMP4ekZjHw_14diesel_derives.exit.i, %bb.x
  %i.ab = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !2869, !noalias !2874, !nonnull !11, !noundef !11
  %i.ac = getelementptr inbounds nuw [240 x i8], ptr %i.ab, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ac, ptr noundef nonnull align 8 dereferenceable(240) %i.a, i64 240, i1 false)
  %i.ad = add i64 %i.w, 1
  store i64 %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !2869, !noalias !2874
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef 232, i64 noundef 8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.ab:                                            ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.u
  %.sroa.626.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.626.0..sroa_idx27, i64 12, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.af, align 8, !alias.scope !2877
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.432.0..sroa_idx, align 8, !alias.scope !2877
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  store i64 -1, ptr %0, align 8, !noalias !11
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_4attr4MetaNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.f)
  br label %bb.ag

bb.ae:                                            ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.af:                                            ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx15, i64 24, i1 false)
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ad, %bb.f
  ret void

bb.ah:                                            ; preds = %.body
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, 38430716820228234) i64 @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.b = icmp ult i64 %.val1, 38430716820228233
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8, !align !12, !noundef !11
  %.not = icmp ne ptr %.val, null
  %. = zext i1 %.not to i64
  %i.d = add nuw nsw i64 %.val1, %.
  ret i64 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE3popCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !align !12, !noundef !11 ; 3 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %bb.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE3mapINtNtB1l_10punctuated4PairB1h_NtNtB1l_5token5CommaENCNvMB1W_INtB1W_10PunctuatedB1h_B2n_E3pop0ECsluMP4ekZjHw_14diesel_derives.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2881, !noalias !2884, !noundef !11 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBJ_5token5CommaEE3popCsluMP4ekZjHw_14diesel_derives.exit.thread, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBJ_5token5CommaEE3popCsluMP4ekZjHw_14diesel_derives.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBJ_5token5CommaEE3popCsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.b
  %i.e = add nsw i64 %i.c, -1                     ; 3 uses
  store i64 %i.e, ptr %i.b, align 8, !alias.scope !2881, !noalias !2884
  %i.f = load i64, ptr %1, align 8, !range !547, !alias.scope !2881, !noalias !2884, !noundef !11
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2881, !noalias !2884, !nonnull !11, !noundef !11
  %i.j = icmp ult i64 %i.c, 38430716820228234
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [240 x i8], ptr %i.i, i64 %i.e ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 8, !noalias !2881 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 8, !noalias !2881
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBJ_5token5CommaEE3popCsluMP4ekZjHw_14diesel_derives.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBJ_5token5CommaEE3popCsluMP4ekZjHw_14diesel_derives.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !2889
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.4.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.4.0..sroa_idx, i64 224, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %.sroa.45.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2891, !noalias !2886
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBN_5token5CommaEE3mapINtNtBN_10punctuated4PairBJ_B1f_ENCNvMB1H_INtB1H_10PunctuatedBJ_B1f_E3pops_0ECsluMP4ekZjHw_14diesel_derives.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBJ_5token5CommaEE3popCsluMP4ekZjHw_14diesel_derives.exit.thread: ; preds = %bb.b, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBJ_5token5CommaEE3popCsluMP4ekZjHw_14diesel_derives.exit
  store i64 -2, ptr %0, align 8, !alias.scope !2891, !noalias !2886
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBN_5token5CommaEE3mapINtNtBN_10punctuated4PairBJ_B1f_ENCNvMB1H_INtB1H_10PunctuatedBJ_B1f_E3pops_0ECsluMP4ekZjHw_14diesel_derives.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE3mapINtNtB1l_10punctuated4PairB1h_NtNtB1l_5token5CommaENCNvMB1W_INtB1W_10PunctuatedB1h_B2n_E3pop0ECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !alias.scope !2892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.4.0..sroa_idx.i2, ptr noundef nonnull align 8 dereferenceable(232) %.val, i64 232, i1 false), !alias.scope !2900
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.val, i64 noundef 232, i64 noundef 8) #25, !noalias !2901
  store i64 -1, ptr %0, align 8, !alias.scope !2895, !noalias !2898
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBN_5token5CommaEE3mapINtNtBN_10punctuated4PairBJ_B1f_ENCNvMB1H_INtB1H_10PunctuatedBJ_B1f_E3pops_0ECsluMP4ekZjHw_14diesel_derives.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBN_5token5CommaEE3mapINtNtBN_10punctuated4PairBJ_B1f_ENCNvMB1H_INtB1H_10PunctuatedBJ_B1f_E3pops_0ECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtCshMFl0SviwmK_3syn4attr4MetaNtNtBJ_5token5CommaEE3popCsluMP4ekZjHw_14diesel_derives.exit.thread, %bb.c, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE3mapINtNtB1l_10punctuated4PairB1h_NtNtB1l_5token5CommaENCNvMB1W_INtB1W_10PunctuatedB1h_B2n_E3pop0ECsluMP4ekZjHw_14diesel_derives.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4attr4MetaNtNtB4_5token5CommaE4iterCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refECsluMP4ekZjHw_14diesel_derives.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !11
  %i.e = getelementptr inbounds nuw [240 x i8], ptr %.val, i64 %.val1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2904, !align !12, !noundef !11
  store ptr %.val, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8
  call void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4attr4MetaNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !2907
  %i.j = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 8, 465) 24, i64 noundef 8) #25, !noalias !2907 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.a, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !1935

bb.a:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refECsluMP4ekZjHw_14diesel_derives.exit
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29, !noalias !2907
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4attr4MetaEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refECsluMP4ekZjHw_14diesel_derives.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @22, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, 28823037615171176) i64 @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE3lenCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.b = icmp ult i64 %.val, 28823037615171175
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8, !align !12, !noundef !11
  %.not = icmp ne ptr %.val1, null
  %. = zext i1 %.not to i64
  %i.d = add nuw nsw i64 %.val, %.
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4data5FieldEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refECsluMP4ekZjHw_14diesel_derives.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !11
  %i.e = getelementptr inbounds nuw [320 x i8], ptr %.val, i64 %.val1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2910, !align !12, !noundef !11
  store ptr %.val, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8
  call void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4data5FieldNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !2913
  %i.j = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 8, 465) 24, i64 noundef 8) #25, !noalias !2913 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.a, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !1935

bb.a:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4data5FieldEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refECsluMP4ekZjHw_14diesel_derives.exit
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29, !noalias !2913
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4data5FieldEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refECsluMP4ekZjHw_14diesel_derives.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @25, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE5firstCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !2916, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !2916, !noundef !11
  %i.e = getelementptr inbounds nuw [320 x i8], ptr %.val.i, i64 %.val1.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2919, !align !12, !noundef !11
  store ptr %.val.i, ptr %i.a, align 8, !noalias !2916
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8, !noalias !2916
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8, !noalias !2916
  call void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4data5FieldNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2916
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !2922
  %i.j = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 8, 465) 24, i64 noundef 8) #25, !noalias !2922 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCsluMP4ekZjHw_14diesel_derives.exit, !prof !1935

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29, !noalias !2922
  unreachable

_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = invoke { ptr, ptr } @_RNvXs0_NtCshMFl0SviwmK_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated9IterTraitNtNtB7_4data5FieldEp4ItemRB1d_EL_ENtNtNtCscI6d9CVNmLh_4core3ops5deref8DerefMut9deref_mutCsluMP4ekZjHw_14diesel_derives(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) @25)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCsluMP4ekZjHw_14diesel_derives.exit
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !11, !noalias !2925, !nonnull !11
  %i.q = invoke noundef align 8 ptr %i.p(ptr noundef %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBG_4data5FieldEECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.c, !inline_history !2928

bb.c:                                             ; preds = %.noexc, %_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCsluMP4ekZjHw_14diesel_derives.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBG_4data5FieldEECsluMP4ekZjHw_14diesel_derives(ptr nonnull %i.j, ptr nonnull @25) #27
  resume { ptr, i32 } %i.r

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtBG_4data5FieldEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %.noexc
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) 24, i64 noundef range(i64 1, 536870913) 8) #25
  ret ptr %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE9pairs_mutCsluMP4ekZjHw_14diesel_derives(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionQINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4data5FieldEE3mapQB1i_NvYBJ_INtNtB5_7convert5AsMutB1i_E6as_mutECsluMP4ekZjHw_14diesel_derives.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = getelementptr inbounds nuw [320 x i8], ptr %.val, i64 %.val1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2929, !align !12, !noundef !11
  store ptr %.val, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data7VariantNtNtB4_5token5CommaE4iterCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCshMFl0SviwmK_3syn4data7VariantEE3mapRB1i_NvYBJ_INtNtB5_7convert5AsRefB1i_E6as_refECsluMP4ekZjHw_14diesel_derives.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !11
  %i.e = getelementptr inbounds nuw [296 x i8], ptr %.val, i64 %.val1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2932, !align !12, !noundef !11
  store ptr %.val, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.i, align 8
  call void @_RNvMNtCshMFl0SviwmK_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4data7VariantNtNtB4_5token5CommaEE3newCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
end_hunk_0
