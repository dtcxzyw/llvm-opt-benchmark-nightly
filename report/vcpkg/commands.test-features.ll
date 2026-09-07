Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.test-features?download=true
inline.NumInlined: 3870
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZSt12__move_mergeIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET0_T_SM_SM_SM_SL_T1_":bb.a
bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.bi = getelementptr inbounds nuw i8, ptr %.052, i64 200 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !78 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %.not21.i.i24 = icmp eq ptr %.052, %.sroa.0.047
  br i1 %.not21.i.i24, label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit29, label %bb.k, !prof !237

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bj, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i25
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bl = load i8, ptr %i.bf, align 1, !tbaa !72
  store i8 %i.bl, ptr %i.bd, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i25

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bf, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i25: ; preds = %bb.m, %bb.l, %bb.k
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !78 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 200
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !78
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  store i8 0, ptr %i.bp, align 1, !tbaa !72
  %.pre.i.i26 = load ptr, ptr %i.bc, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit29

.thread.i.i28:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 200
  store ptr %i.bf, ptr %i.q, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %.052, i64 200
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !78
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !78
  %i.bt = load i64, ptr %i.bg, align 8, !tbaa !72
  store i64 %i.bt, ptr %i.r, align 8, !tbaa !72
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21
  %i.bu = load i64, ptr %i.r, align 8, !tbaa !72
  store ptr %i.bf, ptr %i.q, align 8, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %.052, i64 200
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !78
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 200
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !78
  %i.by = load i64, ptr %i.bg, align 8, !tbaa !72
  store i64 %i.by, ptr %i.r, align 8, !tbaa !72
  %.not.i.i23 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i23, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i22
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !76
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit29

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i22, %.thread.i.i28
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit29

_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit29:      ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i25, %bb.n, %bb.o
  %i.bz = phi ptr [ %i.bd, %bb.n ], [ %i.bg, %bb.o ], [ %i.bf, %bb.j ], [ %.pre.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i25 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.052, i64 200
  store i64 0, ptr %i.ca, align 8, !tbaa !78
  store i8 0, ptr %i.bz, align 1, !tbaa !72
  %i.cb = getelementptr inbounds nuw i8, ptr %.052, i64 224
  br label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit29, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit
  %.117 = phi ptr [ %i.aw, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit ], [ %.01650, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit29 ] ; 3 uses
  %.1 = phi ptr [ %.052, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit ], [ %i.cb, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit29 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 224 ; 2 uses
  %i.cd = icmp ne ptr %.1, %1
  %i.ce = icmp ne ptr %.117, %3
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %.lr.ph, label %._crit_edge, !llvm.loop !798

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.cc, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.cg = ptrtoint ptr %1 to i64
  %i.ch = ptrtoint ptr %.0.lcssa to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.ck = udiv exact i64 %i.ci, 224
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.dv, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i ], [ %i.ck, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.du, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 10 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.dt, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 11 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5vcpkg15FullPackageSpecaSEOS0_(ptr noundef nonnull align 8 dereferenceable(224) %.0812.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(224) %.0910.i.i.i.i.i) #23 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.co = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN5vcpkg10ActionPlanaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.cm, ptr noundef nonnull align 8 dereferenceable(120) %i.cn) #23 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 184
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !181
  %i.cr = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 184
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !181
  %i.cs = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 192 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 192 ; 4 uses
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !76 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 208 ; 4 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !76 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 208 ; 6 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy                ; 2 uses
  br i1 %i.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.cz, label %bb.q, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.cz, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 200 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !78 ; 3 uses
  %i.dc = icmp ult i64 %i.db, 16
  tail call void @llvm.assume(i1 %i.dc)
  %.not21.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0812.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i, label %bb.r, !prof !237

bb.r:                                             ; preds = %bb.q
  switch i64 %i.db, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !72
  store i8 %i.dd, ptr %i.cu, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.cx, i64 %i.db, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.de = load i64, ptr %i.da, align 8, !tbaa !78 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 200
  store i64 %i.de, ptr %i.df, align 8, !tbaa !78
  %i.dg = load ptr, ptr %i.cs, align 8, !tbaa !76
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1, !tbaa !72
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 200
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 200
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !78
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !78
  %i.dl = load i64, ptr %i.cy, align 8, !tbaa !72
  store i64 %i.dl, ptr %i.cv, align 8, !tbaa !72
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.dm = load i64, ptr %i.cv, align 8, !tbaa !72
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !76
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 200
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !78
  %i.dp = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 200
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !78
  %i.dq = load i64, ptr %i.cy, align 8, !tbaa !72
  store i64 %i.dq, ptr %i.cv, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !76
  store i64 %i.dm, ptr %i.cy, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.cy, ptr %i.ct, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i, %bb.q
  %i.dr = phi ptr [ %i.cu, %bb.u ], [ %i.cy, %bb.v ], [ %i.cx, %bb.q ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 200
  store i64 0, ptr %i.ds, align 8, !tbaa !78
  store i8 0, ptr %i.dr, align 1, !tbaa !72
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 224
  %i.du = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 224 ; 2 uses
  %i.dv = add nsw i64 %.014.i.i.i.i.i, -1
  %i.dw = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !24

_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.du, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i ]
  %i.dx = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.dy = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.dz ; 3 uses
  %i.eb = ptrtoint ptr %3 to i64
  %i.ec = ptrtoint ptr %.016.lcssa to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  %i.ee = icmp sgt i64 %i.ed, 0
  br i1 %i.ee, label %.lr.ph.preheader.i.i.i.i.i31, label %_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit45

.lr.ph.preheader.i.i.i.i.i31:                     ; preds = %_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %i.ef = udiv exact i64 %i.ed, 224
  br label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i31
  %.014.i.i.i.i.i33 = phi i64 [ %i.fq, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39 ], [ %i.ef, %.lr.ph.preheader.i.i.i.i.i31 ] ; 2 uses
  %.0812.i.i.i.i.i34 = phi ptr [ %i.fp, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39 ], [ %i.ea, %.lr.ph.preheader.i.i.i.i.i31 ] ; 10 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.fo, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i31 ] ; 11 uses
  %i.eg = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5vcpkg15FullPackageSpecaSEOS0_(ptr noundef nonnull align 8 dereferenceable(224) %.0812.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(224) %.0910.i.i.i.i.i35) #23 ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i34, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 64
  %i.ej = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN5vcpkg10ActionPlanaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.eh, ptr noundef nonnull align 8 dereferenceable(120) %i.ei) #23 ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 184
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !181
  %i.em = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i34, i64 184
  store i32 %i.el, ptr %i.em, align 8, !tbaa !181
  %i.en = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i34, i64 192 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 192 ; 4 uses
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !76 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i34, i64 208 ; 4 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !76 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 208 ; 6 uses
  %i.eu = icmp eq ptr %i.es, %i.et                ; 2 uses
  br i1 %i.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43: ; preds = %.lr.ph.i.i.i.i.i32
  br i1 %i.eu, label %bb.w, label %.thread.i.i.i.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i32
  br i1 %i.eu, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i37

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43
  %i.ev = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 200 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !78 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, 16
  tail call void @llvm.assume(i1 %i.ex)
  %.not21.i.i.i.i.i.i.i40 = icmp eq ptr %.0910.i.i.i.i.i35, %.0812.i.i.i.i.i34
  br i1 %.not21.i.i.i.i.i.i.i40, label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39, label %bb.x, !prof !237

bb.x:                                             ; preds = %bb.w
  switch i64 %i.ew, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i41
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.ey = load i8, ptr %i.es, align 1, !tbaa !72
  store i8 %i.ey, ptr %i.ep, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i41

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.es, i64 %i.ew, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i41: ; preds = %bb.z, %bb.y, %bb.x
  %i.ez = load i64, ptr %i.ev, align 8, !tbaa !78 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i34, i64 200
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !78
  %i.fb = load ptr, ptr %i.en, align 8, !tbaa !76
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez
  store i8 0, ptr %i.fc, align 1, !tbaa !72
  %.pre.i.i.i.i.i.i.i42 = load ptr, ptr %i.eo, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39

.thread.i.i.i.i.i.i.i44:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i43
  %i.fd = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i34, i64 200
  store ptr %i.es, ptr %i.en, align 8, !tbaa !76
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 200
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !78
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !78
  %i.fg = load i64, ptr %i.et, align 8, !tbaa !72
  store i64 %i.fg, ptr %i.eq, align 8, !tbaa !72
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i36
  %i.fh = load i64, ptr %i.eq, align 8, !tbaa !72
  store ptr %i.es, ptr %i.en, align 8, !tbaa !76
  %i.fi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 200
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !78
  %i.fk = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i34, i64 200
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !78
  %i.fl = load i64, ptr %i.et, align 8, !tbaa !72
  store i64 %i.fl, ptr %i.eq, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i38, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i37
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !76
  store i64 %i.fh, ptr %i.et, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i37, %.thread.i.i.i.i.i.i.i44
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39

_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i41, %bb.w
  %i.fm = phi ptr [ %i.ep, %bb.aa ], [ %i.et, %bb.ab ], [ %i.es, %bb.w ], [ %.pre.i.i.i.i.i.i.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i41 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 200
  store i64 0, ptr %i.fn, align 8, !tbaa !78
  store i8 0, ptr %i.fm, align 1, !tbaa !72
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 224
  %i.fp = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i34, i64 224 ; 2 uses
  %i.fq = add nsw i64 %.014.i.i.i.i.i33, -1
  %i.fr = icmp sgt i64 %.014.i.i.i.i.i33, 1
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit45, !llvm.loop !24

_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit45: ; preds = %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39, %_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i30 = phi ptr [ %i.ea, %_ZSt4moveIPN12_GLOBAL__N_110SpecToTestEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %i.fp, %_ZN12_GLOBAL__N_110SpecToTestaSEOS0_.exit.i.i.i.i.i39 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i30 to i64
  %i.fs = sub i64 %5, %i.dx
  %i.ft = getelementptr inbounds i8, ptr %i.ea, i64 %i.fs
  ret ptr %i.ft
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEEvT_SL_SL_T0_SM_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond90 = or i1 %i.a, %i.b
  br i1 %or.cond90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit
  %.tr8694 = phi i64 [ %4, %.lr.ph ], [ %i.cw, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit ] ; 4 uses
  %.tr8593 = phi i64 [ %3, %.lr.ph ], [ %i.cv, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit ] ; 4 uses
  %.tr8392 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit ] ; 13 uses
  %.tr91 = phi ptr [ %0, %.lr.ph ], [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit ] ; 8 uses
  %i.d = add nsw i64 %.tr8694, %.tr8593
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr8392, i64 112
  %.val2.i = load ptr, ptr %i.f, align 8, !tbaa !185
  %i.g = getelementptr i8, ptr %.tr8392, i64 120
  %.val3.i = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.h = getelementptr i8, ptr %.tr91, i64 112
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.i = getelementptr i8, ptr %.tr91, i64 120
  %.val5.i = load ptr, ptr %i.i, align 8, !tbaa !186
  %i.j = ptrtoint ptr %.val3.i to i64
  %i.k = ptrtoint ptr %.val2.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ptrtoint ptr %.val5.i to i64
  %i.n = ptrtoint ptr %.val4.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES8_EvT_T0_(ptr nonnull %.tr91, ptr nonnull %.tr8392)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.q = icmp sgt i64 %.tr8593, %.tr8694
  %i.r = ptrtoint ptr %.tr8392 to i64             ; 4 uses
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit62

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.s = sdiv i64 %.tr8593, 2                     ; 2 uses
  %i.t = getelementptr inbounds [224 x i8], ptr %.tr91, i64 %i.s ; 3 uses
  %i.u = sub i64 %i.c, %i.r                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.w = getelementptr i8, ptr %i.t, i64 120
  %.val56 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.t, i64 112
  %.val55 = load ptr, ptr %i.x, align 8
  %i.y = udiv exact i64 %i.u, 224
  %i.z = ptrtoint ptr %.val56 to i64
  %i.aa = ptrtoint ptr %.val55 to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.07.i = phi i64 [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.ac = lshr i64 %.07.i, 1                      ; 3 uses
  %i.ad = getelementptr inbounds nuw [224 x i8], ptr %.sroa.02.06.i, i64 %i.ac ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 112
  %.val2.i.i = load ptr, ptr %i.ae, align 8, !tbaa !185
  %i.af = getelementptr i8, ptr %i.ad, i64 120
  %.val3.i.i = load ptr, ptr %i.af, align 8, !tbaa !186
  %i.ag = ptrtoint ptr %.val3.i.i to i64
  %i.ah = ptrtoint ptr %.val2.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ab               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  %i.al = xor i64 %i.ac, -1
  %i.am = add nsw i64 %.07.i, %i.al
  %.sroa.02.1.i = select i1 %i.aj, ptr %i.ak, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.aj, i64 %i.am, i64 %i.ac   ; 2 uses
  %i.an = icmp sgt i64 %.1.i, 0
  br i1 %i.an, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit", !llvm.loop !26

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ao = sub i64 %.pre-phi, %i.r
  %i.ap = sdiv exact i64 %i.ao, 224
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit62: ; preds = %bb.e
  %i.aq = sdiv i64 %.tr8694, 2                    ; 2 uses
  %i.ar = getelementptr inbounds [224 x i8], ptr %.tr8392, i64 %i.aq ; 3 uses
  %i.as = ptrtoint ptr %.tr91 to i64              ; 3 uses
  %i.at = sub i64 %i.r, %i.as                     ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i64, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i64: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit62
  %i.av = getelementptr i8, ptr %i.ar, i64 120
  %.val58 = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.ar, i64 112
  %.val57 = load ptr, ptr %i.aw, align 8
  %i.ax = udiv exact i64 %i.at, 224
  %i.ay = ptrtoint ptr %.val58 to i64
  %i.az = ptrtoint ptr %.val57 to i64
  %i.ba = sub i64 %i.ay, %i.az
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i65

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i65: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i65, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i64
  %.07.i66 = phi i64 [ %i.ax, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i64 ], [ %.1.i71, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i65 ] ; 2 uses
  %.sroa.02.06.i67 = phi ptr [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i64 ], [ %.sroa.02.1.i70, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i65 ] ; 2 uses
  %i.bb = lshr i64 %.07.i66, 1                    ; 3 uses
  %i.bc = getelementptr inbounds nuw [224 x i8], ptr %.sroa.02.06.i67, i64 %i.bb ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 112
  %.val4.i.i = load ptr, ptr %i.bd, align 8, !tbaa !185
  %i.be = getelementptr i8, ptr %i.bc, i64 120
  %.val5.i.i = load ptr, ptr %i.be, align 8, !tbaa !186
  %i.bf = ptrtoint ptr %.val5.i.i to i64
  %i.bg = ptrtoint ptr %.val4.i.i to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.ba, %i.bh               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.bk = xor i64 %i.bb, -1
  %i.bl = add nsw i64 %.07.i66, %i.bk
  %.sroa.02.1.i70 = select i1 %i.bi, ptr %.sroa.02.06.i67, ptr %i.bj ; 3 uses
  %.1.i71 = select i1 %i.bi, i64 %i.bb, i64 %i.bl ; 2 uses
  %i.bm = icmp sgt i64 %.1.i71, 0
  br i1 %i.bm, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i65, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit", !llvm.loop !27

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i65
  %.pre98 = ptrtoint ptr %.sroa.02.1.i70 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit62
  %.pre-phi99 = phi i64 [ %.pre98, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %i.as, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit62 ]
  %.sroa.02.0.lcssa.i63 = phi ptr [ %.sroa.02.1.i70, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit62 ]
  %i.bn = sub i64 %.pre-phi99, %i.as
  %i.bo = sdiv exact i64 %i.bn, 224
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit"
  %.sroa.073.0 = phi ptr [ %i.t, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i63, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit" ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit" ], [ %i.ar, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit" ] ; 4 uses
  %.047 = phi i64 [ %i.ap, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit" ], [ %i.aq, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.s, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit" ], [ %i.bo, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_6EEET_SL_SL_RKT0_T1_.exit" ] ; 2 uses
  %i.bp = icmp eq ptr %.sroa.073.0, %.tr8392
  br i1 %i.bp, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = icmp eq ptr %.sroa.0.0, %.tr8392
  br i1 %i.bq, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.bs = ptrtoint ptr %.sroa.073.0 to i64        ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 224               ; 2 uses
  %i.bv = ptrtoint ptr %.tr8392 to i64            ; 2 uses
  %i.bw = sub i64 %i.bv, %i.bs
  %i.bx = sdiv exact i64 %i.bw, 224               ; 3 uses
  %i.by = sub nsw i64 %i.bu, %i.bx
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph.i.i.i, label %bb.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i ], [ %.tr8392, %bb.h ] ; 2 uses
  %.sroa.05.07.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %.sroa.073.0, %bb.h ] ; 2 uses
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS3_SaIS3_EEEES8_EvT_T0_(ptr %.sroa.05.07.i.i.i, ptr %.sroa.0.08.i.i.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 224 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 224
  %.not.i.i.i = icmp eq ptr %i.ca, %.tr8392
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110SpecToTestESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %.lr.ph.i.i.i, !llvm.loop !28

bb.i:                                             ; preds = %bb.h
  %i.cc = sub i64 %i.br, %i.bv
  %i.cd = getelementptr inbounds i8, ptr %.sroa.073.0, i64 %i.cc ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.058.i.i = phi i64 [ %i.bu, %bb.i ], [ %.058.i.i.be, %.backedge ] ; 4 uses
  %.0.i.i = phi i64 [ %i.bx, %bb.i ], [ %.0.i.i.be, %.backedge ] ; 8 uses
  %.sroa.038.0.i.i = phi ptr [ %.sroa.073.0, %bb.i ], [ %.sroa.038.0.i.i.be, %.backedge ] ; 5 uses
  %i.ce = sub nsw i64 %.058.i.i, %.0.i.i          ; 6 uses
  %i.cf = icmp slt i64 %.0.i.i, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@"_ZSt12__move_mergeIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET0_T_SM_SM_SM_SL_T1_":bb.a
  %.not21.i.i.i.i22 = icmp eq ptr %.050, %.sroa.0.045
  br i1 %.not21.i.i.i.i22, label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit27, label %bb.k, !prof !237

bb.k:                                             ; preds = %bb.j
  switch i64 %i.be, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i23
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !72
  store i8 %i.bg, ptr %i.ay, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i23

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.ba, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i23: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !78 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 72
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !78
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !72
  %.pre.i.i.i.i24 = load ptr, ptr %i.ax, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit27

.thread.i.i.i.i26:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 72
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %.050, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !78
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !78
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !72
  store i64 %i.bo, ptr %i.i, align 8, !tbaa !72
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !72
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %.050, i64 72
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !78
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 72
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !78
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !72
  store i64 %i.bt, ptr %i.i, align 8, !tbaa !72
  %.not.i.i.i.i21 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i20
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !76
  store i64 %i.bp, ptr %i.bb, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit27

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i20, %.thread.i.i.i.i26
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit27

_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit27:  ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i23, %bb.n, %bb.o
  %i.bu = phi ptr [ %i.ay, %bb.n ], [ %i.bb, %bb.o ], [ %i.ba, %bb.j ], [ %.pre.i.i.i.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i23 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.050, i64 72
  store i64 0, ptr %i.bv, align 8, !tbaa !78
  store i8 0, ptr %i.bu, align 1, !tbaa !72
  %i.bw = getelementptr inbounds nuw i8, ptr %.050, i64 96
  br label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit27, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit
  %.117 = phi ptr [ %i.ap, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit ], [ %.01648, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit27 ] ; 3 uses
  %.1 = phi ptr [ %.050, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit ], [ %i.bw, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit27 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 96 ; 2 uses
  %i.by = icmp ne ptr %.1, %1
  %i.bz = icmp ne ptr %.117, %3
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !822

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bx, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.cb = ptrtoint ptr %1 to i64
  %i.cc = ptrtoint ptr %.0.lcssa to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.cf = udiv exact i64 %i.cd, 96
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.dt, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i ], [ %i.cf, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.ds, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 11 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.dr, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 12 uses
  %i.cg = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !258
  store ptr %i.cg, ptr %.0812.i.i.i.i.i, align 8, !tbaa !258
  %i.ch = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !251
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !251
  %i.ck = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cm = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5vcpkg7details15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull align 8 dereferenceable(40) %i.cl) #23 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 56
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.cp = load i64, ptr %i.co, align 8
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 64 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64 ; 4 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !76 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 80 ; 4 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !76 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80 ; 6 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw                ; 2 uses
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.cx, label %bb.q, label %.thread.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.cx, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !78 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  tail call void @llvm.assume(i1 %i.da)
  %.not21.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0812.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i, label %bb.r, !prof !237

bb.r:                                             ; preds = %bb.q
  switch i64 %i.cz, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !72
  store i8 %i.db, ptr %i.cs, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cv, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.dc = load i64, ptr %i.cy, align 8, !tbaa !78 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 72
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !78
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !76
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !72
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 72
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !76
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !78
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !78
  %i.dj = load i64, ptr %i.cw, align 8, !tbaa !72
  store i64 %i.dj, ptr %i.ct, align 8, !tbaa !72
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.dk = load i64, ptr %i.ct, align 8, !tbaa !72
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !76
  %i.dl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 72
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !78
  %i.do = load i64, ptr %i.cw, align 8, !tbaa !72
  store i64 %i.do, ptr %i.ct, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i.i
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !76
  store i64 %i.dk, ptr %i.cw, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i
  store ptr %i.cw, ptr %i.cr, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i, %bb.q
  %i.dp = phi ptr [ %i.cs, %bb.u ], [ %i.cw, %bb.v ], [ %i.cv, %bb.q ], [ %.pre.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  store i64 0, ptr %i.dq, align 8, !tbaa !78
  store i8 0, ptr %i.dp, align 1, !tbaa !72
  %i.dr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 96
  %i.ds = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 96 ; 2 uses
  %i.dt = add nsw i64 %.014.i.i.i.i.i, -1
  %i.du = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !32

_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ds, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i ]
  %i.dv = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.dw = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %3 to i64
  %i.ea = ptrtoint ptr %.016.lcssa to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.preheader.i.i.i.i.i29, label %_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit43

.lr.ph.preheader.i.i.i.i.i29:                     ; preds = %_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %i.ed = udiv exact i64 %i.eb, 96
  br label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37, %.lr.ph.preheader.i.i.i.i.i29
  %.014.i.i.i.i.i31 = phi i64 [ %i.fr, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37 ], [ %i.ed, %.lr.ph.preheader.i.i.i.i.i29 ] ; 2 uses
  %.0812.i.i.i.i.i32 = phi ptr [ %i.fq, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37 ], [ %i.dy, %.lr.ph.preheader.i.i.i.i.i29 ] ; 11 uses
  %.0910.i.i.i.i.i33 = phi ptr [ %i.fp, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i29 ] ; 12 uses
  %i.ee = load ptr, ptr %.0910.i.i.i.i.i33, align 8, !tbaa !258
  store ptr %i.ee, ptr %.0812.i.i.i.i.i32, align 8, !tbaa !258
  %i.ef = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !251
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !251
  %i.ei = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 16
  %i.ek = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5vcpkg7details15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.ei, ptr noundef nonnull align 8 dereferenceable(40) %i.ej) #23 ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 56
  %i.em = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 56
  %i.en = load i64, ptr %i.em, align 8
  store i64 %i.en, ptr %i.el, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 64 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 64 ; 4 uses
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !76 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 80 ; 4 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  %i.et = load ptr, ptr %i.ep, align 8, !tbaa !76 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 80 ; 6 uses
  %i.ev = icmp eq ptr %i.et, %i.eu                ; 2 uses
  br i1 %i.es, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i41: ; preds = %.lr.ph.i.i.i.i.i30
  br i1 %i.ev, label %bb.w, label %.thread.i.i.i.i.i.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i.i.i30
  br i1 %i.ev, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i.i35

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i41
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 72 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !78 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 16
  tail call void @llvm.assume(i1 %i.ey)
  %.not21.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %.0910.i.i.i.i.i33, %.0812.i.i.i.i.i32
  br i1 %.not21.i.i.i.i.i.i.i.i.i38, label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37, label %bb.x, !prof !237

bb.x:                                             ; preds = %bb.w
  switch i64 %i.ex, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i39
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.ez = load i8, ptr %i.et, align 1, !tbaa !72
  store i8 %i.ez, ptr %i.eq, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i39

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr align 1 %i.et, i64 %i.ex, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i39: ; preds = %bb.z, %bb.y, %bb.x
  %i.fa = load i64, ptr %i.ew, align 8, !tbaa !78 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 72
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !78
  %i.fc = load ptr, ptr %i.eo, align 8, !tbaa !76
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store i8 0, ptr %i.fd, align 1, !tbaa !72
  %.pre.i.i.i.i.i.i.i.i.i40 = load ptr, ptr %i.ep, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37

.thread.i.i.i.i.i.i.i.i.i42:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i41
  %i.fe = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 72
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !76
  %i.ff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 72
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !78
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !78
  %i.fh = load i64, ptr %i.eu, align 8, !tbaa !72
  store i64 %i.fh, ptr %i.er, align 8, !tbaa !72
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i34
  %i.fi = load i64, ptr %i.er, align 8, !tbaa !72
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !76
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 72
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !78
  %i.fl = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 72
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !78
  %i.fm = load i64, ptr %i.eu, align 8, !tbaa !72
  store i64 %i.fm, ptr %i.er, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i36, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i.i35
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !76
  store i64 %i.fi, ptr %i.eu, align 8, !tbaa !72
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i.i35, %.thread.i.i.i.i.i.i.i.i.i42
  store ptr %i.eu, ptr %i.ep, align 8, !tbaa !76
  br label %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37

_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i39, %bb.w
  %i.fn = phi ptr [ %i.eq, %bb.aa ], [ %i.eu, %bb.ab ], [ %i.et, %bb.w ], [ %.pre.i.i.i.i.i.i.i.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i39 ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 72
  store i64 0, ptr %i.fo, align 8, !tbaa !78
  store i8 0, ptr %i.fn, align 1, !tbaa !72
  %i.fp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 96
  %i.fq = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i32, i64 96 ; 2 uses
  %i.fr = add nsw i64 %.014.i.i.i.i.i31, -1
  %i.fs = icmp sgt i64 %.014.i.i.i.i.i31, 1
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i30, label %_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit43, !llvm.loop !32

_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit43: ; preds = %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37, %_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i28 = phi ptr [ %i.dy, %_ZSt4moveIPN12_GLOBAL__N_114SpecDiagnosticEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %i.fq, %_ZN12_GLOBAL__N_114SpecDiagnosticaSEOS0_.exit.i.i.i.i.i37 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i28 to i64
  %i.ft = sub i64 %5, %i.dv
  %i.fu = getelementptr inbounds i8, ptr %i.dy, i64 %i.ft
  ret ptr %i.fu
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEEvT_SL_SL_T0_SM_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond87 = or i1 %i.a, %i.b
  br i1 %or.cond87, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit
  %.tr8391 = phi i64 [ %4, %.lr.ph ], [ %i.bs, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit ] ; 4 uses
  %.tr8290 = phi i64 [ %3, %.lr.ph ], [ %i.br, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit ] ; 4 uses
  %.tr8089 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit ] ; 12 uses
  %.tr88 = phi ptr [ %0, %.lr.ph ], [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit ] ; 7 uses
  %i.d = add nsw i64 %.tr8391, %.tr8290
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val2.i = load ptr, ptr %.tr8089, align 8, !tbaa !258
  %.val3.i = load ptr, ptr %.tr88, align 8, !tbaa !258
  %i.f = tail call noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %.val2.i, ptr noundef nonnull align 8 dereferenceable(40) %.val3.i)
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES8_EvT_T0_(ptr nonnull %.tr88, ptr nonnull %.tr8089)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp sgt i64 %.tr8290, %.tr8391
  %i.h = ptrtoint ptr %.tr8089 to i64             ; 4 uses
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit58

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.i = sdiv i64 %.tr8290, 2                     ; 2 uses
  %i.j = getelementptr inbounds [96 x i8], ptr %.tr88, i64 %i.i ; 2 uses
  %i.k = sub i64 %i.c, %i.h                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.m = udiv exact i64 %i.k, 96
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.018.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.013.017.i = phi ptr [ %.sroa.013.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr8089, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.n = lshr i64 %.018.i, 1                      ; 3 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %.sroa.013.017.i, i64 %i.n ; 2 uses
  %.val11.i = load ptr, ptr %i.j, align 8, !tbaa !258
  %.val2.i.i = load ptr, ptr %i.o, align 8, !tbaa !258
  %i.p = tail call noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %.val2.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.val11.i) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.r = xor i64 %i.n, -1
  %i.s = add nsw i64 %.018.i, %i.r
  %.sroa.013.1.i = select i1 %i.p, ptr %i.q, ptr %.sroa.013.017.i ; 3 uses
  %.1.i = select i1 %i.p, i64 %i.s, i64 %i.n      ; 2 uses
  %i.t = icmp sgt i64 %.1.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit", !llvm.loop !34

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.013.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %.tr8089, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.u = sub i64 %.pre-phi, %i.h
  %i.v = sdiv exact i64 %i.u, 96
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit58: ; preds = %bb.e
  %i.w = sdiv i64 %.tr8391, 2                     ; 2 uses
  %i.x = getelementptr inbounds [96 x i8], ptr %.tr8089, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %.tr88 to i64               ; 3 uses
  %i.z = sub i64 %i.h, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i60, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i60: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit58
  %i.ab = udiv exact i64 %i.z, 96
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i60
  %.018.i62 = phi i64 [ %.1.i68, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61 ], [ %i.ab, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i60 ] ; 2 uses
  %.sroa.013.017.i63 = phi ptr [ %.sroa.013.1.i67, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61 ], [ %.tr88, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i60 ] ; 2 uses
  %i.ac = lshr i64 %.018.i62, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %.sroa.013.017.i63, i64 %i.ac ; 2 uses
  %.val11.i66 = load ptr, ptr %i.x, align 8, !tbaa !258
  %.val3.i.i = load ptr, ptr %i.ad, align 8, !tbaa !258
  %i.ae = tail call noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %.val11.i66, ptr noundef nonnull align 8 dereferenceable(40) %.val3.i.i) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.ag = xor i64 %i.ac, -1
  %i.ah = add nsw i64 %.018.i62, %i.ag
  %.sroa.013.1.i67 = select i1 %i.ae, ptr %.sroa.013.017.i63, ptr %i.af ; 3 uses
  %.1.i68 = select i1 %i.ae, i64 %i.ac, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i68, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit", !llvm.loop !35

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i61
  %.pre95 = ptrtoint ptr %.sroa.013.1.i67 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit58
  %.pre-phi96 = phi i64 [ %.pre95, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit58 ]
  %.sroa.013.0.lcssa.i59 = phi ptr [ %.sroa.013.1.i67, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit.loopexit" ], [ %.tr88, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit58 ]
  %i.aj = sub i64 %.pre-phi96, %i.y
  %i.ak = sdiv exact i64 %i.aj, 96
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit"
  %.sroa.070.0 = phi ptr [ %i.j, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit" ], [ %.sroa.013.0.lcssa.i59, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit" ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %.sroa.013.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit" ], [ %i.x, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit" ] ; 4 uses
  %.047 = phi i64 [ %i.v, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit" ], [ %i.w, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit" ], [ %i.ak, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN5vcpkg30command_test_features_and_exitERKNSB_17VcpkgCmdArgumentsERKNSB_10VcpkgPathsENSB_7TripletESI_E3$_8EEET_SL_SL_RKT0_T1_.exit" ] ; 2 uses
  %i.al = icmp eq ptr %.sroa.070.0, %.tr8089
  br i1 %i.al, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq ptr %.sroa.0.0, %.tr8089
  br i1 %i.am, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.070.0 to i64        ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 96                ; 2 uses
  %i.ar = ptrtoint ptr %.tr8089 to i64            ; 2 uses
  %i.as = sub i64 %i.ar, %i.ao
  %i.at = sdiv exact i64 %i.as, 96                ; 3 uses
  %i.au = sub nsw i64 %i.aq, %i.at
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %.lr.ph.i.i.i, label %bb.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.tr8089, %bb.h ] ; 2 uses
  %.sroa.05.07.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.sroa.070.0, %bb.h ] ; 2 uses
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES8_EvT_T0_(ptr %.sroa.05.07.i.i.i, ptr %.sroa.0.08.i.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 96
  %.not.i.i.i = icmp eq ptr %i.aw, %.tr8089
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %.lr.ph.i.i.i, !llvm.loop !36

bb.i:                                             ; preds = %bb.h
  %i.ay = sub i64 %i.an, %i.ar
  %i.az = getelementptr inbounds i8, ptr %.sroa.070.0, i64 %i.ay ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.058.i.i = phi i64 [ %i.aq, %bb.i ], [ %.058.i.i.be, %.backedge ] ; 4 uses
  %.0.i.i = phi i64 [ %i.at, %bb.i ], [ %.0.i.i.be, %.backedge ] ; 8 uses
  %.sroa.038.0.i.i = phi ptr [ %.sroa.070.0, %bb.i ], [ %.sroa.038.0.i.i.be, %.backedge ] ; 5 uses
  %i.ba = sub nsw i64 %.058.i.i, %.0.i.i          ; 6 uses
  %i.bb = icmp slt i64 %.0.i.i, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp sgt i64 %i.ba, 0
  br i1 %i.bc, label %.lr.ph68.preheader.i.i, label %._crit_edge69.i.i

.lr.ph68.preheader.i.i:                           ; preds = %bb.k
  %i.bd = getelementptr inbounds [96 x i8], ptr %.sroa.038.0.i.i, i64 %.0.i.i
  br label %.lr.ph68.i.i

._crit_edge69.i.i:                                ; preds = %.lr.ph68.i.i, %bb.k
  %.sroa.038.1.lcssa.i.i = phi ptr [ %.sroa.038.0.i.i, %bb.k ], [ %i.bf, %.lr.ph68.i.i ]
  %i.be = srem i64 %.058.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.be, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %bb.l

.lr.ph68.i.i:                                     ; preds = %.lr.ph68.i.i, %.lr.ph68.preheader.i.i
  %.01966.i.i = phi i64 [ %i.bh, %.lr.ph68.i.i ], [ 0, %.lr.ph68.preheader.i.i ]
  %.sroa.037.065.i.i = phi ptr [ %i.bg, %.lr.ph68.i.i ], [ %i.bd, %.lr.ph68.preheader.i.i ] ; 2 uses
  %.sroa.038.164.i.i = phi ptr [ %i.bf, %.lr.ph68.i.i ], [ %.sroa.038.0.i.i, %.lr.ph68.preheader.i.i ] ; 2 uses
  tail call fastcc void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114SpecDiagnosticESt6vectorIS3_SaIS3_EEEES8_EvT_T0_(ptr %.sroa.038.164.i.i, ptr %.sroa.037.065.i.i)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.038.164.i.i, i64 96 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.037.065.i.i, i64 96
  %i.bh = add nuw nsw i64 %.01966.i.i, 1          ; 2 uses
  %exitcond73.not.i.i = icmp eq i64 %i.bh, %i.ba
  br i1 %exitcond73.not.i.i, label %._crit_edge69.i.i, label %.lr.ph68.i.i, !llvm.loop !37

bb.l:                                             ; preds = %._crit_edge69.i.i
  %i.bi = sub nsw i64 %.0.i.i, %i.be
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds [96 x i8], ptr %.sroa.038.0.i.i, i64 %.058.i.i ; 2 uses
  %i.bk = sub i64 0, %i.ba
  %i.bl = getelementptr inbounds [96 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.m
end_hunk_1
