Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.073?download=true
inline.NumInlined: 1228
inline.NumDeleted: 485
begin_hunk_0_@_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1p_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !11 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !12, !noundef !11
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.a to i1
  br i1 %i.d, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !3418, !noalias !3417, !noundef !11 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.k, -1                ; 2 uses
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3418, !noalias !3417
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.o, i64 %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !3419, !noalias !3416, !noundef !11 ; 2 uses
  %.not.i1.i = icmp sgt i8 %i.q, -1               ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3419, !noalias !3416
  %.sroa.3.0.i2.i = select i1 %.not.i1.i, i64 %i.u, i64 %i.s
  %i.v = icmp eq i64 %.sroa.3.0.i.i, %.sroa.3.0.i2.i
  br i1 %i.v, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !3419, !noalias !3416, !nonnull !11
  %.sroa.0.0.i3.i = select i1 %.not.i1.i, ptr %i.y, ptr %i.w
  %i.z = load ptr, ptr %i.x, align 8, !alias.scope !3418, !noalias !3417, !nonnull !11
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.z, ptr %i.x
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i, ptr nonnull %.sroa.0.0.i3.i, i64 %.sroa.3.0.i.i)
  %i.aa = icmp eq i32 %bcmp.i, 0
  br i1 %i.aa, label %bb.d, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.d:                                             ; preds = %.split, %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !range !12, !noundef !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !12, !noundef !11
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13: ; preds = %bb.c, %bb.h, %bb.g, %.split, %bb.d, %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.a, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.al, %bb.f ], [ false, %.split ], [ false, %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.g ], [ %i.bd, %bb.h ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk

bb.e:                                             ; preds = %bb.d
  %i.ag = trunc nuw i64 %i.ac to i1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !11
  %i.al = icmp eq i64 %i.ai, %i.ak
  br label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3421)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !3422, !noalias !3421, !noundef !11 ; 2 uses
  %.not.i.i5 = icmp sgt i8 %i.an, -1              ; 2 uses
  %i.ao = and i8 %i.an, 127
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3422, !noalias !3421
  %.sroa.3.0.i.i6 = select i1 %.not.i.i5, i64 %i.ar, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !3423, !noalias !3420, !noundef !11 ; 2 uses
  %.not.i1.i7 = icmp sgt i8 %i.at, -1             ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !3423, !noalias !3420
  %.sroa.3.0.i2.i8 = select i1 %.not.i1.i7, i64 %i.ax, i64 %i.av
  %i.ay = icmp eq i64 %.sroa.3.0.i.i6, %.sroa.3.0.i2.i8
  br i1 %i.ay, label %bb.h, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8, !alias.scope !3423, !noalias !3420, !nonnull !11
  %.sroa.0.0.i3.i10 = select i1 %.not.i1.i7, ptr %i.bb, ptr %i.az
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !3422, !noalias !3421, !nonnull !11
  %.sroa.0.0.i.i11 = select i1 %.not.i.i5, ptr %i.bc, ptr %i.ba
  %bcmp.i12 = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i11, ptr nonnull %.sroa.0.0.i3.i10, i64 %.sroa.3.0.i.i6)
  %i.bd = icmp eq i32 %bcmp.i12, 0
  br label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB5_16ReferencedPointsNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsyIGusAaLFh_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNtCsyIGusAaLFh_5ahash12random_state11RAND_SOURCE), !noalias !3429 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !3429, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !3429, !nonnull !11, !align !17, !noundef !11
  %i.i = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !3429 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !11, !noalias !3429, !nonnull !11
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull %i.f) #18, !noalias !3429, !inline_history !3426
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsyIGusAaLFh_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNtCsyIGusAaLFh_5ahash12random_state11RAND_SOURCE)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !noalias !3430, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3430, !nonnull !11, !align !17, !noundef !11
  %i.s = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc1 unwind label %bb.b    ; 2 uses

.noexc1:                                          ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !11, !noalias !3430, !nonnull !11
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %i.p) #18
          to label %.noexc2 unwind label %bb.b, !inline_history !3426

.noexc2:                                          ; preds = %.noexc1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, i64 noundef %i.v)
          to label %_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState3new.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc2, %.noexc1, %.noexc, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEEENtNtNtBU_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapINtNtB4_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtBG_8hash_set8AHashSetNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState3new.exit: ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapINtNtB4_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEINtNtBG_8hash_set8AHashSetNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3445)
  %i.a = load i64, ptr %0, align 8, !range !19, !alias.scope !3444, !noalias !3445, !noundef !11 ; 4 uses
  %.not.i = icmp eq i64 %i.a, -1
  %i.b = load i64, ptr %1, align 8, !range !19, !alias.scope !3445, !noalias !3444, !noundef !11 ; 4 uses
  %i.c = icmp eq i64 %i.b, -1
  %brmerge.i = or i1 %.not.i, %i.c
  %i.d = and i64 %i.b, %i.a
  %.mux.i = icmp eq i64 %i.d, -1
  br i1 %brmerge.i, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  %i.e = add nsw i64 %i.a, -2
  %.inv.i.i = icmp samesign ult i64 %i.a, 2       ; 2 uses
  %i.f = select i1 %.inv.i.i, i64 2, i64 %i.e     ; 2 uses
  %i.g = add nsw i64 %i.b, -2
  %.inv5.i.i = icmp samesign ult i64 %i.b, 2
  %2 = icmp eq i64 %i.g, %i.f
  %3 = select i1 %.inv5.i.i, i1 %.inv.i.i, i1 %2
  br i1 %3, label %bb.c, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.b
  switch i64 %i.f, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !12, !alias.scope !3448, !noalias !3449, !noundef !11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !12, !alias.scope !3449, !noalias !3448, !noundef !11
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.h, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3448, !noalias !3449, !noundef !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !3449, !noalias !3448, !noundef !11
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.l, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.c
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1p_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) #18
  br label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.e
  %i.s = trunc nuw i64 %i.i to i1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3448, !noalias !3449, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3449, !noalias !3448, !noundef !11
  %i.x = icmp eq i64 %i.u, %i.w
  br label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3451)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !3452, !noalias !3453, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.z, -1            ; 2 uses
  %i.aa = and i8 %i.z, 127
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !3452, !noalias !3453
  %.sroa.3.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.ad, i64 %i.ab ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !3454, !noalias !3455, !noundef !11 ; 2 uses
  %.not.i1.i.i.i = icmp sgt i8 %i.af, -1          ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !3454, !noalias !3455
  %.sroa.3.0.i2.i.i.i = select i1 %.not.i1.i.i.i, i64 %i.aj, i64 %i.ah
  %i.ak = icmp eq i64 %.sroa.3.0.i.i.i.i, %.sroa.3.0.i2.i.i.i
  br i1 %i.ak, label %bb.k, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !3454, !noalias !3455, !nonnull !11
  %.sroa.0.0.i3.i.i.i = select i1 %.not.i1.i.i.i, ptr %i.an, ptr %i.al
  %i.ao = load ptr, ptr %i.am, align 8, !alias.scope !3452, !noalias !3453, !nonnull !11
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.am
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i.i.i, ptr nonnull %.sroa.0.0.i3.i.i.i, i64 %.sroa.3.0.i.i.i.i)
  %i.ap = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !3449, !noalias !3448, !nonnull !11, !noundef !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !3448, !noalias !3449, !nonnull !11, !noundef !11
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.n), !noalias !3456
  br label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.shrunk.i = phi i1 [ %.mux.i, %bb.a ], [ false, %bb.j ], [ %i.x, %bb.i ], [ false, %bb.f ], [ false, %bb.b ], [ %i.au, %bb.l ], [ false, %bb.e ], [ %i.r, %bb.g ], [ %i.ap, %bb.k ]
  %i.av = xor i1 %.sroa.0.0.shrunk.i, true
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  %i.a = load i64, ptr %0, align 8, !range !29, !alias.scope !3467, !noalias !3468, !noundef !11 ; 3 uses
  %i.b = icmp ne i64 %i.a, 6
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 4          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !29, !alias.scope !3468, !noalias !3467, !noundef !11 ; 3 uses
  %i.g = icmp ne i64 %i.f, 6
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -2
  %i.i = icmp samesign ugt i64 %i.f, 1
  %i.j = select i1 %i.i, i64 %i.h, i64 4
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit [
    i64 2, label %bb.c
    i64 3, label %bb.h
    i64 4, label %bb.j
    i64 5, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !12, !alias.scope !3467, !noalias !3468, !noundef !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !12, !alias.scope !3468, !noalias !3467, !noundef !11
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nuw i64 %i.m to i1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3467, !noalias !3468, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3468, !noalias !3467, !noundef !11
  %i.v = icmp eq i64 %i.s, %i.u
  br label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3470)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !3471, !noalias !3470, !noundef !11 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.x, -1                ; 2 uses
  %i.y = and i8 %i.x, 127
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !3471, !noalias !3470
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.ab, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !3472, !noalias !3469, !noundef !11 ; 2 uses
  %.not.i1.i = icmp sgt i8 %i.ad, -1              ; 2 uses
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !3472, !noalias !3469
  %.sroa.3.0.i2.i = select i1 %.not.i1.i, i64 %i.ah, i64 %i.af
  %i.ai = icmp eq i64 %.sroa.3.0.i.i, %.sroa.3.0.i2.i
  br i1 %i.ai, label %bb.g, label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3472, !noalias !3469, !nonnull !11
  %.sroa.0.0.i3.i = select i1 %.not.i1.i, ptr %i.ak, ptr %i.aj
  %i.al = load ptr, ptr %i.r, align 8, !alias.scope !3471, !noalias !3470, !nonnull !11
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.al, ptr %i.r
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i, ptr nonnull %.sroa.0.0.i3.i, i64 %.sroa.3.0.i.i)
  %i.am = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !3467, !noalias !3468, !noundef !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !3468, !noalias !3467, !noundef !11
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !3468, !noalias !3467, !nonnull !11, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !3467, !noalias !3468, !nonnull !11, !noundef !11
  %i.aw = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtB5_14SlicePartialEqBC_E17equal_same_lengthCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.av, ptr noundef nonnull %i.at, i64 noundef %i.ao), !noalias !3473
  br label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.b
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXs1p_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) #18
  br label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !alias.scope !3467, !noalias !3468, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !alias.scope !3468, !noalias !3467, !noundef !11
  %i.bc = icmp eq i32 %i.az, %i.bb
  br label %_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs6_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.g, %bb.f, %bb.a, %bb.b, %bb.c, %bb.e, %bb.h, %bb.i, %bb.j, %bb.k
end_hunk_0
