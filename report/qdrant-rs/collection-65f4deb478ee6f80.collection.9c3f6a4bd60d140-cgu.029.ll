Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.029?download=true
begin_hunk_0_@_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtBS_10LocalShard20get_snapshot_creator000EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBW_:bb.a
  store i64 %.sroa.0205.0.copyload206.i, ptr %i.ad, align 8, !noalias !2757
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.7.0.copyload208.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2757
  %.sroa.5230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.9.0.copyload210.i, ptr %.sroa.5230.0..sroa_idx.i, align 8, !noalias !2757
  %i.bk = invoke noundef ptr @_RNvMs6_NtCslmvYCXbQjWR_6common7tar_extINtB5_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB5_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE20blocking_append_dataCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(536) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload208.i, i64 noundef %.sroa.9.0.copyload210.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 22)
          to label %bb.x unwind label %bb.w, !noalias !2752 ; 2 uses

bb.w:                                             ; preds = %bb.ac, %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body120.i

.body120.i:                                       ; preds = %bb.z, %bb.w
  %eh.lpad-body121.i = phi { ptr, i32 } [ %i.bl, %bb.w ], [ %i.bm, %bb.z ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #26
          to label %.body.i unwind label %bb.ap, !noalias !2752

bb.x:                                             ; preds = %bb.v
  %.not52.i = icmp eq ptr %i.bk, null
  br i1 %.not52.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2757
  store ptr %i.bk, ptr %i.d, align 8, !noalias !2773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2773
  store ptr %i.d, ptr %i.b, align 8, !noalias !2773
  %.sroa.42.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i117.i, align 8, !noalias !2773
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @16, ptr noundef nonnull %i.b)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsPYQCUnoTxQ_10collection.exit.i118.i unwind label %bb.z, !noalias !2776

bb.z:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsPYQCUnoTxQ_10collection.exit.i118.i, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %.body120.i unwind label %bb.ad, !noalias !2776

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsPYQCUnoTxQ_10collection.exit.i118.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2773
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringEBa_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.aa unwind label %bb.z, !noalias !2752

bb.aa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsPYQCUnoTxQ_10collection.exit.i118.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2777, !noalias !2773, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2780
  %i.bn = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.bo = and i64 %i.bn, 3
  switch i64 %i.bo, label %default.unreachable [
    i64 2, label %bb.al
    i64 3, label %bb.ab
    i64 0, label %bb.al
    i64 1, label %bb.ac
  ], !prof !661

default.unreachable:                              ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bp = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bq = and i64 %i.bn, 1095216660480
  %i.br = icmp ne i64 %i.bq, 1095216660480
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.assume(i1 %i.br)
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  %i.bs = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !alias.scope !2781, !noalias !2780
  store i8 3, ptr %i.a, align 8, !alias.scope !2781, !noalias !2780
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %bb.al unwind label %bb.w, !noalias !2752

bb.ad:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !2776
  unreachable

bb.ae:                                            ; preds = %bb.x
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.ag unwind label %bb.af, !noalias !2752

bb.af:                                            ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.ah, !noalias !2752

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.p, !noalias !2752

bb.ah:                                            ; preds = %bb.af
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !2752
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2757
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard16segment_manifest16SegmentsManifestECsPYQCUnoTxQ_10collection.exit126.i unwind label %bb.d, !noalias !2752

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard16segment_manifest16SegmentsManifestECsPYQCUnoTxQ_10collection.exit126.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2757
  %i.bx = ptrtoint ptr %i.ah to i64               ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.bx)
          to label %.noexc127.i unwind label %bb.b, !noalias !2752

.noexc127.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard16segment_manifest16SegmentsManifestECsPYQCUnoTxQ_10collection.exit126.i
  %i.by = or disjoint i64 %i.bx, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.by)
          to label %.noexc128.i unwind label %bb.b, !noalias !2752

.noexc128.i:                                      ; preds = %.noexc127.i
  %i.bz = atomicrmw sub ptr %i.ah, i64 16 release, align 8, !noalias !2752
  %i.ca = and i64 %i.bz, -14
  %i.cb = icmp eq i64 %i.ca, 18
  br i1 %i.cb, label %.invoke.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit.i, !prof !85

.invoke.i:                                        ; preds = %.noexc128.i, %.noexc111.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.b, !noalias !2752

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %.invoke.i, %.noexc128.i, %.noexc111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2757
  %.val106.i = load ptr, ptr %i.ag, align 8, !alias.scope !2755, !noalias !2752, !nonnull !5, !noundef !5 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 456
  %.val107.i = load ptr, ptr %i.cc, align 8, !alias.scope !2755, !noalias !2752 ; 3 uses
  %i.cd = atomicrmw add ptr %.val106.i, i64 1 monotonic, align 8, !noalias !2752
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val107.i) ]
  %i.cf = atomicrmw add ptr %.val107.i, i64 1 monotonic, align 8, !noalias !2752
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.ak, label %bb.ay

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit.i
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !2755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2757
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.an unwind label %bb.am, !noalias !2752

bb.am:                                            ; preds = %bb.al
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.ao, !noalias !2752

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit135.i unwind label %bb.p, !noalias !2752

bb.ao:                                            ; preds = %bb.am
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !2752
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit135.i: ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2757
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard16segment_manifest16SegmentsManifestECsPYQCUnoTxQ_10collection.exit137.i unwind label %bb.d, !noalias !2752

bb.ap:                                            ; preds = %bb.fx, %bb.fv, %bb.fu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex5MutexINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1W_10operations21OperationWithClockTagEEEECsPYQCUnoTxQ_10collection.exit204.i, %bb.fs, %bb.fq, %.critedge102.i, %bb.fo, %bb.fm, %bb.fl, %bb.fk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsPYQCUnoTxQ_10collection.exit.i, %bb.fj, %bb.fi, %bb.fg, %bb.fe, %bb.ev, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex5MutexINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1W_10operations21OperationWithClockTagEEEECsPYQCUnoTxQ_10collection.exit198.i, %bb.eo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsPYQCUnoTxQ_10collection.exit196.i, %bb.dz, %.body143.i, %.body156.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsPYQCUnoTxQ_10collection.exit153.i, %bb.dl, %bb.dh, %bb.dg, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsPYQCUnoTxQ_10collection.exit.i, %bb.cu, %bb.cq, %bb.cn, %bb.cl, %bb.be, %bb.ba, %.body120.i, %.body.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard16segment_manifest16SegmentsManifestECsPYQCUnoTxQ_10collection.exit.i, %.body147.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !2752
  unreachable

bb.aq:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2757
  %.sroa.66.sroa.7.0..sroa.66.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.66.sroa.7.0.copyload.i = load ptr, ptr %.sroa.66.sroa.7.0..sroa.66.0..sroa_idx.sroa_idx.i, align 16, !noalias !2757
  %.sroa.66.sroa.8.0..sroa.66.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.66.sroa.8.0.copyload.i = load i64, ptr %.sroa.66.sroa.8.0..sroa.66.0..sroa_idx.sroa_idx.i, align 8, !noalias !2757
  %.sroa.88.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.88.0..sroa_idx.i, i64 16, i1 false), !noalias !2755
  %i.ck = load <2 x i64>, ptr %i.p, align 16, !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2757
  store <2 x i64> %i.ck, ptr %0, align 8, !alias.scope !2752, !noalias !2755
  %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.66.sroa.7.0.copyload.i, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2752, !noalias !2755
  %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.66.sroa.8.0.copyload.i, ptr %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2752, !noalias !2755
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit135.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard16segment_manifest16SegmentsManifestECsPYQCUnoTxQ_10collection.exit137.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2757
  %i.cl = ptrtoint ptr %i.ah to i64               ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.cl)
          to label %.noexc138.i unwind label %bb.b, !noalias !2752

.noexc138.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard16segment_manifest16SegmentsManifestECsPYQCUnoTxQ_10collection.exit137.i
  %i.cm = or disjoint i64 %i.cl, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.cm)
          to label %.noexc139.i unwind label %bb.b, !noalias !2752

.noexc139.i:                                      ; preds = %.noexc138.i
  %i.cn = atomicrmw sub ptr %i.ah, i64 16 release, align 8, !noalias !2752
  %i.co = and i64 %i.cn, -14
  %i.cp = icmp eq i64 %i.co, 18
  br i1 %i.cp, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit141.i, !prof !85

bb.ar:                                            ; preds = %.noexc139.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit141.i unwind label %bb.b, !noalias !2752

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit141.i: ; preds = %bb.ar, %.noexc139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2757
  br label %bb.as

bb.as:                                            ; preds = %bb.dj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex15OwnedMutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1z_10operations21OperationWithClockTagEEECsPYQCUnoTxQ_10collection.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit141.i
  %.sroa.030.2.i = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit141.i ], [ true, %bb.dj ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex15OwnedMutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1z_10operations21OperationWithClockTagEEECsPYQCUnoTxQ_10collection.exit.i ] ; 2 uses
  %.sroa.024.1.i = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit141.i ], [ true, %bb.dj ], [ %.sroa.024.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex15OwnedMutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1z_10operations21OperationWithClockTagEEECsPYQCUnoTxQ_10collection.exit.i ] ; 2 uses
  %.sroa.036.2.i = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsPYQCUnoTxQ_10collection.exit141.i ], [ false, %bb.dj ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex15OwnedMutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1z_10operations21OperationWithClockTagEEECsPYQCUnoTxQ_10collection.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  call void @llvm.experimental.noalias.scope.decl(metadata !2787)
  call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  %i.cq = load ptr, ptr %i.ag, align 8, !alias.scope !2793, !noalias !2752, !nonnull !5, !noundef !5
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !2794
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsPYQCUnoTxQ_10collection.exit.i.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEE9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.au, !noalias !2752

bb.au:                                            ; preds = %bb.at
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !2801, !noalias !2752, !nonnull !5, !noundef !5
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !2802
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.av, label %.body143.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cu) #25
          to label %.body143.i unwind label %bb.ax, !noalias !2752

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.at, %bb.as
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !2809, !noalias !2752, !nonnull !5, !noundef !5
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !2810
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsPYQCUnoTxQ_10collection.exit.i

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsPYQCUnoTxQ_10collection.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cy) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.dy, !noalias !2752

bb.ax:                                            ; preds = %bb.av
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !2752
  unreachable

bb.ay:                                            ; preds = %bb.ai
  store ptr %.val106.i, ptr %i.ab, align 8, !noalias !2757
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 6 uses
  store ptr %.val107.i, ptr %i.dd, align 8, !noalias !2757
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !2755, !noalias !2752, !nonnull !5, !noundef !5
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !2755, !noalias !2752, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2757
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef nonnull align 8 dereferenceable(104) %i.dj, i64 104, i1 false), !noalias !2752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2757
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !2755, !noalias !2752, !nonnull !5, !noundef !5
  store ptr %i.dl, ptr %i.z, align 8, !noalias !2757
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dn = load i32, ptr %i.dm, align 8, !range !1327, !alias.scope !2755, !noalias !2752, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.dp = load i32, ptr %i.do, align 4, !alias.scope !2755, !noalias !2752
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !2755, !noalias !2752, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !2755, !noalias !2752, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2757
  invoke void @_RNvMs6_NtCslmvYCXbQjWR_6common7tar_extINtB5_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB5_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE7descendCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(536) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 8)
          to label %bb.bb unwind label %bb.az, !noalias !2752

bb.az:                                            ; preds = %bb.ay
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  call void @llvm.experimental.noalias.scope.decl(metadata !2814)
  %i.dw = load ptr, ptr %i.z, align 8, !alias.scope !2817, !noalias !2757, !nonnull !5, !noundef !5
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !2818
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsPYQCUnoTxQ_10collection.exit.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEE9drop_slowB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.ap, !noalias !2752

bb.bb:                                            ; preds = %bb.ay
  %i.dz = load i64, ptr %i.x, align 8, !range !4, !noalias !2757, !noundef !5 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !2757 ; 2 uses
  br i1 %i.ea, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2757
  invoke void @_RNvXsl_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB1h_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.n, ptr noundef nonnull %i.ec)
          to label %bb.dm unwind label %bb.dk, !noalias !2752

bb.bd:                                            ; preds = %bb.bb
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.550.0..sroa_idx.i, i64 16, i1 false), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2757
  store i64 %i.dz, ptr %i.y, align 8, !noalias !2757
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ec, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !2757
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 529
  %i.ee = load i8, ptr %i.ed, align 1, !range !8, !alias.scope !2755, !noalias !2752, !noundef !5
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 6 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !2755, !noalias !2752, !noundef !5
  %.not53.i = icmp eq ptr %i.eg, null
  %..i = select i1 %.not53.i, ptr null, ptr %i.ef
  %i.eh = load ptr, ptr %i.ab, align 8, !noalias !2757, !nonnull !5, !noundef !5
  %i.ei = load ptr, ptr %i.dd, align 8, !noalias !2757, !nonnull !5, !noundef !5
  %i.ej = load ptr, ptr %i.z, align 8, !noalias !2757, !nonnull !5, !noundef !5
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshot21snapshot_all_segments(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ac, ptr noundef nonnull %i.eh, ptr noundef nonnull %i.ei, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef %i.di, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.aa, ptr noundef nonnull %i.ej, i32 noundef %i.dn, i32 %i.dp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.du, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y, i8 noundef %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %..i)
          to label %bb.bf unwind label %bb.be, !noalias !2752

bb.be:                                            ; preds = %bb.bg, %bb.bd
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslmvYCXbQjWR_6common7tar_ext10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_9WriteSeekNtNtB4_6marker4SendEL_EEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #26
          to label %.body147.i unwind label %bb.ap, !noalias !2752

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2757
  %i.el = load i64, ptr %i.ac, align 8, !range !1818, !noalias !2757, !noundef !5
  %.not54.i = icmp eq i64 %i.el, -1
  br i1 %.not54.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i64 96, i1 false), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2757
  invoke void @_RNvXsd_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.m)
          to label %bb.di unwind label %bb.be, !noalias !2752

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2757
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslmvYCXbQjWR_6common7tar_ext10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_9WriteSeekNtNtB4_6marker4SendEL_EEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y)
          to label %bb.bi unwind label %bb.b, !noalias !2752

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2757
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !2755, !noalias !2752, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2757
  store ptr %i.en, ptr %i.k, align 8, !noalias !2757
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 112
end_hunk_0
