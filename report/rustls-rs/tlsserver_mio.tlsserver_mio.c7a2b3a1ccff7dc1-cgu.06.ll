Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/tlsserver_mio.tlsserver_mio.c7a2b3a1ccff7dc1-cgu.06?download=true
inline.NumInlined: 288
inline.NumDeleted: 148
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB3_7Command3argNtNtB5_3arg3ArgECsh8EDedVkTYb_13tlsserver_mio:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB3_7Command3newReECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 8), (16, 40), (56, 280), (296, 304), (320, 328), (344, 352), (368, 376), (392, 400), (416, 424), (440, 448), (464, 472), (488, 496), (512, 520), (536, 544), (560, 584), (592, 600), (608, 616), (624, 632), (640, 648), (656, 664), (672, 680), (688, 709)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 -1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 -1, ptr %i.s, align 8
  store i64 0, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 -1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.w, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx, align 8
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i8 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.af, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx, align 8
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder9arg_groupNtB3_8ArgGroup2idReECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) initializes((72, 88)) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %3, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !97, !nonnull !9, !noundef !9
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.e = invoke { ptr, i64 } @_RNvXsk_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload)
          to label %bb.c unwind label %bb.b, !noalias !106 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder9arg_group8ArgGroupECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #24
          to label %bb.h unwind label %bb.f, !noalias !101

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i64 } %i.e, 1
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !107, !noalias !110, !noundef !9 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !range !113, !alias.scope !107, !noalias !110, !noundef !9
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #26
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i unwind label %bb.b, !noalias !101

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i: ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !107, !noalias !110, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.j ; 2 uses
  store ptr %i.g, ptr %i.n, align 8, !noalias !114
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.i, ptr %i.o, align 8, !noalias !101
  %i.p = add i64 %i.j, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !101
  unreachable

bb.g:                                             ; preds = %bb.c, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i
  %storemerge = phi i64 [ %i.p, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %i.c, align 8, !alias.scope !104, !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !106, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_je_ECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.7.16. = load ptr, ptr %2, align 8, !alias.scope !117 ; 2 uses
  %.not = icmp eq ptr %.sroa.7.16., null
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.24. = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.i
  %i.e = phi i64 [ %i.f, %bb.i ], [ 0, %bb.a ]
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.g = invoke { ptr, i64 } @_RNvXsk_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.16., i64 noundef %.sroa.7.24.)
          to label %bb.d unwind label %bb.c, !noalias !127 ; 2 uses

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder9arg_group8ArgGroupECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #24
          to label %bb.j unwind label %bb.g, !noalias !122

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, i64 } %i.g, 1
  %i.l = load i64, ptr %i.c, align 8, !alias.scope !128, !noalias !131, !noundef !9 ; 3 uses
  %i.m = load i64, ptr %i.a, align 8, !range !113, !alias.scope !128, !noalias !131, !noundef !9
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #26
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i unwind label %bb.c, !noalias !122

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i: ; preds = %bb.f, %bb.e
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !128, !noalias !131, !nonnull !9, !noundef !9
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  store ptr %i.i, ptr %i.p, align 8, !noalias !134
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.k, ptr %i.q, align 8, !noalias !122
  %i.r = add i64 %i.l, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !122
  unreachable

bb.h:                                             ; preds = %bb.i, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.i:                                             ; preds = %bb.d, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i
  %storemerge = phi i64 [ %i.r, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8push_mutCsh8EDedVkTYb_13tlsserver_mio.exit.i ], [ 0, %bb.d ]
  store i64 %storemerge, ptr %i.c, align 8, !alias.scope !125, !noalias !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !127, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i = icmp eq i64 %i.f, 14
  br i1 %.not.i.i, label %bb.h, label %bb.b

bb.j:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB6_7Command10long_aboutINtNtCsj6eKBz9Db1c_4core6option6OptionReEECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs6_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableINtNtCsj6eKBz9Db1c_4core6option6OptionReEINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettable(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) %2, i64 %3)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.b, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(712) %1) #24
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !79, !noundef !9 ; 3 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !range !79, !alias.scope !137, !noundef !9
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsh8EDedVkTYb_13tlsserver_mio.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsh8EDedVkTYb_13tlsserver_mio.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsh8EDedVkTYb_13tlsserver_mio.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsh8EDedVkTYb_13tlsserver_mio.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsh8EDedVkTYb_13tlsserver_mio.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.j ], [ %i.h, %bb.h ]
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsh8EDedVkTYb_13tlsserver_mio.exit.i
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  ret void

bb.k:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB6_7Command10long_aboutReECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsh8EDedVkTYb_13tlsserver_mio.exit unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.b, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(712) %1) #24
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !79, !noundef !9 ; 3 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsh8EDedVkTYb_13tlsserver_mio.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsh8EDedVkTYb_13tlsserver_mio.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !range !79, !alias.scope !140, !noundef !9
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsh8EDedVkTYb_13tlsserver_mio.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsh8EDedVkTYb_13tlsserver_mio.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsh8EDedVkTYb_13tlsserver_mio.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsh8EDedVkTYb_13tlsserver_mio.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsh8EDedVkTYb_13tlsserver_mio.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.h, %bb.g ]
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsh8EDedVkTYb_13tlsserver_mio.exit.i
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  ret void

bb.j:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB6_7Command5aboutReECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsh8EDedVkTYb_13tlsserver_mio.exit unwind label %bb.c
end_hunk_0
