Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/AABB?download=true
inline.NumInlined: 10877
inline.NumDeleted: 4724
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE6insertEPS4_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 80) #26
  br label %common.resume

bb.i:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.be = load double, ptr %i.bc, align 8, !tbaa !10
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bg = fcmp ugt double %i.be, %i.bf
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !10
  %i.bl = fcmp ugt double %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !10 ; 5 uses
  %i.bq = fcmp ugt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load double, ptr %i.br, align 8, !tbaa !10
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !10
  %i.bv = fcmp ugt double %i.bt, %i.bu
  br i1 %i.bv, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load double, ptr %i.bw, align 8, !tbaa !10
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !10
  %i.ca = fcmp ugt double %i.by, %i.bz
  br i1 %i.ca, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !10 ; 5 uses
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !10
  %i.cf = fcmp ugt double %i.cd, %i.ce
  br i1 %i.cf, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.p

_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread: ; preds = %bb.i, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i, %bb.j, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !49 ; 5 uses
  %i.ci = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 17 uses
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEC1Ev(ptr noundef nonnull align 8 dereferenceable(76) %i.ci)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !49
  store ptr %0, ptr %i.ci, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %1, ptr %i.ck, align 8, !tbaa !47
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !tbaa !9
  %i.cn = load <2 x double>, ptr %i.bc, align 8, !tbaa !9
  %i.co = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cm, <2 x double> %i.cn) #29, !srcloc !53
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !10 ; 2 uses
  %i.cs = load double, ptr %i.cp, align 8, !tbaa !10 ; 2 uses
  %i.ct = fcmp olt double %i.cr, %i.cs
  %i.cu = select i1 %i.ct, double %i.cr, double %i.cs ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = load <2 x double>, ptr %i.cv, align 8, !tbaa !9
  %i.cy = load <2 x double>, ptr %i.cw, align 8, !tbaa !9
  %i.cz = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cx, <2 x double> %i.cy) #29, !srcloc !54
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dc = load double, ptr %i.da, align 8, !tbaa !10 ; 2 uses
  %i.dd = load double, ptr %i.db, align 8, !tbaa !10 ; 2 uses
  %i.de = fcmp olt double %i.dc, %i.dd
  %i.df = select i1 %i.de, double %i.dd, double %i.dc ; 2 uses
  %i.dg = load <2 x double>, ptr %i.bd, align 8, !tbaa !9
  %i.dh = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.co, <2 x double> %i.dg) #29, !srcloc !53
  store <2 x double> %i.dh, ptr %i.cl, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dj = load double, ptr %i.di, align 8, !tbaa !10 ; 2 uses
  %i.dk = fcmp olt double %i.dj, %i.cu
  %i.dl = select i1 %i.dk, double %i.dj, double %i.cu
  store double %i.dl, ptr %i.cp, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dn = load <2 x double>, ptr %i.dm, align 8, !tbaa !9
  %i.do = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cz, <2 x double> %i.dn) #29, !srcloc !54
  store <2 x double> %i.do, ptr %i.cv, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !10 ; 2 uses
  %i.dr = fcmp olt double %i.df, %i.dq
  %i.ds = select i1 %i.dr, double %i.dq, double %i.df
  store double %i.ds, ptr %i.da, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  store i32 -1, ptr %i.dt, align 8, !tbaa !26
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !49
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ci, ptr %i.du, align 8, !tbaa !49
  %.not.i25 = icmp eq ptr %i.ch, null
  br i1 %.not.i25, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE17insert_as_siblingEPS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %i.ch, align 8, !tbaa !18
  %i.dw = icmp eq ptr %i.dv, %0
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !18
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE17insert_as_siblingEPS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ci, ptr %i.dx, align 8, !tbaa !47
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE17insert_as_siblingEPS4_.exit

bb.o:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread
  %i.dy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 80) #26
  br label %common.resume

bb.p:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 24, i1 false), !tbaa.struct !12
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !tbaa.struct !12
  %i.ec = load <2 x double>, ptr %2, align 16, !tbaa !9
  %i.ed = load <2 x double>, ptr %i.bd, align 8, !tbaa !9 ; 2 uses
  %i.ee = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ec, <2 x double> %i.ed) #29, !srcloc !53
  store <2 x double> %i.ee, ptr %2, align 16, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 16, !tbaa !10 ; 2 uses
  %i.eh = fcmp olt double %i.bp, %i.eg
  %i.ei = select i1 %i.eh, double %i.bp, double %i.eg
  store double %i.ei, ptr %i.ef, align 16, !tbaa !10
  %i.ej = load <2 x double>, ptr %i.ea, align 8, !tbaa !9
  %i.ek = load <2 x double>, ptr %i.br, align 8, !tbaa !9 ; 2 uses
  %i.el = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ej, <2 x double> %i.ek) #29, !srcloc !54
  store <2 x double> %i.el, ptr %i.ea, align 8, !tbaa !9
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !10 ; 2 uses
  %i.eo = fcmp olt double %i.en, %i.cd
  %i.ep = select i1 %i.eo, double %i.cd, double %i.en
  store double %i.ep, ptr %i.em, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.eq, i64 24, i1 false), !tbaa.struct !12
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false), !tbaa.struct !12
  %i.et = load <2 x double>, ptr %3, align 16, !tbaa !9
  %i.eu = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.et, <2 x double> %i.ed) #29, !srcloc !53
  store <2 x double> %i.eu, ptr %3, align 16, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 16, !tbaa !10 ; 2 uses
  %i.ex = fcmp olt double %i.bp, %i.ew
  %i.ey = select i1 %i.ex, double %i.bp, double %i.ew
  store double %i.ey, ptr %i.ev, align 16, !tbaa !10
  %i.ez = load <2 x double>, ptr %i.er, align 8, !tbaa !9
  %i.fa = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ez, <2 x double> %i.ek) #29, !srcloc !54
  store <2 x double> %i.fa, ptr %i.er, align 8, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !10 ; 2 uses
  %i.fd = fcmp olt double %i.fc, %i.cd
  %i.fe = select i1 %i.fd, double %i.cd, double %i.fc
  store double %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.ff = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fg = load ptr, ptr %0, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %i.fh)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fj = fsub double %i.ff, %i.fi
  %i.fk = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %i.fm)
          to label %.invoke unwind label %bb.v

.invoke:                                          ; preds = %bb.s
  %i.fo = fsub double %i.fk, %i.fn
  %i.fp = fcmp olt double %i.fj, %i.fo
  %.val = load ptr, ptr %0, align 8
  %i.fq = load ptr, ptr %i.d, align 8
  %4 = select i1 %i.fp, ptr %.val, ptr %i.fq
  %i.fr = invoke noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE6insertEPS4_(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull %1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE17insert_as_siblingEPS4_.exit

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.invoke, %bb.s, %bb.r
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.u ], [ %i.ft, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE17insert_as_siblingEPS4_.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.g, %bb.f, %bb.d, %bb.a, %bb.t
  %.017 = phi ptr [ %i.j, %bb.g ], [ %0, %bb.a ], [ %i.fr, %bb.t ], [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.ci, %bb.k ], [ %i.ci, %bb.m ], [ %i.ci, %bb.n ]
  ret ptr %.017
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE14rotate_lineageEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %storemerge34 = phi ptr [ %0, %bb.a ], [ %i.p, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.16.033 = phi ptr [ null, %bb.a ], [ %.sroa.16.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 5 uses
  %.sroa.9.032 = phi ptr [ null, %bb.a ], [ %.sroa.9.2, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.0.031 = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.9.032, %.sroa.16.033
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %storemerge34, ptr %.sroa.9.032, align 8, !tbaa !50
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.a = ptrtoint ptr %.sroa.16.033 to i64
  %i.b = ptrtoint ptr %.sroa.0.031 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = icmp eq i64 %i.c, 9223372036854775800
  br i1 %i.d, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.e = ashr exact i64 %i.c, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1)
  %i.f = add nsw i64 %.sroa.speculated.i.i.i, %i.e ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.e
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 1152921504606846975)
  %i.i = select i1 %i.g, i64 1152921504606846975, i64 %i.h ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
          to label %.noexc5 unwind label %.loopexit ; 4 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c ; 2 uses
  store ptr %storemerge34, ptr %i.l, align 8, !tbaa !50
  %i.m = icmp sgt i64 %i.c, 0
  br i1 %i.m, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.f:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %.sroa.0.031, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.f, %.noexc5
  %.not.i17.i.i = icmp eq ptr %.sroa.0.031, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.031, i64 noundef %i.c) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.1 = phi ptr [ %i.k, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.031, %bb.c ] ; 6 uses
  %.pn20 = phi ptr [ %i.l, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.9.032, %bb.c ]
  %.sroa.16.1 = phi ptr [ %i.n, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.16.033, %bb.c ] ; 3 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn20, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge34, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !68

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.preheader:                                       ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit, %bb.h
  %.sroa.9.1 = phi ptr [ %i.r, %bb.h ], [ %.sroa.9.2, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 2 uses
  %i.q = icmp eq ptr %.sroa.0.1, %.sroa.9.1
  br i1 %i.q, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %.sroa.9.1, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE6rotateEb(ptr noundef nonnull align 8 dereferenceable(76) %i.s, i1 noundef zeroext false)
          to label %.preheader unwind label %bb.i, !llvm.loop !69 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.preheader
  %.not.i.i.i6 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = ptrtoint ptr %.sroa.16.1 to i64
  %i.w = ptrtoint ptr %.sroa.0.1 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.x) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.sroa.0.029 = phi ptr [ %.sroa.0.1, %bb.i ], [ %.sroa.0.031, %.loopexit ], [ %.sroa.0.031, %.loopexit.split-lp ] ; 3 uses
  %.sroa.16.023 = phi ptr [ %.sroa.16.1, %bb.i ], [ %.sroa.16.033, %.loopexit ], [ %.sroa.16.033, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i7 = icmp eq ptr %.sroa.0.029, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = ptrtoint ptr %.sroa.16.023 to i64
  %i.z = ptrtoint ptr %.sroa.0.029 to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.029, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit8

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEESaIS6_EED2Ev.exit8: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE6updateERKNS1_10AlignedBoxIdLi3EEEd(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !10
  %i.c = load double, ptr %1, align 8, !tbaa !10
  %i.d = fcmp ugt double %i.b, %i.c
  br i1 %i.d, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.e, align 8, !tbaa !10
  %i.h = load double, ptr %i.f, align 8, !tbaa !10
  %i.i = fcmp ugt double %i.g, %i.h
  br i1 %i.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.j, align 8, !tbaa !10
  %i.m = load double, ptr %i.k, align 8, !tbaa !10
  %i.n = fcmp ugt double %i.l, %i.m
  br i1 %i.n, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load double, ptr %i.o, align 8, !tbaa !10
  %i.r = load double, ptr %i.p, align 8, !tbaa !10
  %i.s = fcmp ugt double %i.q, %i.r
  br i1 %i.s, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load double, ptr %i.t, align 8, !tbaa !10
  %i.w = load double, ptr %i.u, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE6insertEPS4_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 80) #26
  br label %common.resume

bb.i:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.be = load double, ptr %i.bc, align 8, !tbaa !10
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bg = fcmp ugt double %i.be, %i.bf
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !10
  %i.bl = fcmp ugt double %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !10 ; 5 uses
  %i.bq = fcmp ugt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load double, ptr %i.br, align 8, !tbaa !10
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !10
  %i.bv = fcmp ugt double %i.bt, %i.bu
  br i1 %i.bv, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load double, ptr %i.bw, align 8, !tbaa !10
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !10
  %i.ca = fcmp ugt double %i.by, %i.bz
  br i1 %i.ca, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !10 ; 5 uses
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !10
  %i.cf = fcmp ugt double %i.cd, %i.ce
  br i1 %i.cf, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.p

_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread: ; preds = %bb.i, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i, %bb.j, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !94 ; 5 uses
  %i.ci = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 17 uses
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEC1Ev(ptr noundef nonnull align 8 dereferenceable(76) %i.ci)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !94
  store ptr %0, ptr %i.ci, align 8, !tbaa !92
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %1, ptr %i.ck, align 8, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !tbaa !9
  %i.cn = load <2 x double>, ptr %i.bc, align 8, !tbaa !9
  %i.co = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cm, <2 x double> %i.cn) #29, !srcloc !53
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !10 ; 2 uses
  %i.cs = load double, ptr %i.cp, align 8, !tbaa !10 ; 2 uses
  %i.ct = fcmp olt double %i.cr, %i.cs
  %i.cu = select i1 %i.ct, double %i.cr, double %i.cs ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = load <2 x double>, ptr %i.cv, align 8, !tbaa !9
  %i.cy = load <2 x double>, ptr %i.cw, align 8, !tbaa !9
  %i.cz = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cx, <2 x double> %i.cy) #29, !srcloc !54
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dc = load double, ptr %i.da, align 8, !tbaa !10 ; 2 uses
  %i.dd = load double, ptr %i.db, align 8, !tbaa !10 ; 2 uses
  %i.de = fcmp olt double %i.dc, %i.dd
  %i.df = select i1 %i.de, double %i.dd, double %i.dc ; 2 uses
  %i.dg = load <2 x double>, ptr %i.bd, align 8, !tbaa !9
  %i.dh = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.co, <2 x double> %i.dg) #29, !srcloc !53
  store <2 x double> %i.dh, ptr %i.cl, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dj = load double, ptr %i.di, align 8, !tbaa !10 ; 2 uses
  %i.dk = fcmp olt double %i.dj, %i.cu
  %i.dl = select i1 %i.dk, double %i.dj, double %i.cu
  store double %i.dl, ptr %i.cp, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dn = load <2 x double>, ptr %i.dm, align 8, !tbaa !9
  %i.do = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cz, <2 x double> %i.dn) #29, !srcloc !54
  store <2 x double> %i.do, ptr %i.cv, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !10 ; 2 uses
  %i.dr = fcmp olt double %i.df, %i.dq
  %i.ds = select i1 %i.dr, double %i.dq, double %i.df
  store double %i.ds, ptr %i.da, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  store i32 -1, ptr %i.dt, align 8, !tbaa !89
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !94
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ci, ptr %i.du, align 8, !tbaa !94
  %.not.i25 = icmp eq ptr %i.ch, null
  br i1 %.not.i25, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %i.ch, align 8, !tbaa !92
  %i.dw = icmp eq ptr %i.dv, %0
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !92
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ci, ptr %i.dx, align 8, !tbaa !93
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit

bb.o:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread
  %i.dy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 80) #26
  br label %common.resume

bb.p:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 24, i1 false), !tbaa.struct !12
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !tbaa.struct !12
  %i.ec = load <2 x double>, ptr %2, align 16, !tbaa !9
  %i.ed = load <2 x double>, ptr %i.bd, align 8, !tbaa !9 ; 2 uses
  %i.ee = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ec, <2 x double> %i.ed) #29, !srcloc !53
  store <2 x double> %i.ee, ptr %2, align 16, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 16, !tbaa !10 ; 2 uses
  %i.eh = fcmp olt double %i.bp, %i.eg
  %i.ei = select i1 %i.eh, double %i.bp, double %i.eg
  store double %i.ei, ptr %i.ef, align 16, !tbaa !10
  %i.ej = load <2 x double>, ptr %i.ea, align 8, !tbaa !9
  %i.ek = load <2 x double>, ptr %i.br, align 8, !tbaa !9 ; 2 uses
  %i.el = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ej, <2 x double> %i.ek) #29, !srcloc !54
  store <2 x double> %i.el, ptr %i.ea, align 8, !tbaa !9
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !10 ; 2 uses
  %i.eo = fcmp olt double %i.en, %i.cd
  %i.ep = select i1 %i.eo, double %i.cd, double %i.en
  store double %i.ep, ptr %i.em, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.eq, i64 24, i1 false), !tbaa.struct !12
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false), !tbaa.struct !12
  %i.et = load <2 x double>, ptr %3, align 16, !tbaa !9
  %i.eu = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.et, <2 x double> %i.ed) #29, !srcloc !53
  store <2 x double> %i.eu, ptr %3, align 16, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 16, !tbaa !10 ; 2 uses
  %i.ex = fcmp olt double %i.bp, %i.ew
  %i.ey = select i1 %i.ex, double %i.bp, double %i.ew
  store double %i.ey, ptr %i.ev, align 16, !tbaa !10
  %i.ez = load <2 x double>, ptr %i.er, align 8, !tbaa !9
  %i.fa = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ez, <2 x double> %i.ek) #29, !srcloc !54
  store <2 x double> %i.fa, ptr %i.er, align 8, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !10 ; 2 uses
  %i.fd = fcmp olt double %i.fc, %i.cd
  %i.fe = select i1 %i.fd, double %i.cd, double %i.fc
  store double %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.ff = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fg = load ptr, ptr %0, align 8, !tbaa !92
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %i.fh)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fj = fsub double %i.ff, %i.fi
  %i.fk = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %i.fm)
          to label %.invoke unwind label %bb.v

.invoke:                                          ; preds = %bb.s
  %i.fo = fsub double %i.fk, %i.fn
  %i.fp = fcmp olt double %i.fj, %i.fo
  %.val = load ptr, ptr %0, align 8
  %i.fq = load ptr, ptr %i.d, align 8
  %4 = select i1 %i.fp, ptr %.val, ptr %i.fq
  %i.fr = invoke noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE6insertEPS4_(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull %1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.invoke, %bb.s, %bb.r
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.u ], [ %i.ft, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.g, %bb.f, %bb.d, %bb.a, %bb.t
  %.017 = phi ptr [ %i.j, %bb.g ], [ %0, %bb.a ], [ %i.fr, %bb.t ], [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.ci, %bb.k ], [ %i.ci, %bb.m ], [ %i.ci, %bb.n ]
  ret ptr %.017
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE14rotate_lineageEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %storemerge34 = phi ptr [ %0, %bb.a ], [ %i.p, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.16.033 = phi ptr [ null, %bb.a ], [ %.sroa.16.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 5 uses
  %.sroa.9.032 = phi ptr [ null, %bb.a ], [ %.sroa.9.2, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.0.031 = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.9.032, %.sroa.16.033
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %storemerge34, ptr %.sroa.9.032, align 8, !tbaa !95
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.a = ptrtoint ptr %.sroa.16.033 to i64
  %i.b = ptrtoint ptr %.sroa.0.031 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = icmp eq i64 %i.c, 9223372036854775800
  br i1 %i.d, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.e = ashr exact i64 %i.c, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1)
  %i.f = add nsw i64 %.sroa.speculated.i.i.i, %i.e ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.e
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 1152921504606846975)
  %i.i = select i1 %i.g, i64 1152921504606846975, i64 %i.h ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
          to label %.noexc5 unwind label %.loopexit ; 4 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c ; 2 uses
  store ptr %storemerge34, ptr %i.l, align 8, !tbaa !95
  %i.m = icmp sgt i64 %i.c, 0
  br i1 %i.m, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.f:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %.sroa.0.031, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.f, %.noexc5
  %.not.i17.i.i = icmp eq ptr %.sroa.0.031, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.031, i64 noundef %i.c) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.1 = phi ptr [ %i.k, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.031, %bb.c ] ; 6 uses
  %.pn20 = phi ptr [ %i.l, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.9.032, %bb.c ]
  %.sroa.16.1 = phi ptr [ %i.n, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.16.033, %bb.c ] ; 3 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn20, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge34, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !107

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.preheader:                                       ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit, %bb.h
  %.sroa.9.1 = phi ptr [ %i.r, %bb.h ], [ %.sroa.9.2, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 2 uses
  %i.q = icmp eq ptr %.sroa.0.1, %.sroa.9.1
  br i1 %i.q, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %.sroa.9.1, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.t = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE6rotateEb(ptr noundef nonnull align 8 dereferenceable(76) %i.s, i1 noundef zeroext false)
          to label %.preheader unwind label %bb.i, !llvm.loop !108 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.preheader
  %.not.i.i.i6 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = ptrtoint ptr %.sroa.16.1 to i64
  %i.w = ptrtoint ptr %.sroa.0.1 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.x) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.sroa.0.029 = phi ptr [ %.sroa.0.1, %bb.i ], [ %.sroa.0.031, %.loopexit ], [ %.sroa.0.031, %.loopexit.split-lp ] ; 3 uses
  %.sroa.16.023 = phi ptr [ %.sroa.16.1, %bb.i ], [ %.sroa.16.033, %.loopexit ], [ %.sroa.16.033, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i7 = icmp eq ptr %.sroa.0.029, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = ptrtoint ptr %.sroa.16.023 to i64
  %i.z = ptrtoint ptr %.sroa.0.029 to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.029, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit8

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit8: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEELi3EE6updateERKNS1_10AlignedBoxIdLi3EEEd(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !10
  %i.c = load double, ptr %1, align 8, !tbaa !10
  %i.d = fcmp ugt double %i.b, %i.c
  br i1 %i.d, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.e, align 8, !tbaa !10
  %i.h = load double, ptr %i.f, align 8, !tbaa !10
  %i.i = fcmp ugt double %i.g, %i.h
  br i1 %i.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.j, align 8, !tbaa !10
  %i.m = load double, ptr %i.k, align 8, !tbaa !10
  %i.n = fcmp ugt double %i.l, %i.m
  br i1 %i.n, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load double, ptr %i.o, align 8, !tbaa !10
  %i.r = load double, ptr %i.p, align 8, !tbaa !10
  %i.s = fcmp ugt double %i.q, %i.r
  br i1 %i.s, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load double, ptr %i.t, align 8, !tbaa !10
  %i.w = load double, ptr %i.u, align 8, !tbaa !10
end_hunk_1
begin_hunk_2_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE6insertEPS4_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 80) #26
  br label %common.resume

bb.i:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.be = load double, ptr %i.bc, align 8, !tbaa !10
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bg = fcmp ugt double %i.be, %i.bf
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !10
  %i.bl = fcmp ugt double %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !10 ; 5 uses
  %i.bq = fcmp ugt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load double, ptr %i.br, align 8, !tbaa !10
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !10
  %i.bv = fcmp ugt double %i.bt, %i.bu
  br i1 %i.bv, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load double, ptr %i.bw, align 8, !tbaa !10
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !10
  %i.ca = fcmp ugt double %i.by, %i.bz
  br i1 %i.ca, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !10 ; 5 uses
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !10
  %i.cf = fcmp ugt double %i.cd, %i.ce
  br i1 %i.cf, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.p

_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread: ; preds = %bb.i, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i, %bb.j, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !124 ; 5 uses
  %i.ci = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 17 uses
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEC1Ev(ptr noundef nonnull align 8 dereferenceable(76) %i.ci)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !124
  store ptr %0, ptr %i.ci, align 8, !tbaa !122
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %1, ptr %i.ck, align 8, !tbaa !123
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !tbaa !9
  %i.cn = load <2 x double>, ptr %i.bc, align 8, !tbaa !9
  %i.co = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cm, <2 x double> %i.cn) #29, !srcloc !53
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !10 ; 2 uses
  %i.cs = load double, ptr %i.cp, align 8, !tbaa !10 ; 2 uses
  %i.ct = fcmp olt double %i.cr, %i.cs
  %i.cu = select i1 %i.ct, double %i.cr, double %i.cs ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = load <2 x double>, ptr %i.cv, align 8, !tbaa !9
  %i.cy = load <2 x double>, ptr %i.cw, align 8, !tbaa !9
  %i.cz = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cx, <2 x double> %i.cy) #29, !srcloc !54
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dc = load double, ptr %i.da, align 8, !tbaa !10 ; 2 uses
  %i.dd = load double, ptr %i.db, align 8, !tbaa !10 ; 2 uses
  %i.de = fcmp olt double %i.dc, %i.dd
  %i.df = select i1 %i.de, double %i.dd, double %i.dc ; 2 uses
  %i.dg = load <2 x double>, ptr %i.bd, align 8, !tbaa !9
  %i.dh = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.co, <2 x double> %i.dg) #29, !srcloc !53
  store <2 x double> %i.dh, ptr %i.cl, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dj = load double, ptr %i.di, align 8, !tbaa !10 ; 2 uses
  %i.dk = fcmp olt double %i.dj, %i.cu
  %i.dl = select i1 %i.dk, double %i.dj, double %i.cu
  store double %i.dl, ptr %i.cp, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dn = load <2 x double>, ptr %i.dm, align 8, !tbaa !9
  %i.do = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cz, <2 x double> %i.dn) #29, !srcloc !54
  store <2 x double> %i.do, ptr %i.cv, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !10 ; 2 uses
  %i.dr = fcmp olt double %i.df, %i.dq
  %i.ds = select i1 %i.dr, double %i.dq, double %i.df
  store double %i.ds, ptr %i.da, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  store i32 -1, ptr %i.dt, align 8, !tbaa !119
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !124
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ci, ptr %i.du, align 8, !tbaa !124
  %.not.i25 = icmp eq ptr %i.ch, null
  br i1 %.not.i25, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %i.ch, align 8, !tbaa !122
  %i.dw = icmp eq ptr %i.dv, %0
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !122
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ci, ptr %i.dx, align 8, !tbaa !123
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit

bb.o:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread
  %i.dy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 80) #26
  br label %common.resume

bb.p:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 24, i1 false), !tbaa.struct !12
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !tbaa.struct !12
  %i.ec = load <2 x double>, ptr %2, align 16, !tbaa !9
  %i.ed = load <2 x double>, ptr %i.bd, align 8, !tbaa !9 ; 2 uses
  %i.ee = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ec, <2 x double> %i.ed) #29, !srcloc !53
  store <2 x double> %i.ee, ptr %2, align 16, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 16, !tbaa !10 ; 2 uses
  %i.eh = fcmp olt double %i.bp, %i.eg
  %i.ei = select i1 %i.eh, double %i.bp, double %i.eg
  store double %i.ei, ptr %i.ef, align 16, !tbaa !10
  %i.ej = load <2 x double>, ptr %i.ea, align 8, !tbaa !9
  %i.ek = load <2 x double>, ptr %i.br, align 8, !tbaa !9 ; 2 uses
  %i.el = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ej, <2 x double> %i.ek) #29, !srcloc !54
  store <2 x double> %i.el, ptr %i.ea, align 8, !tbaa !9
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !10 ; 2 uses
  %i.eo = fcmp olt double %i.en, %i.cd
  %i.ep = select i1 %i.eo, double %i.cd, double %i.en
  store double %i.ep, ptr %i.em, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.eq, i64 24, i1 false), !tbaa.struct !12
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false), !tbaa.struct !12
  %i.et = load <2 x double>, ptr %3, align 16, !tbaa !9
  %i.eu = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.et, <2 x double> %i.ed) #29, !srcloc !53
  store <2 x double> %i.eu, ptr %3, align 16, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 16, !tbaa !10 ; 2 uses
  %i.ex = fcmp olt double %i.bp, %i.ew
  %i.ey = select i1 %i.ex, double %i.bp, double %i.ew
  store double %i.ey, ptr %i.ev, align 16, !tbaa !10
  %i.ez = load <2 x double>, ptr %i.er, align 8, !tbaa !9
  %i.fa = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ez, <2 x double> %i.ek) #29, !srcloc !54
  store <2 x double> %i.fa, ptr %i.er, align 8, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !10 ; 2 uses
  %i.fd = fcmp olt double %i.fc, %i.cd
  %i.fe = select i1 %i.fd, double %i.cd, double %i.fc
  store double %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.ff = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fg = load ptr, ptr %0, align 8, !tbaa !122
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %i.fh)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fj = fsub double %i.ff, %i.fi
  %i.fk = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !123
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = invoke noundef double @_ZN3igl16box_surface_areaIdLi3EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %i.fm)
          to label %.invoke unwind label %bb.v

.invoke:                                          ; preds = %bb.s
  %i.fo = fsub double %i.fk, %i.fn
  %i.fp = fcmp olt double %i.fj, %i.fo
  %.val = load ptr, ptr %0, align 8
  %i.fq = load ptr, ptr %i.d, align 8
  %4 = select i1 %i.fp, ptr %.val, ptr %i.fq
  %i.fr = invoke noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE6insertEPS4_(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull %1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.invoke, %bb.s, %bb.r
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.u ], [ %i.ft, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE17insert_as_siblingEPS4_.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.g, %bb.f, %bb.d, %bb.a, %bb.t
  %.017 = phi ptr [ %i.j, %bb.g ], [ %0, %bb.a ], [ %i.fr, %bb.t ], [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.ci, %bb.k ], [ %i.ci, %bb.m ], [ %i.ci, %bb.n ]
  ret ptr %.017
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE14rotate_lineageEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit
  %storemerge34 = phi ptr [ %0, %bb.a ], [ %i.p, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.16.033 = phi ptr [ null, %bb.a ], [ %.sroa.16.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 5 uses
  %.sroa.9.032 = phi ptr [ null, %bb.a ], [ %.sroa.9.2, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.0.031 = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.9.032, %.sroa.16.033
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %storemerge34, ptr %.sroa.9.032, align 8, !tbaa !125
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.a = ptrtoint ptr %.sroa.16.033 to i64
  %i.b = ptrtoint ptr %.sroa.0.031 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = icmp eq i64 %i.c, 9223372036854775800
  br i1 %i.d, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.e = ashr exact i64 %i.c, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1)
  %i.f = add nsw i64 %.sroa.speculated.i.i.i, %i.e ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.e
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 1152921504606846975)
  %i.i = select i1 %i.g, i64 1152921504606846975, i64 %i.h ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
          to label %.noexc5 unwind label %.loopexit ; 4 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c ; 2 uses
  store ptr %storemerge34, ptr %i.l, align 8, !tbaa !125
  %i.m = icmp sgt i64 %i.c, 0
  br i1 %i.m, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.f:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %.sroa.0.031, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.f, %.noexc5
  %.not.i17.i.i = icmp eq ptr %.sroa.0.031, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.031, i64 noundef %i.c) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.1 = phi ptr [ %i.k, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.031, %bb.c ] ; 6 uses
  %.pn20 = phi ptr [ %i.l, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.9.032, %bb.c ]
  %.sroa.16.1 = phi ptr [ %i.n, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.16.033, %bb.c ] ; 3 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn20, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge34, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !137

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.preheader:                                       ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit, %bb.h
  %.sroa.9.1 = phi ptr [ %i.r, %bb.h ], [ %.sroa.9.2, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EE9push_backERKS6_.exit ] ; 2 uses
  %i.q = icmp eq ptr %.sroa.0.1, %.sroa.9.1
  br i1 %i.q, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %.sroa.9.1, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  %i.t = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE6rotateEb(ptr noundef nonnull align 8 dereferenceable(76) %i.s, i1 noundef zeroext false)
          to label %.preheader unwind label %bb.i, !llvm.loop !138 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %.preheader
  %.not.i.i.i6 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = ptrtoint ptr %.sroa.16.1 to i64
  %i.w = ptrtoint ptr %.sroa.0.1 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.x) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.sroa.0.029 = phi ptr [ %.sroa.0.1, %bb.i ], [ %.sroa.0.031, %.loopexit ], [ %.sroa.0.031, %.loopexit.split-lp ] ; 3 uses
  %.sroa.16.023 = phi ptr [ %.sroa.16.1, %bb.i ], [ %.sroa.16.033, %.loopexit ], [ %.sroa.16.033, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i7 = icmp eq ptr %.sroa.0.029, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = ptrtoint ptr %.sroa.16.023 to i64
  %i.z = ptrtoint ptr %.sroa.0.029 to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.029, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit8

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EEESaIS6_EED2Ev.exit8: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE6updateERKNS1_10AlignedBoxIdLi3EEEd(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !10
  %i.c = load double, ptr %1, align 8, !tbaa !10
  %i.d = fcmp ugt double %i.b, %i.c
  br i1 %i.d, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.e, align 8, !tbaa !10
  %i.h = load double, ptr %i.f, align 8, !tbaa !10
  %i.i = fcmp ugt double %i.g, %i.h
  br i1 %i.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.j, align 8, !tbaa !10
  %i.m = load double, ptr %i.k, align 8, !tbaa !10
  %i.n = fcmp ugt double %i.l, %i.m
  br i1 %i.n, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESB_EEE3allEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load double, ptr %i.o, align 8, !tbaa !10
  %i.r = load double, ptr %i.p, align 8, !tbaa !10
  %i.s = fcmp ugt double %i.q, %i.r
  br i1 %i.s, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsERKS1_.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEESC_EEEELi2ELi3EE3runERKSE_.exit.i.i3.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load double, ptr %i.t, align 8, !tbaa !10
  %i.w = load double, ptr %i.u, align 8, !tbaa !10
end_hunk_2
begin_hunk_3_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6insertEPS4_:bb.a
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !159 ; 5 uses
  %i.j = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 15 uses
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEC1Ev(ptr noundef nonnull align 16 dereferenceable(68) %i.j)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.i, ptr %i.k, align 16, !tbaa !159
  store ptr %0, ptr %i.j, align 16, !tbaa !157
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !158
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load <2 x double>, ptr %i.m, align 16, !tbaa !9
  %i.p = load <2 x double>, ptr %i.n, align 16, !tbaa !9
  %i.q = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o, <2 x double> %i.p) #29, !srcloc !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load <2 x double>, ptr %i.r, align 16, !tbaa !9
  %i.u = load <2 x double>, ptr %i.s, align 16, !tbaa !9
  %i.v = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.t, <2 x double> %i.u) #29, !srcloc !54
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load <2 x double>, ptr %i.w, align 16, !tbaa !9
  %i.y = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q, <2 x double> %i.x) #29, !srcloc !53
  store <2 x double> %i.y, ptr %i.m, align 16, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !9
  %i.ab = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v, <2 x double> %i.aa) #29, !srcloc !54
  store <2 x double> %i.ab, ptr %i.r, align 16, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 -1, ptr %i.ac, align 16, !tbaa !149
  store ptr %i.j, ptr %i.h, align 16, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.j, ptr %i.ad, align 16, !tbaa !159
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE17insert_as_siblingEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.i, align 16, !tbaa !157
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.i, align 16, !tbaa !157
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE17insert_as_siblingEPS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !158
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE17insert_as_siblingEPS4_.exit

common.resume:                                    ; preds = %bb.w, %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ca, %bb.o ], [ %.pn.pn.pn, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 80) #26
  br label %common.resume

bb.i:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ak = load double, ptr %i.ai, align 16, !tbaa !10
  %i.al = load double, ptr %i.aj, align 8, !tbaa !10
  %i.am = fcmp ugt double %i.ak, %i.al
  br i1 %i.am, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEESB_EEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEESB_EEE3allEv.exit.i: ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load double, ptr %i.an, align 8, !tbaa !10
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !10
  %i.ar = fcmp ugt double %i.ap, %i.aq
  br i1 %i.ar, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEESB_EEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load double, ptr %i.as, align 8, !tbaa !10
  %i.av = load double, ptr %i.at, align 16, !tbaa !10
  %i.aw = fcmp ugt double %i.au, %i.av
  br i1 %i.aw, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit

_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit: ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load double, ptr %i.ax, align 8, !tbaa !10
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !10
  %i.bb = fcmp ugt double %i.az, %i.ba
  br i1 %i.bb, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread, label %bb.p

_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread: ; preds = %bb.i, %bb.j, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEESB_EEE3allEv.exit.i, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !159 ; 5 uses
  %i.be = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 15 uses
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEC1Ev(ptr noundef nonnull align 16 dereferenceable(68) %i.be)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bd, ptr %i.bf, align 16, !tbaa !159
  store ptr %0, ptr %i.be, align 16, !tbaa !157
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %1, ptr %i.bg, align 8, !tbaa !158
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !9
  %i.bj = load <2 x double>, ptr %i.ai, align 16, !tbaa !9
  %i.bk = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi, <2 x double> %i.bj) #29, !srcloc !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load <2 x double>, ptr %i.bl, align 16, !tbaa !9
  %i.bo = load <2 x double>, ptr %i.bm, align 16, !tbaa !9
  %i.bp = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bn, <2 x double> %i.bo) #29, !srcloc !54
  %i.bq = load <2 x double>, ptr %i.aj, align 16, !tbaa !9
  %i.br = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk, <2 x double> %i.bq) #29, !srcloc !53
  store <2 x double> %i.br, ptr %i.bh, align 16, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load <2 x double>, ptr %i.bs, align 16, !tbaa !9
  %i.bu = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp, <2 x double> %i.bt) #29, !srcloc !54
  store <2 x double> %i.bu, ptr %i.bl, align 16, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i32 -1, ptr %i.bv, align 16, !tbaa !149
  store ptr %i.be, ptr %i.bc, align 16, !tbaa !159
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.be, ptr %i.bw, align 16, !tbaa !159
  %.not.i25 = icmp eq ptr %i.bd, null
  br i1 %.not.i25, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE17insert_as_siblingEPS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.bd, align 16, !tbaa !157
  %i.by = icmp eq ptr %i.bx, %0
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.be, ptr %i.bd, align 16, !tbaa !157
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE17insert_as_siblingEPS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.bz, align 8, !tbaa !158
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE17insert_as_siblingEPS4_.exit

bb.o:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread
  %i.ca = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 80) #26
  br label %common.resume

bb.p:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %i.cb, i64 16, i1 false), !tbaa.struct !160
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cc, ptr noundef nonnull align 16 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !160
  %i.ce = load <2 x double>, ptr %2, align 16, !tbaa !9
  %i.cf = load <2 x double>, ptr %i.aj, align 16, !tbaa !9 ; 2 uses
  %i.cg = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ce, <2 x double> %i.cf) #29, !srcloc !53
  store <2 x double> %i.cg, ptr %2, align 16, !tbaa !9
  %i.ch = load <2 x double>, ptr %i.cc, align 16, !tbaa !9
  %i.ci = load <2 x double>, ptr %i.as, align 16, !tbaa !9 ; 2 uses
  %i.cj = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ch, <2 x double> %i.ci) #29, !srcloc !54
  store <2 x double> %i.cj, ptr %i.cc, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %i.ck, i64 16, i1 false), !tbaa.struct !160
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !160
  %i.cn = load <2 x double>, ptr %3, align 16, !tbaa !9
  %i.co = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cn, <2 x double> %i.cf) #29, !srcloc !53
  store <2 x double> %i.co, ptr %3, align 16, !tbaa !9
  %i.cp = load <2 x double>, ptr %i.cl, align 16, !tbaa !9
  %i.cq = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cp, <2 x double> %i.ci) #29, !srcloc !54
  store <2 x double> %i.cq, ptr %i.cl, align 16, !tbaa !9
  %i.cr = invoke noundef double @_ZN3igl16box_surface_areaIdLi2EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 16 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %0, align 16, !tbaa !157
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = invoke noundef double @_ZN3igl16box_surface_areaIdLi2EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 16 dereferenceable(32) %i.ct)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cv = fsub double %i.cr, %i.cu
  %i.cw = invoke noundef double @_ZN3igl16box_surface_areaIdLi2EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 16 dereferenceable(32) %3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = invoke noundef double @_ZN3igl16box_surface_areaIdLi2EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 16 dereferenceable(32) %i.cy)
          to label %.invoke unwind label %bb.v

.invoke:                                          ; preds = %bb.s
  %i.da = fsub double %i.cw, %i.cz
  %i.db = fcmp olt double %i.cv, %i.da
  %.val = load ptr, ptr %0, align 16
  %i.dc = load ptr, ptr %i.d, align 8
  %4 = select i1 %i.db, ptr %.val, ptr %i.dc
  %i.dd = invoke noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6insertEPS4_(ptr noundef nonnull align 16 dereferenceable(68) %4, ptr noundef nonnull %1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE17insert_as_siblingEPS4_.exit

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.invoke, %bb.s, %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.u ], [ %i.df, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE17insert_as_siblingEPS4_.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.g, %bb.f, %bb.d, %bb.a, %bb.t
  %.017 = phi ptr [ %i.j, %bb.g ], [ %0, %bb.a ], [ %i.dd, %bb.t ], [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.be, %bb.k ], [ %i.be, %bb.m ], [ %i.be, %bb.n ]
  ret ptr %.017
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE14rotate_lineageEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit
  %i.a = icmp eq ptr %.sroa.0.1, %.sroa.9.2
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit
  %storemerge40 = phi ptr [ %0, %bb.a ], [ %i.q, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.16.039 = phi ptr [ null, %bb.a ], [ %.sroa.16.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit ] ; 5 uses
  %.sroa.9.038 = phi ptr [ null, %bb.a ], [ %.sroa.9.2, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.0.037 = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.9.038, %.sroa.16.039
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %storemerge40, ptr %.sroa.9.038, align 8, !tbaa !161
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %.sroa.16.039 to i64
  %i.c = ptrtoint ptr %.sroa.0.037 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775800
  br i1 %i.e, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.f = ashr exact i64 %i.d, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.g = add nsw i64 %.sroa.speculated.i.i.i, %i.f ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 1152921504606846975)
  %i.j = select i1 %i.h, i64 1152921504606846975, i64 %i.i ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.j, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #27
          to label %.noexc5 unwind label %.loopexit ; 4 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.d ; 2 uses
  store ptr %storemerge40, ptr %i.m, align 8, !tbaa !161
  %i.n = icmp sgt i64 %i.d, 0
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.f:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %.sroa.0.037, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.f, %.noexc5
  %.not.i17.i.i = icmp eq ptr %.sroa.0.037, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.037, i64 noundef %i.d) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.1 = phi ptr [ %i.l, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.037, %bb.c ] ; 7 uses
  %.pn26 = phi ptr [ %i.m, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.9.038, %bb.c ]
  %.sroa.16.1 = phi ptr [ %i.o, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.16.039, %bb.c ] ; 3 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn26, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge40, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !159 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !173

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6rotateEb.exit
  %.sroa.9.141 = phi ptr [ %i.r, %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6rotateEb.exit ], [ %.sroa.9.2, %.preheader ]
  %i.r = getelementptr inbounds i8, ptr %.sroa.9.141, i64 -8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !161  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !159
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6rotateEb.exit, label %_ZSt3minIdET_St16initializer_listIS0_E.exit.i

_ZSt3minIdET_St16initializer_listIS0_E.exit.i:    ; preds = %.lr.ph
  %i.w = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE13rotate_acrossEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext true)
          to label %.noexc6 unwind label %bb.l    ; 2 uses

.noexc6:                                          ; preds = %_ZSt3minIdET_St16initializer_listIS0_E.exit.i
  %i.x = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE9rotate_upEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext true)
          to label %.noexc7 unwind label %bb.l    ; 2 uses

.noexc7:                                          ; preds = %.noexc6
  %i.y = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE11rotate_downEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext true)
          to label %.noexc8 unwind label %bb.l    ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %i.z = fcmp ugt double %i.w, %i.x
  %i.aa = fcmp ugt double %i.w, %i.y
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc8
  %i.ab = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE13rotate_acrossEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext false)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6rotateEb.exit unwind label %bb.l ; 0 uses

bb.i:                                             ; preds = %.noexc8
  %i.ac = fcmp ugt double %i.x, %i.y
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE9rotate_upEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext false)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6rotateEb.exit unwind label %bb.l ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.ae = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE11rotate_downEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext false)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6rotateEb.exit unwind label %bb.l ; 0 uses

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6rotateEb.exit: ; preds = %bb.k, %bb.j, %bb.h, %.lr.ph
  %i.af = icmp eq ptr %.sroa.0.1, %i.r
  br i1 %i.af, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %.noexc7, %.noexc6, %_ZSt3minIdET_St16initializer_listIS0_E.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE6rotateEb.exit, %.preheader
  %.not.i.i.i12 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ah = ptrtoint ptr %.sroa.16.1 to i64
  %i.ai = ptrtoint ptr %.sroa.0.1 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.aj) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit: ; preds = %._crit_edge, %bb.m
  ret void

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.sroa.0.035 = phi ptr [ %.sroa.0.1, %bb.l ], [ %.sroa.0.037, %.loopexit ], [ %.sroa.0.037, %.loopexit.split-lp ] ; 3 uses
  %.sroa.16.029 = phi ptr [ %.sroa.16.1, %bb.l ], [ %.sroa.16.039, %.loopexit ], [ %.sroa.16.039, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %.sroa.0.035, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = ptrtoint ptr %.sroa.16.029 to i64
  %i.al = ptrtoint ptr %.sroa.0.035 to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.035, i64 noundef %i.am) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit14

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEESaIS6_EED2Ev.exit14: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn
end_hunk_3
begin_hunk_4_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6insertEPS4_:bb.a
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !183 ; 5 uses
  %i.j = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 15 uses
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEC1Ev(ptr noundef nonnull align 16 dereferenceable(68) %i.j)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.i, ptr %i.k, align 16, !tbaa !183
  store ptr %0, ptr %i.j, align 16, !tbaa !181
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load <2 x double>, ptr %i.m, align 16, !tbaa !9
  %i.p = load <2 x double>, ptr %i.n, align 16, !tbaa !9
  %i.q = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o, <2 x double> %i.p) #29, !srcloc !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load <2 x double>, ptr %i.r, align 16, !tbaa !9
  %i.u = load <2 x double>, ptr %i.s, align 16, !tbaa !9
  %i.v = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.t, <2 x double> %i.u) #29, !srcloc !54
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load <2 x double>, ptr %i.w, align 16, !tbaa !9
  %i.y = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q, <2 x double> %i.x) #29, !srcloc !53
  store <2 x double> %i.y, ptr %i.m, align 16, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !9
  %i.ab = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v, <2 x double> %i.aa) #29, !srcloc !54
  store <2 x double> %i.ab, ptr %i.r, align 16, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 -1, ptr %i.ac, align 16, !tbaa !178
  store ptr %i.j, ptr %i.h, align 16, !tbaa !183
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.j, ptr %i.ad, align 16, !tbaa !183
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE17insert_as_siblingEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.i, align 16, !tbaa !181
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.j, ptr %i.i, align 16, !tbaa !181
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE17insert_as_siblingEPS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !182
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE17insert_as_siblingEPS4_.exit

common.resume:                                    ; preds = %bb.w, %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ca, %bb.o ], [ %.pn.pn.pn, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 80) #26
  br label %common.resume

bb.i:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ak = load double, ptr %i.ai, align 16, !tbaa !10
  %i.al = load double, ptr %i.aj, align 8, !tbaa !10
  %i.am = fcmp ugt double %i.ak, %i.al
  br i1 %i.am, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEESB_EEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEESB_EEE3allEv.exit.i: ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load double, ptr %i.an, align 8, !tbaa !10
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !10
  %i.ar = fcmp ugt double %i.ap, %i.aq
  br i1 %i.ar, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEESB_EEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load double, ptr %i.as, align 8, !tbaa !10
  %i.av = load double, ptr %i.at, align 16, !tbaa !10
  %i.aw = fcmp ugt double %i.au, %i.av
  br i1 %i.aw, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit

_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit: ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load double, ptr %i.ax, align 8, !tbaa !10
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !10
  %i.bb = fcmp ugt double %i.az, %i.ba
  br i1 %i.bb, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread, label %bb.p

_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread: ; preds = %bb.i, %bb.j, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEESB_EEE3allEv.exit.i, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !183 ; 5 uses
  %i.be = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 15 uses
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEC1Ev(ptr noundef nonnull align 16 dereferenceable(68) %i.be)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bd, ptr %i.bf, align 16, !tbaa !183
  store ptr %0, ptr %i.be, align 16, !tbaa !181
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %1, ptr %i.bg, align 8, !tbaa !182
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !9
  %i.bj = load <2 x double>, ptr %i.ai, align 16, !tbaa !9
  %i.bk = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi, <2 x double> %i.bj) #29, !srcloc !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load <2 x double>, ptr %i.bl, align 16, !tbaa !9
  %i.bo = load <2 x double>, ptr %i.bm, align 16, !tbaa !9
  %i.bp = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bn, <2 x double> %i.bo) #29, !srcloc !54
  %i.bq = load <2 x double>, ptr %i.aj, align 16, !tbaa !9
  %i.br = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk, <2 x double> %i.bq) #29, !srcloc !53
  store <2 x double> %i.br, ptr %i.bh, align 16, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load <2 x double>, ptr %i.bs, align 16, !tbaa !9
  %i.bu = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp, <2 x double> %i.bt) #29, !srcloc !54
  store <2 x double> %i.bu, ptr %i.bl, align 16, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i32 -1, ptr %i.bv, align 16, !tbaa !178
  store ptr %i.be, ptr %i.bc, align 16, !tbaa !183
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.be, ptr %i.bw, align 16, !tbaa !183
  %.not.i25 = icmp eq ptr %i.bd, null
  br i1 %.not.i25, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE17insert_as_siblingEPS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.bd, align 16, !tbaa !181
  %i.by = icmp eq ptr %i.bx, %0
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.be, ptr %i.bd, align 16, !tbaa !181
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE17insert_as_siblingEPS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.bz, align 8, !tbaa !182
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE17insert_as_siblingEPS4_.exit

bb.o:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit.thread
  %i.ca = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 80) #26
  br label %common.resume

bb.p:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %i.cb, i64 16, i1 false), !tbaa.struct !160
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cc, ptr noundef nonnull align 16 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !160
  %i.ce = load <2 x double>, ptr %2, align 16, !tbaa !9
  %i.cf = load <2 x double>, ptr %i.aj, align 16, !tbaa !9 ; 2 uses
  %i.cg = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ce, <2 x double> %i.cf) #29, !srcloc !53
  store <2 x double> %i.cg, ptr %2, align 16, !tbaa !9
  %i.ch = load <2 x double>, ptr %i.cc, align 16, !tbaa !9
  %i.ci = load <2 x double>, ptr %i.as, align 16, !tbaa !9 ; 2 uses
  %i.cj = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ch, <2 x double> %i.ci) #29, !srcloc !54
  store <2 x double> %i.cj, ptr %i.cc, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %i.ck, i64 16, i1 false), !tbaa.struct !160
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !160
  %i.cn = load <2 x double>, ptr %3, align 16, !tbaa !9
  %i.co = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cn, <2 x double> %i.cf) #29, !srcloc !53
  store <2 x double> %i.co, ptr %3, align 16, !tbaa !9
  %i.cp = load <2 x double>, ptr %i.cl, align 16, !tbaa !9
  %i.cq = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cp, <2 x double> %i.ci) #29, !srcloc !54
  store <2 x double> %i.cq, ptr %i.cl, align 16, !tbaa !9
  %i.cr = invoke noundef double @_ZN3igl16box_surface_areaIdLi2EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 16 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cs = load ptr, ptr %0, align 16, !tbaa !181
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = invoke noundef double @_ZN3igl16box_surface_areaIdLi2EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 16 dereferenceable(32) %i.ct)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cv = fsub double %i.cr, %i.cu
  %i.cw = invoke noundef double @_ZN3igl16box_surface_areaIdLi2EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 16 dereferenceable(32) %3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = invoke noundef double @_ZN3igl16box_surface_areaIdLi2EEET_RKN5Eigen10AlignedBoxIS1_XT0_EEE(ptr noundef nonnull align 16 dereferenceable(32) %i.cy)
          to label %.invoke unwind label %bb.v

.invoke:                                          ; preds = %bb.s
  %i.da = fsub double %i.cw, %i.cz
  %i.db = fcmp olt double %i.cv, %i.da
  %.val = load ptr, ptr %0, align 16
  %i.dc = load ptr, ptr %i.d, align 8
  %4 = select i1 %i.db, ptr %.val, ptr %i.dc
  %i.dd = invoke noundef ptr @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6insertEPS4_(ptr noundef nonnull align 16 dereferenceable(68) %4, ptr noundef nonnull %1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE17insert_as_siblingEPS4_.exit

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.invoke, %bb.s, %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.u ], [ %i.df, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE17insert_as_siblingEPS4_.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.g, %bb.f, %bb.d, %bb.a, %bb.t
  %.017 = phi ptr [ %i.j, %bb.g ], [ %0, %bb.a ], [ %i.dd, %bb.t ], [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.be, %bb.k ], [ %i.be, %bb.m ], [ %i.be, %bb.n ]
  ret ptr %.017
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE14rotate_lineageEv(ptr noundef nonnull align 16 dereferenceable(68) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit
  %i.a = icmp eq ptr %.sroa.0.1, %.sroa.9.2
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit
  %storemerge40 = phi ptr [ %0, %bb.a ], [ %i.q, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.16.039 = phi ptr [ null, %bb.a ], [ %.sroa.16.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit ] ; 5 uses
  %.sroa.9.038 = phi ptr [ null, %bb.a ], [ %.sroa.9.2, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit ] ; 3 uses
  %.sroa.0.037 = phi ptr [ null, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.9.038, %.sroa.16.039
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %storemerge40, ptr %.sroa.9.038, align 8, !tbaa !184
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %.sroa.16.039 to i64
  %i.c = ptrtoint ptr %.sroa.0.037 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775800
  br i1 %i.e, label %bb.e, label %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.f = ashr exact i64 %i.d, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.g = add nsw i64 %.sroa.speculated.i.i.i, %i.f ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 1152921504606846975)
  %i.j = select i1 %i.h, i64 1152921504606846975, i64 %i.i ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.j, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #27
          to label %.noexc5 unwind label %.loopexit ; 4 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.d ; 2 uses
  store ptr %storemerge40, ptr %i.m, align 8, !tbaa !184
  %i.n = icmp sgt i64 %i.d, 0
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.f:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %.sroa.0.037, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.f, %.noexc5
  %.not.i17.i.i = icmp eq ptr %.sroa.0.037, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.037, i64 noundef %i.d) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE9push_backERKS6_.exit: ; preds = %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.c
  %.sroa.0.1 = phi ptr [ %i.l, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0.037, %bb.c ] ; 7 uses
  %.pn26 = phi ptr [ %i.m, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.9.038, %bb.c ]
  %.sroa.16.1 = phi ptr [ %i.o, %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.16.039, %bb.c ] ; 3 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn26, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge40, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !183 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !196

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6rotateEb.exit
  %.sroa.9.141 = phi ptr [ %i.r, %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6rotateEb.exit ], [ %.sroa.9.2, %.preheader ]
  %i.r = getelementptr inbounds i8, ptr %.sroa.9.141, i64 -8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !184  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !183
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6rotateEb.exit, label %_ZSt3minIdET_St16initializer_listIS0_E.exit.i

_ZSt3minIdET_St16initializer_listIS0_E.exit.i:    ; preds = %.lr.ph
  %i.w = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE13rotate_acrossEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext true)
          to label %.noexc6 unwind label %bb.l    ; 2 uses

.noexc6:                                          ; preds = %_ZSt3minIdET_St16initializer_listIS0_E.exit.i
  %i.x = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE9rotate_upEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext true)
          to label %.noexc7 unwind label %bb.l    ; 2 uses

.noexc7:                                          ; preds = %.noexc6
  %i.y = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE11rotate_downEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext true)
          to label %.noexc8 unwind label %bb.l    ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %i.z = fcmp ugt double %i.w, %i.x
  %i.aa = fcmp ugt double %i.w, %i.y
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc8
  %i.ab = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE13rotate_acrossEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext false)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6rotateEb.exit unwind label %bb.l ; 0 uses

bb.i:                                             ; preds = %.noexc8
  %i.ac = fcmp ugt double %i.x, %i.y
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE9rotate_upEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext false)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6rotateEb.exit unwind label %bb.l ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.ae = invoke noundef double @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE11rotate_downEb(ptr noundef nonnull align 16 dereferenceable(68) %i.s, i1 noundef zeroext false)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6rotateEb.exit unwind label %bb.l ; 0 uses

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6rotateEb.exit: ; preds = %bb.k, %bb.j, %bb.h, %.lr.ph
  %i.af = icmp eq ptr %.sroa.0.1, %i.r
  br i1 %i.af, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %.noexc7, %.noexc6, %_ZSt3minIdET_St16initializer_listIS0_E.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE6rotateEb.exit, %.preheader
  %.not.i.i.i12 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ah = ptrtoint ptr %.sroa.16.1 to i64
  %i.ai = ptrtoint ptr %.sroa.0.1 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.aj) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit: ; preds = %._crit_edge, %bb.m
  ret void

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.sroa.0.035 = phi ptr [ %.sroa.0.1, %bb.l ], [ %.sroa.0.037, %.loopexit ], [ %.sroa.0.037, %.loopexit.split-lp ] ; 3 uses
  %.sroa.16.029 = phi ptr [ %.sroa.16.1, %bb.l ], [ %.sroa.16.039, %.loopexit ], [ %.sroa.16.039, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %.sroa.0.035, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = ptrtoint ptr %.sroa.16.029 to i64
  %i.al = ptrtoint ptr %.sroa.0.035 to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.035, i64 noundef %i.am) #26
  br label %_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit14

_ZNSt6vectorIPN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EEESaIS6_EED2Ev.exit14: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn
end_hunk_4
