Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_wham?download=true
inline.NumInlined: 929
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZL16do_bootstrappingPKcS0_S0_S0_S0_PdP16t_UmbrellaWindowiP15UmbrellaOptions:bb.a

bb.ar:                                            ; preds = %._crit_edge.i.i203
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sr, ptr nonnull align 1 %4, i64 %i.sn, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i203
  %i.st = load i64, ptr %i.z, align 8, !tbaa !95  ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %i.st, ptr %i.su, align 8, !tbaa !96
  %i.sv = load ptr, ptr %46, align 8, !tbaa !61
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.st
  store i8 0, ptr %i.sw, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #25
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 128), align 8, !tbaa !97
  %i.sy = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %44, ptr noundef nonnull @.str.409, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef %i.sx)
          to label %bb.at unwind label %bb.ay     ; 3 uses

bb.at:                                            ; preds = %bb.as
  %i.sz = load ptr, ptr %46, align 8, !tbaa !61   ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.sm
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  %i.tb = load i64, ptr %i.sm, align 8, !tbaa !16
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  %i.td = load ptr, ptr %45, align 8, !tbaa !61   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.sb
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.tf = load i64, ptr %i.sb, align 8, !tbaa !16
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  %i.th = getelementptr inbounds nuw i8, ptr %44, i64 32 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.th, ptr noundef nonnull %i.ti) #25
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.tj = load ptr, ptr %44, align 8, !tbaa !61   ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.tl = icmp eq ptr %i.tj, %i.tk
  br i1 %i.tl, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.tm = load i64, ptr %i.tk, align 8, !tbaa !16
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tn) #32
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  %i.to = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 156), align 4, !tbaa !34
  %i.tp = icmp sgt i32 %i.to, 0
  br i1 %i.tp, label %.lr.ph138.a, label %._crit_edge139.a

.lr.ph138.a:                                      ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.tq = uitofp nneg i32 %.0180.lcssa to float
  %i.tr = zext i32 %.0180.lcssa to i64            ; 12 uses
  %i.ts = add nsw i32 %.0180.lcssa, -1
  %.not.i226 = icmp eq i32 %.0180.lcssa, 1
  %wide.trip.count.i227 = zext nneg i32 %i.ts to i64 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.tr, 3
  %i.tt = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.tu = lshr exact i64 %i.tt, 3
  %i.tv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.tu, i1 true)
  %i.tw = shl nuw nsw i64 %i.tv, 1
  %i.tx = xor i64 %i.tw, 126
  %i.ty = uitofp nneg i32 %.0180.lcssa to double  ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ev, i64 144 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  %i.um = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.un = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  %i.up = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %27, i64 21
  %i.ur = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 5 uses
  %i.us = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ut = add nsw i64 %i.tr, -1                   ; 2 uses
  %xtraiter498 = and i64 %i.ut, 3                 ; 3 uses
  %i.uu = add nsw i32 %.0180.lcssa, -2
  %i.uv = icmp ult i32 %i.uu, 3
  %unroll_iter502 = and i64 %i.ut, -4
  %lcmp.mod500.not = icmp eq i64 %xtraiter498, 0
  %lcmp.mod501 = icmp ne i64 %xtraiter498, 0
  %xtraiter504 = and i64 %i.tr, 3                 ; 3 uses
  %i.uw = icmp ult i32 %.0180.lcssa, 4
  %unroll_iter508 = and i64 %i.tr, 2147483644
  %lcmp.mod506.not = icmp eq i64 %xtraiter504, 0
  %lcmp.mod507 = icmp ne i64 %xtraiter504, 0
  %min.iters.check446 = icmp ult i32 %.0180.lcssa, 8
  %n.vec448 = and i64 %i.tr, 2147483640           ; 3 uses
  %cmp.n459 = icmp eq i64 %n.vec448, %i.tr
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph138.a, %._crit_edge135.a
  %.0183137 = phi i32 [ 0, %.lr.ph138.a ], [ %i.ux, %._crit_edge135.a ] ; 3 uses
  %.0136 = phi ptr [ null, %.lr.ph138.a ], [ %.1, %._crit_edge135.a ] ; 5 uses
  %i.ux = add nuw nsw i32 %.0183137, 1            ; 3 uses
  %i.uy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.410, i32 noundef %i.ux) ; 0 uses
  %i.uz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 160), align 8, !tbaa !35
  switch i32 %i.uz, label %.loopexit [
    i32 2, label %bb.az
    i32 1, label %bb.bo
    i32 3, label %bb.by
    i32 4, label %bb.by
  ]

bb.aw:                                            ; preds = %.noexc.i
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

bb.ax:                                            ; preds = %.noexc.i204
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

bb.ay:                                            ; preds = %bb.as
  %i.vc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vd = load ptr, ptr %46, align 8, !tbaa !61   ; 2 uses
  %i.ve = icmp eq ptr %i.vd, %i.sm
  br i1 %i.ve, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.ay
  %i.vf = load i64, ptr %i.sm, align 8, !tbaa !16
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.vb, %bb.ax ], [ %i.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %i.vc, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  %i.vh = load ptr, ptr %45, align 8, !tbaa !61   ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.sb
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.vj = load i64, ptr %i.sb, align 8, !tbaa !16
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %bb.aw
  %.pn.pn = phi { ptr, i32 } [ %i.va, %bb.aw ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  br label %common.resume

bb.az:                                            ; preds = %bb.av
  %i.vl = call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.411, ptr noundef nonnull @.str.219, i32 noundef 1391, ptr noundef %.0136, i64 noundef range(i64 -2147483648, 2147483648) %i.dl, i64 noundef 4) ; 6 uses
  %i.vm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 168), align 8, !tbaa !38 ; 7 uses
  %i.vn = add nsw i32 %i.vm, -1                   ; 3 uses
  %.not.i.i.i219 = icmp slt i32 %i.vm, 1
  br i1 %.not.i.i.i219, label %bb.ba, label %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.preheader.i

_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.preheader.i: ; preds = %bb.az
  br i1 %i.ew, label %.lr.ph.i220, label %.loopexit

.lr.ph.i220:                                      ; preds = %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.preheader.i
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %.split.us.us.i.preheader, label %.split.i

.split.us.us.i.preheader:                         ; preds = %.lr.ph.i220
  br i1 %min.iters.check446, label %.split.us.us.i.preheader465, label %vector.ph447

vector.ph447:                                     ; preds = %.split.us.us.i.preheader
  %broadcast.splatinsert449 = insertelement <8 x i32> poison, i32 %i.vm, i64 0
  %broadcast.splat450 = shufflevector <8 x i32> %broadcast.splatinsert449, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph447
  %index454 = phi i64 [ 0, %vector.ph447 ], [ %index.next456, %vector.body453 ] ; 2 uses
  %vec.ind455 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph447 ], [ %vec.ind.next457, %vector.body453 ] ; 3 uses
  %50 = urem <8 x i32> %vec.ind455, %broadcast.splat450
  %i.vp = sub nuw nsw <8 x i32> %vec.ind455, %50
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %index454
  store <8 x i32> %i.vp, ptr %i.vq, align 4, !tbaa !12
  %index.next456 = add nuw i64 %index454, 8       ; 2 uses
  %vec.ind.next457 = add <8 x i32> %vec.ind455, splat (i32 8)
  %i.vr = icmp eq i64 %index.next456, %n.vec448
  br i1 %i.vr, label %middle.block458, label %vector.body453, !llvm.loop !305

middle.block458:                                  ; preds = %vector.body453
  br i1 %cmp.n459, label %.lr.ph131.preheader, label %.split.us.us.i.preheader465

.split.us.us.i.preheader465:                      ; preds = %.split.us.us.i.preheader, %middle.block458
  %indvars.iv35.i.ph = phi i64 [ 0, %.split.us.us.i.preheader ], [ %n.vec448, %middle.block458 ]
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.split.us.us.i.preheader465, %.split.us.us.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %.split.us.us.i ], [ %indvars.iv35.i.ph, %.split.us.us.i.preheader465 ] ; 3 uses
  %i.vs = trunc nuw nsw i64 %indvars.iv35.i to i32 ; 2 uses
  %51 = urem i32 %i.vs, %i.vm
  %i.vt = sub nuw nsw i32 %i.vs, %51              ; 2 uses
  %.not.us.us.i = icmp slt i32 %i.vt, %.0180.lcssa
  call void @llvm.assume(i1 %.not.us.us.i)
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv35.i
  store i32 %i.vt, ptr %i.vu, align 4, !tbaa !12
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %i.tr
  br i1 %exitcond39.not.i, label %.lr.ph131.preheader, label %.split.us.us.i, !llvm.loop !306

bb.ba:                                            ; preds = %bb.az
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.426, ptr noundef nonnull @.str.427, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx22UniformIntDistributionIiE10param_typeC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.428, i32 noundef 98) #31
  unreachable

.split.i:                                         ; preds = %.lr.ph.i220, %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.i
  %indvars.iv.i221 = phi i64 [ %indvars.iv.next.i223, %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.i ], [ 0, %.lr.ph.i220 ] ; 3 uses
  %.sroa.8.015.i = phi i64 [ %i.yz, %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.i ], [ 0, %.lr.ph.i220 ]
  %.sroa.11.014.i = phi i32 [ %i.zd, %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.i ], [ 0, %.lr.ph.i220 ]
  %i.vv = trunc nuw nsw i64 %indvars.iv.i221 to i32 ; 2 uses
  %52 = urem i32 %i.vv, %i.vm
  %i.vw = sub nuw nsw i32 %i.vv, %52              ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit.i, %.split.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.014.i, %.split.i ], [ %i.zd, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit.i ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.015.i, %.split.i ], [ %i.yz, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit.i ]
  %i.vx = call noundef i32 @_ZN3gmx5log2IEj(i32 noundef %i.vn) ; 2 uses
  %i.vy = ashr i32 %i.vn, %i.vx
  %i.vz = icmp sgt i32 %i.vy, 0
  %i.wa = zext i1 %i.vz to i32
  %i.wb = add i32 %i.vx, %i.wa                    ; 3 uses
  %i.wc = zext i32 %i.wb to i64                   ; 2 uses
  %.promoted.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 280), align 8
  %.promoted8.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 256), align 8
  %.sroa.020.0.copyload.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 248), align 8
  %i.wd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 232), align 8 ; 4 uses
  %i.we = add i64 %i.wd, %.sroa.020.0.copyload.i.i.i
  %i.wf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 240), align 8 ; 4 uses
  %i.wg = xor i64 %i.wd, %i.wf
  %i.wh = xor i64 %i.wg, 2004413935125273122      ; 2 uses
  %i.wi = add i64 %i.wh, 1
  %i.wj = add i64 %i.wd, 2
  %i.wk = add i64 %i.wf, 3
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i.i.i222, %bb.bb
  %i.wl = phi i64 [ %.promoted8.i, %bb.bb ], [ %i.yv, %._crit_edge.i.i.i222 ] ; 3 uses
  %i.wm = phi i32 [ %.promoted.i, %bb.bb ], [ %i.yw, %._crit_edge.i.i.i222 ] ; 4 uses
  %.sroa.8.2.i = phi i64 [ %.sroa.8.1.i, %bb.bb ], [ %i.yz, %._crit_edge.i.i.i222 ]
  %i.wn = phi i32 [ %.sroa.11.1.i, %bb.bb ], [ %i.zd, %._crit_edge.i.i.i222 ] ; 2 uses
  %i.wo = icmp ult i32 %i.wn, %i.wb
  br i1 %i.wo, label %bb.bd, label %._crit_edge.i.i.i222

bb.bd:                                            ; preds = %bb.bc
  %i.wp = icmp ugt i32 %i.wm, 1
  br i1 %i.wp, label %bb.be, label %._crit_edge.i.i225

._crit_edge.i.i225:                               ; preds = %bb.bd
  %.phi.trans.insert1.i.i = zext nneg i32 %i.wm to i64
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 264), i64 %.phi.trans.insert1.i.i
  %.pre.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !95
  %i.wq = add nuw nsw i32 %i.wm, 1
  br label %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit.i

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  %i.wr = add i64 %i.wl, 1                        ; 4 uses
  store i64 %i.wr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 256), align 8, !tbaa !95
  %i.ws = icmp eq i64 %i.wr, 0
  br i1 %i.ws, label %bb.bf, label %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.wt = call ptr @__cxa_allocate_exception(i64 24) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull @.str.247)
          to label %bb.bg unwind label %.thread.i.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(56) %32)
          to label %bb.bh unwind label %.thread24.i.i

bb.bh:                                            ; preds = %bb.bg
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %31, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %33, align 8, !tbaa !132
  %i.wu = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE, ptr %i.wu, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr @.str.248, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !69
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i32 280, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !12
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.wt, ptr noundef nonnull align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr %i.wt, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #31
          to label %bb.bl unwind label %bb.bj

.thread.i.i:                                      ; preds = %bb.bf
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i.i

.thread24.i.i:                                    ; preds = %bb.bg
  %i.ww = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %32) #25
  br label %.sink.split.i.i

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i.i = phi i1 [ false, %bb.bi ], [ true, %bb.bh ]
  %i.wx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %33) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #25
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br i1 %.0.i.i, label %bb.bk, label %common.resume

.sink.split.i.i:                                  ; preds = %.thread24.i.i, %.thread.i.i
  %.pn.pn23.ph.i.i = phi { ptr, i32 } [ %i.ww, %.thread24.i.i ], [ %i.wv, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i.i, %bb.bj
  %.pn.pn23.i.i = phi { ptr, i32 } [ %i.wx, %bb.bj ], [ %.pn.pn23.ph.i.i, %.sink.split.i.i ]
  call void @__cxa_free_exception(ptr %i.wt) #25
  br label %common.resume

bb.bl:                                            ; preds = %bb.bi
  unreachable

_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  %i.wy = add i64 %i.wr, %i.wf                    ; 3 uses
  %i.wz = add i64 %i.we, %i.wy                    ; 2 uses
  %i.xa = call i64 @llvm.fshl.i64(i64 %i.wy, i64 %i.wy, i64 16)
  %i.xb = xor i64 %i.xa, %i.wz                    ; 3 uses
  %i.xc = add i64 %i.xb, %i.wz                    ; 2 uses
  %i.xd = call i64 @llvm.fshl.i64(i64 %i.xb, i64 %i.xb, i64 42)
  %i.xe = xor i64 %i.xd, %i.xc                    ; 3 uses
  %i.xf = add i64 %i.xe, %i.xc                    ; 2 uses
  %i.xg = call i64 @llvm.fshl.i64(i64 %i.xe, i64 %i.xe, i64 12)
  %i.xh = xor i64 %i.xg, %i.xf                    ; 3 uses
  %i.xi = add i64 %i.xh, %i.xf                    ; 2 uses
  %i.xj = call i64 @llvm.fshl.i64(i64 %i.xh, i64 %i.xh, i64 31)
  %i.xk = xor i64 %i.xj, %i.xi
  %i.xl = add i64 %i.xi, %i.wf
  %i.xm = add i64 %i.wi, %i.xk                    ; 3 uses
  %i.xn = add i64 %i.xl, %i.xm                    ; 2 uses
  %i.xo = call i64 @llvm.fshl.i64(i64 %i.xm, i64 %i.xm, i64 16)
  %i.xp = xor i64 %i.xo, %i.xn                    ; 3 uses
  %i.xq = add i64 %i.xp, %i.xn                    ; 2 uses
  %i.xr = call i64 @llvm.fshl.i64(i64 %i.xp, i64 %i.xp, i64 32)
  %i.xs = xor i64 %i.xr, %i.xq                    ; 3 uses
  %i.xt = add i64 %i.xs, %i.xq                    ; 2 uses
  %i.xu = call i64 @llvm.fshl.i64(i64 %i.xs, i64 %i.xs, i64 24)
  %i.xv = xor i64 %i.xu, %i.xt                    ; 3 uses
  %i.xw = add i64 %i.xv, %i.xt                    ; 2 uses
  %i.xx = call i64 @llvm.fshl.i64(i64 %i.xv, i64 %i.xv, i64 21)
  %i.xy = xor i64 %i.xx, %i.xw
  %i.xz = add i64 %i.xw, %i.wh
  %i.ya = add i64 %i.wj, %i.xy                    ; 3 uses
  %i.yb = add i64 %i.xz, %i.ya                    ; 2 uses
  %i.yc = call i64 @llvm.fshl.i64(i64 %i.ya, i64 %i.ya, i64 16)
  %i.yd = xor i64 %i.yc, %i.yb                    ; 3 uses
  %i.ye = add i64 %i.yd, %i.yb                    ; 2 uses
  %i.yf = call i64 @llvm.fshl.i64(i64 %i.yd, i64 %i.yd, i64 42)
  %i.yg = xor i64 %i.yf, %i.ye                    ; 3 uses
  %i.yh = add i64 %i.yg, %i.ye                    ; 2 uses
  %i.yi = call i64 @llvm.fshl.i64(i64 %i.yg, i64 %i.yg, i64 12)
  %i.yj = xor i64 %i.yi, %i.yh                    ; 3 uses
  %i.yk = add i64 %i.yj, %i.yh                    ; 2 uses
  %i.yl = call i64 @llvm.fshl.i64(i64 %i.yj, i64 %i.yj, i64 31)
  %i.ym = xor i64 %i.yl, %i.yk
  %i.yn = add i64 %i.yk, %i.wd
  %i.yo = add i64 %i.wk, %i.ym                    ; 3 uses
  %i.yp = add i64 %i.yn, %i.yo                    ; 3 uses
  %i.yq = call i64 @llvm.fshl.i64(i64 %i.yo, i64 %i.yo, i64 16)
  %i.yr = xor i64 %i.yq, %i.yp
  store i64 %i.yp, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 264), align 8
  store i64 %i.yr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 272), align 8, !tbaa !16
  br label %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit.i

_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit.i: ; preds = %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit.i, %._crit_edge.i.i225
  %i.ys = phi i64 [ %i.wr, %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit.i ], [ %i.wl, %._crit_edge.i.i225 ]
  %i.yt = phi i64 [ %i.yp, %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit.i ], [ %.pre.i.i, %._crit_edge.i.i225 ]
  %i.yu = phi i32 [ 1, %_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE.exit.i ], [ %i.wq, %._crit_edge.i.i225 ] ; 2 uses
  store i32 %i.yu, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8gmx_whamiPPcE3opt, i64 280), align 8, !tbaa !125
  br label %._crit_edge.i.i.i222

._crit_edge.i.i.i222:                             ; preds = %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit.i, %bb.bc
  %i.yv = phi i64 [ %i.ys, %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit.i ], [ %i.wl, %bb.bc ]
  %i.yw = phi i32 [ %i.yu, %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit.i ], [ %i.wm, %bb.bc ]
  %i.yx = phi i32 [ 64, %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit.i ], [ %i.wn, %bb.bc ]
  %i.yy = phi i64 [ %i.yt, %_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv.exit.i ], [ %.sroa.8.2.i, %bb.bc ] ; 2 uses
  %i.yz = lshr i64 %i.yy, %i.wc                   ; 4 uses
  %i.za = shl i64 %i.yz, %i.wc
  %i.zb = sub i64 %i.yy, %i.za
  %i.zc = trunc i64 %i.zb to i32                  ; 3 uses
  %i.zd = sub i32 %i.yx, %i.wb                    ; 3 uses
  %.not2.i = icmp sgt i32 %i.vm, %i.zc
  br i1 %.not2.i, label %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit.i, label %bb.bc, !llvm.loop !307

_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit.i: ; preds = %._crit_edge.i.i.i222
  %i.ze = add nsw i32 %i.vw, %i.zc                ; 4 uses
  %.not.i = icmp slt i32 %i.ze, %.0180.lcssa
  br i1 %.not.i, label %.split10.i, label %bb.bb, !llvm.loop !308

.split10.i:                                       ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit.loopexit.i
  %i.zf = icmp slt i32 %i.ze, 0
  br i1 %i.zf, label %.split18.us.i, label %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit.i

.split18.us.i:                                    ; preds = %.split10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  call void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 1 dereferenceable(64) @.str.219, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 934, ptr noundef nonnull @.str.425, i32 noundef %i.ze, i32 noundef %.0180.lcssa, i32 noundef %i.zc, i32 noundef %i.vm, i32 noundef %i.vw) #31
          to label %bb.bm unwind label %bb.bn

end_hunk_0
