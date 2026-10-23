Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/locktree?download=true
inline.NumInlined: 366
inline.NumDeleted: 188
begin_hunk_0_@_ZN4toku8locktree13release_locksEmPKNS_12range_bufferEb:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN4toku8locktree15sto_try_releaseEm(ptr noundef nonnull align 8 dereferenceable(400) %0, i64 poison)
  br i1 %i.a, label %bb.j, label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  call void @_ZN4toku15concurrent_tree15locked_keyrange7prepareEPS0_(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %i.e)
  %i.f = load i64, ptr %i.b, align 8, !tbaa !48
  %.not7 = icmp eq i64 %i.f, 0
  br i1 %.not7, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !80
  %i.j = call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !81 ; 2 uses
  call void @_ZN4toku8locktree33sto_migrate_buffer_ranges_to_treeEPv(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %4)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.l = call noundef i64 @_ZNK4toku12range_buffer17total_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(60) %i.k)
  %i.m = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN4toku8locktree13sto_end_earlyEPv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4toku16locktree_manager17note_mem_releasedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.m, i64 noundef %i.l)
  br label %_ZN4toku8locktree13sto_end_earlyEPv.exit

_ZN4toku8locktree13sto_end_earlyEPv.exit:         ; preds = %bb.e, %bb.f
  %i.n = extractvalue { i32, i32 } %i.j, 1
  %.neg6.i = sub i32 0, %i.n
  %.neg6.z.i = zext i32 %.neg6.i to i64
  %.neg5.i = shl nuw i64 %.neg6.z.i, 32
  %i.o = extractvalue { i32, i32 } %i.j, 0
  %i.p = zext i32 %i.o to i64
  call void @_ZN4toku12range_buffer7destroyEv(ptr noundef nonnull align 8 dereferenceable(60) %i.k)
  call void @_ZN4toku12range_buffer6createEv(ptr noundef nonnull align 8 dereferenceable(60) %i.k)
  store i64 0, ptr %i.b, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.q, align 8, !tbaa !52
  %i.r = call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !81 ; 2 uses
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = extractvalue { i32, i32 } %i.r, 1
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw i64 %i.u, 32
  %i.w = zext i32 %i.s to i64
  %.neg4.i = sub i64 %.neg5.i, %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !82
  %i.z = add i64 %.neg4.i, %i.y
  %i.aa = add i64 %i.z, %i.w
  %i.ab = add i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %_ZN4toku8locktree13sto_end_earlyEPv.exit, %bb.d
  call void @_ZN4toku15concurrent_tree15locked_keyrange7releaseEv(ptr noundef nonnull align 8 dereferenceable(104) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN4toku12range_buffer8iteratorC1EPKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ac = call noundef zeroext i1 @_ZN4toku12range_buffer8iterator7currentEPNS1_6recordE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %6)
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge, %.lr.ph
  %i.ad = call noundef ptr @_ZNK4toku12range_buffer8iterator6record12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
  %i.ae = call noundef ptr @_ZNK4toku12range_buffer8iterator6record13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
  call void @_ZN4toku8locktree34remove_overlapping_locks_for_txnidEmPK10__toku_dbtS3_(ptr noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %1, ptr noundef %i.ad, ptr noundef %i.ae)
  call void @_ZN4toku12range_buffer8iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.af = call noundef zeroext i1 @_ZN4toku12range_buffer8iterator7currentEPNS1_6recordE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %6)
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !180

._crit_edge:                                      ; preds = %.lr.ph, %.critedge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !52
  %i.ai = icmp slt i32 %i.ah, 100
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.aj = atomicrmw add ptr %i.ag, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku8locktree8escalateEPFvmPKS0_RKNS_12range_bufferEPvES6_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.extract_fn_obj, align 8     ; 10 uses
  %4 = alloca %"class.toku::omt.7", align 8       ; 31 uses
  %5 = alloca %"class.toku::concurrent_tree::locked_keyrange", align 8 ; 12 uses
  %6 = alloca %"class.toku::keyrange", align 8    ; 5 uses
  %7 = alloca %class.TxnidVector, align 8         ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.toku::range_buffer::iterator", align 8 ; 6 uses
  %9 = alloca %"class.toku::range_buffer::iterator::record", align 8 ; 7 uses
  %10 = alloca %"class.toku::keyrange", align 8   ; 4 uses
  %11 = alloca %"struct.toku::row_lock", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %4, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 31 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 11 uses
  store i64 0, ptr %i.e, align 8
  store i32 2, ptr %i.f, align 4, !tbaa !117
  %i.g = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef 16)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 31 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN4toku8keyrange18get_infinite_rangeEv(ptr dead_on_unwind nonnull writable sret(%"class.toku::keyrange") align 8 %6)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  call void @_ZN4toku15concurrent_tree15locked_keyrange7prepareEPS0_(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %i.j)
  call void @_ZN4toku15concurrent_tree15locked_keyrange7acquireERKNS_8keyrangeE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(81) %6)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4toku8locktree33sto_migrate_buffer_ranges_to_treeEPv(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %5)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.n = call noundef i64 @_ZNK4toku12range_buffer17total_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(60) %i.m)
  %i.o = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN4toku8locktree27sto_end_early_no_accountingEPv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4toku16locktree_manager17note_mem_releasedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.o, i64 noundef %i.n)
  br label %_ZN4toku8locktree27sto_end_early_no_accountingEPv.exit

_ZN4toku8locktree27sto_end_early_no_accountingEPv.exit: ; preds = %bb.b, %bb.c
  call void @_ZN4toku12range_buffer7destroyEv(ptr noundef nonnull align 8 dereferenceable(60) %i.m)
  call void @_ZN4toku12range_buffer6createEv(ptr noundef nonnull align 8 dereferenceable(60) %i.m)
  store i64 0, ptr %i.k, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.p, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %_ZN4toku8locktree27sto_end_early_no_accountingEPv.exit, %bb.a
  %i.q = call noundef ptr @_Z12toku_xcallocmm(i64 noundef 128, i64 noundef 112) ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.q, ptr %i.r, align 8, !tbaa !119
  store i32 128, ptr %i.s, align 4, !tbaa !120
  store i32 0, ptr %3, align 8, !tbaa !121
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !79
  %i.w = call noundef zeroext i1 @_ZN4toku8treenode8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(202) %i.v)
  br i1 %i.w, label %._crit_edge217, label %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i.lr.ph

_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i.lr.ph: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 14 uses
  %i.af = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ag = shufflevector <2 x ptr> %i.af, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i

.loopexit194:                                     ; preds = %bb.bl
  %i.ah = load ptr, ptr %0, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.q, ptr %i.r, align 8, !tbaa !119
  store i32 128, ptr %i.s, align 4, !tbaa !120
  store i32 0, ptr %3, align 8, !tbaa !121
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !79
  %i.aj = call noundef zeroext i1 @_ZN4toku8treenode8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(202) %i.ai)
  br i1 %i.aj, label %._crit_edge217, label %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i, !llvm.loop !181

_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i: ; preds = %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i.lr.ph, %.loopexit194
  %i.ak = phi ptr [ %i.u, %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i.lr.ph ], [ %i.ah, %.loopexit194 ] ; 2 uses
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !79
  call fastcc void @_ZN4toku8treenode17traverse_overlapsIZNS_L25extract_first_n_row_locksEPNS_15concurrent_tree15locked_keyrangeEPNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvRKNS_8keyrangeEPT_(ptr noundef nonnull align 8 dereferenceable(202) %i.al, ptr noundef nonnull align 8 dereferenceable(81) %i.x, ptr noundef nonnull %3)
  %.pre.i = load i32, ptr %3, align 8, !tbaa !121 ; 6 uses
  %i.am = icmp sgt i32 %.pre.i, 0
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge217

.lr.ph.i:                                         ; preds = %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i
  %.not.i.i79 = icmp eq ptr %i.ak, null
  %wide.trip.count17.i = zext nneg i32 %.pre.i to i64 ; 2 uses
  br i1 %.not.i.i79, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i

_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i: ; preds = %.lr.ph.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv14.i ; 2 uses
  %i.ao = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv() ; 0 uses
  %i.ap = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.an) ; 0 uses
  call void @_ZN4toku15concurrent_tree15locked_keyrange6removeERKNS_8keyrangeEm(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.an, i64 noundef -2)
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i, %wide.trip.count17.i
  br i1 %exitcond18.not.i, label %.preheader192.preheader, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i, !llvm.loop !182

_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i: ; preds = %.lr.ph.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.ar = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv()
  %i.as = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aq)
  call void @_ZN4toku15concurrent_tree15locked_keyrange6removeERKNS_8keyrangeEm(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.aq, i64 noundef -2)
  %i.at = add i64 %i.as, %i.ar
  call void @_ZN4toku16locktree_manager17note_mem_releasedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.ak, i64 noundef %i.at)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count17.i
  br i1 %exitcond.not.i, label %.preheader192.preheader, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i, !llvm.loop !182

.preheader192.preheader:                          ; preds = %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.i, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.au = zext nneg i32 %.pre.i to i64            ; 2 uses
  br label %.preheader192

.lr.ph216.preheader:                              ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit
  %wide.trip.count = zext nneg i32 %.pre.i to i64
  br label %.lr.ph216

.preheader192:                                    ; preds = %.preheader192.preheader, %_ZNSt3setImSt4lessImESaImEED2Ev.exit
  %.068214 = phi i32 [ %.067.lcssa, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ], [ 0, %.preheader192.preheader ] ; 2 uses
  %i.av = zext nneg i32 %.068214 to i64           ; 3 uses
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %i.av ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88 ; 2 uses
  %i.ay = add nuw nsw i32 %.068214, 1
  %smax = call i32 @llvm.smax.i32(i32 %.pre.i, i32 %i.ay) ; 2 uses
  %i.az = add nsw i32 %smax, -1
  %indvars.iv.next365 = add nuw nsw i64 %i.av, 1  ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next365, %i.au
  br i1 %i.ba, label %.lr.ph368, label %.critedge.loopexit

bb.e:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next367, 1 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.bb, label %.lr.ph368, label %.critedge.loopexit, !llvm.loop !183

.lr.ph368:                                        ; preds = %.preheader192, %bb.e
  %indvars.iv.next367 = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.next365, %.preheader192 ] ; 7 uses
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %bb.e ], [ %i.av, %.preheader192 ] ; 4 uses
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv.next367 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !99
  %i.bg = icmp eq i64 %i.bc, %i.bf
  br i1 %i.bg, label %bb.f, label %.critedge.split.loop.exit324

bb.f:                                             ; preds = %.lr.ph368
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !100, !range !62, !noundef !63
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.critedge.split.loop.exit321, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !101
  %.not75 = icmp eq ptr %i.bl, null
  br i1 %.not75, label %bb.h, label %.critedge.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.bn = call noundef ptr @_ZNK4toku8keyrange13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.aw)
  %i.bo = call noundef ptr @_ZNK4toku8keyrange12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.bd)
  %i.bp = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.bq = call noundef zeroext i1 %i.bm(ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef %i.bp)
  br i1 %i.bq, label %.critedge.split.loop.exit330, label %bb.e, !llvm.loop !183

.critedge.split.loop.exit:                        ; preds = %bb.g
  %i.br = trunc nuw nsw i64 %indvars.iv.next367 to i32
  br label %.critedge

.critedge.split.loop.exit321:                     ; preds = %bb.f
  %i.bs = trunc nuw nsw i64 %indvars.iv.next367 to i32
  br label %.critedge

.critedge.split.loop.exit324:                     ; preds = %.lr.ph368
  %i.bt = trunc nuw nsw i64 %indvars.iv.next367 to i32
  br label %.critedge

.critedge.split.loop.exit330:                     ; preds = %bb.h
  %i.bu = trunc nuw nsw i64 %indvars.iv.next367 to i32
  br label %.critedge

.critedge.loopexit:                               ; preds = %bb.e, %.preheader192
  %i.bv = zext nneg i32 %i.az to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.critedge.split.loop.exit330, %.critedge.split.loop.exit324, %.critedge.split.loop.exit321, %.critedge.split.loop.exit
  %.067.in.lcssa = phi i64 [ %indvars.iv366, %.critedge.split.loop.exit330 ], [ %indvars.iv366, %.critedge.split.loop.exit ], [ %indvars.iv366, %.critedge.split.loop.exit321 ], [ %indvars.iv366, %.critedge.split.loop.exit324 ], [ %i.bv, %.critedge.loopexit ]
  %.067.lcssa = phi i32 [ %i.bu, %.critedge.split.loop.exit330 ], [ %i.br, %.critedge.split.loop.exit ], [ %i.bs, %.critedge.split.loop.exit321 ], [ %i.bt, %.critedge.split.loop.exit324 ], [ %smax, %.critedge.loopexit ] ; 2 uses
  %i.bw = call noundef ptr @_ZNK4toku8keyrange12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.aw) ; 2 uses
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %.067.in.lcssa
  %i.by = call noundef ptr @_ZNK4toku8keyrange13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.bx) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 0, ptr %i.aa, align 8, !tbaa !122
  store ptr null, ptr %i.ab, align 8, !tbaa !113
  store <2 x ptr> %i.ag, ptr %i.ac, align 8, !tbaa !114
  store i64 0, ptr %i.ad, align 8, !tbaa !123
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !101 ; 2 uses
  %.not76 = icmp eq ptr %i.ca, null
  br i1 %.not76, label %._crit_edge.thread.i.i.i, label %bb.j

._crit_edge.thread.i.i.i:                         ; preds = %.critedge
  %i.cb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %._crit_edge.thread.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.ax, align 8, !tbaa !42
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !42
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #21
  %i.ce = load i64, ptr %i.ad, align 8, !tbaa !123
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.ad, align 8, !tbaa !123
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.j:                                             ; preds = %.noexc, %.critedge
  %.066 = phi ptr [ %i.ca, %.critedge ], [ %7, %.noexc ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.066, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !111 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.066, i64 8 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit, %bb.j
  %i.cm = load ptr, ptr %i.ab, align 8, !tbaa !113
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.cm)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #24
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cp = icmp slt i32 %.067.lcssa, %.pre.i
  br i1 %i.cp, label %.preheader192, label %.lr.ph216.preheader, !llvm.loop !184

bb.l:                                             ; preds = %.lr.ph, %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit
  %.sroa.0157.0213 = phi ptr [ %i.ci, %.lr.ph ], [ %i.lt, %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0157.0213, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !42 ; 3 uses
  store i64 %i.cr, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.cs = load i8, ptr %4, align 8, !tbaa !116, !range !62, !noundef !63
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.e, align 8, !tbaa !51  ; 4 uses
  %i.cv = load i32, ptr %i.ae, align 4, !tbaa !51 ; 3 uses
  %.not38.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not38.i.i, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.cw = add i32 %i.cv, %i.cu
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !51  ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.042.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %bb.q ] ; 2 uses
  %.02441.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.125.i.i, %bb.q ] ; 2 uses
  %.02640.i.i = phi i32 [ %i.cw, %.lr.ph.i.i ], [ %.127.i.i, %bb.q ] ; 2 uses
  %.02839.i.i = phi i32 [ %i.cu, %.lr.ph.i.i ], [ %.129.i.i, %bb.q ] ; 2 uses
  %i.cy = add i32 %.02839.i.i, %.02640.i.i
  %i.cz = lshr i32 %i.cy, 1                       ; 5 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !125
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !127 ; 2 uses
  %i.de = icmp ult i64 %i.cr, %i.dd
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = add nuw i32 %i.cz, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.not37.i.i = icmp eq i64 %i.cr, %i.dd          ; 2 uses
  %.024..i.i = select i1 %.not37.i.i, i32 %.02441.i.i, i32 %i.cz
  %..0.i.i = select i1 %.not37.i.i, i32 %i.cz, i32 %.042.i.i
  %i.dg = freeze i32 %.024..i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.129.i.i = phi i32 [ %i.df, %bb.o ], [ %.02839.i.i, %bb.p ] ; 2 uses
  %.127.i.i = phi i32 [ %.02640.i.i, %bb.o ], [ %i.cz, %bb.p ] ; 2 uses
  %.125.i.i = phi i32 [ %.02441.i.i, %bb.o ], [ %i.dg, %bb.p ] ; 3 uses
  %.1.i.i = phi i32 [ %.042.i.i, %bb.o ], [ %..0.i.i, %bb.p ] ; 4 uses
  %.not.i.i80 = icmp eq i32 %.129.i.i, %.127.i.i
  br i1 %.not.i.i80, label %._crit_edge.i.i, label %bb.n, !llvm.loop !185

._crit_edge.i.i:                                  ; preds = %bb.q
  %.not33.i.i = icmp eq i32 %.1.i.i, -1
  br i1 %.not33.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.dh = zext nneg i32 %.1.i.i to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !125
  store ptr %i.dj, ptr %i.d, align 8, !tbaa !125
  %i.dk = sub i32 %.1.i.i, %i.cu
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %.not34.i.i = icmp eq i32 %.125.i.i, -1
  %i.dl = sub i32 %.125.i.i, %i.cu
  br i1 %.not34.i.i, label %.thread.i.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

.thread.i.i:                                      ; preds = %bb.s, %bb.m
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i: ; preds = %.thread.i.i, %bb.s, %bb.r
  %storemerge35.i.i = phi i32 [ %i.dk, %bb.r ], [ %i.cv, %.thread.i.i ], [ %i.dl, %bb.s ]
  %.030.i.i = phi i32 [ 0, %bb.r ], [ -30989, %.thread.i.i ], [ -30989, %bb.s ]
  store i32 %storemerge35.i.i, ptr %i.c, align 4, !tbaa !52
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit

bb.t:                                             ; preds = %bb.l
  %i.dm = invoke noundef i32 @_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE18find_internal_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiRKNS_12omt_internal17subtree_templatedILb0EEES9_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
          to label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit unwind label %bb.bf

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit: ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i, %bb.t
  %.0.i = phi i32 [ %.030.i.i, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i ], [ %i.dm, %bb.t ]
  %i.dn = icmp eq i32 %.0.i, -30989
  br i1 %i.dn, label %bb.u, label %bb.bg

bb.u:                                             ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit
  %i.do = invoke noundef ptr @_Z12toku_xmallocm(i64 noundef 72)
          to label %bb.v unwind label %bb.bf      ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !42
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !127
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  invoke void @_ZN4toku12range_buffer6createEv(ptr noundef nonnull align 8 dereferenceable(60) %i.dq)
          to label %bb.w unwind label %bb.bf

bb.w:                                             ; preds = %bb.v
  %i.dr = load i8, ptr %i.cl, align 8, !tbaa !100, !range !62, !noundef !63
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = xor i1 %i.ds, true
  invoke void @_ZN4toku12range_buffer6appendEPK10__toku_dbtS3_b(ptr noundef nonnull align 8 dereferenceable(60) %i.dq, ptr noundef %i.bw, ptr noundef %i.by, i1 noundef zeroext %i.dt)
          to label %bb.x unwind label %bb.bf

bb.x:                                             ; preds = %bb.w
  %i.du = load i32, ptr %i.c, align 4, !tbaa !52  ; 8 uses
  %i.dv = load i8, ptr %4, align 8, !tbaa !116, !range !62, !noundef !63
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = load i32, ptr %i.e, align 8, !tbaa !65  ; 2 uses
  %i.dy = icmp eq i32 %i.dx, -1                   ; 2 uses
  br i1 %i.dy, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread23.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i: ; preds = %bb.y
  %.not29.i = icmp eq i32 %i.du, 0
  br i1 %.not29.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i141, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread23.i: ; preds = %bb.y
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.ea = zext i32 %i.dx to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !129 ; 3 uses
  %i.ee = icmp ugt i32 %i.du, %i.ed
  br i1 %i.ee, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit, label %bb.ad

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread.i: ; preds = %bb.x
  %i.ef = load i32, ptr %i.ae, align 4, !tbaa !51 ; 2 uses
  %i.eg = icmp ugt i32 %i.du, %i.ef
  br i1 %i.eg, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread.i
  %i.eh = add i32 %i.ef, 1                        ; 2 uses
  %i.ei = call i32 @llvm.umax.i32(i32 %i.eh, i32 2)
  %i.ej = shl i32 %i.ei, 1                        ; 3 uses
  %i.ek = load i32, ptr %i.f, align 4, !tbaa !117 ; 2 uses
  %i.el = load i32, ptr %i.e, align 8, !tbaa !51
  %i.em = sub i32 %i.ek, %i.el
  %i.en = icmp uge i32 %i.em, %i.eh
  %i.eo = lshr i32 %i.ek, 1
  %.not.i.i145 = icmp ult i32 %i.eo, %i.ej
  %or.cond.i.i = and i1 %.not.i.i145, %i.en
  br i1 %or.cond.i.i, label %.noexc85.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ep = zext i32 %i.ej to i64
  %i.eq = shl nuw nsw i64 %i.ep, 3
  %i.er = invoke noundef ptr @_Z12toku_xmallocm(i64 noundef %i.eq)
          to label %.noexc146 unwind label %bb.bf ; 2 uses

.noexc146:                                        ; preds = %bb.aa
  %i.es = load i32, ptr %i.ae, align 4, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq i32 %i.es, 0
  br i1 %.not9.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc146
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.eu = load i32, ptr %i.e, align 8, !tbaa !51
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ev
  %i.ex = zext i32 %i.es to i64
  %i.ey = shl nuw nsw i64 %i.ex, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.er, ptr align 8 %i.ew, i64 %i.ey, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc146
  store i32 0, ptr %i.e, align 8, !tbaa !51
  store i32 %i.ej, ptr %i.f, align 4, !tbaa !117
  %i.ez = load ptr, ptr %i.h, align 8, !tbaa !51
  invoke void @_Z9toku_freePv(ptr noundef %i.ez)
          to label %.noexc85 unwind label %bb.bf

bb.ad:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread23.i
  %i.fa = add i32 %i.ed, 1                        ; 2 uses
  %i.fb = call i32 @llvm.umax.i32(i32 %i.fa, i32 2)
  %i.fc = shl i32 %i.fb, 1
  %i.fd = icmp ne i32 %i.ed, -1
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i141

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i141: ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i, %bb.ad
  %i.fe = phi i32 [ %i.fc, %bb.ad ], [ 4, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i ]
  %i.ff = phi i32 [ %i.fa, %bb.ad ], [ 1, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i ]
  %i.fg = phi i64 [ %i.ea, %bb.ad ], [ 4294967295, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i ]
  %.0.i.i142 = phi i1 [ %i.fd, %bb.ad ], [ true, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i ]
  %i.fh = load i32, ptr %i.f, align 4, !tbaa !117 ; 3 uses
  %i.fi = lshr i32 %i.fh, 1
  %.not.i143 = icmp ult i32 %i.fi, %i.fe
  br i1 %.not.i143, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i141
  %i.fj = load i32, ptr %i.ae, align 4, !tbaa !51
  %.not7.i = icmp uge i32 %i.fj, %i.fh
end_hunk_0
begin_hunk_1_@_ZN4toku8locktree8escalateEPFvmPKS0_RKNS_12range_bufferEPvES6_:bb.a
  %.0.i.i33.i = phi i32 [ %i.iy, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !65 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, -1
  br i1 %i.jb, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i, label %bb.av

bb.av:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i
  %i.jc = zext i32 %i.ja to i64
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !129
  %i.jg = add i32 %i.jf, 1
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i: ; preds = %bb.av, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i
  %.0.i11.i35.i = phi i32 [ %i.jg, %bb.av ], [ 1, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32.i ] ; 2 uses
  %i.jh = add i32 %.0.i.i33.i, 1
  %i.ji = add i32 %.0.i11.i35.i, 2
  %i.jj = lshr i32 %i.ji, 1
  %i.jk = icmp ult i32 %i.jh, %i.jj
  %i.jl = add i32 %.0.i11.i35.i, 1
  %i.jm = add i32 %.0.i.i33.i, 2
  %i.jn = lshr i32 %i.jm, 1
  %i.jo = icmp ult i32 %i.jl, %i.jn
  %i.jp = select i1 %i.jk, i1 true, i1 %i.jo
  %spec.select190 = select i1 %i.jp, ptr %.tr4049.i, ptr null
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i, %bb.as
  %.3 = phi ptr [ %.1, %bb.as ], [ %spec.select190, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37.i ] ; 2 uses
  br i1 %i.hj, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jq = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.jr = zext i32 %i.hi to i64
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !129
  %i.jv = xor i32 %i.ju, -1
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i: ; preds = %bb.ax, %bb.aw
  %.0.i38.i = phi i32 [ %i.jv, %bb.ax ], [ -1, %bb.aw ]
  %i.jw = add i32 %.0.i38.i, %.tr42.ph52.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 3 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !65 ; 2 uses
  %i.jz = icmp eq i32 %i.jy, -1
  br i1 %i.jz, label %.noexc89, label %.lr.ph.i137

.noexc89:                                         ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i, %tailrecurse.i, %.thread27.i
  %.4 = phi ptr [ null, %.thread27.i ], [ %.2, %tailrecurse.i ], [ %.3, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i ] ; 4 uses
  %.tr40.lcssa.i = phi ptr [ %i.e, %.thread27.i ], [ %i.hh, %tailrecurse.i ], [ %i.jx, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39.i ]
  %i.ka = load i32, ptr %i.ae, align 4, !tbaa !51 ; 3 uses
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.ae, align 4, !tbaa !51
  %i.kc = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.kd = zext i32 %i.ka to i64
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %i.kd ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i32 1, ptr %i.kf, align 8, !tbaa !129
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 -1, ptr %i.kg, align 4, !tbaa !65
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store i32 -1, ptr %i.kh, align 8, !tbaa !65
  store ptr %i.do, ptr %i.ke, align 8, !tbaa !130
  store i32 %i.ka, ptr %.tr40.lcssa.i, align 4, !tbaa !65
  %.not13.i = icmp eq ptr %.4, null
  br i1 %.not13.i, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit, label %bb.ay

bb.ay:                                            ; preds = %.noexc89
  %i.ki = load i32, ptr %.4, align 4, !tbaa !65   ; 4 uses
  %i.kj = load i32, ptr %i.e, align 8, !tbaa !65
  %i.kk = icmp eq i32 %i.ki, %i.kj
  br i1 %i.kk, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.kl = icmp eq i32 %i.ki, -1
  br i1 %i.kl, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.kn = zext i32 %i.ki to i64
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !129
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i = phi i32 [ 0, %bb.az ], [ %i.kq, %bb.ba ] ; 2 uses
  %i.kr = shl i32 %.0.i.i.i, 1
  %i.ks = call i32 @llvm.umax.i32(i32 %i.kr, i32 4) ; 2 uses
  %i.kt = zext i32 %i.ks to i64
  %i.ku = shl nuw nsw i64 %i.kt, 3
  %i.kv = invoke noundef ptr @_Z12toku_xmallocm(i64 noundef %i.ku)
          to label %.noexc130 unwind label %bb.bf ; 2 uses

.noexc130:                                        ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i
  invoke void @_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.kv, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc131 unwind label %bb.bf

.noexc131:                                        ; preds = %.noexc130
  %i.kw = load ptr, ptr %i.h, align 8, !tbaa !51
  invoke void @_Z9toku_freePv(ptr noundef %i.kw)
          to label %.noexc132 unwind label %bb.bf

.noexc132:                                        ; preds = %.noexc131
  store i8 1, ptr %4, align 8, !tbaa !116
  store i32 %i.ks, ptr %i.f, align 4, !tbaa !117
  store i32 %.0.i.i.i, ptr %i.ae, align 4, !tbaa !51
  store ptr %i.kv, ptr %i.h, align 8, !tbaa !51
  store i32 0, ptr %i.e, align 8, !tbaa !51
  br label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit

bb.bb:                                            ; preds = %bb.ay
  %i.kx = load ptr, ptr %i.h, align 8, !tbaa !51  ; 2 uses
  %i.ky = zext i32 %i.ki to i64
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !129
  %i.lc = zext i32 %i.lb to i64
  %i.ld = shl nuw nsw i64 %i.lc, 2                ; 2 uses
  %i.le = load i32, ptr %i.f, align 4, !tbaa !117
  %i.lf = load i32, ptr %i.ae, align 4, !tbaa !51 ; 2 uses
  %i.lg = sub i32 %i.le, %i.lf
  %i.lh = zext i32 %i.lg to i64
  %i.li = mul nuw nsw i64 %i.lh, 24
  %.not.i129 = icmp samesign ugt i64 %i.ld, %i.li ; 2 uses
  br i1 %.not.i129, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lj = zext i32 %i.lf to i64
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.lj
  br label %.noexc133

bb.bd:                                            ; preds = %bb.bb
  %i.ll = invoke noundef ptr @_Z12toku_xmallocm(i64 noundef %i.ld)
          to label %.noexc133 unwind label %bb.bf

.noexc133:                                        ; preds = %bb.bd, %bb.bc
  %.014.i = phi ptr [ %i.lk, %bb.bc ], [ %i.ll, %bb.bd ] ; 3 uses
  invoke void @_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE28fill_array_with_subtree_idxsEPjRKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.014.i, ptr noundef nonnull align 4 dereferenceable(4) %.4)
          to label %.noexc134 unwind label %bb.bf

.noexc134:                                        ; preds = %.noexc133
  %i.lm = load i32, ptr %i.la, align 8, !tbaa !129
  invoke void @_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE25rebuild_subtree_from_idxsEPNS_12omt_internal17subtree_templatedILb0EEEPKjj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %.4, ptr noundef %.014.i, i32 noundef %i.lm)
          to label %.noexc135 unwind label %bb.bf

.noexc135:                                        ; preds = %.noexc134
  br i1 %.not.i129, label %bb.be, label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit

bb.be:                                            ; preds = %.noexc135
  invoke void @_Z9toku_freePv(ptr noundef nonnull %.014.i)
          to label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit unwind label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.t, %.noexc149, %.noexc148, %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE16convert_to_arrayEv.exit.i, %bb.ac, %bb.aa, %bb.be, %.noexc134, %.noexc133, %bb.bd, %.noexc131, %.noexc130, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i.i, %.noexc87, %.noexc86, %bb.ai, %bb.w, %bb.v, %bb.u
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bh

bb.bg:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit
  %i.lo = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i8, ptr %i.cl, align 8, !tbaa !100, !range !62, !noundef !63
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = xor i1 %i.lr, true
  invoke void @_ZN4toku12range_buffer6appendEPK10__toku_dbtS3_b(ptr noundef nonnull align 8 dereferenceable(60) %i.lp, ptr noundef %i.bw, ptr noundef %i.by, i1 noundef zeroext %i.ls)
          to label %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit unwind label %bb.bf

_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9insert_atERKS2_j.exit: ; preds = %.noexc89, %.noexc135, %.noexc132, %bb.be, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread23.i, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread.i, %bb.al, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.lt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0157.0213) #22 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.cj
  br i1 %i.lu, label %._crit_edge, label %bb.l

bb.bh:                                            ; preds = %bb.bf, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ln, %bb.bf ], [ %i.cg, %bb.i ]
  %i.lv = load ptr, ptr %i.ab, align 8, !tbaa !113
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.lv)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit91 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lw = landingpad { ptr, i32 }
          catch ptr null
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0
  call void @__clang_call_terminate(ptr %i.lx) #24
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit91:           ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %bb.bl
  %indvars.iv242 = phi i64 [ 0, %.lr.ph216.preheader ], [ %indvars.iv.next243, %bb.bl ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv242 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 104
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !101 ; 4 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph216
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !113
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, ptr noundef %i.md)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit92 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.me = landingpad { ptr, i32 }
          catch ptr null
  %i.mf = extractvalue { ptr, i32 } %i.me, 0
  call void @__clang_call_terminate(ptr %i.mf) #24
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit92:           ; preds = %bb.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef 48) #25
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit92, %.lr.ph216
  call void @_ZN4toku8keyrange7destroyEv(ptr noundef nonnull align 8 dereferenceable(81) %i.ly)
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit194, label %.lr.ph216, !llvm.loop !186

._crit_edge217:                                   ; preds = %_ZNK4toku15concurrent_tree15locked_keyrange7iterateIZNS_L25extract_first_n_row_locksEPS1_PNS_16locktree_managerEPNS_8row_lockEiE14extract_fn_objEEvPT_.exit.i, %.loopexit194, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_Z9toku_freePv(ptr noundef %i.q)
  %i.mg = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.mh = call noundef zeroext i1 @_ZN4toku15concurrent_tree8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.mg) ; 0 uses
  %i.mi = load i8, ptr %4, align 8, !tbaa !116, !range !62, !noundef !63 ; 4 uses
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %._crit_edge217
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !51
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit

bb.bn:                                            ; preds = %._crit_edge217
  %i.mm = load i32, ptr %i.e, align 8, !tbaa !65  ; 2 uses
  %i.mn = icmp eq i32 %i.mm, -1
  br i1 %i.mn, label %.preheader, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mo = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.mp = zext i32 %i.mm to i64
  %i.mq = getelementptr inbounds nuw [24 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !129
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit: ; preds = %bb.bm, %bb.bo
  %.0.i93 = phi i32 [ %i.ml, %bb.bm ], [ %i.ms, %bb.bo ] ; 2 uses
  %.not224 = icmp eq i32 %.0.i93, 0
  br i1 %.not224, label %.preheader, label %.lr.ph223

.lr.ph223:                                        ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.mu = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %11, i64 104
  %.not74 = icmp eq ptr %1, null
  br label %bb.bp

.preheader:                                       ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread, %bb.bn, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit
  %i.my = phi i8 [ 0, %bb.bn ], [ %i.mi, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit ], [ %i.ou, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread ]
  %i.mz = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  br label %bb.bw

bb.bp:                                            ; preds = %.lr.ph223, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread
  %i.na = phi i8 [ %i.mi, %.lr.ph223 ], [ %i.ou, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 3 uses
  %i.nb = phi i8 [ %i.mi, %.lr.ph223 ], [ %i.ov, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread ]
  %.0221 = phi i32 [ 0, %.lr.ph223 ], [ %i.ow, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 5 uses
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nd = load i32, ptr %i.e, align 8, !tbaa !65  ; 3 uses
  %i.ne = icmp eq i32 %i.nd, -1
  br i1 %i.ne, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98: ; preds = %bb.bp
  %i.nf = load i32, ptr %i.mt, align 4, !tbaa !51
  %.not.i99 = icmp ult i32 %.0221, %i.nf
  br i1 %.not.i99, label %bb.br, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i: ; preds = %bb.bq
  %i.ng = load ptr, ptr %i.h, align 8, !tbaa !51  ; 3 uses
  %i.nh = zext i32 %i.nd to i64
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !129
  %.not12.i94 = icmp ult i32 %.0221, %i.nk
  br i1 %.not12.i94, label %tailrecurse.outer.i.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread

bb.br:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98
  %i.nl = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.nm = load i32, ptr %i.e, align 8, !tbaa !51
  %i.nn = add i32 %i.nm, %.0221
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.no
  br label %.loopexit

tailrecurse.outer.i.i:                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i, %bb.bs
  %.pre.i96 = phi i32 [ %.pre.pre.i, %bb.bs ], [ %i.nd, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i ]
  %.tr21.ph.i.i = phi i32 [ %i.oe, %bb.bs ], [ %.0221, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i ] ; 3 uses
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.outer.i.i
  %i.nq = phi i32 [ %i.nu, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ %.pre.i96, %tailrecurse.outer.i.i ]
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %i.nr ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !65 ; 3 uses
  %i.nv = icmp eq i32 %i.nu, -1
  br i1 %i.nv, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i: ; preds = %tailrecurse.i.i
  %i.nw = zext i32 %i.nu to i64
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !129 ; 2 uses
  %i.oa = icmp ult i32 %.tr21.ph.i.i, %i.nz
  br i1 %i.oa, label %tailrecurse.i.i, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i: ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.i.i
  %.0.i19.i.i = phi i32 [ %i.nz, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ 0, %tailrecurse.i.i ] ; 2 uses
  %i.ob = icmp eq i32 %.tr21.ph.i.i, %.0.i19.i.i
  br i1 %i.ob, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.od = xor i32 %.0.i19.i.i, -1
  %i.oe = add i32 %.tr21.ph.i.i, %i.od
  %.pre.pre.i = load i32, ptr %i.oc, align 4, !tbaa !65
  br label %tailrecurse.outer.i.i

.loopexit:                                        ; preds = %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, %bb.br
  %.sink.in.i = phi ptr [ %i.np, %bb.br ], [ %i.ns, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i ]
  %.sink.i97 = load ptr, ptr %.sink.in.i, align 8, !tbaa !125 ; 2 uses
  %i.of = load i64, ptr %.sink.i97, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.og = getelementptr inbounds nuw i8, ptr %.sink.i97, i64 8 ; 3 uses
  call void @_ZN4toku12range_buffer8iteratorC1EPKS0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.og)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.oh = call noundef zeroext i1 @_ZN4toku12range_buffer8iterator7currentEPNS1_6recordE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %9)
  br i1 %i.oh, label %.lr.ph219, label %._crit_edge220

.lr.ph219:                                        ; preds = %.loopexit, %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.oi = call noundef ptr @_ZNK4toku12range_buffer8iterator6record12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  %i.oj = call noundef ptr @_ZNK4toku12range_buffer8iterator6record13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  call void @_ZN4toku8keyrange6createEPK10__toku_dbtS3_(ptr noundef nonnull align 8 dereferenceable(81) %10, ptr noundef %i.oi, ptr noundef %i.oj)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %11, ptr noundef nonnull align 8 dereferenceable(81) %10, i64 81, i1 false), !tbaa.struct !96
  store i64 %i.of, ptr %i.mu, align 8, !tbaa !99
  %i.ok = load i8, ptr %i.mw, align 8, !tbaa !70, !range !62, !noundef !63
  %i.ol = xor i8 %i.ok, 1
  store i8 %i.ol, ptr %i.mv, align 8, !tbaa !100
  store ptr null, ptr %i.mx, align 8, !tbaa !101
  %i.om = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.on = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv()
  %i.oo = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %11)
  %i.op = load i64, ptr %i.mu, align 8, !tbaa !99
  %i.oq = load i8, ptr %i.mv, align 8, !tbaa !100, !range !62, !noundef !63
  %i.or = trunc nuw i8 %i.oq to i1
  call void @_ZN4toku15concurrent_tree15locked_keyrange6insertERKNS_8keyrangeEmb(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(112) %11, i64 noundef %i.op, i1 noundef zeroext %i.or)
  %.not.i101 = icmp eq ptr %i.om, null
  br i1 %.not.i101, label %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph219
  %i.os = add i64 %i.oo, %i.on
  call void @_ZN4toku16locktree_manager13note_mem_usedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.om, i64 noundef %i.os)
  br label %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit

_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit: ; preds = %.lr.ph219, %bb.bt
  call void @_ZN4toku12range_buffer8iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.ot = call noundef zeroext i1 @_ZN4toku12range_buffer8iterator7currentEPNS1_6recordE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %9)
  br i1 %i.ot, label %.lr.ph219, label %._crit_edge220, !llvm.loop !187

._crit_edge220:                                   ; preds = %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit, %.loopexit
  br i1 %.not74, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge220
  call void %1(i64 noundef %i.of, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(60) %i.og, ptr noundef %2)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge220
  call void @_ZN4toku12range_buffer7destroyEv(ptr noundef nonnull align 8 dereferenceable(60) %i.og)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.pre250 = load i8, ptr %4, align 8, !tbaa !116, !range !62 ; 2 uses
  br label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE5fetchEjPS2_.exit.thread: ; preds = %bb.bq, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98, %bb.bv
  %i.ou = phi i8 [ %i.na, %bb.bq ], [ %i.na, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i ], [ %i.na, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98 ], [ %.pre250, %bb.bv ] ; 2 uses
  %i.ov = phi i8 [ 0, %bb.bq ], [ 0, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.thread10.i ], [ 1, %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i98 ], [ %.pre250, %bb.bv ]
  %i.ow = add nuw i32 %.0221, 1                   ; 2 uses
  %exitcond246.not = icmp eq i32 %i.ow, %.0.i93
  br i1 %exitcond246.not, label %.preheader, label %bb.bp, !llvm.loop !188

bb.bw:                                            ; preds = %.preheader, %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9delete_atEj.exit
  %i.ox = phi i8 [ %i.my, %.preheader ], [ %.pre252, %_ZN4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE9delete_atEj.exit ]
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit103, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.oz = load i32, ptr %i.e, align 8, !tbaa !65  ; 3 uses
  %i.pa = icmp eq i32 %i.oz, -1
  %.pre253 = load ptr, ptr %i.h, align 8, !tbaa !51 ; 6 uses
  br i1 %i.pa, label %bb.ce, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit103.thread172

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit103: ; preds = %bb.bw
  %i.pb = load i32, ptr %i.mz, align 4, !tbaa !51 ; 2 uses
  %.not73 = icmp eq i32 %i.pb, 0
  br i1 %.not73, label %bb.cd, label %_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit.i125

_ZNK4toku3omtIPNS_18txnid_range_bufferES2_Lb0EE4sizeEv.exit103.thread172: ; preds = %bb.bx
  %i.pc = zext i32 %i.oz to i64
end_hunk_1
