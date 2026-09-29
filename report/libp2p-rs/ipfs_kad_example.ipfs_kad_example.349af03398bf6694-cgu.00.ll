Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_kad_example.ipfs_kad_example.349af03398bf6694-cgu.00?download=true
inline.NumInlined: 1810
inline.NumDeleted: 713
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4w110Okq5IC_16ipfs_kad_example:bb.a
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket6bucket4NodeINtNtBK_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBM_9addresses9AddressesEE8push_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(320) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !14, !noundef !9
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket6bucket4NodeINtNtBR_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBT_9addresses9AddressesEE8grow_oneCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw [320 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.g, ptr noundef nonnull align 8 dereferenceable(320) %1, i64 320, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(320) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket6bucket4NodeINtNtBG_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBI_9addresses9AddressesEECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket6bucket4NodeINtNtBG_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBI_9addresses9AddressesEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket6bucket4NodeINtNtBJ_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBL_9addresses9AddressesEE10insert_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(320) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 7 uses
  %i.c = icmp ult i64 %i.b, 28823037615171175
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !14, !noundef !9
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #30
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket6bucket4NodeINtNtBR_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBT_9addresses9AddressesEE8grow_oneCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw [320 x i8], ptr %i.h, i64 %1 ; 3 uses
  %i.j = icmp samesign ult i64 %1, %i.b
  br i1 %i.j, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(320) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket6bucket4NodeINtNtBG_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBI_9addresses9AddressesEECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.h, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.i, ptr noundef nonnull align 8 dereferenceable(320) %2, i64 320, i1 false)
  %i.l = add nuw nsw i64 %i.b, 1
  store i64 %i.l, ptr %i.a, align 8
  ret void

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 320
  %i.n = sub nuw nsw i64 %i.b, %1
  %i.o = mul nuw nsw i64 %i.n, 320
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.i, i64 %i.o, i1 false)
  br label %bb.g

bb.i:                                             ; preds = %bb.c
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket6bucket4NodeINtNtBG_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBI_9addresses9AddressesEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2935, !noalias !2936, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2935, !noalias !2936, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(400) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 24                           ; 5 uses
  %or.cond = icmp ult i64 %1, 384307168202282326
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.l, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.l = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit48, label %bb.l, !prof !34

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2939
  store i64 0, ptr %i.a, align 8, !noalias !2939
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !2939
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !2939
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2943, !noalias !2944, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2943, !noalias !2944, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val71 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val71   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.j = icmp ult i64 %1, 3
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not45 = icmp eq i64 %i.c, %1
  br i1 %.not45, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.l, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit
  %or.cond66 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond66, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit47, label %bb.l, !prof !34

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit47: ; preds = %bb.f
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit47, %bb.i
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit47 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2947
  store i64 0, ptr %i.a, align 8, !noalias !2947
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !2947
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit47, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit47 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit47 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2951, !noalias !2952, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2951, !noalias !2952, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(656) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond = icmp ult i64 %1, 230584300921369396
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.l, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit48, label %bb.l, !prof !34

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2955
  store i64 0, ptr %i.a, align 8, !noalias !2955
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !2955
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !2955
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(2416) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2959, !noalias !2960, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 20
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2959, !noalias !2960, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(2416) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(2416) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2408 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp ult i64 %i.c, 21                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 20                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 20) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.j = icmp ult i64 %1, 21
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 120                          ; 5 uses
  %or.cond = icmp ult i64 %1, 76861433640456466
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.l, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.l = mul i64 %.sink.i, 120                    ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 76861433640456466
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit48, label %bb.l, !prof !34

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 120                    ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 76861433640456466
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2963
  store i64 0, ptr %i.a, align 8, !noalias !2963
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !2963
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !2963
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(6576) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6568
  %i.b = load i64, ptr %i.a, align 8, !noalias !2966, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 20
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !2966, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(6576) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(6576) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6568 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp ult i64 %i.c, 21                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 20                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 20) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1p_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1r_9addresses9AddressesEEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.j = icmp ult i64 %1, 21
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 328                          ; 5 uses
  %or.cond = icmp ult i64 %1, 28120036697727976
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.l, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.l = mul i64 %.sink.i, 328                    ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 28120036697727976
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit48, label %bb.l, !prof !34

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 328                    ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 28120036697727976
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1i_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2969
  store i64 0, ptr %i.a, align 8, !noalias !2969
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !2969
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !2969
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1i_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1i_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1i_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1i_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1k_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1m_9addresses9AddressesEEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !2976, !noundef !9 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 1                     ; 3 uses
  br i1 %i.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !2976, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0               ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 2 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i, !prof !10

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %i.m = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33, !noalias !2977
  unreachable

bb.c:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.r = shl nuw nsw i64 %i.l, 5                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.j, 288230376151711743
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.n, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i
  %or.cond67.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond67.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit48.i, label %bb.n, !prof !34

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2977
  %i.s = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef 8) #29, !noalias !2977 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.j

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit48.i: ; preds = %bb.g
  %i.u = shl nuw nsw i64 %.sink.i.i, 5
  %i.v = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.u, i64 noundef 8, i64 noundef %i.r) #29 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.s, %bb.j ], [ %i.v, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !2977
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !2977
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !2977
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !2977
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit

bb.j:                                             ; preds = %bb.h
  %i.x = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %.sink12.i.i, i64 %i.x, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !2977
  %i.y = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !2977
  %or.cond.i.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond.i.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2978
  store i64 0, ptr %i.a, align 8, !noalias !2978
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !2978
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.k
  %i.z = shl nuw nsw i64 %.sink.i.i, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.z, i64 noundef 8) #29
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit

bb.m:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.r) #30
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i64, ptr %i.a, align 8, !noalias !2981, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 6
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !2981, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(208) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2994, !noalias !2995, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 10
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2994, !noalias !2995, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp ult i64 %i.c, 11                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 10                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 10) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.j = icmp ult i64 %1, 11
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.l, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit
  %or.cond67 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond67, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit48, label %bb.l, !prof !34

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit48: ; preds = %bb.f
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2998
  store i64 0, ptr %i.a, align 8, !noalias !2998
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !2998
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3006, !noalias !3007, !noundef !9 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 2                     ; 3 uses
  br i1 %i.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3006, !noalias !3007, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i, !prof !10

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3008)
  %i.m = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33, !noalias !3008
  unreachable

bb.c:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i64 %i.l, 24                 ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 384307168202282325
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.n, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit.i
  %or.cond65.i = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond65.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit48.i, label %bb.n, !prof !34

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !3008
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #29, !noalias !3008 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit48.i: ; preds = %bb.g
  %i.v = mul nuw nsw i64 %.sink.i.i, 24
  %i.w = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #29 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !3008
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !3008
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !3008
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !3008
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit

bb.j:                                             ; preds = %bb.h
  %i.y = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !3008
  %i.z = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !3008
  %i.aa = mul i64 %.sink.i.i, 24                  ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond.i.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3009
  store i64 0, ptr %i.a, align 8, !noalias !3009
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !3009
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !3009
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #29
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit

bb.m:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #30
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangeECs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm7handler15ProtocolsChangej2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3017, !noalias !3018, !noundef !9 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 2                     ; 3 uses
  br i1 %i.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3017, !noalias !3018, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 3 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i, !prof !10

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  %i.m = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9
  %.pre = load i64, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.q ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.r
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33, !noalias !3019
  unreachable

bb.c:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.s = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not48.i, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.l, i64 17) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 0         ; 4 uses
  %i.v = extractvalue { i64, i1 } %i.t, 1
  %i.w = icmp slt i64 %i.u, 0
  %or.cond.not.i = or i1 %i.v, %i.w
  br i1 %or.cond.not.i, label %bb.n, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit.i, !prof !31

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i.i, i64 17) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 0         ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.x, 1
  %i.aa = icmp slt i64 %i.y, 0
  %or.cond67.not.i = or i1 %i.z, %i.aa
  br i1 %or.cond67.not.i, label %bb.n, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit50.i, !prof !31

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !3019
  %i.ab = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef 1) #29, !noalias !3019 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.m, label %bb.j

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit50.i: ; preds = %bb.g
  %i.ad = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.y, i64 noundef 1, i64 noundef %i.u) #29 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit50.i
  %.sroa.032.0.i = phi ptr [ %i.ab, %bb.j ], [ %i.ad, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit50.i ]
  store i8 1, ptr %0, align 8, !alias.scope !3019
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !3019
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.032.0.i, ptr %.sroa.542.0..sroa_idx.i, align 8, !alias.scope !3019
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !3019
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit

bb.j:                                             ; preds = %bb.h
  %i.af = mul nuw nsw i64 %i.r, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %.sink12.i.i, i64 %i.af, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i8 0, ptr %0, align 8, !alias.scope !3019
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ag = mul nuw nsw i64 %i.r, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.4.0..sroa_idx.i, ptr nonnull align 1 %.sink12.i.i, i64 %i.ag, i1 false)
  store i64 %i.r, ptr %i.b, align 8, !alias.scope !3019
  %i.ah = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i.i, i64 17) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 0       ; 3 uses
  %i.aj = extractvalue { i64, i1 } %i.ah, 1
  %i.ak = icmp slt i64 %i.ai, 0
  %or.cond.not.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.not.i.i, label %bb.l, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit.i, !prof !31

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3020
  store i64 0, ptr %i.a, align 8, !noalias !3020
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ai, ptr %i.al, align 8, !noalias !3020
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !3020
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.ai, i64 noundef 1) #29
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit

bb.m:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit50.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 1, i64 noundef %i.u) #30
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrECs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrj2_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3024, !noalias !3025, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3024, !noalias !3025, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(400) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.j = icmp ult i64 %1, 9
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 48                           ; 5 uses
  %or.cond = icmp ult i64 %1, 192153584101141163
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.l, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.l = mul i64 %.sink.i, 48                     ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 192153584101141163
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48, label %bb.l, !prof !34

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 48                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 192153584101141163
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3028
  store i64 0, ptr %i.a, align 8, !noalias !3028
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !3028
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !3028
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(5456) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5448 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !3035, !noundef !9 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 20                    ; 3 uses
  br i1 %i.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !3035, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i, !prof !10

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  %i.m = icmp ult i64 %i.c, 21                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 20) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33, !noalias !3036
  unreachable

bb.c:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 20
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i64 %i.l, 272                ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 33909456017848440
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.n, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit.i
  %or.cond65.i = icmp ult i64 %i.c, 33909456017848441
  br i1 %or.cond65.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit48.i, label %bb.n, !prof !34

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !3036
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #29, !noalias !3036 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit48.i: ; preds = %bb.g
  %i.v = mul nuw nsw i64 %.sink.i.i, 272
  %i.w = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #29 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !3036
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !3036
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !3036
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !3036
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit

bb.j:                                             ; preds = %bb.h
  %i.y = mul nuw nsw i64 %i.q, 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !3036
  %i.z = mul nuw nsw i64 %i.q, 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !3036
  %i.aa = mul i64 %.sink.i.i, 272                 ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 33909456017848441
  br i1 %or.cond.i.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3037
  store i64 0, ptr %i.a, align 8, !noalias !3037
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !3037
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !3037
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #29
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit

bb.m:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #30
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvCsczYENlYh6wI_8smallvec10deallocateTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEECs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E6removeCs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(5456) %1, i64 noundef %2) unnamed_addr #0 {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5448 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3041, !noalias !3042, !noundef !9
  %i.c = icmp ugt i64 %i.b, 20                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %i.a ; 2 uses
  %i.e = load i64, ptr %.sink11.i, align 8, !noundef !9 ; 3 uses
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.a, !prof !25

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.c, ptr %i.h, ptr %i.d
  %i.i = add i64 %i.e, -1
  store i64 %i.i, ptr %.sink11.i, align 8
  %i.j = getelementptr inbounds nuw [272 x i8], ptr %.sink12.i, i64 %2 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %i.j, i64 272, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.l = xor i64 %2, -1
  %i.m = add i64 %i.e, %i.l
  %i.n = mul nuw nsw i64 %i.m, 272
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.k, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E21reserve_one_uncheckedCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3046, !noalias !3047, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3046, !noalias !3047, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, !prof !32

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(336) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 0, label %bb.d
  ], !prof !33

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E8try_growCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.j = icmp ult i64 %1, 9
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond = icmp ult i64 %1, 230584300921369396
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.l, !prof !34

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48, label %bb.l, !prof !34

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3050
  store i64 0, ptr %i.a, align 8, !noalias !3050
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !3050
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !3050
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECs4w110Okq5IC_16ipfs_kad_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_streamINtB5_15UdpClientStreamNtNtNtB9_7runtime13tokio_runtime20TokioRuntimeProviderENtNtB9_4xfer16DnsRequestSender12send_messageCs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(280) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [896 x i8], align 8               ; 13 uses
  %i.c = alloca [280 x i8], align 8               ; 6 uses
  %.sroa.0 = alloca [344 x i8], align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load i8, ptr %i.d, align 8, !range !11, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.h = load i64, ptr %i.g, align 8, !noundef !9 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.j = load i32, ptr %i.i, align 8, !range !30, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.c, ptr noundef nonnull align 8 dereferenceable(280) %2, i64 280, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3062
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3061, !noalias !3063, !nonnull !9, !noundef !9 ; 4 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !noalias !3062
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.a, align 8, !noalias !3062
  %i.o = invoke noundef i16 @_RNvMNtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB2_7Message11max_payload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.c)
          to label %bb.g unwind label %bb.f, !noalias !3064

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEEECs4w110Okq5IC_16ipfs_kad_example.exit.i unwind label %bb.i, !noalias !3064

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !3065
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEEECs4w110Okq5IC_16ipfs_kad_example.exit.i

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 181
  %i.t = load i8, ptr %i.s, align 1, !range !11, !alias.scope !3060, !noalias !3064, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !3061, !noalias !3063, !nonnull !9, !noundef !9 ; 2 uses
  %i.v = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !3064
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEEECs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !3064
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEEECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2op11dns_request10DnsRequestECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.c) #31
          to label %.body.thread unwind label %bb.i, !noalias !3064

bb.j:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #30
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = call i16 @llvm.umin.i16(i16 %i.o, i16 4096)
  %..i.i = zext nneg i16 %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.312..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.312..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !alias.scope !3064, !noalias !3060
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.ac = load i8, ptr %i.ab, align 1, !range !11, !alias.scope !3061, !noalias !3063, !noundef !9
  %.sroa.0.280..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.280..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !alias.scope !3064, !noalias !3060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(280) %2, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.ae = load i8, ptr %i.ad, align 2, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !9 ; 3 uses
  %i.ah = icmp eq i64 %i.h, %i.ag
  %i.ai = icmp ult i64 %i.h, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !range !30 ; 2 uses
  %i.al = icmp samesign ult i32 %i.j, %i.ak
  %.sroa.05.0 = select i1 %i.ah, i1 %i.al, i1 %i.ai ; 2 uses
  %.sroa.4.0 = select i1 %.sroa.05.0, i32 %i.ak, i32 %i.j
  %.sroa.0.0 = select i1 %.sroa.05.0, i64 %i.ag, i64 %i.h
  %i.am = load i64, ptr %1, align 8, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !range !30, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = zext i8 %i.ae to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.b, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0, i64 344, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr %.val.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i64 %..i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i8 %i.ac, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 369
  store i8 %i.t, ptr %.sroa.10.0..sroa_idx, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  store i64 %.sroa.0.0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 %.sroa.4.0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %i.ap, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  store i8 0, ptr %i.at, align 8
  %i.au = call { ptr, ptr } @_RINvXs2_NtCs4LZN9PPmi2I_11hickory_net7runtimeNtB6_9TokioTimeNtB6_4Time7timeoutNCINvNtNtB8_3udp17udp_client_stream5retryNtNtB6_13tokio_runtime20TokioRuntimeProviderINtB1j_10UdpRequestB1T_EE0ECs4w110Okq5IC_16ipfs_kad_example(i64 noundef %i.am, i32 noundef %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(896) %i.b) ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 13, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.l:                                             ; preds = %bb.j
  unreachable

.body.thread:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEEECs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.m
  %eh.lpad-body14 = phi { ptr, i32 } [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEEECs4w110Okq5IC_16ipfs_kad_example.exit.i ], [ %i.ay, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body14

bb.m:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2op11dns_request10DnsRequestECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(280) %2) #31
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtCscu2bAJ62uie_6either6EitherIBN_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2j_EIBX_B2j_ReEEIBN_INtNtNtB9_7sources5empty5EmptyB3B_EFB3B_EB3t_EENCNvMs0_B2n_INtB2n_5SwarmINtNtCskC4O4hr3vz7_10libp2p_kad9behaviour9BehaviourNtNtNtNtB4Y_6record5store6memory11MemoryStoreEE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2_NtCscu2bAJ62uie_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2q_EIBC_B2q_ReEEIBP_INtNtNtBV_7sources5empty5EmptyB3I_EFB3I_EB3A_EENtNtNtBV_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !29, !noundef !9
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.d = invoke { ptr, i64 } @_RNvXsv_Cscu2bAJ62uie_6eitherINtB5_6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEINtNtCskKLDkoKarTP_4core7convert5AsRefeE6as_refCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.c, !noalias !3091 ; 2 uses

end_hunk_1
