Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/octree?download=true
inline.NumInlined: 1954
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN3igl6octreeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiNS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERSt6vectorISB_IT0_SaISC_EESaISE_EERNS1_15PlainObjectBaseIT1_EERNSI_IT2_EERNSI_IT3_EE:bb.a
  %i.cm = fadd double %i.ck, %i.cl
  %i.cn = fmul double %i.cm, 5.000000e-01
  store double %i.cn, ptr %i.ch, align 16, !tbaa !72
  %i.co = fsub <2 x double> %i.ce, %i.cd          ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.co, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.co, i64 1 ; 2 uses
  %i.cp = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.cq = select i1 %i.cp, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 2 uses
  %i.cr = fsub double %i.cl, %i.ck                ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  %i.ct = select i1 %i.cs, double %i.cr, double %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !74 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !76
  %.not.i122 = icmp eq ptr %i.cv, %i.cx
  br i1 %.not.i122, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 16 dereferenceable(24) %24, i64 24, i1 false), !tbaa.struct !77
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !74
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.cz, ptr %i.cu, align 8, !tbaa !74
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit unwind label %bb.af

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit: ; preds = %bb.s, %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !78 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !80
  %.not.i125 = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i125, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  store double %i.ct, ptr %i.db, align 8, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.de, ptr %i.da, align 8, !tbaa !78
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit

bb.u:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  %i.df = load ptr, ptr %15, align 8, !tbaa !81   ; 4 uses
  %i.dg = ptrtoint ptr %i.db to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.v, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc127 unwind label %bb.af

.noexc127:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i126 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i126)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #19
          to label %.noexc128 unwind label %bb.af ; 4 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store double %i.ct, ptr %i.dr, align 8, !tbaa !72
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.w, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc128
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %i.df, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i17.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.di) #21
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.dq, ptr %15, align 8, !tbaa !81
  store ptr %i.dt, ptr %i.da, align 8, !tbaa !78
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.du, ptr %i.dc, align 8, !tbaa !80
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.t
  %i.dv = load i32, ptr %i.d, align 4, !tbaa !9
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.a, align 4, !tbaa !9
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.dx = load ptr, ptr %i.h, align 8, !tbaa !14
  %.not.i.i129 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i129, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #20
          to label %.noexc130 unwind label %bb.af

.noexc130:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit
  %i.dy = load ptr, ptr %i.i, align 8, !tbaa !82
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i unwind label %bb.af, !inline_history !84

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dz = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.ea = load ptr, ptr %13, align 8, !tbaa !85
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  %i.ee = ashr exact i64 %i.ed, 5
  %i.ef = ashr exact i64 %i.ed, 2
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ef, i64 noundef %i.ee, i64 noundef 8)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.af

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.eg = load ptr, ptr %i.cu, align 8, !tbaa !74
  %i.eh = load ptr, ptr %14, align 8, !tbaa !86
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 24                ; 2 uses
  %i.em = mul nsw i64 %i.el, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.em, i64 noundef %i.el, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.af

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.en = load ptr, ptr %i.da, align 8, !tbaa !78
  %i.eo = load ptr, ptr %15, align 8, !tbaa !81
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 3
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.es, i64 noundef 1)
          to label %.preheader261 unwind label %bb.af

.preheader261:                                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.et = load ptr, ptr %i.bs, align 8, !tbaa !53 ; 2 uses
  %i.eu = load ptr, ptr %13, align 8, !tbaa !85   ; 5 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 3 uses
  %i.ey = ashr exact i64 %i.ex, 5
  %.not272 = icmp eq ptr %i.et, %i.eu
  br i1 %.not272, label %.preheader260, label %.lr.ph266

.lr.ph266:                                        ; preds = %.preheader261
  %i.ez = load ptr, ptr %2, align 8, !tbaa !87, !noalias !89 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !92, !noalias !89 ; 8 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !93 ; 6 uses
  %i.fe = icmp sgt i64 %i.fb, 0
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %.preheader260

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader:   ; preds = %.lr.ph266
  %i.ff = shl i64 %i.fb, 2                        ; 2 uses
  %i.fg = ashr exact i64 %i.ex, 3
  %i.fh = getelementptr i8, ptr %i.ez, i64 %i.ff
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fg
  %scevgep = getelementptr i8, ptr %i.fi, i64 -4
  %i.fj = getelementptr i8, ptr %i.eu, i64 %i.ex
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.ff
  %scevgep337 = getelementptr i8, ptr %i.fk, i64 -32
  %min.iters.check339 = icmp ugt i64 %i.fb, 7
  %ident.check.not = icmp eq i64 %i.fd, 1
  %or.cond = select i1 %min.iters.check339, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.ez, %scevgep337
  %bound1 = icmp ult ptr %i.eu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec341 = and i64 %i.fb, 9223372036854775800  ; 3 uses
  %cmp.n347 = icmp eq i64 %i.fb, %n.vec341
  %xtraiter = and i64 %i.fb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.preheader260:                                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi8ELi1ELi0ELi8ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, %.lr.ph266, %.preheader261
  %i.fl = load ptr, ptr %i.cu, align 8, !tbaa !74 ; 2 uses
  %i.fm = load ptr, ptr %14, align 8, !tbaa !86   ; 5 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sdiv i64 %i.fp, 24
  %.not273 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not273, label %.preheader, label %.lr.ph268

.lr.ph268:                                        ; preds = %.preheader260
  %i.fr = load ptr, ptr %3, align 8, !tbaa !94, !noalias !95 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !98, !noalias !95 ; 9 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !34 ; 6 uses
  %i.fw = icmp sgt i64 %i.ft, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader.preheader, label %.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader.preheader: ; preds = %.lr.ph268
  %umax284 = call i64 @llvm.umax.i64(i64 %i.fq, i64 1) ; 3 uses
  %i.fx = shl i64 %i.ft, 3
  %i.fy = add i64 %i.ft, %umax284
  %i.fz = shl i64 %i.fy, 3
  %i.ga = getelementptr i8, ptr %i.fr, i64 %i.fz
  %scevgep352 = getelementptr i8, ptr %i.ga, i64 -8
  %25 = mul i64 %umax284, 24
  %i.gb = getelementptr i8, ptr %i.fm, i64 %25
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.fx
  %scevgep353 = getelementptr i8, ptr %i.gc, i64 -24
  %min.iters.check358 = icmp ugt i64 %i.ft, 5
  %ident.check350.not = icmp eq i64 %i.fv, 1
  %or.cond384 = select i1 %min.iters.check358, i1 %ident.check350.not, i1 false
  %bound0354 = icmp ult ptr %i.fr, %scevgep353
  %bound1355 = icmp ult ptr %i.fm, %scevgep352
  %found.conflict356 = and i1 %bound0354, %bound1355
  %n.vec360 = and i64 %i.ft, 9223372036854775804  ; 3 uses
  %cmp.n367 = icmp eq i64 %i.ft, %n.vec360
  %xtraiter388 = and i64 %i.ft, 3                 ; 2 uses
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader

bb.aa:                                            ; preds = %bb.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %21, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i135 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIiSaIiEED2Ev.exit136, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gf = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !40
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit136

_ZNSt6vectorIiSaIiEED2Ev.exit136:                 ; preds = %bb.ab, %bb.aa, %bb.l
  %.pn65 = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.gd, %bb.aa ], [ %i.gd, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.ap

bb.ac:                                            ; preds = %bb.o
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ad:                                            ; preds = %.noexc119
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ae:                                            ; preds = %bb.p
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.af:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.z, %bb.y, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %bb.v, %bb.s, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.an

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi8ELi1ELi0ELi8ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi8ELi1ELi0ELi8ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader ] ; 3 uses
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %indvars.iv276 ; 6 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv276 ; 6 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader386, label %vector.body342

vector.body342:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %vector.body342
  %index343 = phi i64 [ %index.next345, %vector.body342 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %index343 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index343 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load = load <4 x i32>, ptr %i.gr, align 4, !tbaa !9, !alias.scope !99
  %wide.load344 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !9, !alias.scope !99
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %wide.load, ptr %i.gq, align 4, !tbaa !9, !alias.scope !102, !noalias !99
  store <4 x i32> %wide.load344, ptr %i.gt, align 4, !tbaa !9, !alias.scope !102, !noalias !99
  %index.next345 = add nuw i64 %index343, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next345, %n.vec341
  br i1 %i.gu, label %middle.block346, label %vector.body342, !llvm.loop !104

middle.block346:                                  ; preds = %vector.body342
  br i1 %cmp.n347, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi8ELi1ELi0ELi8ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader386

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader386:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block346
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec341, %middle.block346 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader386, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader386 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader386 ]
  %i.gv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.fd
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !9
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !9
  %i.gz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !105

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader386
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader386 ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ha = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.fb
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi8ELi1ELi0ELi8ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hv, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.hc = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.fd
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !9
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !9
  %i.hg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hh = mul nsw i64 %i.hg, %i.fd
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.hh
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.hg
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !9
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !9
  %i.hl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hm = mul nsw i64 %i.hl, %i.fd
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.hl
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !9
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !9
  %i.hq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hr = mul nsw i64 %i.hq, %i.fd
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.hq
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !9
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !9
  %i.hv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hv, %i.fb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi8ELi1ELi0ELi8ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !107

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IiLi8ELi1ELi0ELi8ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block346
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %i.ey
  br i1 %exitcond280.not, label %.preheader260, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !108

.preheader:                                       ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, %.lr.ph268, %.preheader260
  %i.hw = load ptr, ptr %i.da, align 8, !tbaa !78 ; 2 uses
  %i.hx = load ptr, ptr %15, align 8, !tbaa !81   ; 8 uses
  %.not274 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not274, label %._crit_edge271, label %.lr.ph270

.lr.ph270:                                        ; preds = %.preheader
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 3                 ; 6 uses
  %i.ic = load ptr, ptr %4, align 8, !tbaa !109   ; 7 uses
  %min.iters.check371 = icmp ult i64 %i.ib, 8
  %i.id = ptrtoaddr ptr %i.ic to i64
  %i.ie = sub i64 %i.hz, %i.id
  %diff.check = icmp ugt i64 %i.ie, -32
  %or.cond383 = select i1 %min.iters.check371, i1 true, i1 %diff.check
  br i1 %or.cond383, label %scalar.ph370.preheader, label %vector.ph372

vector.ph372:                                     ; preds = %.lr.ph270
  %n.vec373 = and i64 %i.ib, -4                   ; 3 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next378, %vector.body374 ] ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %index375 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load376 = load <2 x double>, ptr %i.if, align 8, !tbaa !72
  %wide.load377 = load <2 x double>, ptr %i.ig, align 8, !tbaa !72
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %index375 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <2 x double> %wide.load376, ptr %i.ih, align 8, !tbaa !72
  store <2 x double> %wide.load377, ptr %i.ii, align 8, !tbaa !72
  %index.next378 = add nuw i64 %index375, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.ij, label %middle.block379, label %vector.body374, !llvm.loop !111

middle.block379:                                  ; preds = %vector.body374
  %cmp.n380 = icmp eq i64 %i.ib, %n.vec373
  br i1 %cmp.n380, label %._crit_edge271, label %scalar.ph370.preheader

scalar.ph370.preheader:                           ; preds = %.lr.ph270, %middle.block379
  %indvars.iv286.ph = phi i64 [ 0, %.lr.ph270 ], [ %n.vec373, %middle.block379 ] ; 3 uses
  %xtraiter391 = and i64 %i.ib, 3                 ; 2 uses
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %scalar.ph370.prol.loopexit, label %scalar.ph370.prol

scalar.ph370.prol:                                ; preds = %scalar.ph370.preheader, %scalar.ph370.prol
  %indvars.iv286.prol = phi i64 [ %indvars.iv.next287.prol, %scalar.ph370.prol ], [ %indvars.iv286.ph, %scalar.ph370.preheader ] ; 3 uses
  %prol.iter393 = phi i64 [ %prol.iter393.next, %scalar.ph370.prol ], [ 0, %scalar.ph370.preheader ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv286.prol
  %i.il = load double, ptr %i.ik, align 8, !tbaa !72
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv286.prol
  store double %i.il, ptr %i.im, align 8, !tbaa !72
  %indvars.iv.next287.prol = add nuw nsw i64 %indvars.iv286.prol, 1 ; 2 uses
  %prol.iter393.next = add i64 %prol.iter393, 1   ; 2 uses
  %prol.iter393.cmp.not = icmp eq i64 %prol.iter393.next, %xtraiter391
  br i1 %prol.iter393.cmp.not, label %scalar.ph370.prol.loopexit, label %scalar.ph370.prol, !llvm.loop !112

scalar.ph370.prol.loopexit:                       ; preds = %scalar.ph370.prol, %scalar.ph370.preheader
  %indvars.iv286.unr = phi i64 [ %indvars.iv286.ph, %scalar.ph370.preheader ], [ %indvars.iv.next287.prol, %scalar.ph370.prol ]
  %i.in = sub nsw i64 %indvars.iv286.ph, %i.ib
  %i.io = icmp ugt i64 %i.in, -4
  br i1 %i.io, label %._crit_edge271, label %scalar.ph370

.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit
  %indvars.iv281 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader.preheader ], [ %indvars.iv.next282, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %indvars.iv281 ; 6 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv281 ; 6 uses
  %or.cond384.not = xor i1 %or.cond384, true
  %brmerge395 = select i1 %or.cond384.not, i1 true, i1 %found.conflict356
  br i1 %brmerge395, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader385, label %vector.body361

vector.body361:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader, %vector.body361
  %index362 = phi i64 [ %index.next365, %vector.body361 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader ] ; 3 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %index362 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %index362 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load363 = load <2 x double>, ptr %i.is, align 8, !tbaa !72, !alias.scope !113
  %wide.load364 = load <2 x double>, ptr %i.it, align 8, !tbaa !72, !alias.scope !113
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store <2 x double> %wide.load363, ptr %i.ir, align 8, !tbaa !72, !alias.scope !116, !noalias !113
  store <2 x double> %wide.load364, ptr %i.iu, align 8, !tbaa !72, !alias.scope !116, !noalias !113
  %index.next365 = add nuw i64 %index362, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next365, %n.vec360
  br i1 %i.iv, label %middle.block366, label %vector.body361, !llvm.loop !118

middle.block366:                                  ; preds = %vector.body361
  br i1 %cmp.n367, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader385

.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader385:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader, %middle.block366
  %.05.i.i.i.i.i.i.i.i.i.i142.ph = phi i64 [ %n.vec360, %middle.block366 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader ] ; 3 uses
  br i1 %lcmp.mod389.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader385, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol
  %.05.i.i.i.i.i.i.i.i.i.i142.prol = phi i64 [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i142.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader385 ] ; 3 uses
  %prol.iter390 = phi i64 [ %prol.iter390.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader385 ]
  %i.iw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i142.prol, %i.fv
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.iw
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.05.i.i.i.i.i.i.i.i.i.i142.prol
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !72
  store double %i.iz, ptr %i.ix, align 8, !tbaa !72
  %i.ja = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i142.prol, 1 ; 2 uses
  %prol.iter390.next = add i64 %prol.iter390, 1   ; 2 uses
  %prol.iter390.cmp.not = icmp eq i64 %prol.iter390.next, %xtraiter388
  br i1 %prol.iter390.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol, !llvm.loop !119

.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader385
  %.05.i.i.i.i.i.i.i.i.i.i142.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i142.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader385 ], [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol ]
  %i.jb = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i142.ph, %i.ft
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141

.lr.ph.i.i.i.i.i.i.i.i.i.i141:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i141
  %.05.i.i.i.i.i.i.i.i.i.i142 = phi i64 [ %i.jw, %.lr.ph.i.i.i.i.i.i.i.i.i.i141 ], [ %.05.i.i.i.i.i.i.i.i.i.i142.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol.loopexit ] ; 6 uses
  %i.jd = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i142, %i.fv
  %i.je = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.jd
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.05.i.i.i.i.i.i.i.i.i.i142
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !72
  store double %i.jg, ptr %i.je, align 8, !tbaa !72
  %i.jh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i142, 1 ; 2 uses
  %i.ji = mul nsw i64 %i.jh, %i.fv
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.ji
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.jh
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !72
  store double %i.jl, ptr %i.jj, align 8, !tbaa !72
  %i.jm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i142, 2 ; 2 uses
  %i.jn = mul nsw i64 %i.jm, %i.fv
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.jm
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !72
  store double %i.jq, ptr %i.jo, align 8, !tbaa !72
  %i.jr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i142, 3 ; 2 uses
  %i.js = mul nsw i64 %i.jr, %i.fv
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.js
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.jr
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !72
  store double %i.jv, ptr %i.jt, align 8, !tbaa !72
  %i.jw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i142, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i143.3 = icmp eq i64 %i.jw, %i.ft
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i143.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141, !llvm.loop !120

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELi3ELi1ELi1ELi3EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i141.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i141, %middle.block366
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %umax284
  br i1 %exitcond285.not, label %.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i141.preheader, !llvm.loop !121

._crit_edge271:                                   ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370, %middle.block379, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.jx = load ptr, ptr %i.h, align 8, !tbaa !14  ; 2 uses
  %.not.i144 = icmp eq ptr %i.jx, null
  br i1 %.not.i144, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge271
  %i.jy = invoke noundef zeroext i1 %i.jx(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %._crit_edge271, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %.not.i145 = icmp eq ptr %i.kb, null
  br i1 %.not.i145, label %_ZNSt14_Function_baseD2Ev.exit146, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.kc = invoke noundef zeroext i1 %i.kb(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit146 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit146:                ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.kf = load ptr, ptr %15, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i147 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit146
  %i.kg = load ptr, ptr %i.dc, align 8, !tbaa !80
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kj) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit146, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.kk = load ptr, ptr %14, align 8, !tbaa !86   ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i148, label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @free(ptr noundef nonnull %i.kk) #18
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.kl = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit
  call void @free(ptr noundef nonnull %i.kl) #18
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret void

scalar.ph370:                                     ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370
  %indvars.iv286 = phi i64 [ %indvars.iv.next287.3, %scalar.ph370 ], [ %indvars.iv286.unr, %scalar.ph370.prol.loopexit ] ; 6 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv286
  %i.kn = load double, ptr %i.km, align 8, !tbaa !72
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv286
  store double %i.kn, ptr %i.ko, align 8, !tbaa !72
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.next287
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !72
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next287
  store double %i.kq, ptr %i.kr, align 8, !tbaa !72
  %indvars.iv.next287.1 = add nuw nsw i64 %indvars.iv286, 2 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.next287.1
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !72
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next287.1
  store double %i.kt, ptr %i.ku, align 8, !tbaa !72
  %indvars.iv.next287.2 = add nuw nsw i64 %indvars.iv286, 3 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.next287.2
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !72
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next287.2
  store double %i.kw, ptr %i.kx, align 8, !tbaa !72
  %indvars.iv.next287.3 = add nuw nsw i64 %indvars.iv286, 4 ; 2 uses
  %exitcond290.not.3 = icmp eq i64 %indvars.iv.next287.3, %i.ib
  br i1 %exitcond290.not.3, label %._crit_edge271, label %scalar.ph370, !llvm.loop !122

bb.an:                                            ; preds = %bb.af, %bb.ae
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.af ], [ %i.gm, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ad
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn, %bb.an ], [ %i.gl, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit136, %bb.k
  %.pn71.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn, %bb.ao ], [ %i.gk, %bb.ac ], [ %.pn65, %_ZNSt6vectorIiSaIiEED2Ev.exit136 ], [ %i.bi, %bb.k ]
  %i.ky = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !14 ; 2 uses
  %.not.i152 = icmp eq ptr %i.kz, null
  br i1 %.not.i152, label %_ZNSt14_Function_baseD2Ev.exit153, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.la = invoke noundef zeroext i1 %i.kz(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit153 unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit153:                ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ld = load ptr, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %.not.i154 = icmp eq ptr %i.ld, null
  br i1 %.not.i154, label %_ZNSt14_Function_baseD2Ev.exit155, label %bb.as

bb.as:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit153
  %i.le = invoke noundef zeroext i1 %i.ld(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit155 unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit155:                ; preds = %_ZNSt14_Function_baseD2Ev.exit153, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.lh = load ptr, ptr %15, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i156 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIdSaIdEED2Ev.exit157, label %bb.au

bb.au:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit155
  %i.li = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !80
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.lh to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.lm) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit157

_ZNSt6vectorIdSaIdEED2Ev.exit157:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit155, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.ln = load ptr, ptr %14, align 8, !tbaa !86   ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit159, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit157
  call void @free(ptr noundef nonnull %i.ln) #18
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit159

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit159: ; preds = %bb.av, %_ZNSt6vectorIdSaIdEED2Ev.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.lo = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %.not.i.i.i160 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i160, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit161, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit159
  call void @free(ptr noundef nonnull %i.lo) #18
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit161

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit161: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit159, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  resume { ptr, i32 } %.pn71.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)
end_hunk_0
begin_hunk_1_@_ZN3igl6octreeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiNS2_IiLin1ELi8ELi0ELin1ELi8EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERSt6vectorISC_IT0_SaISD_EESaISF_EERNS1_15PlainObjectBaseIT1_EERNSJ_IT2_EERNSJ_IT3_EE:bb.a
  store ptr %5, ptr %i.ca, align 8, !tbaa !70
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.cb, align 8, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %23, ptr %i.cc, align 8, !tbaa !68
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_16PartialReduxExprIKNS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.q unwind label %bb.ah

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.cd = load <2 x double>, ptr %22, align 16, !tbaa !57 ; 2 uses
  %i.ce = load <2 x double>, ptr %23, align 16, !tbaa !57 ; 2 uses
  %i.cf = fadd <2 x double> %i.cd, %i.ce
  %i.cg = fmul <2 x double> %i.cf, splat (double 5.000000e-01)
  store <2 x double> %i.cg, ptr %24, align 16, !tbaa !57
  %i.ch = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ck = load double, ptr %i.ci, align 16, !tbaa !72 ; 2 uses
  %i.cl = load double, ptr %i.cj, align 16, !tbaa !72 ; 2 uses
  %i.cm = fadd double %i.ck, %i.cl
  %i.cn = fmul double %i.cm, 5.000000e-01
  store double %i.cn, ptr %i.ch, align 16, !tbaa !72
  %i.co = fsub <2 x double> %i.ce, %i.cd          ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.co, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.co, i64 1 ; 2 uses
  %i.cp = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.cq = select i1 %i.cp, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 2 uses
  %i.cr = fsub double %i.cl, %i.ck                ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  %i.ct = select i1 %i.cs, double %i.cr, double %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !74 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !76
  %.not.i122 = icmp eq ptr %i.cv, %i.cx
  br i1 %.not.i122, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 16 dereferenceable(24) %24, i64 24, i1 false), !tbaa.struct !77
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !74
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.cz, ptr %i.cu, align 8, !tbaa !74
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit unwind label %bb.ai

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit: ; preds = %bb.s, %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !78 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !80
  %.not.i125 = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i125, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  store double %i.ct, ptr %i.db, align 8, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.de, ptr %i.da, align 8, !tbaa !78
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit

bb.u:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE12emplace_backIJRS2_EEES7_DpOT_.exit
  %i.df = load ptr, ptr %15, align 8, !tbaa !81   ; 4 uses
  %i.dg = ptrtoint ptr %i.db to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.v, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc127 unwind label %bb.ai

.noexc127:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i126 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i126)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #19
          to label %.noexc128 unwind label %bb.ai ; 4 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store double %i.ct, ptr %i.dr, align 8, !tbaa !72
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.w, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc128
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %i.df, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i17.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.di) #21
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.dq, ptr %15, align 8, !tbaa !81
  store ptr %i.dt, ptr %i.da, align 8, !tbaa !78
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.du, ptr %i.dc, align 8, !tbaa !80
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.t
  %i.dv = load i32, ptr %i.d, align 4, !tbaa !9
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.a, align 4, !tbaa !9
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.dx = load ptr, ptr %i.h, align 8, !tbaa !14
  %.not.i.i129 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i129, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #20
          to label %.noexc130 unwind label %bb.ai

.noexc130:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRdEEES3_DpOT_.exit
  %i.dy = load ptr, ptr %i.i, align 8, !tbaa !82
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aa unwind label %bb.ai, !inline_history !84

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dz = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.ea = load ptr, ptr %13, align 8, !tbaa !85
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 5
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi8ELi0ELin1ELi8EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ee, i64 noundef 8)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.ef = load ptr, ptr %i.cu, align 8, !tbaa !74
  %i.eg = load ptr, ptr %14, align 8, !tbaa !86
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = sdiv exact i64 %i.ej, 24
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.ek, i64 noundef 3)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.el = load ptr, ptr %i.da, align 8, !tbaa !78
  %i.em = load ptr, ptr %15, align 8, !tbaa !81
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 3
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.eq, i64 noundef 1)
          to label %.preheader254 unwind label %bb.ai

.preheader254:                                    ; preds = %bb.ac
  %i.er = load ptr, ptr %i.bs, align 8, !tbaa !53 ; 2 uses
  %i.es = load ptr, ptr %13, align 8, !tbaa !85   ; 3 uses
  %.not265 = icmp eq ptr %i.er, %i.es
  br i1 %.not265, label %.preheader253, label %.lr.ph259

.lr.ph259:                                        ; preds = %.preheader254
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 5
  %i.ex = load ptr, ptr %2, align 8, !tbaa !128, !noalias !130
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !133 ; 7 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ez, 3
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ez, 12
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ez, 4
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ez, 20
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ez, 24
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ez, 28
  br label %bb.aj

.preheader253:                                    ; preds = %bb.aj, %.preheader254
  %i.fa = load ptr, ptr %i.cu, align 8, !tbaa !74 ; 2 uses
  %i.fb = load ptr, ptr %14, align 8, !tbaa !86   ; 11 uses
  %.not266 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not266, label %.preheader, label %.lr.ph261

.lr.ph261:                                        ; preds = %.preheader253
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = sdiv i64 %i.fe, 24                      ; 4 uses
  %i.fg = load ptr, ptr %3, align 8, !tbaa !134, !noalias !136 ; 12 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !139 ; 6 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i138 = shl nsw i64 %i.fi, 4 ; 6 uses
  %umax277 = call i64 @llvm.umax.i64(i64 %i.ff, i64 1) ; 5 uses
  %min.iters.check353 = icmp ult i64 %i.ff, 60
  br i1 %min.iters.check353, label %scalar.ph352.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph261
  %i.fj = shl i64 %umax277, 3                     ; 3 uses
  %scevgep = getelementptr i8, ptr %i.fg, i64 %i.fj ; 3 uses
  %i.fk = shl nsw i64 %i.fi, 3                    ; 2 uses
  %scevgep328 = getelementptr i8, ptr %i.fg, i64 %i.fk ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fg, i64 %i.fk
  %scevgep329 = getelementptr i8, ptr %i.fl, i64 %i.fj ; 3 uses
  %scevgep330 = getelementptr i8, ptr %i.fg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i138 ; 3 uses
  %i.fm = getelementptr i8, ptr %i.fg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i138
  %scevgep331 = getelementptr i8, ptr %i.fm, i64 %i.fj ; 3 uses
  %25 = mul i64 %umax277, 24
  %scevgep331.a = getelementptr i8, ptr %i.fb, i64 %25 ; 3 uses
  %bound0 = icmp ult ptr %i.fg, %scevgep329
  %bound1 = icmp ult ptr %scevgep328, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0333 = icmp ult ptr %i.fg, %scevgep331
  %bound1334 = icmp ult ptr %scevgep330, %scevgep
  %found.conflict335 = and i1 %bound0333, %bound1334
  %conflict.rdx = or i1 %found.conflict, %found.conflict335
  %bound0336 = icmp ult ptr %i.fg, %scevgep331.a
  %bound1337 = icmp ult ptr %i.fb, %scevgep
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx, %found.conflict338
  %bound0340 = icmp ult ptr %scevgep328, %scevgep331
  %bound1341 = icmp ult ptr %scevgep330, %scevgep329
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx339, %found.conflict342
  %bound0344 = icmp ult ptr %scevgep328, %scevgep331.a
  %bound1345 = icmp ult ptr %i.fb, %scevgep329
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  %bound0348 = icmp ult ptr %scevgep330, %scevgep331.a
  %bound1349 = icmp ult ptr %i.fb, %scevgep331
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  br i1 %conflict.rdx351, label %scalar.ph352.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck
  %n.vec355 = and i64 %umax277, -2                ; 3 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next358, %vector.body356 ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %index357 ; 3 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %index357 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %index357 ; 3 uses
  %i.fr = load double, ptr %i.fn, align 8, !tbaa !72, !alias.scope !140
  %i.fs = load double, ptr %i.fp, align 8, !tbaa !72, !alias.scope !140
  %i.ft = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fs, i64 1
  store <2 x double> %i.fu, ptr %i.fq, align 8, !tbaa !72, !alias.scope !143, !noalias !145
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fi
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !72, !alias.scope !140
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !72, !alias.scope !140
  %i.ga = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fz, i64 1
  store <2 x double> %i.gb, ptr %i.fv, align 8, !tbaa !72, !alias.scope !148, !noalias !149
  %i.gc = getelementptr inbounds i8, ptr %i.fq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i138
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !72, !alias.scope !140
  %i.gg = load double, ptr %i.ge, align 8, !tbaa !72, !alias.scope !140
  %i.gh = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gg, i64 1
  store <2 x double> %i.gi, ptr %i.gc, align 8, !tbaa !72, !alias.scope !150, !noalias !140
  %index.next358 = add nuw i64 %index357, 2       ; 2 uses
  %i.gj = icmp eq i64 %index.next358, %n.vec355
  br i1 %i.gj, label %middle.block359, label %vector.body356, !llvm.loop !151

middle.block359:                                  ; preds = %vector.body356
  %cmp.n360 = icmp eq i64 %i.ff, %n.vec355
  br i1 %cmp.n360, label %.preheader, label %scalar.ph352.preheader

scalar.ph352.preheader:                           ; preds = %vector.memcheck, %.lr.ph261, %middle.block359
  %indvars.iv274.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph261 ], [ %n.vec355, %middle.block359 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv274.ph, 1
  %xtraiter = and i64 %umax277, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph352.prol.loopexit, label %scalar.ph352.prol

scalar.ph352.prol:                                ; preds = %scalar.ph352.preheader
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv274.ph ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv274.ph ; 3 uses
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !72
  store double %i.gm, ptr %i.gl, align 8, !tbaa !72
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.fi
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gp = load double, ptr %i.go, align 8, !tbaa !72
  store double %i.gp, ptr %i.gn, align 8, !tbaa !72
  %i.gq = getelementptr inbounds i8, ptr %i.gl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i138
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !72
  store double %i.gs, ptr %i.gq, align 8, !tbaa !72
  %indvars.iv.next275.prol = or disjoint i64 %indvars.iv274.ph, 1
  br label %scalar.ph352.prol.loopexit

scalar.ph352.prol.loopexit:                       ; preds = %scalar.ph352.prol, %scalar.ph352.preheader
  %indvars.iv274.unr = phi i64 [ %indvars.iv274.ph, %scalar.ph352.preheader ], [ %indvars.iv.next275.prol, %scalar.ph352.prol ]
  %i.gt = icmp eq i64 %umax277, %.neg
  br i1 %i.gt, label %.preheader, label %scalar.ph352

bb.ad:                                            ; preds = %bb.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = load ptr, ptr %21, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIiSaIiEED2Ev.exit133, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !40
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit133

_ZNSt6vectorIiSaIiEED2Ev.exit133:                 ; preds = %bb.ae, %bb.ad, %bb.l
  %.pn65 = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.gu, %bb.ad ], [ %i.gu, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.at

bb.af:                                            ; preds = %bb.o
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ag:                                            ; preds = %.noexc119
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ah:                                            ; preds = %bb.p
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ai:                                            ; preds = %bb.z, %bb.y, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %bb.v, %bb.s, %bb.ac, %bb.ab, %bb.aa
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.ar

bb.aj:                                            ; preds = %.lr.ph259, %bb.aj
  %indvars.iv269 = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next270, %bb.aj ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %indvars.iv269 ; 8 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv269 ; 8 uses
  %i.hh = load i32, ptr %i.hf, align 4, !tbaa !9
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !9
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ez
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !9
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !9
  %i.hl = getelementptr inbounds i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !9
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !9
  %i.ho = getelementptr inbounds i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !9
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !9
  %i.hr = getelementptr inbounds i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !9
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !9
  %i.hu = getelementptr inbounds i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hf, i64 20
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !9
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !9
  %i.hx = getelementptr inbounds i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !9
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !9
  %i.ia = getelementptr inbounds i8, ptr %i.hg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hf, i64 28
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !9
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !9
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %i.ew
  br i1 %exitcond273.not, label %.preheader253, label %bb.aj, !llvm.loop !152

.preheader:                                       ; preds = %scalar.ph352.prol.loopexit, %scalar.ph352, %middle.block359, %.preheader253
  %i.id = load ptr, ptr %i.da, align 8, !tbaa !78 ; 2 uses
  %i.ie = load ptr, ptr %15, align 8, !tbaa !81   ; 8 uses
  %.not267 = icmp eq ptr %i.id, %i.ie
  br i1 %.not267, label %._crit_edge264, label %.lr.ph263

.lr.ph263:                                        ; preds = %.preheader
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64               ; 2 uses
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = ashr exact i64 %i.ih, 3                 ; 6 uses
  %i.ij = load ptr, ptr %4, align 8, !tbaa !109   ; 7 uses
  %min.iters.check364 = icmp ult i64 %i.ii, 8
  %i.ik = ptrtoaddr ptr %i.ij to i64
  %i.il = sub i64 %i.ig, %i.ik
  %diff.check = icmp ugt i64 %i.il, -32
  %or.cond = select i1 %min.iters.check364, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph363.preheader, label %vector.ph365

vector.ph365:                                     ; preds = %.lr.ph263
  %n.vec366 = and i64 %i.ii, -4                   ; 3 uses
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph365
  %index368 = phi i64 [ 0, %vector.ph365 ], [ %index.next370, %vector.body367 ] ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %index368 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load = load <2 x double>, ptr %i.im, align 8, !tbaa !72
  %wide.load369 = load <2 x double>, ptr %i.in, align 8, !tbaa !72
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index368 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <2 x double> %wide.load, ptr %i.io, align 8, !tbaa !72
  store <2 x double> %wide.load369, ptr %i.ip, align 8, !tbaa !72
  %index.next370 = add nuw i64 %index368, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next370, %n.vec366
  br i1 %i.iq, label %middle.block371, label %vector.body367, !llvm.loop !153

middle.block371:                                  ; preds = %vector.body367
  %cmp.n372 = icmp eq i64 %i.ii, %n.vec366
  br i1 %cmp.n372, label %._crit_edge264, label %scalar.ph363.preheader

scalar.ph363.preheader:                           ; preds = %.lr.ph263, %middle.block371
  %indvars.iv279.ph = phi i64 [ 0, %.lr.ph263 ], [ %n.vec366, %middle.block371 ] ; 3 uses
  %xtraiter376 = and i64 %i.ii, 3                 ; 2 uses
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %scalar.ph363.prol.loopexit, label %scalar.ph363.prol

scalar.ph363.prol:                                ; preds = %scalar.ph363.preheader, %scalar.ph363.prol
  %indvars.iv279.prol = phi i64 [ %indvars.iv.next280.prol, %scalar.ph363.prol ], [ %indvars.iv279.ph, %scalar.ph363.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph363.prol ], [ 0, %scalar.ph363.preheader ]
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv279.prol
  %i.is = load double, ptr %i.ir, align 8, !tbaa !72
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv279.prol
  store double %i.is, ptr %i.it, align 8, !tbaa !72
  %indvars.iv.next280.prol = add nuw nsw i64 %indvars.iv279.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter376
  br i1 %prol.iter.cmp.not, label %scalar.ph363.prol.loopexit, label %scalar.ph363.prol, !llvm.loop !154

scalar.ph363.prol.loopexit:                       ; preds = %scalar.ph363.prol, %scalar.ph363.preheader
  %indvars.iv279.unr = phi i64 [ %indvars.iv279.ph, %scalar.ph363.preheader ], [ %indvars.iv.next280.prol, %scalar.ph363.prol ]
  %i.iu = sub nsw i64 %indvars.iv279.ph, %i.ii
  %i.iv = icmp ugt i64 %i.iu, -4
  br i1 %i.iv, label %._crit_edge264, label %scalar.ph363

scalar.ph352:                                     ; preds = %scalar.ph352.prol.loopexit, %scalar.ph352
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.1, %scalar.ph352 ], [ %indvars.iv274.unr, %scalar.ph352.prol.loopexit ] ; 4 uses
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv274 ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv274 ; 3 uses
  %i.iy = load double, ptr %i.iw, align 8, !tbaa !72
  store double %i.iy, ptr %i.ix, align 8, !tbaa !72
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.fi
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !72
  store double %i.jb, ptr %i.iz, align 8, !tbaa !72
  %i.jc = getelementptr inbounds i8, ptr %i.ix, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i138
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.je = load double, ptr %i.jd, align 8, !tbaa !72
  store double %i.je, ptr %i.jc, align 8, !tbaa !72
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %indvars.iv.next275 ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next275 ; 3 uses
  %i.jh = load double, ptr %i.jf, align 8, !tbaa !72
  store double %i.jh, ptr %i.jg, align 8, !tbaa !72
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.fi
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !72
  store double %i.jk, ptr %i.ji, align 8, !tbaa !72
  %i.jl = getelementptr inbounds i8, ptr %i.jg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i138
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !72
  store double %i.jn, ptr %i.jl, align 8, !tbaa !72
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %exitcond278.not.1 = icmp eq i64 %i.ff, %indvars.iv.next275.1
  br i1 %exitcond278.not.1, label %.preheader, label %scalar.ph352, !llvm.loop !155

._crit_edge264:                                   ; preds = %scalar.ph363.prol.loopexit, %scalar.ph363, %middle.block371, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.jo = load ptr, ptr %i.h, align 8, !tbaa !14  ; 2 uses
  %.not.i139 = icmp eq ptr %i.jo, null
  br i1 %.not.i139, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge264
  %i.jp = invoke noundef zeroext i1 %i.jo(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %._crit_edge264, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.js = load ptr, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %.not.i140 = icmp eq ptr %i.js, null
  br i1 %.not.i140, label %_ZNSt14_Function_baseD2Ev.exit141, label %bb.am

bb.am:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.jt = invoke noundef zeroext i1 %i.js(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit141 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit141:                ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.jw = load ptr, ptr %15, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit141
  %i.jx = load ptr, ptr %i.dc, align 8, !tbaa !80
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.ka) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit141, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.kb = load ptr, ptr %14, align 8, !tbaa !86   ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @free(ptr noundef nonnull %i.kb) #18
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.kc = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i144, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit
  call void @free(ptr noundef nonnull %i.kc) #18
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret void

scalar.ph363:                                     ; preds = %scalar.ph363.prol.loopexit, %scalar.ph363
  %indvars.iv279 = phi i64 [ %indvars.iv.next280.3, %scalar.ph363 ], [ %indvars.iv279.unr, %scalar.ph363.prol.loopexit ] ; 6 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv279
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !72
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv279
  store double %i.ke, ptr %i.kf, align 8, !tbaa !72
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.next280
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !72
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next280
  store double %i.kh, ptr %i.ki, align 8, !tbaa !72
  %indvars.iv.next280.1 = add nuw nsw i64 %indvars.iv279, 2 ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.next280.1
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !72
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next280.1
  store double %i.kk, ptr %i.kl, align 8, !tbaa !72
  %indvars.iv.next280.2 = add nuw nsw i64 %indvars.iv279, 3 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.next280.2
  %i.kn = load double, ptr %i.km, align 8, !tbaa !72
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next280.2
  store double %i.kn, ptr %i.ko, align 8, !tbaa !72
  %indvars.iv.next280.3 = add nuw nsw i64 %indvars.iv279, 4 ; 2 uses
  %exitcond283.not.3 = icmp eq i64 %indvars.iv.next280.3, %i.ii
  br i1 %exitcond283.not.3, label %._crit_edge264, label %scalar.ph363, !llvm.loop !156

bb.ar:                                            ; preds = %bb.ai, %bb.ah
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.ai ], [ %i.hd, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ag
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn, %bb.ar ], [ %i.hc, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.af, %_ZNSt6vectorIiSaIiEED2Ev.exit133, %bb.k
  %.pn71.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn, %bb.as ], [ %i.hb, %bb.af ], [ %.pn65, %_ZNSt6vectorIiSaIiEED2Ev.exit133 ], [ %i.bi, %bb.k ]
  %i.kp = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !14 ; 2 uses
  %.not.i147 = icmp eq ptr %i.kq, null
  br i1 %.not.i147, label %_ZNSt14_Function_baseD2Ev.exit148, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kr = invoke noundef zeroext i1 %i.kq(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit148 unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit148:                ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ku = load ptr, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %.not.i149 = icmp eq ptr %i.ku, null
  br i1 %.not.i149, label %_ZNSt14_Function_baseD2Ev.exit150, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit148
  %i.kv = invoke noundef zeroext i1 %i.ku(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit150 unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  call void @__clang_call_terminate(ptr %i.kx) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit150:                ; preds = %_ZNSt14_Function_baseD2Ev.exit148, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.ky = load ptr, ptr %15, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIdSaIdEED2Ev.exit152, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit150
  %i.kz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !80
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.ky to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.ld) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152

_ZNSt6vectorIdSaIdEED2Ev.exit152:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit150, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.le = load ptr, ptr %14, align 8, !tbaa !86   ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit154, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit152
  call void @free(ptr noundef nonnull %i.le) #18
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit154

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit154: ; preds = %bb.az, %_ZNSt6vectorIdSaIdEED2Ev.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.lf = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit156, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit154
  call void @free(ptr noundef nonnull %i.lf) #18
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit156

_ZNSt6vectorIN5Eigen6MatrixIiLi8ELi1ELi0ELi8ELi1EEENS0_17aligned_allocatorIS2_EEED2Ev.exit156: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEED2Ev.exit154, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  resume { ptr, i32 } %.pn71.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi8ELi0ELin1ELi8EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
end_hunk_1
