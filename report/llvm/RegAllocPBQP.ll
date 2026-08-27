Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegAllocPBQP?download=true
inline.NumInlined: 4997
inline.NumDeleted: 2695
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN12_GLOBAL__N_112RegAllocPBQP20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.to = load ptr, ptr %i.pg, align 8, !tbaa !500, !noalias !501 ; 2 uses
  %.not197212.i = icmp eq ptr %i.to, null
  br i1 %.not197212.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aq
  %i.tp = load ptr, ptr %i.pf, align 8, !tbaa !504, !noalias !501
  %i.tq = zext i16 %i.sx to i64
  %i.tr = getelementptr inbounds nuw [24 x i8], ptr %i.tp, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !505, !noalias !501 ; 2 uses
  %i.tu = lshr i32 %i.tt, 12
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %i.tv
  %i.tx = and i32 %i.tt, 4095
  br label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.thread.i, %.lr.ph.preheader.i
  %.sroa.5152.0214.i = phi ptr [ %i.uz, %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.thread.i ], [ %i.tw, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.0213.i = phi i32 [ %i.vc, %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.thread.i ], [ %i.tx, %.lr.ph.preheader.i ] ; 3 uses
  %i.ty = zext i32 %.sroa.9.0213.i to i64         ; 2 uses
  %i.tz = load ptr, ptr %i.oj, align 8, !tbaa !67
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.ty
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !507 ; 2 uses
  %.not.i85.i = icmp eq ptr %i.ub, null
  br i1 %.not.i85.i, label %bb.ar, label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i

bb.ar:                                            ; preds = %.lr.ph.i104
  %i.uc = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25 ; 12 uses
  %i.ud = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseSegmentSetForPhysRegsE, i64 120), align 8, !tbaa !444, !range !65, !noundef !66
  %i.ue = trunc nuw i8 %i.ud to i1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  store ptr %i.uf, ptr %i.uc, align 8, !tbaa !67
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store i32 0, ptr %i.ug, align 8, !tbaa !127
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uc, i64 12
  store i32 2, ptr %i.uh, align 4, !tbaa !128
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 64
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 80
  store ptr %i.uj, ptr %i.ui, align 8, !tbaa !67
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uc, i64 72
  store i32 0, ptr %i.uk, align 8, !tbaa !127
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uc, i64 76
  store i32 2, ptr %i.ul, align 4, !tbaa !128
  br i1 %i.ue, label %bb.as, label %_ZN4llvm9LiveRangeC2Eb.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.um = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25, !noalias !509 ; 6 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.um, i8 0, i64 32, i1 false), !noalias !509
  store ptr %i.un, ptr %i.uo, align 8, !tbaa !42, !noalias !509
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 32
  store ptr %i.un, ptr %i.up, align 16, !tbaa !43, !noalias !509
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 40
  store i64 0, ptr %i.uq, align 8, !tbaa !44, !noalias !509
  br label %_ZN4llvm9LiveRangeC2Eb.exit.i.i

_ZN4llvm9LiveRangeC2Eb.exit.i.i:                  ; preds = %bb.as, %bb.ar
  %storemerge.i.i.i = phi ptr [ %i.um, %bb.as ], [ null, %bb.ar ]
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uc, i64 96
  store ptr %storemerge.i.i.i, ptr %i.ur, align 8, !tbaa !512
  %i.us = load ptr, ptr %i.oj, align 8, !tbaa !67
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.ty
  store ptr %i.uc, ptr %i.ut, align 8, !tbaa !507
  call void @_ZN4llvm13LiveIntervals19computeRegUnitRangeERNS_9LiveRangeENS_9MCRegUnitE(ptr noundef nonnull align 8 dereferenceable(424) %i.bu, ptr noundef nonnull align 8 dereferenceable(104) %i.uc, i32 noundef %.sroa.9.0213.i) #26
  br label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i

_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i: ; preds = %_ZN4llvm9LiveRangeC2Eb.exit.i.i, %.lr.ph.i104
  %.0.i86.i = phi ptr [ %i.ub, %.lr.ph.i104 ], [ %i.uc, %_ZN4llvm9LiveRangeC2Eb.exit.i.i ] ; 3 uses
  %i.uu = load i32, ptr %i.qt, align 8, !tbaa !127
  %.not.i.i.i87.i = icmp eq i32 %i.uu, 0
  %i.uv = getelementptr inbounds nuw i8, ptr %.0.i86.i, i64 8
  %i.uw = load i32, ptr %i.uv, align 8
  %.not.i.i5.i.i = icmp eq i32 %i.uw, 0
  %or.cond.i.i = select i1 %.not.i.i.i87.i, i1 true, i1 %.not.i.i5.i.i
  br i1 %or.cond.i.i, label %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.thread.i, label %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i

_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i:        ; preds = %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i
  %i.ux = load ptr, ptr %.0.i86.i, align 8, !tbaa !67
  %i.uy = call noundef zeroext i1 @_ZNK4llvm9LiveRange12overlapsFromERKS0_PKNS0_7SegmentE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.0.i86.i, ptr noundef %i.ux) #26
  br i1 %i.uy, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit.i, label %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.thread.i

_ZNK4llvm9LiveRange8overlapsERKS0_.exit.thread.i: ; preds = %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.5152.0214.i, i64 2
  %i.va = load i16, ptr %.sroa.5152.0214.i, align 2, !tbaa !499 ; 2 uses
  %i.vb = sext i16 %i.va to i32
  %i.vc = add i32 %.sroa.9.0213.i, %i.vb
  %.not.i.i89.i = icmp eq i16 %i.va, 0
  br i1 %.not.i.i89.i, label %._crit_edge.i, label %.lr.ph.i104

._crit_edge.i:                                    ; preds = %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.thread.i, %bb.aq
  %.not.i90.i = icmp eq ptr %.sroa.9170.0217.i, %.sroa.14.0218.i
  br i1 %.not.i90.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i
  store i32 %i.sy, ptr %.sroa.9170.0217.i, align 4, !tbaa !110
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.9170.0217.i, i64 4
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit.i

bb.au:                                            ; preds = %._crit_edge.i
  %i.ve = ptrtoint ptr %.sroa.14.0218.i to i64    ; 2 uses
  %i.vf = ptrtoint ptr %.sroa.0166.0216.i to i64  ; 3 uses
  %i.vg = sub i64 %i.ve, %i.vf                    ; 4 uses
  %i.vh = icmp eq i64 %i.vg, 9223372036854775804
  br i1 %i.vh, label %bb.av, label %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #27
  unreachable

_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.vi = ashr exact i64 %i.vg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.vi, i64 1)
  %i.vj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.vi ; 2 uses
  %i.vk = icmp ult i64 %i.vj, %i.vi
  %i.vl = call i64 @llvm.umin.i64(i64 %i.vj, i64 2305843009213693951)
  %i.vm = select i1 %i.vk, i64 2305843009213693951, i64 %i.vl ; 3 uses
  %.not.i.i.i91.i = icmp ne i64 %i.vm, 0
  call void @llvm.assume(i1 %.not.i.i.i91.i)
  %i.vn = shl nuw nsw i64 %i.vm, 2
  %i.vo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vn) #25 ; 8 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vg
  store i32 %i.sy, ptr %i.vp, align 4, !tbaa !110
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0166.0216.i, %.sroa.14.0218.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.vq = ptrtoaddr ptr %i.vo to i64
  %i.vr = add i64 %i.ve, -4
  %i.vs = sub i64 %i.vr, %i.vf                    ; 2 uses
  %i.vt = lshr i64 %i.vs, 2
  %i.vu = add nuw nsw i64 %i.vt, 1                ; 2 uses
  %min.iters.check854 = icmp ult i64 %i.vs, 28
  %i.vv = sub i64 %i.vf, %i.vq
  %diff.check852 = icmp ugt i64 %i.vv, -32
  %or.cond = or i1 %min.iters.check854, %diff.check852
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader898, label %vector.ph855

vector.ph855:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec856 = and i64 %i.vu, 9223372036854775800  ; 3 uses
  %i.vw = shl i64 %n.vec856, 2                    ; 2 uses
  %i.vx = getelementptr i8, ptr %i.vo, i64 %i.vw  ; 2 uses
  %i.vy = getelementptr i8, ptr %.sroa.0166.0216.i, i64 %i.vw
  br label %vector.body857

vector.body857:                                   ; preds = %vector.body857, %vector.ph855
  %index858 = phi i64 [ 0, %vector.ph855 ], [ %index.next863, %vector.body857 ] ; 2 uses
  %i.vz = shl i64 %index858, 2                    ; 2 uses
  %next.gep859 = getelementptr i8, ptr %i.vo, i64 %i.vz ; 2 uses
  %next.gep860 = getelementptr i8, ptr %.sroa.0166.0216.i, i64 %i.vz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.wa = getelementptr i8, ptr %next.gep860, i64 16
  %wide.load861 = load <4 x i32>, ptr %next.gep860, align 4, !tbaa !110, !alias.scope !517, !noalias !514
  %wide.load862 = load <4 x i32>, ptr %i.wa, align 4, !tbaa !110, !alias.scope !517, !noalias !514
  %i.wb = getelementptr i8, ptr %next.gep859, i64 16
  store <4 x i32> %wide.load861, ptr %next.gep859, align 4, !tbaa !110, !alias.scope !514, !noalias !517
  store <4 x i32> %wide.load862, ptr %i.wb, align 4, !tbaa !110, !alias.scope !514, !noalias !517
  %index.next863 = add nuw i64 %index858, 8       ; 2 uses
  %i.wc = icmp eq i64 %index.next863, %n.vec856
  br i1 %i.wc, label %middle.block864, label %vector.body857, !llvm.loop !519

middle.block864:                                  ; preds = %vector.body857
  %cmp.n865 = icmp eq i64 %i.vu, %n.vec856
  br i1 %cmp.n865, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader898

.lr.ph.i.i.i.i.i.i.preheader898:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block864
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.vo, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vx, %middle.block864 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0166.0216.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vy, %middle.block864 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader898, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.wf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader898 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.we, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader898 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.wd = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !110, !alias.scope !517, !noalias !514
  store i32 %i.wd, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !110, !alias.scope !514, !noalias !517
  %i.we = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.we, %.sroa.14.0218.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !520

_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block864, %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.vo, %_ZNKSt6vectorIN4llvm10MCRegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.vx, %middle.block864 ], [ %i.wf, %.lr.ph.i.i.i.i.i.i ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0166.0216.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.0216.i, i64 noundef %i.vg) #28
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vm
  br label %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.at, %bb.ap, %.lr.ph221.i
  %.sroa.0166.1.i = phi ptr [ %.sroa.0166.0216.i, %.lr.ph221.i ], [ %i.vo, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0166.0216.i, %bb.at ], [ %.sroa.0166.0216.i, %bb.ap ], [ %.sroa.0166.0216.i, %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i ] ; 4 uses
  %.sroa.9170.1.i = phi ptr [ %.sroa.9170.0217.i, %.lr.ph221.i ], [ %i.wg, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.vd, %bb.at ], [ %.sroa.9170.0217.i, %bb.ap ], [ %.sroa.9170.0217.i, %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i ] ; 3 uses
  %.sroa.14.1.i = phi ptr [ %.sroa.14.0218.i, %.lr.ph221.i ], [ %i.wh, %_ZNSt6vectorIN4llvm10MCRegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.14.0218.i, %bb.at ], [ %.sroa.14.0218.i, %bb.ap ], [ %.sroa.14.0218.i, %_ZNK4llvm9LiveRange8overlapsERKS0_.exit.i ] ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.076219.i, i64 2 ; 2 uses
  %.not81.i = icmp eq ptr %i.wi, %i.sv
  br i1 %.not81.i, label %._crit_edge222.i, label %.lr.ph221.i

._crit_edge222.thread.i:                          ; preds = %._crit_edge222.i, %bb.an
  %.sroa.14.0.lcssa290.i = phi ptr [ %.sroa.14.1.i, %._crit_edge222.i ], [ null, %bb.an ]
  %.sroa.0166.0.lcssa289.i = phi ptr [ %.sroa.0166.1.i, %._crit_edge222.i ], [ null, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.mh, ptr %9, align 8, !tbaa !67
  store i32 0, ptr %i.mi, align 8, !tbaa !127
  store i32 8, ptr %i.mj, align 4, !tbaa !128
  call fastcc void @_ZN12_GLOBAL__N_112RegAllocPBQP9spillVRegEN4llvm8RegisterERNS1_15SmallVectorImplIS2_EERNS1_15MachineFunctionERNS1_13LiveIntervalsERNS1_10VirtRegMapERNS1_7SpillerE(ptr noundef nonnull align 8 dereferenceable(440) %0, i32 %i.pk, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(424) %i.bu, ptr noundef nonnull align 8 dereferenceable(128) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.da)
  %i.wj = load ptr, ptr %9, align 8, !tbaa !67    ; 11 uses
  %i.wk = ptrtoaddr ptr %i.wj to i64              ; 2 uses
  %i.wl = load i32, ptr %i.mi, align 8, !tbaa !127 ; 2 uses
  %i.wm = zext i32 %i.wl to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.wm, 2                ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.idx ; 2 uses
  %i.wo = ptrtoint ptr %i.pj to i64               ; 2 uses
  %i.wp = ptrtoint ptr %.sroa.0345.0 to i64       ; 4 uses
  %i.wq = sub i64 %i.wo, %i.wp
  %.not.i252 = icmp eq i32 %i.wl, 0
  br i1 %.not.i252, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE15_M_range_insertIPS1_EEvN9__gnu_cxx17__normal_iteratorIS5_S3_EET_S9_St20forward_iterator_tag.exit, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge222.thread.i
  %i.wr = ptrtoint ptr %.sroa.16.0 to i64         ; 2 uses
  %i.ws = sub i64 %i.wr, %i.wo
  %.not46.i = icmp ult i64 %i.ws, %.idx
  br i1 %.not46.i, label %bb.ay, label %.lr.ph.i.i.i.i.i254.preheader

.lr.ph.i.i.i.i.i254.preheader:                    ; preds = %bb.ax
  %i.wt = add nsw i64 %.idx, -4                   ; 2 uses
  %i.wu = lshr exact i64 %i.wt, 2
  %i.wv = add nuw nsw i64 %i.wu, 1                ; 2 uses
  %min.iters.check837 = icmp ult i64 %i.wt, 28
  br i1 %min.iters.check837, label %.lr.ph.i.i.i.i.i254.preheader906, label %vector.memcheck834

vector.memcheck834:                               ; preds = %.lr.ph.i.i.i.i.i254.preheader
  %i.ww = sub i64 %i.pi, %i.wk
  %i.wx = add i64 %i.ww, -5
  %diff.check835 = icmp ult i64 %i.wx, 31
  br i1 %diff.check835, label %.lr.ph.i.i.i.i.i254.preheader906, label %vector.ph838

vector.ph838:                                     ; preds = %vector.memcheck834
  %n.vec839 = and i64 %i.wv, 9223372036854775800  ; 3 uses
  %i.wy = shl i64 %n.vec839, 2                    ; 2 uses
  %i.wz = getelementptr i8, ptr %i.pj, i64 %i.wy
  %i.xa = getelementptr i8, ptr %i.wj, i64 %i.wy
  br label %vector.body840

vector.body840:                                   ; preds = %vector.body840, %vector.ph838
  %index841 = phi i64 [ 0, %vector.ph838 ], [ %index.next846, %vector.body840 ] ; 2 uses
  %i.xb = shl i64 %index841, 2                    ; 2 uses
  %next.gep842 = getelementptr i8, ptr %i.pj, i64 %i.xb ; 2 uses
  %next.gep843 = getelementptr i8, ptr %i.wj, i64 %i.xb ; 2 uses
  %i.xc = getelementptr i8, ptr %next.gep843, i64 16
  %wide.load844 = load <4 x i32>, ptr %next.gep843, align 4, !tbaa !110
  %wide.load845 = load <4 x i32>, ptr %i.xc, align 4, !tbaa !110
  %i.xd = getelementptr i8, ptr %next.gep842, i64 16
  store <4 x i32> %wide.load844, ptr %next.gep842, align 4, !tbaa !110
  store <4 x i32> %wide.load845, ptr %i.xd, align 4, !tbaa !110
  %index.next846 = add nuw i64 %index841, 8       ; 2 uses
  %i.xe = icmp eq i64 %index.next846, %n.vec839
  br i1 %i.xe, label %middle.block847, label %vector.body840, !llvm.loop !521

middle.block847:                                  ; preds = %vector.body840
  %cmp.n848 = icmp eq i64 %i.wv, %n.vec839
  br i1 %cmp.n848, label %_ZSt22__uninitialized_copy_aIPN4llvm8RegisterES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i254.preheader906

.lr.ph.i.i.i.i.i254.preheader906:                 ; preds = %vector.memcheck834, %.lr.ph.i.i.i.i.i254.preheader, %middle.block847
  %.011.i.i.i.i.i.ph = phi ptr [ %i.pj, %vector.memcheck834 ], [ %i.pj, %.lr.ph.i.i.i.i.i254.preheader ], [ %i.wz, %middle.block847 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.wj, %vector.memcheck834 ], [ %i.wj, %.lr.ph.i.i.i.i.i254.preheader ], [ %i.xa, %middle.block847 ]
  br label %.lr.ph.i.i.i.i.i254

.lr.ph.i.i.i.i.i254:                              ; preds = %.lr.ph.i.i.i.i.i254.preheader906, %.lr.ph.i.i.i.i.i254
  %.011.i.i.i.i.i = phi ptr [ %i.xh, %.lr.ph.i.i.i.i.i254 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i254.preheader906 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.xg, %.lr.ph.i.i.i.i.i254 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i254.preheader906 ] ; 2 uses
  %i.xf = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !110
  store i32 %i.xf, ptr %.011.i.i.i.i.i, align 4, !tbaa !110
  %i.xg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i255 = icmp eq ptr %i.xg, %i.wn
  br i1 %.not.i.i.i.i.i255, label %_ZSt22__uninitialized_copy_aIPN4llvm8RegisterES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i254, !llvm.loop !522

_ZSt22__uninitialized_copy_aIPN4llvm8RegisterES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i254, %middle.block847
  %i.xi = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.idx
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE15_M_range_insertIPS1_EEvN9__gnu_cxx17__normal_iteratorIS5_S3_EET_S9_St20forward_iterator_tag.exit

bb.ay:                                            ; preds = %bb.ax
  %i.xj = ashr exact i64 %i.wq, 2                 ; 4 uses
  %i.xk = sub nsw i64 2305843009213693951, %i.xj
  %i.xl = icmp samesign ult i64 %i.xk, %i.wm
  br i1 %i.xl, label %bb.az, label %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
  unreachable

_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ay
  %.sroa.speculated.i.i259 = call i64 @llvm.umax.i64(i64 %i.xj, i64 %i.wm)
  %i.xm = add nsw i64 %.sroa.speculated.i.i259, %i.xj ; 2 uses
  %i.xn = icmp ult i64 %i.xm, %i.xj
  %i.xo = call i64 @llvm.umin.i64(i64 %i.xm, i64 2305843009213693951)
  %i.xp = select i1 %i.xn, i64 2305843009213693951, i64 %i.xo ; 3 uses
  %.not.i.i260 = icmp eq i64 %i.xp, 0
  br i1 %.not.i.i260, label %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.xq = shl nuw nsw i64 %i.xp, 2
  %i.xr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xq) #25
  br label %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.ba, %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.xs = phi ptr [ %i.xr, %bb.ba ], [ null, %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 7 uses
  %.not7.i.i.i.i.i55.i = icmp eq ptr %.sroa.0345.0, %i.pj
  br i1 %.not7.i.i.i.i.i55.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i56.i.preheader

.lr.ph.i.i.i.i.i56.i.preheader:                   ; preds = %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i
  %i.xt = ptrtoaddr ptr %i.xs to i64
  %i.xu = ptrtoaddr ptr %i.ph to i64
  %i.xv = add i64 %i.xu, -8
  %i.xw = sub i64 %i.xv, %i.wp                    ; 2 uses
  %i.xx = lshr i64 %i.xw, 2
  %i.xy = add nuw nsw i64 %i.xx, 1                ; 2 uses
  %min.iters.check820 = icmp ult i64 %i.xw, 28
  %i.xz = sub i64 %i.wp, %i.xt
  %diff.check818 = icmp ugt i64 %i.xz, -32
  %or.cond894 = or i1 %min.iters.check820, %diff.check818
  br i1 %or.cond894, label %.lr.ph.i.i.i.i.i56.i.preheader905, label %vector.ph821

vector.ph821:                                     ; preds = %.lr.ph.i.i.i.i.i56.i.preheader
  %n.vec822 = and i64 %i.xy, 9223372036854775800  ; 3 uses
  %i.ya = shl i64 %n.vec822, 2                    ; 2 uses
  %i.yb = getelementptr i8, ptr %i.xs, i64 %i.ya  ; 2 uses
  %i.yc = getelementptr i8, ptr %.sroa.0345.0, i64 %i.ya
  br label %vector.body823

vector.body823:                                   ; preds = %vector.body823, %vector.ph821
  %index824 = phi i64 [ 0, %vector.ph821 ], [ %index.next829, %vector.body823 ] ; 2 uses
  %i.yd = shl i64 %index824, 2                    ; 2 uses
  %next.gep825 = getelementptr i8, ptr %i.xs, i64 %i.yd ; 2 uses
  %next.gep826 = getelementptr i8, ptr %.sroa.0345.0, i64 %i.yd ; 2 uses
  %i.ye = getelementptr i8, ptr %next.gep826, i64 16
  %wide.load827 = load <4 x i32>, ptr %next.gep826, align 4, !tbaa !110
  %wide.load828 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !110
  %i.yf = getelementptr i8, ptr %next.gep825, i64 16
  store <4 x i32> %wide.load827, ptr %next.gep825, align 4, !tbaa !110
  store <4 x i32> %wide.load828, ptr %i.yf, align 4, !tbaa !110
  %index.next829 = add nuw i64 %index824, 8       ; 2 uses
  %i.yg = icmp eq i64 %index.next829, %n.vec822
  br i1 %i.yg, label %middle.block830, label %vector.body823, !llvm.loop !523

middle.block830:                                  ; preds = %vector.body823
  %cmp.n831 = icmp eq i64 %i.xy, %n.vec822
  br i1 %cmp.n831, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i56.i.preheader905

.lr.ph.i.i.i.i.i56.i.preheader905:                ; preds = %.lr.ph.i.i.i.i.i56.i.preheader, %middle.block830
  %.09.i.i.i.i.i57.i.ph = phi ptr [ %i.xs, %.lr.ph.i.i.i.i.i56.i.preheader ], [ %i.yb, %middle.block830 ]
  %.sroa.04.08.i.i.i.i.i58.i.ph = phi ptr [ %.sroa.0345.0, %.lr.ph.i.i.i.i.i56.i.preheader ], [ %i.yc, %middle.block830 ]
  br label %.lr.ph.i.i.i.i.i56.i

.lr.ph.i.i.i.i.i56.i:                             ; preds = %.lr.ph.i.i.i.i.i56.i.preheader905, %.lr.ph.i.i.i.i.i56.i
  %.09.i.i.i.i.i57.i = phi ptr [ %i.yj, %.lr.ph.i.i.i.i.i56.i ], [ %.09.i.i.i.i.i57.i.ph, %.lr.ph.i.i.i.i.i56.i.preheader905 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i58.i = phi ptr [ %i.yi, %.lr.ph.i.i.i.i.i56.i ], [ %.sroa.04.08.i.i.i.i.i58.i.ph, %.lr.ph.i.i.i.i.i56.i.preheader905 ] ; 2 uses
  %i.yh = load i32, ptr %.sroa.04.08.i.i.i.i.i58.i, align 4, !tbaa !110
  store i32 %i.yh, ptr %.09.i.i.i.i.i57.i, align 4, !tbaa !110
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i58.i, i64 4 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i57.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i59.i = icmp eq ptr %i.yi, %i.pj
  br i1 %.not.i.i.i.i.i59.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i56.i, !llvm.loop !524

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i56.i, %middle.block830, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i
  %.0.lcssa.i.i.i.i.i60.i = phi ptr [ %i.xs, %_ZNSt12_Vector_baseIN4llvm8RegisterESaIS1_EE11_M_allocateEm.exit.i ], [ %i.yb, %middle.block830 ], [ %i.yj, %.lr.ph.i.i.i.i.i56.i ] ; 4 uses
  %i.yk = add nsw i64 %.idx, -4                   ; 2 uses
  %i.yl = lshr exact i64 %i.yk, 2
  %i.ym = add nuw nsw i64 %i.yl, 1                ; 2 uses
  %min.iters.check803 = icmp ult i64 %i.yk, 28
  %.0.lcssa.i.i.i.i.i60.i801 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i60.i to i64
  %i.yn = sub i64 %i.wk, %.0.lcssa.i.i.i.i.i60.i801
  %diff.check = icmp ugt i64 %i.yn, -32
  %or.cond895 = select i1 %min.iters.check803, i1 true, i1 %diff.check
  br i1 %or.cond895, label %.lr.ph.i.i.i.i62.i.preheader, label %vector.ph804

vector.ph804:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm8RegisterES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %n.vec805 = and i64 %i.ym, 9223372036854775800  ; 3 uses
  %i.yo = shl i64 %n.vec805, 2                    ; 2 uses
  %i.yp = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60.i, i64 %i.yo ; 2 uses
  %i.yq = getelementptr i8, ptr %i.wj, i64 %i.yo
  br label %vector.body806

vector.body806:                                   ; preds = %vector.body806, %vector.ph804
  %index807 = phi i64 [ 0, %vector.ph804 ], [ %index.next812, %vector.body806 ] ; 2 uses
  %i.yr = shl i64 %index807, 2                    ; 2 uses
  %next.gep808 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60.i, i64 %i.yr ; 2 uses
  %next.gep809 = getelementptr i8, ptr %i.wj, i64 %i.yr ; 2 uses
  %i.ys = getelementptr i8, ptr %next.gep809, i64 16
  %wide.load810 = load <4 x i32>, ptr %next.gep809, align 4, !tbaa !110
  %wide.load811 = load <4 x i32>, ptr %i.ys, align 4, !tbaa !110
  %i.yt = getelementptr i8, ptr %next.gep808, i64 16
  store <4 x i32> %wide.load810, ptr %next.gep808, align 4, !tbaa !110
end_hunk_0
