Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.043?download=true
inline.NumInlined: 2545
inline.NumDeleted: 1295
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool17make_grpc_channel0Csl8OoimOLbh_6qdrant:bb.a
  store i8 0, ptr %i.oa, align 2, !noalias !3667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1199.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.641.i21.i, i64 7, i1 false), !noalias !3691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12100.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.743.i22.i, i64 16, i1 false), !noalias !3691
  store i8 1, ptr %i.lh, align 8, !noalias !3667
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641.i21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i22.i)
  %i.ob = icmp eq i64 %.sroa.031.0.i54.i, -2
  br i1 %i.ob, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy, %.thread110.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1199.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12100.i)
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9103.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1199.i, i64 7, i1 false), !noalias !3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11104.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12100.i, i64 16, i1 false), !noalias !3632
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1199.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12100.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsgOCJwUSa4vG_5tonic9transport7channelNtBH_7Channel7connectINtNtNtBH_7service9connector9ConnectorNtNtBH_13uds_connector12UdsConnectorEE0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.li)
          to label %bb.ee unwind label %bb.eb, !noalias !3633

bb.eb:                                            ; preds = %bb.cc, %bb.ea
  %i.oc = phi ptr [ %i.gk, %bb.cc ], [ %i.lf, %bb.ea ]
  %i.od = phi ptr [ %i.gl, %bb.cc ], [ %i.lg, %bb.ea ]
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ec:                                            ; preds = %bb.af, %bb.ae
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cd, %bb.ec
  %i.og = phi ptr [ %i.dx, %bb.ec ], [ %i.ji, %bb.cd ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.of, %bb.ec ], [ %.pn16.pn.i, %bb.cd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel8endpointNtBG_8Endpoint7connect0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.og) #18
          to label %bb.m unwind label %bb.eh

bb.ed:                                            ; preds = %bb.dz, %bb.cb
  %i.oh = phi ptr [ %i.gk, %bb.cb ], [ %i.lf, %bb.dz ]
  %.sink.i.ph = phi i8 [ 3, %bb.cb ], [ 4, %bb.dz ]
  store i8 %.sink.i.ph, ptr %i.oh, align 8, !noalias !3632
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9103.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11104.i)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %common.ret

bb.ee:                                            ; preds = %bb.ea, %bb.cc
  %i.oi = phi ptr [ %i.gk, %bb.cc ], [ %i.lf, %bb.ea ]
  %.sroa.7102.0.i = phi i8 [ %.sroa.538.0.i.i, %bb.cc ], [ %.sroa.538.0.i57.i, %bb.ea ]
  %.sroa.5.0.i = phi ptr [ %.sroa.4.0.i.i, %bb.cc ], [ %.sroa.4.0.i56.i, %bb.ea ]
  %.sroa.3.0.i = phi ptr [ %.sroa.333.0.i.i, %bb.cc ], [ %.sroa.333.0.i55.i, %bb.ea ]
  %.sroa.0101.0.i = phi i64 [ %.sroa.031.0.i.i, %bb.cc ], [ %.sroa.031.0.i54.i, %bb.ea ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9103.i, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1340, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11104.i, i64 16, i1 false)
  store i8 1, ptr %i.oi, align 8, !noalias !3632
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9103.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11104.i)
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel8endpoint8EndpointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(600) %i.oj)
          to label %bb.eg unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.eg:                                            ; preds = %bb.ee
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 3009
  store i8 0, ptr %i.ol, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 3010
  store i8 0, ptr %i.om, align 2
  br label %bb.l

bb.eh:                                            ; preds = %bb.el, %bb.ei, %.body
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ei:                                            ; preds = %bb.m
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel8endpoint8EndpointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(600) %i.oo) #18
          to label %bb.o unwind label %bb.eh

bb.ej:                                            ; preds = %bb.o
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 3010
  %i.oq = load i8, ptr %i.op, align 2, !range !40, !noundef !13
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.el, %bb.ej, %bb.o
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 3010
  store i8 0, ptr %i.os, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i8 2, ptr %i.aa, align 8
  resume { ptr, i32 } %.pn12.pn.pn

bb.el:                                            ; preds = %bb.ej
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(144) %i.dv) #18
          to label %bb.ek unwind label %bb.eh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtCsPYQCUnoTxQ_10collection6common13fetch_vectorsNtB5_17ReferencedVectorsNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsyIGusAaLFh_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNtCsyIGusAaLFh_5ahash12random_state11RAND_SOURCE), !noalias !3697 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !3697, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !3697, !nonnull !13, !align !14, !noundef !13
  %i.i = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !3697 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !13, !noalias !3697, !nonnull !13
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull %i.f) #24, !noalias !3697, !inline_history !3694
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsyIGusAaLFh_5ahash12random_state12RandomSourceNtNtCskKLDkoKarTP_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1C_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNtCsyIGusAaLFh_5ahash12random_state11RAND_SOURCE)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !noalias !3698, !nonnull !13, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3698, !nonnull !13, !align !14, !noundef !13
  %i.s = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCs6TRFxdUibgW_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 @_RNvNvNtCsyIGusAaLFh_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc1 unwind label %bb.b    ; 2 uses

.noexc1:                                          ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !13, !noalias !3698, !nonnull !13
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %i.p) #24
          to label %.noexc2 unwind label %bb.b, !inline_history !3694

.noexc2:                                          ; preds = %.noexc1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, i64 noundef %i.v)
          to label %_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState3new.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc2, %.noexc1, %.noexc, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIBC_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

_RNvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB5_11RandomState3new.exit: ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIBC_NtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca i64, align 8                  ; 5 uses
  %.sroa.6 = alloca i64, align 8                  ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3708)
  %i.b = load i64, ptr %1, align 8, !range !18, !alias.scope !3708, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3708, !noundef !13
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !3708, !noundef !13
  %.not.i = icmp sgt i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !3708 ; 5 uses
  %.val21.i = load i64, ptr %i.h, align 8, !alias.scope !3708 ; 2 uses
  br i1 %.not.i, label %2, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

2:                                                ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, label %bb.d

bb.d:                                             ; preds = %2
  %i.i = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !3709
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, !prof !34

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i, i64 noundef %.val21.i) #22, !noalias !3709
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c, %bb.d, %2
  %.sroa.06.0.i = phi ptr [ %.val.i, %bb.d ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i, %bb.c ]
  store ptr %.sroa.06.0.i, ptr %.sink.i.sroa.gep16, align 8, !alias.scope !3707
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.b, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %.sink.i.sroa.gep16, %bb.b ]
  %.sroa.58.0.sink.i = phi i64 [ %.val21.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %i.e, %bb.b ]
  %i.l = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.b ]
  store i64 %.sroa.58.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !3707
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !3707
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  %i.n = load i64, ptr %i.m, align 8, !range !18, !alias.scope !3711, !noundef !13
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3711, !noundef !13
  br label %bb.m

bb.g:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !3711, !noundef !13
  %.not.i1 = icmp sgt i8 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i11 = load ptr, ptr %i.p, align 8, !alias.scope !3711 ; 5 uses
  %.val21.i12 = load i64, ptr %i.t, align 8, !alias.scope !3711 ; 2 uses
  br i1 %.not.i1, label %bb.h, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i13 = icmp eq ptr %.val.i11, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds i8, ptr %.val.i11, i64 -16
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !3712
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, !prof !34

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11, i64 noundef %.val21.i12) #22
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4: ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.06.0.i6 = phi ptr [ %.val.i11, %bb.i ], [ inttoptr (i64 16 to ptr), %bb.h ], [ %.val.i11, %bb.g ]
  %i.x = ptrtoint ptr %.sroa.06.0.i6 to i64
  store i64 %i.x, ptr %.sroa.4, align 8, !alias.scope !3710
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !3713
  %.not.i.i.i.i = icmp slt i8 %i.aa, 0
  %or.cond.i.not = select i1 %i.c, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit unwind label %bb.n

bb.m:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, %bb.f
  %.sink.i7.sroa.phi = phi ptr [ %.sroa.6, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ %.sroa.4, %bb.f ]
  %.sroa.58.0.sink.i8 = phi i64 [ %.val21.i12, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ %i.q, %bb.f ]
  %storemerge.i9 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ 1, %bb.f ]
  store i64 %.sroa.58.0.sink.i8, ptr %.sink.i7.sroa.phi, align 8, !alias.scope !3710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %storemerge.i9, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload = load i64, ptr %.sroa.4, align 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload = load i64, ptr %.sroa.6, align 8
  store i64 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.n:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i = alloca [40 x i8], align 8          ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [72 x i8], align 8            ; 6 uses
  %i.f = load i64, ptr %1, align 8, !range !17, !noundef !13
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3721
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !17, !alias.scope !3720, !noundef !13
  %.not.i = icmp eq i64 %i.h, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g), !noalias !3722
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %i.e, align 8, !noalias !3721
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3721
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsgOCJwUSa4vG_5tonic9transport3tls11CertificateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1)
          to label %bb.h unwind label %bb.g, !noalias !3722

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %i.i, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #18
          to label %bb.r unwind label %bb.q, !noalias !3722

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3721
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsg2eWlRba8yQ_16rustls_pki_types11TrustAnchorENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.k unwind label %bb.j, !noalias !3722

bb.i:                                             ; preds = %.body.i, %bb.j
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsgOCJwUSa4vG_5tonic9transport3tls11CertificateEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %bb.f unwind label %bb.q, !noalias !3722

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !17, !alias.scope !3720, !noundef !13
  %.not7.i = icmp eq i64 %i.m, -1
  br i1 %.not7.i, label %_RNvXs0_NtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tlsNtB5_15ClientTlsConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3723
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
          to label %.noexc.i unwind label %bb.o, !noalias !3722

.noexc.i:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3723
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.p unwind label %bb.m, !noalias !3724

bb.m:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic9transport3tls11CertificateECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %.body.i unwind label %bb.n, !noalias !3724

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3724
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.o ], [ %i.o, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsg2eWlRba8yQ_16rustls_pki_types11TrustAnchorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.i unwind label %bb.q, !noalias !3722

bb.p:                                             ; preds = %.noexc.i
  %.sroa.0.0.copyload11.i = load i64, ptr %i.b, align 8, !noalias !3725
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
