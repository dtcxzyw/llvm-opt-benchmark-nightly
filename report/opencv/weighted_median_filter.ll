Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/weighted_median_filter?download=true
inline.NumInlined: 464
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv8ximgproc20weightedMedianFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEidiS3_:bb.a
    i32 5, label %bb.df
  ]

bb.cz:                                            ; preds = %.split.us.i
  %i.sc = fcmp olt <2 x float> %i.rw, %i.rv
  %i.sd = select <2 x i1> %i.sc, <2 x float> %i.rw, <2 x float> %i.rv ; 2 uses
  %shift = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.sd, %shift
  %i.se = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.sf = fcmp olt float %i.rz, %i.rx
  %.sroa.speculated244.us.i = select i1 %i.sf, float %i.rz, float %i.rx
  %i.sg = fadd float %i.se, %.sroa.speculated244.us.i
  %i.sh = fcmp olt <2 x float> %i.rv, %i.rw
  %i.si = select <2 x i1> %i.sh, <2 x float> %i.rw, <2 x float> %i.rv ; 2 uses
  %shift480 = shufflevector <2 x float> %i.si, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop481 = fadd <2 x float> %i.si, %shift480
  %i.sj = extractelement <2 x float> %foldExtExtBinop481, i64 0
  %i.sk = fcmp olt float %i.rx, %i.rz
  %.sroa.speculated.us.i = select i1 %i.sk, float %i.rz, float %i.rx
  %i.sl = fadd float %i.sj, %.sroa.speculated.us.i
  %i.sm = fdiv float %i.sg, %i.sl
  br label %bb.df

bb.da:                                            ; preds = %.split.us.i
  %foldExtExtBinop483 = fmul <2 x float> %i.rv, %i.rw
  %i.sn = extractelement <2 x float> %foldExtExtBinop483, i64 1
  %i.so = extractelement <2 x float> %i.rv, i64 0
  %i.sp = extractelement <2 x float> %i.rw, i64 0
  %i.sq = call float @llvm.fmuladd.f32(float %i.so, float %i.sp, float %i.sn)
  %i.sr = call float @llvm.fmuladd.f32(float %i.rx, float %i.rz, float %i.sq)
  %i.ss = load float, ptr %i.rq, align 4, !tbaa !24
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv391.i
  %i.su = load float, ptr %i.st, align 4, !tbaa !24
  %i.sv = fmul float %i.ss, %i.su
  %i.sw = fdiv float %i.sr, %i.sv
  br label %bb.df

bb.db:                                            ; preds = %.split.us.i
  %foldExtExtBinop485 = fmul <2 x float> %i.sa, %i.sa
  %i.sx = extractelement <2 x float> %foldExtExtBinop485, i64 1
  %i.sy = extractelement <2 x float> %i.sa, i64 0 ; 2 uses
  %i.sz = call float @llvm.fmuladd.f32(float %i.sy, float %i.sy, float %i.sx)
  %i.ta = call float @llvm.fmuladd.f32(float %i.sb, float %i.sb, float %i.sz)
  %i.tb = call float @llvm.fmuladd.f32(float %i.no, float %i.no, float %i.ta)
  %i.tc = fdiv float 1.000000e+00, %i.tb
  br label %bb.df

bb.dc:                                            ; preds = %.split.us.i
  %i.td = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.sa) ; 2 uses
  %shift487 = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop488 = fadd <2 x float> %i.td, %shift487
  %i.te = extractelement <2 x float> %foldExtExtBinop488, i64 0
  %i.tf = call noundef float @llvm.fabs.f32(float %i.sb)
  %i.tg = fadd float %i.te, %i.tf
  %i.th = fadd float %i.no, %i.tg
  %i.ti = fdiv float 1.000000e+00, %i.th
  br label %bb.df

bb.dd:                                            ; preds = %.split.us.i
  %foldExtExtBinop490 = fmul <2 x float> %i.sa, %i.sa
  %i.tj = extractelement <2 x float> %foldExtExtBinop490, i64 1
  %i.tk = extractelement <2 x float> %i.sa, i64 0 ; 2 uses
  %i.tl = call float @llvm.fmuladd.f32(float %i.tk, float %i.tk, float %i.tj)
  %i.tm = call float @llvm.fmuladd.f32(float %i.sb, float %i.sb, float %i.tl)
  %i.tn = fneg float %i.tm
  %i.to = fmul float %i.nr, %i.tn
  %i.tp = call noundef float @expf(float noundef %i.to) #16
  br label %bb.df

bb.de:                                            ; preds = %.split.us.i
  %foldExtExtBinop492 = fmul <2 x float> %i.sa, %i.sa
  %i.tq = extractelement <2 x float> %foldExtExtBinop492, i64 1
  %i.tr = extractelement <2 x float> %i.sa, i64 0 ; 2 uses
  %i.ts = call float @llvm.fmuladd.f32(float %i.tr, float %i.tr, float %i.tq)
  %i.tt = call float @llvm.fmuladd.f32(float %i.sb, float %i.sb, float %i.ts)
  %i.tu = fneg float %i.tt
  %i.tv = fmul float %i.nr, %i.tu
  %i.tw = call noundef float @expf(float noundef %i.tv) #16
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %.split.us.i
  %.0.us.i = phi float [ %i.tw, %bb.de ], [ %i.tp, %bb.dd ], [ %i.ti, %bb.dc ], [ %i.tc, %bb.db ], [ %i.sw, %bb.da ], [ %i.sm, %bb.cz ], [ 1.000000e+00, %.split.us.i ] ; 2 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv391.i
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !106
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %indvars.iv386.i.a
  store float %.0.us.i, ptr %i.tz, align 4, !tbaa !24
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv391.i
  store float %.0.us.i, ptr %i.ua, align 4, !tbaa !24
  %indvars.iv.next392.i = add nuw nsw i64 %indvars.iv391.i, 1 ; 2 uses
  %i.ub = icmp slt i64 %indvars.iv.next392.i, %i.ns
  br i1 %i.ub, label %.split.us.i, label %._crit_edge335.i, !llvm.loop !55

._crit_edge335.i:                                 ; preds = %.lr.ph334.split.i, %bb.df, %.preheader303.i
  %.pre-phi408.i = phi i64 [ %i.ns, %bb.df ], [ %i.kp, %.preheader303.i ], [ %i.ns, %.lr.ph334.split.i ]
  %indvars.iv.next387.i.a = add nuw nsw i64 %indvars.iv386.i.a, 1 ; 2 uses
  %i.uc = icmp slt i64 %indvars.iv.next387.i.a, %.pre-phi408.i
  br i1 %i.uc, label %.preheader303.i, label %._crit_edge338.i, !llvm.loop !56

.lr.ph334.split.i:                                ; preds = %.lr.ph334.i, %.lr.ph334.split.i
  %indvars.iv388.i = phi i64 [ %indvars.iv.next389.i, %.lr.ph334.split.i ], [ %indvars.iv386.i.a, %.lr.ph334.i ] ; 4 uses
  %i.ud = load float, ptr %i.rn, align 4, !tbaa !24
  %i.ue = mul i64 %indvars.iv388.i, %i.oa
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.ue ; 3 uses
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !24
  %i.uh = load float, ptr %i.ro, align 4, !tbaa !24
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !24
  %i.uk = load float, ptr %i.rp, align 4, !tbaa !24
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.um = load float, ptr %i.ul, align 4, !tbaa !24
  %i.un = fsub float %i.ud, %i.ug                 ; 2 uses
  %i.uo = fsub float %i.uh, %i.uj                 ; 2 uses
  %i.up = fsub float %i.uk, %i.um                 ; 2 uses
  %i.uq = fmul float %i.uo, %i.uo
  %i.ur = call float @llvm.fmuladd.f32(float %i.un, float %i.un, float %i.uq)
  %i.us = call float @llvm.fmuladd.f32(float %i.up, float %i.up, float %i.ur)
  %i.ut = fneg float %i.us
  %i.uu = fmul float %i.nr, %i.ut
  %i.uv = call noundef float @expf(float noundef %i.uu) #16 ; 2 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv388.i
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !106
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %indvars.iv386.i.a
  store float %i.uv, ptr %i.uy, align 4, !tbaa !24
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv388.i
  store float %i.uv, ptr %i.uz, align 4, !tbaa !24
  %indvars.iv.next389.i = add nuw nsw i64 %indvars.iv388.i, 1 ; 2 uses
  %i.va = icmp slt i64 %indvars.iv.next389.i, %i.ns
  br i1 %i.va, label %.lr.ph334.split.i, label %._crit_edge335.i, !llvm.loop !55

._crit_edge338.i:                                 ; preds = %._crit_edge335.i, %.preheader305.i
  call void @_ZdaPv(ptr noundef nonnull %i.nv) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %.loopexit.i

bb.dg:                                            ; preds = %bb.cy, %.body.i, %bb.ck
  %.pn214.pn.i = phi { ptr, i32 } [ %i.qo, %bb.cy ], [ %.pn212.i, %.body.i ], [ %i.iv, %bb.ck ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #16
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.bt
  %.pn214.pn.pn.i = phi { ptr, i32 } [ %.pn214.pn.i, %bb.dg ], [ %i.gu, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %bb.di

.loopexit.i:                                      ; preds = %._crit_edge342.split.i.loopexit, %._crit_edge342.split.us.us.i.loopexit, %._crit_edge338.i, %._crit_edge
  %.0221 = phi i32 [ 256, %._crit_edge ], [ %.sroa.speculated274.i, %._crit_edge338.i ], [ 256, %._crit_edge342.split.us.us.i.loopexit ], [ 256, %._crit_edge342.split.i.loopexit ] ; 3 uses
  %.0220 = phi ptr [ null, %._crit_edge ], [ %i.kt, %._crit_edge338.i ], [ %i.df, %._crit_edge342.split.us.us.i.loopexit ], [ %i.df, %._crit_edge342.split.i.loopexit ] ; 3 uses
  %i.vb = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %29)
          to label %_ZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifi.exit unwind label %bb.bo ; 0 uses

bb.di:                                            ; preds = %bb.dh, %bb.bo, %bb.bn
  %.pn221.i = phi { ptr, i32 } [ %i.fh, %bb.bo ], [ %i.fg, %bb.bn ], [ %.pn214.pn.pn.i, %bb.dh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit198

_ZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifi.exit: ; preds = %.loopexit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  %i.vc = load ptr, ptr %i.ci, align 8, !tbaa !20
  %i.vd = load ptr, ptr %51, align 8, !tbaa !21   ; 2 uses
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = sdiv exact i64 %i.vg, 208
  %i.vi = trunc i64 %i.vh to i32
  %i.vj = icmp sgt i32 %i.vi, 0
  br i1 %i.vj, label %.lr.ph272, label %._crit_edge273

.lr.ph272:                                        ; preds = %_ZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifi.exit
  %i.vk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.vl = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.vm = shl nsw i32 %.0221, 8
  %i.vn = sext i32 %i.vm to i64
  %i.vo = icmp slt i32 %.0221, 0                  ; 2 uses
  %i.vp = shl nsw i64 %i.vn, 2
  %i.vq = select i1 %i.vo, i64 -1, i64 %i.vp      ; 3 uses
  %i.vr = sext i32 %.0221 to i64                  ; 17 uses
  %i.vs = shl nsw i64 %i.vr, 2                    ; 2 uses
  %i.vt = select i1 %i.vo, i64 -1, i64 %i.vs      ; 3 uses
  %i.vu = shl nsw i64 %i.vr, 10
  %i.vv = getelementptr inbounds nuw i8, ptr %43, i64 128
  %i.vw = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.vx = getelementptr inbounds nuw i8, ptr %56, i64 128
  %i.vy = getelementptr inbounds nuw i8, ptr %43, i64 4
  %i.vz = getelementptr inbounds nuw i8, ptr %43, i64 136
  %i.wa = getelementptr inbounds nuw i8, ptr %55, i64 4 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.wc = getelementptr inbounds nuw i8, ptr %55, i64 128
  %i.wd = getelementptr inbounds nuw i8, ptr %55, i64 136
  %i.we = add nuw nsw i32 %3, 1
  %60 = sub nsw i32 0, %3
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = zext nneg i32 %3 to i64
  br label %bb.fg

bb.dj:                                            ; preds = %bb.bc
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.dk:                                            ; preds = %bb.bd
  %i.wi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit198

bb.dl:                                            ; preds = %.lr.ph, %bb.fe
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fe ] ; 4 uses
  %i.wj = phi ptr [ %i.ck, %.lr.ph ], [ %i.aho, %bb.fe ]
  %i.wk = load i32, ptr %42, align 8, !tbaa !102
  %i.wl = and i32 %i.wk, 31
  switch i32 %i.wl, label %bb.fe [
    i32 5, label %bb.dm
    i32 0, label %bb.fb
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.wm = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znam(i64 noundef 1024) #19
          to label %bb.dn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.dn:                                            ; preds = %bb.dm
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  store ptr %i.wm, ptr %i.wn, align 8, !tbaa !106
  %i.wo = load ptr, ptr %51, align 8, !tbaa !21
  %i.wp = getelementptr inbounds nuw [208 x i8], ptr %i.wo, i64 %indvars.iv ; 8 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !111
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 12
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !110
  %i.wu = sext i32 %i.wr to i64
  %i.wv = sext i32 %i.wt to i64
  %i.ww = mul nsw i64 %i.wv, %i.wu
  %.fr.i = freeze i64 %i.ww                       ; 17 uses
  %i.wx = icmp ult i64 %.fr.i, 2147483647
  br i1 %i.wx, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_112from32FTo32SERN2cv3MatES2_iPf, ptr noundef nonnull @.str.1, i32 noundef 59) #17
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  unreachable

bb.dr:                                            ; preds = %bb.do
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.ds:                                            ; preds = %bb.dp
  %i.wz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xa = load ptr, ptr %20, align 8, !tbaa !16   ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ds
  %i.xd = load i64, ptr %i.xb, align 8, !tbaa !17
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xe) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.dr
  %.pn.i = phi { ptr, i32 } [ %i.wy, %bb.dr ], [ %i.wz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.wz, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit198

bb.dt:                                            ; preds = %bb.dn
  %i.xf = load i32, ptr %i.wp, align 8, !tbaa !102
  %i.xg = and i32 %i.xf, 16384
  %.not156.i = icmp eq i32 %i.xg, 0
  br i1 %.not156.i, label %bb.du, label %_ZNSt6vectorISt4pairIfiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_112from32FTo32SERN2cv3MatES2_iPf, ptr noundef nonnull @.str.1, i32 noundef 61) #17
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  unreachable

bb.dx:                                            ; preds = %bb.du
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

bb.dy:                                            ; preds = %bb.dv
  %i.xi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xj = load ptr, ptr %22, align 8, !tbaa !16   ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.xl = icmp eq ptr %i.xj, %i.xk
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %bb.dy
  %i.xm = load i64, ptr %i.xk, align 8, !tbaa !17
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xj, i64 noundef %i.xn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i, %bb.dx
  %.pn105.i = phi { ptr, i32 } [ %i.xh, %bb.dx ], [ %i.xi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i ], [ %i.xi, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit198

_ZNSt6vectorISt4pairIfiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.dt
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wp, i64 24
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !104 ; 8 uses
  %.not.i.i.i.i.i = icmp ne i64 %.fr.i, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.xq = shl nuw nsw i64 %.fr.i, 3               ; 6 uses
  %i.xr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xq) #19
          to label %.noexc138 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 33 uses

.noexc138:                                        ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.xr, i8 0, i64 %i.xq, i1 false), !tbaa !17
  %min.iters.check = icmp ult i64 %.fr.i, 4
  br i1 %min.iters.check, label %.lr.ph.i126.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc138
  %i.xs = getelementptr i8, ptr %i.xr, i64 %i.xq
  %i.xt = getelementptr i8, ptr %i.xs, i64 -4
  %i.xu = shl nuw nsw i64 %.fr.i, 2
  %i.xv = getelementptr i8, ptr %i.xp, i64 %i.xu
  %bound0 = icmp ult ptr %i.xr, %i.xv
  %bound1 = icmp ult ptr %i.xp, %i.xt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i126.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.fr.i, 2147483644             ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %index
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %index
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %index ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %wide.load = load <2 x float>, ptr %i.xz, align 4, !tbaa !24, !alias.scope !118
  %wide.load449 = load <2 x float>, ptr %i.ya, align 4, !tbaa !24, !alias.scope !118
  %i.yb = bitcast <2 x i32> %vec.ind to <2 x float>
  %interleaved.vec = shufflevector <2 x float> %wide.load, <2 x float> %i.yb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.xw, align 4, !tbaa !17
  %i.yc = bitcast <2 x i32> %step.add to <2 x float>
  %interleaved.vec450 = shufflevector <2 x float> %wide.load449, <2 x float> %i.yc, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec450, ptr %i.xy, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.yd = icmp eq i64 %index.next, %n.vec
  br i1 %i.yd, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.fr.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i128, label %.lr.ph.i126.preheader

.lr.ph.i126.preheader:                            ; preds = %vector.memcheck, %.noexc138, %middle.block
  %.092159.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.noexc138 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.fr.i, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i126.prol.loopexit, label %.lr.ph.i126.prol

.lr.ph.i126.prol:                                 ; preds = %.lr.ph.i126.preheader, %.lr.ph.i126.prol
  %.092159.i.prol = phi i64 [ %i.yj, %.lr.ph.i126.prol ], [ %.092159.i.ph, %.lr.ph.i126.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i126.prol ], [ 0, %.lr.ph.i126.preheader ]
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %.092159.i.prol ; 2 uses
  %i.yf = trunc nuw nsw i64 %.092159.i.prol to i32
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  store i32 %i.yf, ptr %i.yg, align 4, !tbaa !28
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %.092159.i.prol
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !24
  store float %i.yi, ptr %i.ye, align 4, !tbaa !29
  %i.yj = add nuw nsw i64 %.092159.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc20weightedMedianFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEidiS3_:bb.a
  %i.ajo = icmp sgt i32 %i.aiu, -1
  %i.ajp = zext i1 %i.ajo to i32
  %i.ajq = select i1 %i.ajl, i32 %i.ajn, i32 %i.ajp
  %.sroa.2.0.insert.ext.i.i165 = zext i32 %i.ajq to i64
  %.sroa.2.0.insert.shift.i.i166 = shl nuw i64 %.sroa.2.0.insert.ext.i.i165, 32
  %.sroa.0.0.insert.ext.i.i167 = zext i32 %i.ajk to i64
  %.sroa.0.0.insert.insert.i.i168 = or disjoint i64 %.sroa.2.0.insert.shift.i.i166, %.sroa.0.0.insert.ext.i.i167
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %16, i64 %.sroa.0.0.insert.insert.i.i168, i32 noundef 0)
          to label %bb.fs unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fr
  %i.ajr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %56, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.ft unwind label %bb.fv     ; 0 uses

bb.ft:                                            ; preds = %bb.fs
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16, !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16, !noalias !120
  store double 1.000000e+00, ptr %17, align 8, !tbaa !122, !noalias !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vl, i8 0, i64 24, i1 false), !noalias !120
  %i.ajs = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %56, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.fu unwind label %bb.fw     ; 0 uses

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16, !noalias !120
  br label %bb.fx

.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fr, %bb.fl
  %lpad.loopexit.split-lp496 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i159

bb.fv:                                            ; preds = %bb.fs
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #16
  br label %.body.i159

.body.i159:                                       ; preds = %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i163
  %.pn.i160 = phi { ptr, i32 } [ %i.ajt, %bb.fv ], [ %i.aiw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i163 ], [ %lpad.loopexit.split-lp496, %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16, !noalias !120
  br label %bb.ia

bb.fw:                                            ; preds = %bb.ft
  %i.aju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16, !noalias !120
  br label %bb.ia

bb.fx:                                            ; preds = %bb.fu, %bb.fj
  %i.ajv = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #19
          to label %.noexc336.i unwind label %bb.gd ; 14 uses

.noexc336.i:                                      ; preds = %bb.fx
  %i.ajw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vq) #19
          to label %.noexc337.i unwind label %bb.gd ; 2 uses

.noexc337.i:                                      ; preds = %.noexc336.i
  store ptr %i.ajw, ptr %i.ajv, align 8, !tbaa !124
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fy, %.noexc337.i
  %store_forwarded = phi ptr [ %i.ajw, %.noexc337.i ], [ %i.akk, %bb.fy ]
  %indvars.iv.i.i145 = phi i64 [ 1, %.noexc337.i ], [ %indvars.iv.next.i.i146.4, %bb.fy ] ; 6 uses
  %i.ajx = getelementptr [8 x i8], ptr %i.ajv, i64 %indvars.iv.i.i145
  %i.ajy = getelementptr inbounds [4 x i8], ptr %store_forwarded, i64 %i.vr ; 2 uses
  store ptr %i.ajy, ptr %i.ajx, align 8, !tbaa !124
  %i.ajz = getelementptr [8 x i8], ptr %i.ajv, i64 %indvars.iv.i.i145
  %i.aka = getelementptr i8, ptr %i.ajz, i64 8
  %i.akb = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.vr ; 2 uses
  store ptr %i.akb, ptr %i.aka, align 8, !tbaa !124
  %i.akc = getelementptr [8 x i8], ptr %i.ajv, i64 %indvars.iv.i.i145
  %i.akd = getelementptr i8, ptr %i.akc, i64 16
  %i.ake = getelementptr inbounds [4 x i8], ptr %i.akb, i64 %i.vr ; 2 uses
  store ptr %i.ake, ptr %i.akd, align 8, !tbaa !124
  %i.akf = getelementptr [8 x i8], ptr %i.ajv, i64 %indvars.iv.i.i145
  %i.akg = getelementptr i8, ptr %i.akf, i64 24
  %i.akh = getelementptr inbounds [4 x i8], ptr %i.ake, i64 %i.vr ; 2 uses
  store ptr %i.akh, ptr %i.akg, align 8, !tbaa !124
  %i.aki = getelementptr [8 x i8], ptr %i.ajv, i64 %indvars.iv.i.i145
  %i.akj = getelementptr i8, ptr %i.aki, i64 32
  %i.akk = getelementptr inbounds [4 x i8], ptr %i.akh, i64 %i.vr ; 2 uses
  store ptr %i.akk, ptr %i.akj, align 8, !tbaa !124
  %indvars.iv.next.i.i146.4 = add nuw nsw i64 %indvars.iv.i.i145, 5 ; 2 uses
  %exitcond.not.i.i147.4 = icmp eq i64 %indvars.iv.next.i.i146.4, 256
  br i1 %exitcond.not.i.i147.4, label %_ZN12_GLOBAL__N_15int2DEii.exit.i, label %bb.fy, !llvm.loop !75

_ZN12_GLOBAL__N_15int2DEii.exit.i:                ; preds = %bb.fy
  %i.akl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vt) #19
          to label %bb.fz unwind label %bb.gd     ; 11 uses

bb.fz:                                            ; preds = %_ZN12_GLOBAL__N_15int2DEii.exit.i
  %i.akm = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #19
          to label %.noexc341.i unwind label %bb.gd ; 17 uses

.noexc341.i:                                      ; preds = %bb.fz
  %i.akn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vq) #19
          to label %.noexc342.i unwind label %bb.gd ; 2 uses

.noexc342.i:                                      ; preds = %.noexc341.i
  store ptr %i.akn, ptr %i.akm, align 8, !tbaa !124
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ga, %.noexc342.i
  %store_forwarded471 = phi ptr [ %i.akn, %.noexc342.i ], [ %i.alb, %bb.ga ]
  %indvars.iv.i338.i = phi i64 [ 1, %.noexc342.i ], [ %indvars.iv.next.i339.i.4, %bb.ga ] ; 6 uses
  %i.ako = getelementptr [8 x i8], ptr %i.akm, i64 %indvars.iv.i338.i
  %i.akp = getelementptr inbounds [4 x i8], ptr %store_forwarded471, i64 %i.vr ; 2 uses
  store ptr %i.akp, ptr %i.ako, align 8, !tbaa !124
  %i.akq = getelementptr [8 x i8], ptr %i.akm, i64 %indvars.iv.i338.i
  %i.akr = getelementptr i8, ptr %i.akq, i64 8
  %i.aks = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.vr ; 2 uses
  store ptr %i.aks, ptr %i.akr, align 8, !tbaa !124
  %i.akt = getelementptr [8 x i8], ptr %i.akm, i64 %indvars.iv.i338.i
  %i.aku = getelementptr i8, ptr %i.akt, i64 16
  %i.akv = getelementptr inbounds [4 x i8], ptr %i.aks, i64 %i.vr ; 2 uses
  store ptr %i.akv, ptr %i.aku, align 8, !tbaa !124
  %i.akw = getelementptr [8 x i8], ptr %i.akm, i64 %indvars.iv.i338.i
  %i.akx = getelementptr i8, ptr %i.akw, i64 24
  %i.aky = getelementptr inbounds [4 x i8], ptr %i.akv, i64 %i.vr ; 2 uses
  store ptr %i.aky, ptr %i.akx, align 8, !tbaa !124
  %i.akz = getelementptr [8 x i8], ptr %i.akm, i64 %indvars.iv.i338.i
  %i.ala = getelementptr i8, ptr %i.akz, i64 32
  %i.alb = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.vr ; 2 uses
  store ptr %i.alb, ptr %i.ala, align 8, !tbaa !124
  %indvars.iv.next.i339.i.4 = add nuw nsw i64 %indvars.iv.i338.i, 5 ; 2 uses
  %exitcond.not.i340.i.4 = icmp eq i64 %indvars.iv.next.i339.i.4, 256
  br i1 %exitcond.not.i340.i.4, label %_ZN12_GLOBAL__N_15int2DEii.exit343.i, label %bb.ga, !llvm.loop !75

_ZN12_GLOBAL__N_15int2DEii.exit343.i:             ; preds = %bb.ga
  %i.alc = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #19
          to label %.noexc347.i unwind label %bb.gd ; 15 uses

.noexc347.i:                                      ; preds = %_ZN12_GLOBAL__N_15int2DEii.exit343.i
  %i.ald = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vq) #19
          to label %.noexc348.i unwind label %bb.gd ; 2 uses

.noexc348.i:                                      ; preds = %.noexc347.i
  store ptr %i.ald, ptr %i.alc, align 8, !tbaa !124
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gb, %.noexc348.i
  %store_forwarded473 = phi ptr [ %i.ald, %.noexc348.i ], [ %i.alr, %bb.gb ]
  %indvars.iv.i344.i = phi i64 [ 1, %.noexc348.i ], [ %indvars.iv.next.i345.i.4, %bb.gb ] ; 6 uses
  %i.ale = getelementptr [8 x i8], ptr %i.alc, i64 %indvars.iv.i344.i
  %i.alf = getelementptr inbounds [4 x i8], ptr %store_forwarded473, i64 %i.vr ; 2 uses
  store ptr %i.alf, ptr %i.ale, align 8, !tbaa !124
  %i.alg = getelementptr [8 x i8], ptr %i.alc, i64 %indvars.iv.i344.i
  %i.alh = getelementptr i8, ptr %i.alg, i64 8
  %i.ali = getelementptr inbounds [4 x i8], ptr %i.alf, i64 %i.vr ; 2 uses
  store ptr %i.ali, ptr %i.alh, align 8, !tbaa !124
  %i.alj = getelementptr [8 x i8], ptr %i.alc, i64 %indvars.iv.i344.i
  %i.alk = getelementptr i8, ptr %i.alj, i64 16
  %i.all = getelementptr inbounds [4 x i8], ptr %i.ali, i64 %i.vr ; 2 uses
  store ptr %i.all, ptr %i.alk, align 8, !tbaa !124
  %i.alm = getelementptr [8 x i8], ptr %i.alc, i64 %indvars.iv.i344.i
  %i.aln = getelementptr i8, ptr %i.alm, i64 24
  %i.alo = getelementptr inbounds [4 x i8], ptr %i.all, i64 %i.vr ; 2 uses
  store ptr %i.alo, ptr %i.aln, align 8, !tbaa !124
  %i.alp = getelementptr [8 x i8], ptr %i.alc, i64 %indvars.iv.i344.i
  %i.alq = getelementptr i8, ptr %i.alp, i64 32
  %i.alr = getelementptr inbounds [4 x i8], ptr %i.alo, i64 %i.vr ; 2 uses
  store ptr %i.alr, ptr %i.alq, align 8, !tbaa !124
  %indvars.iv.next.i345.i.4 = add nuw nsw i64 %indvars.iv.i344.i, 5 ; 2 uses
  %exitcond.not.i346.i.4 = icmp eq i64 %indvars.iv.next.i345.i.4, 256
  br i1 %exitcond.not.i346.i.4, label %_ZN12_GLOBAL__N_15int2DEii.exit349.i, label %bb.gb, !llvm.loop !75

_ZN12_GLOBAL__N_15int2DEii.exit349.i:             ; preds = %bb.gb
  %i.als = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vt) #19
          to label %bb.gc unwind label %bb.gd     ; 28 uses

bb.gc:                                            ; preds = %_ZN12_GLOBAL__N_15int2DEii.exit349.i
  %i.alt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vt) #19
          to label %.preheader422.i unwind label %bb.gd ; 17 uses

.preheader422.i:                                  ; preds = %bb.gc
  %i.alu = icmp sgt i32 %i.air, 0
  br i1 %i.alu, label %.lr.ph452.i, label %._crit_edge453.i

.lr.ph452.i:                                      ; preds = %.preheader422.i
  %i.alv = add nsw i32 %i.air, -1
  %i.alw = add i32 %i.aip, -1
  %i.alx = call i32 @llvm.umin.i32(i32 range(i32 1, -2147483648) %3, i32 %i.alw)
  %.not431.i = icmp slt i32 %i.aip, 1
  %i.aly = getelementptr inbounds nuw i8, ptr %i.aik, i64 24
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aik, i64 128
  %i.ama = add nuw i32 %i.alx, 1
  %wide.trip.count494.i = zext nneg i32 %i.air to i64
  %.pre.i148 = load ptr, ptr %i.ajv, align 8, !tbaa !124
  %wide.trip.count.i149 = zext i32 %i.ama to i64
  %wide.trip.count489.i = zext nneg i32 %i.aip to i64
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gc, %_ZN12_GLOBAL__N_15int2DEii.exit349.i, %.noexc347.i, %_ZN12_GLOBAL__N_15int2DEii.exit343.i, %.noexc341.i, %bb.fz, %_ZN12_GLOBAL__N_15int2DEii.exit.i, %.noexc336.i, %bb.fx, %.noexc169
  %i.amb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

bb.ge:                                            ; preds = %._crit_edge450.i, %.lr.ph452.i
  %indvars.iv491.i = phi i64 [ 0, %.lr.ph452.i ], [ %indvars.iv.next492.i, %._crit_edge450.i ] ; 4 uses
  %indvars.iv463.i = phi i32 [ %60, %.lr.ph452.i ], [ %indvars.iv.next464.i, %._crit_edge450.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.akl, i8 0, i64 %i.vs, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %.pre.i148, i8 0, i64 %i.vu, i1 false)
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gg
  %smax482.i = call i32 @llvm.smax.i32(i32 %indvars.iv463.i, i32 0)
  %61 = zext nneg i32 %smax482.i to i64           ; 3 uses
  store i32 0, ptr %i.alt, align 4, !tbaa !25
  store i32 0, ptr %i.als, align 4, !tbaa !25
  %i.amc = trunc i64 %indvars.iv491.i to i32      ; 2 uses
  %i.amd = add i32 %3, %i.amc
  %.sroa.speculated388.i = call i32 @llvm.smin.i32(i32 %i.amd, i32 %i.alv) ; 3 uses
  br i1 %.not431.i, label %._crit_edge450.i, label %.lr.ph434.i

.lr.ph434.i:                                      ; preds = %bb.gf
  %62 = sub i32 %i.amc, %3
  %.sroa.speculated394.i = call i32 @llvm.smax.i32(i32 %62, i32 0)
  %i.ame = load ptr, ptr %i.aly, align 8, !tbaa !104, !noalias !120 ; 3 uses
  %i.amf = load i64, ptr %i.alz, align 8, !tbaa !26, !noalias !120 ; 3 uses
  %i.amg = load ptr, ptr %i.bf, align 8, !tbaa !104, !noalias !120 ; 4 uses
  %i.amh = load i64, ptr %i.vv, align 8, !tbaa !26, !noalias !120 ; 5 uses
  %i.ami = load ptr, ptr %i.vw, align 8, !tbaa !104, !noalias !120 ; 3 uses
  %i.amj = load i64, ptr %i.vx, align 8, !tbaa !26, !noalias !120 ; 3 uses
  %.not333429.i = icmp sgt i32 %.sroa.speculated394.i, %.sroa.speculated388.i ; 3 uses
  br i1 %.not333429.i, label %.lr.ph449.i, label %.lr.ph.preheader.i153

.lr.ph.preheader.i153:                            ; preds = %.lr.ph434.i
  %i.amk = zext nneg i32 %.sroa.speculated388.i to i64
  br label %.lr.ph.i154

bb.gg:                                            ; preds = %bb.gg, %bb.ge
  %indvars.iv.i150 = phi i64 [ 0, %bb.ge ], [ %indvars.iv.next.i151.3, %bb.gg ] ; 6 uses
  %i.aml = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %indvars.iv.i150
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !124
  store i32 0, ptr %i.amm, align 4, !tbaa !25
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.i150
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !124
  store i32 0, ptr %i.amo, align 4, !tbaa !25
  %indvars.iv.next.i151 = or disjoint i64 %indvars.iv.i150, 1 ; 2 uses
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %indvars.iv.next.i151
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !124
  store i32 0, ptr %i.amq, align 4, !tbaa !25
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next.i151
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !124
  store i32 0, ptr %i.ams, align 4, !tbaa !25
  %indvars.iv.next.i151.1 = or disjoint i64 %indvars.iv.i150, 2 ; 2 uses
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %indvars.iv.next.i151.1
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !124
  store i32 0, ptr %i.amu, align 4, !tbaa !25
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next.i151.1
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !124
  store i32 0, ptr %i.amw, align 4, !tbaa !25
  %indvars.iv.next.i151.2 = or disjoint i64 %indvars.iv.i150, 3 ; 2 uses
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %indvars.iv.next.i151.2
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !124
  store i32 0, ptr %i.amy, align 4, !tbaa !25
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next.i151.2
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !124
  store i32 0, ptr %i.ana, align 4, !tbaa !25
  %indvars.iv.next.i151.3 = add nuw nsw i64 %indvars.iv.i150, 4 ; 2 uses
  %exitcond.not.i152.3 = icmp eq i64 %indvars.iv.next.i151.3, 256
  br i1 %exitcond.not.i152.3, label %bb.gf, label %bb.gg, !llvm.loop !76

.lr.ph449.i:                                      ; preds = %._crit_edge.i155, %.lr.ph434.i
  %i.anb = sext i32 %.sroa.speculated388.i to i64 ; 2 uses
  %i.anc = load ptr, ptr %i.wb, align 8           ; 3 uses
  %i.and = load i64, ptr %i.wc, align 8           ; 3 uses
  %i.ane = load i64, ptr %i.wd, align 8
  br label %_ZN2cv3Mat3ptrIiEEPT_ii.exit.i

.lr.ph.i154:                                      ; preds = %._crit_edge.i155, %.lr.ph.preheader.i153
  %indvars.iv468.i = phi i64 [ 0, %.lr.ph.preheader.i153 ], [ %indvars.iv.next469.i, %._crit_edge.i155 ] ; 4 uses
  %i.anf = mul i64 %indvars.iv468.i, %i.amf
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ame, i64 %i.anf
  %i.anh = mul i64 %indvars.iv468.i, %i.amh
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.anh
  %i.anj = mul i64 %indvars.iv468.i, %i.amj
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.anj
  br label %bb.gh

._crit_edge.i155:                                 ; preds = %bb.gn
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond471.not.i = icmp eq i64 %indvars.iv.next469.i, %wide.trip.count.i149
  br i1 %exitcond471.not.i, label %.lr.ph449.i, label %.lr.ph.i154, !llvm.loop !77

bb.gh:                                            ; preds = %bb.gn, %.lr.ph.i154
  %indvars.iv465.i = phi i64 [ %61, %.lr.ph.i154 ], [ %indvars.iv.next466.i, %bb.gn ] ; 5 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 %indvars.iv465.i
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !17
  %.not334.i = icmp eq i8 %i.anm, 0
  br i1 %.not334.i, label %bb.gn, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.ang, i64 %indvars.iv465.i
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !25
  %i.anp = sext i32 %i.ano to i64                 ; 3 uses
  %i.anq = getelementptr inbounds [8 x i8], ptr %i.ajv, i64 %i.anp
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !124
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.ani, i64 %indvars.iv465.i
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !25 ; 6 uses
  %i.anu = sext i32 %i.ant to i64                 ; 9 uses
  %i.anv = getelementptr inbounds [4 x i8], ptr %i.anr, i64 %i.anu ; 4 uses
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !25 ; 2 uses
  %i.anx = icmp eq i32 %i.anw, 0
  %i.any = icmp ne i32 %i.ant, 0                  ; 2 uses
  %or.cond.i = and i1 %i.any, %i.anx
  br i1 %or.cond.i, label %.thread.i158, label %bb.gj

.thread.i158:                                     ; preds = %bb.gi
  %i.anz = getelementptr inbounds [8 x i8], ptr %i.akm, i64 %i.anp
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !124 ; 3 uses
  %i.aob = getelementptr inbounds [8 x i8], ptr %i.alc, i64 %i.anp
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !124 ; 2 uses
  %i.aod = load i32, ptr %i.aoa, align 4, !tbaa !25 ; 2 uses
  store i32 %i.ant, ptr %i.aoa, align 4, !tbaa !25
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.aoa, i64 %i.anu
  store i32 %i.aod, ptr %i.aoe, align 4, !tbaa !25
  %i.aof = sext i32 %i.aod to i64
  %i.aog = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.aof
  store i32 %i.ant, ptr %i.aog, align 4, !tbaa !25
  %i.aoh = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.anu
  store i32 0, ptr %i.aoh, align 4, !tbaa !25
  %i.aoi = load i32, ptr %i.anv, align 4, !tbaa !25
  %i.aoj = add nsw i32 %i.aoi, 1
  store i32 %i.aoj, ptr %i.anv, align 4, !tbaa !25
  %i.aok = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.anu
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.aol = add nsw i32 %i.anw, 1
  store i32 %i.aol, ptr %i.anv, align 4, !tbaa !25
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.anu ; 3 uses
  br i1 %i.any, label %bb.gk, label %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit_crit_edge.i

._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit_crit_edge.i: ; preds = %bb.gj
  %.pre496.i.a = load i32, ptr %i.aom, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit.i

bb.gk:                                            ; preds = %bb.gj, %.thread.i158
  %i.aon = phi ptr [ %i.aok, %.thread.i158 ], [ %i.aom, %bb.gj ] ; 3 uses
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !25 ; 3 uses
  switch i32 %i.aoo, label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit.i [
    i32 0, label %bb.gl
    i32 1, label %bb.gm
  ]

bb.gl:                                            ; preds = %bb.gk
  %i.aop = load i32, ptr %i.als, align 4, !tbaa !25 ; 2 uses
  store i32 %i.ant, ptr %i.als, align 4, !tbaa !25
  %i.aoq = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.anu
  store i32 %i.aop, ptr %i.aoq, align 4, !tbaa !25
  %i.aor = sext i32 %i.aop to i64
  %i.aos = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.aor
  store i32 %i.ant, ptr %i.aos, align 4, !tbaa !25
  br label %.sink.split.i.i

bb.gm:                                            ; preds = %bb.gk
  %i.aot = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.anu
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !25 ; 2 uses
  %i.aov = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.anu
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !25 ; 2 uses
  %i.aox = sext i32 %i.aou to i64
  %i.aoy = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.aox
  store i32 %i.aow, ptr %i.aoy, align 4, !tbaa !25
  %i.aoz = sext i32 %i.aow to i64
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.gm, %bb.gl
  %.sink25.i.i = phi i64 [ %i.anu, %bb.gl ], [ %i.aoz, %bb.gm ]
  %.sink.i.i = phi i32 [ 0, %bb.gl ], [ %i.aou, %bb.gm ]
  %i.apa = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %.sink25.i.i
  store i32 %.sink.i.i, ptr %i.apa, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit.i

_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit.i:     ; preds = %.sink.split.i.i, %bb.gk, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit_crit_edge.i
  %i.apb = phi i32 [ %.pre496.i.a, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit_crit_edge.i ], [ %i.aoo, %bb.gk ], [ %i.aoo, %.sink.split.i.i ]
  %i.apc = phi ptr [ %i.aom, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit_crit_edge.i ], [ %i.aon, %bb.gk ], [ %i.aon, %.sink.split.i.i ]
  %i.apd = add nsw i32 %i.apb, -1
  store i32 %i.apd, ptr %i.apc, align 4, !tbaa !25
  br label %bb.gn

bb.gn:                                            ; preds = %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit.i, %bb.gh
  %indvars.iv.next466.i = add nuw nsw i64 %indvars.iv465.i, 1
  %.not333.not.i = icmp samesign ult i64 %indvars.iv465.i, %i.amk
  br i1 %.not333.not.i, label %bb.gh, label %._crit_edge.i155, !llvm.loop !78

._crit_edge450.i:                                 ; preds = %.loopexit.i156, %bb.gf
  %indvars.iv.next492.i = add nuw nsw i64 %indvars.iv491.i, 1 ; 2 uses
  %indvars.iv.next464.i = add nsw i32 %indvars.iv463.i, 1
  %exitcond495.not.i = icmp eq i64 %indvars.iv.next492.i, %wide.trip.count494.i
  br i1 %exitcond495.not.i, label %._crit_edge453.i, label %bb.ge, !llvm.loop !79

_ZN2cv3Mat3ptrIiEEPT_ii.exit.i:                   ; preds = %.loopexit.i156, %.lr.ph449.i
  %indvars.iv486.i = phi i64 [ 0, %.lr.ph449.i ], [ %indvars.iv.next487.i, %.loopexit.i156 ] ; 5 uses
  %.0299447.i = phi i32 [ -1, %.lr.ph449.i ], [ %.3302410.i, %.loopexit.i156 ] ; 6 uses
  %i.ape = load i32, ptr %i.vy, align 4, !tbaa !125, !noalias !120
  %i.apf = icmp slt i32 %i.ape, 2                 ; 2 uses
  %i.apg = mul i64 %indvars.iv486.i, %i.amh
  %i.aph = load i64, ptr %i.vz, align 8
  %.sink527.i = select i1 %i.apf, i64 %i.amh, i64 %i.aph
  %.sink.i.idx = select i1 %i.apf, i64 0, i64 %i.apg
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.amg, i64 %.sink.i.idx
  %i.api = mul i64 %.sink527.i, %indvars.iv491.i
  %i.apj = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.api
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !25
  %i.apl = sext i32 %i.apk to i64
  %i.apm = getelementptr inbounds [8 x i8], ptr %.0220, i64 %i.apl
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !106, !noalias !120 ; 3 uses
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %_ZN2cv3Mat3ptrIiEEPT_ii.exit.i
  %.0278.i = phi float [ 0.000000e+00, %_ZN2cv3Mat3ptrIiEEPT_ii.exit.i ], [ %i.apu, %bb.go ]
  %.0277.i = phi i32 [ 0, %_ZN2cv3Mat3ptrIiEEPT_ii.exit.i ], [ %i.apw, %bb.go ]
  %i.apo = sext i32 %.0277.i to i64               ; 3 uses
  %i.app = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.apo
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !25
  %i.apr = sitofp i32 %i.apq to float
  %i.aps = getelementptr inbounds [4 x i8], ptr %i.apn, i64 %i.apo
  %i.apt = load float, ptr %i.aps, align 4, !tbaa !24
  %i.apu = call float @llvm.fmuladd.f32(float %i.apr, float %i.apt, float %.0278.i) ; 8 uses
  %i.apv = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.apo
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !25 ; 2 uses
  %.not322.i = icmp eq i32 %i.apw, 0
  br i1 %.not322.i, label %bb.gp, label %bb.go, !llvm.loop !80

bb.gp:                                            ; preds = %bb.go
  %i.apx = fcmp ult float %i.apu, 0.000000e+00
  br i1 %i.apx, label %bb.gw, label %.preheader419.i

.preheader419.i:                                  ; preds = %bb.gp
  %i.apy = icmp sgt i32 %.0299447.i, 0
  br i1 %i.apy, label %.lr.ph437.preheader.i, label %.critedge.i

.lr.ph437.preheader.i:                            ; preds = %.preheader419.i
  %i.apz = zext nneg i32 %.0299447.i to i64
  br label %.lr.ph437.i

.lr.ph437.i:                                      ; preds = %bb.gv, %.lr.ph437.preheader.i
  %indvars.iv472.i = phi i64 [ %i.apz, %.lr.ph437.preheader.i ], [ %indvars.iv.next473.i, %bb.gv ] ; 4 uses
  %.1279436.i = phi float [ %i.apu, %.lr.ph437.preheader.i ], [ %i.arc, %bb.gv ]
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.ajv, i64 %indvars.iv472.i
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !124
  %i.aqc = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv472.i
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !124
  br label %bb.gq

bb.gq:                                            ; preds = %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit358.i, %.lr.ph437.i
  %.0276.i = phi float [ 0.000000e+00, %.lr.ph437.i ], [ %i.aql, %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit358.i ]
  %.0275.i = phi i32 [ 0, %.lr.ph437.i ], [ %i.arb, %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit358.i ] ; 4 uses
  %i.aqe = sext i32 %.0275.i to i64               ; 8 uses
  %i.aqf = getelementptr inbounds [4 x i8], ptr %i.aqb, i64 %i.aqe
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !25
  %i.aqh = shl i32 %i.aqg, 1                      ; 3 uses
  %i.aqi = sitofp i32 %i.aqh to float
  %i.aqj = getelementptr inbounds [4 x i8], ptr %i.apn, i64 %i.aqe
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !24
  %i.aql = call float @llvm.fmuladd.f32(float %i.aqi, float %i.aqk, float %.0276.i) ; 2 uses
  %i.aqm = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.aqe ; 2 uses
  %.not.i352.i = icmp eq i32 %.0275.i, 0
  %.pre497.i = load i32, ptr %i.aqm, align 4, !tbaa !25 ; 3 uses
  br i1 %.not.i352.i, label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit358.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %.not21.i353.i = icmp eq i32 %.pre497.i, 0
  br i1 %.not21.i353.i, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aqn = load i32, ptr %i.als, align 4, !tbaa !25 ; 2 uses
  store i32 %.0275.i, ptr %i.als, align 4, !tbaa !25
  %i.aqo = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.aqe
  store i32 %i.aqn, ptr %i.aqo, align 4, !tbaa !25
  %i.aqp = sext i32 %i.aqn to i64
  %i.aqq = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.aqp
  store i32 %.0275.i, ptr %i.aqq, align 4, !tbaa !25
  br label %.sink.split.i355.i

bb.gt:                                            ; preds = %bb.gr
  %.not22.i354.i = icmp eq i32 %.pre497.i, %i.aqh
  br i1 %.not22.i354.i, label %bb.gu, label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit358.i

bb.gu:                                            ; preds = %bb.gt
  %i.aqr = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.aqe
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !25 ; 2 uses
  %i.aqt = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.aqe
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !25 ; 2 uses
  %i.aqv = sext i32 %i.aqs to i64
  %i.aqw = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.aqv
  store i32 %i.aqu, ptr %i.aqw, align 4, !tbaa !25
  %i.aqx = sext i32 %i.aqu to i64
  br label %.sink.split.i355.i

.sink.split.i355.i:                               ; preds = %bb.gu, %bb.gs
  %.sink25.i356.i = phi i64 [ %i.aqe, %bb.gs ], [ %i.aqx, %bb.gu ]
  %.sink.i357.i = phi i32 [ 0, %bb.gs ], [ %i.aqs, %bb.gu ]
  %i.aqy = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %.sink25.i356.i
  store i32 %.sink.i357.i, ptr %i.aqy, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit358.i

_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit358.i:  ; preds = %.sink.split.i355.i, %bb.gt, %bb.gq
  %i.aqz = sub nsw i32 %.pre497.i, %i.aqh
  store i32 %i.aqz, ptr %i.aqm, align 4, !tbaa !25
  %i.ara = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.aqe
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !25 ; 2 uses
  %.not332.i = icmp eq i32 %i.arb, 0
  br i1 %.not332.i, label %bb.gv, label %bb.gq, !llvm.loop !81

bb.gv:                                            ; preds = %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit358.i
  %i.arc = fsub float %.1279436.i, %i.aql         ; 3 uses
  %indvars.iv.next473.i = add nsw i64 %indvars.iv472.i, -1 ; 2 uses
  %i.ard = fcmp oge float %i.arc, 0.000000e+00
  %i.are = icmp sgt i64 %indvars.iv472.i, 1
  %or.cond335.i = and i1 %i.are, %i.ard
  br i1 %or.cond335.i, label %.lr.ph437.i, label %.critedge.loopexit454.i, !llvm.loop !82

bb.gw:                                            ; preds = %bb.gp
  %i.arf = fcmp olt float %i.apu, 0.000000e+00
  br i1 %i.arf, label %.preheader.preheader.i, label %.critedge.i

.preheader.preheader.i:                           ; preds = %bb.gw
  %i.arg = icmp eq i32 %.0299447.i, 255
  br i1 %i.arg, label %.critedge.thread.i, label %.lr.ph446

.lr.ph446:                                        ; preds = %.preheader.preheader.i
  %i.arh = sext i32 %.0299447.i to i64
  br label %bb.gx

.preheader.i157:                                  ; preds = %bb.hd
  %i.ari = icmp eq i64 %indvars.iv.next476.i, 255
  br i1 %i.ari, label %.critedge.thread.i, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph446, %.preheader.i157
  %.2280.i445 = phi float [ %i.apu, %.lr.ph446 ], [ %i.asm, %.preheader.i157 ]
  %indvars.iv475.i444 = phi i64 [ %i.arh, %.lr.ph446 ], [ %indvars.iv.next476.i, %.preheader.i157 ]
  %indvars.iv.next476.i = add nsw i64 %indvars.iv475.i444, 1 ; 5 uses
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.ajv, i64 %indvars.iv.next476.i
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !124
  %i.arl = getelementptr inbounds [8 x i8], ptr %i.akm, i64 %indvars.iv.next476.i
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !124
  br label %bb.gy

bb.gy:                                            ; preds = %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit365.i, %bb.gx
  %.0274.i = phi float [ 0.000000e+00, %bb.gx ], [ %i.aru, %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit365.i ]
  %.0273.i = phi i32 [ 0, %bb.gx ], [ %i.asl, %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit365.i ] ; 4 uses
  %i.arn = sext i32 %.0273.i to i64               ; 8 uses
  %i.aro = getelementptr inbounds [4 x i8], ptr %i.ark, i64 %i.arn
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !25
  %i.arq = shl i32 %i.arp, 1                      ; 3 uses
  %i.arr = sitofp i32 %i.arq to float
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.apn, i64 %i.arn
  %i.art = load float, ptr %i.ars, align 4, !tbaa !24
  %i.aru = call float @llvm.fmuladd.f32(float %i.arr, float %i.art, float %.0274.i) ; 2 uses
  %i.arv = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.arn ; 2 uses
  %.not.i359.i = icmp eq i32 %.0273.i, 0
  %.pre498.i.a = load i32, ptr %i.arv, align 4, !tbaa !25 ; 3 uses
  br i1 %.not.i359.i, label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit365.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %.not21.i360.i = icmp eq i32 %.pre498.i.a, 0
  br i1 %.not21.i360.i, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.arw = load i32, ptr %i.als, align 4, !tbaa !25 ; 2 uses
  store i32 %.0273.i, ptr %i.als, align 4, !tbaa !25
  %i.arx = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.arn
  store i32 %i.arw, ptr %i.arx, align 4, !tbaa !25
  %i.ary = sext i32 %i.arw to i64
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.ary
  store i32 %.0273.i, ptr %i.arz, align 4, !tbaa !25
  br label %.sink.split.i362.i

bb.hb:                                            ; preds = %bb.gz
  %i.asa = sub i32 0, %i.arq
  %.not22.i361.i = icmp eq i32 %.pre498.i.a, %i.asa
  br i1 %.not22.i361.i, label %bb.hc, label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit365.i

bb.hc:                                            ; preds = %bb.hb
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.arn
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !25 ; 2 uses
  %i.asd = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.arn
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !25 ; 2 uses
  %i.asf = sext i32 %i.asc to i64
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.asf
  store i32 %i.ase, ptr %i.asg, align 4, !tbaa !25
  %i.ash = sext i32 %i.ase to i64
  br label %.sink.split.i362.i

.sink.split.i362.i:                               ; preds = %bb.hc, %bb.ha
  %.sink25.i363.i = phi i64 [ %i.arn, %bb.ha ], [ %i.ash, %bb.hc ]
  %.sink.i364.i = phi i32 [ 0, %bb.ha ], [ %i.asc, %bb.hc ]
  %i.asi = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %.sink25.i363.i
  store i32 %.sink.i364.i, ptr %i.asi, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit365.i

_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit365.i:  ; preds = %.sink.split.i362.i, %bb.hb, %bb.gy
  %i.asj = add nsw i32 %.pre498.i.a, %i.arq
  store i32 %i.asj, ptr %i.arv, align 4, !tbaa !25
  %i.ask = getelementptr inbounds [4 x i8], ptr %i.arm, i64 %i.arn
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !25 ; 2 uses
  %.not324.i = icmp eq i32 %i.asl, 0
  br i1 %.not324.i, label %bb.hd, label %bb.gy, !llvm.loop !83

bb.hd:                                            ; preds = %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit365.i
  %i.asm = fadd float %.2280.i445, %i.aru         ; 4 uses
  %.old8.i = fcmp olt float %i.asm, 0.000000e+00
  br i1 %.old8.i, label %.preheader.i157, label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %bb.hd
  %i.asn = trunc nsw i64 %indvars.iv.next476.i to i32
  br label %.critedge.i

.critedge.loopexit454.i:                          ; preds = %bb.gv
  %i.aso = trunc nuw nsw i64 %indvars.iv.next473.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit454.i, %.critedge.loopexit.i, %bb.gw, %.preheader419.i
  %.3302.i = phi i32 [ %.0299447.i, %bb.gw ], [ %i.asn, %.critedge.loopexit.i ], [ %.0299447.i, %.preheader419.i ], [ %i.aso, %.critedge.loopexit454.i ] ; 2 uses
  %.3281.i = phi float [ %i.apu, %bb.gw ], [ %i.asm, %.critedge.loopexit.i ], [ %i.apu, %.preheader419.i ], [ %i.arc, %.critedge.loopexit454.i ]
  %.not325.i = icmp eq i32 %.3302.i, -1
  br i1 %.not325.i, label %bb.hg, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader.i157, %.preheader.preheader.i, %.critedge.i
  %.3281411.i = phi float [ %.3281.i, %.critedge.i ], [ %i.apu, %.preheader.preheader.i ], [ %i.asm, %.preheader.i157 ]
  %.3302409.i = phi i32 [ %.3302.i, %.critedge.i ], [ 255, %.preheader.preheader.i ], [ 255, %.preheader.i157 ] ; 4 uses
  %i.asp = fcmp olt float %.3281411.i, 0.000000e+00
  br i1 %i.asp, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.critedge.thread.i
  %i.asq = add nuw nsw i32 %.3302409.i, 1         ; 2 uses
  %i.asr = load i32, ptr %i.wa, align 4, !tbaa !125, !alias.scope !120
  %i.ass = icmp slt i32 %i.asr, 2
  br i1 %i.ass, label %.sink.split.i, label %.sink.split.sink.split.i

bb.hf:                                            ; preds = %.critedge.thread.i
  %i.ast = load i32, ptr %i.wa, align 4, !tbaa !125, !alias.scope !120
  %i.asu = icmp slt i32 %i.ast, 2
  br i1 %i.asu, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.hf, %bb.he
  %.sink534.ph.i = phi i32 [ %i.asq, %bb.he ], [ %.3302409.i, %bb.hf ]
  %i.asv = mul i64 %i.and, %indvars.iv486.i
  %i.asw = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.asv
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.hf, %bb.he
  %.sink530.sink.i = phi i64 [ %i.and, %bb.he ], [ %i.and, %bb.hf ], [ %i.ane, %.sink.split.sink.split.i ]
  %.sink528.sink.i = phi ptr [ %i.anc, %bb.he ], [ %i.anc, %bb.hf ], [ %i.asw, %.sink.split.sink.split.i ]
  %.sink534.i = phi i32 [ %i.asq, %bb.he ], [ %.3302409.i, %bb.hf ], [ %.sink534.ph.i, %.sink.split.sink.split.i ]
  %i.asx = mul i64 %.sink530.sink.i, %indvars.iv491.i
  %i.asy = getelementptr inbounds nuw i8, ptr %.sink528.sink.i, i64 %i.asx
  store i32 %.sink534.i, ptr %i.asy, align 4, !tbaa !25
  br label %bb.hg

bb.hg:                                            ; preds = %.sink.split.i, %.critedge.i
  %.3302410.i = phi i32 [ -1, %.critedge.i ], [ %.3302409.i, %.sink.split.i ] ; 5 uses
  %i.asz = add nuw nsw i64 %indvars.iv486.i, %i.wf ; 4 uses
  %i.ata = trunc nuw i64 %i.asz to i32
  %i.atb = icmp sgt i32 %i.aip, %i.ata
  br i1 %i.atb, label %bb.hh, label %.loopexit418.i

bb.hh:                                            ; preds = %bb.hg
  %i.atc = mul i64 %i.asz, %i.amf
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ame, i64 %i.atc
  %i.ate = mul i64 %i.asz, %i.amh
  %i.atf = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.ate
  %i.atg = mul i64 %i.asz, %i.amj
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.atg
  br i1 %.not333429.i, label %.loopexit.i156, label %.lr.ph442.i

.lr.ph442.i:                                      ; preds = %bb.hh, %bb.ho
  %indvars.iv479.i.a = phi i64 [ %indvars.iv.next480.i.a, %bb.ho ], [ %61, %bb.hh ] ; 5 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 %indvars.iv479.i.a
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !17
  %.not330.i = icmp eq i8 %i.atj, 0
  br i1 %.not330.i, label %bb.ho, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph442.i
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %indvars.iv479.i.a
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !25 ; 3 uses
  %i.atm = sext i32 %i.atl to i64                 ; 3 uses
  %i.atn = getelementptr inbounds [8 x i8], ptr %i.ajv, i64 %i.atm
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !124
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %i.atf, i64 %indvars.iv479.i.a
  %i.atq = load i32, ptr %i.atp, align 4, !tbaa !25 ; 6 uses
  %i.atr = sext i32 %i.atq to i64                 ; 9 uses
  %i.ats = getelementptr inbounds [4 x i8], ptr %i.ato, i64 %i.atr ; 4 uses
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !25 ; 2 uses
  %i.atu = icmp eq i32 %i.att, 0
  %i.atv = icmp ne i32 %i.atq, 0                  ; 2 uses
  %or.cond5.i = and i1 %i.atv, %i.atu
  br i1 %or.cond5.i, label %.thread412.i, label %bb.hj

.thread412.i:                                     ; preds = %bb.hi
  %i.atw = getelementptr inbounds [8 x i8], ptr %i.akm, i64 %i.atm
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !124 ; 3 uses
  %i.aty = getelementptr inbounds [8 x i8], ptr %i.alc, i64 %i.atm
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !124 ; 2 uses
  %i.aua = load i32, ptr %i.atx, align 4, !tbaa !25 ; 2 uses
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.atx, i64 %i.atr
  store i32 %i.aua, ptr %i.aub, align 4, !tbaa !25
  %i.auc = getelementptr inbounds [4 x i8], ptr %i.atz, i64 %i.atr
  store i32 0, ptr %i.auc, align 4, !tbaa !25
  %i.aud = sext i32 %i.aua to i64
  %i.aue = getelementptr inbounds [4 x i8], ptr %i.atz, i64 %i.aud
  store i32 %i.atq, ptr %i.aue, align 4, !tbaa !25
  store i32 %i.atq, ptr %i.atx, align 4, !tbaa !25
  %i.auf = load i32, ptr %i.ats, align 4, !tbaa !25
  %i.aug = add nsw i32 %i.auf, 1
  store i32 %i.aug, ptr %i.ats, align 4, !tbaa !25
  %i.auh = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.atr
  %.not331413.i = icmp sgt i32 %i.atl, %.3302410.i
  %i.aui = select i1 %.not331413.i, i32 -1, i32 1
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.auj = add nsw i32 %i.att, 1
  store i32 %i.auj, ptr %i.ats, align 4, !tbaa !25
  %i.auk = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.atr ; 3 uses
  %.not331.i = icmp sgt i32 %i.atl, %.3302410.i
  %i.aul = select i1 %.not331.i, i32 -1, i32 1    ; 2 uses
  br i1 %i.atv, label %bb.hk, label %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376_crit_edge.i

._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376_crit_edge.i: ; preds = %bb.hj
  %.pre500.i = load i32, ptr %i.auk, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376.i

bb.hk:                                            ; preds = %bb.hj, %.thread412.i
  %i.aum = phi i32 [ %i.aui, %.thread412.i ], [ %i.aul, %bb.hj ] ; 3 uses
  %i.aun = phi ptr [ %i.auh, %.thread412.i ], [ %i.auk, %bb.hj ] ; 3 uses
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !25 ; 4 uses
  %.not21.i371.i = icmp eq i32 %i.auo, 0
  br i1 %.not21.i371.i, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aup = load i32, ptr %i.als, align 4, !tbaa !25 ; 2 uses
  store i32 %i.atq, ptr %i.als, align 4, !tbaa !25
  %i.auq = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.atr
  store i32 %i.aup, ptr %i.auq, align 4, !tbaa !25
  %i.aur = sext i32 %i.aup to i64
  %i.aus = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.aur
  store i32 %i.atq, ptr %i.aus, align 4, !tbaa !25
  br label %.sink.split.i373.i

bb.hm:                                            ; preds = %bb.hk
  %i.aut = sub nsw i32 0, %i.aum
  %.not22.i372.i = icmp eq i32 %i.auo, %i.aut
  br i1 %.not22.i372.i, label %bb.hn, label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376.i

bb.hn:                                            ; preds = %bb.hm
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.atr
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !25 ; 2 uses
  %i.auw = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.atr
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !25 ; 2 uses
  %i.auy = sext i32 %i.auv to i64
  %i.auz = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.auy
  store i32 %i.aux, ptr %i.auz, align 4, !tbaa !25
  %i.ava = sext i32 %i.aux to i64
  br label %.sink.split.i373.i

.sink.split.i373.i:                               ; preds = %bb.hn, %bb.hl
  %.sink25.i374.i = phi i64 [ %i.atr, %bb.hl ], [ %i.ava, %bb.hn ]
  %.sink.i375.i = phi i32 [ 0, %bb.hl ], [ %i.auv, %bb.hn ]
  %i.avb = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %.sink25.i374.i
  store i32 %.sink.i375.i, ptr %i.avb, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376.i

_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376.i:  ; preds = %.sink.split.i373.i, %bb.hm, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376_crit_edge.i
  %i.avc = phi i32 [ %.pre500.i, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376_crit_edge.i ], [ %i.auo, %bb.hm ], [ %i.auo, %.sink.split.i373.i ]
  %i.avd = phi i32 [ %i.aul, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376_crit_edge.i ], [ %i.aum, %bb.hm ], [ %i.aum, %.sink.split.i373.i ]
  %i.ave = phi ptr [ %i.auk, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376_crit_edge.i ], [ %i.aun, %bb.hm ], [ %i.aun, %.sink.split.i373.i ]
  %i.avf = add nsw i32 %i.avd, %i.avc
  store i32 %i.avf, ptr %i.ave, align 4, !tbaa !25
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit376.i, %.lr.ph442.i
  %indvars.iv.next480.i.a = add nuw nsw i64 %indvars.iv479.i.a, 1
  %.not326.not.i = icmp slt i64 %indvars.iv479.i.a, %i.anb
  br i1 %.not326.not.i, label %.lr.ph442.i, label %.loopexit418.i, !llvm.loop !84

.loopexit418.i:                                   ; preds = %bb.ho, %bb.hg
  %i.avg = sub nsw i64 %indvars.iv486.i, %i.wg    ; 4 uses
  %i.avh = icmp sgt i64 %i.avg, -1
  br i1 %i.avh, label %bb.hp, label %.loopexit.i156

bb.hp:                                            ; preds = %.loopexit418.i
  %i.avi = mul i64 %i.avg, %i.amf
  %i.avj = getelementptr inbounds nuw i8, ptr %i.ame, i64 %i.avi
  %i.avk = mul i64 %i.avg, %i.amh
  %i.avl = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.avk
  %i.avm = mul i64 %i.avg, %i.amj
  %i.avn = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.avm
  br i1 %.not333429.i, label %.loopexit.i156, label %.lr.ph446.i

.lr.ph446.i:                                      ; preds = %bb.hp, %bb.hw
  %indvars.iv483.i = phi i64 [ %indvars.iv.next484.i, %bb.hw ], [ %61, %bb.hp ] ; 5 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 %indvars.iv483.i
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !17
  %.not328.i = icmp eq i8 %i.avp, 0
  br i1 %.not328.i, label %bb.hw, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph446.i
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %indvars.iv483.i
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !25 ; 3 uses
  %i.avs = sext i32 %i.avr to i64                 ; 3 uses
  %i.avt = getelementptr inbounds [8 x i8], ptr %i.ajv, i64 %i.avs
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !124
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %indvars.iv483.i
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !25 ; 4 uses
  %i.avx = sext i32 %i.avw to i64                 ; 9 uses
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.avu, i64 %i.avx ; 2 uses
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !25
  %i.awa = add nsw i32 %i.avz, -1                 ; 2 uses
  store i32 %i.awa, ptr %i.avy, align 4, !tbaa !25
  %i.awb = icmp eq i32 %i.awa, 0
  %i.awc = icmp ne i32 %i.avw, 0                  ; 2 uses
  %or.cond7.i = and i1 %i.awc, %i.awb
  br i1 %or.cond7.i, label %.thread415.i, label %bb.hr

.thread415.i:                                     ; preds = %bb.hq
  %i.awd = getelementptr inbounds [8 x i8], ptr %i.akm, i64 %i.avs
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !124 ; 2 uses
  %i.awf = getelementptr inbounds [8 x i8], ptr %i.alc, i64 %i.avs
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !124 ; 2 uses
  %i.awh = getelementptr inbounds [4 x i8], ptr %i.awg, i64 %i.avx
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !25 ; 2 uses
  %i.awj = getelementptr inbounds [4 x i8], ptr %i.awe, i64 %i.avx
  %i.awk = load i32, ptr %i.awj, align 4, !tbaa !25 ; 2 uses
  %i.awl = sext i32 %i.awi to i64
  %i.awm = getelementptr inbounds [4 x i8], ptr %i.awe, i64 %i.awl
  store i32 %i.awk, ptr %i.awm, align 4, !tbaa !25
  %i.awn = sext i32 %i.awk to i64
  %i.awo = getelementptr inbounds [4 x i8], ptr %i.awg, i64 %i.awn
  store i32 %i.awi, ptr %i.awo, align 4, !tbaa !25
  %i.awp = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.avx
  %.not329416.i = icmp sgt i32 %i.avr, %.3302410.i
  %i.awq = select i1 %.not329416.i, i32 1, i32 -1
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.awr = getelementptr inbounds [4 x i8], ptr %i.akl, i64 %i.avx ; 3 uses
  %.not329.i = icmp sgt i32 %i.avr, %.3302410.i
  %i.aws = select i1 %.not329.i, i32 1, i32 -1    ; 2 uses
  br i1 %i.awc, label %bb.hs, label %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383_crit_edge.i

._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383_crit_edge.i: ; preds = %bb.hr
  %.pre502.i = load i32, ptr %i.awr, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383.i

bb.hs:                                            ; preds = %bb.hr, %.thread415.i
  %i.awt = phi i32 [ %i.awq, %.thread415.i ], [ %i.aws, %bb.hr ] ; 3 uses
  %i.awu = phi ptr [ %i.awp, %.thread415.i ], [ %i.awr, %bb.hr ] ; 3 uses
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !25 ; 4 uses
  %.not21.i378.i = icmp eq i32 %i.awv, 0
  br i1 %.not21.i378.i, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.aww = load i32, ptr %i.als, align 4, !tbaa !25 ; 2 uses
  store i32 %i.avw, ptr %i.als, align 4, !tbaa !25
  %i.awx = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.avx
  store i32 %i.aww, ptr %i.awx, align 4, !tbaa !25
  %i.awy = sext i32 %i.aww to i64
  %i.awz = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.awy
  store i32 %i.avw, ptr %i.awz, align 4, !tbaa !25
  br label %.sink.split.i380.i

bb.hu:                                            ; preds = %bb.hs
  %i.axa = sub nsw i32 0, %i.awt
  %.not22.i379.i = icmp eq i32 %i.awv, %i.axa
  br i1 %.not22.i379.i, label %bb.hv, label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383.i

bb.hv:                                            ; preds = %bb.hu
  %i.axb = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.avx
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !25 ; 2 uses
  %i.axd = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.avx
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !25 ; 2 uses
  %i.axf = sext i32 %i.axc to i64
  %i.axg = getelementptr inbounds [4 x i8], ptr %i.als, i64 %i.axf
  store i32 %i.axe, ptr %i.axg, align 4, !tbaa !25
  %i.axh = sext i32 %i.axe to i64
  br label %.sink.split.i380.i

.sink.split.i380.i:                               ; preds = %bb.hv, %bb.ht
  %.sink25.i381.i = phi i64 [ %i.avx, %bb.ht ], [ %i.axh, %bb.hv ]
  %.sink.i382.i = phi i32 [ 0, %bb.ht ], [ %i.axc, %bb.hv ]
  %i.axi = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %.sink25.i381.i
  store i32 %.sink.i382.i, ptr %i.axi, align 4, !tbaa !25
  br label %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383.i

_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383.i:  ; preds = %.sink.split.i380.i, %bb.hu, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383_crit_edge.i
  %i.axj = phi i32 [ %.pre502.i, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383_crit_edge.i ], [ %i.awv, %bb.hu ], [ %i.awv, %.sink.split.i380.i ]
  %i.axk = phi i32 [ %i.aws, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383_crit_edge.i ], [ %i.awt, %bb.hu ], [ %i.awt, %.sink.split.i380.i ]
  %i.axl = phi ptr [ %i.awr, %._ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383_crit_edge.i ], [ %i.awu, %bb.hu ], [ %i.awu, %.sink.split.i380.i ]
  %i.axm = add nsw i32 %i.axk, %i.axj
  store i32 %i.axm, ptr %i.axl, align 4, !tbaa !25
  br label %bb.hw

bb.hw:                                            ; preds = %_ZN12_GLOBAL__N_19updateBCBERiPiS1_ii.exit383.i, %.lr.ph446.i
  %indvars.iv.next484.i = add nuw nsw i64 %indvars.iv483.i, 1
  %.not327.not.i = icmp slt i64 %indvars.iv483.i, %i.anb
  br i1 %.not327.not.i, label %.lr.ph446.i, label %.loopexit.i156, !llvm.loop !85

.loopexit.i156:                                   ; preds = %bb.hw, %bb.hh, %bb.hp, %.loopexit418.i
  %indvars.iv.next487.i = add nuw nsw i64 %indvars.iv486.i, 1 ; 2 uses
  %exitcond490.not.i = icmp eq i64 %indvars.iv.next487.i, %wide.trip.count489.i
  br i1 %exitcond490.not.i, label %._crit_edge450.i, label %_ZN2cv3Mat3ptrIiEEPT_ii.exit.i, !llvm.loop !86

._crit_edge453.i:                                 ; preds = %._crit_edge450.i, %.preheader422.i
  call void @_ZdaPv(ptr noundef nonnull %i.akl) #18
  call void @_ZdaPv(ptr noundef nonnull %i.als) #18
  call void @_ZdaPv(ptr noundef nonnull %i.alt) #18
  %i.axn = load ptr, ptr %i.ajv, align 8, !tbaa !124 ; 2 uses
  %i.axo = icmp eq ptr %i.axn, null
  br i1 %i.axo, label %_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit.i, label %bb.hx

bb.hx:                                            ; preds = %._crit_edge453.i
  call void @_ZdaPv(ptr noundef nonnull %i.axn) #18
  br label %_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit.i

_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit.i:      ; preds = %bb.hx, %._crit_edge453.i
  call void @_ZdaPv(ptr noundef nonnull %i.ajv) #18
  %i.axp = load ptr, ptr %i.akm, align 8, !tbaa !124 ; 2 uses
  %i.axq = icmp eq ptr %i.axp, null
  br i1 %i.axq, label %_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit384.i, label %bb.hy

bb.hy:                                            ; preds = %_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.axp) #18
  br label %_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit384.i

_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit384.i:   ; preds = %bb.hy, %_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.akm) #18
  %i.axr = load ptr, ptr %i.alc, align 8, !tbaa !124 ; 2 uses
  %i.axs = icmp eq ptr %i.axr, null
  br i1 %i.axs, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit384.i
  call void @_ZdaPv(ptr noundef nonnull %i.axr) #18
  br label %bb.ib

bb.ia:                                            ; preds = %bb.gd, %bb.fw, %.body.i159
  %.pn315.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.amb, %bb.gd ], [ %i.aju, %bb.fw ], [ %.pn.i160, %.body.i159 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #16
  br label %.body170

bb.ib:                                            ; preds = %bb.hz, %_ZN12_GLOBAL__N_113int2D_releaseEPPi.exit384.i
  call void @_ZdaPv(ptr noundef nonnull %i.alc) #18
  %i.axt = load ptr, ptr %51, align 8, !tbaa !21
  %i.axu = getelementptr inbounds nuw [208 x i8], ptr %i.axt, i64 %indvars.iv310
  %i.axv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.axu, ptr noundef nonnull align 8 dereferenceable(208) %55)
          to label %bb.ic unwind label %bb.if     ; 0 uses

bb.ic:                                            ; preds = %bb.ib
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #16
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %i.axw = load ptr, ptr %i.ci, align 8, !tbaa !20
  %i.axx = load ptr, ptr %51, align 8, !tbaa !21  ; 2 uses
  %i.axy = ptrtoint ptr %i.axw to i64
  %i.axz = ptrtoint ptr %i.axx to i64
  %i.aya = sub i64 %i.axy, %i.axz
  %i.ayb = sdiv exact i64 %i.aya, 208
  %i.ayc = shl i64 %i.ayb, 32
  %i.ayd = ashr exact i64 %i.ayc, 32
  %i.aye = icmp slt i64 %indvars.iv.next311, %i.ayd
  br i1 %i.aye, label %bb.fg, label %._crit_edge273, !llvm.loop !87

bb.id:                                            ; preds = %bb.fi, %bb.fh, %bb.fg
  %i.ayf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.ie:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit144
  %i.ayg = landingpad { ptr, i32 }
          cleanup
  br label %.body170

bb.if:                                            ; preds = %bb.ib
  %i.ayh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #16
  br label %.body170

.body170:                                         ; preds = %bb.ie, %bb.ia, %bb.if
  %.pn91 = phi { ptr, i32 } [ %i.ayh, %bb.if ], [ %i.ayg, %bb.ie ], [ %.pn315.pn.pn.pn.pn.pn.i, %bb.ia ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #16
  br label %bb.ig

bb.ig:                                            ; preds = %.body170, %bb.id
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %.body170 ], [ %i.ayf, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit198

bb.ih:                                            ; preds = %.lr.ph275, %bb.ji
  %indvars.iv313 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next314, %bb.ji ] ; 4 uses
  %i.ayi = phi ptr [ %i.ahz, %.lr.ph275 ], [ %i.bbz, %bb.ji ] ; 2 uses
end_hunk_1
