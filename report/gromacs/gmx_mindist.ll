inline.NumInlined: 320
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z11gmx_mindistiPPc:bb.a
  br i1 %i.ns, label %bb.bv, label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  %i.nt = call i64 @fwrite(ptr nonnull @.str.79, i64 43, i64 1, ptr %i.nb) ; 0 uses
  br label %bb.cd

bb.bw:                                            ; preds = %bb.bm
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bn
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %24) #17
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn77.i = phi { ptr, i32 } [ %i.nv, %bb.bx ], [ %i.nu, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %.body.i

.loopexit144.i:                                   ; preds = %bb.cx, %bb.cw, %bb.cu, %bb.cs, %bb.ci
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.dc, %bb.db, %bb.da, %bb.cl, %bb.cf, %bb.cd, %_ZNSt10filesystem7__cxx114pathD2Ev.exit114.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bz:                                            ; preds = %bb.bq
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ca:                                            ; preds = %bb.br
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i

bb.cb:                                            ; preds = %._crit_edge.i.i103.i
  %i.ny = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nz = load ptr, ptr %27, align 8, !tbaa !44   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.my
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i: ; preds = %bb.cb
  %i.ob = load i64, ptr %i.my, align 8, !tbaa !20
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  %i.od = load ptr, ptr %26, align 8, !tbaa !44   ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.of = icmp eq ptr %i.od, %i.oe
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i
  %i.og = load i64, ptr %i.oe, align 8, !tbaa !20
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.oh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i, %bb.ca
  %.pn79.pn.i = phi { ptr, i32 } [ %i.nx, %bb.ca ], [ %i.ny, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #17
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i, %bb.bz
  %.pn79.pn.pn.i = phi { ptr, i32 } [ %.pn79.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i ], [ %i.nw, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %.body.i

bb.cd:                                            ; preds = %bb.bv, %bb.bu
  %i.oi = getelementptr inbounds nuw i8, ptr %23, i64 160
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.nb, ptr nonnull %23, ptr nonnull %i.oi, ptr noundef %i.lw)
          to label %bb.ce unwind label %.loopexit.split-lp.i

bb.ce:                                            ; preds = %bb.cd
  %i.oj = load float, ptr %i.ae, align 16, !tbaa !12
  br i1 %.not60, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ok = getelementptr inbounds nuw i8, ptr %.0157, i64 8
  %i.ol = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.ok, i32 noundef %i.lr, i32 noundef %i.mq)
          to label %bb.cg unwind label %.loopexit.split-lp.i

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.0.i = phi ptr [ null, %bb.ce ], [ %i.ol, %bb.cf ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.or = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ae, i64 28 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ou = icmp sgt i32 %i.ls, 0
  %i.ov = zext i32 %i.ls to i64                   ; 8 uses
  %i.ow = add nsw i64 %i.ov, -2
  %i.ox = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.oz = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cy, %bb.cg
  %.sroa.0135.0.i = phi i32 [ 0, %bb.cg ], [ %.sroa.0135.6.i, %bb.cy ] ; 3 uses
  %.sroa.6.0.i = phi i32 [ 0, %bb.cg ], [ %.sroa.6.6.i, %bb.cy ] ; 3 uses
  %.053.i = phi i32 [ 0, %bb.cg ], [ %.154.i, %bb.cy ]
  %.051.i = phi i32 [ 0, %bb.cg ], [ %.152.i, %bb.cy ]
  %.049.i = phi float [ %i.oj, %bb.cg ], [ %.150.i, %bb.cy ] ; 2 uses
  %.048.i = phi float [ 0.000000e+00, %bb.cg ], [ %.1.i, %bb.cy ]
  %.047.not.i = phi i1 [ false, %bb.cg ], [ %i.lv, %bb.cy ]
  br i1 %.not60, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pa = load ptr, ptr %i.ad, align 8, !tbaa !24
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %.0.i, i32 noundef %i.mq, ptr noundef nonnull %i.ae, ptr noundef %i.pa)
          to label %bb.cj unwind label %.loopexit144.i

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.pb = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #17
  %i.pc = load float, ptr %i.ae, align 16, !tbaa !12 ; 6 uses
  %i.pd = load <3 x float>, ptr %i.ae, align 16, !tbaa !12 ; 6 uses
  %i.pe = shufflevector <3 x float> %i.pd, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 4 uses
  %i.pf = load <2 x float>, ptr %i.oo, align 4, !tbaa !12 ; 5 uses
  %i.pg = load <2 x float>, ptr %i.op, align 16, !tbaa !12 ; 7 uses
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.pi = shufflevector <3 x float> %i.pd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.pj = shufflevector <4 x float> %i.ph, <4 x float> %i.pi, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.pk = fmul <2 x float> %i.pj, %i.pj
  %i.pl = insertelement <2 x float> %i.pf, float %i.pc, i64 1 ; 2 uses
  %i.pm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.pl, <2 x float> %i.pk)
  %i.pn = shufflevector <4 x float> %i.ph, <4 x float> %i.pe, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.po = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pn, <2 x float> %i.pn, <2 x float> %i.pm) ; 2 uses
  %i.pp = extractelement <2 x float> %i.po, i64 0 ; 2 uses
  %i.pq = extractelement <2 x float> %i.po, i64 1 ; 2 uses
  %i.pr = fcmp olt float %i.pp, %i.pq
  %.sroa.speculated87.i.i = select i1 %i.pr, float %i.pp, float %i.pq ; 3 uses
  switch i32 %i.lr, label %bb.cl [
    i32 0, label %bb.ck
    i32 2, label %..preheader99.lr.ph.i_crit_edge.i
  ]

..preheader99.lr.ph.i_crit_edge.i:                ; preds = %bb.cj
  %i.ps = load <3 x float>, ptr %i.or, align 8, !tbaa !12
  br label %.preheader99.lr.ph.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.pt = load <3 x float>, ptr %i.or, align 8, !tbaa !12 ; 3 uses
  %i.pu = load float, ptr %i.os, align 4, !tbaa !12 ; 2 uses
  %i.pv = fmul float %i.pu, %i.pu
  %i.pw = extractelement <3 x float> %i.pt, i64 0 ; 2 uses
  %i.px = call float @llvm.fmuladd.f32(float %i.pw, float %i.pw, float %i.pv)
  %i.py = extractelement <3 x float> %i.pt, i64 2 ; 2 uses
  %i.pz = call noundef float @llvm.fmuladd.f32(float %i.py, float %i.py, float %i.px) ; 2 uses
  %i.qa = fcmp olt float %i.pz, %.sroa.speculated87.i.i
  %.sroa.speculated.i.i = select i1 %i.qa, float %i.pz, float %.sroa.speculated87.i.i
  br label %.preheader99.lr.ph.i.i

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(67) @.str.49, i8 noundef zeroext 2)
          to label %.noexc124.i unwind label %.loopexit.split-lp.i

.noexc124.i:                                      ; preds = %bb.cl
  %i.qb = sext i32 %i.lr to i64
  %i.qc = getelementptr inbounds nuw [32 x i8], ptr @_Z14c_pbcTypeNamesB5cxx11, i64 %i.qb
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !44
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 100, ptr noundef nonnull @.str.85, ptr noundef %i.qd) #18
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %.noexc124.i
  unreachable

bb.cn:                                            ; preds = %.noexc124.i
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #17
  br label %.body.i

.preheader99.lr.ph.i.i:                           ; preds = %bb.ck, %..preheader99.lr.ph.i_crit_edge.i
  %.096.i.i = phi float [ %.sroa.speculated.i.i, %bb.ck ], [ %.sroa.speculated87.i.i, %..preheader99.lr.ph.i_crit_edge.i ] ; 3 uses
  %or.cond3.not.1.1.i.i = phi i1 [ false, %bb.ck ], [ true, %..preheader99.lr.ph.i_crit_edge.i ] ; 2 uses
  %or.cond3.not.1.1.i.i.1 = phi i1 [ true, %bb.ck ], [ false, %..preheader99.lr.ph.i_crit_edge.i ]
  %.0.i.i = phi i32 [ 1, %bb.ck ], [ 0, %..preheader99.lr.ph.i_crit_edge.i ] ; 3 uses
  %i.qf = phi <3 x float> [ %i.pt, %bb.ck ], [ %i.ps, %..preheader99.lr.ph.i_crit_edge.i ] ; 4 uses
  %i.qg = shufflevector <3 x float> %i.qf, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1> ; 6 uses
  %i.qh = extractelement <2 x float> %i.pf, i64 0
  %i.qi = fneg float %i.qh                        ; 2 uses
  %i.qj = fneg <2 x float> %i.pg                  ; 2 uses
  %34 = extractelement <3 x float> %i.pd, i64 2   ; 3 uses
  %35 = fsub float %i.qi, %i.pc
  %i.qk = shufflevector <4 x float> %i.pe, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %36 = fsub <2 x float> %i.qj, %i.qk
  %37 = call float @llvm.fmuladd.f32(float %i.pc, float 0.000000e+00, float %i.qi) ; 3 uses
  %i.ql = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qk, <2 x float> zeroinitializer, <2 x float> %i.qj)
  %i.qm = shufflevector <3 x float> %i.pd, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.qn = insertelement <2 x float> %i.qm, float %i.pc, i64 0 ; 3 uses
  %i.qo = shufflevector <2 x float> %i.pf, <2 x float> %i.pg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.qp = fsub <2 x float> %i.qn, %i.qo
  %i.qq = extractelement <2 x float> %i.pg, i64 1 ; 3 uses
  %i.qr = fmul <2 x float> %i.qo, zeroinitializer ; 4 uses
  %i.qs = extractelement <2 x float> %i.qr, i64 0
  %i.qt = fmul float %i.qq, 0.000000e+00          ; 3 uses
  %i.qu = shufflevector <2 x float> %i.qr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <2 x float> %i.qr, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.qw = shufflevector <3 x float> %i.pd, <3 x float> %i.qv, <4 x i32> <i32 2, i32 3, i32 4, i32 poison>
  %i.qx = insertelement <4 x float> %i.qw, float %i.qt, i64 3
  %i.qy = shufflevector <2 x float> %i.pg, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.qz = shufflevector <3 x float> %i.qy, <3 x float> %i.pd, <4 x i32> <i32 1, i32 poison, i32 4, i32 5>
  %i.ra = insertelement <4 x float> %i.qz, float %i.pc, i64 1
  %i.rb = fsub <4 x float> %i.qx, %i.ra           ; 3 uses
  %i.rc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qn, <2 x float> zeroinitializer, <2 x float> %i.qr) ; 3 uses
  %i.rd = call float @llvm.fmuladd.f32(float %34, float 0.000000e+00, float %i.qt) ; 3 uses
  %i.re = fadd float %i.pc, %i.qs
  %i.rf = shufflevector <2 x float> %i.pf, <2 x float> %i.pg, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> %i.qu, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %38 = insertelement <4 x float> %i.rg, float %i.qt, i64 1 ; 2 uses
  %i.rh = fadd <4 x float> %38, %i.pe
  %i.ri = fsub <4 x float> %38, %i.pe
  %i.rj = fsub float %i.qq, %34                   ; 3 uses
  %i.rk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qn, <2 x float> zeroinitializer, <2 x float> %i.qo)
  %i.rl = call float @llvm.fmuladd.f32(float %34, float 0.000000e+00, float %i.qq)
  %i.rm = insertelement <4 x float> poison, float %i.rl, i64 0
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> %i.pi, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.ro = shufflevector <2 x float> %i.pf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.rp = insertelement <4 x float> %i.ro, float -0.000000e+00, i64 0
  %i.rq = shufflevector <2 x float> %i.pg, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.rr = shufflevector <4 x float> %i.rp, <4 x float> %i.rq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.rs = fadd <4 x float> %i.rn, %i.rr           ; 3 uses
  %i.rt = insertelement <8 x float> poison, float %i.re, i64 0
  %i.ru = extractelement <3 x float> %i.qf, i64 2 ; 3 uses
  %i.rv = shufflevector <3 x float> %i.qf, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2> ; 6 uses
  %i.rw = shufflevector <4 x float> %i.rh, <4 x float> %i.ri, <8 x i32> <i32 0, i32 1, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rx = shufflevector <8 x float> %i.rt, <8 x float> %i.rw, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.ry = shufflevector <2 x float> %i.rk, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.rz = shufflevector <3 x float> %i.qf, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.sa = insertelement <8 x float> poison, float %35, i64 0
  %i.sb = shufflevector <2 x float> %i.ql, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.sc = shufflevector <2 x float> %i.qp, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.sd = shufflevector <2 x float> %36, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.se = shufflevector <8 x float> %i.sa, <8 x float> %i.sd, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.sf = sub nsw i32 0, %.0.i.i
  %i.sg = sitofp i32 %i.sf to float               ; 4 uses
  %i.sh = insertelement <8 x float> poison, float %i.sg, i64 0
  %i.si = shufflevector <8 x float> %i.sh, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.sj = insertelement <8 x float> %i.se, float %37, i64 3
  %i.sk = shufflevector <8 x float> %i.sj, <8 x float> %i.sc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 8, i32 9>
  %i.sl = shufflevector <8 x float> %i.sk, <8 x float> %i.sb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.sm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.si, <8 x float> %i.qg, <8 x float> %i.sl)
  store <8 x float> %i.sm, ptr %i.y, align 16, !tbaa !12
  %i.sn = insertelement <4 x float> poison, float %i.sg, i64 0
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.so, <4 x float> %i.rv, <4 x float> %i.rb)
  store <4 x float> %i.sp, ptr %i.ox, align 16, !tbaa !12
  br i1 %or.cond3.not.1.1.i.i, label %bb.co, label %.preheader97.1.1.i.i

.preheader.i.i:                                   ; preds = %.preheader97.1.1.i.i.2, %bb.co
  %.lcssa = phi i32 [ %i.vv, %bb.co ], [ %i.yf, %.preheader97.1.1.i.i.2 ] ; 4 uses
  br i1 %i.ou, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.sq = icmp sgt i32 %.lcssa, 0
  br i1 %i.sq, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %wide.trip.count144.i.i = zext nneg i32 %.lcssa to i64 ; 2 uses
  %xtraiter425 = and i64 %wide.trip.count144.i.i, 1
  %i.sr = icmp eq i32 %.lcssa, 1
  %unroll_iter432 = and i64 %wide.trip.count144.i.i, 2147483646
  %lcmp.mod427.not = icmp eq i64 %xtraiter425, 0
  %lcmp.mod431 = trunc i32 %.lcssa to i1
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.loopexit.us.i.i, %.lr.ph.split.us.preheader.i.i
  %.sroa.0135.1.i = phi i32 [ %.sroa.0135.0.i, %.lr.ph.split.us.preheader.i.i ], [ %.sroa.0135.2.i, %.loopexit.us.i.i ] ; 2 uses
  %.sroa.6.1.i = phi i32 [ %.sroa.6.0.i, %.lr.ph.split.us.preheader.i.i ], [ %.sroa.6.2.i, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv153.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next154.i.i, %.loopexit.us.i.i ] ; 3 uses
  %indvars.iv146.i.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next147.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.067121.us.i.i = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i ], [ %.168.lcssa.us.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.070120.us.i.i = phi float [ %.096.i.i, %.lr.ph.split.us.preheader.i.i ], [ %.171.lcssa.us.i.i, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv.next154.i.i = add nuw nsw i64 %indvars.iv153.i.i, 1 ; 3 uses
  %i.ss = icmp samesign ult i64 %indvars.iv.next154.i.i, %i.ov
  br i1 %i.ss, label %.lr.ph115.us.i.i, label %.loopexit.us.i.i

.loopexit.us.i.i:                                 ; preds = %._crit_edge.us.us.i.i, %.lr.ph.split.us.i.i
  %.sroa.0135.2.i = phi i32 [ %.sroa.0135.1.i, %.lr.ph.split.us.i.i ], [ %.sroa.0135.5.i.lcssa, %._crit_edge.us.us.i.i ] ; 2 uses
  %.sroa.6.2.i = phi i32 [ %.sroa.6.1.i, %.lr.ph.split.us.i.i ], [ %.sroa.6.5.i.lcssa, %._crit_edge.us.us.i.i ] ; 2 uses
  %.171.lcssa.us.i.i = phi float [ %.070120.us.i.i, %.lr.ph.split.us.i.i ], [ %.373.us.us.i.i.lcssa, %._crit_edge.us.us.i.i ] ; 2 uses
  %.168.lcssa.us.i.i = phi float [ %.067121.us.i.i, %.lr.ph.split.us.i.i ], [ %.269.us.us.i.i, %._crit_edge.us.us.i.i ] ; 2 uses
  %indvars.iv.next147.i.i = add nuw nsw i64 %indvars.iv146.i.i, 1
  %exitcond157.not.i.i = icmp eq i64 %indvars.iv.next154.i.i, %i.ov
  br i1 %exitcond157.not.i.i, label %.loopexit.i, label %.lr.ph.split.us.i.i, !llvm.loop !75

.lr.ph115.us.i.i:                                 ; preds = %.lr.ph.split.us.i.i
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv153.i.i
  %i.su = trunc nuw nsw i64 %indvars.iv153.i.i to i32 ; 2 uses
  %i.sv = load i32, ptr %i.st, align 4, !tbaa !9
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [12 x i8], ptr %i.pb, i64 %i.sw ; 3 uses
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !12
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !12
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !12
  br label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %._crit_edge.us.us.i.i, %.lr.ph115.us.i.i
  %.sroa.0135.3.i = phi i32 [ %.sroa.0135.1.i, %.lr.ph115.us.i.i ], [ %.sroa.0135.5.i.lcssa, %._crit_edge.us.us.i.i ] ; 2 uses
  %.sroa.6.3.i = phi i32 [ %.sroa.6.1.i, %.lr.ph115.us.i.i ], [ %.sroa.6.5.i.lcssa, %._crit_edge.us.us.i.i ] ; 2 uses
  %indvars.iv148.i.i = phi i64 [ %indvars.iv146.i.i, %.lr.ph115.us.i.i ], [ %indvars.iv.next149.i.i, %._crit_edge.us.us.i.i ] ; 3 uses
  %.168113.us.us.i.i = phi float [ %.067121.us.i.i, %.lr.ph115.us.i.i ], [ %.269.us.us.i.i, %._crit_edge.us.us.i.i ] ; 2 uses
  %.171112.us.us.i.i = phi float [ %.070120.us.i.i, %.lr.ph115.us.i.i ], [ %.373.us.us.i.i.lcssa, %._crit_edge.us.us.i.i ] ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv148.i.i
  %i.te = load i32, ptr %i.td, align 4, !tbaa !9
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [12 x i8], ptr %i.pb, i64 %i.tf ; 3 uses
  %i.th = load float, ptr %i.tg, align 4, !tbaa !12
  %i.ti = fsub float %i.sy, %i.th                 ; 5 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !12
  %i.tl = fsub float %i.ta, %i.tk                 ; 5 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !12
  %i.to = fsub float %i.tc, %i.tn                 ; 5 uses
  %i.tp = trunc nuw nsw i64 %indvars.iv148.i.i to i32 ; 2 uses
  br i1 %i.sr, label %.epil.preheader, label %.lr.ph.us.us.i.i.new

.lr.ph.us.us.i.i.new:                             ; preds = %.lr.ph.us.us.i.i, %.lr.ph.us.us.i.i.new
  %.sroa.0135.4.i = phi i32 [ %.sroa.0135.5.i.1, %.lr.ph.us.us.i.i.new ], [ %.sroa.0135.3.i, %.lr.ph.us.us.i.i ]
  %.sroa.6.4.i = phi i32 [ %.sroa.6.5.i.1, %.lr.ph.us.us.i.i.new ], [ %.sroa.6.3.i, %.lr.ph.us.us.i.i ]
  %indvars.iv141.i.i = phi i64 [ %indvars.iv.next142.i.i.1, %.lr.ph.us.us.i.i.new ], [ 0, %.lr.ph.us.us.i.i ] ; 3 uses
  %.272109.us.us.i.i = phi float [ %.373.us.us.i.i.1, %.lr.ph.us.us.i.i.new ], [ %.171112.us.us.i.i, %.lr.ph.us.us.i.i ] ; 2 uses
  %niter433 = phi i64 [ %niter433.next.1, %.lr.ph.us.us.i.i.new ], [ 0, %.lr.ph.us.us.i.i ]
  %i.tq = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv141.i.i ; 3 uses
  %i.tr = load float, ptr %i.tq, align 8, !tbaa !12
  %i.ts = fadd float %i.ti, %i.tr                 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !12
  %i.tv = fadd float %i.tl, %i.tu                 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.tx = load float, ptr %i.tw, align 8, !tbaa !12
  %i.ty = fadd float %i.to, %i.tx                 ; 2 uses
  %i.tz = fmul float %i.tv, %i.tv
  %i.ua = call float @llvm.fmuladd.f32(float %i.ts, float %i.ts, float %i.tz)
  %i.ub = call noundef float @llvm.fmuladd.f32(float %i.ty, float %i.ty, float %i.ua) ; 2 uses
  %i.uc = fcmp olt float %i.ub, %.272109.us.us.i.i ; 3 uses
  %.373.us.us.i.i = select i1 %i.uc, float %i.ub, float %.272109.us.us.i.i ; 2 uses
  %i.ud = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv141.i.i ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 12
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !12
  %i.ug = fadd float %i.ti, %i.uf                 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.ui = load float, ptr %i.uh, align 8, !tbaa !12
  %i.uj = fadd float %i.tl, %i.ui                 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ud, i64 20
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !12
  %i.um = fadd float %i.to, %i.ul                 ; 2 uses
  %i.un = fmul float %i.uj, %i.uj
  %i.uo = call float @llvm.fmuladd.f32(float %i.ug, float %i.ug, float %i.un)
  %i.up = call noundef float @llvm.fmuladd.f32(float %i.um, float %i.um, float %i.uo) ; 2 uses
  %i.uq = fcmp olt float %i.up, %.373.us.us.i.i   ; 3 uses
  %i.ur = or i1 %i.uq, %i.uc
  %.sroa.0135.5.i.1 = select i1 %i.ur, i32 %i.su, i32 %.sroa.0135.4.i ; 3 uses
  %i.us = or i1 %i.uq, %i.uc
  %.sroa.6.5.i.1 = select i1 %i.us, i32 %i.tp, i32 %.sroa.6.4.i ; 3 uses
  %.373.us.us.i.i.1 = select i1 %i.uq, float %i.up, float %.373.us.us.i.i ; 3 uses
  %indvars.iv.next142.i.i.1 = add nuw nsw i64 %indvars.iv141.i.i, 2 ; 2 uses
  %niter433.next.1 = add i64 %niter433, 2         ; 2 uses
  %niter433.ncmp.1 = icmp eq i64 %niter433.next.1, %unroll_iter432
  br i1 %niter433.ncmp.1, label %._crit_edge.us.us.i.i.unr-lcssa, label %.lr.ph.us.us.i.i.new, !llvm.loop !76

._crit_edge.us.us.i.i.unr-lcssa:                  ; preds = %.lr.ph.us.us.i.i.new
  br i1 %lcmp.mod427.not, label %._crit_edge.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.lr.ph.us.us.i.i
  %.sroa.0135.4.i.epil.init = phi i32 [ %.sroa.0135.3.i, %.lr.ph.us.us.i.i ], [ %.sroa.0135.5.i.1, %._crit_edge.us.us.i.i.unr-lcssa ]
  %.sroa.6.4.i.epil.init = phi i32 [ %.sroa.6.3.i, %.lr.ph.us.us.i.i ], [ %.sroa.6.5.i.1, %._crit_edge.us.us.i.i.unr-lcssa ]
  %indvars.iv141.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i.i ], [ %indvars.iv.next142.i.i.1, %._crit_edge.us.us.i.i.unr-lcssa ]
  %.272109.us.us.i.i.epil.init = phi float [ %.171112.us.us.i.i, %.lr.ph.us.us.i.i ], [ %.373.us.us.i.i.1, %._crit_edge.us.us.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod431)
  %i.ut = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv141.i.i.epil.init ; 3 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !12
  %i.uv = fadd float %i.ti, %i.uu                 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !12
  %i.uy = fadd float %i.tl, %i.ux                 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.va = load float, ptr %i.uz, align 4, !tbaa !12
  %i.vb = fadd float %i.to, %i.va                 ; 2 uses
  %i.vc = fmul float %i.uy, %i.uy
  %i.vd = call float @llvm.fmuladd.f32(float %i.uv, float %i.uv, float %i.vc)
  %i.ve = call noundef float @llvm.fmuladd.f32(float %i.vb, float %i.vb, float %i.vd) ; 2 uses
  %i.vf = fcmp olt float %i.ve, %.272109.us.us.i.i.epil.init ; 3 uses
  %.sroa.0135.5.i.epil = select i1 %i.vf, i32 %i.su, i32 %.sroa.0135.4.i.epil.init
  %.sroa.6.5.i.epil = select i1 %i.vf, i32 %i.tp, i32 %.sroa.6.4.i.epil.init
  %.373.us.us.i.i.epil = select i1 %i.vf, float %i.ve, float %.272109.us.us.i.i.epil.init
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.epil.preheader
  %.sroa.0135.5.i.lcssa = phi i32 [ %.sroa.0135.5.i.1, %._crit_edge.us.us.i.i.unr-lcssa ], [ %.sroa.0135.5.i.epil, %.epil.preheader ] ; 2 uses
  %.sroa.6.5.i.lcssa = phi i32 [ %.sroa.6.5.i.1, %._crit_edge.us.us.i.i.unr-lcssa ], [ %.sroa.6.5.i.epil, %.epil.preheader ] ; 2 uses
  %.373.us.us.i.i.lcssa = phi float [ %.373.us.us.i.i.1, %._crit_edge.us.us.i.i.unr-lcssa ], [ %.373.us.us.i.i.epil, %.epil.preheader ] ; 2 uses
  %i.vg = fmul float %i.tl, %i.tl
  %i.vh = call float @llvm.fmuladd.f32(float %i.ti, float %i.ti, float %i.vg)
  %i.vi = call noundef float @llvm.fmuladd.f32(float %i.to, float %i.to, float %i.vh) ; 2 uses
  %i.vj = fcmp ogt float %i.vi, %.168113.us.us.i.i
  %.269.us.us.i.i = select i1 %i.vj, float %i.vi, float %.168113.us.us.i.i ; 2 uses
  %indvars.iv.next149.i.i = add nuw nsw i64 %indvars.iv148.i.i, 1 ; 2 uses
  %exitcond152.not.i.i = icmp eq i64 %indvars.iv.next149.i.i, %i.ov
  br i1 %exitcond152.not.i.i, label %.loopexit.us.i.i, label %.lr.ph.us.us.i.i, !llvm.loop !77

.preheader97.1.1.i.i:                             ; preds = %.preheader99.lr.ph.i.i
  %i.vk = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.vl = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> %i.rz, <2 x float> %i.rc)
  store <2 x float> %i.vm, ptr %i.oy, align 16, !tbaa !12
  %i.vn = call float @llvm.fmuladd.f32(float %i.sg, float %i.ru, float %i.rd)
  store float %i.vn, ptr %i.oz, align 8, !tbaa !12
  br label %bb.co

bb.co:                                            ; preds = %.preheader97.1.1.i.i, %.preheader99.lr.ph.i.i
  %.3.1.1.i.i = phi i32 [ 5, %.preheader97.1.1.i.i ], [ 4, %.preheader99.lr.ph.i.i ] ; 4 uses
  %i.vo = zext nneg i32 %.3.1.1.i.i to i64
  %i.vp = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.vo ; 2 uses
  %i.vq = insertelement <8 x float> %i.rx, float %i.rj, i64 5
  %i.vr = shufflevector <8 x float> %i.vq, <8 x float> %i.ry, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.vs = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.si, <8 x float> %i.qg, <8 x float> %i.vr)
  store <8 x float> %i.vs, ptr %i.vp, align 4, !tbaa !12
  %i.vt = getelementptr i8, ptr %i.vp, i64 32
  %i.vu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.so, <4 x float> %i.rv, <4 x float> %i.rs)
  store <4 x float> %i.vu, ptr %i.vt, align 4, !tbaa !12
  %i.vv = add nuw nsw i32 %.3.1.1.i.i, 4          ; 2 uses
  br i1 %or.cond3.not.1.1.i.i, label %.preheader.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vw = xor i32 %.0.i.i, 1
  %i.vx = uitofp nneg i32 %i.vw to float          ; 4 uses
  %i.vy = zext nneg i32 %i.vv to i64
  %i.vz = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.vy ; 2 uses
  %i.wa = insertelement <8 x float> poison, float %i.vx, i64 0
  %i.wb = shufflevector <8 x float> %i.wa, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.wc = insertelement <8 x float> %i.se, float %37, i64 3
  %i.wd = shufflevector <8 x float> %i.wc, <8 x float> %i.sc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 8, i32 9>
  %i.we = shufflevector <8 x float> %i.wd, <8 x float> %i.sb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.wf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wb, <8 x float> %i.qg, <8 x float> %i.we)
  store <8 x float> %i.wf, ptr %i.vz, align 4, !tbaa !12
  %i.wg = getelementptr i8, ptr %i.vz, i64 32
  %i.wh = insertelement <4 x float> poison, float %i.vx, i64 0
  %i.wi = shufflevector <4 x float> %i.wh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wi, <4 x float> %i.rv, <4 x float> %i.rb)
  store <4 x float> %i.wj, ptr %i.wg, align 4, !tbaa !12
  %i.wk = or disjoint i32 %.3.1.1.i.i, 8          ; 2 uses
  br i1 %or.cond3.not.1.1.i.i.1, label %.preheader97.1.1.i.i.2, label %.preheader97.1.1.i.i.1

.preheader97.1.1.i.i.1:                           ; preds = %bb.cp
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.wl ; 2 uses
  %i.wn = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wo, <2 x float> %i.rz, <2 x float> %i.rc)
  store <2 x float> %i.wp, ptr %i.wm, align 4, !tbaa !12
  %i.wq = call float @llvm.fmuladd.f32(float %i.vx, float %i.ru, float %i.rd)
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store float %i.wq, ptr %i.wr, align 4, !tbaa !12
  %i.ws = add nuw nsw i32 %.3.1.1.i.i, 9
  br label %.preheader97.1.1.i.i.2

.preheader97.1.1.i.i.2:                           ; preds = %.preheader97.1.1.i.i.1, %bb.cp
  %.3.1.1.i.i.1 = phi i32 [ %i.ws, %.preheader97.1.1.i.i.1 ], [ %i.wk, %bb.cp ] ; 4 uses
  %i.wt = sext i32 %.3.1.1.i.i.1 to i64
  %i.wu = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.wt ; 2 uses
  %i.wv = insertelement <8 x float> %i.rx, float %i.rj, i64 5
  %i.ww = shufflevector <8 x float> %i.wv, <8 x float> %i.ry, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.wx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wb, <8 x float> %i.qg, <8 x float> %i.ww)
  store <8 x float> %i.wx, ptr %i.wu, align 4, !tbaa !12
  %i.wy = getelementptr i8, ptr %i.wu, i64 32
  %i.wz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wi, <4 x float> %i.rv, <4 x float> %i.rs)
  store <4 x float> %i.wz, ptr %i.wy, align 4, !tbaa !12
  %i.xa = sub nuw nsw i32 2, %.0.i.i
  %i.xb = uitofp nneg i32 %i.xa to float          ; 4 uses
  %i.xc = sext i32 %.3.1.1.i.i.1 to i64
  %i.xd = getelementptr [12 x i8], ptr %i.y, i64 %i.xc ; 2 uses
  %i.xe = getelementptr i8, ptr %i.xd, i64 48
  %i.xf = insertelement <8 x float> poison, float %i.xb, i64 0
  %i.xg = shufflevector <8 x float> %i.xf, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xh = insertelement <8 x float> %i.se, float %37, i64 3
  %i.xi = shufflevector <8 x float> %i.xh, <8 x float> %i.sc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 8, i32 9>
  %i.xj = shufflevector <8 x float> %i.xi, <8 x float> %i.sb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.xk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xg, <8 x float> %i.qg, <8 x float> %i.xj)
  store <8 x float> %i.xk, ptr %i.xe, align 4, !tbaa !12
  %i.xl = getelementptr i8, ptr %i.xd, i64 80
  %i.xm = insertelement <4 x float> poison, float %i.xb, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xn, <4 x float> %i.rv, <4 x float> %i.rb)
  store <4 x float> %i.xo, ptr %i.xl, align 4, !tbaa !12
  %i.xp = sext i32 %.3.1.1.i.i.1 to i64
  %i.xq = getelementptr [12 x i8], ptr %i.y, i64 %i.xp ; 2 uses
  %i.xr = getelementptr i8, ptr %i.xq, i64 96
  %i.xs = insertelement <2 x float> poison, float %i.xb, i64 0
  %i.xt = shufflevector <2 x float> %i.xs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xt, <2 x float> %i.rz, <2 x float> %i.rc)
  store <2 x float> %i.xu, ptr %i.xr, align 4, !tbaa !12
  %i.xv = call float @llvm.fmuladd.f32(float %i.xb, float %i.ru, float %i.rd)
  %i.xw = getelementptr i8, ptr %i.xq, i64 104
  store float %i.xv, ptr %i.xw, align 4, !tbaa !12
  %i.xx = add nsw i32 %.3.1.1.i.i.1, 9            ; 2 uses
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.xy ; 2 uses
  %i.ya = insertelement <8 x float> %i.rx, float %i.rj, i64 5
  %i.yb = shufflevector <8 x float> %i.ya, <8 x float> %i.ry, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.yc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xg, <8 x float> %i.qg, <8 x float> %i.yb)
  store <8 x float> %i.yc, ptr %i.xz, align 4, !tbaa !12
  %i.yd = getelementptr i8, ptr %i.xz, i64 32
  %i.ye = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xn, <4 x float> %i.rv, <4 x float> %i.rs)
  store <4 x float> %i.ye, ptr %i.yd, align 4, !tbaa !12
  %i.yf = add i32 %i.xx, 4
  br label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.prol.loopexit, %.lr.ph115.i.i.new, %.lr.ph.split.i.i
  %.168.lcssa.i.i = phi float [ %.067121.i.i, %.lr.ph.split.i.i ], [ %.269.i.i.lcssa.unr, %.prol.loopexit ], [ %.269.i.i.1, %.lr.ph115.i.i.new ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond140.not.i.i = icmp eq i64 %indvars.iv.next137.i.i, %i.ov
  br i1 %exitcond140.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i, !llvm.loop !75

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.loopexit.i.i
  %indvars.iv136.i.i = phi i64 [ %indvars.iv.next137.i.i, %.loopexit.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit.i.i ], [ 1, %.lr.ph.i.i ] ; 4 uses
  %.067121.i.i = phi float [ %.168.lcssa.i.i, %.loopexit.i.i ], [ 0.000000e+00, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.next137.i.i = add nuw nsw i64 %indvars.iv136.i.i, 1 ; 3 uses
  %i.yg = icmp samesign ult i64 %indvars.iv.next137.i.i, %i.ov
  br i1 %i.yg, label %.lr.ph115.i.i, label %.loopexit.i.i

.lr.ph115.i.i:                                    ; preds = %.lr.ph.split.i.i
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv136.i.i
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !9
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [12 x i8], ptr %i.pb, i64 %i.yj ; 3 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !12 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 4
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !12 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !12 ; 3 uses
  %i.yq = sub nsw i64 %indvars.iv136.i.i, %i.ov
  %i.yr = and i64 %i.yq, 1
  %lcmp.mod424.not.not = icmp eq i64 %i.yr, 0
  br i1 %lcmp.mod424.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph115.i.i
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i.i
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !9
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds [12 x i8], ptr %i.pb, i64 %i.yu ; 3 uses
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !12
  %i.yx = fsub float %i.yl, %i.yw                 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !12
  %i.za = fsub float %i.yn, %i.yz                 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !12
  %i.zd = fsub float %i.yp, %i.zc                 ; 2 uses
  %i.ze = fmul float %i.za, %i.za
  %i.zf = call float @llvm.fmuladd.f32(float %i.yx, float %i.yx, float %i.ze)
  %i.zg = call noundef float @llvm.fmuladd.f32(float %i.zd, float %i.zd, float %i.zf) ; 2 uses
  %i.zh = fcmp ogt float %i.zg, %.067121.i.i
  %.269.i.i.prol = select i1 %i.zh, float %i.zg, float %.067121.i.i ; 2 uses
  %indvars.iv.next133.i.i.prol = add nuw nsw i64 %indvars.iv.i.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph115.i.i
  %.269.i.i.lcssa.unr = phi float [ poison, %.lr.ph115.i.i ], [ %.269.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv132.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph115.i.i ], [ %indvars.iv.next133.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.168113.i.i.unr = phi float [ %.067121.i.i, %.lr.ph115.i.i ], [ %.269.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.zi = icmp eq i64 %i.ow, %indvars.iv136.i.i
  br i1 %i.zi, label %.loopexit.i.i, label %.lr.ph115.i.i.new

.lr.ph115.i.i.new:                                ; preds = %.prol.loopexit, %.lr.ph115.i.i.new
  %indvars.iv132.i.i = phi i64 [ %indvars.iv.next133.i.i.1, %.lr.ph115.i.i.new ], [ %indvars.iv132.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.168113.i.i = phi float [ %.269.i.i.1, %.lr.ph115.i.i.new ], [ %.168113.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv132.i.i
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !9
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr inbounds [12 x i8], ptr %i.pb, i64 %i.zl ; 3 uses
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !12
  %i.zo = fsub float %i.yl, %i.zn                 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !12
  %i.zr = fsub float %i.yn, %i.zq                 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !12
  %i.zu = fsub float %i.yp, %i.zt                 ; 2 uses
  %i.zv = fmul float %i.zr, %i.zr
  %i.zw = call float @llvm.fmuladd.f32(float %i.zo, float %i.zo, float %i.zv)
  %i.zx = call noundef float @llvm.fmuladd.f32(float %i.zu, float %i.zu, float %i.zw) ; 2 uses
  %i.zy = fcmp ogt float %i.zx, %.168113.i.i
  %.269.i.i = select i1 %i.zy, float %i.zx, float %.168113.i.i ; 2 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv132.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !9
  %i.aac = sext i32 %i.aab to i64
  %i.aad = getelementptr inbounds [12 x i8], ptr %i.pb, i64 %i.aac ; 3 uses
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !12
  %i.aaf = fsub float %i.yl, %i.aae               ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !12
  %i.aai = fsub float %i.yn, %i.aah               ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !12
  %i.aal = fsub float %i.yp, %i.aak               ; 2 uses
  %i.aam = fmul float %i.aai, %i.aai
  %i.aan = call float @llvm.fmuladd.f32(float %i.aaf, float %i.aaf, float %i.aam)
  %i.aao = call noundef float @llvm.fmuladd.f32(float %i.aal, float %i.aal, float %i.aan) ; 2 uses
  %i.aap = fcmp ogt float %i.aao, %.269.i.i
  %.269.i.i.1 = select i1 %i.aap, float %i.aao, float %.269.i.i ; 2 uses
  %indvars.iv.next133.i.i.1 = add nuw nsw i64 %indvars.iv132.i.i, 2 ; 2 uses
  %exitcond135.not.i.i.1 = icmp eq i64 %indvars.iv.next133.i.i.1, %i.ov
  br i1 %exitcond135.not.i.i.1, label %.loopexit.i.i, label %.lr.ph115.i.i.new, !llvm.loop !77

.loopexit.i:                                      ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %.preheader.i.i
  %.sroa.0135.6.i = phi i32 [ %.sroa.0135.0.i, %.preheader.i.i ], [ %.sroa.0135.2.i, %.loopexit.us.i.i ], [ %.sroa.0135.0.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.6.6.i = phi i32 [ %.sroa.6.0.i, %.preheader.i.i ], [ %.sroa.6.2.i, %.loopexit.us.i.i ], [ %.sroa.6.0.i, %.loopexit.i.i ] ; 2 uses
  %.070.lcssa.i.i = phi float [ %.096.i.i, %.preheader.i.i ], [ %.171.lcssa.us.i.i, %.loopexit.us.i.i ], [ %.096.i.i, %.loopexit.i.i ]
  %.067.lcssa.i.i = phi float [ 0.000000e+00, %.preheader.i.i ], [ %.168.lcssa.us.i.i, %.loopexit.us.i.i ], [ %.168.lcssa.i.i, %.loopexit.i.i ]
  %i.aaq = call noundef float @sqrtf(float noundef %.070.lcssa.i.i) #17 ; 3 uses
  %i.aar = call noundef float @sqrtf(float noundef %.067.lcssa.i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #17
  %i.aas = fcmp olt float %i.aaq, %.049.i
  br i1 %i.aas, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.loopexit.i
  %i.aat = load float, ptr %i.ac, align 4, !tbaa !12
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.loopexit.i
  %.154.i = phi i32 [ %.sroa.0135.6.i, %bb.cq ], [ %.053.i, %.loopexit.i ] ; 2 uses
  %.152.i = phi i32 [ %.sroa.6.6.i, %bb.cq ], [ %.051.i, %.loopexit.i ] ; 2 uses
  %.150.i = phi float [ %i.aaq, %bb.cq ], [ %.049.i, %.loopexit.i ] ; 2 uses
  %.1.i = phi float [ %i.aat, %bb.cq ], [ %.048.i, %.loopexit.i ] ; 2 uses
  br i1 %.047.not.i, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.aau = load float, ptr %i.ac, align 4, !tbaa !12
  %i.aav = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.lw)
          to label %bb.ct unwind label %.loopexit144.i

bb.ct:                                            ; preds = %bb.cs
  %i.aaw = fdiv float %i.aau, %i.aav
  %i.aax = call noundef float @llvm.fabs.f32(float %i.aaw)
  %i.aay = fpext float %i.aax to double
  %i.aaz = fcmp olt double %i.aay, 1.000000e-05
  br i1 %i.aaz, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.aba = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.lw)
          to label %bb.cv unwind label %.loopexit144.i

bb.cv:                                            ; preds = %bb.cu
  %i.abb = select i1 %i.aba, ptr @.str.81, ptr @.str.82
  %i.abc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nb, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.abb) #17 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.ct, %bb.cr
  %i.abd = load float, ptr %i.ac, align 4, !tbaa !12
  %i.abe = invoke noundef float @_Z20output_env_conv_timePK16gmx_output_env_tf(ptr noundef %i.lw, float noundef %i.abd)
          to label %bb.cx unwind label %.loopexit144.i

bb.cx:                                            ; preds = %bb.cw
  %i.abf = fpext float %i.abe to double
  %i.abg = fpext float %i.aaq to double
  %i.abh = fpext float %i.aar to double
  %i.abi = load float, ptr %i.ae, align 16, !tbaa !12 ; 2 uses
  %i.abj = load float, ptr %i.om, align 4, !tbaa !12 ; 2 uses
  %i.abk = fmul float %i.abj, %i.abj
  %i.abl = call float @llvm.fmuladd.f32(float %i.abi, float %i.abi, float %i.abk)
  %i.abm = load float, ptr %i.on, align 8, !tbaa !12 ; 2 uses
  %i.abn = call noundef float @llvm.fmuladd.f32(float %i.abm, float %i.abm, float %i.abl)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.abn)
  %i.abo = fpext float %sqrt.i.i to double
  %i.abp = load float, ptr %i.oo, align 4, !tbaa !12 ; 2 uses
  %i.abq = load float, ptr %i.op, align 16, !tbaa !12 ; 2 uses
  %i.abr = fmul float %i.abq, %i.abq
  %i.abs = call float @llvm.fmuladd.f32(float %i.abp, float %i.abp, float %i.abr)
  %i.abt = load float, ptr %i.oq, align 4, !tbaa !12 ; 2 uses
  %i.abu = call noundef float @llvm.fmuladd.f32(float %i.abt, float %i.abt, float %i.abs)
  %sqrt.i125.i = call noundef float @llvm.sqrt.f32(float %i.abu)
  %i.abv = load float, ptr %i.or, align 8, !tbaa !12 ; 2 uses
  %i.abw = load float, ptr %i.os, align 4, !tbaa !12 ; 2 uses
end_hunk_0
