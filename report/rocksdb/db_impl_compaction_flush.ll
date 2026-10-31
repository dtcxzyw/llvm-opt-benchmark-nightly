Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_compaction_flush?download=true
inline.NumInlined: 9898
inline.NumDeleted: 4271
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS_10autovectorINS0_10BGFlushArgELm8EEEPbPNS_10JobContextEPNS_9LogBufferENS_3Env8PriorityE:bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eb, i64 1960 ; 2 uses
  %i.gx = load ptr, ptr %i.cs, align 8, !tbaa !950 ; 3 uses
  %i.gy = load ptr, ptr %i.ca, align 8, !tbaa !951
  %.not.i = icmp eq ptr %i.gx, %i.gy
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_11FSDirectoryELm8EE12emplace_backIJRS2_EEEvDpOT_.exit
  invoke void @_ZN7rocksdb16MutableCFOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(736) %i.gx, ptr noundef nonnull align 8 dereferenceable(736) %i.gw)
          to label %.noexc459 unwind label %.loopexit.split-lp1481.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc459:                                        ; preds = %bb.ah
  %i.gz = load ptr, ptr %i.cs, align 8, !tbaa !950
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 736 ; 2 uses
  store ptr %i.ha, ptr %i.cs, align 8, !tbaa !950
  br label %_ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.ai:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_11FSDirectoryELm8EE12emplace_backIJRS2_EEEvDpOT_.exit
  invoke void @_ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr %i.gx, ptr noundef nonnull align 8 dereferenceable(736) %i.gw)
          to label %._ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit_crit_edge unwind label %.loopexit.split-lp1481.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit_crit_edge: ; preds = %bb.ai
  %.pre1832 = load ptr, ptr %i.cs, align 8, !tbaa !1724
  br label %_ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %._ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit_crit_edge, %.noexc459
  %i.hb = phi ptr [ %.pre1832, %._ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit_crit_edge ], [ %i.ha, %.noexc459 ] ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -736 ; 2 uses
  %i.hd = load ptr, ptr %i.ct, align 8
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %indvars.iv
  %i.hf = load ptr, ptr %i.h, align 8
  %i.hg = getelementptr [32 x i8], ptr %i.hf, i64 %indvars.iv
  %i.hh = getelementptr i8, ptr %i.hg, i64 -256
  %.0.i461 = select i1 %i.dv, ptr %i.he, ptr %i.hh ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.i461, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !956
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i461, i64 24
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !929
  %i.hm = invoke noalias noundef nonnull dereferenceable(1960) ptr @_Znwm(i64 noundef 1960) #36
          to label %bb.aj unwind label %.loopexit.split-lp1481.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.aj:                                            ; preds = %_ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %i.hn = load ptr, ptr %i.cx, align 16, !tbaa !608
  %i.ho = load ptr, ptr %i.cz, align 8, !tbaa !664
  %i.hp = getelementptr inbounds nuw i8, ptr %i.eb, i64 1680
  %i.hq = invoke noundef zeroext i8 @_ZN7rocksdb19GetCompressionFlushERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsE(ptr noundef nonnull align 8 dereferenceable(275) %i.hp, ptr noundef nonnull align 8 dereferenceable(736) %i.hc)
          to label %bb.ak unwind label %.thread1281

bb.ak:                                            ; preds = %bb.aj
  %i.hr = load ptr, ptr %i.da, align 32, !tbaa !464
  %i.hs = getelementptr inbounds i8, ptr %i.hb, i64 -231
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !665, !range !83, !noundef !84
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.eb, i64 2832
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !666 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 816
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 824
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !667, !noalias !1725 ; 2 uses
  %i.ia = load <2 x ptr>, ptr %i.hx, align 8, !tbaa !668, !noalias !1725
  store <2 x ptr> %i.ia, ptr %31, align 16, !tbaa !668, !alias.scope !1725
  %.not.i.i.i.i463 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i463, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 3 uses
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !1725
  %.not.i.i.i.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !669, !noalias !1725
  %i.ie = add nsw i32 %i.id, 1
  store i32 %i.ie, ptr %i.ib, align 4, !tbaa !669, !noalias !1725
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.if = atomicrmw volatile add ptr %i.ib, i32 1 acq_rel, align 4, !noalias !1725 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak
  %i.ig = getelementptr inbounds nuw i8, ptr %i.eb, i64 2968
  store ptr %i.dg, ptr %32, align 8, !tbaa !670
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !64 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.eb, i64 2976
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !671 ; 8 uses
  %i.ik = icmp ugt i64 %i.ij, 15
  br i1 %i.ik, label %bb.ap, label %._crit_edge.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.il = icmp slt i64 %i.ij, 0
  br i1 %i.il, label %.noexc.i, label %bb.aq

.noexc.i:                                         ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
          to label %.noexc464 unwind label %.thread1285.loopexit.split-lp.loopexit.split-lp

.noexc464:                                        ; preds = %.noexc.i
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.im = add nuw i64 %i.ij, 1                    ; 2 uses
  %i.in = icmp slt i64 %i.im, 0
  br i1 %i.in, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !672

.noexc6.i:                                        ; preds = %bb.aq
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc465 unwind label %.thread1285.loopexit.split-lp.loopexit.split-lp

.noexc465:                                        ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.aq
  %i.io = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #36
          to label %.noexc466 unwind label %.thread1285.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc466:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.io, ptr %32, align 8, !tbaa !64
  store i64 %i.ij, ptr %i.dg, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc466, %bb.ao
  %i.ip = phi ptr [ %i.io, %.noexc466 ], [ %i.dg, %bb.ao ] ; 3 uses
  switch i64 %i.ij, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.iq = load i8, ptr %i.ih, align 1, !tbaa !65
  store i8 %i.iq, ptr %i.ip, align 1, !tbaa !65
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr align 1 %i.ih, i64 %i.ij, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i
  store i64 %i.ij, ptr %i.dh, align 8, !tbaa !671
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ij
  store i8 0, ptr %i.ir, align 1, !tbaa !65
  %i.is = load i8, ptr %i.dj, align 2, !tbaa !673, !range !83, !noundef !84
  %i.it = trunc nuw i8 %i.is to i1
  invoke void @_ZN7rocksdb8FlushJobC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_16ColumnFamilyDataERKNS_18ImmutableDBOptionsERKNS_16MutableCFOptionsEmRKNS_11FileOptionsEPNS_10VersionSetEPNS_17InstrumentedMutexEPSt6atomicIbEPNS_10JobContextENS_11FlushReasonEPNS_9LogBufferEPNS_11FSDirectoryESX_NS_15CompressionTypeEPNS_10StatisticsEPNS_11EventLoggerEbbbNS_3Env8PriorityERKSt10shared_ptrINS_8IOTracerEES15_IKNS_18SeqnoToTimeMappingEES8_S8_S6_PNS_26BlobFileCompletionCallbackEb(ptr noundef nonnull align 8 dereferenceable(1960) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull %i.eb, ptr noundef nonnull align 8 dereferenceable(600) %i.cv, ptr noundef nonnull align 8 dereferenceable(736) %i.hc, i64 noundef %i.hj, ptr noundef nonnull align 8 dereferenceable(216) %i.cw, ptr noundef %i.hn, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cy, ptr noundef %4, i32 noundef %i.hl, ptr noundef %5, ptr noundef %i.ho, ptr noundef %i.ec, i8 noundef zeroext %i.hq, ptr noundef %i.hr, ptr noundef nonnull %i.db, i1 noundef zeroext %i.hu, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 %32, ptr noundef nonnull %i.di, i1 noundef zeroext %i.it)
          to label %bb.au unwind label %.loopexit1488

bb.au:                                            ; preds = %bb.at
  %i.iu = load ptr, ptr %i.dk, align 8, !tbaa !959 ; 6 uses
  %i.iv = load ptr, ptr %i.dl, align 8, !tbaa !960
  %.not.i467 = icmp eq ptr %i.iu, %i.iv
  br i1 %.not.i467, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %i.hm, ptr %i.iu, align 8, !tbaa !962
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.iw, ptr %i.dk, align 8, !tbaa !959
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.aw:                                            ; preds = %bb.au
  %i.ix = load ptr, ptr %29, align 8, !tbaa !963  ; 12 uses
  %i.iy = ptrtoint ptr %i.iu to i64               ; 3 uses
  %i.iz = ptrtoint ptr %i.ix to i64               ; 3 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 4 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775800
  br i1 %i.jb, label %bb.ax, label %_ZNKSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #35
          to label %.noexc470 unwind label %.loopexit.split-lp1489

.noexc470:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aw
  %i.jc = ashr exact i64 %i.ja, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i, %i.jc ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jd, i64 1152921504606846975)
  %i.jg = select i1 %i.je, i64 1152921504606846975, i64 %i.jf ; 3 uses
  %.not.i.i.i468 = icmp ne i64 %i.jg, 0
  call void @llvm.assume(i1 %.not.i.i.i468)
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #36
          to label %.noexc471 unwind label %.loopexit1488 ; 12 uses

.noexc471:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ja
  store ptr %i.hm, ptr %i.jj, align 8, !tbaa !962
  %.not10.i.i.i.i.i = icmp eq ptr %i.ix, %i.iu
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc471
  %i.jk = add i64 %i.iy, -8
  %i.jl = sub i64 %i.jk, %i.iz                    ; 3 uses
  %i.jm = lshr i64 %i.jl, 3
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.jl, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jo = add i64 %i.iy, -8
  %i.jp = sub i64 %i.jo, %i.iz
  %i.jq = and i64 %i.jp, -8
  %72 = add i64 %i.jq, 8                          ; 2 uses
  %scevgep2475 = getelementptr i8, ptr %i.ji, i64 %72
  %scevgep2476 = getelementptr i8, ptr %i.ix, i64 %72
  %bound0 = icmp ult ptr %i.ji, %scevgep2476
  %bound1 = icmp ult ptr %i.ix, %scevgep2475
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check2477 = icmp ult i64 %i.jl, 120
  br i1 %min.iters.check2477, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jr = and i64 %i.jn, 12
  %n.vec = and i64 %i.jn, 4611686018427387888     ; 4 uses
  %i.js = shl i64 %n.vec, 3                       ; 2 uses
  %i.jt = getelementptr i8, ptr %i.ji, i64 %i.js  ; 2 uses
  %i.ju = getelementptr i8, ptr %i.ix, i64 %i.js
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ji, i64 %i.jv ; 4 uses
  %next.gep2478 = getelementptr i8, ptr %i.ix, i64 %i.jv ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.jw = getelementptr i8, ptr %next.gep2478, i64 32
  %i.jx = getelementptr i8, ptr %next.gep2478, i64 64
  %i.jy = getelementptr i8, ptr %next.gep2478, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep2478, align 8, !tbaa !962, !alias.scope !1728
  %wide.load2479 = load <4 x i64>, ptr %i.jw, align 8, !tbaa !962, !alias.scope !1728
  %wide.load2480 = load <4 x i64>, ptr %i.jx, align 8, !tbaa !962, !alias.scope !1728
  %wide.load2481 = load <4 x i64>, ptr %i.jy, align 8, !tbaa !962, !alias.scope !1728
  %i.jz = getelementptr i8, ptr %next.gep, i64 32
  %i.ka = getelementptr i8, ptr %next.gep, i64 64
  %i.kb = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !962, !alias.scope !1729, !noalias !1730
  store <4 x i64> %wide.load2479, ptr %i.jz, align 8, !tbaa !962, !alias.scope !1729, !noalias !1730
  store <4 x i64> %wide.load2480, ptr %i.ka, align 8, !tbaa !962, !alias.scope !1729, !noalias !1730
  store <4 x i64> %wide.load2481, ptr %i.kb, align 8, !tbaa !962, !alias.scope !1729, !noalias !1730
  %i.kc = getelementptr i8, ptr %next.gep2478, i64 32
  %i.kd = getelementptr i8, ptr %next.gep2478, i64 64
  %i.ke = getelementptr i8, ptr %next.gep2478, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep2478, align 8, !tbaa !962, !alias.scope !1728
  store <4 x ptr> splat (ptr null), ptr %i.kc, align 8, !tbaa !962, !alias.scope !1728
  store <4 x ptr> splat (ptr null), ptr %i.kd, align 8, !tbaa !962, !alias.scope !1728
  store <4 x ptr> splat (ptr null), ptr %i.ke, align 8, !tbaa !962, !alias.scope !1728
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kf = icmp eq i64 %index.next, %n.vec
  br i1 %i.kf, label %middle.block, label %vector.body, !llvm.loop !1644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !966

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2482 = and i64 %i.jn, 4611686018427387900 ; 3 uses
  %i.kg = shl i64 %n.vec2482, 3                   ; 2 uses
  %i.kh = getelementptr i8, ptr %i.ji, i64 %i.kg  ; 2 uses
  %i.ki = getelementptr i8, ptr %i.ix, i64 %i.kg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2483 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2487, %vec.epilog.vector.body ] ; 2 uses
  %i.kj = shl i64 %index2483, 3                   ; 2 uses
  %next.gep2484 = getelementptr i8, ptr %i.ji, i64 %i.kj
  %next.gep2485 = getelementptr i8, ptr %i.ix, i64 %i.kj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %wide.load2486 = load <4 x i64>, ptr %next.gep2485, align 8, !tbaa !962, !alias.scope !1728
  store <4 x i64> %wide.load2486, ptr %next.gep2484, align 8, !tbaa !962, !alias.scope !1729, !noalias !1730
  store <4 x ptr> splat (ptr null), ptr %next.gep2485, align 8, !tbaa !962, !alias.scope !1728
  %index.next2487 = add nuw i64 %index2483, 4     ; 2 uses
  %i.kk = icmp eq i64 %index.next2487, %n.vec2482
  br i1 %i.kk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1645

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2488 = icmp eq i64 %i.jn, %n.vec2482
  br i1 %cmp.n2488, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ji, %iter.check ], [ %i.ji, %vector.memcheck ], [ %i.jt, %vec.epilog.iter.check ], [ %i.kh, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ix, %iter.check ], [ %i.ix, %vector.memcheck ], [ %i.ju, %vec.epilog.iter.check ], [ %i.ki, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.kl = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !962, !alias.scope !1727
  store i64 %i.kl, ptr %.012.i.i.i.i.i, align 8, !tbaa !962, !alias.scope !1726
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !962, !alias.scope !1727
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i469 = icmp eq ptr %i.km, %i.iu
  br i1 %.not.i.i.i.i.i469, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1646

_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc471
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ji, %.noexc471 ], [ %i.kh, %vec.epilog.middle.block ], [ %i.jt, %middle.block ], [ %i.kn, %.lr.ph.i.i.i.i.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.ja) #33
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ay, %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ji, ptr %29, align 8, !tbaa !963
  store ptr %i.ko, ptr %i.dk, align 8, !tbaa !959
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jg
  store ptr %i.kp, ptr %i.dl, align 8, !tbaa !960
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.av
  %i.kq = load ptr, ptr %32, align 8, !tbaa !64   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.dg
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.ks = load i64, ptr %i.dg, align 8, !tbaa !65
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ku = load ptr, ptr %i.dd, align 8, !tbaa !667 ; 8 uses
  %.not.i.i472 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i472, label %_ZNSt12__shared_ptrIKN7rocksdb18SeqnoToTimeMappingELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 4 uses
  %i.kw = load atomic i64, ptr %i.kv acquire, align 8 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 4294967297
  %i.ky = trunc i64 %i.kw to i32                  ; 2 uses
  br i1 %i.kx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.kv, align 8, !tbaa !675
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i32 0, ptr %i.kz, align 4, !tbaa !676
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !466
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #34, !inline_history !1
  %i.ld = load ptr, ptr %i.ku, align 8, !tbaa !466
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #34, !inline_history !1
  br label %_ZNSt12__shared_ptrIKN7rocksdb18SeqnoToTimeMappingELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bb:                                            ; preds = %bb.az
  %i.lg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i473 = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i.i473, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lh = add nsw i32 %i.ky, -1
  store i32 %i.lh, ptr %i.kv, align 8, !tbaa !669
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.li = atomicrmw volatile add ptr %i.kv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i = phi i32 [ %i.ky, %bb.bc ], [ %i.li, %bb.bd ]
  %i.lj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.lj, label %bb.be, label %_ZNSt12__shared_ptrIKN7rocksdb18SeqnoToTimeMappingELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !672

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #34
  br label %_ZNSt12__shared_ptrIKN7rocksdb18SeqnoToTimeMappingELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN7rocksdb18SeqnoToTimeMappingELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.be
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lk = load i32, ptr %i.a, align 4, !tbaa !669 ; 2 uses
  %i.ll = sext i32 %i.lk to i64                   ; 2 uses
  %i.lm = icmp slt i64 %indvars.iv.next, %i.ll
  br i1 %i.lm, label %bb.r, label %._crit_edge1565, !llvm.loop !1647

.loopexit.split-lp1481.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.aa, %_ZNKSt6vectorIPN7rocksdb11FSDirectoryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ah, %bb.ai, %_ZNSt6vectorIN7rocksdb16MutableCFOptionsESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit, %.noexc.i.i.invoke, %.noexc6.i.i, %_ZNSt12_Vector_baseIN7rocksdb16MutableCFOptionsESaIS1_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp2591 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1481

.thread1281:                                      ; preds = %bb.aj
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.thread1285.loopexit.split-lp.loopexit.split-lp:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc.i, %.noexc6.i
  %lpad.loopexit.split-lp2594 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN7rocksdb18SeqnoToTimeMappingELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #34
  br label %bb.bh

.loopexit1488:                                    ; preds = %bb.at, %_ZNKSt6vectorISt10unique_ptrIN7rocksdb8FlushJobESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt12construct_atIN7rocksdb19SuperVersionContextEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1316
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cv) #33
  br label %_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb19SuperVersionContextESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt12construct_atIN7rocksdb19SuperVersionContextEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1025
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !1315
  %i.cw = getelementptr inbounds nuw [536 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !1316
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(424) ptr @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(424) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !1154
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1305 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1304 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1486
  %i.j = load <2 x ptr>, ptr %i.c, align 8, !tbaa !2481
  store <2 x ptr> %i.j, ptr %i.d, align 8, !tbaa !2481
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1486
  store ptr %i.l, ptr %i.h, align 8, !tbaa !1486
  %.not4.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !65
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb19SuperVersionContext22WriteStallNotificationEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.u) #33
  br label %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb19SuperVersionContext22WriteStallNotificationES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.b
  %i.v = load i64, ptr %1, align 8, !tbaa !1303   ; 3 uses
  store i64 %i.v, ptr %0, align 8, !tbaa !1303
  store i64 0, ptr %1, align 8, !tbaa !1303
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 392
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit, %_ZNSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EEaSEOS4_.exit
  ret ptr %0

bb.c:                                             ; preds = %.lr.ph, %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit ] ; 4 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1154
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.011 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !670
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !671
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !1154 ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %.011 ; 11 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !1154 ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %.011 ; 10 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !64 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 6 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  br i1 %i.al, label %bb.d, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !671 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %.not21.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not21.i.i.i, label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit, label %bb.e, !prof !672

bb.e:                                             ; preds = %bb.d
  switch i64 %i.an, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !65
  store i8 %i.ap, ptr %i.ag, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !671 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !671
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !65
  %.pre.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !64
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !671
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !671
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !65
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !65
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !65
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !671
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !671
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !65
  store i64 %i.bc, ptr %i.ah, align 8, !tbaa !65
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !64
  store i64 %i.ay, ptr %i.ak, align 8, !tbaa !65
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !64
  br label %_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit

_ZN7rocksdb19SuperVersionContext22WriteStallNotificationaSEOS1_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.h, %bb.i
  %i.bd = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ag, %bb.h ], [ %i.ak, %bb.i ], [ %i.aj, %bb.d ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !671
  store i8 0, ptr %i.bd, align 1, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !2482
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !2482
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1411
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !1411
  %i.bl = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !2480
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN7rocksdb19SuperVersionContextESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i
  %indvar = phi i64 [ %indvar.next, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.012.i.i = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 9 uses
  %.0911.i.i = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  %i.b = getelementptr i8, ptr %.012.i.i, i64 8   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72
  store ptr %i.b, ptr %i.c, align 8, !tbaa !1147, !alias.scope !2494
  %i.d = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1317, !alias.scope !2495
  store <2 x ptr> %i.g, ptr %i.a, align 8, !tbaa !1317, !alias.scope !2494
  %i.h = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1291, !alias.scope !2495
  store ptr %i.i, ptr %i.e, align 8, !tbaa !1291, !alias.scope !2494
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !alias.scope !2495
  %i.j = load i64, ptr %.0911.i.i, align 8, !tbaa !1146, !alias.scope !2495 ; 13 uses
  store i64 %i.j, ptr %.012.i.i, align 8, !tbaa !1146, !alias.scope !2494
  store i64 0, ptr %.0911.i.i, align 8, !tbaa !1146, !alias.scope !2495
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1147, !alias.scope !2495 ; 13 uses
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = mul i64 %indvar, 536
  %i.m = shl i64 %i.j, 3                          ; 2 uses
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = getelementptr i8, ptr %5, i64 8
  %scevgep = getelementptr i8, ptr %6, i64 %i.m
  %scevgep8 = getelementptr i8, ptr %i.l, i64 %i.m
  %bound0 = icmp ult ptr %i.b, %scevgep8
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %i.j, 16
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.o, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  store <4 x ptr> splat (ptr null), ptr %i.p, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  store <4 x ptr> splat (ptr null), ptr %i.q, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  store <4 x ptr> splat (ptr null), ptr %i.r, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %wide.load = load <4 x ptr>, ptr %i.s, align 8, !tbaa !908, !alias.scope !2497, !noalias !2495
  %wide.load10 = load <4 x ptr>, ptr %i.t, align 8, !tbaa !908, !alias.scope !2497, !noalias !2495
  %wide.load11 = load <4 x ptr>, ptr %i.u, align 8, !tbaa !908, !alias.scope !2497, !noalias !2495
  %wide.load12 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !908, !alias.scope !2497, !noalias !2495
  store <4 x ptr> %wide.load, ptr %i.o, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  store <4 x ptr> %wide.load10, ptr %i.p, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  store <4 x ptr> %wide.load11, ptr %i.q, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  store <4 x ptr> %wide.load12, ptr %i.r, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !2489

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !966

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.j, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index14 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.x, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index14
  %wide.load15 = load <4 x ptr>, ptr %i.y, align 8, !tbaa !908, !alias.scope !2497, !noalias !2495
  store <4 x ptr> %wide.load15, ptr %i.x, align 8, !tbaa !908, !alias.scope !2496, !noalias !2497
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2490

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.j, %n.vec13
  br i1 %cmp.n17, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 4 uses
  %i.aa = sub i64 %i.j, %.011.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.011.i.i.i.i.i.i.i.prol = phi i64 [ %i.ae, %vec.epilog.scalar.ph.prol ], [ %.011.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.011.i.i.i.i.i.i.i.prol ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !908, !alias.scope !2494
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !908, !noalias !2495
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !908, !alias.scope !2494
  %i.ae = add nuw i64 %.011.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2491

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.011.i.i.i.i.i.i.i.unr = phi i64 [ %.011.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %i.af = sub i64 %.011.i.i.i.i.i.i.i.ph, %i.j
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bm, %vec.epilog.scalar.ph ], [ %.011.i.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.011.i.i.i.i.i.i.i ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !908, !alias.scope !2494
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !908, !noalias !2495
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !908, !alias.scope !2494
  %i.ak = add nuw i64 %.011.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !908, !alias.scope !2494
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !908, !noalias !2495
  store ptr %i.an, ptr %i.al, align 8, !tbaa !908, !alias.scope !2494
  %i.ao = add nuw i64 %.011.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !908, !alias.scope !2494
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !908, !noalias !2495
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !908, !alias.scope !2494
  %i.as = add nuw i64 %.011.i.i.i.i.i.i.i, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !908, !alias.scope !2494
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !908, !noalias !2495
  store ptr %i.av, ptr %i.at, align 8, !tbaa !908, !alias.scope !2494
  %i.aw = add nuw i64 %.011.i.i.i.i.i.i.i, 4      ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !908, !alias.scope !2494
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !908, !noalias !2495
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !908, !alias.scope !2494
  %i.ba = add nuw i64 %.011.i.i.i.i.i.i.i, 5      ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ba ; 2 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !908, !alias.scope !2494
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !908, !noalias !2495
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !908, !alias.scope !2494
  %i.be = add nuw i64 %.011.i.i.i.i.i.i.i, 6      ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !908, !alias.scope !2494
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !908, !noalias !2495
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !908, !alias.scope !2494
  %i.bi = add nuw i64 %.011.i.i.i.i.i.i.i, 7      ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !908, !alias.scope !2494
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !908, !noalias !2495
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !908, !alias.scope !2494
  %i.bm = add nuw i64 %.011.i.i.i.i.i.i.i, 8      ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.bm, %i.j
  br i1 %exitcond.not.i.i.i.i.i.i.i.7, label %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !2492

_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104 ; 2 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !1303, !alias.scope !2494
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !alias.scope !2494
  %i.bq = tail call noundef nonnull align 8 dereferenceable(424) ptr @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(424) %i.bn, ptr noundef nonnull align 8 dereferenceable(424) %i.bo) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 528
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 528 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !908, !alias.scope !2495
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !908, !alias.scope !2494
  store ptr null, ptr %i.bs, align 8, !tbaa !908, !alias.scope !2495
  tail call void @_ZN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.bo) #34
  %.pr.i.i.i.i.i.i.i = load i64, ptr %.0911.i.i, align 8, !tbaa !1146, !alias.scope !2495
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %bb.b, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  store i64 0, ptr %.0911.i.i, align 8, !tbaa !1146, !alias.scope !2495
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN7rocksdb12SuperVersionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !1289, !alias.scope !2495 ; 5 uses
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !1290, !alias.scope !2495
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i, label %_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !1290, !alias.scope !2495
  br label %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i

_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb12SuperVersionES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !1291, !alias.scope !2495
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #33
  br label %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.c, %_ZN7rocksdb10autovectorIPNS_12SuperVersionELm8EE5clearEv.exit.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 536 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 536 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !2493

_ZSt12__relocate_aIPN7rocksdb19SuperVersionContextES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.cb, %_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb3log6WriterD1Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_emplace_uniqueIJRiRmEEES0_ISt17_Rb_tree_iteratorIS1_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %1, align 4, !tbaa !669    ; 7 uses
  store i32 %i.c, ptr %i.b, align 8, !tbaa !1345
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i64, ptr %2, align 8, !tbaa !776    ; 4 uses
  store i64 %i.e, ptr %i.d, align 8, !tbaa !1346
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02123.i = load ptr, ptr %i.f, align 8, !tbaa !1347 ; 2 uses
  %.not24.i = icmp eq ptr %.02123.i, null
  br i1 %.not24.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02125.i = phi ptr [ %.021.i, %.lr.ph.i ], [ %.02123.i, %bb.a ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02125.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !669  ; 3 uses
  %i.j = icmp eq i32 %i.c, %i.i
  %i.k = icmp slt i32 %i.c, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02125.i, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.e, %i.m
  %.sroa.05.0.i.i.i = select i1 %i.j, i1 %i.n, i1 %i.k ; 2 uses
  %.in.v.i = select i1 %.sroa.05.0.i.i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02125.i, i64 %.in.v.i
  %.021.i = load ptr, ptr %.in.i, align 8, !tbaa !1347 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %.sroa.05.0.i.i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.020.lcssa30.i = phi ptr [ %.02125.i, %._crit_edge.i ], [ %i.g, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !699
  %i.q = icmp eq ptr %.020.lcssa30.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i) #38 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !669
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.pre33 = load i64, ptr %.phi.trans.insert32, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.s = phi i64 [ %.pre33, %bb.b ], [ %i.m, %._crit_edge.i ]
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.i, %._crit_edge.i ] ; 2 uses
  %.020.lcssa29.i = phi ptr [ %.020.lcssa30.i, %bb.b ], [ %.02125.i, %._crit_edge.i ]
  %.sroa.06.0.i = phi ptr [ %i.r, %bb.b ], [ %.02125.i, %._crit_edge.i ]
  %i.u = icmp eq i32 %i.t, %i.c
  %i.v = icmp slt i32 %i.t, %i.c
  %i.w = icmp ult i64 %i.s, %i.e
  %.sroa.05.0.i.i5.i = select i1 %i.u, i1 %i.w, i1 %i.v
  br i1 %.sroa.05.0.i.i5.i, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.020.lcssa30.i, %._crit_edge.thread.i ], [ %.020.lcssa29.i, %bb.c ] ; 4 uses
  %i.x = icmp eq ptr %.sroa.4.0.i.ph, %i.g
  br i1 %i.x, label %.thread25, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !669  ; 2 uses
  %i.aa = icmp eq i32 %i.c, %i.z
  %i.ab = icmp slt i32 %i.c, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ult i64 %i.e, %i.ad
  %.sroa.05.0.i.i.i.i = select i1 %i.aa, i1 %i.ae, i1 %i.ab
  br label %.thread25

.thread25:                                        ; preds = %select.unfold, %bb.d
  %i.af = phi i1 [ %.sroa.05.0.i.i.i.i, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !886
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !886
  br label %_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #33
  br label %_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread25, %bb.e
  %.sroa.3.031 = phi i8 [ 1, %.thread25 ], [ 0, %bb.e ]
  %.sroa.017.030 = phi ptr [ %i.a, %.thread25 ], [ %.sroa.06.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.017.030, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.031, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE17_M_realloc_insertIJRiS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(417) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !806  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !805    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #35
  unreachable

_ZNKSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 432                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 21350398233460129)
  %i.l = select i1 %i.j, i64 21350398233460129, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 432                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !669
  store i32 %i.r, ptr %i.q, align 8, !tbaa !1349
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  invoke void @_ZN7rocksdb12FileMetaDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.s, ptr noundef nonnull align 8 dereferenceable(417) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN7rocksdb12FileMetaDataEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit, %_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit ] ; 5 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairIiN7rocksdb12FileMetaDataEEEE9constructIS3_JRiS2_EEEvRS4_PT_DpOT0_.exit ] ; 3 uses
  %i.t = load i32, ptr %.01215.i.i.i.i.i, align 8, !tbaa !1349
  store i32 %i.t, ptr %.016.i.i.i.i.i, align 8, !tbaa !1349
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8
  invoke void @_ZN7rocksdb12FileMetaDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.u, ptr noundef nonnull align 8 dereferenceable(417) %i.v)
          to label %_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructISt4pairIiN7rocksdb12FileMetaDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 432 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 432 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN7rocksdb12FileMetaDataEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #34 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  tail call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.ab) #34
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 432 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEEEvT_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEEEvT_S5_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEEEvT_S5_.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_1
