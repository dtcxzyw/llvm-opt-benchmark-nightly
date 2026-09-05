Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIPostRABundler?download=true
inline.NumInlined: 692
inline.NumDeleted: 412
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_115SIPostRABundler3runERN4llvm15MachineFunctionE:bb.a
  %i.hh = load i32, ptr %i.ej, align 4, !tbaa !256
  %i.hi = add i32 %i.hh, -1
  %spec.select.i.i.i117 = icmp ult i32 %i.hi, 2
  br i1 %spec.select.i.i.i117, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0163.0214, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !261
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !154
  %i.hn = and i64 %i.hm, 8
  %.not.not.i.i124 = icmp eq i64 %i.hn, 0
  br i1 %.not.not.i.i124, label %bb.an, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ho = load i32, ptr %i.eg, align 4, !tbaa !262 ; 2 uses
  %i.hp = and i32 %i.ho, 12
  %i.hq = icmp eq i32 %i.hp, 0
  %i.hr = and i32 %i.ho, 4
  %i.hs = icmp ne i32 %i.hr, 0
  %or.cond.i.i.i118 = or i1 %i.hq, %i.hs
  br i1 %or.cond.i.i.i118, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i123, label %.split.i119

.split.i119:                                      ; preds = %bb.an
  %i.ht = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0163.0214, i64 noundef 524288, i32 noundef 1) #15
  br i1 %i.ht, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i123: ; preds = %bb.an
  %i.hu = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !263
  %i.hw = and i64 %i.hv, 524288
  %.not44.i = icmp eq i64 %i.hw, 0
  br i1 %.not44.i, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i: ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i123, %.split.i119, %bb.am
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0163.0214, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !261 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0163.0214, i64 40
  %i.ia = load i24, ptr %i.hz, align 8
  %i.ib = zext i24 %i.ia to i64
  %i.ic = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0163.0214) #15
  %i.id = zext i32 %i.ic to i64
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.id, i64 %i.ib) ; 2 uses
  %.idx.i120 = shl nuw nsw i64 %..i.i.i, 5
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx.i120
  %.not57.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not57.i, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i, %.loopexit.i
  %.02858.i = phi ptr [ %i.jm, %.loopexit.i ], [ %i.hy, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i ] ; 3 uses
  %i.if = load i32, ptr %.02858.i, align 8
  %i.ig = and i32 %i.if, 255
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.ao, label %.loopexit.i

bb.ao:                                            ; preds = %.lr.ph59.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.02858.i, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !154
  %.fr.i = freeze i32 %i.ij                       ; 7 uses
  %i.ik = load i64, ptr %i.ad, align 8, !tbaa !34, !noalias !264
  %.fr61.i = freeze i64 %i.ik
  %i.il = icmp eq i64 %.fr61.i, 0                 ; 5 uses
  %spec.select.idx.i.i = select i1 %i.il, i64 0, i64 104
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.idx.i.i
  %.sink1.i.i = load ptr, ptr %spec.select.i.i, align 8, !tbaa !10, !noalias !264 ; 5 uses
  %i.im = load ptr, ptr %i.ac, align 8, !noalias !265
  %i.in = load i32, ptr %i.ae, align 8, !noalias !265
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.io
  %.sink1.i29.i = select i1 %i.il, ptr %i.ip, ptr %i.af ; 5 uses
  %.not4547.i = icmp eq ptr %.sink1.i.i, %.sink1.i29.i
  br i1 %.not4547.i, label %.loopexit.i, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.ao
  %.idx.i.i = select i1 %i.il, i64 0, i64 32      ; 4 uses
  %i.iq = add i32 %.fr.i, -1
  %i.ir = icmp ult i32 %i.iq, 1073741823
  br i1 %i.ir, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i122
  br i1 %i.il, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.us.i
  %.sroa.030.048.us.us.i = phi ptr [ %i.iu, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.us.i ], [ %.sink1.i.i, %.lr.ph.split.us.i ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.030.048.us.us.i, i64 %.idx.i.i
  %.sroa.05.0.copyload.us.us.i = load i32, ptr %i.is, align 4, !tbaa !155
  %i.it = icmp eq i32 %.fr.i, %.sroa.05.0.copyload.us.us.i
  br i1 %i.it, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.us.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.us.i: ; preds = %.lr.ph.split.us.split.us.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.030.048.us.us.i, i64 4 ; 2 uses
  %.not45.us.us.i = icmp eq ptr %i.iu, %.sink1.i29.i
  br i1 %.not45.us.us.i, label %.loopexit.i, label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.i
  %.sroa.030.048.us.i = phi ptr [ %i.ix, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.i ], [ %.sink1.i.i, %.lr.ph.split.us.i ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.030.048.us.i, i64 %.idx.i.i
  %.sroa.05.0.copyload.us.i = load i32, ptr %i.iv, align 4, !tbaa !155
  %i.iw = icmp eq i32 %.fr.i, %.sroa.05.0.copyload.us.i
  br i1 %i.iw, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.i: ; preds = %.lr.ph.split.us.split.i
  %i.ix = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.030.048.us.i) #18 ; 2 uses
  %.not45.us.i = icmp eq ptr %i.ix, %.sink1.i29.i
  br i1 %.not45.us.i, label %.loopexit.i, label %.lr.ph.split.us.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i122
  br i1 %i.il, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us51.i
  %.sroa.030.048.us49.i = phi ptr [ %i.je, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us51.i ], [ %.sink1.i.i, %.lr.ph.split.i ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.030.048.us49.i, i64 %.idx.i.i
  %.sroa.05.0.copyload.us50.i = load i32, ptr %i.iy, align 4, !tbaa !155 ; 3 uses
  %i.iz = load ptr, ptr %0, align 8, !tbaa !215
  %i.ja = icmp eq i32 %.fr.i, %.sroa.05.0.copyload.us50.i
  br i1 %i.ja, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.split.us.i
  %i.jb = add i32 %.sroa.05.0.copyload.us50.i, -1
  %i.jc = icmp ult i32 %i.jb, 1073741823
  br i1 %i.jc, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.us.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us51.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.us.i: ; preds = %bb.ap
  %i.jd = call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.iz, i32 %.fr.i, i32 %.sroa.05.0.copyload.us50.i) #15
  br i1 %i.jd, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us51.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us51.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.us.i, %bb.ap
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.030.048.us49.i, i64 4 ; 2 uses
  %.not45.us54.i = icmp eq ptr %i.je, %.sink1.i29.i
  br i1 %.not45.us54.i, label %.loopexit.i, label %.lr.ph.split.split.us.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.i
  %.sroa.030.048.i = phi ptr [ %i.jl, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.i ], [ %.sink1.i.i, %.lr.ph.split.i ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.030.048.i, i64 %.idx.i.i
  %.sroa.05.0.copyload.i = load i32, ptr %i.jf, align 4, !tbaa !155 ; 3 uses
  %i.jg = load ptr, ptr %0, align 8, !tbaa !215
  %i.jh = icmp eq i32 %.fr.i, %.sroa.05.0.copyload.i
  br i1 %i.jh, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.split.i
  %i.ji = add i32 %.sroa.05.0.copyload.i, -1
  %i.jj = icmp ult i32 %i.ji, 1073741823
  br i1 %i.jj, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i: ; preds = %bb.aq
  %i.jk = call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.jg, i32 %.fr.i, i32 %.sroa.05.0.copyload.i) #15
  br i1 %i.jk, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %bb.aq
  %i.jl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.030.048.i) #18 ; 2 uses
  %.not45.i = icmp eq ptr %i.jl, %.sink1.i29.i
  br i1 %.not45.i, label %.loopexit.i, label %.lr.ph.split.split.i

.loopexit.i:                                      ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread39.us51.i, %bb.ao, %.lr.ph59.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.02858.i, i64 32 ; 2 uses
  %.not.i121 = icmp eq ptr %i.jm, %i.ie
  br i1 %.not.i121, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit, label %.lr.ph59.i

_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit: ; preds = %.loopexit.i, %.split.i119, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i123, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i
  %i.jn = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0163.0214) #15
  %.not35 = icmp eq i32 %i.jn, 0
  br i1 %.not35, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0163.0214, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !261
  %i.jq = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0163.0214) #15 ; 0 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !154
  store i32 %i.js, ptr %7, align 4
  call void @_ZN4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE10insertImplIS1_EESt4pairINS_16SmallSetIteratorIS1_Lj16ES3_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.266") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit
  %i.jt = add i32 %.033217, 1
  br label %bb.au

_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread: ; preds = %.lr.ph.split.us.split.i, %.lr.ph.split.us.split.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %.lr.ph.split.split.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.us.i, %.lr.ph.split.split.us.i, %.split182, %._ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit26_crit_edge.i, %._ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit17_crit_edge.i, %.preheader, %_ZNK4llvm12MachineInstr14mayLoadOrStoreENS0_9QueryTypeE.exit139, %_ZNK4llvm12MachineInstr14mayLoadOrStoreENS0_9QueryTypeE.exit139.thread, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit17.i, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit26.i, %bb.ak
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0163.0214, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !257
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !263
  %i.jy = and i64 %i.jx, 16
  %.not196 = icmp eq i64 %i.jy, 0
  br i1 %.not196, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread._crit_edge, label %bb.at

bb.at:                                            ; preds = %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0163.0214, i64 52
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !256
  %i.kb = icmp eq i32 %i.ka, 4190
  br i1 %i.kb, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread._crit_edge, label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.sroa.0146.1 = phi ptr [ %.sroa.0163.0214, %bb.as ], [ %.sroa.0146.0216, %bb.at ] ; 2 uses
  %.134 = phi i32 [ %i.jt, %bb.as ], [ %.033217, %bb.at ] ; 2 uses
  %.not194 = icmp eq ptr %i.cv, %i.ar
  br i1 %.not194, label %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread._crit_edge, label %.preheader, !llvm.loop !183

_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread._crit_edge: ; preds = %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread, %bb.at, %bb.au
  %.sroa.0146.0.lcssa.ph = phi ptr [ %.sroa.0146.1, %bb.au ], [ %.sroa.0146.0216, %bb.at ], [ %.sroa.0146.0216, %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread ]
  %.033.lcssa.ph = phi i32 [ %.134, %bb.au ], [ %.033217, %bb.at ], [ %.033217, %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread ]
  %i.kc = icmp ugt i32 %.033.lcssa.ph, 1
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0146.0.lcssa.ph, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !243 ; 8 uses
  br i1 %i.kc, label %bb.av, label %bb.bl

bb.av:                                            ; preds = %_ZNK12_GLOBAL__N_115SIPostRABundler9canBundleERKN4llvm12MachineInstrES4_.exit.thread._crit_edge
  %.not197 = icmp eq ptr %i.ke, %i.ar
  br i1 %.not197, label %_ZN4llvm9BitVector5resetEv.exit109, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 52
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !256
  %i.kh = icmp eq i32 %i.kg, 7
  br i1 %i.kh, label %.preheader206, label %_ZN4llvm9BitVector5resetEv.exit109

.preheader206:                                    ; preds = %bb.aw
  %.not198224 = icmp eq ptr %storemerge.in243, %i.ke
  br i1 %.not198224, label %._crit_edge226, label %.lr.ph

._crit_edge226:                                   ; preds = %_ZNK12_GLOBAL__N_115SIPostRABundler19collectUsedRegUnitsERKN4llvm12MachineInstrERNS1_9BitVectorE.exit, %.preheader206
  %i.ki = load ptr, ptr %2, align 8, !tbaa !25    ; 4 uses
  %i.kj = load i32, ptr %i.j, align 8, !tbaa !152 ; 2 uses
  %i.kk = zext i32 %i.kj to i64
  %.idx.i = shl nuw nsw i64 %i.kk, 3              ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i ; 2 uses
  %.not9.i = icmp eq i32 %i.kj, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge226
  %i.km = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.kn = lshr exact i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check341 = icmp ult i64 %i.km, 24
  br i1 %min.iters.check341, label %.lr.ph.i.preheader360, label %vector.ph342

vector.ph342:                                     ; preds = %.lr.ph.i.preheader
  %n.vec343 = and i64 %i.ko, 4611686018427387900  ; 3 uses
  %i.kp = shl i64 %n.vec343, 3
  %i.kq = getelementptr i8, ptr %i.ki, i64 %i.kp
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next348, %vector.body344 ] ; 2 uses
  %i.kr = shl i64 %index345, 3
  %next.gep = getelementptr i8, ptr %i.ki, i64 %i.kr ; 3 uses
  %i.ks = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load346 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !14
  %wide.load347 = load <2 x i64>, ptr %i.ks, align 8, !tbaa !14
  %i.kt = xor <2 x i64> %wide.load346, splat (i64 -1)
  %i.ku = xor <2 x i64> %wide.load347, splat (i64 -1)
  store <2 x i64> %i.kt, ptr %next.gep, align 8, !tbaa !14
  store <2 x i64> %i.ku, ptr %i.ks, align 8, !tbaa !14
  %index.next348 = add nuw i64 %index345, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next348, %n.vec343
  br i1 %i.kv, label %middle.block349, label %vector.body344, !llvm.loop !184

middle.block349:                                  ; preds = %vector.body344
  %cmp.n350 = icmp eq i64 %i.ko, %n.vec343
  br i1 %cmp.n350, label %._crit_edge.i, label %.lr.ph.i.preheader360

.lr.ph.i.preheader360:                            ; preds = %.lr.ph.i.preheader, %middle.block349
  %.010.i.ph = phi ptr [ %i.ki, %.lr.ph.i.preheader ], [ %i.kq, %middle.block349 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block349, %._crit_edge226
  %i.kw = load i32, ptr %i.o, align 8, !tbaa !237
  %i.kx = and i32 %i.kw, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i.i, label %.lr.ph237.preheader, label %bb.ax

.lr.ph237.preheader:                              ; preds = %bb.ax, %._crit_edge.i
  br label %.lr.ph237

bb.ax:                                            ; preds = %._crit_edge.i
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = shl nsw i64 -1, %i.ky
  %i.la = xor i64 %i.kz, -1
  %i.lb = getelementptr inbounds i8, ptr %i.kl, i64 -8 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !14
  %i.ld = and i64 %i.lc, %i.la
  store i64 %i.ld, ptr %i.lb, align 8, !tbaa !14
  br label %.lr.ph237.preheader

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader360, %.lr.ph.i
  %.010.i = phi ptr [ %i.lg, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader360 ] ; 3 uses
  %i.le = load i64, ptr %.010.i, align 8, !tbaa !14
  %i.lf = xor i64 %i.le, -1
  store i64 %i.lf, ptr %.010.i, align 8, !tbaa !14
  %i.lg = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i76 = icmp eq ptr %i.lg, %i.kl
  br i1 %.not.i76, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !185

.lr.ph:                                           ; preds = %.preheader206, %_ZNK12_GLOBAL__N_115SIPostRABundler19collectUsedRegUnitsERKN4llvm12MachineInstrERNS1_9BitVectorE.exit
  %.sroa.0140.0225 = phi ptr [ %i.mu, %_ZNK12_GLOBAL__N_115SIPostRABundler19collectUsedRegUnitsERKN4llvm12MachineInstrERNS1_9BitVectorE.exit ], [ %storemerge.in243, %.preheader206 ] ; 4 uses
  %.val42 = load ptr, ptr %0, align 8             ; 2 uses
  %.val43 = load ptr, ptr %2, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0140.0225, i64 52
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !256
  %.off.i.i = add i32 %i.li, -14
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %_ZNK12_GLOBAL__N_115SIPostRABundler19collectUsedRegUnitsERKN4llvm12MachineInstrERNS1_9BitVectorE.exit, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0140.0225, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !261 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0140.0225, i64 40
  %i.lm = load i24, ptr %i.ll, align 8            ; 2 uses
  %i.ln = zext i24 %i.lm to i64
  %.idx.i77 = shl nuw nsw i64 %i.ln, 5
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.idx.i77
  %.not21.i = icmp eq i24 %i.lm, 0
  br i1 %.not21.i, label %_ZNK12_GLOBAL__N_115SIPostRABundler19collectUsedRegUnitsERKN4llvm12MachineInstrERNS1_9BitVectorE.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.ay
  %i.lp = getelementptr inbounds nuw i8, ptr %.val42, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.val42, i64 56
  br label %bb.az

bb.az:                                            ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread13.i, %.lr.ph.i78
  %.022.i = phi ptr [ %i.lk, %.lr.ph.i78 ], [ %i.ms, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread13.i ] ; 3 uses
  %i.lr = load i32, ptr %.022.i, align 8          ; 2 uses
  %i.ls = and i32 %i.lr, 805306623
  %or.cond.i79 = icmp ne i32 %i.ls, 0
  %i.lt = and i32 %i.lr, 17825536
  %or.cond15.not.i = icmp eq i32 %i.lt, 16777216
  %or.cond17.i = or i1 %or.cond.i79, %or.cond15.not.i
  br i1 %or.cond17.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread13.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i: ; preds = %bb.az
  %i.lu = load ptr, ptr %i.lq, align 8, !tbaa !268, !noalias !269 ; 2 uses
  %.not1618.i = icmp eq ptr %i.lu, null
  br i1 %.not1618.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread13.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.preheader.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.preheader.i: ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i
  %i.lv = load ptr, ptr %i.lp, align 8, !tbaa !270, !noalias !269
  %i.lw = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !154
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !272, !noalias !269 ; 2 uses
  %i.mc = lshr i32 %i.mb, 12
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.lu, i64 %i.md
  %i.mf = and i32 %i.mb, 4095
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i:           ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i, %_ZN4llvm17MCRegUnitIteratorppEv.exit.preheader.i
  %.sroa.54.020.i = phi ptr [ %i.mo, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i ], [ %i.me, %_ZN4llvm17MCRegUnitIteratorppEv.exit.preheader.i ] ; 2 uses
  %.sroa.9.019.i = phi i32 [ %i.mr, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i ], [ %i.mf, %_ZN4llvm17MCRegUnitIteratorppEv.exit.preheader.i ] ; 3 uses
  %i.mg = and i32 %.sroa.9.019.i, 63
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = shl nuw i64 1, %i.mh
  %i.mj = lshr i32 %.sroa.9.019.i, 6
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.val43, i64 %i.mk ; 2 uses
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !14
  %i.mn = or i64 %i.mi, %i.mm
  store i64 %i.mn, ptr %i.ml, align 8, !tbaa !14
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.54.020.i, i64 2
  %i.mp = load i16, ptr %.sroa.54.020.i, align 2, !tbaa !273 ; 2 uses
  %i.mq = sext i16 %i.mp to i32
  %i.mr = add i32 %.sroa.9.019.i, %i.mq
  %.not.i.i15.i = icmp eq i16 %i.mp, 0
  br i1 %.not.i.i15.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread13.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread13.i: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i, %bb.az
  %i.ms = getelementptr inbounds nuw i8, ptr %.022.i, i64 32 ; 2 uses
  %.not.i80 = icmp eq ptr %i.ms, %i.lo
  br i1 %.not.i80, label %_ZNK12_GLOBAL__N_115SIPostRABundler19collectUsedRegUnitsERKN4llvm12MachineInstrERNS1_9BitVectorE.exit, label %bb.az

_ZNK12_GLOBAL__N_115SIPostRABundler19collectUsedRegUnitsERKN4llvm12MachineInstrERNS1_9BitVectorE.exit: ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread13.i, %.lr.ph, %bb.ay
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0140.0225, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !243 ; 2 uses
  %.not198 = icmp eq ptr %i.mu, %i.ke
  br i1 %.not198, label %._crit_edge226, label %.lr.ph

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %_ZN4llvm9BitVector5resetEv.exit
  %.sroa.0163.1236 = phi ptr [ %i.sg, %_ZN4llvm9BitVector5resetEv.exit ], [ %i.ke, %.lr.ph237.preheader ] ; 7 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0163.1236, i64 52
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !256
  %i.mx = icmp eq i32 %i.mw, 7
  br i1 %i.mx, label %bb.ba, label %.critedge

bb.ba:                                            ; preds = %.lr.ph237
  %.val41 = load ptr, ptr %3, align 8             ; 23 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0163.1236, i64 32
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !261 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0163.1236, i64 40
  %i.nb = load i24, ptr %i.na, align 8            ; 2 uses
  %i.nc = zext i24 %i.nb to i64
  %.idx.i83 = shl nuw nsw i64 %i.nc, 5
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.idx.i83
  %.not21.i84 = icmp eq i24 %i.nb, 0
  br i1 %.not21.i84, label %_ZNK12_GLOBAL__N_115SIPostRABundler19collectUsedRegUnitsERKN4llvm12MachineInstrERNS1_9BitVectorE.exit99, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.ba
  %.val40 = load ptr, ptr %0, align 8             ; 2 uses
end_hunk_0
