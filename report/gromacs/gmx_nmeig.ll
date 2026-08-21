Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_nmeig?download=true
inline.NumInlined: 385
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z9gmx_nmeigiPPc:.noexc.i
  %i.qs = load <2 x float>, ptr %i.qr, align 4, !tbaa !67
  %i.qt = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.qu = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qv = fmul <2 x float> %i.qu, %i.qs
  store <2 x float> %i.qv, ptr %i.qr, align 4, !tbaa !67
  %i.qw = getelementptr i8, ptr %i.qr, i64 8      ; 2 uses
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !67
  %i.qy = fmul float %i.qq, %i.qx
  store float %i.qy, ptr %i.qw, align 4, !tbaa !67
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter683.next.1 = add nuw nsw i64 %niter683, 2 ; 2 uses
  %niter683.ncmp.1 = icmp eq i64 %niter683.next.1, %unroll_iter682
  br i1 %niter683.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.split.i.new, !llvm.loop !88

.loopexit67.i:                                    ; preds = %._crit_edge.2.i, %.preheader66.i, %_ZL20allocateEigenvectorsiiib.exit
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.ra = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.112, i32 noundef %i.kd, i32 noundef %i.ke) #20 ; 0 uses
  %i.rb = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.rc = call i32 @fflush(ptr noundef %i.rb)     ; 0 uses
  %i.rd = add nsw i32 %i.kd, -1
  %i.re = add nsw i32 %i.ke, -1
  invoke void @_Z11eigensolverPfiiiS_S_(ptr noundef %i.ju, i32 noundef %i.jv, i32 noundef %i.rd, i32 noundef %i.re, ptr noundef %i.ji, ptr noundef %i.jt)
          to label %.noexc242 unwind label %bb.bf

.noexc242:                                        ; preds = %.loopexit67.i
  %i.rf = icmp ne ptr %i.jt, null
  %.not77.i = icmp sge i32 %i.ke, %i.kd
  %i.rg = and i1 %i.rf, %.not77.i
  %or.cond96.not.i = and i1 %i.rg, %i.jx
  br i1 %or.cond96.not.i, label %.preheader.lr.ph.i, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit

.preheader.lr.ph.i:                               ; preds = %.noexc242
  %i.rh = ashr exact i64 %i.kc, 2                 ; 3 uses
  %i.ri = icmp sgt i64 %i.rh, 0
  br i1 %i.ri, label %.preheader.lr.ph.split.i, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.rj = sext i32 %i.jv to i64
  %reass.sub = sub i32 %i.ke, %i.kd
  %i.rk = add i32 %reass.sub, 1
  %wide.trip.count.i = zext i32 %i.rk to i64
  %i.rl = icmp eq i64 %i.kc, 4
  %unroll_iter703 = and i64 %i.rh, 9223372036854775806
  %i.rm = and i64 %i.kc, 4
  %lcmp.mod701.not = icmp eq i64 %i.rm, 0
  %lcmp.mod702 = trunc i64 %i.rh to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge76.i, %.preheader.lr.ph.split.i
  %indvars.iv87.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next88.i, %._crit_edge76.i ] ; 2 uses
  %i.rn = mul nsw i64 %indvars.iv87.i, %i.rj
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.jt, i64 %i.rn ; 3 uses
  br i1 %i.rl, label %.epil.preheader698, label %.preheader.i.new

._crit_edge76.i.unr-lcssa:                        ; preds = %.preheader.i.new
  br i1 %lcmp.mod701.not, label %._crit_edge76.i, label %.epil.preheader698

.epil.preheader698:                               ; preds = %._crit_edge76.i.unr-lcssa, %.preheader.i
  %.04974.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.tf, %._crit_edge76.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod702)
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.04974.i.epil.init
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !9
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.rq
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !84
  %i.rt = call noundef float @sqrtf(float noundef %i.rs) #16
  %i.ru = fdiv float 1.000000e+00, %i.rt          ; 2 uses
  %.idx.i.epil = mul i64 %.04974.i.epil.init, 12
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i.epil ; 3 uses
  %i.rv = load <2 x float>, ptr %gep.i.epil, align 4, !tbaa !67
  %i.rw = insertelement <2 x float> poison, float %i.ru, i64 0
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ry = fmul <2 x float> %i.rx, %i.rv
  store <2 x float> %i.ry, ptr %gep.i.epil, align 4, !tbaa !67
  %i.rz = getelementptr i8, ptr %gep.i.epil, i64 8 ; 2 uses
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !67
  %i.sb = fmul float %i.ru, %i.sa
  store float %i.sb, ptr %i.rz, align 4, !tbaa !67
  br label %._crit_edge76.i

._crit_edge76.i:                                  ; preds = %._crit_edge76.i.unr-lcssa, %.epil.preheader698
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count.i
  br i1 %exitcond90.not.i, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit, label %.preheader.i, !llvm.loop !90

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.04974.i = phi i64 [ %i.tf, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter704 = phi i64 [ %niter704.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.04974.i
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !9
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.se
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !84
  %i.sh = call noundef float @sqrtf(float noundef %i.sg) #16
  %i.si = fdiv float 1.000000e+00, %i.sh          ; 2 uses
  %.idx.i = mul i64 %.04974.i, 12
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i ; 3 uses
  %i.sj = load <2 x float>, ptr %gep.i, align 4, !tbaa !67
  %i.sk = insertelement <2 x float> poison, float %i.si, i64 0
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sm = fmul <2 x float> %i.sl, %i.sj
  store <2 x float> %i.sm, ptr %gep.i, align 4, !tbaa !67
  %i.sn = getelementptr i8, ptr %gep.i, i64 8     ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !67
  %i.sp = fmul float %i.si, %i.so
  store float %i.sp, ptr %i.sn, align 4, !tbaa !67
  %i.sq = or disjoint i64 %.04974.i, 1            ; 2 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !9
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.st
  %i.sv = load float, ptr %i.su, align 4, !tbaa !84
  %i.sw = call noundef float @sqrtf(float noundef %i.sv) #16
  %i.sx = fdiv float 1.000000e+00, %i.sw          ; 2 uses
  %.idx.i.1 = mul i64 %i.sq, 12
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i.1 ; 3 uses
  %i.sy = load <2 x float>, ptr %gep.i.1, align 4, !tbaa !67
  %i.sz = insertelement <2 x float> poison, float %i.sx, i64 0
  %i.ta = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tb = fmul <2 x float> %i.ta, %i.sy
  store <2 x float> %i.tb, ptr %gep.i.1, align 4, !tbaa !67
  %i.tc = getelementptr i8, ptr %gep.i.1, i64 8   ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !67
  %i.te = fmul float %i.sx, %i.td
  store float %i.te, ptr %i.tc, align 4, !tbaa !67
  %i.tf = add nuw nsw i64 %.04974.i, 2            ; 2 uses
  %niter704.next.1 = add nuw nsw i64 %niter704, 2 ; 2 uses
  %niter704.ncmp.1 = icmp eq i64 %niter704.next.1, %unroll_iter703
  br i1 %niter704.ncmp.1, label %._crit_edge76.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !91

bb.bf:                                            ; preds = %.loopexit63.i, %bb.bl, %bb.bk, %bb.bh, %.loopexit67.i, %bb.be, %bb.bb, %bb.az
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit238
  %i.th = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !9 ; 2 uses
  %i.ti = sext i32 %i.jk to i64
  %i.tj = sext i32 %i.th to i64
  %i.tk = mul nsw i64 %i.tj, %i.ti                ; 2 uses
  %i.tl = icmp ugt i64 %i.tk, 2147483647
  br i1 %i.tl, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(65) @.str.68, i8 noundef zeroext 2)
          to label %.noexc244 unwind label %bb.bf

.noexc244:                                        ; preds = %bb.bh
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 282, ptr noundef nonnull @.str.109, i32 noundef %i.th, i32 noundef %i.jk, i32 noundef 2147483647, ptr noundef nonnull @.str.88) #19
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %.noexc244
  unreachable

bb.bj:                                            ; preds = %.noexc244
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %.body

bb.bk:                                            ; preds = %bb.bg
  %i.tn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.68, i32 noundef 292, i64 noundef range(i64 -2147483648, 2147483648) %i.tk, i64 noundef 4)
          to label %_ZL20allocateEigenvectorsiiib.exit248 unwind label %bb.bf ; 5 uses

_ZL20allocateEigenvectorsiiib.exit248:            ; preds = %bb.bk
  %i.to = load ptr, ptr %i.s, align 8, !tbaa !22  ; 4 uses
  %i.tp = load i8, ptr @_ZZ9gmx_nmeigiPPcE2bM, align 1, !tbaa !41, !range !42, !noundef !43
  %i.tq = trunc nuw i8 %i.tp to i1                ; 2 uses
  %i.tr = load ptr, ptr %11, align 8, !tbaa !62   ; 8 uses
  %i.ts = load ptr, ptr %i.ei, align 8, !tbaa !59
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tr to i64
  %i.tv = sub i64 %i.tt, %i.tu                    ; 3 uses
  %i.tw = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !9 ; 4 uses
  %i.tx = ashr exact i64 %i.tv, 2                 ; 5 uses
  %i.ty = mul nsw i64 %i.tx, 3
  %.not.i249 = icmp eq ptr %i.to, null
  br i1 %.not.i249, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZL20allocateEigenvectorsiiib.exit248
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL18nma_sparse_hessianP16gmx_sparsematrixbPK10t_topologyN3gmx8ArrayRefIKiEEiPfS8_ENK3$_0clEv", ptr noundef nonnull @.str.68, i32 noundef 218) #19
          to label %.noexc265 unwind label %bb.bf

.noexc265:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %_ZL20allocateEigenvectorsiiib.exit248
  %i.tz = icmp sgt i64 %i.tx, 0                   ; 2 uses
  %or.cond73.i = select i1 %i.tq, i1 %i.tz, i1 false
  br i1 %or.cond73.i, label %.lr.ph67.i, label %.loopexit63.i

.lr.ph67.i:                                       ; preds = %bb.bm
  %i.ua = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !72 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.to, i64 24 ; 3 uses
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.2.i256, %.lr.ph67.i
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph67.i ], [ %indvars.iv.next77.i, %._crit_edge.2.i256 ] ; 4 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv76.i
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !9
  %i.uf = sext i32 %i.ue to i64                   ; 3 uses
  %i.ug = mul nuw nsw i64 %indvars.iv76.i, 3      ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.ug ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !9
  %i.uj = icmp sgt i32 %i.ui, 0
  br i1 %i.uj, label %.lr.ph.i262, label %._crit_edge.i254

.lr.ph.i262:                                      ; preds = %bb.bn
  %i.uk = load ptr, ptr %i.uc, align 8, !tbaa !73
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %i.ug
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !74
  %i.un = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.uf
  %i.uo = load float, ptr %i.un, align 4, !tbaa !84
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i262
  %indvars.iv.i263 = phi i64 [ 0, %.lr.ph.i262 ], [ %indvars.iv.next.i264, %bb.bo ] ; 2 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %indvars.iv.i263 ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !76
  %i.ur = sdiv i32 %i.uq, 3
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !9
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.uv
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !84
  %i.uy = fmul float %i.uo, %i.ux
  %i.uz = call noundef float @sqrtf(float noundef %i.uy) #16
  %i.va = fdiv float 1.000000e+00, %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %i.up, i64 4 ; 2 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !78
  %i.vd = fmul float %i.vc, %i.va
  store float %i.vd, ptr %i.vb, align 4, !tbaa !78
  %indvars.iv.next.i264 = add nuw nsw i64 %indvars.iv.i263, 1 ; 2 uses
  %i.ve = load i32, ptr %i.uh, align 4, !tbaa !9
  %i.vf = sext i32 %i.ve to i64
  %i.vg = icmp slt i64 %indvars.iv.next.i264, %i.vf
  br i1 %i.vg, label %bb.bo, label %._crit_edge.i254, !llvm.loop !92

._crit_edge.i254:                                 ; preds = %bb.bo, %bb.bn
  %27 = mul i64 %indvars.iv76.i, 12884901888      ; 2 uses
  %sext.i = add i64 %27, 4294967296
  %28 = ashr exact i64 %sext.i, 32                ; 2 uses
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %28 ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !9
  %i.vj = icmp sgt i32 %i.vi, 0
  br i1 %i.vj, label %.lr.ph.1.i, label %._crit_edge.1.i255

.lr.ph.1.i:                                       ; preds = %._crit_edge.i254
  %i.vk = load ptr, ptr %i.uc, align 8, !tbaa !73
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.vk, i64 %28
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !74
  %i.vn = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.uf
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !84
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.1.i
  %indvars.iv.1.i260 = phi i64 [ 0, %.lr.ph.1.i ], [ %indvars.iv.next.1.i261, %bb.bp ] ; 2 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %indvars.iv.1.i260 ; 2 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !76
  %i.vr = sdiv i32 %i.vq, 3
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.vs
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !9
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.vv
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !84
  %i.vy = fmul float %i.vo, %i.vx
  %i.vz = call noundef float @sqrtf(float noundef %i.vy) #16
  %i.wa = fdiv float 1.000000e+00, %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vp, i64 4 ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !78
  %i.wd = fmul float %i.wc, %i.wa
  store float %i.wd, ptr %i.wb, align 4, !tbaa !78
  %indvars.iv.next.1.i261 = add nuw nsw i64 %indvars.iv.1.i260, 1 ; 2 uses
  %i.we = load i32, ptr %i.vh, align 4, !tbaa !9
  %i.wf = sext i32 %i.we to i64
  %i.wg = icmp slt i64 %indvars.iv.next.1.i261, %i.wf
  br i1 %i.wg, label %bb.bp, label %._crit_edge.1.i255, !llvm.loop !92

._crit_edge.1.i255:                               ; preds = %bb.bp, %._crit_edge.i254
  %sext91.i = add i64 %27, 8589934592
  %29 = ashr exact i64 %sext91.i, 32              ; 2 uses
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %29 ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !9
  %i.wj = icmp sgt i32 %i.wi, 0
  br i1 %i.wj, label %.lr.ph.2.i, label %._crit_edge.2.i256

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i255
  %i.wk = load ptr, ptr %i.uc, align 8, !tbaa !73
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.wk, i64 %29
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !74
  %i.wn = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.uf
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !84
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.2.i
  %indvars.iv.2.i258 = phi i64 [ 0, %.lr.ph.2.i ], [ %indvars.iv.next.2.i259, %bb.bq ] ; 2 uses
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv.2.i258 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !76
  %i.wr = sdiv i32 %i.wq, 3
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !9
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.wv
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !84
  %i.wy = fmul float %i.wo, %i.wx
  %i.wz = call noundef float @sqrtf(float noundef %i.wy) #16
  %i.xa = fdiv float 1.000000e+00, %i.wz
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wp, i64 4 ; 2 uses
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !78
  %i.xd = fmul float %i.xc, %i.xa
  store float %i.xd, ptr %i.xb, align 4, !tbaa !78
  %indvars.iv.next.2.i259 = add nuw nsw i64 %indvars.iv.2.i258, 1 ; 2 uses
  %i.xe = load i32, ptr %i.wh, align 4, !tbaa !9
  %i.xf = sext i32 %i.xe to i64
  %i.xg = icmp slt i64 %indvars.iv.next.2.i259, %i.xf
  br i1 %i.xg, label %bb.bq, label %._crit_edge.2.i256, !llvm.loop !92

._crit_edge.2.i256:                               ; preds = %bb.bq, %._crit_edge.1.i255
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond.not.i257 = icmp eq i64 %indvars.iv.next77.i, %i.tx
  br i1 %exitcond.not.i257, label %.loopexit63.i, label %bb.bn, !llvm.loop !93

.loopexit63.i:                                    ; preds = %._crit_edge.2.i256, %bb.bm
  %i.xh = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.xi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xh, ptr noundef nonnull @.str.113, i32 noundef %i.tw) #20 ; 0 uses
  %i.xj = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.xk = call i32 @fflush(ptr noundef %i.xj)     ; 0 uses
  invoke void @_Z18sparse_eigensolverP16gmx_sparsematrixiPfS1_i(ptr noundef nonnull %i.to, i32 noundef %i.tw, ptr noundef %i.ji, ptr noundef %i.tn, i32 noundef 10000000)
          to label %.noexc266 unwind label %bb.bf

.noexc266:                                        ; preds = %.loopexit63.i
  %i.xl = icmp ne ptr %i.tn, null
  %i.xm = icmp sgt i32 %i.tw, 0
  %i.xn = and i1 %i.xl, %i.xm
  %or.cond74.i = and i1 %i.xn, %i.tq
  %i.xo = select i1 %or.cond74.i, i1 %i.tz, i1 false
  br i1 %i.xo, label %.preheader.lr.ph.split.i250, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit

.preheader.lr.ph.split.i250:                      ; preds = %.noexc266
  %wide.trip.count.i251 = zext nneg i32 %i.tw to i64
  %i.xp = icmp eq i64 %i.tv, 4
  %unroll_iter710 = and i64 %i.tx, 9223372036854775806
  %i.xq = and i64 %i.tv, 4
  %lcmp.mod708.not = icmp eq i64 %i.xq, 0
  %lcmp.mod709 = trunc i64 %i.tx to i1
  br label %.preheader.i252

.preheader.i252:                                  ; preds = %._crit_edge71.i, %.preheader.lr.ph.split.i250
  %indvars.iv84.i = phi i64 [ 0, %.preheader.lr.ph.split.i250 ], [ %indvars.iv.next85.i, %._crit_edge71.i ] ; 2 uses
  %i.xr = mul i64 %i.ty, %indvars.iv84.i
  %i.xs = getelementptr [4 x i8], ptr %i.tn, i64 %i.xr ; 3 uses
  br i1 %i.xp, label %.epil.preheader705, label %.preheader.i252.new

._crit_edge71.i.unr-lcssa:                        ; preds = %.preheader.i252.new
  br i1 %lcmp.mod708.not, label %._crit_edge71.i, label %.epil.preheader705

.epil.preheader705:                               ; preds = %._crit_edge71.i.unr-lcssa, %.preheader.i252
  %.069.i.epil.init = phi i64 [ 0, %.preheader.i252 ], [ %i.zn, %._crit_edge71.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod709)
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.069.i.epil.init
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !9
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.xv
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !84
  %i.xy = call noundef float @sqrtf(float noundef %i.xx) #16
  %i.xz = fdiv float 1.000000e+00, %i.xy          ; 2 uses
  %.idx.i253.epil = mul i64 %.069.i.epil.init, 12
  %i.ya = getelementptr i8, ptr %i.xs, i64 %.idx.i253.epil ; 3 uses
  %i.yb = load <2 x float>, ptr %i.ya, align 4, !tbaa !67
  %i.yc = insertelement <2 x float> poison, float %i.xz, i64 0
  %i.yd = shufflevector <2 x float> %i.yc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ye = fmul <2 x float> %i.yd, %i.yb
  store <2 x float> %i.ye, ptr %i.ya, align 4, !tbaa !67
  %i.yf = getelementptr i8, ptr %i.ya, i64 8      ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !67
  %i.yh = fmul float %i.xz, %i.yg
  store float %i.yh, ptr %i.yf, align 4, !tbaa !67
  br label %._crit_edge71.i

._crit_edge71.i:                                  ; preds = %._crit_edge71.i.unr-lcssa, %.epil.preheader705
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count.i251
  br i1 %exitcond87.not.i, label %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit, label %.preheader.i252, !llvm.loop !94

.preheader.i252.new:                              ; preds = %.preheader.i252, %.preheader.i252.new
  %.069.i = phi i64 [ %i.zn, %.preheader.i252.new ], [ 0, %.preheader.i252 ] ; 4 uses
  %niter711 = phi i64 [ %niter711.next.1, %.preheader.i252.new ], [ 0, %.preheader.i252 ]
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.069.i
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !9
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.yk
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !84
  %i.yn = call noundef float @sqrtf(float noundef %i.ym) #16
  %i.yo = fdiv float 1.000000e+00, %i.yn          ; 2 uses
  %.idx.i253 = mul i64 %.069.i, 12
  %i.yp = getelementptr i8, ptr %i.xs, i64 %.idx.i253 ; 3 uses
  %i.yq = load <2 x float>, ptr %i.yp, align 4, !tbaa !67
  %i.yr = insertelement <2 x float> poison, float %i.yo, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yt = fmul <2 x float> %i.ys, %i.yq
  store <2 x float> %i.yt, ptr %i.yp, align 4, !tbaa !67
  %i.yu = getelementptr i8, ptr %i.yp, i64 8      ; 2 uses
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !67
  %i.yw = fmul float %i.yo, %i.yv
  store float %i.yw, ptr %i.yu, align 4, !tbaa !67
  %i.yx = or disjoint i64 %.069.i, 1              ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.yx
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !9
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds nuw [36 x i8], ptr %.sroa.5419.0.copyload, i64 %i.za
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !84
  %i.zd = call noundef float @sqrtf(float noundef %i.zc) #16
  %i.ze = fdiv float 1.000000e+00, %i.zd          ; 2 uses
  %.idx.i253.1 = mul i64 %i.yx, 12
  %i.zf = getelementptr i8, ptr %i.xs, i64 %.idx.i253.1 ; 3 uses
  %i.zg = load <2 x float>, ptr %i.zf, align 4, !tbaa !67
  %i.zh = insertelement <2 x float> poison, float %i.ze, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = fmul <2 x float> %i.zi, %i.zg
  store <2 x float> %i.zj, ptr %i.zf, align 4, !tbaa !67
  %i.zk = getelementptr i8, ptr %i.zf, i64 8      ; 2 uses
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !67
  %i.zm = fmul float %i.ze, %i.zl
  store float %i.zm, ptr %i.zk, align 4, !tbaa !67
  %i.zn = add nuw nsw i64 %.069.i, 2              ; 2 uses
  %niter711.next.1 = add nuw nsw i64 %niter711, 2 ; 2 uses
  %niter711.ncmp.1 = icmp eq i64 %niter711.next.1, %unroll_iter710
  br i1 %niter711.ncmp.1, label %._crit_edge71.i.unr-lcssa, label %.preheader.i252.new, !llvm.loop !95

_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit: ; preds = %._crit_edge76.i, %._crit_edge71.i, %.noexc266, %.preheader.lr.ph.i, %.noexc242
  %.0158 = phi ptr [ %i.tn, %._crit_edge71.i ], [ %i.jt, %.noexc242 ], [ %i.jt, %.preheader.lr.ph.i ], [ %i.tn, %.noexc266 ], [ %i.jt, %._crit_edge76.i ] ; 2 uses
  %i.zo = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !9 ; 2 uses
  %i.zp = icmp slt i32 %i.zo, 7
  br i1 %i.zp, label %iter.check, label %.critedge

iter.check:                                       ; preds = %_ZL16nma_full_hessianPfibPK10t_topologyN3gmx8ArrayRefIKiEEiiS_S_.exit
  %i.zq = add i32 %i.zo, -1
  %i.zr = sext i32 %i.zq to i64                   ; 7 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.zr, i64 5)
  %i.zs = add nuw i64 %smax, 1
  %i.zt = sub i64 %i.zs, %i.zr                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.zt, 4
  br i1 %min.iters.check, label %.lr.ph447.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check638 = icmp ult i64 %i.zt, 32
  br i1 %min.iters.check638, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zu = and i64 %i.zt, 28
  %n.vec = and i64 %i.zt, -32                     ; 4 uses
  %i.zv = add i64 %n.vec, %i.zr
  %invariant.gep = getelementptr [4 x i8], ptr %i.ji, i64 %i.zr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aal, %vector.body ]
  %vec.phi639 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aam, %vector.body ]
  %vec.phi640 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aan, %vector.body ]
  %vec.phi641 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aao, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.zx = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.zy = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <8 x float>, ptr %gep, align 4, !tbaa !67
  %wide.load642 = load <8 x float>, ptr %i.zw, align 4, !tbaa !67
  %wide.load643 = load <8 x float>, ptr %i.zx, align 4, !tbaa !67
  %wide.load644 = load <8 x float>, ptr %i.zy, align 4, !tbaa !67
  %i.zz = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load)
  %i.aaa = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load642)
  %i.aab = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load643)
  %i.aac = call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.load644)
  %i.aad = fpext <8 x float> %i.zz to <8 x double>
  %i.aae = fpext <8 x float> %i.aaa to <8 x double>
  %i.aaf = fpext <8 x float> %i.aab to <8 x double>
  %i.aag = fpext <8 x float> %i.aac to <8 x double>
  %i.aah = fcmp ogt <8 x double> %i.aad, splat (double 1.000000e-03)
  %i.aai = fcmp ogt <8 x double> %i.aae, splat (double 1.000000e-03)
  %i.aaj = fcmp ogt <8 x double> %i.aaf, splat (double 1.000000e-03)
  %i.aak = fcmp ogt <8 x double> %i.aag, splat (double 1.000000e-03)
  %i.aal = or <8 x i1> %vec.phi, %i.aah           ; 2 uses
  %i.aam = or <8 x i1> %vec.phi639, %i.aai        ; 2 uses
  %i.aan = or <8 x i1> %vec.phi640, %i.aaj        ; 2 uses
  %i.aao = or <8 x i1> %vec.phi641, %i.aak        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aap = icmp eq i64 %index.next, %n.vec
  br i1 %i.aap, label %middle.block, label %vector.body, !llvm.loop !96
end_hunk_0
