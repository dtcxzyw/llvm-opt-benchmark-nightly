Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.031?download=true
inline.NumInlined: 3034
inline.NumDeleted: 1174
begin_hunk_0_@_RNvXs1P_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_14BatchPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.k:                                             ; preds = %bb.i, %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i = alloca [40 x i8], align 8          ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [72 x i8], align 8            ; 6 uses
  %i.f = load i64, ptr %1, align 8, !range !15, !noundef !8
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6589)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6592
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !15, !alias.scope !6589, !noalias !6594, !noundef !8
  %.not.i = icmp eq i64 %i.h, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g), !noalias !6594
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %i.e, align 8, !noalias !6592
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6592
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsgOCJwUSa4vG_5tonic9transport3tls11CertificateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1)
          to label %bb.h unwind label %bb.g, !noalias !6594

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %i.i, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %bb.r unwind label %bb.q, !noalias !6594

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6592
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsg2eWlRba8yQ_16rustls_pki_types11TrustAnchorENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.k unwind label %bb.j, !noalias !6594

bb.i:                                             ; preds = %.body.i, %bb.j
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsgOCJwUSa4vG_5tonic9transport3tls11CertificateEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.f unwind label %bb.q, !noalias !6594

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !15, !alias.scope !6589, !noalias !6594, !noundef !8
  %.not7.i = icmp eq i64 %i.m, -1
  br i1 %.not7.i, label %_RNvXs0_NtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tlsNtB5_15ClientTlsConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6595
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
          to label %.noexc.i unwind label %bb.o, !noalias !6594

.noexc.i:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6595
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.p unwind label %bb.m, !noalias !6599

bb.m:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic9transport3tls11CertificateECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %.body.i unwind label %bb.n, !noalias !6599

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !6599
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.o ], [ %i.o, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsg2eWlRba8yQ_16rustls_pki_types11TrustAnchorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #19
          to label %bb.i unwind label %bb.q, !noalias !6594

bb.p:                                             ; preds = %.noexc.i
  %.sroa.0.0.copyload11.i = load i64, ptr %i.b, align 8, !noalias !6600
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false)
  %.sroa.4.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6595
  br label %_RNvXs0_NtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tlsNtB5_15ClientTlsConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %.body.i, %bb.i, %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !6594
  unreachable

bb.r:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn.pn.i

_RNvXs0_NtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tlsNtB5_15ClientTlsConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.k, %bb.p
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload11.i, %bb.p ], [ -1, %bb.k ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = load i8, ptr %i.s, align 8, !range !815, !alias.scope !6589, !noalias !6594, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.v = load i8, ptr %i.u, align 1, !range !815, !alias.scope !6589, !noalias !6594, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load i32, ptr %i.w, align 8, !range !3014, !alias.scope !6589, !noalias !6594, !noundef !8 ; 2 uses
  %.not10.i = icmp eq i32 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6589, !noalias !6594
  %.sroa.03.0.i = select i1 %.not10.i, i64 undef, i64 %i.z
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !6589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6589
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.03.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.x, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %i.t, ptr %.sroa.101.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %i.v, ptr %.sroa.11.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs0_NtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tlsNtB5_15ClientTlsConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsT_NtCs5QaNqjAn6vc_5shard10operationsNtB5_21OperationWithClockTagNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.i.i = alloca [5 x i8], align 1         ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.7.sroa.0.i.i.i.i.i = alloca [23 x i8], align 1 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [104 x i8], align 8               ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i2.i = alloca [96 x i8], align 8     ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i3.i = alloca [48 x i8], align 8       ; 5 uses
  %.sroa.4.i.i.i.i.i = alloca [8 x i8], align 8   ; 5 uses
  %.sroa.6.i.i.i.i.i = alloca [8 x i8], align 8   ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4.i.i.i.i = alloca [8 x i8], align 8     ; 5 uses
  %.sroa.6.i.i.i.i = alloca [8 x i8], align 8     ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.5.i2.i.i = alloca [40 x i8], align 8     ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [104 x i8], align 8               ; 11 uses
  %.sroa.5.i.i.i.sroa.6 = alloca [23 x i8], align 1 ; 6 uses
  %.sroa.5.i.i.i.sroa.8 = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.5.i.i.i.sroa.17.sroa.5 = alloca [24 x i8], align 8 ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [104 x i8], align 8               ; 15 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 10 uses
  %i.v = alloca [104 x i8], align 8               ; 4 uses
  %i.w = alloca [104 x i8], align 8               ; 7 uses
  %i.x = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.528.i.i = alloca [23 x i8], align 1      ; 4 uses
  %.sroa.520.i.i = alloca [23 x i8], align 1      ; 4 uses
  %.sroa.513.i.i = alloca [23 x i8], align 1      ; 4 uses
  %.sroa.56.i.i = alloca [23 x i8], align 1       ; 4 uses
  %.sroa.0.i.i = alloca [208 x i8], align 8       ; 5 uses
  %.sroa.6.i.i = alloca [72 x i8], align 8        ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 15 uses
  %.sroa.28.i = alloca [48 x i8], align 8         ; 4 uses
  %i.z = alloca [256 x i8], align 8               ; 20 uses
  %i.aa = alloca [216 x i8], align 8              ; 32 uses
  %.sroa.0 = alloca [28 x i8], align 8            ; 4 uses
  %.sroa.5 = alloca [3 x i8], align 1             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 41 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 104 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6601)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.sroa.17.sroa.5)
  %i.af = load i64, ptr %1, align 8, !range !2592, !alias.scope !6601, !noalias !6604, !noundef !8 ; 5 uses
  %i.ag = icmp ne i64 %i.af, 7
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add nsw i64 %i.af, -5
  %i.ai = icmp samesign ugt i64 %i.af, 4
  %i.aj = select i1 %i.ai, i64 %i.ah, i64 2
  switch i64 %i.aj, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.ab
    i64 2, label %bb.bl
    i64 3, label %bb.cb
    i64 4, label %bb.dd
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6606)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6609
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.528.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.520.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !range !2690, !alias.scope !6610, !noalias !6611, !noundef !8 ; 4 uses
  %i.an = icmp ne i64 %i.am, 4
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %i.am, -3
  %i.ap = icmp sgt i64 %i.am, 2
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 1
  switch i64 %i.aq, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !35, !alias.scope !6610, !noalias !6611, !noundef !8
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.q, label %bb.r

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6616
  %i.au = icmp eq i64 %i.am, -1
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops20PointStructPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av), !noalias !6618
  store i64 -1, ptr %i.w, align 8, !noalias !6616
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call fastcc void @_RNvXs1P_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_14BatchPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.ak) #24, !noalias !6618
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6616
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ax)
          to label %_RNvXs1w_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_34ConditionalInsertOperationInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i unwind label %bb.j, !noalias !6618

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops29PointInsertOperationsInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.w) #19
          to label %common.resume.i unwind label %bb.k, !noalias !6618

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !6618
  unreachable

common.resume.i:                                  ; preds = %.body.i.i17.i, %bb.cg, %bb.cd, %bb.br, %bb.bj, %bb.bg, %.body.i.i.i, %bb.ae, %bb.j
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.br ], [ %i.ay, %bb.j ], [ %i.es, %bb.bj ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.cf, %bb.ae ], [ %i.em, %bb.bg ], [ %i.fy, %bb.cd ], [ %i.gf, %bb.cg ], [ %eh.lpad-body.i.i18.i, %.body.i.i17.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs1w_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_34ConditionalInsertOperationInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bb = load i8, ptr %i.ba, align 8, !range !2923, !alias.scope !6619, !noalias !6618, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 104, i1 false), !noalias !6620
  %.sroa.0.104..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.104..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.v, i64 104, i1 false), !noalias !6620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.aa, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.0.i.i, i64 208, i1 false)
  %.sroa.536.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  store i8 %i.bb, ptr %.sroa.536.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.8.8.copyload.pre = load i64, ptr %i.aa, align 8
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.m:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.be) #24
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.n:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load i8, ptr %i.bh, align 8, !range !535, !alias.scope !6610, !noalias !6611, !noundef !8 ; 2 uses
  %.not34.i.i = icmp eq i8 %i.bi, 2
  br i1 %.not34.i.i, label %bb.u, label %bb.t

bb.o:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.p:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load i8, ptr %i.bm, align 8, !range !535, !alias.scope !6610, !noalias !6611, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bn, 2
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.q:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops20PointStructPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo), !noalias !6611
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  call fastcc void @_RNvXs1P_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_14BatchPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ar) #24, !noalias !6611
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 8, !noalias !6621
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx.i.i, i64 72, i1 false), !noalias !6621
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i = phi i64 [ -1, %bb.q ], [ %.sroa.0.0.copyload.i.i, %bb.r ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.bp, align 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx3.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.t:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_RNvXsT_NtCs5QaNqjAn6vc_5shard10operationsNtB5_21OperationWithClockTagNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.625.sroa.4.0..sroa.625.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.528.i.i, i64 23, i1 false)
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.x:                                             ; preds = %bb.p
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.56.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.415.0..sroa_idx.i.i, i64 23, i1 false), !noalias !6611
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bu = load i8, ptr %i.bt, align 8, !range !535, !alias.scope !6610, !noalias !6611, !noundef !8 ; 2 uses
  %.not33.i.i = icmp eq i8 %i.bu, 2
  br i1 %.not33.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.417.0..sroa_idx.i.i, i64 23, i1 false), !noalias !6611
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i8 %i.bn, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.59.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.56.i.i, i64 23, i1 false)
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i8 %i.bu, ptr %.sroa.610.0..sroa_idx.i.i, align 8
  %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.i.i, i64 23, i1 false)
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.aa, %bb.w, %bb.s, %bb.o, %bb.m, %bb.l, %_RNvXs1w_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_34ConditionalInsertOperationInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.8.8.copyload = phi i64 [ 9, %bb.aa ], [ 7, %bb.w ], [ 3, %bb.s ], [ 8, %bb.o ], [ 6, %bb.m ], [ 5, %bb.l ], [ %.sroa.8.8.copyload.pre, %_RNvXs1w_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_34ConditionalInsertOperationInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6609
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.i.i)
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bw = load <4 x i8>, ptr %.sroa.12.8..sroa_idx, align 8
  %.sroa.17.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.bx = load <2 x i8>, ptr %.sroa.17.8..sroa_idx, align 4
  %.sroa.19.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %.sroa.19.8.copyload = load i16, ptr %.sroa.19.8..sroa_idx, align 2
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.by = load <2 x i64>, ptr %.sroa.20.8..sroa_idx, align 8
  %.sroa.22.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.22.8.copyload = load i64, ptr %.sroa.22.8..sroa_idx, align 8
  %.sroa.24.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.24.8.copyload = load i8, ptr %.sroa.24.8..sroa_idx, align 8
  %.sroa.27.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.27.8.copyload = load i64, ptr %.sroa.27.8..sroa_idx, align 8
  %.sroa.29.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.bz = load <8 x i8>, ptr %.sroa.29.8..sroa_idx, align 8
  %.sroa.38.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.38.8..sroa_idx, i64 64, i1 false)
  br label %_RNvXs4_NtCs5QaNqjAn6vc_5shard10operationsNtB5_26CollectionUpdateOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ab:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6622)
  %i.cb = load i64, ptr %i.ca, align 8, !range !56, !alias.scope !6625, !noalias !6626, !noundef !8 ; 2 uses
  switch i64 %i.cb, label %default.unreachable [
    i64 0, label %bb.ac
    i64 1, label %bb.ah
    i64 2, label %bb.bf
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6631
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cc), !noalias !6633
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !range !2659, !alias.scope !6634, !noalias !6633, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.ce, -2
  br i1 %.not.i.i.i, label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6631
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cd)
          to label %bb.af unwind label %bb.ae, !noalias !6633

bb.ae:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #19
          to label %common.resume.i unwind label %bb.ag, !noalias !6633

bb.af:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.p, align 8, !noalias !6631
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.i.i.i.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, i64 23, i1 false), !noalias !6609
  %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.5.i.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, i64 24, i1 false), !noalias !6609
  %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.cg = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.5.i.i.i.sroa.17.sroa.0.0.copyload = load i64, ptr %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.sroa_idx, i64 24, i1 false), !noalias !6609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6631
  br label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !6633
  unreachable

_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.af, %bb.ac
  %.sroa.5.i.i.i.sroa.17.sroa.0.0 = phi i64 [ undef, %bb.ac ], [ %.sroa.5.i.i.i.sroa.17.sroa.0.0.copyload, %bb.af ]
  %.sroa.5.i.i.i.sroa.7.0 = phi i64 [ undef, %bb.ac ], [ %.sroa.5.i.i.i.sroa.7.0.copyload, %bb.af ]
  %.sroa.5.i.i.i.sroa.0.0 = phi i8 [ undef, %bb.ac ], [ %.sroa.5.i.i.i.sroa.0.0.copyload, %bb.af ]
  %.sroa.0.0.i.i.i = phi i64 [ -2, %bb.ac ], [ %.sroa.0.0.copyload1.i.i.i, %bb.af ]
  %i.ci = phi <8 x i8> [ undef, %bb.ac ], [ %i.cg, %bb.af ]
  %i.cj = load <4 x i8>, ptr %i.q, align 8, !noalias !6635
  %.sroa.6.i.sroa.9.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ck = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx94, align 4, !noalias !6635
  %.sroa.6.i.sroa.11.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %.sroa.6.i.sroa.11.0.copyload103 = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx102, align 2, !noalias !6635
  %.sroa.6.i.sroa.12.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cl = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx106, align 8, !noalias !6635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6631
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.ah:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6642
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co), !noalias !6643
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i2.i.i)
  %i.cp = load i64, ptr %i.cm, align 8, !range !96, !alias.scope !6644, !noalias !6643, !noundef !8 ; 4 uses
  %.not.i3.i.i = icmp eq i64 %i.cp, -1
  br i1 %.not.i3.i.i, label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6642
  call void @llvm.experimental.noalias.scope.decl(metadata !6645)
  call void @llvm.experimental.noalias.scope.decl(metadata !6648)
  %i.cq = add nsw i64 %i.cp, -2
  %.inv.i.i.i.i = icmp samesign ult i64 %i.cp, 2
  %i.cr = select i1 %.inv.i.i.i.i, i64 2, i64 %i.cq
  switch i64 %i.cr, label %bb.aj [
    i64 0, label %bb.ak
    i64 1, label %bb.ap
    i64 2, label %bb.aq
  ]

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6650)
  call void @llvm.experimental.noalias.scope.decl(metadata !6653)
  %i.ct = load i64, ptr %i.cs, align 8, !range !45, !alias.scope !6655, !noalias !6656, !noundef !8
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %i.cu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !6655, !noalias !6656, !noundef !8
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 71
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !6655, !noalias !6656, !noundef !8
  %.not.i.i.i.i.i = icmp sgt i8 %i.cy, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !6655, !noalias !6656 ; 5 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !6655, !noalias !6656 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.da = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.db = atomicrmw add ptr %i.da, i64 1 monotonic, align 8, !noalias !6657
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %.invoke.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !prof !3107

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i.i.i.i.i, %bb.am ]
  store ptr %.sroa.06.0.i.i.i.i.i, ptr %.sroa.4.i.i.i.i, align 8, !alias.scope !6650, !noalias !6658
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.al
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %.sroa.4.i.i.i.i, %bb.al ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %i.cw, %bb.al ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !6650, !noalias !6658
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %storemerge.i.i.i.i.i, ptr %i.dd, align 8, !alias.scope !6645, !noalias !6659
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8, !noalias !6660
  store i64 %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6645, !noalias !6659
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !6660
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6645, !noalias !6659
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.ap:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.bd, !noalias !6643

bb.aq:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !6661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6664
  call void @llvm.experimental.noalias.scope.decl(metadata !6666)
  call void @llvm.experimental.noalias.scope.decl(metadata !6669)
  %i.dg = trunc nuw i64 %i.cp to i1               ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sink.i.sroa.gep16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  br i1 %i.dg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !6671, !noalias !6672, !noundef !8
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !6671, !noalias !6672, !noundef !8
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !6671, !noalias !6672 ; 5 uses
  %.val21.i.i.i.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !6671, !noalias !6672 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.at, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dm = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !6673
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %.invoke.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, !prof !3107

.invoke.i.i.i:                                    ; preds = %bb.au, %bb.ao
  %i.dp = phi ptr [ %.val.i.i.i.i.i, %bb.ao ], [ %.val.i.i.i.i.i.i, %bb.au ]
  %i.dq = phi i64 [ %.val21.i.i.i.i.i, %bb.ao ], [ %.val21.i.i.i.i.i.i, %bb.au ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.dp, i64 noundef %i.dq) #23
          to label %.cont.i.i.i unwind label %bb.bd, !noalias !6643

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.as, %bb.au, %bb.at
  %.sroa.06.0.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %bb.au ], [ inttoptr (i64 16 to ptr), %bb.at ], [ %.val.i.i.i.i.i.i, %bb.as ]
  store ptr %.sroa.06.0.i.i.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i.i.i, align 8, !alias.scope !6666, !noalias !6674
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.ar
  %.sink.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i.i.i, %bb.ar ]
  %.sroa.58.0.sink.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %i.di, %bb.ar ]
  %i.dr = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ 1, %bb.ar ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !6666, !noalias !6674
  store i64 %i.dr, ptr %i.m, align 8, !alias.scope !6666, !noalias !6674
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !6675)
  call void @llvm.experimental.noalias.scope.decl(metadata !6678)
  %i.dt = load i64, ptr %i.ds, align 8, !range !45, !alias.scope !6680, !noalias !6681, !noundef !8
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %i.du, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !6680, !noalias !6681, !noundef !8
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.aw:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 87
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !6680, !noalias !6681, !noundef !8
  %.not.i1.i.i.i.i.i = icmp sgt i8 %i.dy, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i11.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !6680, !noalias !6681 ; 5 uses
  %.val21.i12.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !6680, !noalias !6681 ; 2 uses
  br i1 %.not.i1.i.i.i.i.i, label %bb.ax, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i.i13.i.i.i.i.i = icmp eq ptr %.val.i11.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ea = getelementptr inbounds i8, ptr %.val.i11.i.i.i.i.i, i64 -16
  %i.eb = atomicrmw add ptr %i.ea, i64 1 monotonic, align 8, !noalias !6682
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.az, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, !prof !3107

bb.az:                                            ; preds = %bb.ay
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i.i.i.i.i, i64 noundef %.val21.i12.i.i.i.i.i) #23
          to label %.noexc.i.i.i.i.i unwind label %bb.ba, !noalias !6683

.noexc.i.i.i.i.i:                                 ; preds = %bb.az
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i: ; preds = %bb.aw, %bb.ay, %bb.ax
  %.sroa.06.0.i6.i.i.i.i.i = phi ptr [ %.val.i11.i.i.i.i.i, %bb.ay ], [ inttoptr (i64 16 to ptr), %bb.ax ], [ %.val.i11.i.i.i.i.i, %bb.aw ]
  store ptr %.sroa.06.0.i6.i.i.i.i.i, ptr %.sroa.4.i.i.i.i.i, align 8, !alias.scope !6675, !noalias !6684
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !6685, !noalias !6664
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i8 %i.ef, 0
  %or.cond.i.not.i.i.i.i.i = select i1 %i.dg, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i.i, label %.body.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.bc, !noalias !6683

bb.bc:                                            ; preds = %bb.bb
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !6683
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, %bb.av
  %.sink.i7.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ %.sroa.4.i.i.i.i.i, %bb.av ]
  %.sroa.58.0.sink.i8.i.i.i.i.i = phi i64 [ %.val21.i12.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ %i.dw, %bb.av ]
  %storemerge.i9.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ 1, %bb.av ]
  store i64 %.sroa.58.0.sink.i8.i.i.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i.i.i, align 8, !alias.scope !6675, !noalias !6684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !6659
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.i, align 8, !noalias !6664
  %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i, align 8, !noalias !6664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6664
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %storemerge.i9.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6645, !noalias !6659
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6645, !noalias !6659
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6645, !noalias !6659
  %.sroa.0.0.copyload1.pre.i.i.i = load i64, ptr %i.n, align 8, !noalias !6642
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.bd:                                            ; preds = %.invoke.i.i.i, %bb.ap
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bd, %bb.bb, %bb.ba
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.eh, %bb.bd ], [ %i.ed, %bb.bb ], [ %i.ed, %bb.ba ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #19
          to label %common.resume.i unwind label %bb.be, !noalias !6643

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ap, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  %.sroa.0.0.copyload1.i4.i.i = phi i64 [ %.sroa.0.0.copyload1.pre.i.i.i, %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 3, %bb.ap ]
  %.sroa.5.0..sroa_idx2.i5.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i5.i.i, i64 40, i1 false), !noalias !6642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6642
  br label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.be:                                            ; preds = %.body.i.i.i
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !6643
  unreachable

_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %bb.ah
  %.sroa.9.32.copyload.i = phi i64 [ %.sroa.0.0.copyload1.i4.i.i, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ -1, %bb.ah ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !6688
  store i64 %.sroa.9.32.copyload.i, ptr %i.u, align 8, !alias.scope !6637, !noalias !6688
  %.sroa.5.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i7.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i.i, i64 40, i1 false), !noalias !6688
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6636
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %bb.bh unwind label %bb.bg, !noalias !6626

bb.bf:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6636
  call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ek) #24, !noalias !6626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6636
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.el)
          to label %bb.bk unwind label %bb.bj, !noalias !6626

bb.bg:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops12PointIdsListECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #19
          to label %common.resume.i unwind label %bb.bi, !noalias !6626

bb.bh:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.5.i.i.i.sroa.0.0.copyload113 = load i8, ptr %.sroa.5.0..sroa_idx.i7.i.i, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx, i64 23, i1 false), !noalias !6609
  %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.5.i.i.i.sroa.7.0.copyload115 = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx, i64 24, i1 false), !noalias !6609
  %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.en = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx, align 8, !noalias !6609
  %i.eo = load <4 x i8>, ptr %i.t, align 8, !noalias !6635
  %.sroa.6.i.sroa.9.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ep = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx92, align 4, !noalias !6635
  %.sroa.6.i.sroa.11.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %.sroa.6.i.sroa.11.0.copyload101 = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx100, align 2, !noalias !6635
  %.sroa.6.i.sroa.12.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.eq = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx104, align 8, !noalias !6635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6636
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.bi:                                            ; preds = %bb.bj, %bb.bg
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !6626
  unreachable

bb.bj:                                            ; preds = %bb.bf
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.s) #19
          to label %common.resume.i unwind label %bb.bi, !noalias !6626

bb.bk:                                            ; preds = %bb.bf
  %i.et = load <4 x i8>, ptr %i.s, align 8, !noalias !6635
  %.sroa.6.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.eu = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx, align 4, !noalias !6635
  %.sroa.6.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.sroa.6.i.sroa.11.0.copyload = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx, align 2, !noalias !6635
  %.sroa.6.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ev = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx, align 8, !noalias !6635
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.9.8.copyload.i = load i64, ptr %.sroa.9.8..sroa_idx.i, align 8, !noalias !6635
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.5.i.i.i.sroa.0.0.copyload112 = load i8, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.6.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.11.8..sroa_idx.i.sroa_idx, i64 23, i1 false), !noalias !6609
  %.sroa.5.i.i.i.sroa.7.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.5.i.i.i.sroa.7.0.copyload114 = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.11.8..sroa_idx.i.sroa_idx, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.8.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.11.8..sroa_idx.i.sroa_idx, i64 24, i1 false), !noalias !6609
  %.sroa.5.i.i.i.sroa.9.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.ew = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.11.8..sroa_idx.i.sroa_idx, align 8, !noalias !6609
  %.sroa.5.i.i.i.sroa.17.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.ex = load i64, ptr %.sroa.5.i.i.i.sroa.17.0..sroa.11.8..sroa_idx.i.sroa_idx, align 8, !noalias !6609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !6609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6636
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.bk, %bb.bh, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.5.i.i.i.sroa.17.sroa.0.1 = phi i64 [ %.sroa.5.i.i.i.sroa.17.sroa.0.0, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.bh ], [ %i.ex, %bb.bk ]
  %.sroa.5.i.i.i.sroa.7.1 = phi i64 [ %.sroa.5.i.i.i.sroa.7.0, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i.i.sroa.7.0.copyload115, %bb.bh ], [ %.sroa.5.i.i.i.sroa.7.0.copyload114, %bb.bk ]
  %.sroa.5.i.i.i.sroa.0.1 = phi i8 [ %.sroa.5.i.i.i.sroa.0.0, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i.i.sroa.0.0.copyload113, %bb.bh ], [ %.sroa.5.i.i.i.sroa.0.0.copyload112, %bb.bk ]
  %.sroa.6.i.sroa.11.0 = phi i16 [ %.sroa.6.i.sroa.11.0.copyload103, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.6.i.sroa.11.0.copyload101, %bb.bh ], [ %.sroa.6.i.sroa.11.0.copyload, %bb.bk ]
  %.sroa.9.0.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.9.32.copyload.i, %bb.bh ], [ %.sroa.9.8.copyload.i, %bb.bk ]
  %i.ey = phi <8 x i8> [ %i.ci, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.en, %bb.bh ], [ %i.ew, %bb.bk ]
  %i.ez = phi <4 x i8> [ %i.cj, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.eo, %bb.bh ], [ %i.et, %bb.bk ]
  %i.fa = phi <2 x i64> [ %i.cl, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.eq, %bb.bh ], [ %i.ev, %bb.bk ]
  %i.fb = phi <2 x i8> [ %i.ck, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.ep, %bb.bh ], [ %i.eu, %bb.bk ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ab, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6, i64 23, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8, i64 24, i1 false)
  store i64 %.sroa.5.i.i.i.sroa.17.sroa.0.1, ptr %i.ad, align 8
  %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5, i64 24, i1 false)
  br label %_RNvXs4_NtCs5QaNqjAn6vc_5shard10operationsNtB5_26CollectionUpdateOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bl:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6689)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i2.i)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.af, label %default.unreachable1.i.i [
    i64 0, label %bb.bm
    i64 1, label %bb.bn
    i64 2, label %bb.by
    i64 3, label %bb.bz
    i64 4, label %bb.ca
  ]

default.unreachable1.i.i:                         ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.fd = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call fastcc void @_RNvXst_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_12SetPayloadOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(248) %i.fd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.fc) #24
  br label %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i3.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6692)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6695
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path8JsonPathENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.fc), !noalias !6698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6695
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !range !15, !alias.scope !6699, !noalias !6698, !noundef !8
  %.not.i.i4.i = icmp eq i64 %i.ff, -1
  br i1 %.not.i.i4.i, label %bb.bp, label %bb.bo

end_hunk_1
