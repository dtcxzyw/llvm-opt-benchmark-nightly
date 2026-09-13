Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachORewriteInstance?download=true
inline.NumInlined: 3417
inline.NumDeleted: 2021
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm4bolt20MachORewriteInstance19discoverFileObjectsEv:bb.a
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !733
  call void %i.gq(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.413") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.gn, i64 %.sroa.0.0.copyload.i.i78) #25, !inline_history !703
  %i.gr = load i8, ptr %i.bw, align 8             ; 2 uses
  %i.gs = trunc i8 %i.gr to i1
  %i.gt = xor i1 %i.gs, true
  call void @llvm.assume(i1 %i.gt)
  %.sroa.0.0.copyload.i79 = load ptr, ptr %10, align 8, !tbaa !75 ; 3 uses
  %.sroa.2.0.copyload.i81 = load i64, ptr %.sroa.2.0..sroa_idx.i80, align 8, !tbaa !76 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %.not.i84 = icmp eq ptr %.sroa.0.0.copyload.i79, null
  store ptr %i.bx, ptr %9, align 8, !tbaa !85, !alias.scope !734
  br i1 %.not.i84, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %i.by, align 8, !tbaa !86, !alias.scope !734
  store i8 0, ptr %i.bx, align 8, !tbaa !81, !alias.scope !734
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !734
  store i64 %.sroa.2.0.copyload.i81, ptr %i.a, align 8, !tbaa !76, !noalias !734
  %i.gu = icmp ugt i64 %.sroa.2.0.copyload.i81, 15
  br i1 %i.gu, label %bb.ag, label %._crit_edge.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.gv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.gv, ptr %9, align 8, !tbaa !80, !alias.scope !734
  %i.gw = load i64, ptr %i.a, align 8, !tbaa !76, !noalias !734
  store i64 %i.gw, ptr %i.bx, align 8, !tbaa !81, !alias.scope !734
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ag, %bb.af
  %i.gx = phi ptr [ %i.gv, %bb.ag ], [ %i.bx, %bb.af ] ; 2 uses
  switch i64 %.sroa.2.0.copyload.i81, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  %i.gy = load i8, ptr %.sroa.0.0.copyload.i79, align 1, !tbaa !81
  store i8 %i.gy, ptr %i.gx, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr nonnull align 1 %.sroa.0.0.copyload.i79, i64 %.sroa.2.0.copyload.i81, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !76, !noalias !734 ; 2 uses
  store i64 %i.gz, ptr %i.by, align 8, !tbaa !86, !alias.scope !734
  %i.ha = load ptr, ptr %9, align 8, !tbaa !80, !alias.scope !734
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz
  store i8 0, ptr %i.hb, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !734
  %.pre = load i8, ptr %i.bw, align 8
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.hc = phi i8 [ %i.gr, %bb.ae ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ]
  %i.hd = trunc i8 %i.hc to i1
  br i1 %i.hd, label %bb.aj, label %_ZN4llvm8ExpectedIjED2Ev.exit

bb.aj:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.he = load ptr, ptr %10, align 8, !tbaa !95   ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.he, null
  br i1 %.not.i.i85, label %_ZN4llvm8ExpectedIjED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i86

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i86: ; preds = %bb.aj
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !35
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.he) #25, !inline_history !2
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i86, %bb.aj, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.hi = load ptr, ptr %i.fm, align 8, !tbaa !132, !noalias !735 ; 2 uses
  %.sroa.0.0.copyload.i87 = load i64, ptr %i.fl, align 8, !tbaa !81, !noalias !735
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !35, !noalias !735
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !735
  call void %i.hl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.453") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.hi, i64 %.sroa.0.0.copyload.i87) #25, !inline_history !708
  %i.hm = load i32, ptr %11, align 8, !tbaa !92
  %i.hn = and i32 %i.hm, 2
  %.not47 = icmp eq i32 %i.hn, 0
  br i1 %.not47, label %bb.ak, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit

bb.ak:                                            ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ho = load ptr, ptr %9, align 8, !tbaa !80
  %i.hp = load i64, ptr %i.by, align 8, !tbaa !86
  call void @_ZN4llvm4bolt12NameResolver8uniquifyB5cxx11ENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.ho, i64 %i.hp)
  %i.hq = load ptr, ptr %9, align 8, !tbaa !80    ; 6 uses
  %i.hr = icmp eq ptr %i.hq, %i.bx
  %i.hs = load ptr, ptr %12, align 8, !tbaa !80   ; 5 uses
  %i.ht = icmp eq ptr %i.hs, %i.ca                ; 2 uses
  br i1 %i.hr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ak
  br i1 %i.ht, label %bb.al, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ak
  br i1 %i.ht, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hu = load i64, ptr %i.cb, align 8, !tbaa !86 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hv)
  switch i64 %i.hu, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !81
  store i8 %i.hw, ptr %i.hq, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr align 1 %i.hs, i64 %i.hu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.hx = load i64, ptr %i.cb, align 8, !tbaa !86 ; 2 uses
  store i64 %i.hx, ptr %i.by, align 8, !tbaa !86
  %i.hy = load ptr, ptr %9, align 8, !tbaa !80
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx
  store i8 0, ptr %i.hz, align 1, !tbaa !81
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.hs, ptr %9, align 8, !tbaa !80
  %i.ia = load <2 x i64>, ptr %i.cb, align 8, !tbaa !81
  store <2 x i64> %i.ia, ptr %i.by, align 8, !tbaa !81
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ib = load i64, ptr %i.bx, align 8, !tbaa !81
  store ptr %i.hs, ptr %9, align 8, !tbaa !80
  %i.ic = load <2 x i64>, ptr %i.cb, align 8, !tbaa !81
  store <2 x i64> %i.ic, ptr %i.by, align 8, !tbaa !81
  %.not.i90 = icmp eq ptr %i.hq, null
  br i1 %.not.i90, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hq, ptr %12, align 8, !tbaa !80
  store i64 %i.ib, ptr %i.ca, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ca, ptr %12, align 8, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ao, %bb.ap
  %i.id = phi ptr [ %i.hq, %bb.ao ], [ %i.ca, %bb.ap ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cb, align 8, !tbaa !86
  store i8 0, ptr %i.id, align 1, !tbaa !81
  %i.ie = load ptr, ptr %12, align 8, !tbaa !80   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.ca
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ig = load i64, ptr %i.ca, align 8, !tbaa !81
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit

_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvm8ExpectedIjED2Ev.exit
  %i.ii = load ptr, ptr %i.fm, align 8, !tbaa !132, !noalias !736 ; 2 uses
  %.sroa.0.0.copyload.i.i91 = load i64, ptr %i.fl, align 8, !tbaa !81, !noalias !736
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !35, !noalias !736
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 128
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !736
  call void %i.il(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.456") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %i.ii, i64 %.sroa.0.0.copyload.i.i91) #25, !inline_history !711
  %.sroa.0.0.copyload.i92 = load i64, ptr %13, align 8, !tbaa !81 ; 3 uses
  %.sroa.2.0.copyload.i94 = load ptr, ptr %.sroa.2.0..sroa_idx.i93, align 8, !tbaa !123 ; 5 uses
  %i.im = load ptr, ptr %.sroa.2.0.copyload.i94, align 8, !tbaa !35
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 152
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = call noundef i64 %i.io(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload.i94, i64 %.sroa.0.0.copyload.i92) #25, !inline_history !712
  %i.iq = load ptr, ptr %.sroa.2.0.copyload.i94, align 8, !tbaa !35
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 168
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef i64 %i.is(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload.i94, i64 %.sroa.0.0.copyload.i92) #25, !inline_history !713
  %i.iu = add i64 %i.it, %i.ip                    ; 3 uses
  %.044224 = add nuw i64 %.046227, 1              ; 2 uses
  %i.iv = icmp ult i64 %.044224, %i.au
  br i1 %i.iv, label %_ZN4llvm8ExpectedImED2Ev.exit104, label %_ZN4llvm8ExpectedImED2Ev.exit118

_ZN4llvm8ExpectedImED2Ev.exit104:                 ; preds = %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit, %.backedge
  %.044225 = phi i64 [ %.044, %.backedge ], [ %.044224, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0174.1, i64 %.044225 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !132, !noalias !737
  %.sroa.0.0.copyload.i.i101 = load i64, ptr %i.iw, align 8, !tbaa !81, !noalias !737
  call void @_ZNK4llvm6object10ObjectFile14getSymbolValueENS0_11DataRefImplE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.449") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %i.iy, i64 %.sroa.0.0.copyload.i.i101) #25
  %i.iz = load i64, ptr %14, align 8, !tbaa !76
  %i.ja = icmp eq i64 %i.iz, %i.fo
  br i1 %i.ja, label %.backedge, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114

.backedge:                                        ; preds = %_ZN4llvm8ExpectedImED2Ev.exit104
  %.044 = add nuw i64 %.044225, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.044, %i.au
  br i1 %exitcond.not, label %_ZN4llvm8ExpectedImED2Ev.exit118, label %_ZN4llvm8ExpectedImED2Ev.exit104, !llvm.loop !716

_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114: ; preds = %_ZN4llvm8ExpectedImED2Ev.exit104
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %.pre256.a = load ptr, ptr %i.jb, align 8, !tbaa !132, !noalias !738 ; 2 uses
  %.sroa.0.0.copyload.i.i105 = load i64, ptr %i.iw, align 8, !tbaa !81, !noalias !738
  %.pre261 = load ptr, ptr %.pre256.a, align 8, !tbaa !35, !noalias !738
  %.phi.trans.insert262 = getelementptr inbounds nuw i8, ptr %.pre261, i64 128
  %.pre263 = load ptr, ptr %.phi.trans.insert262, align 8, !noalias !738
  call void %.pre263(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.456") align 8 %15, ptr noundef nonnull align 8 dereferenceable(48) %.pre256.a, i64 %.sroa.0.0.copyload.i.i105) #25, !inline_history !711
  %.sroa.2.0.copyload.i108 = load ptr, ptr %.sroa.2.0..sroa_idx.i107, align 8, !tbaa !123
  %i.jc = icmp eq ptr %.sroa.2.0.copyload.i94, %.sroa.2.0.copyload.i108
  %.sroa.0.0.copyload.i106 = load i64, ptr %15, align 8
  %.not.i.i.i111 = icmp eq i64 %.sroa.0.0.copyload.i92, %.sroa.0.0.copyload.i106
  %i.jd = select i1 %i.jc, i1 %.not.i.i.i111, i1 false
  br i1 %i.jd, label %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114._crit_edge, label %_ZN4llvm8ExpectedImED2Ev.exit118

_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114._crit_edge: ; preds = %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114
  %.sroa.0.0.copyload.i.i115.pre = load i64, ptr %i.iw, align 8, !tbaa !81, !noalias !739
  %.pre264 = load ptr, ptr %i.jb, align 8, !tbaa !132, !noalias !739
  call void @_ZNK4llvm6object10ObjectFile14getSymbolValueENS0_11DataRefImplE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.449") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %.pre264, i64 %.sroa.0.0.copyload.i.i115.pre) #25
  %i.je = load i64, ptr %16, align 8, !tbaa !76
  br label %_ZN4llvm8ExpectedImED2Ev.exit118

_ZN4llvm8ExpectedImED2Ev.exit118:                 ; preds = %.backedge, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114._crit_edge, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114
  %.045 = phi i64 [ %i.je, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114._crit_edge ], [ %i.iu, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit114 ], [ %i.iu, %_ZN4llvm8ExpectedINS_6object16content_iteratorINS1_10SectionRefEEEED2Ev.exit ], [ %i.iu, %.backedge ]
  %i.jf = load ptr, ptr %i.bu, align 8, !tbaa !94 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 264
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !142 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 256 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm8ExpectedImED2Ev.exit118, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.jh, %_ZN4llvm8ExpectedImED2Ev.exit118 ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.ji, %_ZN4llvm8ExpectedImED2Ev.exit118 ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !76
  %i.jl = icmp ult i64 %i.jk, %i.fo               ; 2 uses
  %.19.i.i.i = select i1 %i.jl, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.jl, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i119 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i119, label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm4bolt14BinaryFunctionEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !721

_ZNSt8_Rb_treeImSt4pairIKmN4llvm4bolt14BinaryFunctionEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.jm = icmp eq ptr %.19.i.i.i, %i.ji
  br i1 %i.jm, label %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread, label %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit

_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4llvm4bolt14BinaryFunctionEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !76
  %i.jp = icmp ult i64 %i.fo, %i.jo
  br i1 %i.jp, label %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread, label %bb.ar

_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4llvm4bolt14BinaryFunctionEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZN4llvm8ExpectedImED2Ev.exit118, %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit
  %i.jq = sub i64 %.045, %i.fo
  %i.jr = load ptr, ptr %8, align 8, !tbaa !146
  %i.js = call noundef ptr @_ZN4llvm4bolt13BinaryContext20createBinaryFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_13BinarySectionEmmmt(ptr noundef nonnull align 8 dereferenceable(2268) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(391) %i.jr, i64 noundef %i.fo, i64 noundef %i.jq, i64 noundef 0, i16 noundef zeroext 0) #25 ; 2 uses
  %i.jt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts10InstrumentE, i64 120), align 8, !tbaa !112, !range !113, !noundef !114
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !740
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 80
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !265
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.ar:                                            ; preds = %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit
  store ptr %i.cc, ptr %17, align 8, !tbaa !85
  %i.jy = load ptr, ptr %9, align 8, !tbaa !80    ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.bx
  br i1 %i.jz, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120

bb.as:                                            ; preds = %bb.ar
  %i.ka = load i64, ptr %i.by, align 8, !tbaa !86 ; 3 uses
  %i.kb = icmp ult i64 %i.ka, 16
  call void @llvm.assume(i1 %i.kb)
  %i.kc = add nuw nsw i64 %i.ka, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.kc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120: ; preds = %bb.ar
  store ptr %i.jy, ptr %17, align 8, !tbaa !80
  %i.kd = load i64, ptr %i.bx, align 8, !tbaa !81
  store i64 %i.kd, ptr %i.cc, align 8, !tbaa !81
  %.pre254 = load i64, ptr %i.by, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120
  %i.ke = phi i64 [ %i.ka, %bb.as ], [ %.pre254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120 ]
  store i64 %i.ke, ptr %i.cd, align 8, !tbaa !86
  store ptr %i.bx, ptr %9, align 8, !tbaa !80
  store i64 0, ptr %i.by, align 8, !tbaa !86
  store i8 0, ptr %i.bx, align 8, !tbaa !81
  %i.kf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 80 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 88 ; 4 uses
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !266 ; 2 uses
  %i.ki = zext i32 %i.kh to i64                   ; 2 uses
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 92
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !267
  %.not.i.i.not.i.i = icmp ult i32 %i.kh, %i.kl
  %.pre3.i.i = load ptr, ptr %i.kf, align 8, !tbaa !268 ; 4 uses
  br i1 %.not.i.i.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERS6_m.exit.i.i, label %bb.at, !prof !135

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.km = getelementptr inbounds nuw [32 x i8], ptr %.pre3.i.i, i64 %i.ki
  %i.kn = icmp uge ptr %17, %.pre3.i.i
  %i.ko = icmp ult ptr %17, %i.km
  %spec.select.i.i.i.i.i.i = and i1 %i.kn, %i.ko
  br i1 %spec.select.i.i.i.i.i.i, label %bb.au, label %.critedge.i.i.i.i, !prof !93

bb.au:                                            ; preds = %bb.at
  %i.kp = ptrtoint ptr %.pre3.i.i to i64
  %i.kq = sub i64 %i.ce, %i.kp
  call void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 noundef %i.kj)
  %i.kr = load ptr, ptr %i.kf, align 8, !tbaa !268 ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %i.kq
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERS6_m.exit.i.i

.critedge.i.i.i.i:                                ; preds = %bb.at
  call void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 noundef %i.kj)
  %.pre.i.i = load ptr, ptr %i.kf, align 8, !tbaa !268
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERS6_m.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERS6_m.exit.i.i: ; preds = %.critedge.i.i.i.i, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.kt = phi ptr [ %.pre3.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.kr, %bb.au ], [ %.pre.i.i, %.critedge.i.i.i.i ]
  %.016.i.i.i.i = phi ptr [ %17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ks, %bb.au ], [ %17, %.critedge.i.i.i.i ] ; 5 uses
  %i.ku = load i32, ptr %i.kg, align 8, !tbaa !266
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [32 x i8], ptr %i.kt, i64 %i.kv ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 3 uses
  store ptr %i.kx, ptr %i.kw, align 8, !tbaa !85
  %i.ky = load ptr, ptr %.016.i.i.i.i, align 8, !tbaa !80 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 16 ; 5 uses
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.av:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERS6_m.exit.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !86 ; 2 uses
  %i.ld = icmp ult i64 %i.lc, 16
  call void @llvm.assume(i1 %i.ld)
  %i.le = add nuw nsw i64 %i.lc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kx, ptr noundef nonnull align 8 dereferenceable(1) %i.kz, i64 %i.le, i1 false)
  br label %_ZN4llvm4bolt14BinaryFunction18addAlternativeNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE28reserveForParamAndGetAddressERS6_m.exit.i.i
  store ptr %i.ky, ptr %i.kw, align 8, !tbaa !80
  %i.lf = load i64, ptr %i.kz, align 8, !tbaa !81
  store i64 %i.lf, ptr %i.kx, align 8, !tbaa !81
  br label %_ZN4llvm4bolt14BinaryFunction18addAlternativeNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4llvm4bolt14BinaryFunction18addAlternativeNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 8 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !86
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !86
  store ptr %i.kz, ptr %.016.i.i.i.i, align 8, !tbaa !80
  store i64 0, ptr %i.lg, align 8, !tbaa !86
  store i8 0, ptr %i.kz, align 8, !tbaa !81
  %i.lj = load i32, ptr %i.kg, align 8, !tbaa !266
  %i.lk = add i32 %i.lj, 1
  store i32 %i.lk, ptr %i.kg, align 8, !tbaa !266
  %i.ll = load ptr, ptr %17, align 8, !tbaa !80   ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.cc
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZN4llvm4bolt14BinaryFunction18addAlternativeNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ln = load i64, ptr %i.cc, align 8, !tbaa !81
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZN4llvm4bolt14BinaryFunction18addAlternativeNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread, %bb.aq
  %i.lp = load ptr, ptr %9, align 8, !tbaa !80    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.bx
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.lr = load i64, ptr %i.bx, align 8, !tbaa !81
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

_ZN4llvm11raw_ostreamlsEPKc.exit77:               ; preds = %bb.ac, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.lt = add nuw i64 %.046227, 1                 ; 2 uses
  %exitcond250.not = icmp eq i64 %i.lt, %i.au
  br i1 %exitcond250.not, label %._crit_edge229, label %_ZN4llvm8ExpectedImED2Ev.exit, !llvm.loop !722

._crit_edge233:                                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %_ZN4llvm4bolt12_GLOBAL__N_114readDataInCodeERKNS_6object15MachOObjectFileE.exit
  %i.lu = load ptr, ptr %0, align 8, !tbaa !74    ; 4 uses
  %i.lv = call { ptr, ptr } @_ZNK4llvm6object15MachOObjectFile13load_commandsEv(ptr noundef nonnull align 8 dereferenceable(360) %i.lu) #25 ; 2 uses
  %i.lw = extractvalue { ptr, ptr } %i.lv, 0      ; 2 uses
  %i.lx = extractvalue { ptr, ptr } %i.lv, 1      ; 2 uses
  %.not45.i = icmp eq ptr %i.lw, %i.lx
  br i1 %.not45.i, label %_ZN4llvm4bolt12_GLOBAL__N_116readStartAddressERKNS_6object15MachOObjectFileE.exit, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %._crit_edge233
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_0
