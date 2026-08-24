Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/atomdata?download=true
inline.NumInlined: 1593
inline.NumDeleted: 777
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx16nbnxn_atomdata_tC2ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii:bb.a
  br i1 %i.rm, label %.epil.preheader, label %.lr.ph95.i.i.new

.lr.ph95.i.i.new:                                 ; preds = %.lr.ph95.i.i
  %unroll_iter = and i64 %wide.trip.count111.i.i, 2147483644
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.lr.ph95.i.i.new
  %indvars.iv108.i.i = phi i64 [ 0, %.lr.ph95.i.i.new ], [ %indvars.iv.next109.i.i.3, %bb.by ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph95.i.i.new ], [ %niter.next.3, %bb.by ]
  %i.rn = trunc nuw nsw i64 %indvars.iv108.i.i to i32
  %i.ro = mul i32 %i.rj, %i.rn
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr [4 x i8], ptr %i.rk, i64 %i.rp ; 2 uses
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !73
  %i.rs = call noundef float @sqrtf(float noundef %i.rr) #22
  %.idx129.i.i = shl nuw nsw i64 %indvars.iv108.i.i, 3
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rl, i64 %.idx129.i.i ; 2 uses
  store float %i.rs, ptr %i.rt, align 4, !tbaa !73
  %i.ru = getelementptr i8, ptr %i.rq, i64 4
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !73
  %i.rw = call noundef float @sqrtf(float noundef %i.rv) #22
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  store float %i.rw, ptr %i.rx, align 4, !tbaa !73
  %indvars.iv.next109.i.i = or disjoint i64 %indvars.iv108.i.i, 1 ; 2 uses
  %i.ry = trunc nuw nsw i64 %indvars.iv.next109.i.i to i32
  %i.rz = mul i32 %i.rj, %i.ry
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr [4 x i8], ptr %i.rk, i64 %i.sa ; 2 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !73
  %i.sd = call noundef float @sqrtf(float noundef %i.sc) #22
  %.idx129.i.i.1 = shl nuw nsw i64 %indvars.iv.next109.i.i, 3
  %i.se = getelementptr inbounds nuw i8, ptr %i.rl, i64 %.idx129.i.i.1 ; 2 uses
  store float %i.sd, ptr %i.se, align 4, !tbaa !73
  %i.sf = getelementptr i8, ptr %i.sb, i64 4
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !73
  %i.sh = call noundef float @sqrtf(float noundef %i.sg) #22
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  store float %i.sh, ptr %i.si, align 4, !tbaa !73
  %indvars.iv.next109.i.i.1 = or disjoint i64 %indvars.iv108.i.i, 2 ; 2 uses
  %i.sj = trunc nuw nsw i64 %indvars.iv.next109.i.i.1 to i32
  %i.sk = mul i32 %i.rj, %i.sj
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr [4 x i8], ptr %i.rk, i64 %i.sl ; 2 uses
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !73
  %i.so = call noundef float @sqrtf(float noundef %i.sn) #22
  %.idx129.i.i.2 = shl nuw nsw i64 %indvars.iv.next109.i.i.1, 3
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rl, i64 %.idx129.i.i.2 ; 2 uses
  store float %i.so, ptr %i.sp, align 4, !tbaa !73
  %i.sq = getelementptr i8, ptr %i.sm, i64 4
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !73
  %i.ss = call noundef float @sqrtf(float noundef %i.sr) #22
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  store float %i.ss, ptr %i.st, align 4, !tbaa !73
  %indvars.iv.next109.i.i.2 = or disjoint i64 %indvars.iv108.i.i, 3 ; 2 uses
  %i.su = trunc nuw nsw i64 %indvars.iv.next109.i.i.2 to i32
  %i.sv = mul i32 %i.rj, %i.su
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr [4 x i8], ptr %i.rk, i64 %i.sw ; 2 uses
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !73
  %i.sz = call noundef float @sqrtf(float noundef %i.sy) #22
  %.idx129.i.i.3 = shl nuw nsw i64 %indvars.iv.next109.i.i.2, 3
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rl, i64 %.idx129.i.i.3 ; 2 uses
  store float %i.sz, ptr %i.ta, align 4, !tbaa !73
  %i.tb = getelementptr i8, ptr %i.sx, i64 4
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !73
  %i.td = call noundef float @sqrtf(float noundef %i.tc) #22
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  store float %i.td, ptr %i.te, align 4, !tbaa !73
  %indvars.iv.next109.i.i.3 = add nuw nsw i64 %indvars.iv108.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i.loopexit.unr-lcssa, label %bb.by, !llvm.loop !207

bb.bz:                                            ; preds = %bb.cc, %.lr.ph.i.i
  %indvars.iv103.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next104.i.i, %bb.cc ] ; 4 uses
  %i.tf = trunc nuw nsw i64 %indvars.iv103.i.i to i32
  %i.tg = mul i32 %i.rg, %i.tf
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr [4 x i8], ptr %i.rh, i64 %i.th
  %i.tj = load <2 x float>, ptr %i.ti, align 4, !tbaa !73 ; 6 uses
  %i.tk = extractelement <2 x float> %i.tj, i64 0
  %i.tl = fcmp ogt float %i.tk, 0.000000e+00
  %i.tm = extractelement <2 x float> %i.tj, i64 1
  %i.tn = fcmp ogt float %i.tm, 0.000000e+00
  %or.cond.i.i = select i1 %i.tl, i1 %i.tn, i1 false
  br i1 %or.cond.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.idx128.i.i = shl nuw nsw i64 %indvars.iv103.i.i, 3
  %foldExtExtBinop227 = fmul nnan <2 x float> %i.tj, %i.tj
  %i.to = shufflevector <2 x float> %i.tj, <2 x float> %foldExtExtBinop227, <2 x i32> <i32 1, i32 2>
  %i.tp = fdiv <2 x float> %i.to, %i.tj           ; 2 uses
  %i.tq = extractelement <2 x float> %i.tp, i64 0
  %i.tr = call noundef float @cbrtf(float noundef %i.tq) #37
  %i.ts = call noundef float @sqrtf(float noundef %i.tr) #22
  %i.tt = fmul float %i.ts, 5.000000e-01
  %i.tu = load ptr, ptr %i.ce, align 8, !tbaa !71
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %.idx128.i.i ; 2 uses
  store float %i.tt, ptr %i.tv, align 4, !tbaa !73
  %i.tw = extractelement <2 x float> %i.tp, i64 1
  %i.tx = call noundef float @sqrtf(float noundef %i.tw) #22
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ty = load ptr, ptr %i.ce, align 8, !tbaa !71
  %.idx.i.i = shl nuw nsw i64 %indvars.iv103.i.i, 3
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %.idx.i.i ; 2 uses
  store float 0.000000e+00, ptr %i.tz, align 4, !tbaa !73
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sink132.i.i = phi ptr [ %i.tz, %bb.cb ], [ %i.tv, %bb.ca ]
  %.sink.i.i = phi float [ 0.000000e+00, %bb.cb ], [ %i.tx, %bb.ca ]
  %i.ua = getelementptr inbounds nuw i8, ptr %.sink132.i.i, i64 4
  store float %.sink.i.i, ptr %i.ua, align 4, !tbaa !73
  %indvars.iv.next104.i.i = add nuw nsw i64 %indvars.iv103.i.i, 1 ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %indvars.iv.next104.i.i, %wide.trip.count106.i.i
  br i1 %exitcond107.not.i.i, label %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i, label %bb.bz, !llvm.loop !208

bb.cd:                                            ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc51 unwind label %.loopexit.split-lp

.noexc51:                                         ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i8 noundef zeroext 2)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %.noexc51
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 403) #33
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %.noexc51
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ce
  %i.uc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #22
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn.i.i = phi { ptr, i32 } [ %i.uc, %bb.ch ], [ %i.ub, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ud = load ptr, ptr %10, align 8, !tbaa !125  ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.uf = icmp eq ptr %i.ud, %i.ue
  br i1 %i.uf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ci
  %i.ug = load i64, ptr %i.ue, align 8, !tbaa !129
  %i.uh = add i64 %i.ug, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.uh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body52

_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i.loopexit.unr-lcssa: ; preds = %bb.by
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i.loopexit.unr-lcssa, %.lr.ph95.i.i
  %indvars.iv108.i.i.epil.init = phi i64 [ 0, %.lr.ph95.i.i ], [ %indvars.iv.next109.i.i.3, %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter234, 0
  call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.epil.preheader
  %indvars.iv108.i.i.epil = phi i64 [ %indvars.iv108.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next109.i.i.epil, %bb.cj ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cj ]
  %i.ui = trunc nuw nsw i64 %indvars.iv108.i.i.epil to i32
  %i.uj = mul i32 %i.rj, %i.ui
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr [4 x i8], ptr %i.rk, i64 %i.uk ; 2 uses
  %i.um = load float, ptr %i.ul, align 4, !tbaa !73
  %i.un = call noundef float @sqrtf(float noundef %i.um) #22
  %.idx129.i.i.epil = shl nuw nsw i64 %indvars.iv108.i.i.epil, 3
  %i.uo = getelementptr inbounds nuw i8, ptr %i.rl, i64 %.idx129.i.i.epil ; 2 uses
  store float %i.un, ptr %i.uo, align 4, !tbaa !73
  %i.up = getelementptr i8, ptr %i.ul, i64 4
  %i.uq = load float, ptr %i.up, align 4, !tbaa !73
  %i.ur = call noundef float @sqrtf(float noundef %i.uq) #22
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  store float %i.ur, ptr %i.us, align 4, !tbaa !73
  %indvars.iv.next109.i.i.epil = add nuw nsw i64 %indvars.iv108.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter234
  br i1 %epil.iter.cmp.not, label %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i, label %bb.cj, !llvm.loop !209

_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i: ; preds = %bb.cc, %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i.loopexit.unr-lcssa, %bb.cj, %.preheader.i.i, %.preheader87.i.i, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  store i32 %8, ptr %i.ut, align 8, !tbaa !159
  br i1 %i.kl, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i
  %i.uu = icmp eq i32 %8, 1
  br i1 %i.uu, label %_ZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbi.exit, label %.invoke

bb.cl:                                            ; preds = %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i
  %i.uv = icmp sgt i32 %8, 64
  br i1 %i.uv, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i8 noundef zeroext 2)
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.cm
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 687, ptr noundef nonnull @.str.19) #33
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %.noexc55
  unreachable

bb.co:                                            ; preds = %.noexc55
  %i.uw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body52

bb.cp:                                            ; preds = %bb.cl
  %i.ux = icmp sgt i32 %8, 1
  br i1 %i.ux, label %bb.cq, label %_ZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbi.exit

bb.cq:                                            ; preds = %bb.cp
  %i.uy = icmp ult i32 %3, 8
  br i1 %i.uy, label %switch.lookup, label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit.i

switch.lookup:                                    ; preds = %bb.cq
  %i.uz = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3gmx16nbnxn_atomdata_tC2ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii, i64 %i.uz
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit.i

_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit.i: ; preds = %bb.cq, %switch.lookup
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 8, %bb.cq ]
  %i.va = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc56 unwind label %.loopexit.split-lp ; 3 uses

.noexc56:                                         ; preds = %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit.i
  invoke void @_ZN3gmx22EnergyGroupsPerClusterC1Eii(ptr noundef nonnull align 8 dereferenceable(40) %i.va, i32 noundef %8, i32 noundef %.0.i.i)
          to label %_ZSt11make_uniqueIN3gmx22EnergyGroupsPerClusterEJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i unwind label %bb.cr, !noalias !210

bb.cr:                                            ; preds = %.noexc56
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef 40) #36, !noalias !210
  br label %.body52

_ZSt11make_uniqueIN3gmx22EnergyGroupsPerClusterEJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %.noexc56
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !213 ; 3 uses
  store ptr %i.va, ptr %i.vc, align 8, !tbaa !213
  %.not.i.i.i.i.i = icmp eq ptr %i.vd, null
  br i1 %.not.i.i.i.i.i, label %_ZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbi.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZSt11make_uniqueIN3gmx22EnergyGroupsPerClusterEJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx22EnergyGroupsPerClusterEEclEPS1_.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.vf)
          to label %_ZNKSt14default_deleteIN3gmx22EnergyGroupsPerClusterEEclEPS1_.exit.i.i.i.i.i unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.vg = landingpad { ptr, i32 }
          catch ptr null
  %i.vh = extractvalue { ptr, i32 } %i.vg, 0
  call void @__clang_call_terminate(ptr %i.vh) #34
  unreachable

_ZNKSt14default_deleteIN3gmx22EnergyGroupsPerClusterEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.vd, i64 noundef 40) #36
  br label %_ZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbi.exit

_ZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbi.exit: ; preds = %_ZNKSt14default_deleteIN3gmx22EnergyGroupsPerClusterEEclEPS1_.exit.i.i.i.i.i, %_ZSt11make_uniqueIN3gmx22EnergyGroupsPerClusterEJRiiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, %bb.cp, %bb.ck
  %i.vi = load i32, ptr %i.a, align 4, !tbaa !162 ; 3 uses
  %i.vj = and i32 %i.vi, -2
  %i.vk = icmp eq i32 %i.vj, 2                    ; 2 uses
  switch i32 %i.vi, label %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit [
    i32 6, label %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.thread
    i32 1, label %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.thread
  ]

_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.thread: ; preds = %_ZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbi.exit, %_ZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbi.exit
  br i1 %i.vk, label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit, label %bb.df

_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit: ; preds = %_ZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbi.exit
  br i1 %i.vk, label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit, label %bb.df

_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit: ; preds = %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit, %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.thread
  %i.vl = icmp eq i32 %i.vi, 3
  br i1 %i.vl, label %bb.df, label %bb.cx

bb.cv:                                            ; preds = %bb.b, %bb.a
  %i.vm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.vn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit

bb.cw:                                            ; preds = %bb.d
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.loopexit:                                        ; preds = %bb.ad, %bb.ae, %bb.ak, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body52

.loopexit.split-lp:                               ; preds = %.invoke, %bb.n, %bb.r, %bb.bq, %bb.bu, %bb.cd, %bb.cm, %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.cx:                                            ; preds = %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(63) @.str.7, i8 noundef zeroext 2)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 735) #33
          to label %bb.da unwind label %bb.dd

bb.da:                                            ; preds = %bb.cz
  unreachable

bb.db:                                            ; preds = %bb.cx
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.dc:                                            ; preds = %bb.cy
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #22
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn30 = phi { ptr, i32 } [ %i.vr, %bb.dd ], [ %i.vq, %bb.dc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.vs = load ptr, ptr %20, align 8, !tbaa !125  ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.de
  %i.vv = load i64, ptr %i.vt, align 8, !tbaa !129
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.db
  %.pn30.pn = phi { ptr, i32 } [ %i.vp, %bb.db ], [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn30, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %.body52

bb.df:                                            ; preds = %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit, %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit, %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.thread
  %.sink175 = phi i32 [ 0, %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.thread ], [ 3, %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit ], [ 1, %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit ] ; 3 uses
  %i.vx = phi <2 x i32> [ zeroinitializer, %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.thread ], [ splat (i32 3), %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit ], [ <i32 1, i32 0>, %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit ]
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <2 x i32> %i.vx, ptr %i.vy, align 8, !tbaa !109
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !216 ; 2 uses
  %i.wc = load ptr, ptr %i.vz, align 8, !tbaa !217 ; 2 uses
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = ptrtoint ptr %i.wc to i64
  %i.wf = sub i64 %i.wd, %i.we                    ; 2 uses
  %i.wg = sdiv exact i64 %i.wf, 12                ; 2 uses
  %i.wh = icmp ult i64 %i.wg, 45
  br i1 %i.wh, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.wi = sub nuw nsw i64 45, %i.wg
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.wi)
          to label %._ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit_crit_edge unwind label %bb.dk

._ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit_crit_edge: ; preds = %bb.dg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !218
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %0, i64 420
  %.pre94 = load i32, ptr %.phi.trans.insert93, align 4, !tbaa !219
  %i.wj = icmp eq i32 %.pre94, 1
  %i.wk = select i1 %i.wj, i32 4, i32 3
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit

bb.dh:                                            ; preds = %bb.df
  %.not = icmp eq i64 %i.wf, 540
  br i1 %.not, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wc, i64 540 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.wb, %i.wl
  br i1 %.not.i.i60, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store ptr %i.wl, ptr %i.wa, align 8, !tbaa !216
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit: ; preds = %._ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit_crit_edge, %bb.dj, %bb.di, %bb.dh
  %i.wm = phi i32 [ %i.wk, %._ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit_crit_edge ], [ 3, %bb.dj ], [ 3, %bb.di ], [ 3, %bb.dh ]
  %i.wn = phi i32 [ %.pre, %._ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit_crit_edge ], [ %.sink175, %bb.dj ], [ %.sink175, %bb.di ], [ %.sink175, %bb.dh ]
  %i.wo = icmp eq i32 %i.wn, 1
  %i.wp = select i1 %i.wo, i32 4, i32 3
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 %i.wp, ptr %i.wq, align 8, !tbaa !69
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 %i.wm, ptr %i.wr, align 4, !tbaa !90
  %i.ws = icmp sgt i32 %9, 0
  br i1 %i.ws, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 616
  br label %bb.dl

._crit_edge:                                      ; preds = %_ZNSt6vectorIN3gmx23nbnxn_atomdata_output_tESaIS1_EE12emplace_backIJRKNS0_15NbnxmKernelTypeERKiRKNS0_13PinningPolicyEEEERS1_DpOT_.exit, %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE6resizeEm.exit
  %i.ww = load ptr, ptr %i.m, align 8, !tbaa !220 ; 2 uses
end_hunk_0
