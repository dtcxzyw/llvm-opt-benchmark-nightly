Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_current?download=true
inline.NumInlined: 251
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z11gmx_currentiPPc:bb.a
  br i1 %.not.i.i.i201, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i202, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.qg, ptr noundef nonnull %i.qh) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i202

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i202: ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.qi = load ptr, ptr %28, align 8, !tbaa !28   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i202
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !31
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit205

_ZNSt10filesystem7__cxx114pathD2Ev.exit205:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.qn = load i8, ptr @_ZZ11gmx_currentiPPcE7bNoJump, align 1, !tbaa !94, !range !89, !noundef !90
  %i.qo = trunc nuw i8 %i.qn to i1                ; 3 uses
  %i.qp = load i32, ptr %i.s, align 4, !tbaa !10  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2464) %4, ptr noundef nonnull align 8 dereferenceable(2464) %8, i64 2464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(176) %9, i64 176, i1 false)
  %i.qq = load float, ptr @_ZZ11gmx_currentiPPcE4temp, align 4, !tbaa !55
  %i.qr = load float, ptr @_ZZ11gmx_currentiPPcE4bfit, align 4, !tbaa !55 ; 2 uses
  %i.qs = load float, ptr @_ZZ11gmx_currentiPPcE4efit, align 4, !tbaa !55 ; 2 uses
  %i.qt = load float, ptr @_ZZ11gmx_currentiPPcE4bvit, align 4, !tbaa !55
  %i.qu = load float, ptr @_ZZ11gmx_currentiPPcE4evit, align 4, !tbaa !55
  %i.qv = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.qw = load i32, ptr %i.q, align 4, !tbaa !9   ; 4 uses
  %i.qx = load i32, ptr @_ZZ11gmx_currentiPPcE6nshift, align 4, !tbaa !9 ; 4 uses
  %i.qy = load ptr, ptr %i.p, align 8, !tbaa !54  ; 4 uses
  %i.qz = load float, ptr @_ZZ11gmx_currentiPPcE6eps_rf, align 4, !tbaa !55 ; 5 uses
  %i.ra = load ptr, ptr %i.n, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !55
  %i.rb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !97
  %i.re = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.rb, i32 noundef %i.qp, i32 noundef %i.rd)
          to label %.noexc214 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc214:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit205
  %i.rf = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 148 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 2424
  %i.rn = icmp sgt i32 %.035.lcssa.i, 0
  %i.ro = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %wide.trip.count16.i.i = zext nneg i32 %.035.lcssa.i to i64
  %i.rq = icmp sgt i32 %i.qw, 0                   ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %4, i64 2352
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.rt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %or.cond.i = or i1 %i.bt, %i.bu
  %i.ru = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.rv = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 124
  %wide.trip.count598.i = zext i32 %i.qw to i64   ; 3 uses
  %xtraiter880 = and i64 %wide.trip.count598.i, 1
  %i.rx = icmp eq i32 %i.qw, 1
  %unroll_iter = and i64 %wide.trip.count598.i, 2147483646
  %lcmp.mod881.not = icmp eq i64 %xtraiter880, 0
  %lcmp.mod882 = trunc i32 %i.qw to i1
  br label %bb.ca

bb.ca:                                            ; preds = %.noexc231, %.noexc214
  %indvar.i = phi i64 [ %indvar.next.i, %.noexc231 ], [ 0, %.noexc214 ] ; 20 uses
  %.0501.i = phi ptr [ %.2503.i, %.noexc231 ], [ null, %.noexc214 ] ; 4 uses
  %.0499.i = phi ptr [ %.1500.i, %.noexc231 ], [ null, %.noexc214 ] ; 2 uses
  %.0495.i = phi ptr [ %.3498.i, %.noexc231 ], [ null, %.noexc214 ] ; 4 uses
  %.0493.i = phi ptr [ %.1494.i, %.noexc231 ], [ null, %.noexc214 ] ; 2 uses
  %.0490.i = phi ptr [ %.2492.i, %.noexc231 ], [ null, %.noexc214 ] ; 5 uses
  %.0487.i = phi ptr [ %.2489.i, %.noexc231 ], [ null, %.noexc214 ] ; 3 uses
  %.0485.i = phi ptr [ %.1486.i, %.noexc231 ], [ null, %.noexc214 ] ; 2 uses
  %.0483.i = phi ptr [ %.1484.i, %.noexc231 ], [ null, %.noexc214 ] ; 2 uses
  %.0481.i = phi ptr [ %.1482.i, %.noexc231 ], [ null, %.noexc214 ] ; 2 uses
  %.0478.i = phi ptr [ %.2480.i, %.noexc231 ], [ null, %.noexc214 ] ; 3 uses
  %.0476.i = phi ptr [ %.1477.i, %.noexc231 ], [ null, %.noexc214 ] ; 2 uses
  %.0308.i = phi i32 [ %.2310.i, %.noexc231 ], [ 0, %.noexc214 ] ; 4 uses
  %.0306.i = phi i32 [ %.1307.i, %.noexc231 ], [ 0, %.noexc214 ] ; 4 uses
  %.0303.i = phi i32 [ %.1304.i, %.noexc231 ], [ 0, %.noexc214 ] ; 8 uses
  %.0300.i = phi float [ %i.anv, %.noexc231 ], [ 0.000000e+00, %.noexc214 ]
  %.0299.i = phi float [ %i.aly, %.noexc231 ], [ 0.000000e+00, %.noexc214 ]
  %.0298.i = phi float [ %i.ani, %.noexc231 ], [ 0.000000e+00, %.noexc214 ]
  %.0297.i = phi float [ %i.amd, %.noexc231 ], [ 0.000000e+00, %.noexc214 ]
  %.0294.i = phi float [ %.1295.i, %.noexc231 ], [ 0.000000e+00, %.noexc214 ]
  %.0292.i = phi i32 [ %.1293.i, %.noexc231 ], [ 0, %.noexc214 ]
  %.0290.i = phi i32 [ %.1291.i, %.noexc231 ], [ 0, %.noexc214 ]
  %.0287.i = phi i32 [ %.2289.i, %.noexc231 ], [ 0, %.noexc214 ] ; 2 uses
  %.0.i = phi i32 [ %.2.i, %.noexc231 ], [ 0, %.noexc214 ] ; 2 uses
  %i.ry = phi <2 x float> [ %i.alt, %.noexc231 ], [ zeroinitializer, %.noexc214 ]
  %i.rz = phi <2 x float> [ %i.alo, %.noexc231 ], [ zeroinitializer, %.noexc214 ]
  %i.sa = phi <2 x float> [ %i.alq, %.noexc231 ], [ zeroinitializer, %.noexc214 ]
  %i.sb = shl i64 %indvar.i, 2
  %i.sc = add i64 %i.sb, 4                        ; 2 uses
  %i.sd = mul i64 %indvar.i, 12
  %i.se = shl nsw i64 %indvar.i, 2                ; 2 uses
  %i.sf = trunc nsw i64 %indvar.i to i32          ; 5 uses
  %i.sg = mul nuw nsw i64 %indvar.i, 12           ; 3 uses
  %indvar.next.i = add nuw i64 %indvar.i, 1       ; 5 uses
  %i.sh = trunc nsw i64 %indvar.next.i to i32     ; 3 uses
  %i.si = uitofp nneg i32 %i.sh to float          ; 6 uses
  %i.sj = sext i32 %.0306.i to i64
  %.not.i = icmp slt i64 %indvar.i, %i.sj
  br i1 %.not.i, label %.loopexit507.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sk = add nsw i32 %.0306.i, 100               ; 3 uses
  %i.sl = sext i32 %i.sk to i64                   ; 7 uses
  %i.sm = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.59, i32 noundef 466, ptr noundef %.0499.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 4)
          to label %.noexc215 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc215:                                        ; preds = %bb.cb
  %i.sn = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.59, i32 noundef 467, ptr noundef %.0493.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 12)
          to label %.noexc216 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc216:                                        ; preds = %.noexc215
  %i.so = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.59, i32 noundef 468, ptr noundef %.0485.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 12)
          to label %.noexc217 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc217:                                        ; preds = %.noexc216
  %i.sp = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.59, i32 noundef 469, ptr noundef %.0483.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 4)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc218:                                        ; preds = %.noexc217
  %i.sq = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.59, i32 noundef 470, ptr noundef %.0481.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 12)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc219:                                        ; preds = %.noexc218
  %i.sr = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.59, i32 noundef 471, ptr noundef %.0476.i, i64 noundef range(i64 -2147483548, 2147483648) %i.sl, i64 noundef 4)
          to label %.noexc220 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc220:                                        ; preds = %.noexc219
  %i.ss = icmp slt i64 %indvar.i, %i.sl
  br i1 %i.ss, label %.lr.ph.preheader.i213, label %.loopexit507.i

.lr.ph.preheader.i213:                            ; preds = %.noexc220
  %scevgep.i = getelementptr i8, ptr %i.so, i64 %i.sg
  %reass.sub = sub i32 %.0306.i, %i.sf
  %i.st = add i32 %reass.sub, 99
  %i.su = zext i32 %i.st to i64                   ; 2 uses
  %i.sv = mul nuw nsw i64 %i.su, 12
  %i.sw = add nuw nsw i64 %i.sv, 12               ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.sw, i1 false), !tbaa !55
  %scevgep589.i = getelementptr i8, ptr %i.sn, i64 %i.sg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep589.i, i8 0, i64 %i.sw, i1 false), !tbaa !55
  %scevgep590.i = getelementptr i8, ptr %i.sq, i64 %i.sg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep590.i, i8 0, i64 %i.sw, i1 false), !tbaa !55
  %scevgep591.i = getelementptr i8, ptr %i.sp, i64 %i.se
  %i.sx = shl nuw nsw i64 %i.su, 2
  %i.sy = add nuw nsw i64 %i.sx, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep591.i, i8 0, i64 %i.sy, i1 false), !tbaa !55
  %scevgep592.i = getelementptr i8, ptr %i.sr, i64 %i.se
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep592.i, i8 0, i64 %i.sy, i1 false), !tbaa !55
  br label %.loopexit507.i

.loopexit507.i:                                   ; preds = %.lr.ph.preheader.i213, %.noexc220, %bb.ca
  %.1500.i = phi ptr [ %.0499.i, %bb.ca ], [ %i.sm, %.noexc220 ], [ %i.sm, %.lr.ph.preheader.i213 ] ; 20 uses
  %.1494.i = phi ptr [ %.0493.i, %bb.ca ], [ %i.sn, %.noexc220 ], [ %i.sn, %.lr.ph.preheader.i213 ] ; 5 uses
  %.1486.i = phi ptr [ %.0485.i, %bb.ca ], [ %i.so, %.noexc220 ], [ %i.so, %.lr.ph.preheader.i213 ] ; 2 uses
  %.1484.i = phi ptr [ %.0483.i, %bb.ca ], [ %i.sp, %.noexc220 ], [ %i.sp, %.lr.ph.preheader.i213 ] ; 16 uses
  %.1482.i = phi ptr [ %.0481.i, %bb.ca ], [ %i.sq, %.noexc220 ], [ %i.sq, %.lr.ph.preheader.i213 ] ; 7 uses
  %.1477.i = phi ptr [ %.0476.i, %bb.ca ], [ %i.sr, %.noexc220 ], [ %i.sr, %.lr.ph.preheader.i213 ] ; 8 uses
  %.1307.i = phi i32 [ %.0306.i, %bb.ca ], [ %i.sk, %.noexc220 ], [ %i.sk, %.lr.ph.preheader.i213 ]
  %.not320.i = icmp eq ptr %.1500.i, null
  br i1 %.not320.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.loopexit507.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL10dielectricP8_IO_FILES0_S0_S0_S0_S0_bbb7PbcType10t_topology10t_trxframefffffP11t_trxstatusiiiPKiPiPfS9_fPK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.59, i32 noundef 482) #20
          to label %.noexc221 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc221:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %.loopexit507.i
  %i.sz = icmp eq i64 %indvar.i, 0
  %i.ta = load float, ptr %i.rf, align 4          ; 2 uses
  %.1295.i = select i1 %i.sz, float %i.ta, float %.0294.i ; 2 uses
  %i.tb = fsub float %i.ta, %.1295.i              ; 3 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %indvar.i ; 5 uses
  store float %i.tb, ptr %i.tc, align 4, !tbaa !55
  %i.td = fcmp ugt float %i.tb, %i.qr
  %.1293.i = select i1 %i.td, i32 %.0292.i, i32 %i.sf ; 4 uses
  %i.te = fcmp ugt float %i.tb, %i.qs
  %.1291.i = select i1 %i.te, i32 %.0290.i, i32 %i.sf ; 5 uses
  br i1 %i.qo, label %bb.ce, label %.loopexit506.i

bb.ce:                                            ; preds = %bb.cd
  %.not321.i = icmp eq ptr %.0490.i, null
  %i.tf = load i32, ptr %i.rc, align 8, !tbaa !97 ; 4 uses
  br i1 %.not321.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tg = load ptr, ptr %i.rh, align 8, !tbaa !98
  %i.th = load float, ptr %i.rg, align 4, !tbaa !55
  %i.ti = fmul float %i.th, 5.000000e-01          ; 3 uses
  %i.tj = load float, ptr %i.rj, align 4, !tbaa !55
  %i.tk = fmul float %i.tj, 5.000000e-01          ; 3 uses
  %i.tl = load float, ptr %i.rl, align 4, !tbaa !55
  %i.tm = fmul float %i.tl, 5.000000e-01          ; 3 uses
  %i.tn = icmp sgt i32 %i.tf, 0
  br i1 %i.tn, label %.preheader49.preheader.i.i, label %.loopexit506.i

.preheader49.preheader.i.i:                       ; preds = %bb.cf
  %wide.trip.count.i.i = zext nneg i32 %i.tf to i64
  %i.to = fneg float %i.tm                        ; 2 uses
  %i.tp = fneg float %i.tk                        ; 2 uses
  %i.tq = fneg float %i.ti                        ; 2 uses
  br label %.preheader49.i.i

.preheader49.i.i:                                 ; preds = %._crit_edge.2.i.i, %.preheader49.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader49.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.2.i.i ] ; 3 uses
  %i.tr = getelementptr inbounds nuw [12 x i8], ptr %i.tg, i64 %indvars.iv.i.i ; 14 uses
  %i.ts = getelementptr inbounds nuw [12 x i8], ptr %.0490.i, i64 %indvars.iv.i.i ; 5 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 3 uses
  %i.tv = load float, ptr %i.tt, align 4, !tbaa !55 ; 3 uses
  %i.tw = load float, ptr %i.tu, align 4, !tbaa !55
  %i.tx = fsub float %i.tv, %i.tw                 ; 2 uses
  %i.ty = fcmp ugt float %i.tx, %i.to
  br i1 %i.ty, label %.preheader47.i.i, label %.preheader45.lr.ph.i.i

.preheader45.lr.ph.i.i:                           ; preds = %.preheader49.i.i
  %.pre.i.i = load float, ptr %i.tr, align 4, !tbaa !55
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 4 ; 2 uses
  %.pre96.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !55
  br label %.preheader45.i.i

.preheader47.i.i:                                 ; preds = %.preheader45.i.i, %.preheader49.i.i
  %.pre-phi.i.i = phi float [ %i.tx, %.preheader49.i.i ], [ %i.ul, %.preheader45.i.i ]
  %i.tz = phi float [ %i.tv, %.preheader49.i.i ], [ %i.uj, %.preheader45.i.i ]
  %i.ua = fcmp ogt float %.pre-phi.i.i, %i.tm
  br i1 %i.ua, label %.preheader.lr.ph.i.i, label %.preheader47.._crit_edge_crit_edge.i.i

.preheader47.._crit_edge_crit_edge.i.i:           ; preds = %.preheader47.i.i
  %.phi.trans.insert100.i.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %.pre101.i.i = load float, ptr %.phi.trans.insert100.i.i, align 4, !tbaa !55
  %.pre104.pre.pre.i.i = load float, ptr %i.tr, align 4, !tbaa !55
  br label %._crit_edge.i.i207

.preheader.lr.ph.i.i:                             ; preds = %.preheader47.i.i
  %.pre97.i.i = load float, ptr %i.tr, align 4, !tbaa !55
  %.phi.trans.insert98.i.i = getelementptr inbounds nuw i8, ptr %i.tr, i64 4 ; 2 uses
  %.pre99.i.i = load float, ptr %.phi.trans.insert98.i.i, align 4, !tbaa !55
  br label %.preheader.i.i

.preheader45.i.i:                                 ; preds = %.preheader45.i.i, %.preheader45.lr.ph.i.i
  %i.ub = phi float [ %i.tv, %.preheader45.lr.ph.i.i ], [ %i.uj, %.preheader45.i.i ]
  %i.uc = phi float [ %.pre96.i.i, %.preheader45.lr.ph.i.i ], [ %i.uh, %.preheader45.i.i ]
  %i.ud = phi float [ %.pre.i.i, %.preheader45.lr.ph.i.i ], [ %i.uf, %.preheader45.i.i ]
  %i.ue = load float, ptr %i.rk, align 4, !tbaa !55
  %i.uf = fadd float %i.ud, %i.ue                 ; 2 uses
  store float %i.uf, ptr %i.tr, align 4, !tbaa !55
  %i.ug = load float, ptr %i.rm, align 8, !tbaa !55
  %i.uh = fadd float %i.uc, %i.ug                 ; 2 uses
  store float %i.uh, ptr %.phi.trans.insert.i.i, align 4, !tbaa !55
  %i.ui = load float, ptr %i.rl, align 4, !tbaa !55
  %i.uj = fadd float %i.ub, %i.ui                 ; 4 uses
  store float %i.uj, ptr %i.tt, align 4, !tbaa !55
  %i.uk = load float, ptr %i.tu, align 4, !tbaa !55
  %i.ul = fsub float %i.uj, %i.uk                 ; 2 uses
  %i.um = fcmp ugt float %i.ul, %i.to
  br i1 %i.um, label %.preheader47.i.i, label %.preheader45.i.i, !llvm.loop !99

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.lr.ph.i.i
  %i.un = phi float [ %i.tz, %.preheader.lr.ph.i.i ], [ %i.uv, %.preheader.i.i ]
  %i.uo = phi float [ %.pre99.i.i, %.preheader.lr.ph.i.i ], [ %i.ut, %.preheader.i.i ]
  %i.up = phi float [ %.pre97.i.i, %.preheader.lr.ph.i.i ], [ %i.ur, %.preheader.i.i ]
  %i.uq = load float, ptr %i.rk, align 4, !tbaa !55
  %i.ur = fsub float %i.up, %i.uq                 ; 3 uses
  store float %i.ur, ptr %i.tr, align 4, !tbaa !55
  %i.us = load float, ptr %i.rm, align 8, !tbaa !55
  %i.ut = fsub float %i.uo, %i.us                 ; 3 uses
  store float %i.ut, ptr %.phi.trans.insert98.i.i, align 4, !tbaa !55
  %i.uu = load float, ptr %i.rl, align 4, !tbaa !55
  %i.uv = fsub float %i.un, %i.uu                 ; 3 uses
  store float %i.uv, ptr %i.tt, align 4, !tbaa !55
  %i.uw = load float, ptr %i.tu, align 4, !tbaa !55
  %i.ux = fsub float %i.uv, %i.uw
  %i.uy = fcmp ogt float %i.ux, %i.tm
  br i1 %i.uy, label %.preheader.i.i, label %._crit_edge.i.i207, !llvm.loop !100

._crit_edge.i.i207:                               ; preds = %.preheader.i.i, %.preheader47.._crit_edge_crit_edge.i.i
  %.pre104.pre.i.i = phi float [ %.pre104.pre.pre.i.i, %.preheader47.._crit_edge_crit_edge.i.i ], [ %i.ur, %.preheader.i.i ] ; 2 uses
  %i.uz = phi float [ %.pre101.i.i, %.preheader47.._crit_edge_crit_edge.i.i ], [ %i.ut, %.preheader.i.i ] ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.tr, i64 4 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ts, i64 4 ; 3 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !55
  %i.vd = fsub float %i.uz, %i.vc                 ; 2 uses
  %i.ve = fcmp ugt float %i.vd, %i.tp
  br i1 %i.ve, label %.preheader47.1.i.i, label %.preheader45.1.i.i

.preheader45.1.i.i:                               ; preds = %._crit_edge.i.i207, %.preheader45.1.i.i
  %i.vf = phi float [ %i.vk, %.preheader45.1.i.i ], [ %i.uz, %._crit_edge.i.i207 ]
  %i.vg = phi float [ %i.vi, %.preheader45.1.i.i ], [ %.pre104.pre.i.i, %._crit_edge.i.i207 ]
  %i.vh = load float, ptr %i.ri, align 8, !tbaa !55
  %i.vi = fadd float %i.vg, %i.vh                 ; 3 uses
  store float %i.vi, ptr %i.tr, align 4, !tbaa !55
  %i.vj = load float, ptr %i.rj, align 4, !tbaa !55
  %i.vk = fadd float %i.vf, %i.vj                 ; 4 uses
  store float %i.vk, ptr %i.va, align 4, !tbaa !55
  %i.vl = load float, ptr %i.vb, align 4, !tbaa !55
  %i.vm = fsub float %i.vk, %i.vl                 ; 2 uses
  %i.vn = fcmp ugt float %i.vm, %i.tp
  br i1 %i.vn, label %.preheader47.1.i.i, label %.preheader45.1.i.i, !llvm.loop !99

.preheader47.1.i.i:                               ; preds = %.preheader45.1.i.i, %._crit_edge.i.i207
  %.pre-phi107.i.i = phi float [ %i.vd, %._crit_edge.i.i207 ], [ %i.vm, %.preheader45.1.i.i ]
  %.pre104.i.i = phi float [ %.pre104.pre.i.i, %._crit_edge.i.i207 ], [ %i.vi, %.preheader45.1.i.i ] ; 2 uses
  %i.vo = phi float [ %i.uz, %._crit_edge.i.i207 ], [ %i.vk, %.preheader45.1.i.i ]
  %i.vp = fcmp ogt float %.pre-phi107.i.i, %i.tk
  br i1 %i.vp, label %.preheader.1.i.i, label %._crit_edge.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader47.1.i.i, %.preheader.1.i.i
  %i.vq = phi float [ %i.vv, %.preheader.1.i.i ], [ %i.vo, %.preheader47.1.i.i ]
  %i.vr = phi float [ %i.vt, %.preheader.1.i.i ], [ %.pre104.i.i, %.preheader47.1.i.i ]
  %i.vs = load float, ptr %i.ri, align 8, !tbaa !55
  %i.vt = fsub float %i.vr, %i.vs                 ; 3 uses
  store float %i.vt, ptr %i.tr, align 4, !tbaa !55
  %i.vu = load float, ptr %i.rj, align 4, !tbaa !55
  %i.vv = fsub float %i.vq, %i.vu                 ; 3 uses
  store float %i.vv, ptr %i.va, align 4, !tbaa !55
  %i.vw = load float, ptr %i.vb, align 4, !tbaa !55
  %i.vx = fsub float %i.vv, %i.vw
  %i.vy = fcmp ogt float %i.vx, %i.tk
  br i1 %i.vy, label %.preheader.1.i.i, label %._crit_edge.1.i.i, !llvm.loop !100

._crit_edge.1.i.i:                                ; preds = %.preheader.1.i.i, %.preheader47.1.i.i
  %i.vz = phi float [ %.pre104.i.i, %.preheader47.1.i.i ], [ %i.vt, %.preheader.1.i.i ] ; 3 uses
  %i.wa = load float, ptr %i.ts, align 4, !tbaa !55
  %i.wb = fsub float %i.vz, %i.wa                 ; 2 uses
  %i.wc = fcmp ugt float %i.wb, %i.tq
  br i1 %i.wc, label %.preheader47.2.i.i, label %.preheader45.2.i.i

.preheader45.2.i.i:                               ; preds = %._crit_edge.1.i.i, %.preheader45.2.i.i
  %i.wd = phi float [ %i.wf, %.preheader45.2.i.i ], [ %i.vz, %._crit_edge.1.i.i ]
  %i.we = load float, ptr %i.rg, align 4, !tbaa !55
  %i.wf = fadd float %i.wd, %i.we                 ; 4 uses
  store float %i.wf, ptr %i.tr, align 4, !tbaa !55
  %i.wg = load float, ptr %i.ts, align 4, !tbaa !55
  %i.wh = fsub float %i.wf, %i.wg                 ; 2 uses
  %i.wi = fcmp ugt float %i.wh, %i.tq
  br i1 %i.wi, label %.preheader47.2.i.i, label %.preheader45.2.i.i, !llvm.loop !99

.preheader47.2.i.i:                               ; preds = %.preheader45.2.i.i, %._crit_edge.1.i.i
  %.pre-phi108.i.i = phi float [ %i.wb, %._crit_edge.1.i.i ], [ %i.wh, %.preheader45.2.i.i ]
  %i.wj = phi float [ %i.vz, %._crit_edge.1.i.i ], [ %i.wf, %.preheader45.2.i.i ]
  %i.wk = fcmp ogt float %.pre-phi108.i.i, %i.ti
  br i1 %i.wk, label %.preheader.2.i.i, label %._crit_edge.2.i.i

.preheader.2.i.i:                                 ; preds = %.preheader47.2.i.i, %.preheader.2.i.i
  %i.wl = phi float [ %i.wn, %.preheader.2.i.i ], [ %i.wj, %.preheader47.2.i.i ]
  %i.wm = load float, ptr %i.rg, align 4, !tbaa !55
  %i.wn = fsub float %i.wl, %i.wm                 ; 3 uses
  store float %i.wn, ptr %i.tr, align 4, !tbaa !55
  %i.wo = load float, ptr %i.ts, align 4, !tbaa !55
  %i.wp = fsub float %i.wn, %i.wo
  %i.wq = fcmp ogt float %i.wp, %i.ti
  br i1 %i.wq, label %.preheader.2.i.i, label %._crit_edge.2.i.i, !llvm.loop !100

._crit_edge.2.i.i:                                ; preds = %.preheader.2.i.i, %.preheader47.2.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL11remove_jumpPA3_fiS0_S0_.exit.i, label %.preheader49.i.i, !llvm.loop !101

bb.cg:                                            ; preds = %bb.ce
  %i.wr = sext i32 %i.tf to i64
  %i.ws = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.59, i32 noundef 509, i64 noundef range(i64 -2147483648, 2147483648) %i.wr, i64 noundef 12)
          to label %.noexc222 unwind label %.loopexit.split-lp.loopexit

.noexc222:                                        ; preds = %bb.cg
  %.pre.i212 = load i32, ptr %i.rc, align 8, !tbaa !97
  br label %_ZL11remove_jumpPA3_fiS0_S0_.exit.i

_ZL11remove_jumpPA3_fiS0_S0_.exit.i:              ; preds = %._crit_edge.2.i.i, %.noexc222
  %i.wt = phi i32 [ %.pre.i212, %.noexc222 ], [ %i.tf, %._crit_edge.2.i.i ] ; 3 uses
  %.1491.i = phi ptr [ %i.ws, %.noexc222 ], [ %.0490.i, %._crit_edge.2.i.i ] ; 12 uses
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %.lr.ph543.i, label %.loopexit506.i

.lr.ph543.i:                                      ; preds = %_ZL11remove_jumpPA3_fiS0_S0_.exit.i
  %i.wv = load ptr, ptr %i.rh, align 8, !tbaa !98 ; 8 uses
  %wide.trip.count.i208 = zext nneg i32 %i.wt to i64 ; 6 uses
end_hunk_0
begin_hunk_1_@_Z11gmx_currentiPPc:bb.a
  %indvars.iv.next614.i = add nsw i64 %indvars.iv613.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next614.i to i32
  %exitcond617.not.i = icmp eq i32 %i.aqs, %lftr.wideiv.i
  br i1 %exitcond617.not.i, label %bb.dl, label %bb.dk, !llvm.loop !133

bb.dl:                                            ; preds = %bb.dk
  invoke void @_Z10lsq_y_ax_biPfS_S_S_S_S_(i32 noundef %i.aqm, ptr noundef nonnull %i.aqp, ptr noundef nonnull %i.aqq, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d)
          to label %.noexc235 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc235:                                        ; preds = %bb.dl
  %i.arg = load float, ptr %i.f, align 4, !tbaa !55
  %i.arh = call noundef float @expf(float noundef %i.arg) #18
  %i.ari = load float, ptr %i.e, align 4, !tbaa !55
  %i.arj = fadd float %i.ari, 1.000000e+00        ; 2 uses
  store float %i.arj, ptr %i.e, align 4, !tbaa !55
  %i.ark = fmul double %i.aog, 2.000000e+12
  %i.arl = fpext float %i.arj to double
  %i.arm = fdiv double %i.ark, %i.arl
  %i.arn = fpext float %i.arh to double
  %i.aro = fmul double %i.arm, %i.arn
  %i.arp = fptrunc double %i.aro to float
  store float %i.arp, ptr %i.f, align 4, !tbaa !55
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.59, i32 noundef 718, ptr noundef nonnull %i.aqp)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %.noexc235
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.59, i32 noundef 719, ptr noundef nonnull %i.aqq)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc237:                                        ; preds = %.noexc236, %bb.di, %bb.dh, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i
  %.1302.i = phi float [ 0.000000e+00, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i ], [ %.0301.i, %bb.di ], [ %.0301.i, %bb.dh ], [ %.0301.i, %.noexc236 ] ; 2 uses
  %.0296.i = phi float [ 0.000000e+00, %_ZL10calc_mjdspP8_IO_FILEfPfS1_iPKf.exit.i ], [ %i.aqk, %bb.di ], [ 0.000000e+00, %bb.dh ], [ %i.aqk, %.noexc236 ] ; 2 uses
  %i.arq = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.arr = call i64 @fwrite(ptr nonnull @.str.105, i64 46, i64 1, ptr %i.arq) #22 ; 0 uses
  %i.ars = fadd float %i.amg, %i.amm
  %i.art = fpext float %i.ars to double
  %i.aru = fpext float %i.apa to double           ; 2 uses
  %i.arv = call double @llvm.fmuladd.f64(double %i.aru, double 2.000000e+00, double %i.art)
  %.0.i.i = fptrunc double %i.arv to float        ; 2 uses
  %i.arw = fcmp oeq float %i.qz, 0.000000e+00     ; 4 uses
  br i1 %i.arw, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.noexc237
  %i.arx = fmul float %i.aoz, %.0.i.i
  %i.ary = fadd float %i.arx, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit.i

bb.dn:                                            ; preds = %.noexc237
  %i.arz = fpext float %i.qz to double            ; 2 uses
  %i.asa = call double @llvm.fmuladd.f64(double %i.arz, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.asb = fmul double %i.arz, 2.000000e+00
  %i.asc = fpext float %i.aoz to double
  %i.asd = fmul double %i.asb, %i.asc
  %i.ase = fpext float %.0.i.i to double
  %i.asf = call double @llvm.fmuladd.f64(double %i.asd, double %i.ase, double %i.asa)
  %i.asg = fptrunc double %i.asf to float         ; 2 uses
  %i.ash = fmul float %i.aoz, %i.asg
  %i.asi = fpext float %i.ash to double
  %i.asj = fsub double %i.asa, %i.asi
  %i.ask = fpext float %i.asg to double
  %i.asl = fdiv double %i.ask, %i.asj
  %i.asm = fptrunc double %i.asl to float
  br label %_ZL7calcepsfffffb.exit.i

_ZL7calcepsfffffb.exit.i:                         ; preds = %bb.dn, %bb.dm
  %.1.i.i = phi float [ %i.ary, %bb.dm ], [ %i.asm, %bb.dn ]
  %i.asn = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.aso = fpext float %.1.i.i to double
  %i.asp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.asn, ptr noundef nonnull @.str.106, double noundef %i.aso) #21 ; 0 uses
  %i.asq = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.asr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.asq, ptr noundef nonnull @.str.107, double noundef %i.amn, double noundef %i.amh, double noundef %i.aru) #21 ; 0 uses
  %i.ass = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.ast = call i64 @fwrite(ptr nonnull @.str.108, i64 45, i64 1, ptr %i.ass) #22 ; 0 uses
  %i.asu = fsub float %i.amm, %i.apq              ; 2 uses
  %i.asv = fsub float %i.amg, %i.apt              ; 2 uses
  %i.asw = fsub float %i.apa, %i.apw
  %i.asx = fadd float %i.asv, %i.asu
  %i.asy = fpext float %i.asx to double
  %i.asz = fpext float %i.asw to double           ; 2 uses
  %i.ata = call double @llvm.fmuladd.f64(double %i.asz, double 2.000000e+00, double %i.asy)
  %.0.i342.i = fptrunc double %i.ata to float     ; 2 uses
  br i1 %i.arw, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZL7calcepsfffffb.exit.i
  %i.atb = fmul float %i.aoz, %.0.i342.i
  %i.atc = fadd float %i.atb, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit344.i

bb.dp:                                            ; preds = %_ZL7calcepsfffffb.exit.i
  %i.atd = fpext float %i.qz to double            ; 2 uses
  %i.ate = call double @llvm.fmuladd.f64(double %i.atd, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.atf = fmul double %i.atd, 2.000000e+00
  %i.atg = fpext float %i.aoz to double
  %i.ath = fmul double %i.atf, %i.atg
  %i.ati = fpext float %.0.i342.i to double
  %i.atj = call double @llvm.fmuladd.f64(double %i.ath, double %i.ati, double %i.ate)
  %i.atk = fptrunc double %i.atj to float         ; 2 uses
  %i.atl = fmul float %i.aoz, %i.atk
  %i.atm = fpext float %i.atl to double
  %i.atn = fsub double %i.ate, %i.atm
  %i.ato = fpext float %i.atk to double
  %i.atp = fdiv double %i.ato, %i.atn
  %i.atq = fptrunc double %i.atp to float
  br label %_ZL7calcepsfffffb.exit344.i

_ZL7calcepsfffffb.exit344.i:                      ; preds = %bb.dp, %bb.do
  %.1.i343.i = phi float [ %i.atc, %bb.do ], [ %i.atq, %bb.dp ]
  %i.atr = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.ats = fpext float %.1.i343.i to double
  %i.att = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atr, ptr noundef nonnull @.str.109, double noundef %i.ats) #21 ; 0 uses
  %i.atu = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.atv = fpext float %i.asu to double           ; 2 uses
  %i.atw = fpext float %i.asv to double           ; 2 uses
  %i.atx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.atu, ptr noundef nonnull @.str.110, double noundef %i.atv, double noundef %i.atw, double noundef %i.asz) #21 ; 0 uses
  %i.aty = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.atz = call i64 @fwrite(ptr nonnull @.str.105, i64 46, i64 1, ptr %i.aty) #22 ; 0 uses
  br i1 %i.bu, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %_ZL7calcepsfffffb.exit344.i
  %i.aua = fpext float %.1302.i to double         ; 2 uses
  %i.aub = call double @llvm.fmuladd.f64(double %i.aua, double -2.000000e+00, double %i.atv)
  %i.auc = fadd double %i.aub, %i.atw
  %.0.i345.i = fptrunc double %i.auc to float     ; 2 uses
  br i1 %i.arw, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.aud = fmul float %i.aoz, %.0.i345.i
  %i.aue = fadd float %i.aud, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit347.i

bb.ds:                                            ; preds = %bb.dq
  %i.auf = fpext float %i.qz to double            ; 2 uses
  %i.aug = call double @llvm.fmuladd.f64(double %i.auf, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.auh = fmul double %i.auf, 2.000000e+00
  %i.aui = fpext float %i.aoz to double
  %i.auj = fmul double %i.auh, %i.aui
  %i.auk = fpext float %.0.i345.i to double
  %i.aul = call double @llvm.fmuladd.f64(double %i.auj, double %i.auk, double %i.aug)
  %i.aum = fptrunc double %i.aul to float         ; 2 uses
  %i.aun = fmul float %i.aoz, %i.aum
  %i.auo = fpext float %i.aun to double
  %i.aup = fsub double %i.aug, %i.auo
  %i.auq = fpext float %i.aum to double
  %i.aur = fdiv double %i.auq, %i.aup
  %i.aus = fptrunc double %i.aur to float
  br label %_ZL7calcepsfffffb.exit347.i

_ZL7calcepsfffffb.exit347.i:                      ; preds = %bb.ds, %bb.dr
  %.1.i346.i = phi float [ %i.aue, %bb.dr ], [ %i.aus, %bb.ds ]
  %i.aut = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.auu = fpext float %.1.i346.i to double
  %i.auv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aut, ptr noundef nonnull @.str.111, double noundef %i.auu) #21 ; 0 uses
  %i.auw = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.aux = fneg double %i.aua
  %i.auy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.auw, ptr noundef nonnull @.str.112, double noundef %i.aux) #21 ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %_ZL7calcepsfffffb.exit347.i, %_ZL7calcepsfffffb.exit344.i
  %i.auz = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.ava = call i64 @fwrite(ptr nonnull @.str.113, i64 52, i64 1, ptr %i.auz) #22 ; 0 uses
  %i.avb = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.avc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avb, ptr noundef nonnull @.str.114, double noundef %i.anx, double noundef %i.any) #21 ; 0 uses
  %i.avd = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.ave = fpext float %i.aoz to double           ; 2 uses
  %i.avf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avd, ptr noundef nonnull @.str.115, double noundef %i.ave) #21 ; 0 uses
  %i.avg = icmp slt i32 %.2.i, %.1304.i
  %or.cond328.i = select i1 %i.bt, i1 %i.avg, i1 false
  br i1 %or.cond328.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.avh = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.avi = sext i32 %.2.i to i64
  %i.avj = getelementptr inbounds [4 x i8], ptr %.2480.i, i64 %i.avi ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !9
  %i.avl = sext i32 %i.avk to i64
  %i.avm = getelementptr inbounds [4 x i8], ptr %.1500.i, i64 %i.avl
  %i.avn = load float, ptr %i.avm, align 4, !tbaa !55
  %i.avo = fpext float %i.avn to double
  %i.avp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avh, ptr noundef nonnull @.str.116, double noundef %i.avo) #21 ; 0 uses
  %i.avq = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.avr = load float, ptr %i.f, align 4, !tbaa !55
  %i.avs = load i32, ptr %i.avj, align 4, !tbaa !9
  %i.avt = sext i32 %i.avs to i64
  %i.avu = getelementptr inbounds [4 x i8], ptr %.1500.i, i64 %i.avt
  %i.avv = load float, ptr %i.avu, align 4, !tbaa !55
  %i.avw = load float, ptr %i.e, align 4, !tbaa !55
  %i.avx = call noundef float @powf(float noundef %i.avv, float noundef %i.avw) #18
  %i.avy = fneg float %i.avr
  %i.avz = call float @llvm.fmuladd.f32(float %i.avy, float %i.avx, float %.0296.i)
  %i.awa = fpext float %i.avz to double
  %i.awb = fpext float %.0296.i to double
  %i.awc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avq, ptr noundef nonnull @.str.117, double noundef %i.awa, double noundef %i.awb) #21 ; 0 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.awd = icmp samesign ugt i32 %.1291.i, %.1293.i
  %i.awe = load ptr, ptr @stderr, align 8, !tbaa !83 ; 2 uses
  br i1 %i.awd, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.awf = zext i32 %.1293.i to i64               ; 14 uses
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %i.awf
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !55
  %i.awi = fpext float %i.awh to double
  %i.awj = fpext float %i.qr to double
  %i.awk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.awe, ptr noundef nonnull @.str.118, double noundef %i.awi, double noundef %i.awj) #21 ; 0 uses
  %i.awl = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.awm = zext nneg i32 %.1291.i to i64
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %i.awm
  %i.awo = load float, ptr %i.awn, align 4, !tbaa !55
  %i.awp = fpext float %i.awo to double
  %i.awq = fpext float %i.qs to double
  %i.awr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.awl, ptr noundef nonnull @.str.119, double noundef %i.awp, double noundef %i.awq) #21 ; 0 uses
  %i.aws = sub nuw nsw i32 %.1291.i, %.1293.i     ; 2 uses
  %i.awt = add nuw nsw i32 %i.aws, 1
  %i.awu = zext nneg i32 %i.awt to i64            ; 2 uses
  %i.awv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.59, i32 noundef 761, i64 noundef range(i64 -2147483648, 2147483648) %i.awu, i64 noundef 4)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc238:                                        ; preds = %bb.dw
  %i.aww = ptrtoaddr ptr %i.awv to i64            ; 3 uses
  %i.awx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.59, i32 noundef 762, i64 noundef range(i64 -2147483648, 2147483648) %i.awu, i64 noundef 4)
          to label %iter.check unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

iter.check:                                       ; preds = %.noexc238
  %i.awy = add i32 %.1291.i, 1
  %wide.trip.count623.i = zext i32 %i.awy to i64  ; 4 uses
  %i.awz = sub nsw i64 %wide.trip.count623.i, %i.awf ; 7 uses
  %min.iters.check788 = icmp ult i64 %i.awz, 4
  br i1 %min.iters.check788, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck776

vector.memcheck776:                               ; preds = %iter.check
  %i.axa = ptrtoaddr ptr %i.awx to i64            ; 3 uses
  %i.axb = sub i64 %i.aww, %i.axa
  %diff.check = icmp ugt i64 %i.axb, -64
  %i.axc = shl nuw nsw i64 %i.awf, 2              ; 4 uses
  %i.axd = add i64 %i.axc, %.1500.i777.le
  %i.axe = sub i64 %i.axd, %i.aww
  %diff.check778 = icmp ugt i64 %i.axe, -64
  %conflict.rdx779 = or i1 %diff.check, %diff.check778
  %i.axf = sub i64 %.1484.i780.le, %i.aww
  %i.axg = add i64 %i.axf, %i.axc
  %i.axh = add i64 %i.axg, -1
  %diff.check781 = icmp ult i64 %i.axh, 63
  %conflict.rdx782 = or i1 %conflict.rdx779, %diff.check781
  %i.axi = add i64 %i.axc, %.1500.i777.le
  %i.axj = sub i64 %i.axi, %i.axa
  %diff.check783 = icmp ugt i64 %i.axj, -64
  %conflict.rdx784 = or i1 %conflict.rdx782, %diff.check783
  %i.axk = add i64 %i.axc, %.1484.i780.le
  %i.axl = sub i64 %i.axk, %i.axa
  %diff.check785 = icmp ugt i64 %i.axl, -64
  %conflict.rdx786 = or i1 %conflict.rdx784, %diff.check785
  br i1 %conflict.rdx786, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck776
  %min.iters.check789 = icmp ult i64 %i.awz, 16
  br i1 %min.iters.check789, label %vec.epilog.ph, label %vector.ph790

vector.ph790:                                     ; preds = %vector.main.loop.iter.check
  %i.axm = and i64 %i.awz, 12
  %n.vec791 = and i64 %i.awz, -16                 ; 4 uses
  %i.axn = add nsw i64 %n.vec791, %i.awf
  br label %vector.body792

vector.body792:                                   ; preds = %vector.body792, %vector.ph790
  %index793 = phi i64 [ 0, %vector.ph790 ], [ %index.next798, %vector.body792 ] ; 4 uses
  %i.axo = add nuw i64 %index793, %i.awf          ; 2 uses
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %i.axo ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 32
  %wide.load794 = load <8 x float>, ptr %i.axp, align 4, !tbaa !55
  %wide.load795 = load <8 x float>, ptr %i.axq, align 4, !tbaa !55
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %index793 ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 32
  store <8 x float> %wide.load794, ptr %i.axr, align 4, !tbaa !55
  store <8 x float> %wide.load795, ptr %i.axs, align 4, !tbaa !55
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %.1484.i, i64 %i.axo ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 32
  %wide.load796 = load <8 x float>, ptr %i.axt, align 4, !tbaa !55
  %wide.load797 = load <8 x float>, ptr %i.axu, align 4, !tbaa !55
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %index793 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 32
  store <8 x float> %wide.load796, ptr %i.axv, align 4, !tbaa !55
  store <8 x float> %wide.load797, ptr %i.axw, align 4, !tbaa !55
  %index.next798 = add nuw i64 %index793, 16      ; 2 uses
  %i.axx = icmp eq i64 %index.next798, %n.vec791
  br i1 %i.axx, label %middle.block799, label %vector.body792, !llvm.loop !134

middle.block799:                                  ; preds = %vector.body792
  %cmp.n800 = icmp eq i64 %i.awz, %n.vec791
  br i1 %cmp.n800, label %.loopexit809, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block799
  %min.epilog.iters.check = icmp eq i64 %i.axm, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !135

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec791, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec802 = and i64 %i.awz, -4                  ; 3 uses
  %i.axy = add nsw i64 %n.vec802, %i.awf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index803 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next806, %vec.epilog.vector.body ] ; 4 uses
  %i.axz = add nuw i64 %index803, %i.awf          ; 2 uses
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %i.axz
  %wide.load804 = load <4 x float>, ptr %i.aya, align 4, !tbaa !55
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %index803
  store <4 x float> %wide.load804, ptr %i.ayb, align 4, !tbaa !55
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %.1484.i, i64 %i.axz
  %wide.load805 = load <4 x float>, ptr %i.ayc, align 4, !tbaa !55
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %index803
  store <4 x float> %wide.load805, ptr %i.ayd, align 4, !tbaa !55
  %index.next806 = add nuw i64 %index803, 4       ; 2 uses
  %i.aye = icmp eq i64 %index.next806, %n.vec802
  br i1 %i.aye, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !136

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n807 = icmp eq i64 %i.awz, %n.vec802
  br i1 %cmp.n807, label %.loopexit809, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck776, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv619.i.ph = phi i64 [ %i.awf, %iter.check ], [ %i.awf, %vector.memcheck776 ], [ %i.axn, %vec.epilog.iter.check ], [ %i.axy, %vec.epilog.middle.block ] ; 4 uses
  %i.ayf = sub nsw i64 %wide.trip.count623.i, %indvars.iv619.i.ph
  %xtraiter883 = and i64 %i.ayf, 3                ; 2 uses
  %lcmp.mod884.not = icmp eq i64 %xtraiter883, 0
  br i1 %lcmp.mod884.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv619.i.prol = phi i64 [ %indvars.iv.next620.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv619.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter885 = phi i64 [ %prol.iter885.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %indvars.iv619.i.prol
  %i.ayh = load float, ptr %i.ayg, align 4, !tbaa !55
  %i.ayi = sub nuw nsw i64 %indvars.iv619.i.prol, %i.awf ; 2 uses
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.ayi
  store float %i.ayh, ptr %i.ayj, align 4, !tbaa !55
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %.1484.i, i64 %indvars.iv619.i.prol
  %i.ayl = load float, ptr %i.ayk, align 4, !tbaa !55
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.ayi
  store float %i.ayl, ptr %i.aym, align 4, !tbaa !55
  %indvars.iv.next620.i.prol = add nuw nsw i64 %indvars.iv619.i.prol, 1 ; 2 uses
  %prol.iter885.next = add i64 %prol.iter885, 1   ; 2 uses
  %prol.iter885.cmp.not = icmp eq i64 %prol.iter885.next, %xtraiter883
  br i1 %prol.iter885.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !137

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv619.i.unr = phi i64 [ %indvars.iv619.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next620.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ayn = sub nsw i64 %indvars.iv619.i.ph, %wide.trip.count623.i
  %i.ayo = icmp ugt i64 %i.ayn, -4
  br i1 %i.ayo, label %.loopexit809, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv619.i = phi i64 [ %indvars.iv.next620.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv619.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %indvars.iv619.i
  %i.ayq = load float, ptr %i.ayp, align 4, !tbaa !55
  %i.ayr = sub nuw nsw i64 %indvars.iv619.i, %i.awf ; 2 uses
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.ayr
  store float %i.ayq, ptr %i.ays, align 4, !tbaa !55
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %.1484.i, i64 %indvars.iv619.i
  %i.ayu = load float, ptr %i.ayt, align 4, !tbaa !55
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.ayr
  store float %i.ayu, ptr %i.ayv, align 4, !tbaa !55
  %indvars.iv.next620.i = add nuw nsw i64 %indvars.iv619.i, 1 ; 3 uses
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %indvars.iv.next620.i
  %i.ayx = load float, ptr %i.ayw, align 4, !tbaa !55
  %i.ayy = sub nuw nsw i64 %indvars.iv.next620.i, %i.awf ; 2 uses
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.ayy
  store float %i.ayx, ptr %i.ayz, align 4, !tbaa !55
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %.1484.i, i64 %indvars.iv.next620.i
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !55
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.ayy
  store float %i.azb, ptr %i.azc, align 4, !tbaa !55
  %indvars.iv.next620.i.1 = add nuw nsw i64 %indvars.iv619.i, 2 ; 3 uses
  %i.azd = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %indvars.iv.next620.i.1
  %i.aze = load float, ptr %i.azd, align 4, !tbaa !55
  %i.azf = sub nuw nsw i64 %indvars.iv.next620.i.1, %i.awf ; 2 uses
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.azf
  store float %i.aze, ptr %i.azg, align 4, !tbaa !55
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %.1484.i, i64 %indvars.iv.next620.i.1
  %i.azi = load float, ptr %i.azh, align 4, !tbaa !55
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.azf
  store float %i.azi, ptr %i.azj, align 4, !tbaa !55
  %indvars.iv.next620.i.2 = add nuw nsw i64 %indvars.iv619.i, 3 ; 3 uses
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %.1500.i, i64 %indvars.iv.next620.i.2
  %i.azl = load float, ptr %i.azk, align 4, !tbaa !55
  %i.azm = sub nuw nsw i64 %indvars.iv.next620.i.2, %i.awf ; 2 uses
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.azm
  store float %i.azl, ptr %i.azn, align 4, !tbaa !55
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %.1484.i, i64 %indvars.iv.next620.i.2
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !55
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.azm
  store float %i.azp, ptr %i.azq, align 4, !tbaa !55
  %indvars.iv.next620.i.3 = add nuw nsw i64 %indvars.iv619.i, 4 ; 2 uses
  %exitcond624.not.i.3 = icmp eq i64 %indvars.iv.next620.i.3, %wide.trip.count623.i
  br i1 %exitcond624.not.i.3, label %.loopexit809, label %vec.epilog.scalar.ph, !llvm.loop !138

.loopexit809:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block799
  invoke void @_Z10lsq_y_ax_biPfS_S_S_S_S_(i32 noundef %i.aws, ptr noundef nonnull %i.awv, ptr noundef nonnull %i.awx, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %.loopexit809
  %i.azr = load float, ptr %i.e, align 4, !tbaa !55
  %i.azs = fpext float %i.azr to double
  %i.azt = fmul double %i.azs, 1.000000e+12
  %i.azu = fptrunc double %i.azt to float
  store float %i.azu, ptr %i.e, align 4, !tbaa !55
  %i.azv = load float, ptr %i.f, align 4, !tbaa !55
  %i.azw = fpext float %i.azv to double
  %i.azx = fmul double %i.azw, 5.000000e-01
  %i.azy = fdiv double %i.azx, %i.aog
  %i.azz = fptrunc double %i.azy to float
  %i.baa = fpext float %.1302.i to double
  %i.bab = call double @llvm.fmuladd.f64(double %i.baa, double -2.000000e+00, double %i.amn)
  %i.bac = fpext float %i.azz to double
  %i.bad = fadd double %i.bab, %i.bac
  %.0.i348.i = fptrunc double %i.bad to float     ; 2 uses
  br i1 %i.arw, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.noexc240
  %i.bae = fmul float %i.aoz, %.0.i348.i
  %i.baf = fadd float %i.bae, 1.000000e+00
  br label %_ZL7calcepsfffffb.exit350.i

bb.dy:                                            ; preds = %.noexc240
  %i.bag = fpext float %i.qz to double            ; 2 uses
  %i.bah = call double @llvm.fmuladd.f64(double %i.bag, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.bai = fmul double %i.bag, 2.000000e+00
  %i.baj = fmul double %i.bai, %i.ave
  %i.bak = fpext float %.0.i348.i to double
  %i.bal = call double @llvm.fmuladd.f64(double %i.baj, double %i.bak, double %i.bah)
  %i.bam = fptrunc double %i.bal to float         ; 2 uses
  %i.ban = fmul float %i.aoz, %i.bam
  %i.bao = fpext float %i.ban to double
  %i.bap = fsub double %i.bah, %i.bao
  %i.baq = fpext float %i.bam to double
  %i.bar = fdiv double %i.baq, %i.bap
  %i.bas = fptrunc double %i.bar to float
  br label %_ZL7calcepsfffffb.exit350.i

_ZL7calcepsfffffb.exit350.i:                      ; preds = %bb.dy, %bb.dx
  %.1.i349.i = phi float [ %i.baf, %bb.dx ], [ %i.bas, %bb.dy ]
  %i.bat = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.bau = call i64 @fwrite(ptr nonnull @.str.120, i64 76, i64 1, ptr %i.bat) #22 ; 0 uses
  %i.bav = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.baw = load float, ptr %i.e, align 4, !tbaa !55
  %i.bax = fpext float %i.baw to double
  %i.bay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bav, ptr noundef nonnull @.str.121, double noundef %i.bax) #21 ; 0 uses
  %i.baz = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.bba = load float, ptr %i.f, align 4, !tbaa !55
  %i.bbb = fpext float %i.bba to double
  %i.bbc = fmul double %i.bbb, 5.000000e-01
  %i.bbd = fdiv double %i.bbc, %i.aog
  %i.bbe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.baz, ptr noundef nonnull @.str.122, double noundef %i.bbd) #21 ; 0 uses
  %i.bbf = load ptr, ptr @stderr, align 8, !tbaa !83
  %i.bbg = fpext float %.1.i349.i to double
  %i.bbh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bbf, ptr noundef nonnull @.str.123, double noundef %i.bbg) #21 ; 0 uses
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.59, i32 noundef 781, ptr noundef nonnull %i.awv)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %_ZL7calcepsfffffb.exit350.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.59, i32 noundef 782, ptr noundef nonnull %i.awx)
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dv
  %i.bbi = call i64 @fwrite(ptr nonnull @.str.124, i64 26, i64 1, ptr %i.awe) #22 ; 0 uses
  br label %.noexc242

.noexc242:                                        ; preds = %.noexc241, %bb.dz
  br i1 %.not323.i, label %.noexc243, label %bb.ea

bb.ea:                                            ; preds = %.noexc242
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.59, i32 noundef 792, ptr noundef nonnull %.2489.i)
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %bb.ea, %.noexc242
  br i1 %i.bt, label %bb.eb, label %.noexc244

bb.eb:                                            ; preds = %.noexc243
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.59, i32 noundef 796, ptr noundef %.2503.i)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc244:                                        ; preds = %bb.eb, %.noexc243
  br i1 %i.bu, label %bb.ec, label %.noexc245

bb.ec:                                            ; preds = %.noexc244
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.59, i32 noundef 800, ptr noundef %.3498.i)
          to label %.noexc245 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc245:                                        ; preds = %bb.ec, %.noexc244
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.59, i32 noundef 803, ptr noundef nonnull %.1500.i)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %.noexc245
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.59, i32 noundef 806, ptr noundef %.1486.i)
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc247:                                        ; preds = %.noexc246
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.59, i32 noundef 807, ptr noundef %.1494.i)
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ed:                                            ; preds = %.noexc247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.nv)
          to label %bb.ee unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %bb.ed
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.ow)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ef:                                            ; preds = %bb.ee
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.pw)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ef
  %i.bbj = load i8, ptr %i.iy, align 8, !tbaa !85, !range !89, !noundef !90
  %i.bbk = trunc nuw i8 %i.bbj to i1
  br i1 %i.bbk, label %bb.eh, label %bb.fb

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.bt, label %bb.ei, label %bb.ey

bb.ei:                                            ; preds = %bb.eh
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %.157)
          to label %bb.ey unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ej:                                            ; preds = %bb.bo, %bb.bn
  %i.bbl = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ek:                                            ; preds = %bb.bp
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.el:                                            ; preds = %.noexc.i162
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.em:                                            ; preds = %.noexc163
  %i.bbo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbp = load ptr, ptr %24, align 8, !tbaa !28  ; 2 uses
  %i.bbq = icmp eq ptr %i.bbp, %i.no
  br i1 %i.bbq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.em
  %i.bbr = load i64, ptr %i.no, align 8, !tbaa !31
  %i.bbs = add i64 %i.bbr, 1
  call void @_ZdlPvm(ptr noundef %i.bbp, i64 noundef %i.bbs) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.el
  %.pn76 = phi { ptr, i32 } [ %i.bbn, %bb.el ], [ %i.bbo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %i.bbo, %bb.em ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.bbt = load ptr, ptr %23, align 8, !tbaa !28  ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bbv = icmp eq ptr %i.bbt, %i.bbu
  br i1 %i.bbv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.bbw = load i64, ptr %i.bbu, align 8, !tbaa !31
  %i.bbx = add i64 %i.bbw, 1
  call void @_ZdlPvm(ptr noundef %i.bbt, i64 noundef %i.bbx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.ek
  %.pn76.pn = phi { ptr, i32 } [ %i.bbm, %bb.ek ], [ %.pn76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #18
  br label %bb.en

bb.en:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.ej
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.bbl, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %.body

bb.eo:                                            ; preds = %bb.bs, %_ZNSt10filesystem7__cxx114pathD2Ev.exit175
  %i.bby = landingpad { ptr, i32 }
end_hunk_1
