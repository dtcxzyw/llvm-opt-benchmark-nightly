Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerTypeTests?download=true
inline.NumInlined: 12352
inline.NumDeleted: 6356
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEv:bb.a

bb.gf:                                            ; preds = %.lr.ph1595
  %i.bfr = getelementptr inbounds i8, ptr %i.bfo, i64 -32
  %i.bfs = load ptr, ptr %i.bfr, align 8, !tbaa !328 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bfs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread1324, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.bft = load i8, ptr %i.bfs, align 8, !tbaa !355
  %i.bfu = icmp eq i8 %i.bft, 14
  br i1 %i.bfu, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, label %.thread1324

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.gg
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfs, i64 32
  %i.bfw = load i32, ptr %i.bfv, align 8
  %i.bfx = and i32 %i.bfw, 8192
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bfx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread1324, label %_ZN4llvm3isaIJNS_10AssumeInstEEPNS_4UserEEEbRKT0_.exit

_ZN4llvm3isaIJNS_10AssumeInstEEPNS_4UserEEEbRKT0_.exit: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfs, i64 36
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !474
  %i.bga = icmp eq i32 %i.bfz, 16
  br i1 %i.bga, label %bb.gh, label %.thread1324

bb.gh:                                            ; preds = %_ZN4llvm3isaIJNS_10AssumeInstEEPNS_4UserEEEbRKT0_.exit
  %i.bgb = getelementptr inbounds nuw i8, ptr %.sroa.01136.01593, i64 8
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !353 ; 2 uses
  %.not1345 = icmp eq ptr %i.bgc, null
  br i1 %.not1345, label %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE9push_backERKS2_.exit, label %.lr.ph1595

.thread1324:                                      ; preds = %_ZN4llvm3isaIJNS_10AssumeInstEEPNS_4UserEEEbRKT0_.exit, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, %.lr.ph1595, %bb.gg, %bb.gf, %.lr.ph1601
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfk, i64 4
  %i.bge = load i32, ptr %i.bgd, align 4
  %i.bgf = and i32 %i.bge, 268435455
  %i.bgg = zext nneg i32 %i.bgf to i64
  %i.bgh = sub nsw i64 0, %i.bgg
  %i.bgi = getelementptr inbounds [32 x i8], ptr %i.bfk, i64 %i.bgh
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 32
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !328 ; 2 uses
  %i.bgl = load i8, ptr %i.bgk, align 8, !tbaa !355
  %.not1348 = icmp eq i8 %i.bgl, 25
  br i1 %.not1348, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %.thread1324
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.129, i1 noundef zeroext true) #30
  unreachable

bb.gj:                                            ; preds = %.thread1324
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgk, i64 24
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !1215
  %i.bgo = call fastcc noundef nonnull align 8 dereferenceable(25) ptr @"_ZZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvENK3$_3clEPN4llvm8MetadataE"(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef %i.bgn) ; 4 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgo, i64 8 ; 3 uses
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !1278 ; 4 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgo, i64 16 ; 3 uses
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !477
  %.not.i648 = icmp eq ptr %i.bgq, %i.bgs
  br i1 %.not.i648, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.bfk, ptr %i.bgq, align 8, !tbaa !479
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgq, i64 8
  store ptr %i.bgt, ptr %i.bgp, align 8, !tbaa !1278
  br label %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE9push_backERKS2_.exit

bb.gl:                                            ; preds = %bb.gj
  %i.bgu = load ptr, ptr %i.bgo, align 8, !tbaa !480 ; 4 uses
  %i.bgv = ptrtoint ptr %i.bgq to i64
  %i.bgw = ptrtoint ptr %i.bgu to i64             ; 2 uses
  %i.bgx = sub i64 %i.bgv, %i.bgw                 ; 5 uses
  %i.bgy = icmp eq i64 %i.bgx, 9223372036854775800
  br i1 %i.bgy, label %bb.gm, label %_ZNKSt6vectorIPN4llvm8CallInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.gm:                                            ; preds = %bb.gl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #30
  unreachable

_ZNKSt6vectorIPN4llvm8CallInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.gl
  %i.bgz = ashr exact i64 %i.bgx, 3               ; 3 uses
  %.sroa.speculated.i.i.i649 = call i64 @llvm.umax.i64(i64 %i.bgz, i64 1)
  %i.bha = add nsw i64 %.sroa.speculated.i.i.i649, %i.bgz ; 2 uses
  %i.bhb = icmp ult i64 %i.bha, %i.bgz
  %i.bhc = call i64 @llvm.umin.i64(i64 %i.bha, i64 1152921504606846975)
  %i.bhd = select i1 %i.bhb, i64 1152921504606846975, i64 %i.bhc ; 3 uses
  %.not.i.i.i650 = icmp ne i64 %i.bhd, 0
  call void @llvm.assume(i1 %.not.i.i.i650)
  %i.bhe = shl nuw nsw i64 %i.bhd, 3
  %i.bhf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bhe) #29 ; 4 uses
  %i.bhg = getelementptr inbounds i8, ptr %i.bhf, i64 %i.bgx ; 2 uses
  store ptr %i.bfk, ptr %i.bhg, align 8, !tbaa !479
  %i.bhh = icmp sgt i64 %i.bgx, 0
  br i1 %i.bhh, label %bb.gn, label %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.gn:                                            ; preds = %_ZNKSt6vectorIPN4llvm8CallInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bhf, ptr align 8 %i.bgu, i64 %i.bgx, i1 false)
  br label %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.gn, %_ZNKSt6vectorIPN4llvm8CallInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bgu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.go

bb.go:                                            ; preds = %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.bhj = load ptr, ptr %i.bgr, align 8, !tbaa !477
  %i.bhk = ptrtoint ptr %i.bhj to i64
  %i.bhl = sub i64 %i.bhk, %i.bgw
  call void @_ZdlPvm(ptr noundef nonnull %i.bgu, i64 noundef %i.bhl) #27
  br label %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.go, %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bhf, ptr %i.bgo, align 8, !tbaa !480
  store ptr %i.bhi, ptr %i.bgp, align 8, !tbaa !1278
  %i.bhm = getelementptr inbounds nuw [8 x i8], ptr %i.bhf, i64 %i.bhd
  store ptr %i.bhm, ptr %i.bgr, align 8, !tbaa !477
  br label %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.gh, %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.gk
  %i.bhn = getelementptr inbounds nuw i8, ptr %.sroa.01146.01599, i64 8
  %.sroa.01146.0 = load ptr, ptr %i.bhn, align 8, !tbaa !329 ; 2 uses
  %.not1344 = icmp eq ptr %.sroa.01146.0, null
  br i1 %.not1344, label %.loopexit1383, label %.lr.ph1601

.loopexit1383:                                    ; preds = %_ZNSt6vectorIPN4llvm8CallInstESaIS2_EE9push_backERKS2_.exit, %bb.ge, %._crit_edge2326
  %.not420 = icmp eq ptr %i.t, null
  br i1 %.not420, label %.loopexit1382, label %bb.gp

bb.gp:                                            ; preds = %.loopexit1383
  %i.bho = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.01129.01602 = load ptr, ptr %i.bho, align 8, !tbaa !329 ; 2 uses
  %.not13491603 = icmp eq ptr %.sroa.01129.01602, null
  br i1 %.not13491603, label %.loopexit1382, label %.lr.ph1607

.lr.ph1607:                                       ; preds = %bb.gp
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bhq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %22, i64 20 ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %22, i64 96
  br label %bb.gq

bb.gq:                                            ; preds = %.lr.ph1607, %_ZNSt6vectorIPN12_GLOBAL__N_116GlobalTypeMemberESaIS2_EED2Ev.exit
  %.sroa.01129.01605 = phi ptr [ %.sroa.01129.01602, %.lr.ph1607 ], [ %.sroa.01129.0, %_ZNSt6vectorIPN12_GLOBAL__N_116GlobalTypeMemberESaIS2_EED2Ev.exit ] ; 2 uses
  %.43591604 = phi i32 [ %.0355.lcssa, %.lr.ph1607 ], [ %i.bjy, %_ZNSt6vectorIPN12_GLOBAL__N_116GlobalTypeMemberESaIS2_EED2Ev.exit ]
  %i.bhv = load i32, ptr %i.bhp, align 8, !tbaa !321
  %.not431 = icmp eq i32 %i.bhv, 41
  br i1 %.not431, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.130, i1 noundef zeroext true) #30
  unreachable

bb.gs:                                            ; preds = %bb.gq
  %i.bhw = getelementptr inbounds nuw i8, ptr %.sroa.01129.01605, i64 24
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !354 ; 11 uses
  %i.bhy = call noundef ptr @_ZN4llvm8CallBase7arg_endEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhx)
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhx, i64 4 ; 5 uses
  %i.bia = load i32, ptr %i.bhz, align 4
  %i.bib = and i32 %i.bia, 268435455
  %i.bic = zext nneg i32 %i.bib to i64
  %i.bid = sub nsw i64 0, %i.bic
  %i.bie = getelementptr inbounds [32 x i8], ptr %i.bhx, i64 %i.bid
  %i.bif = ptrtoint ptr %i.bhy to i64
  %i.big = ptrtoint ptr %i.bie to i64
  %i.bih = sub i64 %i.bif, %i.big
  %i.bii = and i64 %i.bih, 32
  %.not432.not = icmp eq i64 %i.bii, 0
  br i1 %.not432.not, label %bb.gt, label %.preheader1381

bb.gt:                                            ; preds = %bb.gs
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.131, i1 noundef zeroext true) #30
  unreachable

.preheader1381:                                   ; preds = %bb.gs, %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit693
  %.sroa.01124.0 = phi ptr [ %.sroa.01124.1, %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit693 ], [ null, %bb.gs ] ; 11 uses
  %.sroa.71125.0 = phi ptr [ %.sroa.71125.1, %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit693 ], [ null, %bb.gs ] ; 6 uses
  %.sroa.111126.0 = phi ptr [ %.sroa.111126.1, %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit693 ], [ null, %bb.gs ] ; 3 uses
  %.sroa.095.0 = phi ptr [ %.sroa.095.1, %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit693 ], [ undef, %bb.gs ] ; 10 uses
  %.0361 = phi i32 [ %i.btv, %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit693 ], [ 1, %bb.gs ] ; 4 uses
  %i.bij = load i8, ptr %i.bhx, align 8, !tbaa !355
  switch i8 %i.bij, label %bb.gw [
    i8 88, label %_ZN4llvm8CallBase17data_operands_endEv.exit.i
    i8 36, label %bb.gu
    i8 42, label %bb.gv
  ]

bb.gu:                                            ; preds = %.preheader1381
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i

bb.gv:                                            ; preds = %.preheader1381
  %i.bik = call noundef i32 @_ZNK4llvm8CallBase34getNumSubclassExtraOperandsDynamicEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhx) #26
  %i.bil = zext i32 %i.bik to i64
  %i.bim = shl nuw nsw i64 %i.bil, 5
  %i.bin = sub nuw nsw i64 -32, %i.bim
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i

bb.gw:                                            ; preds = %.preheader1381
  unreachable

_ZN4llvm8CallBase17data_operands_endEv.exit.i:    ; preds = %bb.gv, %bb.gu, %.preheader1381
  %.0.i.i.i968.neg = phi i64 [ %i.bin, %bb.gv ], [ -96, %bb.gu ], [ -32, %.preheader1381 ]
  %i.bio = load i32, ptr %i.bhz, align 4          ; 2 uses
  %i.bip = icmp slt i32 %i.bio, 0
  br i1 %i.bip, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i: ; preds = %_ZN4llvm8CallBase17data_operands_endEv.exit.i
  %i.biq = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhx) #26
  %i.bir = extractvalue { ptr, i64 } %i.biq, 0    ; 2 uses
  %.pr.i.i.i.i = load i32, ptr %i.bhz, align 4    ; 2 uses
  %i.bis = icmp slt i32 %.pr.i.i.i.i, 0
  br i1 %i.bis, label %bb.gx, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

bb.gx:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i
  %i.bit = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhx) #26 ; 2 uses
  %i.biu = extractvalue { ptr, i64 } %i.bit, 0
  %i.biv = extractvalue { ptr, i64 } %i.bit, 1
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biu, i64 %i.biv
  %i.bix = ptrtoint ptr %i.biw to i64
  %.pre1826.pre = load i32, ptr %i.bhz, align 4
  br label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i: ; preds = %bb.gx, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i, %_ZN4llvm8CallBase17data_operands_endEv.exit.i
  %.pre1826 = phi i32 [ %.pre1826.pre, %bb.gx ], [ %.pr.i.i.i.i, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ %i.bio, %_ZN4llvm8CallBase17data_operands_endEv.exit.i ] ; 2 uses
  %.0.i.i3.i.i.i.i = phi ptr [ %i.bir, %bb.gx ], [ %i.bir, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ null, %_ZN4llvm8CallBase17data_operands_endEv.exit.i ]
  %.0.i.i1.i.i.i.i = phi i64 [ %i.bix, %bb.gx ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ 0, %_ZN4llvm8CallBase17data_operands_endEv.exit.i ]
  %i.biy = ptrtoint ptr %.0.i.i3.i.i.i.i to i64
  %i.biz = sub i64 %.0.i.i1.i.i.i.i, %i.biy
  %i.bja = and i64 %i.biz, 68719476720
  %.not.i.i969 = icmp eq i64 %i.bja, 0
  br i1 %.not.i.i969, label %_ZN4llvm8CallBase7arg_endEv.exit, label %bb.gy

bb.gy:                                            ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i
  %i.bjb = icmp slt i32 %.pre1826, 0
  call void @llvm.assume(i1 %i.bjb)
  %i.bjc = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhx) #26
  %i.bjd = extractvalue { ptr, i64 } %i.bjc, 0
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 8
  %i.bjf = load i32, ptr %i.bje, align 8, !tbaa !483
  %i.bjg = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhx) #26 ; 2 uses
  %i.bjh = extractvalue { ptr, i64 } %i.bjg, 0
  %i.bji = extractvalue { ptr, i64 } %i.bjg, 1
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjh, i64 %i.bji
  %i.bjk = getelementptr inbounds i8, ptr %i.bjj, i64 -4
  %i.bjl = load i32, ptr %i.bjk, align 4, !tbaa !484
  %i.bjm = sub i32 %i.bjl, %i.bjf
  %i.bjn = zext i32 %i.bjm to i64
  %.neg = mul nsw i64 %i.bjn, -32
  %.pre1825 = load i32, ptr %i.bhz, align 4
  br label %_ZN4llvm8CallBase7arg_endEv.exit

_ZN4llvm8CallBase7arg_endEv.exit:                 ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i, %bb.gy
  %i.bjo = phi i32 [ %.pre1825, %bb.gy ], [ %.pre1826, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i ]
  %.0.i.i970.neg = phi i64 [ %.neg, %bb.gy ], [ 0, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i ]
  %i.bjp = add nsw i64 %.0.i.i970.neg, %.0.i.i.i968.neg
  %i.bjq = and i32 %i.bjo, 268435455
  %i.bjr = zext nneg i32 %i.bjq to i64
  %.neg1352 = mul nsw i64 %i.bjr, -32             ; 2 uses
  %gepdiff = sub nsw i64 %i.bjp, %.neg1352
  %i.bjs = lshr exact i64 %gepdiff, 5
  %i.bjt = trunc i64 %i.bjs to i32
  %.not433 = icmp eq i32 %.0361, %i.bjt
  br i1 %.not433, label %bb.gz, label %bb.hh

bb.gz:                                            ; preds = %_ZN4llvm8CallBase7arg_endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  %i.bju = ptrtoint ptr %.sroa.71125.0 to i64
  %i.bjv = ptrtoint ptr %.sroa.01124.0 to i64     ; 2 uses
  %i.bjw = sub i64 %i.bju, %i.bjv                 ; 4 uses
  %i.bjx = ashr exact i64 %i.bjw, 3               ; 2 uses
  %i.bjy = add i32 %.43591604, 1                  ; 2 uses
  %i.bjz = add i64 %i.bjw, 24                     ; 3 uses
  %i.bka = load ptr, ptr %23, align 8, !tbaa !441 ; 2 uses
  %i.bkb = ptrtoint ptr %i.bka to i64
  %i.bkc = add i64 %i.bjz, %i.bkb                 ; 2 uses
  %i.bkd = load i64, ptr %i.ata, align 8, !tbaa !442
  %i.bke = icmp ult i64 %i.bkc, %i.bkd
  br i1 %i.bke, label %bb.ha, label %bb.hb, !prof !378

bb.ha:                                            ; preds = %bb.gz
  %i.bkf = inttoptr i64 %i.bkc to ptr
  store ptr %i.bkf, ptr %23, align 8, !tbaa !441
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i655

bb.hb:                                            ; preds = %bb.gz
  %i.bkg = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %23, i64 noundef %i.bjz, i64 noundef %i.bjz, i8 3)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i655

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i655: ; preds = %bb.hb, %bb.ha
  %.0.i.i.i656 = phi ptr [ %i.bka, %bb.ha ], [ %i.bkg, %bb.hb ] ; 5 uses
  store ptr %i.bhx, ptr %.0.i.i.i656, align 8, !tbaa !1279
  %i.bkh = getelementptr inbounds nuw i8, ptr %.0.i.i.i656, i64 8
  store i32 %i.bjy, ptr %i.bkh, align 8, !tbaa !486
  %i.bki = getelementptr inbounds nuw i8, ptr %.0.i.i.i656, i64 16
  store i64 %i.bjx, ptr %i.bki, align 8, !tbaa !487
  %i.bkj = getelementptr inbounds nuw i8, ptr %.0.i.i.i656, i64 24 ; 2 uses
  %i.bkk = icmp ugt i64 %i.bjx, 1
  br i1 %i.bkk, label %bb.hc, label %bb.hd, !prof !378

bb.hc:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i655
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bkj, ptr readonly align 8 %.sroa.01124.0, i64 %i.bjw, i1 false)
  br label %_ZN12_GLOBAL__N_117ICallBranchFunnel6createERN4llvm20BumpPtrAllocatorImplINS1_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS1_8CallInstENS1_8ArrayRefIPNS_16GlobalTypeMemberEEEj.exit

bb.hd:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i655
  %i.bkl = icmp eq i64 %i.bjw, 8
  br i1 %i.bkl, label %bb.he, label %_ZN12_GLOBAL__N_117ICallBranchFunnel6createERN4llvm20BumpPtrAllocatorImplINS1_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS1_8CallInstENS1_8ArrayRefIPNS_16GlobalTypeMemberEEEj.exit

bb.he:                                            ; preds = %bb.hd
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.sroa.01124.0, align 8, !tbaa !458
  store ptr %.val.i.i.i.i.i.i.i, ptr %i.bkj, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_117ICallBranchFunnel6createERN4llvm20BumpPtrAllocatorImplINS1_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS1_8CallInstENS1_8ArrayRefIPNS_16GlobalTypeMemberEEEj.exit

_ZN12_GLOBAL__N_117ICallBranchFunnel6createERN4llvm20BumpPtrAllocatorImplINS1_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS1_8CallInstENS1_8ArrayRefIPNS_16GlobalTypeMemberEEEj.exit: ; preds = %bb.hc, %bb.hd, %bb.he
  %i.bkm = ptrtoint ptr %.0.i.i.i656 to i64
  %i.bkn = or i64 %i.bkm, 2
  store i64 %i.bkn, ptr %36, align 8
  %i.bko = call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE6insertERKS9_(ptr noundef nonnull align 8 dereferenceable(168) %22, ptr noundef nonnull align 8 dereferenceable(8) %36)
  %i.bkp = call fastcc noundef ptr @_ZNK4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bko) ; 5 uses
  %i.bkq = icmp eq ptr %.sroa.095.0, %i.bkp
  br i1 %i.bkq, label %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit, label %bb.hf

bb.hf:                                            ; preds = %_ZN12_GLOBAL__N_117ICallBranchFunnel6createERN4llvm20BumpPtrAllocatorImplINS1_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS1_8CallInstENS1_8ArrayRefIPNS_16GlobalTypeMemberEEEj.exit
  %.val11.i = load ptr, ptr %.sroa.095.0, align 8, !tbaa !496
  %i.bkr = ptrtoint ptr %i.bkp to i64
  %i.bks = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8 ; 2 uses
  %.val.i.i657 = load ptr, ptr %i.bks, align 8, !tbaa !497
  %i.bkt = ptrtoint ptr %.val.i.i657 to i64
  %i.bku = and i64 %i.bkt, 1
  %i.bkv = or i64 %i.bku, %i.bkr
  %i.bkw = inttoptr i64 %i.bkv to ptr
  store ptr %i.bkw, ptr %i.bks, align 8, !tbaa !497
  %.val10.i = load ptr, ptr %i.bkp, align 8, !tbaa !496
  store ptr %.val10.i, ptr %.sroa.095.0, align 8, !tbaa !496
  %i.bkx = getelementptr i8, ptr %i.bkp, i64 8    ; 2 uses
  %.val12.i = load ptr, ptr %i.bkx, align 8, !tbaa !497
  %i.bky = ptrtoint ptr %.val12.i to i64
  %i.bkz = and i64 %i.bky, -2
  %i.bla = inttoptr i64 %i.bkz to ptr
  store ptr %i.bla, ptr %i.bkx, align 8, !tbaa !497
  store ptr %.sroa.095.0, ptr %i.bkp, align 8, !tbaa !496
  br label %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit

_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit: ; preds = %_ZN12_GLOBAL__N_117ICallBranchFunnel6createERN4llvm20BumpPtrAllocatorImplINS1_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS1_8CallInstENS1_8ArrayRefIPNS_16GlobalTypeMemberEEEj.exit, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %.not.i.i.i658 = icmp eq ptr %.sroa.01124.0, null
  br i1 %.not.i.i.i658, label %_ZNSt6vectorIPN12_GLOBAL__N_116GlobalTypeMemberESaIS2_EED2Ev.exit, label %bb.hg

bb.hg:                                            ; preds = %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit
  %i.blb = ptrtoint ptr %.sroa.111126.0 to i64
  %i.blc = sub i64 %i.blb, %i.bjv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01124.0, i64 noundef %i.blc) #27
  br label %_ZNSt6vectorIPN12_GLOBAL__N_116GlobalTypeMemberESaIS2_EED2Ev.exit

_ZNSt6vectorIPN12_GLOBAL__N_116GlobalTypeMemberESaIS2_EED2Ev.exit: ; preds = %_ZN4llvm18EquivalenceClassesINS_12PointerUnionIJPN12_GLOBAL__N_116GlobalTypeMemberEPNS_8MetadataEPNS2_17ICallBranchFunnelEEEEE9unionSetsENSA_15member_iteratorESB_.exit, %bb.hg
  %i.bld = getelementptr inbounds nuw i8, ptr %.sroa.01129.01605, i64 8
  %.sroa.01129.0 = load ptr, ptr %i.bld, align 8, !tbaa !329 ; 2 uses
  %.not1349 = icmp eq ptr %.sroa.01129.0, null
  br i1 %.not1349, label %.loopexit1382, label %bb.gq

bb.hh:                                            ; preds = %_ZN4llvm8CallBase7arg_endEv.exit
  %i.ble = getelementptr inbounds i8, ptr %i.bhx, i64 %.neg1352
  %i.blf = zext i32 %.0361 to i64
  %i.blg = getelementptr inbounds nuw [32 x i8], ptr %i.ble, i64 %i.blf
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !328 ; 2 uses
  %i.bli = load ptr, ptr %0, align 8, !tbaa !312, !nonnull !76, !align !310
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 296 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blh, i64 8
  %i.bll = load ptr, ptr %i.blk, align 8, !tbaa !498
  %i.blm = call noundef i32 @_ZNK4llvm10DataLayout22getIndexTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.blj, ptr noundef %i.bll) #26 ; 2 uses
  store i32 %i.blm, ptr %i.bhq, align 8, !tbaa !412
  %i.bln = icmp ult i32 %i.blm, 65
  br i1 %i.bln, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  store i64 0, ptr %6, align 8, !tbaa !86
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

bb.hj:                                            ; preds = %bb.hh
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %6, i64 noundef 0, i1 noundef zeroext false) #26
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.hj, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr null, ptr %5, align 8
  %i.blo = call noundef ptr @_ZNK4llvm5Value33stripAndAccumulateConstantOffsetsERKNS_10DataLayoutERNS_5APIntEbbNS_12function_refIFbRS0_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.blh, ptr noundef nonnull align 8 dereferenceable(912) %i.blj, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::function_ref.790") align 8 %5, i1 noundef zeroext false) #26 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.blp = load i32, ptr %i.bhq, align 8, !tbaa !412
  %i.blq = icmp ult i32 %i.blp, 65
  br i1 %i.blq, label %_ZN4llvm32GetPointerBaseWithConstantOffsetEPNS_5ValueERlRKNS_10DataLayoutEb.exit, label %bb.hk

bb.hk:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.blr = load ptr, ptr %6, align 8, !tbaa !86
  call void @_ZdaPv(ptr noundef nonnull %i.blr) #27
  br label %_ZN4llvm32GetPointerBaseWithConstantOffsetEPNS_5ValueERlRKNS_10DataLayoutEb.exit

_ZN4llvm32GetPointerBaseWithConstantOffsetEPNS_5ValueERlRKNS_10DataLayoutEb.exit: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bls = load i8, ptr %i.blo, align 8, !tbaa !355
  switch i8 %i.bls, label %bb.hl [
    i8 17, label %_ZN4llvm8dyn_castINS_12GlobalObjectENS_5ValueEEEDcPT0_.exit
    i8 14, label %_ZN4llvm8dyn_castINS_12GlobalObjectENS_5ValueEEEDcPT0_.exit
    i8 16, label %_ZN4llvm8dyn_castINS_12GlobalObjectENS_5ValueEEEDcPT0_.exit
  ]

bb.hl:                                            ; preds = %_ZN4llvm32GetPointerBaseWithConstantOffsetEPNS_5ValueERlRKNS_10DataLayoutEb.exit
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.132, i1 noundef zeroext true) #30
  unreachable

_ZN4llvm8dyn_castINS_12GlobalObjectENS_5ValueEEEDcPT0_.exit: ; preds = %_ZN4llvm32GetPointerBaseWithConstantOffsetEPNS_5ValueERlRKNS_10DataLayoutEb.exit, %_ZN4llvm32GetPointerBaseWithConstantOffsetEPNS_5ValueERlRKNS_10DataLayoutEb.exit, %_ZN4llvm32GetPointerBaseWithConstantOffsetEPNS_5ValueERlRKNS_10DataLayoutEb.exit
  %i.blt = load ptr, ptr %33, align 8, !tbaa !451, !noalias !1280 ; 3 uses
  %i.blu = load ptr, ptr %i.atb, align 8, !tbaa !452, !noalias !1280 ; 3 uses
  %i.blv = load i32, ptr %i.atc, align 4, !tbaa !453, !noalias !1280 ; 4 uses
  %i.blw = icmp eq i32 %i.blv, 0
  br i1 %i.blw, label %.loopexit.i.i661, label %bb.hm

bb.hm:                                            ; preds = %_ZN4llvm8dyn_castINS_12GlobalObjectENS_5ValueEEEDcPT0_.exit
  %i.blx = add i32 %i.blv, -1                     ; 2 uses
  %i.bly = ptrtoint ptr %i.blo to i64
  %i.blz = mul i64 %i.bly, -4658895280553007687   ; 2 uses
  %i.bma = lshr i64 %i.blz, 31
  %i.bmb = xor i64 %i.bma, %i.blz
  %i.bmc = trunc i64 %i.bmb to i32
  %i.bmd = and i32 %i.blx, %i.bmc                 ; 3 uses
  %i.bme = zext i32 %i.bmd to i64                 ; 2 uses
  %i.bmf = getelementptr inbounds nuw [16 x i8], ptr %i.blt, i64 %i.bme ; 2 uses
  %i.bmg = lshr i64 %i.bme, 5
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.blu, i64 %i.bmg
  %i.bmi = load i32, ptr %i.bmh, align 4, !tbaa !173
  %i.bmj = and i32 %i.bmd, 31
  %i.bmk = lshr i32 %i.bmi, %i.bmj
  %i.bml = trunc i32 %i.bmk to i1
  br i1 %i.bml, label %.lr.ph.i.i.i673, label %.loopexit.i.i661, !prof !395

.lr.ph.i.i.i673:                                  ; preds = %bb.hm, %bb.hn
  %i.bmm = phi ptr [ %i.bms, %bb.hn ], [ %i.bmf, %bb.hm ] ; 2 uses
  %.05.i.i.i674 = phi i32 [ %i.bmq, %bb.hn ], [ %i.bmd, %bb.hm ]
  %i.bmn = load ptr, ptr %i.bmm, align 8, !tbaa !454
  %i.bmo = icmp eq ptr %i.blo, %i.bmn
  br i1 %i.bmo, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectEPN12_GLOBAL__N_116GlobalTypeMemberENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit.loopexit, label %bb.hn, !prof !378

bb.hn:                                            ; preds = %.lr.ph.i.i.i673
  %i.bmp = add nuw i32 %.05.i.i.i674, 1
  %i.bmq = and i32 %i.bmp, %i.blx                 ; 3 uses
  %i.bmr = zext i32 %i.bmq to i64                 ; 2 uses
  %i.bms = getelementptr inbounds nuw [16 x i8], ptr %i.blt, i64 %i.bmr ; 2 uses
  %i.bmt = lshr i64 %i.bmr, 5
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %i.blu, i64 %i.bmt
  %i.bmv = load i32, ptr %i.bmu, align 4, !tbaa !173
  %i.bmw = and i32 %i.bmq, 31
  %i.bmx = lshr i32 %i.bmv, %i.bmw
  %i.bmy = trunc i32 %i.bmx to i1
  br i1 %i.bmy, label %.lr.ph.i.i.i673, label %.loopexit.i.i661, !prof !396, !llvm.loop !2

.loopexit.i.i661:                                 ; preds = %bb.hn, %bb.hm, %_ZN4llvm8dyn_castINS_12GlobalObjectENS_5ValueEEEDcPT0_.exit
  %.lcssa9.sink.i.ph.i.i662 = phi ptr [ %i.bmf, %bb.hm ], [ null, %_ZN4llvm8dyn_castINS_12GlobalObjectENS_5ValueEEEDcPT0_.exit ], [ %i.bms, %bb.hn ]
  %.val6.i.i.i663 = load i32, ptr %i.atd, align 8, !tbaa !456
  %i.bmz = shl i32 %.val6.i.i.i663, 2
  %i.bna = add i32 %i.bmz, 4
  %i.bnb = mul i32 %i.blv, 3
end_hunk_0
