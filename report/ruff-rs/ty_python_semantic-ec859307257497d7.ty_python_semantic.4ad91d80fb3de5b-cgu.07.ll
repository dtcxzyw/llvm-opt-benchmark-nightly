Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureENCNvNvMs_B1o_NtB1o_17CallableSignature23apply_type_mapping_impl36try_apply_type_mapping_for_paramspecs0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_:bb.a
  store ptr %i.aa, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !20859
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !20859
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.aq, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !20859
  %i.bm = invoke noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters11with_prefixINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1C_5slice4iter4IterNtB6_9ParameterENCNCNvNvMs_B6_NtB6_17CallableSignature23apply_type_mapping_impl36try_apply_type_mapping_for_paramspecs0_0s_0EEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
          to label %bb.l unwind label %bb.j, !noalias !20858 ; 3 uses

bb.l:                                             ; preds = %bb.k
  store ptr %i.bm, ptr %i.e, align 8, !noalias !20859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20859
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !noalias !20858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !noalias !20858
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type23apply_type_mapping_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %i.aq)
          to label %_RNCNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB8_17CallableSignature23apply_type_mapping_impl36try_apply_type_mapping_for_paramspecs0_0Bc_.exit unwind label %bb.m, !noalias !20858

bb.m:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !20866
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit.i unwind label %bb.o, !noalias !20858

bb.o:                                             ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit.i, %bb.e
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !20858
  unreachable

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit.i, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit.i ], [ %i.ax, %bb.e ]
  resume { ptr, i32 } %.pn.pn.i

_RNCNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB8_17CallableSignature23apply_type_mapping_impl36try_apply_type_mapping_for_paramspecs0_0Bc_.exit: ; preds = %bb.l
  %i.bs = extractvalue { i32, i32 } %i.ai, 1
  %i.bt = extractvalue { i32, i32 } %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !20867
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !20867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bm, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bt, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bs, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i32> %i.ak, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.am, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNCNvNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB8_17CallableSignature23apply_type_mapping_impl36try_apply_type_mapping_for_paramspecs0_0Bc_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureENCNvXNvMs1g_NtB1q_5classNtB2E_9ClassType27into_callable_with_receiverB2Q_NtB2x_11InnerTrait_28into_callable_with_receiver_s2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 16 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !20911, !nonnull !15, !noundef !15 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !20911, !nonnull !15, !noundef !15
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.i, ptr %1, align 8, !alias.scope !20911
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20913)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val7.i = load ptr, ptr %i.k, align 8, !alias.scope !20913, !noalias !20914, !nonnull !15, !noundef !15 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val7.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noalias !20915, !noundef !15
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !20915, !nonnull !15, !noundef !15 ; 6 uses
  %i.p = load i64, ptr %i.o, align 8, !range !47, !noalias !20915, !noundef !15
  %switch.i.i = icmp samesign ult i64 %i.p, 2
  br i1 %switch.i.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.r = load i8, ptr %i.q, align 4, !range !20, !alias.scope !20916, !noalias !20915, !noundef !15
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !20912, !noalias !20917, !nonnull !15, !noundef !15
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !20912, !noalias !20917, !nonnull !15, !align !18, !noundef !15
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.039.0.copyload.i = load i32, ptr %i.w, align 8, !alias.scope !20918, !noalias !20915 ; 4 uses
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %.sroa.440.0.copyload.i = load i32, ptr %.sroa.440.0..sroa_idx.i, align 4, !alias.scope !20918, !noalias !20915 ; 2 uses
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.541.0.copyload.i = load i32, ptr %.sroa.541.0..sroa_idx.i, align 8, !alias.scope !20918, !noalias !20915 ; 2 uses
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %.sroa.642.0.copyload.i = load i32, ptr %.sroa.642.0..sroa_idx.i, align 4, !alias.scope !20918, !noalias !20915
  %i.x = load ptr, ptr %i.j, align 8, !alias.scope !20912, !noalias !20917, !nonnull !15, !noundef !15 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !20912, !noalias !20917, !nonnull !15, !align !18, !noundef !15 ; 5 uses
  %.not.i13.i = icmp eq i32 %.sroa.039.0.copyload.i, -1
  br i1 %.not.i13.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ne i32 %.sroa.039.0.copyload.i, 17
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i32 %.sroa.039.0.copyload.i, 29
  br i1 %i.ab, label %_RNCNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBd_9ClassType27into_callable_with_receiverB10_NtB6_11InnerTrait_28into_callable_with_receiver_s2_0s_0Bh_.exit.i.i, label %bb.g

_RNCNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBd_9ClassType27into_callable_with_receiverB10_NtB6_11InnerTrait_28into_callable_with_receiver_s2_0s_0Bh_.exit.i.i: ; preds = %bb.f
  %i.ac = tail call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB8_20BoundTypeVarInstance7typevarDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.440.0.copyload.i, i32 noundef %.sroa.541.0.copyload.i, ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.z), !noalias !20919 ; 2 uses
  %i.ad = extractvalue { i32, i32 } %i.ac, 0
  %i.ae = extractvalue { i32, i32 } %i.ac, 1
  %i.af = tail call noundef zeroext i1 @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance7is_self(i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.z), !noalias !20919
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNCNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBd_9ClassType27into_callable_with_receiverB10_NtB6_11InnerTrait_28into_callable_with_receiver_s2_0s_0Bh_.exit.i.i, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !20912, !noalias !20917, !nonnull !15, !align !19, !noundef !15
  %i.ai = load <4 x i32>, ptr %i.ah, align 4, !noalias !20915
  br label %bb.i

bb.h:                                             ; preds = %_RNCNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBd_9ClassType27into_callable_with_receiverB10_NtB6_11InnerTrait_28into_callable_with_receiver_s2_0s_0Bh_.exit.i.i, %bb.e, %.thread.i
  %.ph.i = phi ptr [ %i.z, %_RNCNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBd_9ClassType27into_callable_with_receiverB10_NtB6_11InnerTrait_28into_callable_with_receiver_s2_0s_0Bh_.exit.i.i ], [ %i.v, %.thread.i ], [ %i.z, %bb.e ]
  %.ph53.i = phi ptr [ %i.x, %_RNCNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBd_9ClassType27into_callable_with_receiverB10_NtB6_11InnerTrait_28into_callable_with_receiver_s2_0s_0Bh_.exit.i.i ], [ %i.t, %.thread.i ], [ %i.x, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !20912, !noalias !20917, !nonnull !15, !align !19, !noundef !15
  %i.al = load <4 x i32>, ptr %i.ak, align 4, !noalias !20915 ; 5 uses
  %i.am = extractelement <4 x i32> %i.al, i64 0
  %i.an = extractelement <4 x i32> %i.al, i64 1
  %i.ao = extractelement <4 x i32> %i.al, i64 2
  %i.ap = extractelement <4 x i32> %i.al, i64 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %.ph53.i, %bb.h ], [ %i.x, %bb.g ] ; 2 uses
  %i.ar = phi ptr [ %.ph.i, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.525.0.i = phi i32 [ %i.ap, %bb.h ], [ %.sroa.642.0.copyload.i, %bb.g ]
  %.sroa.4.0.i = phi i32 [ %i.ao, %bb.h ], [ %.sroa.541.0.copyload.i, %bb.g ]
  %.sroa.3.0.i = phi i32 [ %i.an, %bb.h ], [ %.sroa.440.0.copyload.i, %bb.g ]
  %.sroa.019.0.i = phi i32 [ %i.am, %bb.h ], [ %.sroa.039.0.copyload.i, %bb.g ]
  %i.as = phi <4 x i32> [ %i.al, %bb.h ], [ %i.ai, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !20912, !noalias !20917, !nonnull !15, !align !19, !noundef !15 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !noalias !20915, !noundef !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !20915
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !alias.scope !20913, !noalias !20914, !noundef !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !20913, !noalias !20914
  %i.bc = tail call { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext14merge_optional(ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ar, i32 noundef %i.av, i32 %i.ax, i32 noundef %i.az, i32 %i.bb), !noalias !20915 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20915
  %i.bd = atomicrmw add ptr %.val7.i, i64 1 monotonic, align 8, !noalias !20915
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bf = extractvalue { i32, i32 } %i.bc, 1
  %i.bg = extractvalue { i32, i32 } %i.bc, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val10.i = load i32, ptr %i.bi, align 8, !alias.scope !20913, !noalias !20914, !noundef !15 ; 2 uses
  %.not.i14.not.i = icmp eq i32 %.val10.i, 0
  %i.bj = zext i32 %.val10.i to i64
  %i.bk = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 4294967295
  %2 = trunc nuw i64 %i.bk to i32
  %3 = add nuw i32 %2, 1
  %4 = select i1 %.not.i14.not.i, i32 undef, i32 %3
  %.sroa.02.0.i16.i = select i1 %i.bl, i32 %4, i32 0, !prof !72
  store i64 0, ptr %i.c, align 8, !alias.scope !20920, !noalias !20915
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.sroa.019.0.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !20920, !noalias !20915
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %.sroa.3.0.i, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4, !alias.scope !20920, !noalias !20915
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %.sroa.4.0.i, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !alias.scope !20920, !noalias !20915
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %.sroa.525.0.i, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 4, !alias.scope !20920, !noalias !20915
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  store ptr %.val7.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !20920, !noalias !20915
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.bg, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !20920, !noalias !20915
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.bf, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !20920, !noalias !20915
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bm = load <2 x i32>, ptr %i.bh, align 8, !alias.scope !20913, !noalias !20914
  store <2 x i32> %i.bm, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !20920, !noalias !20915
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %.sroa.02.0.i16.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !20920, !noalias !20915
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !20912, !noalias !20917, !nonnull !15, !align !19, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20915
  store <4 x i32> %i.as, ptr %i.b, align 16, !noalias !20915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !20915
  invoke void @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Signature23bind_self_with_receiver(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ar, ptr noundef nonnull align 4 %i.bo, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.m unwind label %bb.l, !noalias !20921

bb.l:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9SignatureEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.c) #41
          to label %common.resume.i unwind label %bb.u, !noalias !20915

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20915
  call void @llvm.experimental.noalias.scope.decl(metadata !20922)
  call void @llvm.experimental.noalias.scope.decl(metadata !20923)
  %i.bq = load i64, ptr %i.c, align 8, !range !23, !alias.scope !20924, !noalias !20915, !noundef !15
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !20925)
  call void @llvm.experimental.noalias.scope.decl(metadata !20926)
  %i.bs = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20927, !noalias !20915, !noundef !15 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !20928
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.4.0..sroa_idx.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i unwind label %bb.q, !noalias !20915

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20929)
  call void @llvm.experimental.noalias.scope.decl(metadata !20930)
  call void @llvm.experimental.noalias.scope.decl(metadata !20931)
  %i.bx = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !20932, !noalias !20915, !nonnull !15, !noundef !15
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !20933
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.r, label %common.resume.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i)
          to label %common.resume.i unwind label %bb.t, !noalias !20915

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !20934)
  call void @llvm.experimental.noalias.scope.decl(metadata !20935)
  call void @llvm.experimental.noalias.scope.decl(metadata !20936)
  %i.ca = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !20937, !noalias !20915, !nonnull !15, !noundef !15
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !20938
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %_RNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBb_9ClassType27into_callable_with_receiverBY_NtB4_11InnerTrait_28into_callable_with_receiver_s2_0Bf_.exit

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i), !noalias !20915
  br label %_RNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBb_9ClassType27into_callable_with_receiverBY_NtB4_11InnerTrait_28into_callable_with_receiver_s2_0Bf_.exit

bb.t:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !20915
  unreachable

common.resume.i:                                  ; preds = %bb.r, %bb.q, %bb.l
  %common.resume.op.i = phi { ptr, i32 } [ %i.bw, %bb.q ], [ %i.bw, %bb.r ], [ %i.bp, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i

bb.u:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !20915
  unreachable

_RNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBb_9ClassType27into_callable_with_receiverBY_NtB4_11InnerTrait_28into_callable_with_receiver_s2_0Bf_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB13_.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNCNvXNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBb_9ClassType27into_callable_with_receiverBY_NtB4_11InnerTrait_28into_callable_with_receiver_s2_0Bf_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENCINvMs4_B1o_NtB1o_13CallableTypes3mapNCNCNvMse_NtB1q_14protocol_classNtNtB1q_8relation19TypeRelationChecker26check_protocol_member_reads_00E0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !alias.scope !20945, !nonnull !15, !noundef !15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !20945, !nonnull !15, !noundef !15
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %0, align 8, !alias.scope !20945
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !nonnull !15, !align !18, !noundef !15 ; 5 uses
  %.val3 = load i32, ptr %i.c, align 4, !range !31, !noundef !15
  %i.i = getelementptr i8, ptr %i.c, i64 4
  %.val4 = load i32, ptr %i.i, align 4, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20946)
  %i.j = load ptr, ptr %.val, align 8, !alias.scope !20946, !nonnull !15, !noundef !15 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !20946, !nonnull !15, !align !18, !noundef !15 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !20946, !nonnull !15, !align !19, !noundef !15 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.n, align 4, !noalias !20947
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !20947 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !20947 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i.i.i, label %bb.c [
    i32 0, label %_RNCINvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB8_13CallableTypes3mapNCNCNvMse_NtBa_14protocol_classNtNtBa_8relation19TypeRelationChecker26check_protocol_member_reads_00E0Bc_.exit
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ], !prof !20948

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = tail call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l), !noalias !20946
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l), !noalias !20946
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l), !noalias !20946
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn.i.i.i = phi { i32, i32 } [ %i.o, %bb.d ], [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %.sroa.0.1.i.i.i = extractvalue { i32, i32 } %.pn.i.i.i, 0 ; 2 uses
  %.sroa.6.1.i.i.i = extractvalue { i32, i32 } %.pn.i.i.i, 1 ; 2 uses
  store i32 0, ptr %i.n, align 4, !noalias !20947
  store i32 %.sroa.0.1.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !20947
  store i32 %.sroa.6.1.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !20947
  br label %_RNCINvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB8_13CallableTypes3mapNCNCNvMse_NtBa_14protocol_classNtNtBa_8relation19TypeRelationChecker26check_protocol_member_reads_00E0Bc_.exit

_RNCINvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB8_13CallableTypes3mapNCNCNvMse_NtBa_14protocol_classNtNtBa_8relation19TypeRelationChecker26check_protocol_member_reads_00E0Bc_.exit: ; preds = %bb.b, %bb.g
  %.pre-phi2.i.i = phi i32 [ %.sroa.6.1.i.i.i, %bb.g ], [ %.sroa.9.0.copyload.i.i.i, %bb.b ]
  %.pre-phi.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.g ], [ %.sroa.5.0.copyload.i.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20946
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !20946, !nonnull !15, !align !19, !noundef !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !20946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20946
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !20946, !nonnull !15, !align !19, !noundef !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !20946
  %i.v = call { i32, i32 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class33protocol_apply_self_with_receiver(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.l, i32 noundef %.pre-phi.i.i, i32 noundef %.pre-phi2.i.i, i32 noundef range(i32 1, 0) %.val3, i32 noundef %.val4, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a), !noalias !20946 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20946
  %i.w = extractvalue { i32, i32 } %i.v, 0
  %i.x = extractvalue { i32, i32 } %i.v, 1
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread
end_hunk_0
