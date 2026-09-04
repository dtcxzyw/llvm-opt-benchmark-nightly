Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-sections.cc.X86_64?download=true
inline.NumInlined: 1857
inline.NumDeleted: 968
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare { i64, ptr } @_ZNK4mold9InputFileINS_6X86_64EE15get_source_nameEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE6lookupILb1ES7_PFPNSP_4nodeERNSK_INS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketEEERSM_PKSG_EEEbRKT0_S11_PNSP_14const_accessorEbT1_SS_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !411
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not48 = icmp eq ptr %3, null
  %i.g = zext i1 %4 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.085 = phi i64 [ %i.d, %bb.a ], [ %.085.be, %.backedge.backedge ] ; 8 uses
  %.040 = phi ptr [ %6, %bb.a ], [ %.040.be, %.backedge.backedge ] ; 4 uses
  %.035 = phi i64 [ 0, %bb.a ], [ %.035.be, %.backedge.backedge ] ; 4 uses
  %i.i = and i64 %.085, %i.b                      ; 3 uses
  %i.j = or i64 %i.i, 1
  %i.k = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = xor i64 %i.k, 63
  %i.m = lshr exact i64 -9223372036854775808, %i.k
  %i.n = and i64 %i.m, -2
  %i.o = sub i64 %i.i, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  %i.q = load atomic ptr, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.o ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 6 uses
  %i.t = load atomic ptr, ptr %i.s acquire, align 8
  %i.u = icmp eq ptr %i.t, inttoptr (i64 3 to ptr)
  br i1 %i.u, label %bb.b, label %.preheader9.i.i.preheader

.preheader9.i.i.preheader:                        ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i, %bb.b, %.backedge
  br label %.preheader9.i.i.outer

bb.b:                                             ; preds = %.backedge
  %i.v = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.w = and i64 %i.v, -3
  %.not.i.i3.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i3.i, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i, label %.preheader9.i.i.preheader

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i: ; preds = %bb.b
  %i.x = cmpxchg ptr %i.r, i64 %i.v, i64 1 seq_cst seq_cst, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.c, label %.preheader9.i.i.preheader

bb.c:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i.i
  %i.z = load atomic ptr, ptr %i.s monotonic, align 8
  %i.aa = icmp eq ptr %i.z, inttoptr (i64 3 to ptr)
  br i1 %i.aa, label %bb.d, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE15bucket_accessorC2EPSP_mb.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13rehash_bucketEPNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketEm(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull %i.r, i64 noundef %i.i), !inline_history !3
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE15bucket_accessorC2EPSP_mb.exit

.preheader9.i.i:                                  ; preds = %.preheader9.i.i.outer, %bb.i
  %i.ab = load atomic i64, ptr %i.r monotonic, align 8
  %i.ac = and i64 %i.ab, 3
  %.not.i4.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i4.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.preheader9.i.i
  %i.ad = atomicrmw add ptr %i.r, i64 4 seq_cst, align 8
  %i.ae = and i64 %i.ad, 1
  %.not5.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not5.not.i.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE15bucket_accessorC2EPSP_mb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = atomicrmw sub ptr %i.r, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader9.i.i
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp sgt i32 %.sroa.0.0.i3.i.i.ph, 0
  br i1 %i.ag, label %.lr.ph.i.i.i7.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.h
  %xtraiter = and i32 %.sroa.0.0.i3.i.i.ph, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i7.i.i.prol.loopexit, label %.lr.ph.i.i.i7.i.i.prol

.lr.ph.i.i.i7.i.i.prol:                           ; preds = %.lr.ph.i.i.i7.i.i.preheader, %.lr.ph.i.i.i7.i.i.prol
  %.01.i.i.i8.i.i.prol = phi i32 [ %i.ah, %.lr.ph.i.i.i7.i.i.prol ], [ %.sroa.0.0.i3.i.i.ph, %.lr.ph.i.i.i7.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i7.i.i.prol ], [ 0, %.lr.ph.i.i.i7.i.i.preheader ]
  %i.ah = add nsw i32 %.01.i.i.i8.i.i.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i7.i.i.prol.loopexit, label %.lr.ph.i.i.i7.i.i.prol, !llvm.loop !603

.lr.ph.i.i.i7.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.i7.i.i.prol, %.lr.ph.i.i.i7.i.i.preheader
  %.01.i.i.i8.i.i.unr = phi i32 [ %.sroa.0.0.i3.i.i.ph, %.lr.ph.i.i.i7.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i7.i.i.prol ]
  %i.ai = icmp ult i32 %.sroa.0.0.i3.i.i.ph, 8
  br i1 %i.ai, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i.prol.loopexit, %.lr.ph.i.i.i7.i.i
  %.01.i.i.i8.i.i = phi i32 [ %i.aj, %.lr.ph.i.i.i7.i.i ], [ %.01.i.i.i8.i.i.unr, %.lr.ph.i.i.i7.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.aj = add nsw i32 %.01.i.i.i8.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ak = icmp sgt i32 %.01.i.i.i8.i.i, 8
  br i1 %i.ak, label %.lr.ph.i.i.i7.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i, !llvm.loop !4

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i: ; preds = %.lr.ph.i.i.i7.i.i.prol.loopexit, %.lr.ph.i.i.i7.i.i, %bb.h
  %i.al = shl i32 %.sroa.0.0.i3.i.i.ph, 1
  br label %.preheader9.i.i.outer, !llvm.loop !5

.preheader9.i.i.outer:                            ; preds = %.preheader9.i.i.preheader, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i
  %.sroa.0.0.i3.i.i.ph = phi i32 [ 1, %.preheader9.i.i.preheader ], [ %i.al, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i6.i.i ] ; 7 uses
  %i.am = icmp slt i32 %.sroa.0.0.i3.i.i.ph, 17
  br label %.preheader9.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = tail call noundef i32 @sched_yield() #15, !inline_history !6 ; 0 uses
  br label %.preheader9.i.i, !llvm.loop !5

_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE15bucket_accessorC2EPSP_mb.exit: ; preds = %bb.e, %bb.c, %bb.d
  %.sroa.11.4 = phi i8 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.e ] ; 3 uses
  %i.ao = load atomic ptr, ptr %i.s monotonic, align 8 ; 3 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 63 to ptr)
  br i1 %i.ap, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE15bucket_accessorC2EPSP_mb.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !411
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %.07.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.au, %bb.k ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !411
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %.07.i, align 8, !tbaa !484 ; 3 uses
  %i.av = icmp ugt ptr %i.au, inttoptr (i64 63 to ptr)
  br i1 %i.av, label %bb.j, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !604

_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.k, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE15bucket_accessorC2EPSP_mb.exit
  %.0.lcssa.i = phi ptr [ %i.ao, %_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE15bucket_accessorC2EPSP_mb.exit ], [ %i.au, %bb.k ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.l, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit

bb.l:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit
  %.not47 = icmp eq ptr %.040, null
  br i1 %.not47, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #15, !inline_history !605
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.141 = phi ptr [ %.040, %bb.l ], [ %i.aw, %bb.m ] ; 7 uses
  %i.ax = trunc nuw i8 %.sroa.11.4 to i1
  br i1 %i.ax, label %.critedge, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %bb.n
  %i.ay = tail call noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.ay, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.az = load atomic ptr, ptr %i.s monotonic, align 8 ; 3 uses
  %i.ba = icmp ugt ptr %i.az, inttoptr (i64 63 to ptr)
  br i1 %i.ba, label %.lr.ph.i52, label %.critedge

.lr.ph.i52:                                       ; preds = %bb.o
  %i.bb = load ptr, ptr %1, align 8, !tbaa !411
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i52
  %.07.i53 = phi ptr [ %i.az, %.lr.ph.i52 ], [ %i.bf, %bb.q ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i53, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !411
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit54, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %.07.i53, align 8, !tbaa !484 ; 3 uses
  %i.bg = icmp ugt ptr %i.bf, inttoptr (i64 63 to ptr)
  br i1 %i.bg, label %bb.p, label %.critedge, !llvm.loop !604

_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit54: ; preds = %bb.p
  %i.bh = icmp ugt ptr %.07.i53, inttoptr (i64 63 to ptr)
  br i1 %i.bh, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %.critedge, !llvm.loop !606

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit54
  %i.bi = atomicrmw add ptr %i.r, i64 3 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit

.critedge:                                        ; preds = %bb.q, %bb.o, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit54, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.n
  %.033.lcssa = phi ptr [ null, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit ], [ null, %bb.n ], [ %.07.i53, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit54 ], [ %i.az, %bb.o ], [ %i.bf, %bb.q ]
  %i.bj = load atomic i64, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.085, %i.bj
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.bk = xor i64 %i.bj, %.085
  %i.bl = and i64 %i.bk, %i.b
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = add i64 %.085, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.012.i.i = phi i64 [ %i.bm, %bb.s ], [ %i.bo, %bb.t ] ; 2 uses
  %i.bn = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.bn, 0
  %i.bo = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.t, label %bb.u, !llvm.loop !607

bb.u:                                             ; preds = %bb.t
  %i.bp = add i64 %i.bo, -1
  %i.bq = and i64 %i.bp, %i.b                     ; 2 uses
  %i.br = or i64 %i.bq, 1
  %i.bs = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 true) ; 2 uses
  %i.bt = xor i64 %i.bs, 63
  %i.bu = lshr exact i64 -9223372036854775808, %i.bs
  %i.bv = and i64 %i.bu, -2
  %i.bw = sub i64 %i.bq, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bt
  %i.by = load atomic ptr, ptr %i.bx acquire, align 8
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load atomic ptr, ptr %i.ca acquire, align 8
  %i.cc = icmp eq ptr %i.cb, inttoptr (i64 3 to ptr)
  br i1 %i.cc, label %bb.v, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit

bb.v:                                             ; preds = %bb.r, %bb.u, %.critedge
  %.5.ph = phi i64 [ %.085, %.critedge ], [ %i.bj, %bb.u ], [ %i.bj, %bb.r ] ; 5 uses
  %i.cd = atomicrmw add ptr %i.f, i64 1 seq_cst, align 8
  %i.ce = add i64 %i.cd, 1
  %i.cf = load atomic ptr, ptr %i.s monotonic, align 8
  store ptr %i.cf, ptr %.141, align 8, !tbaa !484
  store atomic ptr %.141, ptr %i.s monotonic, align 8
  %.not.i60 = icmp ult i64 %i.ce, %.5.ph
  br i1 %.not.i60, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = add i64 %.5.ph, 1
  %i.ch = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = xor i64 %i.ch, 63                       ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ci ; 2 uses
  %i.ck = load atomic ptr, ptr %i.cj acquire, align 8
  %.not12.i = icmp eq ptr %i.ck, null
  br i1 %.not12.i, label %bb.x, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit

bb.x:                                             ; preds = %bb.w
  %i.cl = cmpxchg ptr %i.cj, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.cm = extractvalue { ptr, i1 } %i.cl, 1
  %spec.select.i = select i1 %i.cm, i64 %i.ci, i64 0
  br label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit: ; preds = %bb.j, %bb.x, %bb.w, %bb.v, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit
  %.186 = phi i64 [ %.085, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit ], [ %.085, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ %.5.ph, %bb.x ], [ %.5.ph, %bb.v ], [ %.5.ph, %bb.w ], [ %.085, %bb.j ] ; 2 uses
  %.sroa.11.2 = phi i8 [ %.sroa.11.4, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit ], [ 0, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ 1, %bb.x ], [ 1, %bb.v ], [ 1, %bb.w ], [ %.sroa.11.4, %bb.j ] ; 3 uses
  %.242 = phi ptr [ %.040, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit ], [ %.141, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ null, %bb.x ], [ null, %bb.v ], [ null, %bb.w ], [ %.040, %bb.j ] ; 3 uses
  %.038 = phi i1 [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit ], [ false, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ true, %bb.x ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.j ] ; 2 uses
  %.136 = phi i64 [ %.035, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit ], [ %.035, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ %spec.select.i, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ], [ %.035, %bb.j ] ; 3 uses
  %.134 = phi ptr [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEE13search_bucketIS7_EEPNSP_4nodeERKT_PNS1_13hash_map_baseISO_NSH_13spin_rw_mutexEE6bucketE.exit ], [ %.07.i53, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit ], [ %.141, %bb.x ], [ %.141, %bb.v ], [ %.141, %bb.w ], [ %.07.i, %bb.j ] ; 3 uses
  br i1 %.not48, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit, label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.134, i64 8 ; 9 uses
  %i.co = load atomic i64, ptr %i.cn monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = and i64 %i.co, -3
  %.not.i.i61 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i61, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.cq = and i64 %i.co, 3
  %.not.i7.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i7.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cr = atomicrmw add ptr %i.cn, i64 4 seq_cst, align 8
  %i.cs = and i64 %i.cr, 1
  %.not5.not.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = atomicrmw sub ptr %i.cn, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ad

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.z
  %i.cu = cmpxchg ptr %i.cn, i64 %i.co, i64 1 seq_cst seq_cst, align 8
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  br i1 %i.cv, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.z, %bb.aa, %bb.ac
  tail call void @llvm.x86.sse2.pause()
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.ad
  %.sroa.0.0 = phi i32 [ 2, %bb.ad ], [ %i.dk, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.cw = load atomic i64, ptr %i.cn monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cx = and i64 %i.cw, -3
  %.not.i.i65 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i65, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i66, label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.cy = and i64 %i.cw, 3
  %.not.i7.i62 = icmp eq i64 %i.cy, 0
  br i1 %.not.i7.i62, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cz = atomicrmw add ptr %i.cn, i64 4 seq_cst, align 8
  %i.da = and i64 %i.cz, 1
  %.not5.not.i.i63 = icmp eq i64 %i.da, 0
  br i1 %.not5.not.i.i63, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = atomicrmw sub ptr %i.cn, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.aj

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i66: ; preds = %bb.af
  %i.dc = cmpxchg ptr %i.cn, i64 %i.cw, i64 1 seq_cst seq_cst, align 8
  %i.dd = extractvalue { i64, i1 } %i.dc, 1
  br i1 %i.dd, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, label %bb.aj

bb.aj:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i66, %bb.af, %bb.ag, %bb.ai
  %i.de = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.de, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.aj
  %xtraiter201 = and i32 %.sroa.0.0, 6            ; 2 uses
  %lcmp.mod202.not = icmp eq i32 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.df, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter203 = phi i32 [ %prol.iter203.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.df = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter203.next = add i32 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i32 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !608

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.df, %.lr.ph.i.i.prol ]
  %i.dg = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.dg, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.dh, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.dh = add nsw i32 %.01.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.di = icmp sgt i32 %.01.i.i, 8
  br i1 %i.di, label %.lr.ph.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i, !llvm.loop !4

_ZN3tbb6detail2d013machine_pauseEi.exit.i:        ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.dj = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.dj, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.ak

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.aj, %_ZN3tbb6detail2d013machine_pauseEi.exit.i
  %i.dk = shl i32 %.sroa.0.0, 1
  br label %bb.ae, !llvm.loop !609

bb.ak:                                            ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i
  %i.dl = trunc nuw i8 %.sroa.11.2 to i1
  br i1 %i.dl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dm = atomicrmw and ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

bb.am:                                            ; preds = %bb.ak
  %i.dn = atomicrmw sub ptr %i.r, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split: ; preds = %bb.ah, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i66, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.ab
  store ptr %i.cn, ptr %3, align 8, !tbaa !421
  store i8 %i.g, ptr %i.h, align 8, !tbaa !422
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split, %bb.u, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit
  %.4 = phi i64 [ %i.bj, %bb.u ], [ %.186, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit ], [ %.186, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split ]
  %.sroa.11.3 = phi i8 [ 1, %bb.u ], [ %.sroa.11.2, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit ], [ %.sroa.11.2, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split ]
  %.3 = phi ptr [ %.141, %bb.u ], [ %.242, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit ], [ %.242, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split ] ; 6 uses
  %.139 = phi i1 [ false, %bb.u ], [ %.038, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit ], [ %.038, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split ]
  %.237 = phi i64 [ %.035, %bb.u ], [ %.136, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit ], [ %.136, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split ] ; 7 uses
  %.2 = phi ptr [ %.033.lcssa, %bb.u ], [ %.134, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit ], [ %.134, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split ]
  %.1 = phi i32 [ 2, %bb.u ], [ 6, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15insert_new_nodeEPNSO_6bucketEPNS1_18hash_map_node_baseISN_EEm.exit ], [ 0, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.sink.split ]
  %.not.i68 = icmp eq ptr %i.q, null
  br i1 %.not.i68, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit
  %i.do = trunc nuw i8 %.sroa.11.3 to i1
  br i1 %i.do, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dp = atomicrmw and ptr %i.r, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.dq = atomicrmw sub ptr %i.r, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit: ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit, %bb.ao, %bb.ap
  switch i32 %.1, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.unreachabledefault [
    i32 0, label %bb.aq
    i32 2, label %.backedge.backedge
    i32 6, label %.loopexit
  ]

.backedge.backedge:                               ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2
  %.085.be = phi i64 [ %.4, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit ], [ %i.ds, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ]
  %.040.be = phi ptr [ %.3, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit ], [ %.242, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ]
  %.035.be = phi i64 [ %.237, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit ], [ %.136, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ]
  br label %.backedge

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2: ; preds = %bb.am, %bb.al
  %i.dr = tail call noundef i32 @sched_yield() #15 ; 0 uses
  %i.ds = load atomic i64, ptr %i.c acquire, align 8
  br label %.backedge.backedge

bb.aq:                                            ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.2, ptr %i.dt, align 8, !tbaa !427
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.du, align 8, !tbaa !611
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit, %bb.aq
  %.not49 = icmp eq i64 %.237, 0
  br i1 %.not49, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %i.dv = icmp ugt i64 %.237, 7
  br i1 %i.dv, label %.new, label %bb.as

.new:                                             ; preds = %bb.ar
  %i.dw = shl i64 16, %.237
  %i.dx = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.dw) #15 ; 5 uses
  %i.dy = shl nuw i64 1, %.237
  %unroll_iter = and i64 %i.dy, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.new
  %.06.i.i.i = phi i64 [ 0, %.new ], [ %i.ek, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.06.i.i.i ; 2 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !485
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ea, align 8, !tbaa !613
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.06.i.i.i ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
end_hunk_0
