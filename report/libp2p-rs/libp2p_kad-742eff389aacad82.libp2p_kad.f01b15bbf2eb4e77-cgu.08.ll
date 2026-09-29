Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_kad-742eff389aacad82.libp2p_kad.f01b15bbf2eb4e77-cgu.08?download=true
inline.NumInlined: 188
inline.NumDeleted: 79
begin_hunk_0_@_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E8try_growCskC4O4hr3vz7_10libp2p_kad:_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E10triple_mutCskC4O4hr3vz7_10libp2p_kad.exit
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !282
  store i64 0, ptr %i.a, align 8, !noalias !282
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !282
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit48 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 dereferenceable(3056) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.b = load i64, ptr %i.a, align 8, !noalias !285, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 20
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !285, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit.thread, !prof !15

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !11

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(3056) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECskC4O4hr3vz7_10libp2p_kad.exit
    i64 0, label %bb.d
  ], !prof !16

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6removeBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(3056) %1, i64 noundef %2) unnamed_addr #0 {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3048 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !289, !noalias !290, !noundef !8
  %i.c = icmp ugt i64 %i.b, 20                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %i.a ; 2 uses
  %i.e = load i64, ptr %.sink11.i, align 8, !noundef !8 ; 3 uses
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.a, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %.sink12.i = select i1 %i.c, ptr %i.h, ptr %i.d
  %i.i = add i64 %i.e, -1
  store i64 %i.i, ptr %.sink11.i, align 8
  %i.j = getelementptr inbounds nuw [152 x i8], ptr %.sink12.i, i64 %2 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = xor i64 %2, -1
  %i.m = add i64 %i.e, %i.l
  %i.n = mul nuw nsw i64 %i.m, 152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.k, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E8into_vecBM_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(3056) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3072 x i8], align 8              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3048
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = icmp ugt i64 %i.c, 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.h = load i64, ptr %i.e, align 8, !noundef !8
  store i64 %i.c, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.j, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.5.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3032) %.sroa.7.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(3032) %.sroa.7.0..sroa_idx, i64 3032, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  store i64 0, ptr %i.a, align 8, !alias.scope !295
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx5, align 8, !alias.scope !295
  %.sroa.78.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 3048
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.78.0..sroa_idx9, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %i.k, align 8, !alias.scope !296, !noalias !294
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEINtB2_12SpecFromIterBU_INtCsczYENlYh6wI_8smallvec8IntoIterABU_j14_EE9from_iterBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(3072) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3056) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ult i64 %i.c, 21                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 20                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 20) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !11

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_.exit
  %i.j = icmp ult i64 %1, 21
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 152                          ; 5 uses
  %or.cond = icmp ult i64 %1, 60680079189834052
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit, label %bb.l, !prof !12

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit
  %i.l = mul i64 %.sink.i, 152                    ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 60680079189834052
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit48, label %bb.l, !prof !12

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 152                    ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 60680079189834052
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !299
  store i64 0, ptr %i.a, align 8, !noalias !299
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !299
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !299
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBH_.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb6RecordENtB6_5Debug3fmtBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.c = load i64, ptr %i.b, align 8, !range !7, !alias.scope !303, !noalias !304, !noundef !8
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !305
  store ptr %i.b, ptr %i.a, align 8, !noalias !305
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb6RecordENtNtB7_3fmt5Debug3fmtBQ_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4), !noalias !303
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb6RecordENtNtB7_3fmt5Debug3fmtBQ_.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb6RecordENtNtB7_3fmt5Debug3fmtBQ_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !317, !noalias !318, !noundef !8
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !317, !noalias !318
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !317, !noalias !318, !noundef !8 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !319, !noalias !317
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !319, !noalias !317
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !319, !noalias !317, !noundef !8
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !317, !noalias !318, !noundef !8
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !317, !noalias !318
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !317, !noalias !318
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.aj, align 8, !alias.scope !317, !noalias !318
  %.promoted20.i = load i64, ptr %i.ak, align 8, !alias.scope !320, !noalias !318
  %.promoted22.i = load i64, ptr %i.al, align 8, !alias.scope !320, !noalias !318
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !317, !noalias !318, !noundef !8
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !321, !noalias !318, !noundef !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !321, !noalias !318, !noundef !8 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !321, !noalias !318, !noundef !8
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !321, !noalias !318
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !321, !noalias !318
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !321, !noalias !318
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8, !alias.scope !317, !noalias !318
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.bj = add i64 %i.e, %2
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskC4O4hr3vz7_10libp2p_kad.exit

._crit_edge.i:                                    ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8, !alias.scope !317, !noalias !318
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !320, !noalias !318
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !320, !noalias !318
  store i64 %i.da, ptr %0, align 8, !alias.scope !317, !noalias !318
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.db, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bl, align 1, !alias.scope !322, !noalias !317
  %i.bm = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !322, !noalias !317
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !322, !noalias !317, !noundef !8
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cf, align 8, !alias.scope !317, !noalias !318
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskC4O4hr3vz7_10libp2p_kad.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cg = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cy, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.ck, align 1, !alias.scope !318, !noalias !317 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i, %i.ci   ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.cm, %i.co                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.j, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !317, !noalias !318
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 captures(none) dereferenceable(224) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.d = icmp eq i64 %.promoted, %i.c
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit1, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load i64, ptr %i.e, align 8, !noalias !334, !noundef !8
  %i.g = icmp ugt i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.us
  %i.k = phi i64 [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.us ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %.sroa.07.0.copyload.us = load ptr, ptr %i.m, align 8 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.07.0.copyload.us, null
  br i1 %.not.us, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.us

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.6.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.6.0.copyload.us = load ptr, ptr %.sroa.6.0..sroa_idx.us, align 8
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5.0.copyload.us = load i64, ptr %.sroa.5.0..sroa_idx.us, align 8
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0.copyload.us = load ptr, ptr %.sroa.4.0..sroa_idx.us, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.us, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !335, !nonnull !8, !noundef !8
  tail call void %i.o(ptr noundef %.sroa.6.0.copyload.us, ptr noundef %.sroa.4.0.copyload.us, i64 noundef %.sroa.5.0.copyload.us), !noalias !335, !inline_history !333
  %i.p = icmp eq i64 %i.l, %i.c
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit1, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit
  %i.q = phi i64 [ %i.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q ; 4 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0.copyload, null
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %.lr.ph.split
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !335, !nonnull !8, !noundef !8
  tail call void %i.u(ptr noundef %.sroa.6.0.copyload, ptr noundef %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload), !noalias !335, !inline_history !333
  %i.v = icmp eq i64 %i.r, %i.c
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit1, label %.lr.ph.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit1: ; preds = %.lr.ph.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit, %.lr.ph.split.us, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.us, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_CsczYENlYh6wI_8smallvecINtB5_8IntoIterANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(3072) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 3 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp eq i64 %.promoted, %i.d
  br i1 %i.e, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.g = load i64, ptr %i.f, align 8, !noalias !338, !noundef !8
  %i.h = icmp ugt i64 %i.g, 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %i.l = phi i64 [ %i.m, %bb.b ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw [152 x i8], ptr %i.k, i64 %i.l
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.n, i64 152, i1 false)
  %.pr.us = load i64, ptr %i.a, align 8
  %.not.us = icmp eq i64 %.pr.us, -1
  br i1 %.not.us, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB11_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = icmp eq i64 %i.m, %i.d
  br i1 %i.o, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.p = phi i64 [ %i.q, %bb.c ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw [152 x i8], ptr %i.i, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.r, i64 152, i1 false)
  %.pr = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %.loopexit, label %bb.c

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  store i64 -1, ptr %i.a, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph.split
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB11_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = icmp eq i64 %i.q, %i.d
  br i1 %i.s, label %.thread, label %.lr.ph.split

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.thread
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB11_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_CsczYENlYh6wI_8smallvecNtB5_18CollectionAllocErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !17, !noundef !8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCskC4O4hr3vz7_10libp2p_kad9addressesNtB4_9AddressesNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load i64, ptr %i.b, align 8, !noalias !341, !noundef !8 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 6
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !341, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !341, !noundef !8
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad.exit

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.b, %bb.c
  %.sink13.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sink12.i = phi i64 [ %i.h, %bb.b ], [ %i.c, %bb.c ]
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sink13.i, i64 %.sink12.i
  %i.k = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtNtBa_5slice4iter4IterB14_EECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink13.i, ptr noundef nonnull %i.j)
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.d, label %bb.d, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i: ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.c
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i
  %.sroa.0.0.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i ], [ 0, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.0.0.i2 ; 4 uses
  %i.i = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !360, !noundef !8
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !360, !nonnull !8, !align !9, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !360, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !360, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !360, !noundef !8
  invoke void %i.n(ptr noundef %i.k, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i unwind label %bb.b, !noalias !356, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i: ; preds = %.lr.ph4
  %i.s = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.c
  br i1 %i.t, label %common.resume, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %i.i, %i.c
  br i1 %i.v, label %common.resume, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i
  %.sroa.0.1.i3 = phi i64 [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.0.1.i3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !364, !noundef !8
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !364, !nonnull !8, !align !9, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !364, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !364, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !364, !noundef !8
  invoke void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i unwind label %bb.c, !noalias !356, !inline_history !2

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i, %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.e ], [ %i.u, %bb.b ], [ %i.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.lr.ph4
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !356
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.aj = load i64, ptr %i.e, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.aj, ptr %i.al, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(272) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.d, label %bb.d, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i: ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.c
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i
  %.sroa.0.0.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i ], [ 0, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.0.0.i2 ; 4 uses
  %i.i = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !383, !noundef !8
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !383, !nonnull !8, !align !9, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !383, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !383, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !383, !noundef !8
  invoke void %i.n(ptr noundef %i.k, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i unwind label %bb.b, !noalias !379, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i: ; preds = %.lr.ph4
  %i.s = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.c
  br i1 %i.t, label %common.resume, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %i.i, %i.c
  br i1 %i.v, label %common.resume, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i
  %.sroa.0.1.i3 = phi i64 [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.0.1.i3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !387, !noundef !8
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !387, !nonnull !8, !align !9, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !387, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !387, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !387, !noundef !8
  invoke void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i unwind label %bb.c, !noalias !379, !inline_history !2

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i, %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.e ], [ %i.u, %bb.b ], [ %i.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit7.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.lr.ph4
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !379
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.aj = load i64, ptr %i.e, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.aj, ptr %i.al, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad.exit.i, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1r_5range9RangeFullE9index_mutCskC4O4hr3vz7_10libp2p_kad.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(3056) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.d, label %bb.i, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1J_5range9RangeFullE9index_mutBM_.exit

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1J_5range9RangeFullE9index_mutBM_.exit: ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBG_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i.i
  %i.g = icmp eq i64 %i.i, %i.c
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1J_5range9RangeFullE9index_mutBM_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit.i
  %.sroa.0.0.i22 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit.i ], [ 0, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1J_5range9RangeFullE9index_mutBM_.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [152 x i8], ptr %i.e, i64 %.sroa.0.0.i22 ; 8 uses
  %i.i = add nuw nsw i64 %.sroa.0.0.i22, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !402, !noundef !8
  %i.m = load ptr, ptr %i.j, align 8, !alias.scope !402, !nonnull !8, !align !9, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !403, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !402, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !402, !noundef !8
  invoke void %i.o(ptr noundef %i.l, ptr noundef %i.q, i64 noundef %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i.i unwind label %bb.b, !noalias !398, !inline_history !0

bb.b:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.h) #24
          to label %.body.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.h)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit.i unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.f:                                             ; preds = %.lr.ph24
  %i.x = add i64 %.sroa.0.1.i23, 1                ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.c
  br i1 %i.y, label %common.resume, label %.lr.ph24

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.u, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.aa = icmp eq i64 %i.i, %i.c
  br i1 %i.aa, label %common.resume, label %.lr.ph24

.lr.ph24:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i23 = phi i64 [ %i.x, %bb.f ], [ %i.i, %.body.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [152 x i8], ptr %i.e, i64 %.sroa.0.1.i23
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.ab) #24
          to label %bb.f unwind label %bb.h

common.resume:                                    ; preds = %bb.f, %.body.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.lr.ph24
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !8, !noundef !8
  %i.af = load i64, ptr %i.e, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.af, ptr %i.ah, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB1c_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB1c_.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBG_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBG_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_.exit.i, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB1J_5range9RangeFullE9index_mutBM_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEEB1c_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef align 8 dereferenceable(5456) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5448
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.d, label %bb.f, label %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB2u_5range9RangeFullE9index_mutB1B_.exit

_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB2u_5range9RangeFullE9index_mutB1B_.exit: ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEB1v_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.c
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEB1v_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB2u_5range9RangeFullE9index_mutB1B_.exit, %bb.b
  %.sroa.0.0.i2 = phi i64 [ %i.i, %bb.b ], [ 0, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB2u_5range9RangeFullE9index_mutB1B_.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [272 x i8], ptr %i.e, i64 %.sroa.0.0.i2
  %i.i = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.h)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %common.resume, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp eq i64 %i.i, %i.c
  br i1 %i.m, label %common.resume, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [272 x i8], ptr %i.e, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.n) #24
          to label %bb.c unwind label %bb.e

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.l, %bb.d ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.r = load i64, ptr %i.e, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.r, ptr %i.t, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEEB21_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEEB21_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEB1v_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEB1v_.exit: ; preds = %bb.b, %_RNvXsq_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEj14_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutNtNtB2u_5range9RangeFullE9index_mutB1B_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEEB21_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCskC4O4hr3vz7_10libp2p_kad(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !8
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRShNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf13copy_to_bytesCskC4O4hr3vz7_10libp2p_kad(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.i, align 8, !noundef !8 ; 2 uses
  %i.j = icmp ult i64 %.val2, %2
  br i1 %i.j, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !419
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !419
  %i.k = load i64, ptr %i.f, align 8, !range !13, !noalias !419, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !17, !noalias !419, !noundef !8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !419
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #28, !noalias !419
  unreachable

_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !419, !nonnull !8, !noundef !8
  %i.r = icmp ule i64 %2, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !419
  %i.s = lshr i64 %i.n, 10
  %i.t = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = sub nuw nsw i64 64, %i.t
  %..i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.u, i64 7)
  %i.v = shl nuw nsw i64 %..i.i.i, 2
  %i.w = getelementptr i8, ptr null, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !420, !noalias !421
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !alias.scope !420, !noalias !421
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %i.n, ptr %i.z, align 8, !alias.scope !420, !noalias !421
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.aa, align 8, !alias.scope !420, !noalias !421
  invoke void @_RINvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
          to label %bb.e unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %2, ptr %i.h, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.val2, ptr %i.ab, align 8
  call void @_RNvCs1eA6bChxBZF_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #28
  unreachable

bb.e:                                             ; preds = %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %i.y, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %i.z, align 8
  %.sroa.8.0.copyload = load ptr, ptr %i.aa, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.ac = ptrtoint ptr %.sroa.8.0.copyload to i64 ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %.noexc

.noexc:                                           ; preds = %bb.e
  %i.ae = lshr i64 %i.ac, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !423
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.af
  %i.ah = add i64 %i.ae, %.sroa.5.0.copyload
  %i.ai = add i64 %i.ae, %.sroa.7.0.copyload      ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  store i64 %i.ai, ptr %i.e, align 8, !noalias !423
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ag, ptr %i.ak, align 8, !noalias !423
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ah, ptr %i.al, align 8, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !423
  call void @_RNvXsE_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !423
  store i64 %i.ae, ptr %i.c, align 8, !noalias !425
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !424, !noalias !423, !noundef !8 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ae, %i.an
  br i1 %.not.i.i, label %bb.f, label %bb.i, !prof !11

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !425
  store i64 %i.an, ptr %i.b, align 8, !noalias !425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !425
  store ptr %i.c, ptr %i.a, align 8, !noalias !425
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !425
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ao, align 8, !noalias !425
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !425
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #26
          to label %.noexc.i unwind label %bb.h, !noalias !423

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ap, align 8, !alias.scope !422, !noalias !426
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %i.aq, align 8, !alias.scope !422, !noalias !426
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload, ptr %i.ar, align 8, !alias.scope !422, !noalias !426
  store ptr @_RNvNtCs1eA6bChxBZF_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !alias.scope !422, !noalias !426
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit

bb.h:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !429, !noalias !423, !noundef !8
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !429, !noalias !423, !nonnull !8, !align !9, !noundef !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !430, !nonnull !8, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !429, !noalias !423, !noundef !8
  invoke void %i.ax(ptr noundef %i.au, ptr noundef %i.az, i64 noundef %i.an)
          to label %.body.thread unwind label %bb.j, !noalias !423, !inline_history !418

bb.i:                                             ; preds = %.noexc
  %i.ba = sub nuw i64 %i.an, %i.ae
  store i64 %i.ba, ptr %i.am, align 8, !alias.scope !424, !noalias !423
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !424, !noalias !423, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ae
  store ptr %i.bd, ptr %i.bb, align 8, !alias.scope !424, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !423
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit

bb.j:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !423
  unreachable

_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit: ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.body.thread:                                     ; preds = %bb.k, %bb.h
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.as, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body8

bb.k:                                             ; preds = %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYRShNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf13has_remainingCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !noundef !8
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1y_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1F_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers5fixed9PeerStateINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEE7get_mutBO_EB1K_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers5fixed9PeerStateINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEENtNtNtNtB2G_4iter6traits7collect12IntoIterator9into_iterB1J_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers5fixed9PeerStateINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEE11rustc_entryB1V_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers5fixed9PeerStateEE14insert_no_growB1L_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyINtCsczYENlYh6wI_8smallvec8SmallVecANtBR_14ProviderRecordj14_EEE6removeBT_(ptr dead_on_unwind noalias nofree noundef writable sret([3096 x i8]) align 8 captures(none) dereferenceable(3096), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskC4O4hr3vz7_10libp2p_kad(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEINtB2_12SpecFromIterBU_INtCsczYENlYh6wI_8smallvec8IntoIterABU_j6_EE9from_iterCskC4O4hr3vz7_10libp2p_kad(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(224)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEINtB2_12SpecFromIterBU_INtCsczYENlYh6wI_8smallvec8IntoIterABU_j14_EE9from_iterBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(3072)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb6RecordNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtNtBa_5slice4iter4IterB14_EECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECskC4O4hr3vz7_10libp2p_kad(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!99 = !{!61, !59, !57, !42}
!100 = !{!63}
!101 = !{!65}
!102 = !{!67}
!103 = !{!67, !65, !63, !42}
!104 = !{!69}
!105 = !{!71}
!106 = !{!73}
!107 = !{!75}
!108 = !{!77}
!109 = !{!77, !75, !73, !71, !69, !42}
!110 = !{!71, !69, !42}
!111 = !{!79}
!112 = !{!81}
!113 = !{!83}
!114 = !{!85}
!115 = !{!85, !83, !81, !79, !42}
!116 = !{!79, !42}
!117 = distinct !{!117, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCskC4O4hr3vz7_10libp2p_kad"}
!118 = distinct !{!118, !117, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!119 = distinct !{!119, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCskC4O4hr3vz7_10libp2p_kad"}
!120 = distinct !{!120, !119, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!121 = !{!120, !118}
!122 = distinct !{!122, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E11try_reserveBM_"}
!123 = distinct !{!123, !122, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E11try_reserveBM_: argument 0"}
!124 = distinct !{!124, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_"}
!125 = distinct !{!125, !124, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_: argument 1"}
!126 = distinct !{!126, !124, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_: argument 0"}
!127 = distinct !{!127, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_"}
!128 = distinct !{!128, !127, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_: argument 1"}
!129 = distinct !{!129, !127, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_: argument 0"}
!130 = distinct !{!130, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E4pushBM_"}
!131 = distinct !{!131, !130, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E4pushBM_: argument 0"}
!132 = distinct !{!132, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_"}
!133 = distinct !{!133, !132, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_: argument 1"}
!134 = distinct !{!134, !130, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E4pushBM_: argument 1"}
!135 = distinct !{!135, !132, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_: argument 0"}
!136 = !{!125, !123}
!137 = !{!126}
!138 = !{!123}
!139 = !{!"branch_weights", i32 1074011, i32 2146409637, i32 0}
!140 = !{!128}
!141 = !{!129}
!142 = !{!133, !131}
!143 = !{!135, !134}
!144 = !{!131}
!145 = !{!134}
!146 = distinct !{!146, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!147 = distinct !{!147, !146, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!148 = !{!147}
!149 = distinct !{!149, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!150 = distinct !{!150, !149, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!151 = !{!150}
!152 = distinct !{!152, !"_RNvXsp_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexCskC4O4hr3vz7_10libp2p_kad"}
!153 = distinct !{!153, !152, !"_RNvXsp_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!154 = distinct !{!154, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!155 = distinct !{!155, !154, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!156 = !{!155, !153}
!157 = distinct !{!157, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!158 = distinct !{!158, !157, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!159 = distinct !{!159, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtCskC4O4hr3vz7_10libp2p_kad9addressesNtB2f_9Addresses6insert0EB2h_"}
!160 = distinct !{!160, !159, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtCskC4O4hr3vz7_10libp2p_kad9addressesNtB2f_9Addresses6insert0EB2h_: argument 0"}
!161 = distinct !{!161, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!162 = distinct !{!162, !161, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!163 = distinct !{!163, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!164 = distinct !{!164, !163, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!165 = distinct !{!165, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!166 = distinct !{!166, !165, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!167 = distinct !{!167, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E4pushCskC4O4hr3vz7_10libp2p_kad"}
!168 = distinct !{!168, !167, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E4pushCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!169 = distinct !{!169, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E10triple_mutCskC4O4hr3vz7_10libp2p_kad"}
!170 = distinct !{!170, !169, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E10triple_mutCskC4O4hr3vz7_10libp2p_kad: argument 1"}
!171 = distinct !{!171, !167, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E4pushCskC4O4hr3vz7_10libp2p_kad: argument 1"}
!172 = distinct !{!172, !169, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E10triple_mutCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!173 = distinct !{!173, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!174 = distinct !{!174, !173, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!175 = distinct !{!175, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!176 = distinct !{!176, !175, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!177 = distinct !{!177, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!178 = distinct !{!178, !177, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!179 = !{!158}
!180 = !{!160}
!181 = !{!162}
!182 = !{!164}
!183 = !{!166}
!184 = !{!166, !164, !162}
!185 = !{!170, !168}
!186 = !{!172, !171}
!187 = !{!168}
!188 = !{!171}
!189 = !{!178, !176, !174, !171}
!190 = distinct !{!190, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!191 = distinct !{!191, !190, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!192 = distinct !{!192, !"_RNvXsp_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexCskC4O4hr3vz7_10libp2p_kad"}
!193 = distinct !{!193, !192, !"_RNvXsp_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!194 = distinct !{!194, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!195 = distinct !{!195, !194, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!196 = distinct !{!196, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!197 = distinct !{!197, !196, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!198 = distinct !{!198, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMNtCskC4O4hr3vz7_10libp2p_kad9addressesNtB2k_9Addresses6remove0EB2m_"}
!199 = distinct !{!199, !198, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMNtCskC4O4hr3vz7_10libp2p_kad9addressesNtB2k_9Addresses6remove0EB2m_: argument 1"}
!200 = distinct !{!200, !198, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMNtCskC4O4hr3vz7_10libp2p_kad9addressesNtB2k_9Addresses6remove0EB2m_: argument 0"}
!201 = distinct !{!201, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6removeCskC4O4hr3vz7_10libp2p_kad"}
!202 = distinct !{!202, !201, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6removeCskC4O4hr3vz7_10libp2p_kad: argument 1"}
!203 = distinct !{!203, !201, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6removeCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!204 = distinct !{!204, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!205 = distinct !{!205, !204, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!206 = distinct !{!206, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!207 = distinct !{!207, !206, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!208 = distinct !{!208, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!209 = distinct !{!209, !208, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!210 = distinct !{!210, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!211 = distinct !{!211, !210, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!212 = distinct !{!212, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E13shrink_to_fitCskC4O4hr3vz7_10libp2p_kad"}
!213 = distinct !{!213, !212, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E13shrink_to_fitCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!214 = distinct !{!214, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCskC4O4hr3vz7_10libp2p_kad"}
!215 = distinct !{!215, !214, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!216 = !{!191}
!217 = !{!195, !193}
!218 = !{!197}
!219 = !{!200, !199}
!220 = !{!202}
!221 = !{!203, !202}
!222 = !{!203}
!223 = !{!209, !207, !205}
!224 = !{!211}
!225 = !{!213}
!226 = !{!215, !213}
!227 = distinct !{!227, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E10triple_mutCskC4O4hr3vz7_10libp2p_kad"}
!228 = distinct !{!228, !227, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E10triple_mutCskC4O4hr3vz7_10libp2p_kad: argument 1"}
!229 = distinct !{!229, !227, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E10triple_mutCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!230 = distinct !{!230, !"_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtCskC4O4hr3vz7_10libp2p_kad9addressesNtB2j_9Addresses7replace0EB2l_"}
!231 = distinct !{!231, !230, !"_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtCskC4O4hr3vz7_10libp2p_kad9addressesNtB2j_9Addresses7replace0EB2l_: argument 1"}
!232 = distinct !{!232, !230, !"_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtCskC4O4hr3vz7_10libp2p_kad9addressesNtB2j_9Addresses7replace0EB2l_: argument 0"}
!233 = distinct !{!233, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!234 = distinct !{!234, !233, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!235 = distinct !{!235, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!236 = distinct !{!236, !235, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!237 = distinct !{!237, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!238 = distinct !{!238, !237, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!239 = !{!228}
!240 = !{!229}
!241 = !{!232, !231}
!242 = !{!234}
!243 = !{!236}
!244 = !{!238}
!245 = !{!238, !236, !234}
!246 = distinct !{!246, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E8into_vecCskC4O4hr3vz7_10libp2p_kad"}
!247 = distinct !{!247, !246, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E8into_vecCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!248 = distinct !{!248, !246, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E8into_vecCskC4O4hr3vz7_10libp2p_kad: argument 1"}
!249 = distinct !{!249, !"_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCskC4O4hr3vz7_10libp2p_kad"}
!250 = distinct !{!250, !249, !"_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCskC4O4hr3vz7_10libp2p_kad: argument 1"}
!251 = distinct !{!251, !249, !"_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!252 = !{!247}
!253 = !{!248}
!254 = !{!247, !248}
!255 = !{!250}
!256 = !{!251, !250}
!257 = !{!251}
!258 = !{!250, !247, !248}
!259 = distinct !{!259, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskC4O4hr3vz7_10libp2p_kad"}
!260 = distinct !{!260, !259, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskC4O4hr3vz7_10libp2p_kad: argument 1:pre.rot"}
!261 = distinct !{!261, !259, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!262 = distinct !{!262, !259, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskC4O4hr3vz7_10libp2p_kad: argument 1"}
!263 = distinct !{!263, !259, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskC4O4hr3vz7_10libp2p_kad: argument 1:h.rot"}
!264 = !{i64 1, i64 0}
!265 = !{!260}
!266 = !{!261}
!267 = !{!262}
!268 = !{!263}
!269 = distinct !{!269, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_"}
!270 = distinct !{!270, !269, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_: argument 0"}
!271 = distinct !{!271, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!272 = distinct !{!272, !271, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!273 = distinct !{!273, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!274 = distinct !{!274, !273, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!275 = distinct !{null, null, null}
!276 = !{!274, !272, !270}
!277 = distinct !{!277, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!278 = distinct !{!278, !277, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!279 = !{!278}
!280 = distinct !{!280, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCskC4O4hr3vz7_10libp2p_kad"}
!281 = distinct !{!281, !280, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!282 = !{!281}
!283 = distinct !{!283, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_"}
!284 = distinct !{!284, !283, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_: argument 0"}
!285 = !{!284}
!286 = distinct !{!286, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_"}
!287 = distinct !{!287, !286, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_: argument 1"}
!288 = distinct !{!288, !286, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E10triple_mutBM_: argument 0"}
!289 = !{!287}
!290 = !{!288}
!291 = distinct !{!291, !"_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBM_"}
!292 = distinct !{!292, !291, !"_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBM_: argument 1"}
!293 = distinct !{!293, !291, !"_RNvXsM_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBM_: argument 0"}
!294 = !{!292}
!295 = !{!293, !292}
!296 = !{!293}
!297 = distinct !{!297, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCskC4O4hr3vz7_10libp2p_kad"}
!298 = distinct !{!298, !297, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!299 = !{!298}
!300 = distinct !{!300, !"_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb6RecordENtNtB7_3fmt5Debug3fmtBQ_"}
!301 = distinct !{!301, !300, !"_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb6RecordENtNtB7_3fmt5Debug3fmtBQ_: argument 0"}
!302 = distinct !{!302, !300, !"_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCskC4O4hr3vz7_10libp2p_kad5proto6dht_pb6RecordENtNtB7_3fmt5Debug3fmtBQ_: argument 1"}
!303 = !{!301}
!304 = !{!302}
!305 = !{!301, !302}
!306 = distinct !{!306, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskC4O4hr3vz7_10libp2p_kad"}
!307 = distinct !{!307, !306, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!308 = distinct !{!308, !306, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskC4O4hr3vz7_10libp2p_kad: argument 1"}
!309 = distinct !{!309, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le"}
!310 = distinct !{!310, !309, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le: argument 0"}
!311 = distinct !{!311, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!312 = distinct !{!312, !311, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!313 = distinct !{!313, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!314 = distinct !{!314, !313, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!315 = distinct !{!315, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le"}
!316 = distinct !{!316, !315, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le: argument 0"}
!317 = !{!307}
!318 = !{!308}
!319 = !{!310, !308}
!320 = !{!312, !307}
!321 = !{!314, !307}
!322 = !{!316, !308}
!323 = distinct !{!323, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!324 = distinct !{!324, !323, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!325 = distinct !{!325, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad"}
!326 = distinct !{!326, !325, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!327 = distinct !{!327, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!328 = distinct !{!328, !327, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!329 = distinct !{!329, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!330 = distinct !{!330, !329, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!331 = distinct !{!331, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!332 = distinct !{!332, !331, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!333 = distinct !{null, null, null, null}
!334 = !{!324}
!335 = !{!332, !330, !328, !326}
!336 = distinct !{!336, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_"}
!337 = distinct !{!337, !336, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordj14_E6tripleBM_: argument 0"}
!338 = !{!337}
!339 = distinct !{!339, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad"}
!340 = distinct !{!340, !339, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCskC4O4hr3vz7_10libp2p_kad: argument 0"}
!341 = !{!340}
!342 = distinct !{!342, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!343 = distinct !{!343, !342, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!344 = distinct !{!344, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!345 = distinct !{!345, !344, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!346 = distinct !{!346, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!347 = distinct !{!347, !346, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!348 = distinct !{!348, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!349 = distinct !{!349, !348, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!350 = distinct !{!350, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!351 = distinct !{!351, !350, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!352 = distinct !{!352, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!353 = distinct !{!353, !352, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!354 = distinct !{!354, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!355 = distinct !{!355, !354, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!356 = !{!343}
!357 = !{!345}
!358 = !{!347}
!359 = !{!349}
!360 = !{!349, !347, !345, !343}
!361 = !{!351}
!362 = !{!353}
!363 = !{!355}
!364 = !{!355, !353, !351, !343}
!365 = distinct !{!365, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!366 = distinct !{!366, !365, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!367 = distinct !{!367, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!368 = distinct !{!368, !367, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!369 = distinct !{!369, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!370 = distinct !{!370, !369, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!371 = distinct !{!371, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!372 = distinct !{!372, !371, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!373 = distinct !{!373, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad"}
!374 = distinct !{!374, !373, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!375 = distinct !{!375, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!376 = distinct !{!376, !375, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!377 = distinct !{!377, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!378 = distinct !{!378, !377, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!379 = !{!366}
!380 = !{!368}
!381 = !{!370}
!382 = !{!372}
!383 = !{!372, !370, !368, !366}
!384 = !{!374}
!385 = !{!376}
!386 = !{!378}
!387 = !{!378, !376, !374, !366}
!388 = distinct !{!388, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_"}
!389 = distinct !{!389, !388, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBF_: argument 0"}
!390 = distinct !{!390, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_"}
!391 = distinct !{!391, !390, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyEBF_: argument 0"}
!392 = distinct !{!392, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!393 = distinct !{!393, !392, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!394 = distinct !{!394, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!395 = distinct !{!395, !394, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!396 = distinct !{!396, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBG_"}
!397 = distinct !{!397, !396, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordEBG_: argument 0"}
!398 = !{!389}
!399 = !{!391}
!400 = !{!393}
!401 = !{!395}
!402 = !{!395, !393, !391, !389, !397}
!403 = !{!395, !393, !391, !389}
!404 = distinct !{!404, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!405 = distinct !{!405, !404, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!406 = distinct !{!406, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec"}
!407 = distinct !{!407, !406, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec: argument 0"}
!408 = distinct !{!408, !406, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec: argument 1"}
!409 = distinct !{!409, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!410 = distinct !{!410, !409, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!411 = distinct !{!411, !409, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!412 = distinct !{!412, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!413 = distinct !{!413, !412, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!414 = distinct !{!414, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad"}
!415 = distinct !{!415, !414, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskC4O4hr3vz7_10libp2p_kad: argument 0"}
!416 = distinct !{!416, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!417 = distinct !{!417, !416, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!418 = distinct !{null}
!419 = !{!405}
!420 = !{!407, !405}
!421 = !{!408}
!422 = !{!410}
!423 = !{!410, !411}
!424 = !{!413}
!425 = !{!413, !410, !411}
!426 = !{!411}
!427 = !{!415}
!428 = !{!417}
!429 = !{!417, !415}
!430 = !{!417, !415, !410, !411}
end_hunk_1
