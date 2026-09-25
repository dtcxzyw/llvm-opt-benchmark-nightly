Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zerovec_derive-d24a362750fa05cf.zerovec_derive.ccd4135e84c9325b-cgu.2?download=true
inline.NumInlined: 65
inline.NumDeleted: 49
begin_hunk_0_@_RNvXsh_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcNtB5_12PanicMessageINtB5_6EncodeuE6encodeCshAipbVPsRtf_14zerovec_derive:bb.a
  store i64 %i.bh, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXNvNtCstuaXukgBIa_10proc_macro6bridges3_1__INtNtCs4NRVxsYgnAr_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCshAipbVPsRtf_14zerovec_derive.exit

_RNvXNvNtCstuaXukgBIa_10proc_macro6bridges3_1__INtNtCs4NRVxsYgnAr_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCshAipbVPsRtf_14zerovec_derive.exit: ; preds = %_RNvMs3_NtNtCstuaXukgBIa_10proc_macro6bridge6bufferNtB5_6Buffer4pushCshAipbVPsRtf_14zerovec_derive.exit8.i, %_RNvXs8_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCshAipbVPsRtf_14zerovec_derive.exit.i
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCstuaXukgBIa_10proc_macro6bridge3rpc12PanicMessageECshAipbVPsRtf_14zerovec_derive(ptr nonnull align 8 %0)
  ret void

bb.q:                                             ; preds = %common.resume.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.r:                                             ; preds = %common.resume.i
  resume { ptr, i32 } %common.resume.op.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7step_byINtNtNtBb_3ops5range5RangejEINtB5_14SpecRangeSetupBQ_E5setupCshAipbVPsRtf_14zerovec_derive(i64 %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.06.0 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0) ; 2 uses
  %i.b = udiv i64 %.sroa.06.0, %2
  %i.c = urem i64 %.sroa.06.0, %2
  %.not = icmp ne i64 %i.c, 0
  %i.d = zext i1 %.not to i64
  %.sroa.05.0 = add i64 %i.b, %i.d
  %i.e = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.05.0, 1
  ret { i64, i64 } %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_div_by_zero(ptr nonnull align 8 @64) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXsk_NtNtCstuaXukgBIa_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCshAipbVPsRtf_14zerovec_derive(ptr nofree align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.c, ptr nonnull align 8 @65) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs3fkuTcS0S8g_11miniz_oxide(ptr nonnull %i.a, i64 4, ptr %i.e, i64 4, ptr nonnull align 8 @65)
  %i.f = load i64, ptr %i.b, align 8              ; 4 uses
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8
  %i.i = add i64 %i.f, -4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.j, ptr %0, align 8
  store i64 %i.i, ptr %i.b, align 8
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4
  ret i32 %.sroa.0.0.copyload

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 4, i64 %i.f, i64 %i.f, ptr nonnull align 8 @65) #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXsx_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCshAipbVPsRtf_14zerovec_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvXsy_NtCs4NRVxsYgnAr_4core6optionINtB5_8IntoIterRNtCsghEUimwObfx_11proc_macro25IdentENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCshAipbVPsRtf_14zerovec_derive(ptr nofree align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsz_NtCsghEUimwObfx_11proc_macro23impNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshAipbVPsRtf_14zerovec_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call ptr @_RNvXs1_NtCsghEUimwObfx_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call i32 @_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshAipbVPsRtf_14zerovec_derive(ptr nonnull align 4 %i.h), !noalias !51 ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !noalias !51
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCstuaXukgBIa_10proc_macro9TokenTreeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsghEUimwObfx_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
          to label %_RNvXsA_NtCsghEUimwObfx_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshAipbVPsRtf_14zerovec_derive.exit unwind label %bb.d, !noalias !51

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsghEUimwObfx_11proc_macro2(ptr nonnull align 4 %i.b) #30
          to label %bb.f unwind label %bb.e, !noalias !51

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !51
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvXsA_NtCsghEUimwObfx_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshAipbVPsRtf_14zerovec_derive.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsA_NtCsghEUimwObfx_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshAipbVPsRtf_14zerovec_derive.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, 2) i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRNtCsghEUimwObfx_11proc_macro25IdentENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCshAipbVPsRtf_14zerovec_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = icmp ne ptr %.val, null
  %i.b = zext i1 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, 2) i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRNtNtCslNEiUQgeYIG_3syn4data7VariantENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCshAipbVPsRtf_14zerovec_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = icmp ne ptr %.val, null
  %i.b = zext i1 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, 2) i64 @_RNvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterRNtNtCslNEiUQgeYIG_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCshAipbVPsRtf_14zerovec_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = icmp ne ptr %.val, null
  %i.b = zext i1 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCshAipbVPsRtf_14zerovec_derive11make_varule12UnsizedFieldEENCNvMB1K_NtB1K_13UnsizedFields19maybe_multi_getters0ENtNtNtCsdQT5ZjIgVrW_5quote9___private3ext14RepIteratorExt15quote_into_iterB1M_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtCslNEiUQgeYIG_3syn10punctuated4IterNtNtBX_4data5FieldEENtNtNtB9_6traits8iterator8Iterator9enumerateCshAipbVPsRtf_14zerovec_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher8write_u8CshAipbVPsRtf_14zerovec_derive(ptr nofree align 8 captures(none) %0, i8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 2 uses
  %i.h = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCsghEUimwObfx_11proc_macro2(i64 1, i64 %i.g) ; 3 uses
  %i.i = icmp ugt i64 %i.h, 3                     ; 2 uses
  %i.j = zext i8 %1 to i64
  %spec.select = select i1 %i.i, i64 4, i64 0     ; 4 uses
  %spec.select3 = select i1 %i.i, i64 %i.j, i64 0 ; 2 uses
  %i.k = or disjoint i64 %spec.select, 1
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.c, label %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = zext i8 %1 to i64
  %i.n = shl nuw nsw i64 %spec.select, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %spec.select3
  %i.q = or disjoint i64 %spec.select, 2
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit.i.i

_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.03.1.i.i.i = phi i64 [ %i.q, %bb.c ], [ %spec.select, %bb.b ] ; 2 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.p, %bb.c ], [ %spec.select3, %bb.b ]
  %i.r = icmp ult i64 %.sroa.03.1.i.i.i, %i.h
  %i.s = zext i8 %1 to i64
  %i.t = shl nuw nsw i64 %.sroa.03.1.i.i.i, 3
  %i.u = shl nuw nsw i64 %i.s, %i.t
  %i.v = select i1 %i.r, i64 %i.u, i64 0
  %.sroa.0.2.i.i.i = or i64 %.sroa.0.1.i.i.i, %i.v
  %i.w = load i64, ptr %i.d, align 8              ; 2 uses
  %i.x = shl i64 %i.w, 3
  %i.y = and i64 %i.x, 56
  %i.z = shl i64 %.sroa.0.2.i.i.i, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = or i64 %i.z, %i.ab                      ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = icmp ugt i64 %i.g, 1
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = xor i64 %i.af, %i.ac                    ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8
  %i.ah = load i64, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = add i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, %i.ag
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = tail call i64 @_RINvNtCs4NRVxsYgnAr_4core10intrinsics11rotate_leftyECshAipbVPsRtf_14zerovec_derive(i64 %i.aj, i32 13) #29
  %i.ap = load i64, ptr %0, align 8
  %i.aq = xor i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.ai, align 8
  %i.ar = load i64, ptr %i.ae, align 8
  %i.as = tail call i64 @_RINvNtCs4NRVxsYgnAr_4core10intrinsics11rotate_leftyECshAipbVPsRtf_14zerovec_derive(i64 %i.ar, i32 16) #29
  %i.at = load i64, ptr %i.al, align 8
  %i.au = xor i64 %i.at, %i.as
  store i64 %i.au, ptr %i.ae, align 8
  %i.av = load i64, ptr %0, align 8
  %i.aw = tail call i64 @_RINvNtCs4NRVxsYgnAr_4core10intrinsics11rotate_leftyECshAipbVPsRtf_14zerovec_derive(i64 %i.av, i32 32) #29
  %i.ax = load i64, ptr %i.al, align 8
  %i.ay = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.az = add i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.al, align 8
  %i.ba = load i64, ptr %i.ae, align 8
  %i.bb = add i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %0, align 8
  %i.bc = tail call i64 @_RINvNtCs4NRVxsYgnAr_4core10intrinsics11rotate_leftyECshAipbVPsRtf_14zerovec_derive(i64 %i.ay, i32 17) #29
  %i.bd = load i64, ptr %i.al, align 8
  %i.be = xor i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.ai, align 8
  %i.bf = load i64, ptr %i.ae, align 8
  %i.bg = tail call i64 @_RINvNtCs4NRVxsYgnAr_4core10intrinsics11rotate_leftyECshAipbVPsRtf_14zerovec_derive(i64 %i.bf, i32 21) #29
  %i.bh = load i64, ptr %0, align 8
  %i.bi = xor i64 %i.bh, %i.bg
  store i64 %i.bi, ptr %i.ae, align 8
  %i.bj = load i64, ptr %i.al, align 8
  %i.bk = tail call i64 @_RINvNtCs4NRVxsYgnAr_4core10intrinsics11rotate_leftyECshAipbVPsRtf_14zerovec_derive(i64 %i.bj, i32 32) #29
  store i64 %i.bk, ptr %i.al, align 8
  %i.bl = load i64, ptr %i.aa, align 8
  %i.bm = load i64, ptr %0, align 8
  %i.bn = xor i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %0, align 8
  %2 = add i64 %i.e, -7
  %.not.i.i = icmp eq i64 %i.e, 8
  br i1 %.not.i.i, label %.thread.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit17.i.i

.thread.i.i:                                      ; preds = %bb.d, %bb.a
  %i.bo = zext i8 %1 to i64
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit17.i.i

_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit17.i.i: ; preds = %.thread.i.i, %bb.d
  %i.bp = phi i64 [ 1, %.thread.i.i ], [ %2, %bb.d ]
  %.sroa.0.2.i14.i.i = phi i64 [ %i.bo, %.thread.i.i ], [ 0, %bb.d ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i.i, ptr %i.bq, align 8
  br label %_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5writeCshAipbVPsRtf_14zerovec_derive.exit

bb.e:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit.i.i
  %i.br = add i64 %i.w, 1
  br label %_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5writeCshAipbVPsRtf_14zerovec_derive.exit

_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5writeCshAipbVPsRtf_14zerovec_derive.exit: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit17.i.i, %bb.e
  %storemerge.i.i = phi i64 [ %i.br, %bb.e ], [ %i.bp, %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_leCshAipbVPsRtf_14zerovec_derive.exit17.i.i ]
  store i64 %storemerge.i.i, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNvYNtCsghEUimwObfx_11proc_macro25IdentNtNtCslNEiUQgeYIG_3syn5parse5Parse5parseNtBG_6Parser5parseCshAipbVPsRtf_14zerovec_derive(ptr sret([32 x i8]) align 8 %0, i32 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs1_CsghEUimwObfx_11proc_macro2NtB5_11TokenStreamINtNtCs4NRVxsYgnAr_4core7convert4FromNtCstuaXukgBIa_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.l, i32 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !54
  %i.m = call { ptr, i64 } @_RNvMNtCslNEiUQgeYIG_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.c), !noalias !54 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  store ptr %i.n, ptr %i.k, align 8, !noalias !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !54
  invoke void @_RNvNtCslNEiUQgeYIG_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.d unwind label %bb.c, !noalias !54

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn8.i = phi { ptr, i32 } [ %i.q, %bb.c ], [ %.pn.i, %bb.e ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k) #30
          to label %bb.u unwind label %bb.t

bb.c:                                             ; preds = %.invoke.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvYNvYNtCsghEUimwObfx_11proc_macro25IdentNtNtCslNEiUQgeYIG_3syn5parse5Parse5parseINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBG_11ParseBufferEE9call_onceCshAipbVPsRtf_14zerovec_derive(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.f, !noalias !54

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.v, %bb.k ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j) #30
          to label %bb.b unwind label %bb.t

bb.f:                                             ; preds = %.invoke13.i, %bb.i, %bb.g, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro25IdentNtNtCslNEiUQgeYIG_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.h unwind label %bb.f, !noalias !54

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.h, align 8, !noalias !54
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !54
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro25IdentNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1j_EE13from_residualB1n_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @62)
          to label %.invoke.i unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !54
  invoke void @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k, !noalias !54

bb.k:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.i) #30
          to label %bb.e unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.m unwind label %bb.k, !noalias !54

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr %i.f, align 8, !noalias !54
  %.not.i = icmp eq i64 %i.w, -1
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !54
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro25IdentNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1j_EE13from_residualB1n_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @61)
          to label %.invoke13.i unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.x = invoke { ptr, ptr } @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer6cursor(ptr nonnull align 8 %i.j)
          to label %bb.p unwind label %bb.k, !noalias !54 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.y = extractvalue { ptr, ptr } %i.x, 0
  %i.z = extractvalue { ptr, ptr } %i.x, 1
  %i.aa = invoke { i32, i8 } @_RNvNtCslNEiUQgeYIG_3syn5parse33span_of_unexpected_ignoring_nones(ptr %i.y, ptr %i.z)
          to label %bb.q unwind label %bb.k, !noalias !54 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ab = extractvalue { i32, i8 } %i.aa, 1       ; 2 uses
  %.not6.not.i = icmp eq i8 %i.ab, -1
  br i1 %.not6.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = extractvalue { i32, i8 } %i.aa, 0
  invoke void @_RNvNtCslNEiUQgeYIG_3syn5parse20err_unexpected_token(ptr nonnull sret([24 x i8]) align 8 %i.d, i32 %i.ac, i8 %i.ab)
          to label %bb.s unwind label %bb.k, !noalias !54

.thread.i:                                        ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !54
  br label %.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !54
  br label %.invoke13.i

.invoke13.i:                                      ; preds = %bb.s, %bb.n
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.i)
          to label %.invoke.i unwind label %bb.f

.invoke.i:                                        ; preds = %.invoke13.i, %.thread.i, %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.j)
          to label %_RNvXsh_NtCslNEiUQgeYIG_3syn5parseNvYNtCsghEUimwObfx_11proc_macro25IdentNtB5_5Parse5parseNtB5_6Parser6parse2CshAipbVPsRtf_14zerovec_derive.exit unwind label %bb.c

bb.t:                                             ; preds = %bb.k, %bb.e, %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.u:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn8.i

_RNvXsh_NtCslNEiUQgeYIG_3syn5parseNvYNtCsghEUimwObfx_11proc_macro25IdentNtB5_5Parse5parseNtB5_6Parser6parse2CshAipbVPsRtf_14zerovec_derive.exit: ; preds = %.invoke.i
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNvYNtNtCslNEiUQgeYIG_3syn6derive11DeriveInputNtNtB9_5parse5Parse5parseNtBN_6Parser5parseCshAipbVPsRtf_14zerovec_derive(ptr sret([240 x i8]) align 8 %0, i32 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [240 x i8], align 8               ; 4 uses
  %i.h = alloca [240 x i8], align 8               ; 6 uses
  %i.i = alloca [240 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs1_CsghEUimwObfx_11proc_macro2NtB5_11TokenStreamINtNtCs4NRVxsYgnAr_4core7convert4FromNtCstuaXukgBIa_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.l, i32 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
