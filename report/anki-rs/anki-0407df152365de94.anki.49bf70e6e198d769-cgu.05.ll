Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.05?download=true
inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN116_$LT$std..sys..pal..unix..kernel_copy..Copier$LT$R$C$W$GT$$u20$as$u20$std..sys..pal..unix..kernel_copy..SpecCopy$GT$4copy17hf0dbe96510c0fa95E":bb.a
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN116_$LT$std..sys..pal..unix..kernel_copy..Copier$LT$R$C$W$GT$$u20$as$u20$std..sys..pal..unix..kernel_copy..SpecCopy$GT$4copy17hf3a9e5cd6ea96f74E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 1 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io4copy12generic_copy17hd88a335858a60002E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 1 %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN116_$LT$std..sys..pal..unix..kernel_copy..Copier$LT$R$C$W$GT$$u20$as$u20$std..sys..pal..unix..kernel_copy..SpecCopy$GT$4copy17hfd2a881dd03c8bd8E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 1 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io4copy12generic_copy17h7f98d96ec5fb84c6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 1 %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN118_$LT$anki_io..error..FileIoSnafu$LT$__T0$C$__T1$GT$$u20$as$u20$snafu..IntoError$LT$anki_io..error..FileIoError$GT$$GT$10into_error17h51c822f6c6d12ec4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN118_$LT$anki_io..error..FileIoSnafu$LT$__T0$C$__T1$GT$$u20$as$u20$snafu..IntoError$LT$anki_io..error..FileIoError$GT$$GT$10into_error17habff2f37c0227be7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !24, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !772
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noalias !772, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !782, !noalias !772, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.d, !prof !261

bb.b:                                             ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8, !noalias !772
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #50
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %2) #52
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.j, align 8, !noalias !772, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !783
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.p, align 8
  ret void

bb.e:                                             ; preds = %bb.c, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.c
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki_io..error..FileOp$GT$17hb354081dfdc123dfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #52
          to label %bb.f unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN118_$LT$anki_io..error..FileIoSnafu$LT$__T0$C$__T1$GT$$u20$as$u20$snafu..IntoError$LT$anki_io..error..FileIoError$GT$$GT$10into_error17hfbebff928f1f38e6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !17, !noundef !3 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val4 = load i64, ptr %i.e, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !784
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noalias !784, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !782, !noalias !784, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.d, !prof !261

bb.b:                                             ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8, !noalias !784
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #50
          to label %.noexc5 unwind label %bb.c

.noexc5:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %2) #52
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.j, align 8, !noalias !784, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = icmp ule i64 %.val4, %i.i
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !784
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %.val3, i64 %.val4, i1 false), !noalias !792
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val4, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.p, align 8
  ret void

bb.e:                                             ; preds = %bb.c, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.c
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki_io..error..FileOp$GT$17hb354081dfdc123dfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #52
          to label %bb.f unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h6241ccf1e3bb9fa2E"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 152                 ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = lshr i64 %i.h, 1
  %.sroa.0.0 = select i1 %i.c, i64 %i.g, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8cfbc1e1097d1085E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
  tail call void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5f9f6ba57136c8d4E"(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN126_$LT$async_compression..tokio..bufread..generic..decoder..Decoder$LT$R$C$D$GT$$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17h83584d94b5c85415E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 7 uses
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = sub nuw i64 %i.i, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !793, !noundef !3 ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = phi i64 [ %i.i, %bb.d ], [ %i.o, %bb.b ]
  %i.r = icmp ult i64 %i.i, %i.k
  br i1 %i.r, label %bb.e, label %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit, !prof !796

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %2, align 8, !alias.scope !793, !nonnull !3, !align !24, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o
  %i.u = sub nuw i64 %i.i, %i.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.u, i1 false), !noalias !793
  store i64 %i.i, ptr %i.n, align 8, !alias.scope !793
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.k, i64 noundef %i.i, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50, !noalias !793
  unreachable

_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit: ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !alias.scope !793, !nonnull !3, !align !24, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k
  store ptr %i.w, ptr %i.g, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.y, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.1040.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit
  %.sroa.02.0.i = phi i1 [ true, %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit ], [ %.sroa.02.1.ph.i, %bb.aa ] ; 6 uses
  %i.ai = load i8, ptr %i.aa, align 1, !range !800, !alias.scope !797, !noalias !801, !noundef !3
  switch i8 %i.ai, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %select.unfold.i
    i8 3, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  br i1 %.sroa.02.0.i, label %.thread.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !804
  call void @"_ZN93_$LT$compression_codecs..zstd..decoder..ZstdDecoder$u20$as$u20$compression_codecs..Decode$GT$6finish17h20d0e425ea532ce9E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.aj = load i8, ptr %i.c, align 8, !range !714, !noalias !804, !noundef !3
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load ptr, ptr %i.ad, align 8, !noalias !804, !nonnull !3
  %i.am = load i8, ptr %i.ae, align 1, !range !714, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !804
  br i1 %i.ak, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread", label %bb.v

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !804
  call void @"_ZN116_$LT$tokio_util..io..stream_reader..StreamReader$LT$S$C$B$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$13poll_fill_buf17h3cff19ba59466726E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.an = load i64, ptr %i.b, align 8, !range !5, !noalias !804, !noundef !3
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread30", label %bb.y

"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread30": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !804
  br label %bb.ac

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !804
  call void @"_ZN116_$LT$tokio_util..io..stream_reader..StreamReader$LT$S$C$B$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$13poll_fill_buf17h3cff19ba59466726E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.ap = load i64, ptr %i.f, align 8, !range !5, !noalias !804, !noundef !3
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %.loopexit76.i.thread, label %bb.k

.loopexit76.i.thread:                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !804
  br label %bb.ac

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload.i = load ptr, ptr %i.af, align 8, !noalias !804 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !804 ; 4 uses
  %i.ar = icmp eq ptr %.sroa.08.0.copyload.i, null
  br i1 %i.ar, label %.loopexit76.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !804
  %.not74.i = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %.not74.i, label %bb.m, label %.thread.i

.loopexit76.i:                                    ; preds = %bb.k
  %i.as = inttoptr i64 %.sroa.3.0.copyload.i to ptr
  %i.at = icmp ne i64 %.sroa.3.0.copyload.i, 0
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !804
  br label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread"

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.ab, align 8, !alias.scope !797, !noalias !801
  br label %bb.aa

.thread.i:                                        ; preds = %bb.l, %bb.g
  %.sroa.010.047.i = phi ptr [ %.sroa.08.0.copyload.i, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %.sroa.4.046.i = phi i64 [ %.sroa.3.0.copyload.i, %bb.l ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !804
  store ptr %.sroa.010.047.i, ptr %i.e, align 8, !noalias !804
  store i64 %.sroa.4.046.i, ptr %i.ag, align 8, !noalias !804
  store i64 0, ptr %i.ah, align 8, !noalias !804
  call void @"_ZN93_$LT$compression_codecs..zstd..decoder..ZstdDecoder$u20$as$u20$compression_codecs..Decode$GT$6decode17ha47176cd855ee412E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.au = load i8, ptr %i.d, align 8, !range !714, !noalias !804, !noundef !3
  %i.av = trunc nuw i8 %i.au to i1                ; 3 uses
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread.i
  %i.aw = load ptr, ptr %.sroa.1040.0..sroa_idx.i, align 8, !noalias !804, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %.sroa.02.0.i, label %.thread52.i, label %.thread59.i

bb.o:                                             ; preds = %.thread.i
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !804 ; 2 uses
  %.sroa.1040.0.copyload.i = load ptr, ptr %.sroa.1040.0..sroa_idx.i, align 8, !noalias !804
  br i1 %.sroa.02.0.i, label %.thread67.i, label %.thread59.i

.thread52.i:                                      ; preds = %bb.n
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.aw)
  br label %.thread67.i

.thread59.i:                                      ; preds = %bb.o, %bb.n
  %.sroa.8.064.i = phi i8 [ %.sroa.8.0.copyload.i, %bb.o ], [ 0, %bb.n ]
  %.sroa.1040.063.i = phi ptr [ %.sroa.1040.0.copyload.i, %bb.o ], [ %i.aw, %bb.n ] ; 4 uses
  %i.ax = invoke { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17h6863c67c9772b894E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.s unwind label %bb.q

bb.p:                                             ; preds = %bb.s
  br i1 %i.av, label %bb.u, label %.thread67.i

bb.q:                                             ; preds = %bb.s, %.thread59.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br i1 %i.av, label %bb.r, label %"_ZN4core3ptr77drop_in_place$LT$core..result..Result$LT$bool$C$std..io..error..Error$GT$$GT$17h1e04b2647e1b396cE.exit.i"

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1040.063.i) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.sroa.1040.063.i)
          to label %"_ZN4core3ptr77drop_in_place$LT$core..result..Result$LT$bool$C$std..io..error..Error$GT$$GT$17h1e04b2647e1b396cE.exit.i" unwind label %bb.t

bb.s:                                             ; preds = %.thread59.i
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  invoke void @"_ZN116_$LT$tokio_util..io..stream_reader..StreamReader$LT$S$C$B$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$7consume17hb71c219c00709dcaE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z, i64 noundef %i.az)
          to label %bb.p unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr77drop_in_place$LT$core..result..Result$LT$bool$C$std..io..error..Error$GT$$GT$17h1e04b2647e1b396cE.exit.i": ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.ay

bb.u:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1040.063.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !804
  br label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread"

.thread67.i:                                      ; preds = %bb.p, %.thread52.i, %bb.o
  %.sroa.7.073.in.i = phi i8 [ %.sroa.8.064.i, %bb.p ], [ %.sroa.8.0.copyload.i, %bb.o ], [ 0, %.thread52.i ]
  %..i = and i8 %.sroa.7.073.in.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !804
  br label %bb.aa

select.unfold.i:                                  ; preds = %bb.z, %bb.w, %bb.f
  store i8 2, ptr %i.aa, align 1, !alias.scope !797, !noalias !801
  br label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread"

bb.v:                                             ; preds = %bb.h
  %i.bb = trunc nuw i8 %i.am to i1
  br i1 %i.bb, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bc = load i8, ptr %i.ab, align 8, !range !714, !alias.scope !797, !noalias !801, !noundef !3
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.x, label %select.unfold.i

bb.x:                                             ; preds = %bb.w
  %i.be = call noundef ptr @"_ZN93_$LT$compression_codecs..zstd..decoder..ZstdDecoder$u20$as$u20$compression_codecs..Decode$GT$6reinit17h9e6e62b6c23902c1E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %.not.i9 = icmp eq ptr %i.be, null
  br i1 %.not.i9, label %bb.aa, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread"

bb.y:                                             ; preds = %bb.i
  %.sroa.029.0.copyload.i = load ptr, ptr %i.ac, align 8, !noalias !804
  %.sroa.331.0.copyload.i = load i64, ptr %.sroa.331.0..sroa_idx.i, align 8, !noalias !804 ; 3 uses
  %i.bf = icmp eq ptr %.sroa.029.0.copyload.i, null
  br i1 %i.bf, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !804
  %i.bg = icmp eq i64 %.sroa.331.0.copyload.i, 0
  br i1 %i.bg, label %select.unfold.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %.thread67.i, %bb.m
  %.sroa.06.1.ph.i = phi i8 [ 0, %bb.z ], [ 3, %bb.x ], [ 1, %bb.v ], [ 1, %bb.m ], [ %..i, %.thread67.i ]
  %.sroa.02.1.ph.i = phi i1 [ %.sroa.02.0.i, %bb.z ], [ %.sroa.02.0.i, %bb.x ], [ %.sroa.02.0.i, %bb.v ], [ false, %bb.m ], [ false, %.thread67.i ]
  store i8 %.sroa.06.1.ph.i, ptr %i.aa, align 1, !alias.scope !797, !noalias !801
  %i.bh = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$9unwritten17h938c30936aca1793E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  %i.bi = extractvalue { ptr, i64 } %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread", label %bb.f

"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit": ; preds = %bb.y
  %i.bk = inttoptr i64 %.sroa.331.0.copyload.i to ptr
  %i.bl = icmp ne i64 %.sroa.331.0.copyload.i, 0
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !804
  br label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread"

.sink.split:                                      ; preds = %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit, %bb.ac, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread"
  %.sroa.5.0.ph = phi ptr [ %.sroa.10.2.i13, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread" ], [ null, %bb.ac ], [ null, %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit ]
  %.sroa.0.0.ph = phi i64 [ 0, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread" ], [ 1, %bb.ac ], [ 0, %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  %.sroa.5.0 = phi ptr [ null, %bb.a ], [ %.sroa.5.0.ph, %.sink.split ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.bm = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bn = insertvalue { i64, ptr } %i.bm, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.bn

bb.ac:                                            ; preds = %.loopexit76.i.thread, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread30"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bo = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17hef62769bb9dfdea8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  %i.bp = extractvalue { ptr, i64 } %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.sink.split, label %bb.ad

"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread": ; preds = %bb.x, %bb.aa, %bb.h, %bb.u, %select.unfold.i, %.loopexit76.i, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit"
  %.sroa.10.2.i13 = phi ptr [ %i.as, %.loopexit76.i ], [ %i.bk, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit" ], [ null, %select.unfold.i ], [ %.sroa.1040.063.i, %bb.u ], [ %i.al, %bb.h ], [ null, %bb.aa ], [ %i.be, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %.sroa.10.2.i13, null
  br i1 %.not, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17h1e59fda320d1a1d3E.exit.thread", %bb.ac
  %i.br = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17hef62769bb9dfdea8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  %i.bs = extractvalue { ptr, i64 } %i.br, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.bt = add i64 %i.bs, %i.k                     ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.k
  br i1 %i.bu, label %bb.af, label %bb.ae, !prof !261

bb.ae:                                            ; preds = %bb.ad
  %.not.i10 = icmp ugt i64 %i.bt, %i.q
  br i1 %.not.i10, label %bb.ag, label %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit, !prof !261

bb.af:                                            ; preds = %bb.ad
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #50, !noalias !805
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !808
  store ptr @457, ptr %i.a, align 8, !noalias !808
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bv, align 8, !noalias !808
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bw, align 8, !noalias !808
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8, !noalias !808
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.by, align 8, !noalias !808
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #50, !noalias !805
  unreachable

_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit: ; preds = %bb.ae
  store i64 %i.bt, ptr %i.j, align 8, !alias.scope !805, !noalias !810
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN126_$LT$async_compression..tokio..bufread..generic..decoder..Decoder$LT$R$C$D$GT$$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17he84619bcddfeb6b8E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 7 uses
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = sub nuw i64 %i.i, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !811, !noundef !3 ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = phi i64 [ %i.i, %bb.d ], [ %i.o, %bb.b ]
  %i.r = icmp ult i64 %i.i, %i.k
  br i1 %i.r, label %bb.e, label %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit, !prof !796

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %2, align 8, !alias.scope !811, !nonnull !3, !align !24, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o
  %i.u = sub nuw i64 %i.i, %i.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.u, i1 false), !noalias !811
  store i64 %i.i, ptr %i.n, align 8, !alias.scope !811
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.k, i64 noundef %i.i, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50, !noalias !811
  unreachable

_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit: ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !alias.scope !811, !nonnull !3, !align !24, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k
  store ptr %i.w, ptr %i.g, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.y, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.1040.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit
  %.sroa.02.0.i = phi i1 [ true, %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit ], [ %.sroa.02.1.ph.i, %bb.aa ] ; 6 uses
  %i.ai = load i8, ptr %i.aa, align 1, !range !800, !alias.scope !814, !noalias !817, !noundef !3
  switch i8 %i.ai, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %select.unfold.i
    i8 3, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  br i1 %.sroa.02.0.i, label %.thread.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !820
  call void @"_ZN93_$LT$compression_codecs..zstd..decoder..ZstdDecoder$u20$as$u20$compression_codecs..Decode$GT$6finish17h20d0e425ea532ce9E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.aj = load i8, ptr %i.c, align 8, !range !714, !noalias !820, !noundef !3
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load ptr, ptr %i.ad, align 8, !noalias !820, !nonnull !3
  %i.am = load i8, ptr %i.ae, align 1, !range !714, !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !820
  br i1 %i.ak, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread", label %bb.v

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !820
  call void @"_ZN116_$LT$tokio_util..io..stream_reader..StreamReader$LT$S$C$B$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$13poll_fill_buf17h67ba50a95a7dd21bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.an = load i64, ptr %i.b, align 8, !range !5, !noalias !820, !noundef !3
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread30", label %bb.y

"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread30": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !820
  br label %bb.ac

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !820
  call void @"_ZN116_$LT$tokio_util..io..stream_reader..StreamReader$LT$S$C$B$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$13poll_fill_buf17h67ba50a95a7dd21bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.ap = load i64, ptr %i.f, align 8, !range !5, !noalias !820, !noundef !3
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %.loopexit76.i.thread, label %bb.k

.loopexit76.i.thread:                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !820
  br label %bb.ac

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload.i = load ptr, ptr %i.af, align 8, !noalias !820 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !820 ; 4 uses
  %i.ar = icmp eq ptr %.sroa.08.0.copyload.i, null
  br i1 %i.ar, label %.loopexit76.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !820
  %.not74.i = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %.not74.i, label %bb.m, label %.thread.i

.loopexit76.i:                                    ; preds = %bb.k
  %i.as = inttoptr i64 %.sroa.3.0.copyload.i to ptr
  %i.at = icmp ne i64 %.sroa.3.0.copyload.i, 0
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !820
  br label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread"

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.ab, align 8, !alias.scope !814, !noalias !817
  br label %bb.aa

.thread.i:                                        ; preds = %bb.l, %bb.g
  %.sroa.010.047.i = phi ptr [ %.sroa.08.0.copyload.i, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %.sroa.4.046.i = phi i64 [ %.sroa.3.0.copyload.i, %bb.l ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !820
  store ptr %.sroa.010.047.i, ptr %i.e, align 8, !noalias !820
  store i64 %.sroa.4.046.i, ptr %i.ag, align 8, !noalias !820
  store i64 0, ptr %i.ah, align 8, !noalias !820
  call void @"_ZN93_$LT$compression_codecs..zstd..decoder..ZstdDecoder$u20$as$u20$compression_codecs..Decode$GT$6decode17ha47176cd855ee412E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.au = load i8, ptr %i.d, align 8, !range !714, !noalias !820, !noundef !3
  %i.av = trunc nuw i8 %i.au to i1                ; 3 uses
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread.i
  %i.aw = load ptr, ptr %.sroa.1040.0..sroa_idx.i, align 8, !noalias !820, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %.sroa.02.0.i, label %.thread52.i, label %.thread59.i

bb.o:                                             ; preds = %.thread.i
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !820 ; 2 uses
  %.sroa.1040.0.copyload.i = load ptr, ptr %.sroa.1040.0..sroa_idx.i, align 8, !noalias !820
  br i1 %.sroa.02.0.i, label %.thread67.i, label %.thread59.i

.thread52.i:                                      ; preds = %bb.n
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.aw)
  br label %.thread67.i

.thread59.i:                                      ; preds = %bb.o, %bb.n
  %.sroa.8.064.i = phi i8 [ %.sroa.8.0.copyload.i, %bb.o ], [ 0, %bb.n ]
  %.sroa.1040.063.i = phi ptr [ %.sroa.1040.0.copyload.i, %bb.o ], [ %i.aw, %bb.n ] ; 4 uses
  %i.ax = invoke { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17h6863c67c9772b894E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.s unwind label %bb.q

bb.p:                                             ; preds = %bb.s
  br i1 %i.av, label %bb.u, label %.thread67.i

bb.q:                                             ; preds = %bb.s, %.thread59.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br i1 %i.av, label %bb.r, label %"_ZN4core3ptr77drop_in_place$LT$core..result..Result$LT$bool$C$std..io..error..Error$GT$$GT$17h1e04b2647e1b396cE.exit.i"

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1040.063.i) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.sroa.1040.063.i)
          to label %"_ZN4core3ptr77drop_in_place$LT$core..result..Result$LT$bool$C$std..io..error..Error$GT$$GT$17h1e04b2647e1b396cE.exit.i" unwind label %bb.t

bb.s:                                             ; preds = %.thread59.i
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  invoke void @"_ZN116_$LT$tokio_util..io..stream_reader..StreamReader$LT$S$C$B$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$7consume17hf98323da201b2a64E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z, i64 noundef %i.az)
          to label %bb.p unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr77drop_in_place$LT$core..result..Result$LT$bool$C$std..io..error..Error$GT$$GT$17h1e04b2647e1b396cE.exit.i": ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.ay

bb.u:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1040.063.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !820
  br label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread"

.thread67.i:                                      ; preds = %bb.p, %.thread52.i, %bb.o
  %.sroa.7.073.in.i = phi i8 [ %.sroa.8.064.i, %bb.p ], [ %.sroa.8.0.copyload.i, %bb.o ], [ 0, %.thread52.i ]
  %..i = and i8 %.sroa.7.073.in.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !820
  br label %bb.aa

select.unfold.i:                                  ; preds = %bb.z, %bb.w, %bb.f
  store i8 2, ptr %i.aa, align 1, !alias.scope !814, !noalias !817
  br label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread"

bb.v:                                             ; preds = %bb.h
  %i.bb = trunc nuw i8 %i.am to i1
  br i1 %i.bb, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bc = load i8, ptr %i.ab, align 8, !range !714, !alias.scope !814, !noalias !817, !noundef !3
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.x, label %select.unfold.i

bb.x:                                             ; preds = %bb.w
  %i.be = call noundef ptr @"_ZN93_$LT$compression_codecs..zstd..decoder..ZstdDecoder$u20$as$u20$compression_codecs..Decode$GT$6reinit17h9e6e62b6c23902c1E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %.not.i9 = icmp eq ptr %i.be, null
  br i1 %.not.i9, label %bb.aa, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread"

bb.y:                                             ; preds = %bb.i
  %.sroa.029.0.copyload.i = load ptr, ptr %i.ac, align 8, !noalias !820
  %.sroa.331.0.copyload.i = load i64, ptr %.sroa.331.0..sroa_idx.i, align 8, !noalias !820 ; 3 uses
  %i.bf = icmp eq ptr %.sroa.029.0.copyload.i, null
  br i1 %i.bf, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !820
  %i.bg = icmp eq i64 %.sroa.331.0.copyload.i, 0
  br i1 %i.bg, label %select.unfold.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %.thread67.i, %bb.m
  %.sroa.06.1.ph.i = phi i8 [ 0, %bb.z ], [ 3, %bb.x ], [ 1, %bb.v ], [ 1, %bb.m ], [ %..i, %.thread67.i ]
  %.sroa.02.1.ph.i = phi i1 [ %.sroa.02.0.i, %bb.z ], [ %.sroa.02.0.i, %bb.x ], [ %.sroa.02.0.i, %bb.v ], [ false, %bb.m ], [ false, %.thread67.i ]
  store i8 %.sroa.06.1.ph.i, ptr %i.aa, align 1, !alias.scope !814, !noalias !817
  %i.bh = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$9unwritten17h938c30936aca1793E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  %i.bi = extractvalue { ptr, i64 } %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread", label %bb.f

"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit": ; preds = %bb.y
  %i.bk = inttoptr i64 %.sroa.331.0.copyload.i to ptr
  %i.bl = icmp ne i64 %.sroa.331.0.copyload.i, 0
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !820
  br label %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread"

.sink.split:                                      ; preds = %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit, %bb.ac, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread"
  %.sroa.5.0.ph = phi ptr [ %.sroa.10.2.i13, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread" ], [ null, %bb.ac ], [ null, %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit ]
  %.sroa.0.0.ph = phi i64 [ 0, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread" ], [ 1, %bb.ac ], [ 0, %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  %.sroa.5.0 = phi ptr [ null, %bb.a ], [ %.sroa.5.0.ph, %.sink.split ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.bm = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bn = insertvalue { i64, ptr } %i.bm, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.bn

bb.ac:                                            ; preds = %.loopexit76.i.thread, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread30"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bo = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17hef62769bb9dfdea8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  %i.bp = extractvalue { ptr, i64 } %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.sink.split, label %bb.ad

"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread": ; preds = %bb.x, %bb.aa, %bb.h, %bb.u, %select.unfold.i, %.loopexit76.i, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit"
  %.sroa.10.2.i13 = phi ptr [ %i.as, %.loopexit76.i ], [ %i.bk, %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit" ], [ null, %select.unfold.i ], [ %.sroa.1040.063.i, %bb.u ], [ %i.al, %bb.h ], [ null, %bb.aa ], [ %i.be, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %.sroa.10.2.i13, null
  br i1 %.not, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %"_ZN17async_compression5tokio7bufread7generic7decoder20Decoder$LT$R$C$D$GT$12do_poll_read17ha1583f790a984056E.exit.thread", %bb.ac
  %i.br = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17hef62769bb9dfdea8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  %i.bs = extractvalue { ptr, i64 } %i.br, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.bt = add i64 %i.bs, %i.k                     ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.k
  br i1 %i.bu, label %bb.af, label %bb.ae, !prof !261

bb.ae:                                            ; preds = %bb.ad
  %.not.i10 = icmp ugt i64 %i.bt, %i.q
  br i1 %.not.i10, label %bb.ag, label %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit, !prof !261

bb.af:                                            ; preds = %bb.ad
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #50, !noalias !821
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !824
  store ptr @457, ptr %i.a, align 8, !noalias !824
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bv, align 8, !noalias !824
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bw, align 8, !noalias !824
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8, !noalias !824
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.by, align 8, !noalias !824
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #50, !noalias !821
  unreachable

_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit: ; preds = %bb.ae
  store i64 %i.bt, ptr %i.j, align 8, !alias.scope !821, !noalias !826
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN126_$LT$async_compression..tokio..bufread..generic..encoder..Encoder$LT$R$C$E$GT$$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17h2db1e2e803508997E"(ptr noalias noundef align 8 dereferenceable(144) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 7 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = sub nuw i64 %i.g, %i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !827, !noundef !3 ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = phi i64 [ %i.g, %bb.d ], [ %i.m, %bb.b ]
  %i.p = icmp ult i64 %i.g, %i.i
  br i1 %i.p, label %bb.e, label %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit, !prof !796

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !alias.scope !827, !nonnull !3, !align !24, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  %i.s = sub nuw i64 %i.g, %i.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.s, i1 false), !noalias !827
  store i64 %i.g, ptr %i.l, align 8, !alias.scope !827
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.i, i64 noundef %i.g, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50, !noalias !827
  unreachable

_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit: ; preds = %bb.c
  %i.t = load ptr, ptr %2, align 8, !alias.scope !827, !nonnull !3, !align !24, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i
  store ptr %i.u, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.k, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.w, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit
  %i.ad = load i8, ptr %i.y, align 8, !range !833, !alias.scope !830, !noalias !834, !noundef !3
  switch i8 %i.ad, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %.critedge.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !837
  call void @"_ZN116_$LT$tokio_util..io..stream_reader..StreamReader$LT$S$C$B$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$13poll_fill_buf17habfec94984938bb4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.ae = load i64, ptr %i.d, align 8, !range !5, !noalias !837, !noundef !3
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.r, label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !837
  call void @"_ZN93_$LT$compression_codecs..zstd..encoder..ZstdEncoder$u20$as$u20$compression_codecs..Encode$GT$6finish17h2647899c02604805E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.ag = load i8, ptr %i.b, align 8, !range !714, !noalias !837, !noundef !3
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.o, label %bb.p

bb.i:                                             ; preds = %bb.g
  %.sroa.03.0.copyload.i = load ptr, ptr %i.aa, align 8, !noalias !837 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !837 ; 4 uses
  %i.ai = icmp eq ptr %.sroa.03.0.copyload.i, null
  br i1 %i.ai, label %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !837
  %i.aj = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %i.aj, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !837
  store ptr %.sroa.03.0.copyload.i, ptr %i.c, align 8, !noalias !837
  store i64 %.sroa.3.0.copyload.i, ptr %i.ab, align 8, !noalias !837
  store i64 0, ptr %i.ac, align 8, !noalias !837
  %i.ak = call noundef ptr @"_ZN93_$LT$compression_codecs..zstd..encoder..ZstdEncoder$u20$as$u20$compression_codecs..Encode$GT$6encode17h3f3db2fbafd87fd7E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) ; 2 uses
  %.not.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !837
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.al = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17h6863c67c9772b894E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.am = extractvalue { ptr, i64 } %i.al, 1
  call void @"_ZN116_$LT$tokio_util..io..stream_reader..StreamReader$LT$S$C$B$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$7consume17h80424faa1748986eE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.x, i64 noundef %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !837
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.j
  %.sroa.01.0.i = phi i8 [ 1, %bb.j ], [ 0, %bb.m ], [ 1, %bb.p ]
  store i8 %.sroa.01.0.i, ptr %i.y, align 8, !alias.scope !830, !noalias !834
  %i.an = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$9unwritten17h938c30936aca1793E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.ao = extractvalue { ptr, i64 } %i.an, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread.thread", label %bb.f

bb.o:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !837, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !837
  br label %.sink.split

bb.p:                                             ; preds = %bb.h
  %i.as = load i8, ptr %i.z, align 1, !range !714, !noalias !837, !noundef !3
  %i.at = trunc nuw i8 %i.as to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !837
  br i1 %i.at, label %.critedge.i, label %bb.n

.critedge.i:                                      ; preds = %bb.p, %bb.f
  store i8 2, ptr %i.y, align 8, !alias.scope !830, !noalias !834
  br label %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread.thread"

.sink.split:                                      ; preds = %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit, %bb.r, %bb.o, %bb.l, %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread"
  %.sroa.5.0.ph = phi ptr [ %i.ar, %bb.o ], [ %i.az, %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread" ], [ %i.ak, %bb.l ], [ null, %bb.r ], [ null, %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.o ], [ 0, %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread" ], [ 0, %bb.l ], [ 1, %bb.r ], [ 0, %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a
  %.sroa.5.0 = phi ptr [ null, %bb.a ], [ %.sroa.5.0.ph, %.sink.split ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.au = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.av = insertvalue { i64, ptr } %i.au, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.av

bb.r:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !837
  %i.aw = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17hef62769bb9dfdea8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.ax = extractvalue { ptr, i64 } %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.sink.split, label %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread.thread"

"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread": ; preds = %bb.i
  %i.az = inttoptr i64 %.sroa.3.0.copyload.i to ptr
  %i.ba = icmp ne i64 %.sroa.3.0.copyload.i, 0
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !837
  br label %.sink.split

"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread.thread": ; preds = %bb.n, %.critedge.i, %bb.r
  %i.bb = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17hef62769bb9dfdea8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.bc = extractvalue { ptr, i64 } %i.bb, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.bd = add i64 %i.bc, %i.i                     ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.i
  br i1 %i.be, label %bb.t, label %bb.s, !prof !261

bb.s:                                             ; preds = %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread.thread"
  %.not.i10 = icmp ugt i64 %i.bd, %i.o
  br i1 %.not.i10, label %bb.u, label %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit, !prof !261

bb.t:                                             ; preds = %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17h295c855c8738b441E.exit.thread.thread"
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #50, !noalias !838
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !841
  store ptr @457, ptr %i.a, align 8, !noalias !841
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bf, align 8, !noalias !841
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bg, align 8, !noalias !841
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bh, align 8, !noalias !841
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.bi, align 8, !noalias !841
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #50, !noalias !838
  unreachable

_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit: ; preds = %bb.s
  store i64 %i.bd, ptr %i.h, align 8, !alias.scope !838, !noalias !843
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN126_$LT$async_compression..tokio..bufread..generic..encoder..Encoder$LT$R$C$E$GT$$u20$as$u20$tokio..io..async_read..AsyncRead$GT$9poll_read17h87421813120b24d8E"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 7 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = sub nuw i64 %i.g, %i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !844, !noundef !3 ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = phi i64 [ %i.g, %bb.d ], [ %i.m, %bb.b ]
  %i.p = icmp ult i64 %i.g, %i.i
  br i1 %i.p, label %bb.e, label %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit, !prof !796

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !alias.scope !844, !nonnull !3, !align !24, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  %i.s = sub nuw i64 %i.g, %i.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.s, i1 false), !noalias !844
  store i64 %i.g, ptr %i.l, align 8, !alias.scope !844
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.i, i64 noundef %i.g, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50, !noalias !844
  unreachable

_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit: ; preds = %bb.c
  %i.t = load ptr, ptr %2, align 8, !alias.scope !844, !nonnull !3, !align !24, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i
  store ptr %i.u, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.k, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.w, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %_ZN5tokio2io8read_buf7ReadBuf22initialize_unfilled_to17hda3f0c7bb839224fE.exit
  %i.ae = load i8, ptr %i.y, align 8, !range !833, !alias.scope !847, !noalias !850, !noundef !3
  switch i8 %i.ae, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %.critedge.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !853
  call void @"_ZN92_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$tokio..io..async_buf_read..AsyncBufRead$GT$13poll_fill_buf17hbd923c31fb432be9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.af = load i64, ptr %i.d, align 8, !range !5, !noalias !853, !noundef !3
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.r, label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !853
  call void @"_ZN93_$LT$compression_codecs..zstd..encoder..ZstdEncoder$u20$as$u20$compression_codecs..Encode$GT$6finish17h2647899c02604805E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.ah = load i8, ptr %i.b, align 8, !range !714, !noalias !853, !noundef !3
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %bb.p

bb.i:                                             ; preds = %bb.g
  %.sroa.03.0.copyload.i = load ptr, ptr %i.aa, align 8, !noalias !853 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !853 ; 4 uses
  %i.aj = icmp eq ptr %.sroa.03.0.copyload.i, null
  br i1 %i.aj, label %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !853
  %i.ak = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %i.ak, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !853
  store ptr %.sroa.03.0.copyload.i, ptr %i.c, align 8, !noalias !853
  store i64 %.sroa.3.0.copyload.i, ptr %i.ab, align 8, !noalias !853
  store i64 0, ptr %i.ac, align 8, !noalias !853
  %i.al = call noundef ptr @"_ZN93_$LT$compression_codecs..zstd..encoder..ZstdEncoder$u20$as$u20$compression_codecs..Encode$GT$6encode17h3f3db2fbafd87fd7E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) ; 2 uses
  %.not.i9 = icmp eq ptr %i.al, null
  br i1 %.not.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !853
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.am = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17h6863c67c9772b894E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.an = extractvalue { ptr, i64 } %i.am, 1
  %i.ao = load i64, ptr %i.ad, align 8, !alias.scope !854, !noalias !850, !noundef !3
  %i.ap = add i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.ad, align 8, !alias.scope !854, !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !853
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.j
  %.sroa.01.0.i = phi i8 [ 1, %bb.j ], [ 0, %bb.m ], [ 1, %bb.p ]
  store i8 %.sroa.01.0.i, ptr %i.y, align 8, !alias.scope !847, !noalias !850
  %i.aq = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$9unwritten17h938c30936aca1793E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.ar = extractvalue { ptr, i64 } %i.aq, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread.thread", label %bb.f

bb.o:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !853, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !853
  br label %.sink.split

bb.p:                                             ; preds = %bb.h
  %i.av = load i8, ptr %i.z, align 1, !range !714, !noalias !853, !noundef !3
  %i.aw = trunc nuw i8 %i.av to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !853
  br i1 %i.aw, label %.critedge.i, label %bb.n

.critedge.i:                                      ; preds = %bb.p, %bb.f
  store i8 2, ptr %i.y, align 8, !alias.scope !847, !noalias !850
  br label %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread.thread"

.sink.split:                                      ; preds = %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit, %bb.r, %bb.o, %bb.l, %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread"
  %.sroa.5.0.ph = phi ptr [ %i.au, %bb.o ], [ %i.bc, %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread" ], [ %i.al, %bb.l ], [ null, %bb.r ], [ null, %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.o ], [ 0, %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread" ], [ 0, %bb.l ], [ 1, %bb.r ], [ 0, %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a
  %.sroa.5.0 = phi ptr [ null, %bb.a ], [ %.sroa.5.0.ph, %.sink.split ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.ax = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ay = insertvalue { i64, ptr } %i.ax, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.ay

bb.r:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !853
  %i.az = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17hef62769bb9dfdea8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.ba = extractvalue { ptr, i64 } %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.sink.split, label %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread.thread"

"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread": ; preds = %bb.i
  %i.bc = inttoptr i64 %.sroa.3.0.copyload.i to ptr
  %i.bd = icmp ne i64 %.sroa.3.0.copyload.i, 0
  call void @llvm.assume(i1 %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !853
  br label %.sink.split

"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread.thread": ; preds = %bb.n, %.critedge.i, %bb.r
  %i.be = call { ptr, i64 } @"_ZN16compression_core4util22PartialBuffer$LT$B$GT$7written17hef62769bb9dfdea8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.bf = extractvalue { ptr, i64 } %i.be, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.bg = add i64 %i.bf, %i.i                     ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %i.i
  br i1 %i.bh, label %bb.t, label %bb.s, !prof !261

bb.s:                                             ; preds = %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread.thread"
  %.not.i10 = icmp ugt i64 %i.bg, %i.o
  br i1 %.not.i10, label %bb.u, label %_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit, !prof !261

bb.t:                                             ; preds = %"_ZN17async_compression5tokio7bufread7generic7encoder20Encoder$LT$R$C$E$GT$12do_poll_read17hc4d79464f6cec2f5E.exit.thread.thread"
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #50, !noalias !857
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !860
  store ptr @457, ptr %i.a, align 8, !noalias !860
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bi, align 8, !noalias !860
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bj, align 8, !noalias !860
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8, !noalias !860
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.bl, align 8, !noalias !860
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #50, !noalias !857
  unreachable

_ZN5tokio2io8read_buf7ReadBuf7advance17h63c0f5b9a282f3f6E.exit: ; preds = %bb.s
  store i64 %i.bg, ptr %i.h, align 8, !alias.scope !857, !noalias !862
  br label %.sink.split
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12tracing_core8callsite8Callsite15private_type_id17hf2869adc7e78815eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h0578d4b800d15a9eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdfa479ef2fea4c88E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @47) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
end_hunk_0
