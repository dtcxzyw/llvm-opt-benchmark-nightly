Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/webpki-ce99a4d7babff5cd.webpki.d0e49e753f3852db-cgu.0?download=true
inline.NumInlined: 79
inline.NumDeleted: 48
begin_hunk_0_@_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNvXs0_NtCshVVPy9isBpn_6webpki4certNtB13_20CrlDistributionPointNtNtB15_3der7FromDer8from_der0B1v_NtNtB15_5error5ErrorEB15_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !169
  invoke void @_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputNCNCNvXs0_NtB4_4certNtB1C_20CrlDistributionPointNtNtB4_3der7FromDer8from_der00EB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.x
  %i.cu = load i64, ptr %i.c, align 8, !range !17, !noalias !169, !noundef !4 ; 2 uses
  %.not42.i = icmp eq i64 %i.cu, -1
  br i1 %.not42.i, label %bb.ab, label %bb.aa

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !169
  invoke void @_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtB4_3der14BitStringFlagsNCNCNvXs0_NtB4_4certNtB1p_20CrlDistributionPointNtBQ_7FromDer8from_der0s_0EB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %.noexc14 unwind label %bb.ah

.noexc14:                                         ; preds = %bb.y
  %i.cv = load i64, ptr %i.b, align 8, !range !17, !noalias !169, !noundef !4 ; 2 uses
  %.not41.i = icmp eq i64 %i.cv, -1
  br i1 %.not41.i, label %bb.ae, label %bb.ad

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  invoke void @_RINvNtCshVVPy9isBpn_6webpki4x50918set_extension_onceNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputNCNCNvXs0_NtB4_4certNtB1C_20CrlDistributionPointNtNtB4_3der7FromDer8from_der0s0_0EB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.z
  %i.cw = load i64, ptr %i.a, align 8, !range !17, !noalias !169, !noundef !4 ; 2 uses
  %.not40.i = icmp eq i64 %i.cw, -1
  br i1 %.not40.i, label %bb.ag, label %bb.af

bb.aa:                                            ; preds = %.noexc
  %.sroa.12.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx23, i64 48, i1 false), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !169
  br label %.loopexit28

bb.ab:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !169
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !169
  %i.cx = icmp eq i64 %i.co, %i.g
  br i1 %i.cx, label %._crit_edge.i, label %bb.b

.loopexit28:                                      ; preds = %bb.w, %bb.af, %bb.ad, %bb.aa
  %.sroa.019.0 = phi i64 [ %i.cw, %bb.af ], [ %i.cu, %bb.aa ], [ %i.cv, %bb.ad ], [ -9223372036854775808, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !169
  br label %.loopexit

bb.ad:                                            ; preds = %.noexc14
  %.sroa.12.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx22, i64 48, i1 false), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !169
  br label %.loopexit28

bb.ae:                                            ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !169
  br label %bb.ac

bb.af:                                            ; preds = %.noexc15
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx, i64 48, i1 false), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  br label %.loopexit28

bb.ag:                                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  br label %bb.ac

bb.ah:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #10
          to label %bb.ak unwind label %bb.al

.loopexit:                                        ; preds = %bb.b, %.thread.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c, %.loopexit28, %._crit_edge.i
  %.sroa.019.1.ph = phi i64 [ -9223372036854775789, %._crit_edge.i ], [ %.sroa.019.0, %.loopexit28 ], [ -9223372036854775808, %bb.c ], [ -9223372036854775808, %bb.f ], [ -9223372036854775808, %bb.g ], [ -9223372036854775808, %bb.h ], [ -9223372036854775808, %bb.i ], [ -9223372036854775808, %bb.j ], [ -9223372036854775808, %bb.k ], [ -9223372036854775808, %bb.l ], [ -9223372036854775808, %bb.n ], [ -9223372036854775808, %bb.o ], [ -9223372036854775808, %bb.p ], [ -9223372036854775808, %bb.q ], [ -9223372036854775808, %bb.r ], [ -9223372036854775808, %bb.s ], [ -9223372036854775808, %bb.t ], [ -9223372036854775808, %bb.u ], [ -9223372036854775808, %bb.v ], [ -9223372036854775808, %.thread.i ], [ -9223372036854775808, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 %.sroa.019.1.ph, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  ret void

bb.ak:                                            ; preds = %bb.ah
  resume { ptr, i32 } %i.cy

bb.al:                                            ; preds = %bb.ah
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB13_26BorrowedCertRevocationListNtNtB17_3der7FromDer8from_der0TBB_NtNtB17_11signed_data10SignedDataENtNtB17_5error5ErrorEB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %.sroa.65 = alloca [56 x i8], align 8           ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  store ptr %i.c, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCshVVPy9isBpn_6webpki11signed_dataNtB4_10SignedData8from_der(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 4294967295)
          to label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_der0Bb_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #10
          to label %bb.h unwind label %bb.i

_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_der0Bb_.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_der0Bb_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.g

bb.d:                                             ; preds = %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_der0Bb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.65, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.m = load i64, ptr %i.g, align 8, !noundef !4
  %i.n = load i64, ptr %i.f, align 8, !noundef !4
  %i.o = icmp eq i64 %i.m, %i.n
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.65, i64 56, i1 false)
  store ptr %i.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  ret void

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h

bb.i:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB13_26BorrowedCertRevocationListNtNtB17_3der7FromDer8from_ders_0B1C_NtNtB17_5error5ErrorEB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [104 x i8], align 8               ; 16 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [56 x i8], align 8                ; 8 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.37 = alloca [32 x i8], align 8           ; 12 uses
  %.sroa.39 = alloca [40 x i8], align 8           ; 5 uses
  %.sroa.6.sroa.9 = alloca [32 x i8], align 8     ; 7 uses
  %.sroa.66.sroa.8 = alloca [32 x i8], align 8    ; 6 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store ptr %i.j, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !176
  invoke void @_RNvXs3_NtCshVVPy9isBpn_6webpki3derhNtB5_7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.a
  %i.o = load i64, ptr %i.h, align 8, !range !17, !noalias !176, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %4 = load i8, ptr %i.p, align 8, !noalias !176  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.26.sroa.13.sroa.0.0.copyload = load i56, ptr %.sroa.575.0..sroa_idx.i, align 1, !noalias !178
  %.sroa.33.17..sroa.575.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.33.17.copyload = load i64, ptr %.sroa.33.17..sroa.575.0..sroa_idx.i.sroa_idx, align 8, !noalias !178
  %.sroa.37.17..sroa.575.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37.17..sroa.575.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !176
  %5 = zext i56 %.sroa.26.sroa.13.sroa.0.0.copyload to i64
  br label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !176
  %i.q = icmp eq i8 %4, 1
  br i1 %i.q, label %bb.d, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !176
  invoke void @_RNvNtCshVVPy9isBpn_6webpki3der10expect_tag(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i8 noundef 48)
          to label %.noexc17 unwind label %bb.al

.noexc17:                                         ; preds = %bb.d
  %i.r = load i64, ptr %i.g, align 8, !range !17, !noalias !176, !noundef !4 ; 2 uses
  %.not134.i = icmp eq i64 %i.r, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !176 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !176 ; 3 uses
  br i1 %.not134.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc17
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.686.0..sroa_idx.i, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !176
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %.sroa.26.sroa.0.0.extract.trunc36 = trunc i64 %i.w to i8
  %.sroa.26.sroa.13.0.extract.shift46 = lshr i64 %i.w, 8
  br label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.f:                                             ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !176
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !171, !noalias !179, !noundef !4
  %i.z = icmp eq i64 %i.v, %i.y
  br i1 %i.z, label %bb.g, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !171, !noalias !179, !nonnull !4, !noundef !4
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.t, ptr nonnull %i.ab, i64 %i.v), !noalias !180
  %i.ac = icmp eq i32 %bcmp.i, 0
  br i1 %i.ac, label %bb.h, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !176
  invoke void @_RNvNtCshVVPy9isBpn_6webpki3der10expect_tag(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i8 noundef 48)
          to label %.noexc18 unwind label %bb.al

.noexc18:                                         ; preds = %bb.h
  %i.ad = load i64, ptr %i.f, align 8, !range !17, !noalias !176, !noundef !4 ; 2 uses
  %.not135.i = icmp eq i64 %i.ad, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !176 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !176 ; 2 uses
  br i1 %.not135.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc18
  %.sroa.698.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.698.0..sroa_idx.i, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !176
  %i.ai = ptrtoint ptr %i.af to i64               ; 2 uses
  %.sroa.26.sroa.0.0.extract.trunc37 = trunc i64 %i.ai to i8
  %.sroa.26.sroa.13.0.extract.shift48 = lshr i64 %i.ai, 8
  br label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.j:                                             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !176
  invoke void @_RNvXNtCshVVPy9isBpn_6webpki4timeNtCseO5Jl7W60Eg_16rustls_pki_types8UnixTimeNtNtB4_3der7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc19 unwind label %bb.al

.noexc19:                                         ; preds = %bb.j
  %i.aj = load i64, ptr %i.e, align 8, !range !17, !noalias !176, !noundef !4 ; 2 uses
  %.not136.i = icmp eq i64 %i.aj, -1
  br i1 %.not136.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc19
  %.sroa.4107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4107.0.copyload.i = load i64, ptr %.sroa.4107.0..sroa_idx.i, align 8, !noalias !176 ; 2 uses
  %.sroa.5108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.33.24.copyload = load i64, ptr %.sroa.5108.0..sroa_idx.i, align 8, !noalias !178
  %.sroa.37.24..sroa.5108.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37.24..sroa.5108.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !176
  %.sroa.26.sroa.0.0.extract.trunc38 = trunc i64 %.sroa.4107.0.copyload.i to i8
  %.sroa.26.sroa.13.0.extract.shift52 = lshr i64 %.sroa.4107.0.copyload.i, 8
  br label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.l:                                             ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !176
  invoke void @_RNvXNtCshVVPy9isBpn_6webpki4timeNtCseO5Jl7W60Eg_16rustls_pki_types8UnixTimeNtNtB4_3der7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc20 unwind label %bb.al

.noexc20:                                         ; preds = %bb.l
  %i.ak = load i64, ptr %i.d, align 8, !range !17, !noalias !176, !noundef !4 ; 2 uses
  %.not137.i = icmp eq i64 %i.ak, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !176 ; 3 uses
  br i1 %.not137.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc20
  %.sroa.5117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.33.24.copyload30 = load i64, ptr %.sroa.5117.0..sroa_idx.i, align 8, !noalias !178
  %.sroa.37.24..sroa.5117.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37.24..sroa.5117.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !176
  %.sroa.26.sroa.0.0.extract.trunc39 = trunc i64 %i.am to i8
  %.sroa.26.sroa.13.0.extract.shift54 = lshr i64 %i.am, 8
  br label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.n:                                             ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !176
  %i.an = load i64, ptr %i.n, align 8, !alias.scope !174, !noalias !180, !noundef !4 ; 14 uses
  %i.ao = load i64, ptr %i.m, align 8, !alias.scope !174, !noalias !180, !noundef !4 ; 13 uses
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.i, align 8, !alias.scope !174, !noalias !180, !nonnull !4, !noundef !4 ; 13 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  %i.as = load i8, ptr %i.ar, align 1, !noalias !180, !noundef !4
  %i.at = icmp eq i8 %i.as, 48
  br i1 %i.at, label %bb.p, label %bb.ai

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.au = add nuw i64 %i.an, 1                    ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.ao
  br i1 %i.av, label %bb.q, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au
  %i.ax = add nuw i64 %i.an, 2                    ; 9 uses
  %i.ay = load i8, ptr %i.aw, align 1, !noalias !187, !noundef !4 ; 3 uses
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = zext nneg i8 %i.ay to i64
  br label %.thread.i

bb.s:                                             ; preds = %bb.q
  switch i8 %i.ay, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread [
    i8 -127, label %bb.t
    i8 -126, label %bb.u
    i8 -125, label %bb.v
    i8 -124, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.bb = icmp ult i64 %i.ax, %i.ao
  br i1 %i.bb, label %bb.x, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bc = icmp ult i64 %i.ax, %i.ao
  br i1 %i.bc, label %bb.z, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.bd = icmp ult i64 %i.ax, %i.ao
  br i1 %i.bd, label %bb.ab, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.w:                                             ; preds = %bb.s
  %i.be = icmp ult i64 %i.ax, %i.ao
  br i1 %i.be, label %bb.ae, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.x:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !187, !noundef !4 ; 2 uses
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = add nuw i64 %i.an, 3
  %i.bj = zext i8 %i.bg to i64
  br label %.thread.i

bb.z:                                             ; preds = %bb.u
  %i.bk = add nuw i64 %i.an, 3                    ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.ao
  br i1 %i.bl, label %bb.aa, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !187, !noundef !4 ; 2 uses
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bk
  %i.bq = add nuw i64 %i.an, 4
  %i.br = load i8, ptr %i.bp, align 1, !noalias !187, !noundef !4
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bo, 8
  %i.bu = or disjoint i64 %i.bt, %i.bs
  %i.bv = icmp eq i8 %i.bn, 0
  br i1 %i.bv, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread, label %.thread.i

bb.ab:                                            ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  %i.bx = add nuw i64 %i.an, 3                    ; 2 uses
  %i.by = load i8, ptr %i.bw, align 1, !noalias !187, !noundef !4 ; 2 uses
  %i.bz = zext i8 %i.by to i64
  %i.ca = icmp ult i64 %i.bx, %i.ao
  br i1 %i.ca, label %bb.ac, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cb = add nuw i64 %i.an, 4                    ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ao
  br i1 %i.cc, label %bb.ad, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bx
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !187, !noundef !4
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cb
  %i.ch = add nuw i64 %i.an, 5
  %i.ci = load i8, ptr %i.cg, align 1, !noalias !187, !noundef !4
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.bz, 16
  %i.cl = shl nuw nsw i64 %i.cf, 8
  %i.cm = or disjoint i64 %i.cl, %i.ck
  %i.cn = or disjoint i64 %i.cm, %i.cj
  %i.co = icmp eq i8 %i.by, 0
  br i1 %i.co, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread, label %.thread.i

bb.ae:                                            ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  %i.cq = add nuw i64 %i.an, 3                    ; 3 uses
  store i64 %i.cq, ptr %i.n, align 8, !alias.scope !190, !noalias !191
  %i.cr = load i8, ptr %i.cp, align 1, !noalias !187, !noundef !4 ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = icmp ult i64 %i.cq, %i.ao
  br i1 %i.ct, label %bb.af, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cq
  %i.cv = add nuw i64 %i.an, 4                    ; 2 uses
  %i.cw = load i8, ptr %i.cu, align 1, !noalias !187, !noundef !4
  %i.cx = zext i8 %i.cw to i64
  %i.cy = icmp ult i64 %i.cv, %i.ao
  br i1 %i.cy, label %bb.ag, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.cz = add nuw i64 %i.an, 5                    ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.ao
  br i1 %i.da, label %bb.ah, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cv
  %i.dc = load i8, ptr %i.db, align 1, !noalias !187, !noundef !4
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cz
  %i.df = add nuw i64 %i.an, 6
  %i.dg = load i8, ptr %i.de, align 1, !noalias !187, !noundef !4
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.cs, 24
  %i.dj = shl nuw nsw i64 %i.cx, 16
  %i.dk = shl nuw nsw i64 %i.dd, 8
  %i.dl = or disjoint i64 %i.dj, %i.di
  %i.dm = or disjoint i64 %i.dl, %i.dk
  %i.dn = or disjoint i64 %i.dm, %i.dh            ; 2 uses
  %i.do = icmp ne i8 %i.cr, 0
  %.not.i.i.i = icmp ne i64 %i.dn, 4294967295
  %or.cond.i = select i1 %i.do, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i, label %.thread.i, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

.thread.i:                                        ; preds = %bb.ah, %bb.ad, %bb.aa, %bb.y, %bb.r
  %i.dp = phi i64 [ %i.df, %bb.ah ], [ %i.ch, %bb.ad ], [ %i.bq, %bb.aa ], [ %i.bi, %bb.y ], [ %i.ax, %bb.r ] ; 3 uses
  %.sroa.0232.0.i.i150.i = phi i64 [ %i.dn, %bb.ah ], [ %i.cn, %bb.ad ], [ %i.bu, %bb.aa ], [ %i.bj, %bb.y ], [ %i.ba, %bb.r ] ; 2 uses
  %i.dq = add i64 %.sroa.0232.0.i.i150.i, %i.dp   ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %.not.i140.i = icmp ugt i64 %i.dq, %i.ao
  %or.cond.i.i = or i1 %i.dr, %.not.i140.i
  br i1 %or.cond.i.i, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread, label %bb.aj, !prof !110

bb.ai:                                            ; preds = %bb.aj, %bb.o, %bb.n
  %.sroa.069.0.i = phi ptr [ %i.dz, %bb.aj ], [ inttoptr (i64 1 to ptr), %bb.n ], [ inttoptr (i64 1 to ptr), %bb.o ]
  %.sroa.3.0.i = phi i64 [ %.sroa.0232.0.i.i150.i, %bb.aj ], [ 0, %bb.n ], [ 0, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(48) %3, i64 48, i1 false), !noalias !179
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.af, ptr %i.ds, align 8, !noalias !176
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.ah, ptr %i.dt, align 8, !noalias !176
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr null, ptr %i.du, align 8, !noalias !176
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  store ptr %.sroa.069.0.i, ptr %i.dv, align 8, !noalias !176
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %.sroa.3.0.i, ptr %i.dw, align 8, !noalias !176
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.am, ptr %i.dx, align 8, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  store i64 -9223372036854775789, ptr %i.a, align 8, !noalias !176
  invoke void @_RINvNtCshVVPy9isBpn_6webpki3der14nested_limiteduNCNCNvXs3_NtNtB4_3crl5typesNtBU_26BorrowedCertRevocationListNtB2_7FromDer8from_ders_00EB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i8 noundef -96, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.c, i64 noundef 65535)
          to label %.noexc21 unwind label %bb.al

.noexc21:                                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  %i.dy = load i64, ptr %i.b, align 8, !range !17, !noalias !176, !noundef !4 ; 2 uses
  %.not139.i = icmp eq i64 %i.dy, -1
  br i1 %.not139.i, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit, label %bb.ak

bb.aj:                                            ; preds = %.thread.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.dp
  store i64 %i.dq, ptr %i.n, align 8, !alias.scope !192, !noalias !191
  br label %bb.ai

bb.ak:                                            ; preds = %.noexc21
  %.sroa.26.8..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.26.8.copyload26 = load i64, ptr %.sroa.26.8..sroa_idx25, align 8, !noalias !178 ; 2 uses
  %.sroa.26.sroa.0.0.extract.trunc35 = trunc i64 %.sroa.26.8.copyload26 to i8
  %.sroa.26.sroa.13.0.extract.shift44 = lshr i64 %.sroa.26.8.copyload26, 8
  %.sroa.33.8..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.33.8.copyload29 = load i64, ptr %.sroa.33.8..sroa_idx28, align 8, !noalias !178
  %.sroa.37.8..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37.8..sroa_idx31, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !176
  br label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread

bb.al:                                            ; preds = %bb.ai, %bb.l, %bb.j, %bb.h, %bb.d, %bb.a
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #10
          to label %bb.aq unwind label %bb.ar

_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit: ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !noalias !178 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !178 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !noalias !178 ; 3 uses
  %.sroa.26.sroa.0.0.extract.trunc = trunc i64 %.sroa.26.0.copyload to i8
  %.sroa.26.sroa.13.0.extract.shift = lshr i64 %.sroa.26.0.copyload, 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8, !noalias !178 ; 2 uses
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37.0..sroa_idx, i64 32, i1 false), !noalias !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(40) %i.dv, i64 40, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !176
  %i.eb = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.eb, label %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread, label %bb.am

_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread: ; preds = %bb.p, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %.thread.i, %bb.f, %bb.g, %bb.b, %bb.e, %bb.c, %bb.i, %bb.k, %bb.m, %bb.ak, %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit
  %.sroa.15.088 = phi i64 [ %.sroa.15.0.copyload, %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit ], [ -9223372036854775779, %bb.f ], [ -9223372036854775779, %bb.g ], [ %i.o, %bb.b ], [ %i.r, %bb.e ], [ -9223372036854775772, %bb.c ], [ %i.ad, %bb.i ], [ %i.aj, %bb.k ], [ %i.ak, %bb.m ], [ %i.dy, %bb.ak ], [ -9223372036854775808, %.thread.i ], [ -9223372036854775808, %bb.ah ], [ -9223372036854775808, %bb.ag ], [ -9223372036854775808, %bb.af ], [ -9223372036854775808, %bb.ae ], [ -9223372036854775808, %bb.ad ], [ -9223372036854775808, %bb.ac ], [ -9223372036854775808, %bb.ab ], [ -9223372036854775808, %bb.aa ], [ -9223372036854775808, %bb.z ], [ -9223372036854775808, %bb.x ], [ -9223372036854775808, %bb.w ], [ -9223372036854775808, %bb.v ], [ -9223372036854775808, %bb.u ], [ -9223372036854775808, %bb.t ], [ -9223372036854775808, %bb.s ], [ -9223372036854775808, %bb.p ]
  %.sroa.33.087 = phi i64 [ %.sroa.33.0.copyload, %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit ], [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.33.17.copyload, %bb.b ], [ %i.v, %bb.e ], [ undef, %bb.c ], [ %i.ah, %bb.i ], [ %.sroa.33.24.copyload, %bb.k ], [ %.sroa.33.24.copyload30, %bb.m ], [ %.sroa.33.8.copyload29, %bb.ak ], [ undef, %.thread.i ], [ undef, %bb.ah ], [ undef, %bb.ag ], [ undef, %bb.af ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.z ], [ undef, %bb.x ], [ undef, %bb.w ], [ undef, %bb.v ], [ undef, %bb.u ], [ undef, %bb.t ], [ undef, %bb.s ], [ undef, %bb.p ]
  %.sroa.26.sroa.0.086 = phi i8 [ %.sroa.26.sroa.0.0.extract.trunc, %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit ], [ undef, %bb.f ], [ undef, %bb.g ], [ %4, %bb.b ], [ %.sroa.26.sroa.0.0.extract.trunc36, %bb.e ], [ undef, %bb.c ], [ %.sroa.26.sroa.0.0.extract.trunc37, %bb.i ], [ %.sroa.26.sroa.0.0.extract.trunc38, %bb.k ], [ %.sroa.26.sroa.0.0.extract.trunc39, %bb.m ], [ %.sroa.26.sroa.0.0.extract.trunc35, %bb.ak ], [ 48, %.thread.i ], [ 48, %bb.ah ], [ 48, %bb.ag ], [ 48, %bb.af ], [ 48, %bb.ae ], [ 48, %bb.ad ], [ 48, %bb.ac ], [ 48, %bb.ab ], [ 48, %bb.aa ], [ 48, %bb.z ], [ 48, %bb.x ], [ 48, %bb.w ], [ 48, %bb.v ], [ 48, %bb.u ], [ 48, %bb.t ], [ 48, %bb.s ], [ 48, %bb.p ]
  %.sroa.26.sroa.13.sroa.0.085 = phi i64 [ %.sroa.26.sroa.13.0.extract.shift, %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ %5, %bb.b ], [ %.sroa.26.sroa.13.0.extract.shift46, %bb.e ], [ 0, %bb.c ], [ %.sroa.26.sroa.13.0.extract.shift48, %bb.i ], [ %.sroa.26.sroa.13.0.extract.shift52, %bb.k ], [ %.sroa.26.sroa.13.0.extract.shift54, %bb.m ], [ %.sroa.26.sroa.13.0.extract.shift44, %bb.ak ], [ 0, %.thread.i ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.p ]
  %.sroa.26.sroa.13.0.insert.shift = shl nuw i64 %.sroa.26.sroa.13.sroa.0.085, 8
  %.sroa.26.sroa.0.0.insert.ext = zext i8 %.sroa.26.sroa.0.086 to i64
  %.sroa.26.sroa.0.0.insert.insert = or disjoint i64 %.sroa.26.sroa.13.0.insert.shift, %.sroa.26.sroa.0.0.insert.ext
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39)
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.679.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.9, i64 32, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.088, ptr %i.ec, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.26.sroa.0.0.insert.insert, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.33.087, ptr %.sroa.578.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.ap

bb.am:                                            ; preds = %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.37, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.9)
  %i.ed = load i64, ptr %i.n, align 8, !noundef !4
  %i.ee = load i64, ptr %i.m, align 8, !noundef !4
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eg, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.sroa.8, i64 32, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.59.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  store ptr %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.0.copyload, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.26.0.copyload, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.33.0.copyload, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %_RNCNvXs3_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB7_26BorrowedCertRevocationListNtNtBb_3der7FromDer8from_ders_0Bb_.exit.thread
  ret void

bb.aq:                                            ; preds = %bb.al
  resume { ptr, i32 } %i.ea

bb.ar:                                            ; preds = %bb.al
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNvXs4_NtCshVVPy9isBpn_6webpki3derbNtB13_7FromDer8from_der0bNtNtB15_5error5ErrorEB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_RNCNvXs4_NtCshVVPy9isBpn_6webpki3derbNtB7_7FromDer8from_der0B9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = load i8, ptr %i.c, align 1, !noalias !195, !noundef !4 ; 2 uses
  switch i8 %i.d, label %_RNCNvXs4_NtCshVVPy9isBpn_6webpki3derbNtB7_7FromDer8from_der0B9_.exit [
    i8 -1, label %.sink.split.i
    i8 0, label %bb.c
  ]

.sink.split.i:                                    ; preds = %bb.b
  br label %bb.c

_RNCNvXs4_NtCshVVPy9isBpn_6webpki3derbNtB7_7FromDer8from_der0B9_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.b, %.sink.split.i
  %.sroa.623.0.ph = phi i8 [ 1, %.sink.split.i ], [ %i.d, %bb.b ]
  %i.e = icmp eq i64 %i.b, 1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.623.0.ph, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_RNCNvXs4_NtCshVVPy9isBpn_6webpki3derbNtB7_7FromDer8from_der0B9_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNvXs8_NtNtCshVVPy9isBpn_6webpki3crl5typesNtB13_19BorrowedRevokedCertNtNtB17_3der7FromDer8from_der0B1C_NtNtB17_5error5ErrorEB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 12 uses
  %i.g = alloca [56 x i8], align 8                ; 8 uses
  %i.h = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.23 = alloca [32 x i8], align 8           ; 11 uses
  %.sroa.6.sroa.8 = alloca [32 x i8], align 8     ; 7 uses
  %.sroa.7 = alloca [32 x i8], align 8            ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store ptr %i.j, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCshVVPy9isBpn_6webpki4cert33lenient_certificate_serial_number(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.o = load i64, ptr %i.h, align 8, !range !17, !noalias !202, !noundef !4
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !202
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a)
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.440.0.copyload.i = load ptr, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !202
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.541.0.copyload.i = load i64, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !202
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.0..sroa_idx.i, i64 32, i1 false), !noalias !199
  %i.p = ptrtoint ptr %.sroa.440.0.copyload.i to i64
  br label %.thread

bb.c:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !202, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !202, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !202
  invoke void @_RNvXNtCshVVPy9isBpn_6webpki4timeNtCseO5Jl7W60Eg_16rustls_pki_types8UnixTimeNtNtB4_3der7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.c
  %i.u = load i64, ptr %i.g, align 8, !range !17, !noalias !202, !noundef !4 ; 2 uses
  %.not68.i = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !202 ; 2 uses
  br i1 %.not68.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc15
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.20.16.copyload = load i64, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !199
  %.sroa.23.16..sroa.552.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.23.16..sroa.552.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !202
  br label %.thread

bb.e:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !202
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.x, align 8, !noalias !202
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.t, ptr %i.y, align 8, !noalias !202
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.w, ptr %i.z, align 8, !noalias !202
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 -1, ptr %i.aa, align 8, !noalias !202
  store i64 0, ptr %i.f, align 8, !noalias !202
  %i.ab = load i64, ptr %i.n, align 8, !alias.scope !199, !noalias !204, !noundef !4
  %i.ac = load i64, ptr %i.m, align 8, !alias.scope !199, !noalias !204, !noundef !4
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %.thread59, label %bb.f
end_hunk_0
