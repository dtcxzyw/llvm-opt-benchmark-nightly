Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_rustls-03d7430c87fe3e86.pingora_rustls.1fe7a3805b6a1ef9-cgu.0?download=true
inline.NumInlined: 272
inline.NumDeleted: 162
begin_hunk_0_@_RNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_ca:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.647.054) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.647.054, ptr %i.bo, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %.val1.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !284, !noundef !5 ; 2 uses
  %i.bp = icmp eq i64 %.val1.i, 0
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !284, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #17, !noalias !284
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.u, %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.val2.i = load i32, ptr %i.bq, align 8, !range !6, !alias.scope !284, !noundef !5
  %i.br = call noundef i32 @close(i32 noundef %.val2.i) #17, !noalias !284 ; 0 uses
  br label %bb.ae

bb.w:                                             ; preds = %bb.t
  store i64 %.sroa.0.0.copyload, ptr %i.p, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.647.0.copyload, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.518.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.9.0.copyload, 0
  br i1 %.not, label %_RNCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_cas_0B3_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr i8, ptr %.sroa.647.0.copyload, i64 8
  %.val = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5
  %i.bt = getelementptr i8, ptr %.sroa.647.0.copyload, i64 16
  %.val41 = load i64, ptr %i.bt, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !285
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val41, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.x
  %i.bu = load i64, ptr %i.b, align 8, !range !10, !noalias !285, !noundef !5
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !11, !noalias !285, !noundef !5 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bv, label %bb.y, label %bb.z, !prof !12

bb.y:                                             ; preds = %.noexc
  %i.bz = load i64, ptr %i.by, align 8, !noalias !285
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bx, i64 %i.bz) #14
          to label %.noexc42 unwind label %bb.ab

.noexc42:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %.noexc
  %i.ca = load ptr, ptr %i.by, align 8, !noalias !285, !nonnull !5, !noundef !5 ; 3 uses
  %i.cb = icmp ule i64 %.val41, %i.bx
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !285
  %.not.i = icmp eq i64 %.val41, 0
  br i1 %.not.i, label %_RNCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_cas_0B3_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %.val, i64 %.val41, i1 false), !noalias !285
  br label %_RNCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_cas_0B3_.exit

_RNCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_cas_0B3_.exit: ; preds = %bb.z, %bb.aa, %bb.w
  %.sroa.624.0 = phi i64 [ 0, %bb.w ], [ 0, %bb.z ], [ %.val41, %bb.aa ]
  %.sroa.521.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.w ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  %.sroa.019.0 = phi i64 [ 0, %bb.w ], [ %i.bx, %bb.z ], [ %i.bx, %bb.aa ]
  store i64 %.sroa.019.0, ptr %0, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.521.0, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.624.0, ptr %.sroa.624.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p)
          to label %bb.ac unwind label %bb.s

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #16
          to label %.body unwind label %bb.af

bb.ac:                                            ; preds = %_RNCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_cas_0B3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %.val1.i43 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !286, !noundef !5 ; 2 uses
  %i.cd = icmp eq i64 %.val1.i43, 0
  br i1 %i.cd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit46, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val.i44 = load ptr, ptr %i.r, align 8, !alias.scope !286, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i44, i64 noundef range(i64 1, 0) %.val1.i43, i64 noundef 1) #17, !noalias !286
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit46

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit46: ; preds = %bb.ac, %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.val2.i45 = load i32, ptr %i.ce, align 8, !range !6, !alias.scope !286, !noundef !5
  %i.cf = call noundef i32 @close(i32 noundef %.val2.i45) #17, !noalias !286 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.af:                                            ; preds = %bb.ab
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_files(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvCs2JPny71o0qX_14pingora_rustls13load_pem_fileReEB2_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.m = load i64, ptr %i.k, align 8, !range !9, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -2, ptr %i.q, align 8
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.540.0.copyload = load i64, ptr %.sroa.540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.m, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %.sroa.540.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvCs2JPny71o0qX_14pingora_rustls13load_pem_fileReEB2_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.d unwind label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.i, align 8, !range !9, !noundef !5 ; 3 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.u, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -2, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
  br label %bb.ad

bb.f:                                             ; preds = %bb.d
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.543.0.copyload = load i64, ptr %.sroa.543.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.r, ptr %i.j, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.u, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.543.0.copyload, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.w = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.x = load i64, ptr %i.l, align 8, !range !13, !noundef !5 ; 4 uses
  %i.y = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %i.y, 288230376151711744
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.y ; 2 uses
  store ptr %i.w, ptr %i.g, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.w, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.x, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.aa, ptr %.sroa.627.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.ab = shl i64 %i.x, 5                         ; 4 uses
  %i.ac = udiv i64 %i.ab, 24                      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ae = invoke { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerENCINvNtNtB1P_8adapters10filter_map19filter_map_try_foldBX_B3n_B2N_INtNtB1R_6result6ResultB2N_zENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_files0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3n_E0E0B5g_EB5N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %i.w, ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull %i.ad, ptr noundef nonnull %i.aa)
          to label %bb.i unwind label %bb.h, !noalias !298

bb.g:                                             ; preds = %bb.j, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.af, %bb.h ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.thread63 unwind label %bb.o, !noalias !298

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.w to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = udiv exact i64 %i.aj, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !299
  store ptr %i.w, ptr %i.a, align 8, !noalias !299
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !noalias !299
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.x, ptr %i.am, align 8, !noalias !299
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemE32forget_allocation_drop_remainingCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.k unwind label %bb.j, !noalias !298

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.g unwind label %bb.o, !noalias !298

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp ne i64 %i.x, 0
  %i.ao = mul nuw i64 %i.ac, 24                   ; 4 uses
  %i.ap = icmp ne i64 %i.ab, %i.ao
  %.sroa.0.0.i.i = select i1 %.not.i.i, i1 %i.ap, i1 false
  br i1 %.sroa.0.0.i.i, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k
  %.sroa.03.0.i = phi ptr [ %i.w, %bb.k ], [ %i.at, %bb.l ]
  store i64 %i.ac, ptr %i.h, align 8, !alias.scope !298, !noalias !300
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.03.0.i, ptr %i.aq, align 8, !alias.scope !298, !noalias !300
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %i.ak, ptr %i.ar, align 8, !alias.scope !298, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !299
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_files0ENtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEB3p_.exit unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.as = icmp ule i64 %i.ao, %i.ab
  call void @llvm.assume(i1 %i.as)
  %i.at = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.w, i64 noundef %i.ab, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ao) #17, !noalias !298 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.m, label %.thread.i, !prof !301

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ao) #14
          to label %bb.n unwind label %bb.j, !noalias !298

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.g
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !298
  unreachable

bb.p:                                             ; preds = %.thread.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread63

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_files0ENtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEB3p_.exit: ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = icmp ult i64 %.sroa.543.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.543.0.copyload
  store ptr %i.u, ptr %i.e, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.u, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.r, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ay, ptr %.sroa.631.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_8find_map5checkBX_NtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerQNCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0E0INtNtNtB1R_3ops12control_flow11ControlFlowB3h_EEB49_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull %i.az)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_files0ENtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEB3p_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit unwind label %bb.ac

bb.r:                                             ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_files0ENtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEB3p_.exit
  %i.bb = load i64, ptr %i.b, align 8, !range !302, !noundef !5
  %.not45 = icmp eq i64 %i.bb, -1
  br i1 %.not45, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerEECs2JPny71o0qX_14pingora_rustls.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerEECs2JPny71o0qX_14pingora_rustls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit53 unwind label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerEECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.r
  store i64 -1, ptr %i.f, align 8
  br label %bb.t

bb.u:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bd = load i64, ptr %i.f, align 8, !range !302, !alias.scope !303, !noundef !5
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !range !9, !alias.scope !304, !noundef !5
  %.not.i.i.i.i.i54 = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i.i.i.i54, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i.i55

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i.i55: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit unwind label %bb.ac

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit53: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.bh = load i64, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i64 %i.bh, 0                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bl = zext i1 %i.bj to i8
  store i8 %i.bl, ptr %i.bk, align 8
  %i.bm = load i64, ptr %i.d, align 8, !range !302, !noundef !5
  %.not50 = icmp eq i64 %i.bm, -1                 ; 3 uses
  %or.cond = or i1 %i.bj, %.not50
  br i1 %or.cond, label %bb.w, label %.thread69

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit53
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.x unwind label %bb.y

.thread69:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit53
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not50, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not50, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit60, label %bb.ab

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i, %bb.z, %.thread69, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !9, !alias.scope !305, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.bq, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i: ; preds = %bb.z
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit

bb.aa:                                            ; preds = %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit60: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit, %.thread63, %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i58, %bb.ae, %bb.y
  %.pn51 = phi { ptr, i32 } [ %i.bo, %bb.ab ], [ %i.bo, %bb.y ], [ %i.bu, %bb.ae ], [ %i.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i58 ], [ %eh.lpad-body, %.thread63 ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit ]
  resume { ptr, i32 } %.pn51

bb.ab:                                            ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !range !9, !alias.scope !306, !noundef !5
  %.not.i.i.i.i57 = icmp eq i64 %i.bs, -1
  br i1 %.not.i.i.i.i57, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit60, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i58

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i58: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit60 unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i.i55, %bb.q, %bb.ae, %.thread63, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemENCNvCs2JPny71o0qX_14pingora_rustls24load_certs_and_key_filess_0EEB31_.exit: ; preds = %bb.v, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i.i55, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types18PrivatePkcs8KeyDerECs2JPny71o0qX_14pingora_rustls.exit.sink.split.i.i55 ], [ %i.bc, %bb.u ], [ %i.bc, %bb.v ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit60 unwind label %bb.ac

.thread63:                                        ; preds = %bb.g, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %.pn.i, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit60 unwind label %bb.ac

bb.ad:                                            ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.c
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsfup1golxiVd_14rustls_pemfile7pemfile4ItemEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsdzNJuPjuSXS_16rustls_pki_types13PrivateKeyDerECs2JPny71o0qX_14pingora_rustls.exit60 unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs2JPny71o0qX_14pingora_rustls25load_pem_file_private_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.433 = alloca [16 x i8], align 8          ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [48 x i8], align 8                ; 12 uses
end_hunk_0
