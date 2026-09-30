Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.00?download=true
inline.NumInlined: 366
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMs_NtCs4tP8yUXWbFU_18libsignal_protocol11fingerprintNtB4_22DisplayableFingerprint3new:bb.a
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.52 = alloca [24 x i8], align 8           ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint18get_encoded_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load i64, ptr %i.b, align 8, !range !14, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint18get_encoded_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %common.resume unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !range !14, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.k:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint18get_encoded_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = icmp samesign ult i64 %2, 30
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = urem i64 %2, 5                           ; 2 uses
  %i.l = sub nuw nsw i64 %2, %i.k                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  store ptr %1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 5, ptr %.sroa.7.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 6, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 30, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.o = load i64, ptr %i.h, align 8, !range !14, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !15, !noundef !6 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e, !prof !4

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.t, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @28, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 50, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.u) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6
  %i.w = icmp samesign ugt i64 %i.r, 29
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1120
  store i64 %i.r, ptr %i.g, align 8, !noalias !1121
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.v, ptr %.sroa.47.0..sroa_idx, align 8, !noalias !1121
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8, !noalias !1121
  %i.x = invoke noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %bb.f unwind label %.loopexit.split-lp.i, !noalias !1122 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 6)
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %_RINvXs8_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter11ChunksExacthEENtB6_8SpecTake9spec_foldNtNtCs6i54tJFfzR_5alloc6string6StringNCINvNtB8_3map8map_foldRShyB1Y_NvNvNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint18get_encoded_string14read5_mod_100kNCB36_0E0EB3a_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.q, %.lr.ph.i
  %.sroa.0.016.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.q ] ; 2 uses
  %i.z = add nuw i64 %.sroa.0.016.i, 1            ; 2 uses
  %i.aa = invoke { ptr, i64 } @_RNvXs1q_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %.sroa.0.016.i)
          to label %bb.h unwind label %.loopexit.i, !noalias !1122 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1120
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1127
  store i64 %i.ab, ptr %i.d, align 8, !noalias !1128
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @34, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #25
          to label %.noexc.i.i unwind label %bb.o, !noalias !1129

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0      ; 5 uses
  %.val.i.i.i.i.i = load i8, ptr %i.ad, align 1, !alias.scope !1130, !noalias !1131, !noundef !6
  %i.ae = zext i8 %.val.i.i.i.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.val.i.1.i.i.i.i = load i8, ptr %i.af, align 1, !alias.scope !1130, !noalias !1131, !noundef !6
  %i.ag = zext i8 %.val.i.1.i.i.i.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %.val.i.2.i.i.i.i = load i8, ptr %i.ah, align 1, !alias.scope !1130, !noalias !1131, !noundef !6
  %3 = shl nuw nsw i64 %i.ae, 16
  %4 = shl nuw nsw i64 %i.ag, 8
  %5 = or disjoint i64 %4, %3
  %i.ai = zext i8 %.val.i.2.i.i.i.i to i64
  %6 = or disjoint i64 %5, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %.val.i.3.i.i.i.i = load i8, ptr %i.aj, align 1, !alias.scope !1130, !noalias !1131, !noundef !6
  %7 = zext i8 %.val.i.3.i.i.i.i to i64
  %8 = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.val.i.4.i.i.i.i = load i8, ptr %8, align 1, !alias.scope !1130, !noalias !1131, !noundef !6
  %i.ak = shl nuw nsw i64 %6, 16
  %9 = shl nuw nsw i64 %7, 8
  %i.al = zext i8 %.val.i.4.i.i.i.i to i64
  %10 = or disjoint i64 %9, %i.al
  %i.am = or disjoint i64 %10, %i.ak
  %i.an = urem i64 %i.am, 100000                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1120
  store i64 %i.an, ptr %i.y, align 8, !noalias !1124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1124
  store i64 %i.an, ptr %i.c, align 8, !noalias !1132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1132
  store ptr %i.c, ptr %i.b, align 8, !noalias !1132
  store ptr @_RNvXsd_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !1132
  %i.ao = invoke noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @7, ptr noundef nonnull %i.b)
          to label %bb.l unwind label %.loopexit11.i, !noalias !1133

.loopexit11.i:                                    ; preds = %bb.j
  %lpad.loopexit13.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp12.i:                           ; preds = %bb.m
  %lpad.loopexit.split-lp14.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp12.i, %.loopexit11.i
  %lpad.phi15.i = phi { ptr, i32 } [ %lpad.loopexit13.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp14.i, %.loopexit.split-lp12.i ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #23
          to label %.body.i unwind label %bb.n, !noalias !1133

bb.l:                                             ; preds = %bb.j
  br i1 %i.ao, label %bb.m, label %bb.q, !prof !4

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp12.i, !noalias !1133

.noexc.i.i.i:                                     ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !1133
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #23
          to label %.body.i unwind label %bb.p, !noalias !1129

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !1129
  unreachable

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1124
  %exitcond.not.i = icmp eq i64 %i.z, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %_RINvXs8_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter11ChunksExacthEENtB6_8SpecTake9spec_foldNtNtCs6i54tJFfzR_5alloc6string6StringNCINvNtB8_3map8map_foldRShyB1Y_NvNvNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint18get_encoded_string14read5_mod_100kNCB36_0E0EB3a_.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #23
          to label %.body.i unwind label %bb.s, !noalias !1122

bb.s:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !1122
  unreachable

.body.i:                                          ; preds = %bb.r, %bb.o, %bb.k
  %eh.lpad-body9.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.r ], [ %i.aq, %bb.o ], [ %lpad.phi15.i, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body9.i

_RINvXs8_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter11ChunksExacthEENtB6_8SpecTake9spec_foldNtNtCs6i54tJFfzR_5alloc6string6StringNCINvNtB8_3map8map_foldRShyB1Y_NvNvNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint18get_encoded_string14read5_mod_100kNCB36_0E0EB3a_.exit: ; preds = %bb.q, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1120
  br label %bb.t

bb.t:                                             ; preds = %_RINvXs8_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter11ChunksExacthEENtB6_8SpecTake9spec_foldNtNtCs6i54tJFfzR_5alloc6string6StringNCINvNtB8_3map8map_foldRShyB1Y_NvNvNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint18get_encoded_string14read5_mod_100kNCB36_0E0EB3a_.exit, %bb.c
  %storemerge = phi i64 [ 0, %_RINvXs8_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter11ChunksExacthEENtB6_8SpecTake9spec_foldNtNtCs6i54tJFfzR_5alloc6string6StringNCINvNtB8_3map8map_foldRShyB1Y_NvNvNtCs4tP8yUXWbFU_18libsignal_protocol11fingerprint18get_encoded_string14read5_mod_100kNCB36_0E0EB3a_.exit ], [ 1, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs4tP8yUXWbFU_18libsignal_protocol6crypto11hmac_sha256(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 16               ; 15 uses
  %i.g = alloca [144 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 1                ; 4 uses
  %i.i = alloca [144 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1185
  call void @_RINvNtCsfkg6qDyjgHi_4hmac5utils11get_der_keyNtCsj2Wav7G13rI_4sha26Sha256ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([64 x i8]) align 1 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !1186
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.f, align 16, !alias.scope !1187, !noalias !1186
  %wide.load19 = load <16 x i8>, ptr %i.j, align 16, !alias.scope !1187, !noalias !1186
  %i.k = xor <16 x i8> %wide.load, splat (i8 54)
  %i.l = xor <16 x i8> %wide.load19, splat (i8 54)
  store <16 x i8> %i.k, ptr %i.f, align 16, !alias.scope !1187, !noalias !1186
  store <16 x i8> %i.l, ptr %i.j, align 16, !alias.scope !1187, !noalias !1186
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.m, align 16, !alias.scope !1187, !noalias !1186
  %wide.load19.1 = load <16 x i8>, ptr %i.n, align 16, !alias.scope !1187, !noalias !1186
  %i.o = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.p = xor <16 x i8> %wide.load19.1, splat (i8 54)
  store <16 x i8> %i.o, ptr %i.m, align 16, !alias.scope !1187, !noalias !1186
  store <16 x i8> %i.p, ptr %i.n, align 16, !alias.scope !1187, !noalias !1186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @47, i64 32, i1 false), !noalias !1186
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1188, !noalias !1189
  call void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 1, 144115188075855872) 1)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load23 = load <16 x i8>, ptr %i.f, align 16, !alias.scope !1190, !noalias !1186
  %wide.load24 = load <16 x i8>, ptr %i.q, align 16, !alias.scope !1190, !noalias !1186
  %i.r = xor <16 x i8> %wide.load23, splat (i8 106)
  %i.s = xor <16 x i8> %wide.load24, splat (i8 106)
  store <16 x i8> %i.r, ptr %i.f, align 16, !alias.scope !1190, !noalias !1186
  store <16 x i8> %i.s, ptr %i.q, align 16, !alias.scope !1190, !noalias !1186
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %wide.load23.1 = load <16 x i8>, ptr %i.t, align 16, !alias.scope !1190, !noalias !1186
  %wide.load24.1 = load <16 x i8>, ptr %i.u, align 16, !alias.scope !1190, !noalias !1186
  %i.v = xor <16 x i8> %wide.load23.1, splat (i8 106)
  %i.w = xor <16 x i8> %wide.load24.1, splat (i8 106)
  store <16 x i8> %i.v, ptr %i.t, align 16, !alias.scope !1190, !noalias !1186
  store <16 x i8> %i.w, ptr %i.u, align 16, !alias.scope !1190, !noalias !1186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @47, i64 32, i1 false), !noalias !1186
  %.sroa.42.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i5, align 8, !alias.scope !1191, !noalias !1192
  call void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 1, 144115188075855872) 1)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1185
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 63 ; 3 uses
  store i8 0, ptr %.sroa.5.sroa.4.0..sroa_idx, align 1, !alias.scope !1193, !noalias !1194
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.y = icmp samesign ult i64 %4, 64
  br i1 %i.y, label %bb.a, label %bb.b

common.resume:                                    ; preds = %bb.d
  resume { ptr, i32 } %i.aj

bb.a:                                             ; preds = %vector.ph
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !alias.scope !1198, !noalias !1197
  %i.z = trunc nuw nsw i64 %4 to i8
  store i8 %i.z, ptr %.sroa.5.sroa.4.0..sroa_idx, align 1, !alias.scope !1199, !noalias !1200
  br label %_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE13digest_blocksNCNvXs5_Csfkg6qDyjgHi_4hmacINtB3o_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.b:                                             ; preds = %vector.ph
  %i.aa = lshr i64 %4, 6                          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1201, !noalias !1202, !noundef !6
  %i.ad = add i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !1201, !noalias !1202
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.5.sroa.5.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 1, 144115188075855872) %i.aa)
          to label %.noexc7 unwind label %bb.d

.noexc7:                                          ; preds = %bb.b
  %i.ae = and i64 %4, 9223372036854775744
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.ag = and i64 %4, 63                          ; 2 uses
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  store i8 %i.ah, ptr %.sroa.5.sroa.4.0..sroa_idx, align 1, !alias.scope !1203, !noalias !1200
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(64) %i.i, ptr nonnull align 1 %i.af, i64 %i.ag, i1 false), !alias.scope !1198, !noalias !1197
  br label %_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE13digest_blocksNCNvXs5_Csfkg6qDyjgHi_4hmacINtB3o_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE13digest_blocksNCNvXs5_Csfkg6qDyjgHi_4hmacINtB3o_4HmacNtCsj2Wav7G13rI_4sha26Sha256ENtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %.noexc7, %bb.a
end_hunk_0
begin_hunk_1_@_RNvMNtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB2_6Scalar20from_bytes_mod_order
declare void @_RNvMNtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB2_6Scalar20from_bytes_mod_order(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs11_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsRNtNtB8_6scalar6ScalarINtNtNtCsgxBkk5gSRhY_4core3ops5arith3MulRNtB6_21EdwardsBasepointTableE3mul(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(30720)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsk_NtCsdRrpXuHtjOb_16curve25519_dalek7edwardsNtB5_12EdwardsPoint8compress(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsx_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB5_6ScalarNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Mul3mul(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsB_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB5_6ScalarNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Add3add(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB2_6Scalar25from_bytes_mod_order_wide(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB25_2B0EB2i_EB2i_EB2i_EB2i_EB2i_EB2i_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReBF_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsjsLMAtnDKjw_12block_buffer4readINtB5_10ReadBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBX_IBX_IBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB20_2B0EB2e_EB2e_EB2e_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgYPJLHuTqb7_3ctr7flavors5ctr32INtB4_10CtrNonce32INtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB1S_2B0EB26_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 4 dereferenceable(20)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1q_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4IteryEEINtB5_7ZipImplBW_B1z_E3newCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs6i54tJFfzR_5alloc6string6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef align 4 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 144115188075855872)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsj2Wav7G13rI_4sha26sha51211compress512(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 72057594037927936)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto11fingerprint20CombinedFingerprintsNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtNtCshARBVLlQvfp_6cipher6stream7wrapper23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB1d_7flavors5ctr327Ctr32BEEENtB7_12StreamCipher25try_apply_keystream_inoutCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 16 dereferenceable(1008), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsjmpXLDdCZMl_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvNtNtNtCsjmpXLDdCZMl_9getrandom8backends8use_file9util_libc14sys_fill_exactNCNvNtB6_27linux_android_with_fallback10fill_inner0ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsjmpXLDdCZMl_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsfkg6qDyjgHi_4hmac9block_apiINtB2_8HmacCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvNvNtNtNtCs8pp35hPiiF8_3aes3x868features12features_aes8init_get10init_inner() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8pp35hPiiF8_3aes4soft8fixslice19aes256_key_schedule(ptr dead_on_unwind noalias nofree noundef writable sret([960 x i8]) align 8 captures(none) dereferenceable(960), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8pp35hPiiF8_3aes4soft8fixslice14aes256_encrypt(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 1 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(960), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs8pp35hPiiF8_3aes3x862ni6encdec7encryptKjf_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(240), ptr noundef, ptr noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs8pp35hPiiF8_3aes3x862ni6encdec11encrypt_parKjf_INtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBW_IBW_IBW_NtBY_5UTermNtNtB10_3bit2B1ENtB1V_2B0EB29_EB29_EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(240), ptr noundef, ptr noundef) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRmNtB6_7Display3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_7Display3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutyENtB5_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCs8pp35hPiiF8_3aes3x862ni6expand6aes25610expand_key(ptr dead_on_unwind noalias nofree noundef writable sret([240 x i8]) align 16 captures(none) dereferenceable(240), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs8pp35hPiiF8_3aes3x862ni6expand8inv_keysKjf_ECs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([240 x i8]) align 16 captures(address) dereferenceable(240), ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(240)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfkg6qDyjgHi_4hmac5utils11get_der_keyNtCsj2Wav7G13rI_4sha26Sha256ECs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 1 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCsjmpXLDdCZMl_9getrandom5error5ErrorNtB6_5Debug3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsgxBkk5gSRhY_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+aes,+sse,+sse2" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noinline }
attributes #19 = { noreturn }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { inlinehint }
attributes #22 = { nounwind memory(read, inaccessiblemem: readwrite) }
attributes #23 = { cold }
attributes #24 = { nounwind }
attributes #25 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{}
!7 = !{i64 8}
!8 = !{i64 53625802029171806}
!9 = !{i64 -2, i64 -9223372036854775808}
!10 = !{i64 -1, i64 -9223372036854775808}
!11 = !{i64 4}
!12 = !{i64 -3, i64 -9223372036854775808}
!13 = !{i32 0, i32 2}
!14 = !{i64 0, i64 2}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = distinct !{!16, !"_RNvXs2_CsfNFcxEHTA3o_9rand_coreINtB5_9UnwrapErrNtNtB5_2os5OsRngENtB5_7RngCore10fill_bytesCs4tP8yUXWbFU_18libsignal_protocol"}
!17 = distinct !{!17, !16, !"_RNvXs2_CsfNFcxEHTA3o_9rand_coreINtB5_9UnwrapErrNtNtB5_2os5OsRngENtB5_7RngCore10fill_bytesCs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!18 = distinct !{!18, !"_RNvXs1_NtCsfNFcxEHTA3o_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes"}
!19 = distinct !{!19, !18, !"_RNvXs1_NtCsfNFcxEHTA3o_9rand_core2osNtB5_5OsRngNtB7_10TryRngCore14try_fill_bytes: argument 0"}
!20 = distinct !{!20, !"_RNvCsjmpXLDdCZMl_9getrandom4fill"}
!21 = distinct !{!21, !20, !"_RNvCsjmpXLDdCZMl_9getrandom4fill: argument 0"}
!22 = distinct !{!22, !"_RNvNtNtCsjmpXLDdCZMl_9getrandom8backends27linux_android_with_fallback10fill_inner"}
!23 = distinct !{!23, !22, !"_RNvNtNtCsjmpXLDdCZMl_9getrandom8backends27linux_android_with_fallback10fill_inner: argument 0"}
!24 = distinct !{!24, !"_RNvXsy_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtNtCsgxBkk5gSRhY_4core7default7Default7default"}
!25 = distinct !{!25, !24, !"_RNvXsy_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtNtCsgxBkk5gSRhY_4core7default7Default7default: argument 0"}
!26 = distinct !{!26, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol"}
!27 = distinct !{!27, !26, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!28 = distinct !{!28, !26, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!29 = distinct !{!29, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update"}
!30 = distinct !{!30, !29, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 1"}
!31 = distinct !{!31, !29, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 0"}
!32 = distinct !{!32, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol"}
!33 = distinct !{!33, !32, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!34 = distinct !{!34, !32, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!35 = distinct !{!35, !32, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 2"}
!36 = distinct !{!36, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol"}
!37 = distinct !{!37, !36, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!38 = distinct !{!38, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update"}
!39 = distinct !{!39, !38, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 1"}
!40 = distinct !{!40, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol"}
!41 = distinct !{!41, !40, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!42 = distinct !{!42, !36, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!43 = distinct !{!43, !38, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 0"}
!44 = distinct !{!44, !40, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!45 = distinct !{!45, !40, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 2"}
!46 = distinct !{!46, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol"}
!47 = distinct !{!47, !46, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!48 = distinct !{!48, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRRShECs4tP8yUXWbFU_18libsignal_protocol"}
!49 = distinct !{!49, !48, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRRShECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!50 = distinct !{!50, !48, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRRShECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!51 = distinct !{!51, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update"}
!52 = distinct !{!52, !51, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 0"}
!53 = distinct !{!53, !51, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 1"}
!54 = distinct !{!54, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol"}
!55 = distinct !{!55, !54, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!56 = distinct !{!56, !54, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!57 = distinct !{!57, !54, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 2"}
!58 = distinct !{!58, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol"}
!59 = distinct !{!59, !58, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!60 = distinct !{!60, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol"}
!61 = distinct !{!61, !60, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!62 = distinct !{!62, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol"}
!63 = distinct !{!63, !62, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!64 = distinct !{!64, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol"}
!65 = distinct !{!65, !64, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!66 = distinct !{!66, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol"}
!67 = distinct !{!67, !66, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!68 = distinct !{!68, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update"}
!69 = distinct !{!69, !68, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 0"}
!70 = distinct !{!70, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol"}
!71 = distinct !{!71, !70, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!72 = distinct !{!72, !66, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRShECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!73 = distinct !{!73, !68, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 1"}
!74 = distinct !{!74, !70, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 2"}
!75 = distinct !{!75, !70, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!76 = distinct !{!76, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol"}
!77 = distinct !{!77, !76, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!78 = distinct !{!78, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol"}
!79 = distinct !{!79, !78, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!80 = distinct !{!80, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol"}
!81 = distinct !{!81, !80, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!82 = distinct !{!82, !"_RINvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB6_6Scalar9from_hashNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol"}
!83 = distinct !{!83, !82, !"_RINvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB6_6Scalar9from_hashNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!84 = distinct !{!84, !82, !"_RINvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB6_6Scalar9from_hashNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!85 = distinct !{!85, !"_RNvXsy_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtNtCsgxBkk5gSRhY_4core7default7Default7default"}
!86 = distinct !{!86, !85, !"_RNvXsy_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtNtCsgxBkk5gSRhY_4core7default7Default7default: argument 0"}
!87 = distinct !{!87, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol"}
!88 = distinct !{!88, !87, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!89 = distinct !{!89, !87, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!90 = distinct !{!90, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update"}
!91 = distinct !{!91, !90, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 1"}
!92 = distinct !{!92, !90, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 0"}
!93 = distinct !{!93, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol"}
!94 = distinct !{!94, !93, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!95 = distinct !{!95, !93, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!96 = distinct !{!96, !93, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 2"}
!97 = distinct !{!97, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol"}
!98 = distinct !{!98, !97, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!99 = distinct !{!99, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update"}
!100 = distinct !{!100, !99, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 1"}
!101 = distinct !{!101, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol"}
!102 = distinct !{!102, !101, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!103 = distinct !{!103, !97, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRAhj20_ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!104 = distinct !{!104, !99, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 0"}
!105 = distinct !{!105, !101, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!106 = distinct !{!106, !101, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 2"}
!107 = distinct !{!107, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol"}
!108 = distinct !{!108, !107, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!109 = distinct !{!109, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRRShECs4tP8yUXWbFU_18libsignal_protocol"}
!110 = distinct !{!110, !109, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRRShECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!111 = distinct !{!111, !109, !"_RINvXNtCs2KKWnYNkHVH_6digest6digestNtCsj2Wav7G13rI_4sha26Sha512NtB3_6Digest6updateRRShECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!112 = distinct !{!112, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update"}
!113 = distinct !{!113, !112, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 0"}
!114 = distinct !{!114, !112, !"_RNvXsv_Csj2Wav7G13rI_4sha2NtB5_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update: argument 1"}
!115 = distinct !{!115, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol"}
!116 = distinct !{!116, !115, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!117 = distinct !{!117, !115, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!118 = distinct !{!118, !115, !"_RINvMs5_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB27_2B0EB2k_EB2k_EB2k_EB2k_EB2k_EB2k_ENtB6_5EagerE13digest_blocksNCNvXsv_Csj2Wav7G13rI_4sha2NtB3x_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0ECs4tP8yUXWbFU_18libsignal_protocol: argument 2"}
!119 = distinct !{!119, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol"}
!120 = distinct !{!120, !119, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!121 = distinct !{!121, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol"}
!122 = distinct !{!122, !121, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!123 = distinct !{!123, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol"}
!124 = distinct !{!124, !123, !"_RNCNvXsv_Csj2Wav7G13rI_4sha2NtB7_6Sha512NtCs2KKWnYNkHVH_6digest6Update6update0Cs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!125 = distinct !{!125, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol"}
!126 = distinct !{!126, !125, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2x_2B0EB2L_EB2L_EB2L_EB2L_EB2L_EB2L_EECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!127 = distinct !{!127, !"_RINvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB6_6Scalar9from_hashNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol"}
!128 = distinct !{!128, !127, !"_RINvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB6_6Scalar9from_hashNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol: argument 1"}
!129 = distinct !{!129, !127, !"_RINvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB6_6Scalar9from_hashNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!130 = distinct !{!130, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol"}
!131 = distinct !{!131, !130, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!132 = distinct !{!132, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2H_2B0EB2V_EB2V_EB2V_EB2V_EB2V_EB2V_ENtBE_5EagerEECs4tP8yUXWbFU_18libsignal_protocol"}
!133 = distinct !{!133, !132, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2H_2B0EB2V_EB2V_EB2V_EB2V_EB2V_EB2V_ENtBE_5EagerEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!134 = distinct !{!134, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EB2j_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol"}
!135 = distinct !{!135, !134, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EB2j_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!136 = distinct !{!136, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EB2j_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol"}
!137 = distinct !{!137, !136, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EB2j_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!138 = distinct !{!138, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol"}
!139 = distinct !{!139, !138, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha512ECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!140 = distinct !{!140, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2H_2B0EB2V_EB2V_EB2V_EB2V_EB2V_EB2V_ENtBE_5EagerEECs4tP8yUXWbFU_18libsignal_protocol"}
!141 = distinct !{!141, !140, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2H_2B0EB2V_EB2V_EB2V_EB2V_EB2V_EB2V_ENtBE_5EagerEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!142 = distinct !{!142, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EB2j_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol"}
!143 = distinct !{!143, !142, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EB2j_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!144 = distinct !{!144, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EB2j_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol"}
!145 = distinct !{!145, !144, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EB2j_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!146 = !{!23, !21, !19, !17}
!147 = !{!17}
!148 = !{!25}
!149 = !{!34, !33, !31, !30, !28, !27}
!150 = !{!35}
!151 = !{!37}
!152 = !{!39}
!153 = !{!41}
!154 = !{!44, !41, !43, !39, !42, !37}
!155 = !{!45}
!156 = !{!47, !44, !43, !42}
!157 = !{!41, !45, !39, !37}
!158 = !{!49}
!159 = !{!50}
!160 = !{!52}
!161 = !{!53}
!162 = !{!55}
!163 = !{!56}
!164 = !{!57}
!165 = !{!55, !52, !49}
!166 = !{!56, !57, !53, !50}
!167 = !{!55, !56, !52, !53}
!168 = !{!57, !50}
!169 = !{!59, !55, !52, !49}
end_hunk_1
