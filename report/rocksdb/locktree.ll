Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/locktree?download=true
inline.NumInlined: 366
inline.NumDeleted: 188
begin_hunk_0_@_ZN4toku8locktree13sto_end_earlyEPv:bb.a
  %i.o = extractvalue { i32, i32 } %i.m, 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = zext i32 %i.n to i64
  %.neg4 = sub i64 %.neg5, %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !82
  %i.u = add i64 %.neg4, %i.t
  %i.v = add i64 %i.u, %i.r
  %i.w = add i64 %i.v, %i.q
  store i64 %i.w, ptr %i.s, align 8, !tbaa !82
  ret void
}

declare noundef zeroext i1 @_ZN4toku15concurrent_tree8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN4toku12range_buffer8iteratorC1EPKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN4toku12range_buffer8iterator7currentEPNS1_6recordE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

declare void @_ZN4toku15concurrent_tree15locked_keyrange7prepareEPS0_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 -30994, 1) i32 @_ZN4toku8locktree25acquire_lock_consolidatedEPvmPK10__toku_dbtS4_bPNS_9txnid_setE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %struct.copy_fn_obj.9, align 8      ; 10 uses
  %8 = alloca %struct.copy_fn_obj, align 8        ; 4 uses
  %9 = alloca %"class.toku::keyrange", align 8    ; 9 uses
  %10 = alloca %"class.toku::GrowableArray", align 8 ; 10 uses
  %11 = alloca %"struct.toku::row_lock", align 8  ; 7 uses
  %12 = alloca %"struct.toku::row_lock", align 8  ; 7 uses
  %13 = alloca %"struct.toku::row_lock", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZN4toku8keyrange6createEPK10__toku_dbtS3_(ptr noundef nonnull align 8 dereferenceable(81) %9, ptr noundef %3, ptr noundef %4)
  call void @_ZN4toku15concurrent_tree15locked_keyrange7acquireERKNS_8keyrangeE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(81) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %5, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %10, ptr %8, align 8, !tbaa !85
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = call noundef zeroext i1 @_ZN4toku8treenode8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(202) %i.b)
  br i1 %i.c, label %_ZN4tokuL37iterate_and_get_overlapping_row_locksEPKNS_15concurrent_tree15locked_keyrangeEPNS_13GrowableArrayINS_8row_lockEEE.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_ZN4toku8treenode17traverse_overlapsIZNS_L37iterate_and_get_overlapping_row_locksEPKNS_15concurrent_tree15locked_keyrangeEPNS_13GrowableArrayINS_8row_lockEEEE11copy_fn_objEEvRKNS_8keyrangeEPT_(ptr noundef nonnull align 8 dereferenceable(202) %i.d, ptr noundef nonnull align 8 dereferenceable(81) %i.e, ptr noundef nonnull %8)
  br label %_ZN4tokuL37iterate_and_get_overlapping_row_locksEPKNS_15concurrent_tree15locked_keyrangeEPNS_13GrowableArrayINS_8row_lockEEE.exit

_ZN4tokuL37iterate_and_get_overlapping_row_locksEPKNS_15concurrent_tree15locked_keyrangeEPNS_13GrowableArrayINS_8row_lockEEE.exit: ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.g, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 9 ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !89
  store ptr %10, ptr %7, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.i, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %4, ptr %i.j, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.f, ptr %i.k, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.n = call noundef zeroext i1 @_ZN4toku8treenode8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(202) %i.m)
  br i1 %i.n, label %_ZN4tokuL38iterate_and_get_overlapping_row_locks2EPKNS_15concurrent_tree15locked_keyrangeEPK10__toku_dbtS6_PNS_10comparatorEmPNS_13GrowableArrayINS_8row_lockEEE.exit.thread, label %_ZN4tokuL38iterate_and_get_overlapping_row_locks2EPKNS_15concurrent_tree15locked_keyrangeEPK10__toku_dbtS6_PNS_10comparatorEmPNS_13GrowableArrayINS_8row_lockEEE.exit

_ZN4tokuL38iterate_and_get_overlapping_row_locks2EPKNS_15concurrent_tree15locked_keyrangeEPK10__toku_dbtS6_PNS_10comparatorEmPNS_13GrowableArrayINS_8row_lockEEE.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.h

_ZN4tokuL38iterate_and_get_overlapping_row_locks2EPKNS_15concurrent_tree15locked_keyrangeEPK10__toku_dbtS6_PNS_10comparatorEmPNS_13GrowableArrayINS_8row_lockEEE.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @_ZN4toku8treenode17traverse_overlapsIZNS_L38iterate_and_get_overlapping_row_locks2EPKNS_15concurrent_tree15locked_keyrangeEPK10__toku_dbtS8_PNS_10comparatorEmPNS_13GrowableArrayINS_8row_lockEEEE11copy_fn_objEEvRKNS_8keyrangeEPT_(ptr noundef nonnull align 8 dereferenceable(202) %i.o, ptr noundef nonnull align 8 dereferenceable(81) %i.p, ptr noundef nonnull %7)
  %.pre.i = load i8, ptr %i.h, align 1, !tbaa !89, !range !62
  %i.q = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4tokuL38iterate_and_get_overlapping_row_locks2EPKNS_15concurrent_tree15locked_keyrangeEPK10__toku_dbtS6_PNS_10comparatorEmPNS_13GrowableArrayINS_8row_lockEEE.exit
  %i.r = call noundef zeroext i1 @_ZN4toku15concurrent_tree15locked_keyrange16add_shared_ownerERKNS_8keyrangeEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(81) %9, i64 noundef %2)
  br i1 %i.r, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %11, ptr noundef nonnull align 8 dereferenceable(81) %9, i64 81, i1 false), !tbaa.struct !96
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i64 %2, ptr %i.s, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i8 0, ptr %i.t, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 104
  store ptr null, ptr %i.u, align 8, !tbaa !101
  %i.v = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv()
  %i.w = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %11)
  %i.x = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %i.w, %i.v
  call void @_ZN4toku16locktree_manager13note_mem_usedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.x, i64 noundef %i.y)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.q

bb.h:                                             ; preds = %_ZN4tokuL38iterate_and_get_overlapping_row_locks2EPKNS_15concurrent_tree15locked_keyrangeEPK10__toku_dbtS6_PNS_10comparatorEmPNS_13GrowableArrayINS_8row_lockEEE.exit.thread, %_ZN4tokuL37iterate_and_get_overlapping_row_locksEPKNS_15concurrent_tree15locked_keyrangeEPNS_13GrowableArrayINS_8row_lockEEE.exit, %_ZN4tokuL38iterate_and_get_overlapping_row_locks2EPKNS_15concurrent_tree15locked_keyrangeEPK10__toku_dbtS6_PNS_10comparatorEmPNS_13GrowableArrayINS_8row_lockEEE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !104 ; 11 uses
  %.not10.i = icmp eq i64 %i.aa, 0
  br i1 %.not10.i, label %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit.thread.thread, label %.lr.ph9.i

_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit.thread.thread: ; preds = %bb.h
  %i.ab = xor i1 %5, true
  br label %._crit_edge

.lr.ph9.i:                                        ; preds = %bb.h
  %.not22.i = icmp eq ptr %6, null
  br i1 %.not22.i, label %iter.check, label %.lr.ph9.split.i

iter.check:                                       ; preds = %.lr.ph9.i
  %i.ac = load ptr, ptr %10, align 8, !tbaa !105, !noalias !162 ; 6 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i64 %i.aa, 16
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi56 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi57 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi58 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [112 x i8], ptr %i.ac, <4 x i64> %vec.ind
  %wide.gep59 = getelementptr inbounds nuw [112 x i8], ptr %i.ac, <4 x i64> %step.add
  %wide.gep60 = getelementptr inbounds nuw [112 x i8], ptr %i.ac, <4 x i64> %step.add.2
  %wide.gep61 = getelementptr inbounds nuw [112 x i8], ptr %i.ac, <4 x i64> %step.add.3
  %wide.gep62 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 88
  %wide.gep63 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep59, i64 88
  %wide.gep64 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep60, i64 88
  %wide.gep65 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep61, i64 88
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep62, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !42
  %wide.masked.gather66 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep63, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !42
  %wide.masked.gather67 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep64, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !42
  %wide.masked.gather68 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep65, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !42
  %i.ae = icmp ne <4 x i64> %wide.masked.gather, %broadcast.splat
  %i.af = icmp ne <4 x i64> %wide.masked.gather66, %broadcast.splat
  %i.ag = icmp ne <4 x i64> %wide.masked.gather67, %broadcast.splat
  %i.ah = icmp ne <4 x i64> %wide.masked.gather68, %broadcast.splat
  %i.ai = or <4 x i1> %vec.phi, %i.ae             ; 2 uses
  %i.aj = or <4 x i1> %vec.phi56, %i.af           ; 2 uses
  %i.ak = or <4 x i1> %vec.phi57, %i.ag           ; 2 uses
  %i.al = or <4 x i1> %vec.phi58, %i.ah           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.aj, %i.ai
  %bin.rdx69 = or <4 x i1> %i.ak, %bin.rdx
  %bin.rdx70 = or <4 x i1> %i.al, %bin.rdx69
  %bin.rdx70.fr = freeze <4 x i1> %bin.rdx70
  %i.an = bitcast <4 x i1> %bin.rdx70.fr to i4
  %i.ao = icmp ne i4 %i.an, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i1 [ %i.ao, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec71 = and i64 %i.aa, -4                    ; 3 uses
  %broadcast.splatinsert72 = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat73 = shufflevector <4 x i1> %broadcast.splatinsert72, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <4 x i64> poison, i64 %2, i64 0
  %broadcast.splat75 = shufflevector <4 x i64> %broadcast.splatinsert74, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert76 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat77 = shufflevector <4 x i64> %broadcast.splatinsert76, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat77, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ]
  %vec.ind79 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next85, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi80 = phi <4 x i1> [ %broadcast.splat73, %vec.epilog.ph ], [ %i.aq, %vec.epilog.vector.body ]
  %wide.gep81 = getelementptr inbounds nuw [112 x i8], ptr %i.ac, <4 x i64> %vec.ind79
  %wide.gep82 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep81, i64 88
  %wide.masked.gather83 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep82, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !42
  %wide.masked.gather83.fr = freeze <4 x i64> %wide.masked.gather83
  %i.ap = icmp ne <4 x i64> %wide.masked.gather83.fr, %broadcast.splat75
  %i.aq = or <4 x i1> %vec.phi80, %i.ap           ; 2 uses
  %index.next84 = add nuw i64 %index78, 4         ; 2 uses
  %vec.ind.next85 = add nuw <4 x i64> %vec.ind79, splat (i64 4)
  %i.ar = icmp eq i64 %index.next84, %n.vec71
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.as = bitcast <4 x i1> %i.aq to i4
  %i.at = icmp ne i4 %i.as, 0                     ; 2 uses
  %cmp.n86 = icmp eq i64 %i.aa, %n.vec71
  br i1 %cmp.n86, label %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.us.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec71, %vec.epilog.middle.block ]
  %.0187.us.i.ph = phi i1 [ false, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.08.us.i = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.08.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0187.us.i = phi i1 [ %spec.select.i, %vec.epilog.scalar.ph ], [ %.0187.us.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.au = getelementptr inbounds nuw [112 x i8], ptr %i.ac, i64 %.08.us.i
  %.sroa.3.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sroa.3.0.copyload.us.i = load i64, ptr %.sroa.3.0..sroa_idx.us.i, align 8, !tbaa !42
  %.not.us.i = icmp ne i64 %.sroa.3.0.copyload.us.i, %2
  %spec.select.i = select i1 %.not.us.i, i1 true, i1 %.0187.us.i ; 2 uses
  %i.av = add nuw i64 %.08.us.i, 1                ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.av, %i.aa
  br i1 %exitcond12.not.i, label %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit, label %vec.epilog.scalar.ph, !llvm.loop !158

.lr.ph9.split.i:                                  ; preds = %.lr.ph9.i, %.loopexit.i
  %.08.i = phi i64 [ %i.bh, %.loopexit.i ], [ 0, %.lr.ph9.i ] ; 2 uses
  %.0187.i = phi i1 [ %.1.i, %.loopexit.i ], [ false, %.lr.ph9.i ]
  %i.aw = load ptr, ptr %10, align 8, !tbaa !105, !noalias !162
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %i.aw, i64 %.08.i ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !42 ; 3 uses
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %.sroa.45.0.copyload.i = load ptr, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, %2
  br i1 %.not.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph9.split.i
  %i.ay = icmp eq i64 %.sroa.3.0.copyload.i, -1
  br i1 %i.ay, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.45.0.copyload.i, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !111 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.45.0.copyload.i, i64 8 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.01.06.i = phi ptr [ %i.bf, %bb.l ], [ %i.ba, %bb.j ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %.not23.i = icmp eq i64 %i.be, %2
  br i1 %.not23.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  call void @_ZN4toku9txnid_set3addEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.be)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i) #22 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bb
  br i1 %i.bg, label %.loopexit.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.i
  call void @_ZN4toku9txnid_set3addEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.sroa.3.0.copyload.i)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.l, %bb.m, %bb.j, %.lr.ph9.split.i
  %.1.i = phi i1 [ %.0187.i, %.lr.ph9.split.i ], [ true, %bb.m ], [ true, %bb.j ], [ true, %bb.l ] ; 2 uses
  %i.bh = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %i.aa
  br i1 %exitcond.not.i, label %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit, label %.lr.ph9.split.i, !llvm.loop !1

_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit: ; preds = %.loopexit.i, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %.018.lcssa.i = phi i1 [ %spec.select.i, %vec.epilog.scalar.ph ], [ %i.at, %vec.epilog.middle.block ], [ %i.ao, %middle.block ], [ %.1.i, %.loopexit.i ]
  br i1 %.018.lcssa.i, label %bb.q, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit
  %i.bi = xor i1 %5, true
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 96
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit, %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit.thread.thread
  %.025.in.lcssa = phi i1 [ %i.ab, %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit.thread.thread ], [ %i.ce, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %13, ptr noundef nonnull align 8 dereferenceable(81) %9, i64 81, i1 false), !tbaa.struct !96
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  store i64 %2, ptr %i.bl, align 8, !tbaa !99
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.bn = zext i1 %.025.in.lcssa to i8
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !100
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr null, ptr %i.bo, align 8, !tbaa !101
  %i.bp = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.bq = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv()
  %i.br = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %13)
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !99
  %i.bt = load i8, ptr %i.bm, align 8, !tbaa !100, !range !62, !noundef !63
  %i.bu = trunc nuw i8 %i.bt to i1
  call void @_ZN4toku15concurrent_tree15locked_keyrange6insertERKNS_8keyrangeEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(112) %13, i64 noundef %i.bs, i1 noundef zeroext %i.bu)
  %.not.i30 = icmp eq ptr %i.bp, null
  br i1 %.not.i30, label %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bv = add i64 %i.br, %i.bq
  call void @_ZN4toku16locktree_manager13note_mem_usedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.bp, i64 noundef %i.bv)
  br label %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit

_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit: ; preds = %._crit_edge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit
  %.039 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit ] ; 2 uses
  %.025.in38 = phi i1 [ %i.bi, %.lr.ph ], [ %i.ce, %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.bw = load ptr, ptr %10, align 8, !tbaa !105, !noalias !166
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.bw, i64 %.039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull align 8 dereferenceable(112) %i.bx, i64 112, i1 false), !tbaa.struct !112
  call void @_ZN4toku8keyrange6extendERKNS_10comparatorERKS0_(ptr noundef nonnull align 8 dereferenceable(81) %9, ptr noundef nonnull align 8 dereferenceable(17) %i.bj, ptr noundef nonnull align 8 dereferenceable(81) %12)
  %i.by = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.bz = call noundef i64 @_ZN4toku15concurrent_tree29get_insertion_memory_overheadEv()
  %i.ca = call noundef i64 @_ZNK4toku8keyrange15get_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %12)
  call void @_ZN4toku15concurrent_tree15locked_keyrange6removeERKNS_8keyrangeEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(112) %12, i64 noundef -2)
  %.not.i31 = icmp eq ptr %i.by, null
  br i1 %.not.i31, label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = add i64 %i.ca, %i.bz
  call void @_ZN4toku16locktree_manager17note_mem_releasedEm(ptr noundef nonnull align 8 dereferenceable(392) %i.by, i64 noundef %i.cb)
  br label %_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit

_ZN4tokuL25remove_row_lock_from_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEmPNS_16locktree_managerE.exit: ; preds = %bb.o, %bb.p
  %i.cc = load i8, ptr %i.bk, align 8, !range !62
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = select i1 %.025.in38, i1 %i.cd, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.cf = add nuw i64 %.039, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !161

bb.q:                                             ; preds = %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit, %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit, %bb.d, %bb.g
  %.028 = phi i32 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %_ZN4tokuL25insert_row_lock_into_treeEPNS_15concurrent_tree15locked_keyrangeERKNS_8row_lockEPNS_16locktree_managerE.exit ], [ -30994, %_ZN4tokuL28determine_conflicting_txnidsERKNS_13GrowableArrayINS_8row_lockEEERKmPNS_9txnid_setE.exit ]
  call void @_ZN4toku8keyrange7destroyEv(ptr noundef nonnull align 8 dereferenceable(81) %9)
  %i.cg = load ptr, ptr %10, align 8, !tbaa !105
  call void @_Z9toku_freePv(ptr noundef %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  ret i32 %.028
}

declare noundef ptr @_ZNK4toku12range_buffer8iterator6record12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef ptr @_ZNK4toku12range_buffer8iterator6record13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_ZN4toku15concurrent_tree15locked_keyrange7releaseEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

declare void @_ZN4toku12range_buffer8iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN4toku15concurrent_tree15locked_keyrange10remove_allEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4toku8locktree15sto_try_acquireEPvmPK10__toku_dbtS4_b(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.toku::keyrange", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call noundef zeroext i1 @_ZN4toku15concurrent_tree8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.b)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK4toku12range_buffer8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(60) %i.d)
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = icmp sgt i32 %i.g, 99
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZNK4toku12range_buffer8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(60) %i.d) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %2, ptr %i.j, align 8, !tbaa !48
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
