Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/webpki-ce99a4d7babff5cd.webpki.d0e49e753f3852db-cgu.1?download=true
inline.NumInlined: 97
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtCshVVPy9isBpn_6webpki10end_entityNtB4_13EndEntityCert32verify_is_valid_for_subject_name:bb.a

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs0_NtCshVVPy9isBpn_6webpki12subject_nameNtB5_11GeneralNameNtNtB7_3der7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !141
  %i.aa = load i64, ptr %i.h, align 8, !range !4, !noalias !141, !noundef !5 ; 2 uses
  %.not5.i.i.i = icmp eq i64 %i.aa, -1
  %.sroa.10.sroa.0.0.copyload20.i.i14 = load i8, ptr %.sroa.10.0..sroa_idx7.i.i, align 8, !noalias !141 ; 2 uses
  %.sroa.10.sroa.8.0.copyload21.i.i15 = load ptr, ptr %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx7.sroa_idx.i.i, align 8, !noalias !141 ; 6 uses
  br i1 %.not5.i.i.i, label %bb.e, label %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names0B7_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i8 %.sroa.10.sroa.0.0.copyload20.i.i14, 2
  br i1 %i.ab, label %bb.f, label %.loopexit43.i.i

bb.f:                                             ; preds = %bb.e
  %.sroa.10.sroa.9.0.copyload22.i.i16 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx7.sroa_idx.i.i, align 8, !noalias !141
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.8.0.copyload21.i.i15) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.10.sroa.9.0.copyload22.i.i16, %..i
  br i1 %.not.i.i.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputE6unwrapCshVVPy9isBpn_6webpki.exit.i.i.i.i.i, label %.loopexit43.i.i

.split.i.i.i.i.i:                                 ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputE6unwrapCshVVPy9isBpn_6webpki.exit.i.i.i.i.i
  %i.ac = or disjoint i64 %.sroa.07.0.i.i.i.i.i53, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.8.0.copyload21.i.i15, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !144, !noalias !146, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !147, !noalias !148, !noundef !5
  %.not10.i.i.i.i.i.1 = icmp eq i8 %i.ae, %i.ag
  br i1 %.not10.i.i.i.i.i.1, label %.split.i.i.i.i.i.1, label %.loopexit43.i.i

.split.i.i.i.i.i.1:                               ; preds = %.split.i.i.i.i.i
  %i.ah = or disjoint i64 %.sroa.07.0.i.i.i.i.i53, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.8.0.copyload21.i.i15, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !144, !noalias !146, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 4, !alias.scope !147, !noalias !148, !noundef !5
  %.not10.i.i.i.i.i.2 = icmp eq i8 %i.aj, %i.al
  br i1 %.not10.i.i.i.i.i.2, label %.split.i.i.i.i.i.2, label %.loopexit43.i.i

.split.i.i.i.i.i.2:                               ; preds = %.split.i.i.i.i.i.1
  %i.am = or disjoint i64 %.sroa.07.0.i.i.i.i.i53, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.8.0.copyload21.i.i15, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !144, !noalias !146, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.am
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !147, !noalias !148, !noundef !5
  %.not10.i.i.i.i.i.3 = icmp eq i8 %i.ao, %i.aq
  br i1 %.not10.i.i.i.i.i.3, label %.split.i.i.i.i.i.3, label %.loopexit43.i.i

.split.i.i.i.i.i.3:                               ; preds = %.split.i.i.i.i.i.2
  %i.ar = add nuw nsw i64 %.sroa.07.0.i.i.i.i.i53, 4 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %..i
  br i1 %i.as, label %.loopexit.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputE6unwrapCshVVPy9isBpn_6webpki.exit.i.i.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputE6unwrapCshVVPy9isBpn_6webpki.exit.i.i.i.i.i: ; preds = %bb.f, %.split.i.i.i.i.i.3
  %.sroa.07.0.i.i.i.i.i53 = phi i64 [ %i.ar, %.split.i.i.i.i.i.3 ], [ 0, %bb.f ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.8.0.copyload21.i.i15, i64 %.sroa.07.0.i.i.i.i.i53
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !144, !noalias !146, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.07.0.i.i.i.i.i53
  %i.aw = load i8, ptr %i.av, align 2, !alias.scope !147, !noalias !148, !noundef !5
  %.not10.i.i.i.i.i = icmp eq i8 %i.au, %i.aw
  br i1 %.not10.i.i.i.i.i, label %.split.i.i.i.i.i, label %.loopexit43.i.i

_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names0B7_.exit.i.i.i: ; preds = %bb.d
  %.sroa.10.sroa.9.0.copyload22.i.i = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx7.sroa_idx.i.i, align 8, !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.4.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.s, i64 7, i1 false), !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !141
  br label %.loopexit.i

.loopexit43.i.i:                                  ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulthNtNtCs2XfPe3Xe4Zx_9untrusted6reader10EndOfInputE6unwrapCshVVPy9isBpn_6webpki.exit.i.i.i.i.i, %.split.i.i.i.i.i, %.split.i.i.i.i.i.1, %.split.i.i.i.i.i.2, %bb.f, %bb.e
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !149, !noalias !141, !noundef !5
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i, label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i: ; preds = %.loopexit43.i.i, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !141
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ay, ptr noundef nonnull readonly align 1 dereferenceable(17) %i.r, i64 17, i1 false), !noalias !139
  store i8 1, ptr %i.k, align 8, !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !141
  store ptr %.val, ptr %i.i, align 8, !noalias !141
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.512.sroa.0.0.i, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !141
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.i, align 8, !noalias !141
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapNtNtCshVVPy9isBpn_6webpki12subject_name12NameIteratorNCNvNtB2V_10ip_address23verify_ip_address_namess_0EE9from_iterB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.h unwind label %bb.g, !noalias !141

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #12
          to label %common.resume unwind label %bb.i, !noalias !141

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !141
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !140
  br label %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names.exit

bb.i:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13, !noalias !141
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.g ], [ %i.bq, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.loopexit.i:                                      ; preds = %.split.i.i.i.i.i.3, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names0B7_.exit.i.i.i
  %.sroa.0.024.i.i.i = phi i64 [ %i.aa, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names0B7_.exit.i.i.i ], [ -1, %.split.i.i.i.i.i.3 ]
  %.sroa.8.sroa.0.023.i.i.i = phi i8 [ %.sroa.10.sroa.0.0.copyload20.i.i14, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names0B7_.exit.i.i.i ], [ undef, %.split.i.i.i.i.i.3 ]
  %.sroa.8.sroa.5.022.i.i.i = phi ptr [ %.sroa.10.sroa.8.0.copyload21.i.i15, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names0B7_.exit.i.i.i ], [ undef, %.split.i.i.i.i.i.3 ]
  %.sroa.8.sroa.6.021.i.i.i = phi i64 [ %.sroa.10.sroa.9.0.copyload22.i.i, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names0B7_.exit.i.i.i ], [ undef, %.split.i.i.i.i.i.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !141
  store i64 %.sroa.0.024.i.i.i, ptr %0, align 8, !alias.scope !139
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.8.sroa.0.023.i.i.i, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !139
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.4.i.i.i, i64 7, i1 false), !noalias !140
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.sroa.5.022.i.i.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !139
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.sroa.6.021.i.i.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !139
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.7.i.i.i, i64 24, i1 false), !noalias !140
  br label %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names.exit

_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names.exit: ; preds = %bb.h, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !151, !nonnull !5, !noundef !5
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !151, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !152
  store ptr %.val, ptr %i.g, align 8, !noalias !152
  %.sroa.513.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %.sroa.512.sroa.0.0.i, ptr %.sroa.513.0..sroa_idx14.i, align 8, !noalias !152
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx14.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx14.sroa_idx.i, align 8, !noalias !152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i13, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.j
  %.sroa.10.0..sroa_idx7.i.i5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx7.sroa_idx.i.i6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx7.sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.lr.ph.i.i4
  %i.bg = load i64, ptr %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx14.sroa_idx.i, align 8, !alias.scope !154, !noalias !152, !noundef !5
  %i.bh = load i64, ptr %.sroa.513.0..sroa_idx14.i, align 8, !alias.scope !154, !noalias !152, !noundef !5
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i13, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvXs0_NtCshVVPy9isBpn_6webpki12subject_nameNtB5_11GeneralNameNtNtB7_3der7FromDer8from_der(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !152
  %i.bj = load i64, ptr %i.b, align 8, !range !4, !noalias !152, !noundef !5 ; 2 uses
  %.not5.i.i.i8 = icmp eq i64 %i.bj, -1
  %.sroa.10.sroa.0.0.copyload20.i.i921 = load i8, ptr %.sroa.10.0..sroa_idx7.i.i5, align 8, !noalias !152 ; 2 uses
  br i1 %.not5.i.i.i8, label %bb.m, label %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread.i.i

_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread.i.i: ; preds = %bb.l
  %.sroa.10.sroa.8.0.copyload21.i.i10 = load ptr, ptr %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx7.sroa_idx.i.i6, align 8, !noalias !152
  %.sroa.10.sroa.9.0.copyload22.i.i11 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx7.sroa_idx.i.i7, align 8, !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.5.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.bd, i64 7, i1 false), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !152
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp eq i8 %.sroa.10.sroa.0.0.copyload20.i.i921, 0
  br i1 %i.bk, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.10.sroa.9.0.copyload22.i.i1123 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx7.sroa_idx.i.i7, align 8, !noalias !152
  %.sroa.10.sroa.8.0.copyload21.i.i1022 = load ptr, ptr %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx7.sroa_idx.i.i6, align 8, !noalias !152, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  call fastcc void @_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name33presented_id_matches_reference_id(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.sroa.8.0.copyload21.i.i1022, i64 noundef %.sroa.10.sroa.9.0.copyload22.i.i1123, i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i), !noalias !155
  %i.bl = load i64, ptr %i.a, align 8, !range !4, !noalias !155, !noundef !5 ; 4 uses
  %.not4.i.i.i.i = icmp eq i64 %i.bl, -1
  br i1 %.not4.i.i.i.i, label %.thread.i.i.i.i, label %3

3:                                                ; preds = %bb.n
  %4 = icmp ne i64 %i.bl, -9223372036854775804
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.bl, -9223372036854775790
  br i1 %5, label %bb.p, label %bb.o

.thread.i.i.i.i:                                  ; preds = %bb.n
  %i.bm = load i8, ptr %i.bf, align 8, !range !7, !noalias !155, !noundef !5
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.i.i, label %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread42.i.i

bb.o:                                             ; preds = %3
  %.sroa.9.sroa.0.0.copyload8.i.i.i = load i8, ptr %i.bf, align 8, !noalias !156
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx4.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.5.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx4.sroa_idx.i.i.i, i64 7, i1 false), !noalias !152
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx4.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.sroa.6.0.copyload9.i.i.i = load ptr, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx4.sroa_idx.i.i.i, align 8, !noalias !156
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx4.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.sroa.7.0.copyload10.i.i.i = load i64, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx4.sroa_idx.i.i.i, align 8, !noalias !156
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx4.sroa_idx.i.i.i, i64 24, i1 false), !noalias !152
  br label %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.i.i

bb.p:                                             ; preds = %3
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a), !noalias !155
  br label %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread42.i.i

_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread42.i.i: ; preds = %bb.p, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  br label %bb.q

_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.i.i: ; preds = %.thread.i.i.i.i, %bb.o
  %.sroa.9.sroa.7.0.i.i.i = phi i64 [ %.sroa.9.sroa.7.0.copyload10.i.i.i, %bb.o ], [ undef, %.thread.i.i.i.i ]
  %.sroa.9.sroa.6.0.i.i.i = phi ptr [ %.sroa.9.sroa.6.0.copyload9.i.i.i, %bb.o ], [ undef, %.thread.i.i.i.i ]
  %.sroa.9.sroa.0.0.i.i.i = phi i8 [ %.sroa.9.sroa.0.0.copyload8.i.i.i, %bb.o ], [ undef, %.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  br label %bb.u

bb.q:                                             ; preds = %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread42.i.i, %bb.m
  %i.bo = load ptr, ptr %i.g, align 8, !alias.scope !157, !noalias !152, !noundef !5
  %.not.i.i.i12 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i12, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i13, label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i13: ; preds = %bb.q, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !152
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RNvMsa_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsName8to_owned(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc), !noalias !150
  store i8 0, ptr %i.e, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  store ptr %.val, ptr %i.c, align 8, !noalias !152
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.512.sroa.0.0.i, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !152
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx.i, align 8, !noalias !152
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapNtNtCshVVPy9isBpn_6webpki12subject_name12NameIteratorNCNvNtB2V_8dns_name16verify_dns_namess_0EE9from_iterB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.s unwind label %bb.r, !noalias !150

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i13
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #12
          to label %common.resume unwind label %bb.t, !noalias !150

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtB4_6result6ResultuNtNtCshVVPy9isBpn_6webpki5error5ErrorEEEB1H_.exit.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !152
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !151
  br label %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names.exit

bb.t:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13, !noalias !150
  unreachable

bb.u:                                             ; preds = %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.i.i, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread.i.i
  %.sroa.0.1.i41.i.i = phi i64 [ %i.bj, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread.i.i ], [ %i.bl, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.i.i ]
  %.sroa.9.sroa.0.1.i40.i.i = phi i8 [ %.sroa.10.sroa.0.0.copyload20.i.i921, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread.i.i ], [ %.sroa.9.sroa.0.0.i.i.i, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.i.i ]
  %.sroa.9.sroa.6.1.i39.i.i = phi ptr [ %.sroa.10.sroa.8.0.copyload21.i.i10, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread.i.i ], [ %.sroa.9.sroa.6.0.i.i.i, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.i.i ]
  %.sroa.9.sroa.7.1.i38.i.i = phi i64 [ %.sroa.10.sroa.9.0.copyload22.i.i11, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.thread.i.i ], [ %.sroa.9.sroa.7.0.i.i.i, %_RNCNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names0B7_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !152
  store i64 %.sroa.0.1.i41.i.i, ptr %0, align 8, !alias.scope !150
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.sroa.0.1.i40.i.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !alias.scope !150
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.5.i.i.i, i64 7, i1 false), !noalias !151
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.sroa.6.1.i39.i.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !150
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.sroa.7.1.i38.i.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !150
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.8.i.i.i, i64 24, i1 false), !noalias !151
  br label %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names.exit

_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names.exit: ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.v:                                             ; preds = %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name8dns_name16verify_dns_names.exit, %_RNvNtNtCshVVPy9isBpn_6webpki12subject_name10ip_address23verify_ip_address_names.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCshVVPy9isBpn_6webpki12subject_name42check_presented_id_conforms_to_constraints(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) %2, i64 %3, ptr noalias nofree noundef readonly captures(address, read_provenance) %4, i64 %5, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.lr.ph:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 18 uses
  %i.j = alloca [56 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i8 0, ptr %.sroa.668.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %2, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %3, ptr %.sroa.971.0..sroa_idx, align 8
  %.sroa.1072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i8 1, ptr %.sroa.1072.0..sroa_idx, align 8
  %.sroa.1274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %4, ptr %.sroa.1274.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %5, ptr %.sroa.13.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.u = load i8, ptr %1, align 8, !range !10     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.850.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.749.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.promoted173 = load i64, ptr %i.o, align 8
  br label %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit

_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit: ; preds = %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.lr.ph, %.backedge
  %.promoted148177 = phi i64 [ %.promoted173, %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.lr.ph ], [ %.promoted148174, %.backedge ] ; 3 uses
  %.not.i = phi i1 [ false, %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.lr.ph ], [ true, %.backedge ]
  %i.ad = phi i64 [ 0, %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.lr.ph ], [ 1, %.backedge ]
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.sroa.668.0..sroa_idx, i64 %i.ad ; 3 uses
  %.sroa.0.0.copyload = load i8, ptr %i.ae, align 8, !alias.scope !171 ; 5 uses
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.893.0.copyload = load ptr, ptr %.sroa.893.0..sroa_idx, align 8, !alias.scope !171 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !171 ; 2 uses
  %.not78 = icmp eq i8 %.sroa.0.0.copyload, 2
  br i1 %.not78, label %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.thread, label %bb.a

bb.a:                                             ; preds = %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit
  %i.af = trunc nuw i8 %.sroa.0.0.copyload to i1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not79 = icmp eq ptr %.sroa.893.0.copyload, null
  br i1 %.not79, label %.backedge, label %bb.c

_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.thread: ; preds = %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit, %.backedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 -2, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.ak, %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.thread
  ret void

bb.c:                                             ; preds = %bb.a
  store ptr %.sroa.893.0.copyload, ptr %i.k, align 8
  store i64 %.sroa.9.0.copyload, ptr %i.m, align 8
  store i64 0, ptr %i.n, align 8
  %i.ag = icmp eq i64 %.sroa.9.0.copyload, 0
  br i1 %i.ag, label %.backedge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.ah = icmp samesign ult i8 %.sroa.0.0.copyload, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.promoted149 = phi i64 [ %.promoted148177, %.lr.ph.lr.ph ], [ %i.al, %.outer ] ; 2 uses
  %.sroa.013.0.ph145 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.sroa.013.1, %.outer ] ; 3 uses
  %.sroa.014.0.ph144 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.sroa.014.1, %.outer ] ; 3 uses
  %i.ai = icmp eq i64 %.promoted149, 0
  br i1 %i.ai, label %.lr.ph._crit_edge, label %.noexc86

.backedge:                                        ; preds = %bb.a, %.outer._crit_edge, %bb.c
  %.promoted148174 = phi i64 [ %.promoted148177, %bb.c ], [ %i.al, %.outer._crit_edge ], [ %.promoted148177, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %.not.i, label %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit.thread, label %_RNvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtCshVVPy9isBpn_6webpki12subject_name8SubtreesINtNtBb_6option6OptionNtNtCs2XfPe3Xe4Zx_9untrusted5input5InputEEEE4nextB1Z_.exit

bb.d:                                             ; preds = %bb.h
end_hunk_0
