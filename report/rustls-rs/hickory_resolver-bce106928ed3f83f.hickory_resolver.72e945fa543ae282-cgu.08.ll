Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.08?download=true
inline.NumInlined: 363
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtBc_3net7ip_addr6IpAddrENCNvMs6_NtCs9RFwvXNxPyg_16hickory_resolver6configNtB1Y_11ServerGroup5https0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callNtB1Y_16NameServerConfigNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4E_3VecB47_E14extend_trustedBN_E0E0EB20_:bb.a
  %i.al = icmp eq i64 %i.ak, %i.k
  br i1 %i.al, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_3net7ip_addr6IpAddrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9RFwvXNxPyg_16hickory_resolver6config16NameServerConfiguNCNvMs6_B2J_NtB2J_11ServerGroup5https0NCINvNvB1j_8for_each4callB2H_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4V_3VecB2H_E14extend_trustedINtB29_3MapBF_B3H_EE0E0E0EB2L_.exit, label %bb.d

bb.q:                                             ; preds = %bb.o, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn.i.i.i, %bb.o ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !228
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_3net7ip_addr6IpAddrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9RFwvXNxPyg_16hickory_resolver6config16NameServerConfiguNCNvMs6_B2J_NtB2J_11ServerGroup5https0NCINvNvB1j_8for_each4callB2H_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4V_3VecB2H_E14extend_trustedINtB29_3MapBF_B3H_EE0E0E0EB2L_.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.aj, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !228
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCNvMs_NtNtCs3kA96HWnWrK_4moka6common11timer_wheelINtB1w_10TimerWheelNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryE6enable0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3u_8for_each4callINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxSINtNtB1y_5deque5DequeINtB1w_9TimerNodeB2w_EEENCINvMsk_NtB4C_3vecINtB5Z_3VecB4x_E14extend_trustedBN_E0E0ECs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxSINtNtNtCs3kA96HWnWrK_4moka6common5deque5DequeINtNtB2S_11timer_wheel9TimerNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEEEuNCNvMs_B3z_INtB3z_10TimerWheelB42_E6enable0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtB2i_3vecINtB6c_3VecB2d_E14extend_trustedINtB1I_3MapBF_B4U_EE0E0E0ECs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.m, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.g, align 8, !noalias !242, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs3kA96HWnWrK_4moka6common5deque5DequeINtNtBZ_11timer_wheel9TimerNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB3v_3ops5range5RangeyENCNCNvMs_B1G_INtB1G_10TimerWheelB28_E6enable00EE9from_iterCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.val15.i)
          to label %.noexc.i unwind label %bb.e, !noalias !242

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCs3kA96HWnWrK_4moka6common5deque5DequeINtNtBJ_11timer_wheel9TimerNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEEE16into_boxed_sliceCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.e, !noalias !242 ; 2 uses

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !noalias !244
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.j, ptr %i.l, align 8, !noalias !245
  %i.m = add i64 %.val10.i, 1                     ; 2 uses
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.f
  br i1 %i.o, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxSINtNtNtCs3kA96HWnWrK_4moka6common5deque5DequeINtNtB2S_11timer_wheel9TimerNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEEEuNCNvMs_B3z_INtB3z_10TimerWheelB42_E6enable0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtB2i_3vecINtB6c_3VecB2d_E14extend_trustedINtB1I_3MapBF_B4U_EE0E0E0ECs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !242
  resume { ptr, i32 } %i.p

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxSINtNtNtCs3kA96HWnWrK_4moka6common5deque5DequeINtNtB2S_11timer_wheel9TimerNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEEEuNCNvMs_B3z_INtB3z_10TimerWheelB42_E6enable0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtB2i_3vecINtB6c_3VecB2d_E14extend_trustedINtB1I_3MapBF_B4U_EE0E0E0ECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !242
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs3kA96HWnWrK_4moka3cht7segmentINtB2_7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB2h_10ValueEntryB1n_NtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEE37with_num_segments_capacity_and_hasherB3k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ], !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %1, -1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = lshr i64 -1, %i.f
  %i.h = add i64 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.05.0 = phi i64 [ %i.h, %bb.c ], [ %1, %bb.a ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.05.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !12, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = icmp ule i64 %.sroa.05.0, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.r, align 8
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl i64 %.sroa.05.0, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.t, i1 false)
  store i64 %.sroa.05.0, ptr %i.r, align 8
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.05.0, 0
  br i1 %i.u, label %bb.j, label %bb.i

.loopexit:                                        ; preds = %bb.u, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.v = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentINtNtB6_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtBL_6common10concurrent3arc7MiniArcINtB2z_10ValueEntryB1F_NtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEE16into_boxed_sliceB3C_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.w = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.05.0, i1 false)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = sub nuw nsw i32 64, %i.x
  %i.z = extractvalue { ptr, i64 } %i.v, 0
  %i.aa = extractvalue { ptr, i64 } %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.z, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.y, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.h
  %i.ag = shl i64 %2, 1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.05.0, i1 true)
  %i.ai = lshr i64 %i.ag, %i.ah                   ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
          to label %bb.k unwind label %.body.thread19.loopexit.split-lp

.body.thread19.loopexit:                          ; preds = %bb.n, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread19.loopexit.split-lp:                 ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ak = add i64 %i.ai, -1
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = lshr i64 -1, %i.al
  %i.an = add i64 %i.am, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.sroa.06.0 = phi i64 [ %i.an, %bb.l ], [ 1, %bb.i ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.u
  %.sroa.08.022 = phi i64 [ 0, %bb.m ], [ %i.ao, %bb.u ]
  %i.ao = add nuw i64 %.sroa.08.022, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtNtNtCs3kA96HWnWrK_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2t_10ValueEntryB1z_NtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEE11with_lengthB3w_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef 0, i64 noundef %.sroa.06.0)
          to label %bb.o unwind label %.body.thread19.loopexit

bb.o:                                             ; preds = %bb.n
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !251
  %i.ap = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 8, 161) 48, i64 noundef range(i64 4, 9) 8) #28, !noalias !251 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.p, label %bb.s, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs3kA96HWnWrK_4moka3cht3map6bucket11BucketArrayINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtB2X_10ValueEntryB23_NtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEEB40_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) #30
          to label %.body.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.at = ptrtoint ptr %i.ap to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = load i64, ptr %i.r, align 8, !alias.scope !252, !noalias !253, !noundef !5 ; 3 uses
  %i.av = load i64, ptr %i.d, align 8, !range !13, !alias.scope !252, !noalias !253, !noundef !5
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentINtNtB7_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtBT_6common10concurrent3arc7MiniArcINtB2H_10ValueEntryB1N_NtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEE8grow_oneB3K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %bb.u unwind label %.body.thread19.loopexit

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ax = load ptr, ptr %i.q, align 8, !alias.scope !252, !noalias !253, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  store i64 %i.at, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.r, align 8, !alias.scope !252, !noalias !253
  %exitcond.not = icmp eq i64 %i.ao, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit, label %bb.n

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body18

.body.thread:                                     ; preds = %.body.thread19.loopexit, %.body.thread19.loopexit.split-lp, %bb.q
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %lpad.loopexit, %.body.thread19.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread19.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentINtNtBG_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtB1f_6common10concurrent3arc7MiniArcINtB33_10ValueEntryB29_NtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEEEB47_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs3kA96HWnWrK_4moka3cht7segmentINtB2_7HashMapINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtB6_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api5mutex5MutexNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexuEEE37with_num_segments_capacity_and_hasherCs9RFwvXNxPyg_16hickory_resolver(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ], !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %1, -1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = lshr i64 -1, %i.f
  %i.h = add i64 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.05.0 = phi i64 [ %i.h, %bb.c ], [ %1, %bb.a ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.05.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !12, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = icmp ule i64 %.sroa.05.0, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.r, align 8
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl i64 %.sroa.05.0, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.t, i1 false)
  store i64 %.sroa.05.0, ptr %i.r, align 8
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.05.0, 0
  br i1 %i.u, label %bb.j, label %bb.i

.loopexit:                                        ; preds = %bb.u, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.v = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentINtNtB6_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtBL_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api5mutex5MutexNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexuEEEE16into_boxed_sliceCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.w = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.05.0, i1 false)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = sub nuw nsw i32 64, %i.x
  %i.z = extractvalue { ptr, i64 } %i.v, 0
  %i.aa = extractvalue { ptr, i64 } %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.z, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.y, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.h
  %i.ag = shl i64 %2, 1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.05.0, i1 true)
  %i.ai = lshr i64 %i.ag, %i.ah                   ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
          to label %bb.k unwind label %.body.thread19.loopexit.split-lp

.body.thread19.loopexit:                          ; preds = %bb.n, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread19.loopexit.split-lp:                 ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ak = add i64 %i.ai, -1
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = lshr i64 -1, %i.al
  %i.an = add i64 %i.am, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.sroa.06.0 = phi i64 [ %i.an, %bb.l ], [ 1, %bb.i ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.u
  %.sroa.08.022 = phi i64 [ 0, %bb.m ], [ %i.ao, %bb.u ]
  %i.ao = add nuw i64 %.sroa.08.022, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtNtNtCs3kA96HWnWrK_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api5mutex5MutexNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexuEEE11with_lengthCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef 0, i64 noundef %.sroa.06.0)
          to label %bb.o unwind label %.body.thread19.loopexit

bb.o:                                             ; preds = %bb.n
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !259
  %i.ap = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 8, 161) 48, i64 noundef range(i64 4, 9) 8) #28, !noalias !259 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.p, label %bb.s, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs3kA96HWnWrK_4moka3cht3map6bucket11BucketArrayINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api5mutex5MutexNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexuEEEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) #30
          to label %.body.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.at = ptrtoint ptr %i.ap to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = load i64, ptr %i.r, align 8, !alias.scope !260, !noalias !261, !noundef !5 ; 3 uses
  %i.av = load i64, ptr %i.d, align 8, !range !13, !alias.scope !260, !noalias !261, !noundef !5
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentINtNtB7_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtBT_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api5mutex5MutexNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexuEEEE8grow_oneCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %bb.u unwind label %.body.thread19.loopexit

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ax = load ptr, ptr %i.q, align 8, !alias.scope !260, !noalias !261, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  store i64 %i.at, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.r, align 8, !alias.scope !260, !noalias !261
  %exitcond.not = icmp eq i64 %i.ao, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit, label %bb.n

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body18

.body.thread:                                     ; preds = %.body.thread19.loopexit, %.body.thread19.loopexit.split-lp, %bb.q
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %lpad.loopexit, %.body.thread19.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread19.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentINtNtBG_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEINtNtNtNtB1f_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api5mutex5MutexNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexuEEEEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs3kA96HWnWrK_4moka3cht7segmentINtB2_7HashMapNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtB6_4sync11invalidator9PredicateNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEE37with_num_segments_capacity_and_hasherB2V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ], !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %1, -1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = lshr i64 -1, %i.f
  %i.h = add i64 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.05.0 = phi i64 [ %i.h, %bb.c ], [ %1, %bb.a ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.05.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !12, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = icmp ule i64 %.sroa.05.0, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.r, align 8
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl i64 %.sroa.05.0, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.t, i1 false)
  store i64 %.sroa.05.0, ptr %i.r, align 8
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.05.0, 0
  br i1 %i.u, label %bb.j, label %bb.i

.loopexit:                                        ; preds = %bb.u, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.v = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentNtNtB6_6string6StringINtNtNtBL_4sync11invalidator9PredicateNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEE16into_boxed_sliceB3d_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.w = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.05.0, i1 false)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = sub nuw nsw i32 64, %i.x
  %i.z = extractvalue { ptr, i64 } %i.v, 0
  %i.aa = extractvalue { ptr, i64 } %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.z, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.y, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.h
  %i.ag = shl i64 %2, 1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.05.0, i1 true)
  %i.ai = lshr i64 %i.ag, %i.ah                   ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
          to label %bb.k unwind label %.body.thread19.loopexit.split-lp

.body.thread19.loopexit:                          ; preds = %bb.n, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread19.loopexit.split-lp:                 ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ak = add i64 %i.ai, -1
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = lshr i64 -1, %i.al
  %i.an = add i64 %i.am, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.sroa.06.0 = phi i64 [ %i.an, %bb.l ], [ 1, %bb.i ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.u
  %.sroa.08.022 = phi i64 [ 0, %bb.m ], [ %i.ao, %bb.u ]
  %i.ao = add nuw i64 %.sroa.08.022, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtNtNtCs3kA96HWnWrK_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtBa_4sync11invalidator9PredicateNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEE11with_lengthB37_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef 0, i64 noundef %.sroa.06.0)
          to label %bb.o unwind label %.body.thread19.loopexit

bb.o:                                             ; preds = %bb.n
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !267
  %i.ap = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 8, 161) 48, i64 noundef range(i64 4, 9) 8) #28, !noalias !267 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.p, label %bb.s, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs3kA96HWnWrK_4moka3cht3map6bucket11BucketArrayNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtBK_4sync11invalidator9PredicateNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEB3B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) #30
          to label %.body.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.at = ptrtoint ptr %i.ap to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = load i64, ptr %i.r, align 8, !alias.scope !268, !noalias !269, !noundef !5 ; 3 uses
  %i.av = load i64, ptr %i.d, align 8, !range !13, !alias.scope !268, !noalias !269, !noundef !5
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentNtNtB7_6string6StringINtNtNtBT_4sync11invalidator9PredicateNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEE8grow_oneB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %bb.u unwind label %.body.thread19.loopexit

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ax = load ptr, ptr %i.q, align 8, !alias.scope !268, !noalias !269, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  store i64 %i.at, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.r, align 8, !alias.scope !268, !noalias !269
  %exitcond.not = icmp eq i64 %i.ao, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit, label %bb.n

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body18

.body.thread:                                     ; preds = %.body.thread19.loopexit, %.body.thread19.loopexit.split-lp, %bb.q
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %lpad.loopexit, %.body.thread19.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread19.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentNtNtBG_6string6StringINtNtNtB1f_4sync11invalidator9PredicateNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEEB3I_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs3kA96HWnWrK_4moka3cht7segmentINtB2_7HashMapTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtCsj6eKBz9Db1c_4core3any6TypeIdEINtNtNtNtB6_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api6rwlock6RwLockNtNtCsbCIQ8H6Y6l3_11parking_lot10raw_rwlock9RawRwLockINtNtNtB6_4sync17value_initializer11WaiterValueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEE37with_num_segments_capacity_and_hasherB5P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ], !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %1, -1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = lshr i64 -1, %i.f
  %i.h = add i64 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.05.0 = phi i64 [ %i.h, %bb.c ], [ %1, %bb.a ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.05.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !12, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = icmp ule i64 %.sroa.05.0, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.r, align 8
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl i64 %.sroa.05.0, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.t, i1 false)
  store i64 %.sroa.05.0, ptr %i.r, align 8
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.05.0, 0
  br i1 %i.u, label %bb.j, label %bb.i

.loopexit:                                        ; preds = %bb.u, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.v = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentTINtNtB6_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtCsj6eKBz9Db1c_4core3any6TypeIdEINtNtNtNtBL_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api6rwlock6RwLockNtNtCsbCIQ8H6Y6l3_11parking_lot10raw_rwlock9RawRwLockINtNtNtBL_4sync17value_initializer11WaiterValueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEEE16into_boxed_sliceB67_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.w = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.05.0, i1 false)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = sub nuw nsw i32 64, %i.x
  %i.z = extractvalue { ptr, i64 } %i.v, 0
  %i.aa = extractvalue { ptr, i64 } %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.z, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.y, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.h
  %i.ag = shl i64 %2, 1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.05.0, i1 true)
  %i.ai = lshr i64 %i.ag, %i.ah                   ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
          to label %bb.k unwind label %.body.thread19.loopexit.split-lp

.body.thread19.loopexit:                          ; preds = %bb.n, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread19.loopexit.split-lp:                 ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ak = add i64 %i.ai, -1
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = lshr i64 -1, %i.al
  %i.an = add i64 %i.am, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.sroa.06.0 = phi i64 [ %i.an, %bb.l ], [ 1, %bb.i ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.u
  %.sroa.08.022 = phi i64 [ 0, %bb.m ], [ %i.ao, %bb.u ]
  %i.ao = add nuw i64 %.sroa.08.022, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtNtNtCs3kA96HWnWrK_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtCsj6eKBz9Db1c_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api6rwlock6RwLockNtNtCsbCIQ8H6Y6l3_11parking_lot10raw_rwlock9RawRwLockINtNtNtBa_4sync17value_initializer11WaiterValueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEE11with_lengthB61_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef 0, i64 noundef %.sroa.06.0)
          to label %bb.o unwind label %.body.thread19.loopexit

bb.o:                                             ; preds = %bb.n
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !275
  %i.ap = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 8, 161) 48, i64 noundef range(i64 4, 9) 8) #28, !noalias !275 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.p, label %bb.s, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs3kA96HWnWrK_4moka3cht3map6bucket11BucketArrayTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtB4_3any6TypeIdEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api6rwlock6RwLockNtNtCsbCIQ8H6Y6l3_11parking_lot10raw_rwlock9RawRwLockINtNtNtBK_4sync17value_initializer11WaiterValueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEEEB6f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) #30
          to label %.body.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.at = ptrtoint ptr %i.ap to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = load i64, ptr %i.r, align 8, !alias.scope !276, !noalias !277, !noundef !5 ; 3 uses
  %i.av = load i64, ptr %i.d, align 8, !range !13, !alias.scope !276, !noalias !277, !noundef !5
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentTINtNtB7_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtCsj6eKBz9Db1c_4core3any6TypeIdEINtNtNtNtBT_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api6rwlock6RwLockNtNtCsbCIQ8H6Y6l3_11parking_lot10raw_rwlock9RawRwLockINtNtNtBT_4sync17value_initializer11WaiterValueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEEE8grow_oneB6f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %bb.u unwind label %.body.thread19.loopexit

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ax = load ptr, ptr %i.q, align 8, !alias.scope !276, !noalias !277, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  store i64 %i.at, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.r, align 8, !alias.scope !276, !noalias !277
  %exitcond.not = icmp eq i64 %i.ao, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit, label %bb.n

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body18

.body.thread:                                     ; preds = %.body.thread19.loopexit, %.body.thread19.loopexit.split-lp, %bb.q
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %lpad.loopexit, %.body.thread19.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread19.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtCs3kA96HWnWrK_4moka3cht7segment7SegmentTINtNtBG_4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtB4_3any6TypeIdEINtNtNtNtB1f_6common10concurrent3arc7MiniArcINtNtCs45r4e3XQE14_8lock_api6rwlock6RwLockNtNtCsbCIQ8H6Y6l3_11parking_lot10raw_rwlock9RawRwLockINtNtNtB1f_4sync17value_initializer11WaiterValueNtNtCs9RFwvXNxPyg_16hickory_resolver5cache5EntryEEEEEEB6n_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNvMs2_NtNtCskruEhpekJ3V_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleuENCNvXs0_NtNtBc_4task8join_setINtB2x_7JoinSetuENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop0E8pop_nextCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = tail call noundef ptr @_RNvMs2_NtNtCskruEhpekJ3V_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEEE8pop_backCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  invoke void @_RNvMs_NtNtNtCskruEhpekJ3V_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask12remote_abort(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.f, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !288, !nonnull !5, !noundef !5
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !288
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs9RFwvXNxPyg_16hickory_resolver.exit

bb.g:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %bb.k

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !291, !nonnull !5, !noundef !5
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !291
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs9RFwvXNxPyg_16hickory_resolver.exit4

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs9RFwvXNxPyg_16hickory_resolver.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs9RFwvXNxPyg_16hickory_resolver.exit4: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs9RFwvXNxPyg_16hickory_resolver.exit4
  ret i1 %.not

bb.k:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtCskruEhpekJ3V_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs3kA96HWnWrK_4moka4sync8key_lockINtB5_10KeyLockMapNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE8key_lockCs9RFwvXNxPyg_16hickory_resolver(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; 4 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.f = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 8, 161) 8, i64 noundef range(i64 4, 9) 4) #28 ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 8) #29
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  store ptr %i.h, ptr %i.c, align 8
  %i.k = atomicrmw add ptr %i.f, i32 1 monotonic, align 4, !noalias !308
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_RNvXs3_NtNtNtCs3kA96HWnWrK_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs45r4e3XQE14_8lock_api5mutex5MutexNtNtCsbCIQ8H6Y6l3_11parking_lot9raw_mutex8RawMutexuEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs9RFwvXNxPyg_16hickory_resolver.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsaKJjC64KgbL_3std7process5abort() #29
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

end_hunk_0
