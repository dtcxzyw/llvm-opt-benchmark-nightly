Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/octree?download=true
inline.NumInlined: 1954
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZZN3igl6octreeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERSt6vectorISB_IT0_SaISC_EESaISE_EERNS1_15PlainObjectBaseIT1_EERNSI_IT2_EERNSI_IT3_EEENKUliiE_clEii:bb.a
  %.02280 = phi i32 [ 0, %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE2atEm.exit ], [ %i.ek, %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit ] ; 2 uses
  %i.cg = load ptr, ptr %i.y, align 8, !tbaa !201, !nonnull !109, !align !110 ; 3 uses
  %i.ch = load ptr, ptr %i.br, align 8, !tbaa !207, !nonnull !109, !align !113 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !58 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !59
  %.not.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cj, ptr noundef nonnull align 16 dereferenceable(32) %i.ch, i64 32, i1 false), !tbaa.struct !60
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !58
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr %i.cj, ptr noundef nonnull align 16 dereferenceable(32) %i.ch)
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit: ; preds = %bb.h, %bb.i
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !200, !nonnull !109, !align !110 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !53 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !54
  %.not.i29 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i29, label %bb.j, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread

_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit unwind label %bb.t

_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.j
  %.pr = load ptr, ptr %3, align 8, !tbaa !45     ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.cv = load ptr, ptr %i.bs, align 8, !tbaa !46
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %.pr to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cy) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cz = load ptr, ptr %i.bg, align 8, !tbaa !206, !nonnull !109, !align !110 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.da = load ptr, ptr %i.bt, align 8, !tbaa !208, !nonnull !109, !align !110 ; 3 uses
  store <2 x double> %i.bq, ptr %5, align 16
  store double %.sroa.762.0.copyload, ptr %.sroa.762.0..sroa_idx63, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.bu, ptr %i.c, align 8, !tbaa !76, !noalias !209
  store i32 %.02280, ptr %i.d, align 4, !tbaa !13, !noalias !209
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !18, !noalias !209
  %.not.i.i31 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i31, label %bb.l, label %_ZNKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES2_diEEclES2_di.exit

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #21, !noalias !209
  unreachable

_ZNKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES2_diEEclES2_di.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !17, !noalias !209
  call void %i.de(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.39") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !78 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !79
  %.not.i32 = icmp eq ptr %i.dg, %i.di
  br i1 %.not.i32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES2_diEEclES2_di.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !80
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !78
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !78
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.n:                                             ; preds = %_ZNKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES2_diEEclES2_di.exit
  call void @_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.dl = load ptr, ptr %i.au, align 8, !tbaa !205, !nonnull !109, !align !110 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !82 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !83
  %.not.i34 = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit
  store double %i.bf, ptr %i.dn, align 8, !tbaa !76
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dq, ptr %i.dm, align 8, !tbaa !82
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit

bb.p:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !84 ; 4 uses
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 5 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.q, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i35 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i35)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #19 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store double %i.bf, ptr %i.ed, align 8, !tbaa !76
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.r, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.eg = load ptr, ptr %i.do, align 8, !tbaa !83
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.ei) #22
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.ec, ptr %i.dl, align 8, !tbaa !84
  store ptr %i.ef, ptr %i.dm, align 8, !tbaa !82
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.ej, ptr %i.do, align 8, !tbaa !83
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit: ; preds = %bb.o, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i
  %i.ek = add nuw nsw i32 %.02280, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ek, 8
  br i1 %exitcond.not, label %.preheader, label %bb.g, !llvm.loop !195

bb.t:                                             ; preds = %bb.j
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIiSaIiEED2Ev.exit37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = load ptr, ptr %i.bs, align 8, !tbaa !46
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit37

_ZNSt6vectorIiSaIiEED2Ev.exit37:                  ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.el

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, %.preheader
  %.lcssa74 = phi i64 [ %i.cc, %.preheader ], [ %i.hs, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ]
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.g, i64 noundef %.lcssa74) #21
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39:      ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.er = phi ptr [ %i.by, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph ], [ %i.hl, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 3 uses
  %i.es = phi ptr [ %i.bv, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph ], [ %i.hm, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ]
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 3 uses
  %i.et = phi i64 [ %i.cc, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph ], [ %i.hs, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.g ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !45 ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 2
  %i.fc = icmp ugt i64 %i.fb, %indvars.iv
  br i1 %i.fc, label %_ZNSt6vectorIiSaIiEE2atEm.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39
  %i.fd = load ptr, ptr %i.x, align 8, !tbaa !202, !nonnull !109, !align !112 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !13
  %i.ff = add nsw i32 %i.fe, 8
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !13
  %i.fg = add nsw i32 %2, 1                       ; 8 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !210, !nonnull !109, !align !110 ; 3 uses
  %i.fi = load ptr, ptr %i.y, align 8, !tbaa !201, !nonnull !109, !align !110 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !58
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !87 ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 5                 ; 2 uses
  %.not.i.i49 = icmp ugt i64 %i.fp, %i.g
  br i1 %.not.i.i49, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50, label %bb.ac

_ZNSt6vectorIiSaIiEE2atEm.exit:                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !13 ; 3 uses
  %i.fs = load ptr, ptr %i.cd, align 8, !tbaa !211, !nonnull !109 ; 2 uses
  %i.ft = sext i32 %i.fr to i64
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !93, !noalias !212
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.ft ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !43 ; 2 uses
  %i.fy = load double, ptr %i.fv, align 8, !tbaa !76
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fx
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !76
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.fx, 4
  %i.gb = getelementptr inbounds i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !76
  %i.gd = fcmp oge double %i.fy, %i.ce
  %spec.select.i = zext i1 %i.gd to i32           ; 2 uses
  %i.ge = fcmp ult double %i.ga, %i.cf
  %i.gf = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %i.ge, i32 %spec.select.i, i32 %i.gf ; 2 uses
  %i.gg = fcmp ult double %i.gc, %.sroa.762.0.copyload
  %i.gh = or disjoint i32 %.1.i, 4
  %.2.i = select i1 %i.gg, i32 %.1.i, i32 %i.gh
  %i.gi = load ptr, ptr %i.x, align 8, !tbaa !202, !nonnull !109, !align !112
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !13
  %i.gk = add nsw i32 %.2.i, %i.gj
  %i.gl = sext i32 %i.gk to i64                   ; 3 uses
  %.not.i.i43 = icmp ugt i64 %i.et, %i.gl
  br i1 %.not.i.i43, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit44, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.gl, i64 noundef %i.et) #21
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit44:      ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.gl ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !47 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !46
  %.not.i45 = icmp eq ptr %i.go, %i.gq
  br i1 %.not.i45, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit44
  store i32 %i.fr, ptr %i.go, align 4, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store ptr %i.gr, ptr %i.gn, align 8, !tbaa !47
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.y:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit44
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !45 ; 4 uses
  %i.gt = ptrtoint ptr %i.go to i64
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 5 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775804
  br i1 %i.gw, label %bb.z, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.gx = ashr exact i64 %i.gv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i46, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 2305843009213693951)
  %i.hb = select i1 %i.gz, i64 2305843009213693951, i64 %i.ha ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.hc = shl nuw nsw i64 %i.hb, 2
  %i.hd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #19 ; 4 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gv ; 2 uses
  store i32 %i.fr, ptr %i.he, align 4, !tbaa !13
  %i.hf = icmp sgt i64 %i.gv, 0
  br i1 %i.hf, label %bb.aa, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.gs, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.not.i17.i.i48 = icmp eq ptr %i.gs, null
  br i1 %.not.i17.i.i48, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.hh = load ptr, ptr %i.gp, align 8, !tbaa !46
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.hj) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.hd, ptr %i.gm, align 8, !tbaa !45
  store ptr %i.hg, ptr %i.gn, align 8, !tbaa !47
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hk, ptr %i.gp, align 8, !tbaa !46
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !200 ; 2 uses
  %.pre99 = load ptr, ptr %.pre, align 8, !tbaa !111
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.hl = phi ptr [ %i.er, %bb.x ], [ %.pre99, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.hm = phi ptr [ %i.es, %bb.x ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !53
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hl to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 24                ; 3 uses
  %.not.i.i38 = icmp ugt i64 %i.hs, %i.g
  br i1 %.not.i.i38, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39, label %._crit_edge, !llvm.loop !198

bb.ac:                                            ; preds = %_ZNKSt8functionIFviiEEclEii.exit.6, %_ZNKSt8functionIFviiEEclEii.exit.5, %_ZNKSt8functionIFviiEEclEii.exit.4, %_ZNKSt8functionIFviiEEclEii.exit.3, %_ZNKSt8functionIFviiEEclEii.exit.2, %_ZNKSt8functionIFviiEEclEii.exit.1, %_ZNKSt8functionIFviiEEclEii.exit, %bb.v
  %.lcssa = phi i64 [ %i.fp, %bb.v ], [ %i.ih, %_ZNKSt8functionIFviiEEclEii.exit ], [ %i.ix, %_ZNKSt8functionIFviiEEclEii.exit.1 ], [ %i.jn, %_ZNKSt8functionIFviiEEclEii.exit.2 ], [ %i.kd, %_ZNKSt8functionIFviiEEclEii.exit.3 ], [ %i.kt, %_ZNKSt8functionIFviiEEclEii.exit.4 ], [ %i.lj, %_ZNKSt8functionIFviiEEclEii.exit.5 ], [ %i.lz, %_ZNKSt8functionIFviiEEclEii.exit.6 ]
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.g, i64 noundef %.lcssa) #21
  unreachable

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50: ; preds = %bb.v
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.fl, i64 %i.g
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.hu, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !18
  %.not.i.i51 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i51, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit

bb.ad:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.7, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.6, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.5, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.4, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.3, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.2, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.1, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFviiEEclEii.exit:                 ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !86
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hz = load ptr, ptr %0, align 8, !tbaa !210, !nonnull !109, !align !110 ; 3 uses
  %i.ia = load ptr, ptr %i.y, align 8, !tbaa !201, !nonnull !109, !align !110 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !58
  %i.id = load ptr, ptr %i.ia, align 8, !tbaa !87 ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 5                 ; 2 uses
  %.not.i.i49.1 = icmp ugt i64 %i.ih, %i.g
  br i1 %.not.i.i49.1, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.1, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.1: ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %i.g
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ik, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !18
  %.not.i.i51.1 = icmp eq ptr %i.im, null
  br i1 %.not.i.i51.1, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.1

_ZNKSt8functionIFviiEEclEii.exit.1:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.1
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !86
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ip = load ptr, ptr %0, align 8, !tbaa !210, !nonnull !109, !align !110 ; 3 uses
  %i.iq = load ptr, ptr %i.y, align 8, !tbaa !201, !nonnull !109, !align !110 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !58
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !87 ; 2 uses
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = ashr exact i64 %i.iw, 5                 ; 2 uses
  %.not.i.i49.2 = icmp ugt i64 %i.ix, %i.g
  br i1 %.not.i.i49.2, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.2, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.2: ; preds = %_ZNKSt8functionIFviiEEclEii.exit.1
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %i.g
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ja, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !18
  %.not.i.i51.2 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i51.2, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.2

_ZNKSt8functionIFviiEEclEii.exit.2:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !86
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jf = load ptr, ptr %0, align 8, !tbaa !210, !nonnull !109, !align !110 ; 3 uses
  %i.jg = load ptr, ptr %i.y, align 8, !tbaa !201, !nonnull !109, !align !110 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !58
  %i.jj = load ptr, ptr %i.jg, align 8, !tbaa !87 ; 2 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = ashr exact i64 %i.jm, 5                 ; 2 uses
  %.not.i.i49.3 = icmp ugt i64 %i.jn, %i.g
  br i1 %.not.i.i49.3, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.3, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.3: ; preds = %_ZNKSt8functionIFviiEEclEii.exit.2
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %i.g
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.jq, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !18
  %.not.i.i51.3 = icmp eq ptr %i.js, null
  br i1 %.not.i.i51.3, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.3

_ZNKSt8functionIFviiEEclEii.exit.3:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !86
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jv = load ptr, ptr %0, align 8, !tbaa !210, !nonnull !109, !align !110 ; 3 uses
  %i.jw = load ptr, ptr %i.y, align 8, !tbaa !201, !nonnull !109, !align !110 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !58
  %i.jz = load ptr, ptr %i.jw, align 8, !tbaa !87 ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 5                 ; 2 uses
  %.not.i.i49.4 = icmp ugt i64 %i.kd, %i.g
  br i1 %.not.i.i49.4, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.4, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.4: ; preds = %_ZNKSt8functionIFviiEEclEii.exit.3
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %i.jz, i64 %i.g
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.kg, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !18
  %.not.i.i51.4 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i51.4, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.4

_ZNKSt8functionIFviiEEclEii.exit.4:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !86
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(32) %i.jv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.kl = load ptr, ptr %0, align 8, !tbaa !210, !nonnull !109, !align !110 ; 3 uses
  %i.km = load ptr, ptr %i.y, align 8, !tbaa !201, !nonnull !109, !align !110 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !58
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !87 ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 5                 ; 2 uses
  %.not.i.i49.5 = icmp ugt i64 %i.kt, %i.g
  br i1 %.not.i.i49.5, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.5, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.5: ; preds = %_ZNKSt8functionIFviiEEclEii.exit.4
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.kp, i64 %i.g
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 20
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.kw, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !18
  %.not.i.i51.5 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i51.5, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.5

_ZNKSt8functionIFviiEEclEii.exit.5:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.5
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !86
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(32) %i.kl, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lb = load ptr, ptr %0, align 8, !tbaa !210, !nonnull !109, !align !110 ; 3 uses
  %i.lc = load ptr, ptr %i.y, align 8, !tbaa !201, !nonnull !109, !align !110 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !58
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !87 ; 2 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = ashr exact i64 %i.li, 5                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN3igl6octreeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERSt6vectorISC_IT0_SaISD_EESaISF_EERNS1_15PlainObjectBaseIT1_EERNSJ_IT2_EERNSJ_IT3_EEENKUliiE_clEii:bb.a
  %.02280 = phi i32 [ 0, %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE2atEm.exit ], [ %i.ek, %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit ] ; 2 uses
  %i.cg = load ptr, ptr %i.y, align 8, !tbaa !310, !nonnull !109, !align !110 ; 3 uses
  %i.ch = load ptr, ptr %i.br, align 8, !tbaa !316, !nonnull !109, !align !113 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !58 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !59
  %.not.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cj, ptr noundef nonnull align 16 dereferenceable(32) %i.ch, i64 32, i1 false), !tbaa.struct !60
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !58
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr %i.cj, ptr noundef nonnull align 16 dereferenceable(32) %i.ch)
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit: ; preds = %bb.h, %bb.i
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !309, !nonnull !109, !align !110 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !53 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !54
  %.not.i29 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i29, label %bb.j, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread

_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit unwind label %bb.t

_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.j
  %.pr = load ptr, ptr %3, align 8, !tbaa !45     ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.cv = load ptr, ptr %i.bs, align 8, !tbaa !46
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %.pr to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cy) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cz = load ptr, ptr %i.bg, align 8, !tbaa !315, !nonnull !109, !align !110 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.da = load ptr, ptr %i.bt, align 8, !tbaa !317, !nonnull !109, !align !110 ; 3 uses
  store <2 x double> %i.bq, ptr %5, align 16
  store double %.sroa.762.0.copyload, ptr %.sroa.762.0..sroa_idx63, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.bu, ptr %i.c, align 8, !tbaa !76, !noalias !318
  store i32 %.02280, ptr %i.d, align 4, !tbaa !13, !noalias !318
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !18, !noalias !318
  %.not.i.i31 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i31, label %bb.l, label %_ZNKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES2_diEEclES2_di.exit

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #21, !noalias !318
  unreachable

_ZNKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES2_diEEclES2_di.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !17, !noalias !318
  call void %i.de(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.39") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !78 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !79
  %.not.i32 = icmp eq ptr %i.dg, %i.di
  br i1 %.not.i32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES2_diEEclES2_di.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !80
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !78
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !78
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.n:                                             ; preds = %_ZNKSt8functionIFN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES2_diEEclES2_di.exit
  call void @_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.dl = load ptr, ptr %i.au, align 8, !tbaa !314, !nonnull !109, !align !110 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !82 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !83
  %.not.i34 = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit
  store double %i.bf, ptr %i.dn, align 8, !tbaa !76
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dq, ptr %i.dm, align 8, !tbaa !82
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit

bb.p:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !84 ; 4 uses
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 5 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.q, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i35 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i35)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #19 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store double %i.bf, ptr %i.ed, align 8, !tbaa !76
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.r, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.eg = load ptr, ptr %i.do, align 8, !tbaa !83
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.ei) #22
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.ec, ptr %i.dl, align 8, !tbaa !84
  store ptr %i.ef, ptr %i.dm, align 8, !tbaa !82
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.ej, ptr %i.do, align 8, !tbaa !83
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit: ; preds = %bb.o, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i
  %i.ek = add nuw nsw i32 %.02280, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ek, 8
  br i1 %exitcond.not, label %.preheader, label %bb.g, !llvm.loop !304

bb.t:                                             ; preds = %bb.j
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIiSaIiEED2Ev.exit37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = load ptr, ptr %i.bs, align 8, !tbaa !46
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit37

_ZNSt6vectorIiSaIiEED2Ev.exit37:                  ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.el

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, %.preheader
  %.lcssa74 = phi i64 [ %i.cc, %.preheader ], [ %i.hs, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ]
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.g, i64 noundef %.lcssa74) #21
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39:      ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.er = phi ptr [ %i.by, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph ], [ %i.hl, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 3 uses
  %i.es = phi ptr [ %i.bv, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph ], [ %i.hm, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ]
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 3 uses
  %i.et = phi i64 [ %i.cc, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39.lr.ph ], [ %i.hs, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.g ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !45 ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 2
  %i.fc = icmp ugt i64 %i.fb, %indvars.iv
  br i1 %i.fc, label %_ZNSt6vectorIiSaIiEE2atEm.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39
  %i.fd = load ptr, ptr %i.x, align 8, !tbaa !311, !nonnull !109, !align !112 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !13
  %i.ff = add nsw i32 %i.fe, 8
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !13
  %i.fg = add nsw i32 %2, 1                       ; 8 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !319, !nonnull !109, !align !110 ; 3 uses
  %i.fi = load ptr, ptr %i.y, align 8, !tbaa !310, !nonnull !109, !align !110 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !58
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !87 ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 5                 ; 2 uses
  %.not.i.i49 = icmp ugt i64 %i.fp, %i.g
  br i1 %.not.i.i49, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50, label %bb.ac

_ZNSt6vectorIiSaIiEE2atEm.exit:                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !13 ; 3 uses
  %i.fs = load ptr, ptr %i.cd, align 8, !tbaa !320, !nonnull !109 ; 2 uses
  %i.ft = sext i32 %i.fr to i64
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !93, !noalias !321
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.ft ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !43 ; 2 uses
  %i.fy = load double, ptr %i.fv, align 8, !tbaa !76
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fx
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !76
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.fx, 4
  %i.gb = getelementptr inbounds i8, ptr %i.fv, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !76
  %i.gd = fcmp oge double %i.fy, %i.ce
  %spec.select.i = zext i1 %i.gd to i32           ; 2 uses
  %i.ge = fcmp ult double %i.ga, %i.cf
  %i.gf = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %i.ge, i32 %spec.select.i, i32 %i.gf ; 2 uses
  %i.gg = fcmp ult double %i.gc, %.sroa.762.0.copyload
  %i.gh = or disjoint i32 %.1.i, 4
  %.2.i = select i1 %i.gg, i32 %.1.i, i32 %i.gh
  %i.gi = load ptr, ptr %i.x, align 8, !tbaa !311, !nonnull !109, !align !112
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !13
  %i.gk = add nsw i32 %.2.i, %i.gj
  %i.gl = sext i32 %i.gk to i64                   ; 3 uses
  %.not.i.i43 = icmp ugt i64 %i.et, %i.gl
  br i1 %.not.i.i43, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit44, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.gl, i64 noundef %i.et) #21
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit44:      ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.gl ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !47 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !46
  %.not.i45 = icmp eq ptr %i.go, %i.gq
  br i1 %.not.i45, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit44
  store i32 %i.fr, ptr %i.go, align 4, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store ptr %i.gr, ptr %i.gn, align 8, !tbaa !47
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.y:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit44
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !45 ; 4 uses
  %i.gt = ptrtoint ptr %i.go to i64
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 5 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775804
  br i1 %i.gw, label %bb.z, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.gx = ashr exact i64 %i.gv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i46, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 2305843009213693951)
  %i.hb = select i1 %i.gz, i64 2305843009213693951, i64 %i.ha ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.hc = shl nuw nsw i64 %i.hb, 2
  %i.hd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #19 ; 4 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gv ; 2 uses
  store i32 %i.fr, ptr %i.he, align 4, !tbaa !13
  %i.hf = icmp sgt i64 %i.gv, 0
  br i1 %i.hf, label %bb.aa, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.gs, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.not.i17.i.i48 = icmp eq ptr %i.gs, null
  br i1 %.not.i17.i.i48, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.hh = load ptr, ptr %i.gp, align 8, !tbaa !46
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.hj) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.hd, ptr %i.gm, align 8, !tbaa !45
  store ptr %i.hg, ptr %i.gn, align 8, !tbaa !47
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hk, ptr %i.gp, align 8, !tbaa !46
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !309 ; 2 uses
  %.pre99 = load ptr, ptr %.pre, align 8, !tbaa !111
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.hl = phi ptr [ %i.er, %bb.x ], [ %.pre99, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.hm = phi ptr [ %i.es, %bb.x ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !53
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hl to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 24                ; 3 uses
  %.not.i.i38 = icmp ugt i64 %i.hs, %i.g
  br i1 %.not.i.i38, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit39, label %._crit_edge, !llvm.loop !307

bb.ac:                                            ; preds = %_ZNKSt8functionIFviiEEclEii.exit.6, %_ZNKSt8functionIFviiEEclEii.exit.5, %_ZNKSt8functionIFviiEEclEii.exit.4, %_ZNKSt8functionIFviiEEclEii.exit.3, %_ZNKSt8functionIFviiEEclEii.exit.2, %_ZNKSt8functionIFviiEEclEii.exit.1, %_ZNKSt8functionIFviiEEclEii.exit, %bb.v
  %.lcssa = phi i64 [ %i.fp, %bb.v ], [ %i.ih, %_ZNKSt8functionIFviiEEclEii.exit ], [ %i.ix, %_ZNKSt8functionIFviiEEclEii.exit.1 ], [ %i.jn, %_ZNKSt8functionIFviiEEclEii.exit.2 ], [ %i.kd, %_ZNKSt8functionIFviiEEclEii.exit.3 ], [ %i.kt, %_ZNKSt8functionIFviiEEclEii.exit.4 ], [ %i.lj, %_ZNKSt8functionIFviiEEclEii.exit.5 ], [ %i.lz, %_ZNKSt8functionIFviiEEclEii.exit.6 ]
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.g, i64 noundef %.lcssa) #21
  unreachable

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50: ; preds = %bb.v
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.fl, i64 %i.g
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.hu, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !18
  %.not.i.i51 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i51, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit

bb.ad:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.7, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.6, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.5, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.4, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.3, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.2, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.1, %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFviiEEclEii.exit:                 ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !86
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hz = load ptr, ptr %0, align 8, !tbaa !319, !nonnull !109, !align !110 ; 3 uses
  %i.ia = load ptr, ptr %i.y, align 8, !tbaa !310, !nonnull !109, !align !110 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !58
  %i.id = load ptr, ptr %i.ia, align 8, !tbaa !87 ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 5                 ; 2 uses
  %.not.i.i49.1 = icmp ugt i64 %i.ih, %i.g
  br i1 %.not.i.i49.1, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.1, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.1: ; preds = %_ZNKSt8functionIFviiEEclEii.exit
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %i.g
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ik, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !18
  %.not.i.i51.1 = icmp eq ptr %i.im, null
  br i1 %.not.i.i51.1, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.1

_ZNKSt8functionIFviiEEclEii.exit.1:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.1
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !86
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ip = load ptr, ptr %0, align 8, !tbaa !319, !nonnull !109, !align !110 ; 3 uses
  %i.iq = load ptr, ptr %i.y, align 8, !tbaa !310, !nonnull !109, !align !110 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !58
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !87 ; 2 uses
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = ashr exact i64 %i.iw, 5                 ; 2 uses
  %.not.i.i49.2 = icmp ugt i64 %i.ix, %i.g
  br i1 %.not.i.i49.2, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.2, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.2: ; preds = %_ZNKSt8functionIFviiEEclEii.exit.1
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %i.g
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ja, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !18
  %.not.i.i51.2 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i51.2, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.2

_ZNKSt8functionIFviiEEclEii.exit.2:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !86
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jf = load ptr, ptr %0, align 8, !tbaa !319, !nonnull !109, !align !110 ; 3 uses
  %i.jg = load ptr, ptr %i.y, align 8, !tbaa !310, !nonnull !109, !align !110 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !58
  %i.jj = load ptr, ptr %i.jg, align 8, !tbaa !87 ; 2 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = ashr exact i64 %i.jm, 5                 ; 2 uses
  %.not.i.i49.3 = icmp ugt i64 %i.jn, %i.g
  br i1 %.not.i.i49.3, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.3, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.3: ; preds = %_ZNKSt8functionIFviiEEclEii.exit.2
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %i.g
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.jq, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !18
  %.not.i.i51.3 = icmp eq ptr %i.js, null
  br i1 %.not.i.i51.3, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.3

_ZNKSt8functionIFviiEEclEii.exit.3:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !86
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jv = load ptr, ptr %0, align 8, !tbaa !319, !nonnull !109, !align !110 ; 3 uses
  %i.jw = load ptr, ptr %i.y, align 8, !tbaa !310, !nonnull !109, !align !110 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !58
  %i.jz = load ptr, ptr %i.jw, align 8, !tbaa !87 ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 5                 ; 2 uses
  %.not.i.i49.4 = icmp ugt i64 %i.kd, %i.g
  br i1 %.not.i.i49.4, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.4, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.4: ; preds = %_ZNKSt8functionIFviiEEclEii.exit.3
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %i.jz, i64 %i.g
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.kg, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !18
  %.not.i.i51.4 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i51.4, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.4

_ZNKSt8functionIFviiEEclEii.exit.4:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !86
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(32) %i.jv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.kl = load ptr, ptr %0, align 8, !tbaa !319, !nonnull !109, !align !110 ; 3 uses
  %i.km = load ptr, ptr %i.y, align 8, !tbaa !310, !nonnull !109, !align !110 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !58
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !87 ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 5                 ; 2 uses
  %.not.i.i49.5 = icmp ugt i64 %i.kt, %i.g
  br i1 %.not.i.i49.5, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.5, label %bb.ac

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.5: ; preds = %_ZNKSt8functionIFviiEEclEii.exit.4
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.kp, i64 %i.g
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 20
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.kw, ptr %i.a, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !13
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !18
  %.not.i.i51.5 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i51.5, label %bb.ad, label %_ZNKSt8functionIFviiEEclEii.exit.5

_ZNKSt8functionIFviiEEclEii.exit.5:               ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEE2atEm.exit50.5
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !86
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(32) %i.kl, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lb = load ptr, ptr %0, align 8, !tbaa !319, !nonnull !109, !align !110 ; 3 uses
  %i.lc = load ptr, ptr %i.y, align 8, !tbaa !310, !nonnull !109, !align !110 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !58
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !87 ; 2 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = ashr exact i64 %i.li, 5                 ; 2 uses
end_hunk_1
