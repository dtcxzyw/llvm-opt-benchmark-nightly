Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.203?download=true
inline.NumInlined: 194
inline.NumDeleted: 85
begin_hunk_0_@_RNvXNtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5countNtNtCs5QaNqjAn6vc_5shard5count20CountRequestInternalNtB4_11Generalizer14remove_details:bb.a
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ -2, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i8, ptr %i.d, align 8, !range !27, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.e, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer6pointsNtNtCs5QaNqjAn6vc_5shard6scroll21ScrollRequestInternalNtB4_11Generalizer14remove_details(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.016 = alloca [40 x i8], align 8          ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [104 x i8], align 8               ; 6 uses
  %i.j = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.l, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.k) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !7, !noundef !5 ; 4 uses
  %.not4 = icmp eq i64 %i.n, -1
  br i1 %.not4, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.o = add nsw i64 %i.n, -2
  %.inv.i = icmp samesign ult i64 %i.n, 2
  %i.p = select i1 %.inv.i, i64 2, i64 %i.o
  switch i64 %i.p, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !27, !alias.scope !172, !noalias !169, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %i.r, ptr %i.s, align 8, !alias.scope !169, !noalias !172
  store i64 2, ptr %i.f, align 8, !alias.scope !169, !noalias !172
  br label %_RNvXsdo_NtCs607s0NAIaWN_7segment5typesNtB6_20WithPayloadInterfaceNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path8JsonPathENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.h
  store i64 3, ptr %i.f, align 8, !alias.scope !169, !noalias !172
  br label %_RNvXsdo_NtCs607s0NAIaWN_7segment5typesNtB6_20WithPayloadInterfaceNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !noalias !174
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path8JsonPathENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %.noexc9 unwind label %bb.m

.noexc9:                                          ; preds = %bb.i
  store i64 %i.n, ptr %i.f, align 8, !alias.scope !169, !noalias !172
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !noalias !174
  br label %_RNvXsdo_NtCs607s0NAIaWN_7segment5typesNtB6_20WithPayloadInterfaceNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.d
  store i64 -1, ptr %i.h, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvXsdo_NtCs607s0NAIaWN_7segment5typesNtB6_20WithPayloadInterfaceNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !6, !noundef !5
  %.not5 = icmp eq i64 %i.x, -1
  br i1 %.not5, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.q, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.y, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(104) %i.i) #19
          to label %bb.ad unwind label %bb.ac

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RNvXsdo_NtCs607s0NAIaWN_7segment5typesNtB6_20WithPayloadInterfaceNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %.noexc9, %.noexc, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.s unwind label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !range !27, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.aa, ptr %i.ab, align 8
  store i64 -1, ptr %i.g, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !8, !noundef !5 ; 2 uses
  %.not6 = icmp eq i64 %i.ad, -2
  br i1 %.not6, label %bb.aa, label %bb.t

bb.q:                                             ; preds = %.body, %bb.r
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ae, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #19
          to label %bb.l unwind label %bb.ac

bb.r:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.t:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %.not.i = icmp eq i64 %i.ad, -1
  br i1 %.not.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !178
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %.noexc12 unwind label %bb.ab

.noexc12:                                         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !178
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %bb.v, !noalias !183

bb.v:                                             ; preds = %.noexc12
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %.body unwind label %bb.w, !noalias !183

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !183
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %.noexc12
  %.sroa.019.0.copyload = load i64, ptr %i.d, align 8, !noalias !184
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  %.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.016, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !178
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aj = load i8, ptr %i.ai, align 8, !range !185, !alias.scope !175, !noalias !186, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.al = load i32, ptr %i.ak, align 8, !range !187, !alias.scope !175, !noalias !186, !noundef !5 ; 2 uses
  %.not6.i = icmp eq i32 %i.al, -1                ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 228
  %.sroa.54.i.sroa.0.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.54.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.54.i.sroa.4.0.copyload = load i64, ptr %.sroa.54.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.54.i.sroa.4.0 = select i1 %.not6.i, i64 undef, i64 %.sroa.54.i.sroa.4.0.copyload
  %.sroa.54.i.sroa.0.0 = select i1 %.not6.i, i32 undef, i32 %.sroa.54.i.sroa.0.0.copyload
  br label %bb.aa

bb.x:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !188
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am)
          to label %.noexc13 unwind label %bb.ab

.noexc13:                                         ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit7.i unwind label %bb.y, !noalias !192

bb.y:                                             ; preds = %.noexc13
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %.body unwind label %bb.z, !noalias !192

bb.z:                                             ; preds = %bb.y
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !192
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit7.i: ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.016.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.016, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.5.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.24.copyload = load i32, ptr %.sroa.5.24..sroa_idx, align 8, !noalias !193
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.6.24.copyload = load i32, ptr %.sroa.6.24..sroa_idx, align 4, !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !188
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit7.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.p
  %.sroa.5.sroa.5.sroa.4.0 = phi i64 [ undef, %bb.p ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit7.i ], [ %.sroa.54.i.sroa.4.0, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.5.sroa.5.sroa.0.0 = phi i32 [ undef, %bb.p ], [ %.sroa.6.24.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit7.i ], [ %.sroa.54.i.sroa.0.0, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.5.sroa.6.0 = phi i8 [ undef, %bb.p ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit7.i ], [ %i.aj, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.5.sroa.4.0 = phi i32 [ undef, %bb.p ], [ %.sroa.5.24.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit7.i ], [ %i.al, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.0.0 = phi i64 [ -2, %bb.p ], [ -1, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit7.i ], [ %.sroa.019.0.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  store <2 x i64> %i.j, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.as, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 104, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.0.0, ptr %i.av, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.016, i64 40, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %.sroa.5.sroa.5.sroa.0.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.sroa.5.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %.sroa.5.sroa.6.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ab:                                            ; preds = %bb.x, %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.y, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.ab ], [ %i.ag, %bb.v ], [ %i.ao, %bb.y ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types10WithVectorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #19
          to label %bb.q unwind label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.q, %bb.l
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ad:                                            ; preds = %bb.l
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs0_NtNtCsPYQCUnoTxQ_10collection10operations8loggableNtNtCs5QaNqjAn6vc_5shard6scroll21ScrollRequestInternalNtB5_8Loggable12request_hash(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [1 x i8], align 1                ; 4 uses
  %i.ac = alloca [72 x i8], align 8               ; 49 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 8317987319222330741, ptr %i.ac, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store i64 7237128888997146477, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 -1, ptr %i.ab, align 1
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ae = load i8, ptr %i.ad, align 8, !range !185, !alias.scope !194, !noalias !197, !noundef !5 ; 4 uses
  %i.af = icmp ne i8 %i.ae, 2
  %i.ag = zext i1 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !199
  store i64 %i.ag, ptr %i.aa, align 8, !noalias !199
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #21, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !199
  %.not.i = icmp eq i8 %i.ae, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = trunc nuw i8 %i.ae to i1
  %i.ai = zext nneg i8 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !204
  store i64 %i.ai, ptr %i.z, align 8, !noalias !204
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #21, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !204
  br i1 %i.ah, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.aj = load i64, ptr %0, align 8, !range !4, !alias.scope !194, !noalias !197, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !209
  store i64 %i.aj, ptr %i.y, align 8, !noalias !209
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #21, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !209
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 249
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 16) #21
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !194, !noalias !197, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !214
  store i64 %i.an, ptr %i.x, align 8, !noalias !214
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #21, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !214
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !194, !noalias !197, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !217
  store i64 %i.ap, ptr %i.w, align 8, !noalias !217
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #21, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !217
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !8, !alias.scope !194, !noalias !197, !noundef !5 ; 2 uses
  %i.as = icmp ne i64 %i.ar, -2
  %i.at = zext i1 %i.as to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !220
  store i64 %i.at, ptr %i.v, align 8, !noalias !220
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #21, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !220
end_hunk_0
begin_hunk_1_@_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.n unwind label %bb.u

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.u:                                             ; preds = %bb.s, %bb.n, %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.v:                                             ; preds = %bb.h
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5QaNqjAn6vc_5shard5count20CountRequestInternalNtCscr48XpBcNGU_8schemars10JsonSchema42__schemars_private_non_optional_json_schemaCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([288 x i8]) align 8 captures(address) dereferenceable(288) %0, ptr noalias nofree noundef align 8 dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNvNtCs5QaNqjAn6vc_5shard5counts0_1__NtB4_20CountRequestInternalNtCscr48XpBcNGU_8schemars10JsonSchema11json_schema(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5QaNqjAn6vc_5shard6scroll21ScrollRequestInternalNtCscr48XpBcNGU_8schemars10JsonSchema42__schemars_private_non_optional_json_schemaCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([288 x i8]) align 8 captures(address) dereferenceable(288) %0, ptr noalias nofree noundef align 8 dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNvNtCs5QaNqjAn6vc_5shard6scrolls0_1__NtB4_21ScrollRequestInternalNtCscr48XpBcNGU_8schemars10JsonSchema11json_schema(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_f32_leCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.c, align 8, !alias.scope !393, !noalias !396, !noundef !5 ; 3 uses
  %i.d = icmp ult i64 %.val4.i.i, 4
  br i1 %i.d, label %_RNCNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u32_le0CsPYQCUnoTxQ_10collection.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val5.i.i = load ptr, ptr %0, align 8, !alias.scope !393, !noalias !396, !nonnull !5, !align !399, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !400, !noundef !5
  %i.g = icmp ugt i64 %i.f, 3
  br i1 %i.g, label %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store i32 0, ptr %i.a, align 4, !noalias !400
  call fastcc void @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13copy_to_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4), !noalias !396
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.a, align 4, !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  br label %_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u32_leCsPYQCUnoTxQ_10collection.exit

_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %.val5.i.i, align 8, !noalias !400, !nonnull !5, !noundef !5
  %.sroa.03.0.copyload.i.i = load i32, ptr %i.h, align 1, !noalias !400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val5.i.i, i64 noundef range(i64 0, 9) 4), !noalias !404
  %i.i = add i64 %.val4.i.i, -4
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !405, !noalias !396
  br label %_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u32_leCsPYQCUnoTxQ_10collection.exit

_RNCNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u32_le0CsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !393
  store i64 4, ptr %i.b, align 8, !noalias !393
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val4.i.i, ptr %i.j, align 8, !noalias !393
  call void @_RNvCs14kzo5Se9zC_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #20, !noalias !393
  unreachable

_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u32_leCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c, %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i.i
  %.sroa.6.0.ph.i = phi i32 [ %.sroa.03.0.copyload.i.i, %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i.i ], [ %.sroa.02.0.copyload.i.i, %bb.c ]
  %i.k = bitcast i32 %.sroa.6.0.ph.i to float
  ret float %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_f64_leCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val4.i.i = load i64, ptr %i.c, align 8, !alias.scope !406, !noalias !409, !noundef !5 ; 3 uses
  %i.d = icmp ult i64 %.val4.i.i, 8
  br i1 %i.d, label %_RNCNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u64_le0CsPYQCUnoTxQ_10collection.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val5.i.i = load ptr, ptr %0, align 8, !alias.scope !406, !noalias !409, !nonnull !5, !align !399, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !412, !noundef !5
  %i.g = icmp ugt i64 %i.f, 7
  br i1 %i.g, label %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !412
  store i64 0, ptr %i.a, align 8, !noalias !412
  call fastcc void @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13copy_to_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.a, i64 noundef 8), !noalias !409
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !412
  br label %_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u64_leCsPYQCUnoTxQ_10collection.exit

_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %.val5.i.i, align 8, !noalias !412, !nonnull !5, !noundef !5
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.h, align 1, !noalias !412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val5.i.i, i64 noundef range(i64 0, 9) 8), !noalias !416
  %i.i = add i64 %.val4.i.i, -8
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !417, !noalias !409
  br label %_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u64_leCsPYQCUnoTxQ_10collection.exit

_RNCNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u64_le0CsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !406
  store i64 8, ptr %i.b, align 8, !noalias !406
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val4.i.i, ptr %i.j, align 8, !noalias !406
  call void @_RNvCs14kzo5Se9zC_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #20, !noalias !406
  unreachable

_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf10get_u64_leCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c, %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i.i
  %.sroa.6.0.ph.i = phi i64 [ %.sroa.03.0.copyload.i.i, %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i.i ], [ %.sroa.02.0.copyload.i.i, %bb.c ]
  %i.k = bitcast i64 %.sroa.6.0.ph.i to double
  ret double %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13copy_to_sliceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 4, 9) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !418, !noalias !421, !noundef !5 ; 3 uses
  %i.f = icmp ult i64 %.val16.i, %2
  br i1 %i.f, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.val17.i = load ptr, ptr %0, align 8, !alias.scope !418, !noalias !421, !nonnull !5, !align !399, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val17.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i, %.preheader.i
  %.sroa.0.022.i = phi ptr [ %1, %.preheader.i ], [ %i.l, %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i ] ; 2 uses
  %.sroa.9.021.i = phi i64 [ %2, %.preheader.i ], [ %i.m, %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i ] ; 2 uses
  %.val181920.i = phi i64 [ %.val16.i, %.preheader.i ], [ %i.n, %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i ] ; 2 uses
  %i.h = load ptr, ptr %.val17.i, align 8, !noalias !424, !nonnull !5, !noundef !5
  %i.i = load i64, ptr %i.g, align 8, !noalias !424, !noundef !5
  %.sroa.3.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %.val181920.i)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.9.021.i, i64 %.sroa.3.0.i.i) ; 8 uses
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull %.sroa.0.022.i, i64 noundef %..i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !431
  store i64 %..i.i, ptr %i.c, align 8, !noalias !432
  %i.j = load i64, ptr %i.g, align 8, !alias.scope !428, !noalias !433, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %..i.i, %i.j
  br i1 %.not.i.i.i, label %bb.c, label %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i, !prof !36

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !432
  store i64 %i.j, ptr %i.b, align 8, !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !432
  store ptr %i.c, ptr %i.a, align 8, !noalias !432
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !432
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.k, align 8, !noalias !432
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !432
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22, !noalias !434
  unreachable

_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 %..i.i
  %i.m = sub nuw nsw i64 %.sroa.9.021.i, %..i.i   ; 2 uses
  tail call void @_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val17.i, i64 noundef range(i64 0, 9) %..i.i), !noalias !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !431
  %i.n = sub nuw i64 %.val181920.i, %..i.i        ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !435, !noalias !421
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.val16.i, ptr %i.p, align 8
  call void @_RNvCs14kzo5Se9zC_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #20
  unreachable

_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsPYQCUnoTxQ_10collection.exit: ; preds = %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13has_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf6get_u8CsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %0, align 8, !nonnull !5, !align !399, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs14kzo5Se9zC_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @35) #20
  unreachable

_RNvXs_NtNtCsgOCJwUSa4vG_5tonic5codec6bufferNtB4_9DecodeBufNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf7advance.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %.val1, align 8, !nonnull !5, !noundef !5
  %i.f = load i8, ptr %i.e, align 1, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, i64 noundef range(i64 0, 9) 1), !noalias !436
  %i.g = add i64 %.val, -1
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !436
  ret i8 %i.f

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6string6encodeNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsPYQCUnoTxQ_10collection(i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path8JsonPathENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment9json_path8JsonPathENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer16serialize_struct(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldbECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3end(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionjEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs607s0NAIaWN_7segment5types10WithVectorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types8order_by16OrderByInterfaceEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_strINtNvXNtNtCs3bXQNzrqeHk_6chrono8datetime5serdeINtB25_8DateTimepENtB12_9Serialize9serialize13FormatIso8601NtNtNtB27_6offset3utc3UtcEECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCs607s0NAIaWN_7segment9json_pathNtB6_8JsonPathNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9DirectionEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1j_Cs3EstPQUvMw7_13ordered_floatINtB7_12OrderedFloatdENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsi_NtCs3bXQNzrqeHk_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemNtNtCskKLDkoKarTP_4core4hash4Hash10hash_sliceNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCskKLDkoKarTP_4core4hash4Hash10hash_sliceNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core4hash4Hash10hash_sliceNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs607s0NAIaWN_7segment5types9ConditionNtNtCskKLDkoKarTP_4core4hash4Hash10hash_sliceNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 24530244778869085), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs2_Cs1XVLCUuSBg0_4zmijNtB6_6Buffer13format_finitedECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef dereferenceable(24), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXsu_Cs6kQH99PsUHL_4itoayNtB5_8Unsigned3fmt(i64 noundef, ptr noalias nofree noundef dereferenceable(20)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
end_hunk_1
