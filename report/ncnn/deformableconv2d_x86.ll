Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn20DeformableConv2D_x8615create_pipelineERKNS_6OptionE:bb.a

bb.dl:                                            ; preds = %.thread248
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dc
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #9
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pn = phi { ptr, i32 } [ %i.lr, %bb.dm ], [ %i.lq, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dk
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.dn ], [ %i.lp, %bb.dk ]
  %i.ls = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !17 ; 2 uses
  %.not.i98 = icmp eq ptr %i.lt, null
  br i1 %.not.i98, label %_ZN4ncnn3MatD2Ev.exit71, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lu = atomicrmw add ptr %i.lt, i32 -1 acq_rel, align 4
  %i.lv = icmp eq i32 %i.lu, 1
  br i1 %i.lv, label %bb.dq, label %_ZN4ncnn3MatD2Ev.exit71

bb.dq:                                            ; preds = %bb.dp
  %i.lw = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.lx = load ptr, ptr %i.lw, align 16, !tbaa !18 ; 3 uses
  %.not3.i99 = icmp eq ptr %i.lx, null
  %i.ly = load ptr, ptr %14, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i99, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lz = load ptr, ptr %i.lx, align 8, !tbaa !11
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  invoke void %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef %i.ly)
          to label %_ZN4ncnn3MatD2Ev.exit71 unwind label %bb.du, !inline_history !0

bb.ds:                                            ; preds = %bb.dq
  %.not.i118 = icmp eq ptr %i.ly, null
  br i1 %.not.i118, label %_ZN4ncnn3MatD2Ev.exit71, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @free(ptr noundef nonnull %i.ly) #9
  br label %_ZN4ncnn3MatD2Ev.exit71

bb.du:                                            ; preds = %bb.dr
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  call void @__clang_call_terminate(ptr %i.md) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit71:                          ; preds = %bb.dp, %bb.do, %bb.dr, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  br label %bb.ee

bb.dv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit72, %_ZN4ncnn3MatD2Ev.exit75.1
  %i.me = load ptr, ptr %i.cc, align 8, !tbaa !50 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !11
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = invoke noundef i32 %i.mh(ptr noundef nonnull align 8 dereferenceable(208) %i.me, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.dw unwind label %bb.ed     ; 0 uses

bb.dw:                                            ; preds = %bb.dv
  %i.mj = load ptr, ptr %i.cn, align 8, !tbaa !17 ; 2 uses
  %.not.i102 = icmp eq ptr %i.mj, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit70, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mk = atomicrmw add ptr %i.mj, i32 -1 acq_rel, align 4
  %i.ml = icmp eq i32 %i.mk, 1
  br i1 %i.ml, label %bb.dy, label %_ZN4ncnn3MatD2Ev.exit70

bb.dy:                                            ; preds = %bb.dx
  %i.mm = load ptr, ptr %i.cq, align 16, !tbaa !18 ; 3 uses
  %.not3.i103 = icmp eq ptr %i.mm, null
  %i.mn = load ptr, ptr %10, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i103, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mo = load ptr, ptr %i.mm, align 8, !tbaa !11
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8
  invoke void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef %i.mn)
          to label %_ZN4ncnn3MatD2Ev.exit70 unwind label %bb.ec, !inline_history !0

bb.ea:                                            ; preds = %bb.dy
  %.not.i116 = icmp eq ptr %i.mn, null
  br i1 %.not.i116, label %_ZN4ncnn3MatD2Ev.exit70, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef nonnull %i.mn) #9
  br label %_ZN4ncnn3MatD2Ev.exit70

bb.ec:                                            ; preds = %bb.dz
  %i.mr = landingpad { ptr, i32 }
          catch ptr null
  %i.ms = extractvalue { ptr, i32 } %i.mr, 0
  call void @__clang_call_terminate(ptr %i.ms) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit70:                          ; preds = %bb.dx, %bb.dw, %bb.dz, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.fj

bb.ed:                                            ; preds = %bb.dv
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_ZN4ncnn3MatD2Ev.exit71, %_ZN4ncnn3MatD2Ev.exit73.1, %_ZN4ncnn3MatD2Ev.exit74
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %_ZN4ncnn3MatD2Ev.exit74 ], [ %i.mt, %bb.ed ], [ %.pn62.pn, %_ZN4ncnn3MatD2Ev.exit73.1 ], [ %.pn.pn, %_ZN4ncnn3MatD2Ev.exit71 ]
  %i.mu = load ptr, ptr %i.cn, align 8, !tbaa !17 ; 2 uses
  %.not.i106 = icmp eq ptr %i.mu, null
  br i1 %.not.i106, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.mv = atomicrmw add ptr %i.mu, i32 -1 acq_rel, align 4
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %bb.eg, label %_ZN4ncnn3MatD2Ev.exit

bb.eg:                                            ; preds = %bb.ef
  %i.mx = load ptr, ptr %i.cq, align 16, !tbaa !18 ; 3 uses
  %.not3.i107 = icmp eq ptr %i.mx, null
  %i.my = load ptr, ptr %10, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i107, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !11
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.mx, ptr noundef %i.my)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ek, !inline_history !0

bb.ei:                                            ; preds = %bb.eg
  %.not.i114 = icmp eq ptr %i.my, null
  br i1 %.not.i114, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @free(ptr noundef nonnull %i.my) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ek:                                            ; preds = %bb.eh
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ef, %bb.ee, %bb.eh, %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.el

bb.el:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.au
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn, %_ZN4ncnn3MatD2Ev.exit ], [ %i.ea, %bb.au ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %common.resume

bb.em:                                            ; preds = %bb.aa
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 5 uses
  %.val = load ptr, ptr %i.ne, align 8, !tbaa !19
  %i.ng = mul i32 %i.bo, %i.bi
  %i.nh = mul i32 %i.ng, %i.bn
  %i.ni = mul nuw nsw i32 %.054, %.055            ; 2 uses
  %i.nj = sdiv i32 %i.nh, %i.ni
  %i.nk = shl nuw nsw i32 %.055, 2
  %narrow.i = mul nuw nsw i32 %i.nk, %.054
  %i.nl = zext nneg i32 %narrow.i to i64
  call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nf, i32 noundef %i.nj, i64 noundef %i.nl, i32 noundef %i.ni, ptr noundef null)
  %i.nm = load ptr, ptr %i.nf, align 8, !tbaa !19
  %i.nn = icmp sgt i32 %i.bn, 0
  %i.no = icmp sgt i32 %i.bh, 0
  %or.cond.i = and i1 %i.no, %i.nn
  br i1 %or.cond.i, label %.preheader2.lr.ph.split.us.i, label %._crit_edge13.i

.preheader2.lr.ph.split.us.i:                     ; preds = %bb.em
  %i.np = icmp slt i32 %i.bo, 1
  %i.nq = icmp slt i32 %i.bf, 1
  %brmerge.i = or i1 %i.nq, %i.np
  br i1 %brmerge.i, label %._crit_edge13.i, label %.preheader2.lr.ph.split.us.split.split.i

.preheader2.lr.ph.split.us.split.split.i:         ; preds = %.preheader2.lr.ph.split.us.i
  %i.nr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.055, i1 true) ; 2 uses
  %i.ns = lshr i32 %i.bo, %i.nr
  %i.nt = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.nu = zext nneg i32 %i.bf to i64              ; 3 uses
  %i.nv = zext nneg i32 %i.bo to i64              ; 2 uses
  %wide.trip.count31.i = zext nneg i32 %i.bn to i64
  %i.nw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.054, i1 true)
  %i.nx = add nuw i32 %.054, 2147483647
  %i.ny = add nuw i32 %.055, 2147483647
  br label %.preheader2.us.i

.preheader2.us.i:                                 ; preds = %._crit_edge8.us.i, %.preheader2.lr.ph.split.us.split.split.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %._crit_edge8.us.i ], [ 0, %.preheader2.lr.ph.split.us.split.split.i ] ; 3 uses
  %i.nz = mul nuw nsw i64 %indvars.iv28.i, %i.nv
  %i.oa = trunc nuw nsw i64 %indvars.iv28.i to i32 ; 2 uses
  %i.ob = lshr i32 %i.oa, %i.nw
  %i.oc = and i32 %i.nx, %i.oa
  %i.od = mul nuw nsw i32 %i.ob, %i.bh
  %i.oe = zext nneg i32 %i.od to i64
  br label %.preheader1.us.i

bb.en:                                            ; preds = %.preheader.us.i, %bb.en
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.en ] ; 3 uses
  %i.of = add nuw nsw i64 %indvars.iv.i, %i.nz
  %i.og = mul nuw nsw i64 %i.of, %i.nt
  %i.oh = add nuw nsw i64 %i.og, %indvars.iv23.i
  %i.oi = mul nuw nsw i64 %i.oh, %i.nu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.oi
  %i.oj = load float, ptr %gep.i, align 4, !tbaa !38
  %i.ok = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ol = lshr i32 %i.ok, %i.nr
  %i.om = and i32 %i.ny, %i.ok
  %i.on = add nsw i32 %i.ol, %i.ow
  %i.oo = mul nsw i32 %i.on, %.055
  %i.op = add nsw i32 %i.oo, %i.om
  %i.oq = mul nsw i32 %i.op, %.054
  %i.or = add nsw i32 %i.oq, %i.oc
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.os
  store float %i.oj, ptr %i.ot, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.nv
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.en, !llvm.loop !82

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader1.us.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %._crit_edge.us.i ], [ 0, %.preheader1.us.i ] ; 3 uses
  %i.ou = add i64 %indvars.iv18.i, %i.oy
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv18.i
  %i.ov = trunc i64 %i.ou to i32
  %i.ow = mul i32 %i.ns, %i.ov
  br label %bb.en

.preheader1.us.i:                                 ; preds = %._crit_edge5.us.i, %.preheader2.us.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader2.us.i ], [ %indvars.iv.next24.i, %._crit_edge5.us.i ] ; 3 uses
  %i.ox = add nuw nsw i64 %indvars.iv23.i, %i.oe
  %i.oy = mul i64 %i.ox, %i.nu
  br label %.preheader.us.i

._crit_edge.us.i:                                 ; preds = %bb.en
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %i.nu
  br i1 %exitcond22.not.i, label %._crit_edge5.us.i, label %.preheader.us.i, !llvm.loop !83

._crit_edge5.us.i:                                ; preds = %._crit_edge.us.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %i.nt
  br i1 %exitcond27.not.i, label %._crit_edge8.us.i, label %.preheader1.us.i, !llvm.loop !84

._crit_edge8.us.i:                                ; preds = %._crit_edge5.us.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %._crit_edge13.i, label %.preheader2.us.i, !llvm.loop !85

._crit_edge13.i:                                  ; preds = %._crit_edge8.us.i, %.preheader2.lr.ph.split.us.i, %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.oz = sdiv i32 %i.bo, %.055
  %i.pa = sdiv i32 %i.bn, %.054
  call void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.nf, i32 noundef %i.oz, i32 noundef %i.bi, i32 noundef %i.pa, ptr noundef null)
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !17 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.pc, null
  br i1 %.not.i74.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge13.i
  %i.pd = atomicrmw add ptr %i.pc, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %._crit_edge13.i
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i, label %bb.ev, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.pg = atomicrmw add ptr %i.pf, i32 -1 acq_rel, align 4
  %i.ph = icmp eq i32 %i.pg, 1
  br i1 %i.ph, label %bb.er, label %bb.ev

bb.er:                                            ; preds = %bb.eq
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !18 ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.pj, null
  %i.pk = load ptr, ptr %i.nf, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.pl = load ptr, ptr %i.pj, align 8, !tbaa !11
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8
  invoke void %i.pn(ptr noundef nonnull align 8 dereferenceable(8) %i.pj, ptr noundef %i.pk)
          to label %bb.ev unwind label %bb.fc, !inline_history !81

bb.et:                                            ; preds = %bb.er
  %.not.i18.i.i = icmp eq ptr %i.pk, null
  br i1 %.not.i18.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @free(ptr noundef nonnull %i.pk) #9
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es, %bb.eq, %bb.ep
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.pt = load ptr, ptr %i.pb, align 8, !tbaa !17 ; 2 uses
  %i.pu = load <2 x ptr>, ptr %2, align 16, !tbaa !89
  store <2 x ptr> %i.pu, ptr %i.nf, align 8, !tbaa !89
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pw = load i64, ptr %i.pv, align 16, !tbaa !52
  store i64 %i.pw, ptr %i.po, align 8, !tbaa !52
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.py = load i32, ptr %i.px, align 8, !tbaa !54
  store i32 %i.py, ptr %i.pp, align 8, !tbaa !54
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 16, !tbaa !18
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.qa, ptr %i.qb, align 8, !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.qd = load <4 x i32>, ptr %i.qc, align 8, !tbaa !55
  store <4 x i32> %i.qd, ptr %i.pq, align 8, !tbaa !55
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !56
  store i32 %i.qf, ptr %i.pr, align 8, !tbaa !56
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.qh = load i64, ptr %i.qg, align 16, !tbaa !20
  store i64 %i.qh, ptr %i.ps, align 8, !tbaa !20
  %.not.i.i149 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i149, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.qi = atomicrmw add ptr %i.pt, i32 -1 acq_rel, align 4
  %i.qj = icmp eq i32 %i.qi, 1
  br i1 %i.qj, label %bb.ex, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit

bb.ex:                                            ; preds = %bb.ew
  %i.qk = load ptr, ptr %i.pz, align 16, !tbaa !18 ; 3 uses
  %.not3.i.i150 = icmp eq ptr %i.qk, null
  %i.ql = load ptr, ptr %2, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i.i150, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.qm = load ptr, ptr %i.qk, align 8, !tbaa !11
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8
  invoke void %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %i.qk, ptr noundef %i.ql)
          to label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit unwind label %bb.fb, !inline_history !0

bb.ez:                                            ; preds = %bb.ex
  %.not.i72.i = icmp eq ptr %i.ql, null
  br i1 %.not.i72.i, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @free(ptr noundef nonnull %i.ql) #9
  br label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit

bb.fb:                                            ; preds = %bb.ey
  %i.qp = landingpad { ptr, i32 }
          catch ptr null
  %i.qq = extractvalue { ptr, i32 } %i.qp, 0
  call void @__clang_call_terminate(ptr %i.qq) #18
  unreachable

bb.fc:                                            ; preds = %bb.es
  %i.qr = landingpad { ptr, i32 }
          cleanup
  %i.qs = load ptr, ptr %i.pb, align 8, !tbaa !17 ; 2 uses
  %.not.i67.i = icmp eq ptr %i.qs, null
  br i1 %.not.i67.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.qt = atomicrmw add ptr %i.qs, i32 -1 acq_rel, align 4
  %i.qu = icmp eq i32 %i.qt, 1
  br i1 %i.qu, label %bb.fe, label %_ZN4ncnn3MatD2Ev.exit.i

bb.fe:                                            ; preds = %bb.fd
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qw = load ptr, ptr %i.qv, align 16, !tbaa !18 ; 3 uses
  %.not3.i68.i = icmp eq ptr %i.qw, null
  %i.qx = load ptr, ptr %2, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i68.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qy = load ptr, ptr %i.qw, align 8, !tbaa !11
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8
  invoke void %i.ra(ptr noundef nonnull align 8 dereferenceable(8) %i.qw, ptr noundef %i.qx)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.fi, !inline_history !0

bb.fg:                                            ; preds = %bb.fe
  %.not.i71.i = icmp eq ptr %i.qx, null
  br i1 %.not.i71.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @free(ptr noundef nonnull %i.qx) #9
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.fi:                                            ; preds = %bb.ff
  %i.rb = landingpad { ptr, i32 }
          catch ptr null
  %i.rc = extractvalue { ptr, i32 } %i.rb, 0
  call void @__clang_call_terminate(ptr %i.rc) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %common.resume

_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit: ; preds = %bb.ev, %bb.ew, %bb.ey, %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.fj

bb.fj:                                            ; preds = %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, %_ZN4ncnn3MatD2Ev.exit70
  %i.rd = load i8, ptr %1, align 8, !tbaa !90, !range !47, !noundef !48
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.fk, label %bb.fq

bb.fk:                                            ; preds = %bb.fj
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !17 ; 2 uses
  %.not.i110 = icmp eq ptr %i.rh, null
  br i1 %.not.i110, label %_ZN4ncnn3Mat7releaseEv.exit112, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ri = atomicrmw add ptr %i.rh, i32 -1 acq_rel, align 4
  %i.rj = icmp eq i32 %i.ri, 1
  br i1 %i.rj, label %bb.fm, label %_ZN4ncnn3Mat7releaseEv.exit112

bb.fm:                                            ; preds = %bb.fl
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !18 ; 3 uses
  %.not3.i111 = icmp eq ptr %i.rl, null
  %i.rm = load ptr, ptr %i.rf, align 8, !tbaa !19 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn20DeformableConv2D_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge209, %bb.a
  ret void

bb.y:                                             ; preds = %bb.d
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %16, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %18, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %19, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %20, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %21, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %22, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %23, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %24, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %25, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %26, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %27, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %28) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !55     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !55
  %i.h = load i32, ptr %0, align 4, !tbaa !55     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !55
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !55
  %i.k = load i32, ptr %i.a, align 4, !tbaa !55   ; 2 uses
  %.not686 = icmp sgt i32 %i.k, %i.j
  br i1 %.not686, label %._crit_edge689, label %.preheader634.lr.ph

.preheader634.lr.ph:                              ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %25, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.v = load i32, ptr %3, align 4, !tbaa !55     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader634.preheader, label %._crit_edge689

.preheader634.preheader:                          ; preds = %.preheader634.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.preheader634

.preheader634:                                    ; preds = %.preheader634.preheader, %._crit_edge685
  %i.z = phi i32 [ %i.v, %.preheader634.preheader ], [ %i.af, %._crit_edge685 ] ; 3 uses
  %i.aa = phi i32 [ %i.v, %.preheader634.preheader ], [ %i.ag, %._crit_edge685 ] ; 3 uses
  %indvars.iv734 = phi i64 [ %i.x, %.preheader634.preheader ], [ %indvars.iv.next735, %._crit_edge685 ] ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge685

.lr.ph:                                           ; preds = %.preheader634
  %i.ac = load i32, ptr %8, align 4, !tbaa !55    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.split.preheader, label %._crit_edge685

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ae = trunc nsw i64 %indvars.iv734 to i32     ; 2 uses
  br label %.lr.ph.split

._crit_edge685:                                   ; preds = %._crit_edge, %.lr.ph, %.preheader634
  %i.af = phi i32 [ %i.z, %.preheader634 ], [ %i.z, %.lr.ph ], [ %i.at, %._crit_edge ]
  %i.ag = phi i32 [ %i.aa, %.preheader634 ], [ %i.aa, %.lr.ph ], [ %i.at, %._crit_edge ]
  %indvars.iv.next735 = add nsw i64 %indvars.iv734, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next735 to i32
  %exitcond737.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond737.not, label %._crit_edge689, label %.preheader634, !llvm.loop !128

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.ah = phi i32 [ %i.z, %.lr.ph.split.preheader ], [ %i.at, %._crit_edge ]
  %i.ai = phi i32 [ %i.ac, %.lr.ph.split.preheader ], [ %i.au, %._crit_edge ] ; 2 uses
  %indvars.iv731 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next732, %._crit_edge ] ; 6 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv731 to i32 ; 4 uses
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %.noexc326.lr.ph, label %._crit_edge

.noexc326.lr.ph:                                  ; preds = %.lr.ph.split
  %i.al = load i32, ptr %6, align 4, !tbaa !55
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = load i32, ptr %7, align 4, !tbaa !55
  %i.ao = sub i32 %i.am, %i.an
  %i.ap = load i32, ptr %4, align 4, !tbaa !55
  %i.aq = mul nsw i32 %i.ap, %i.ae
  %i.ar = load i32, ptr %5, align 4, !tbaa !55
  %i.as = sub i32 %i.aq, %i.ar
  br label %.noexc326

._crit_edge.loopexit:                             ; preds = %bb.as
  %.pre = load i32, ptr %3, align 4, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.at = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph.split ] ; 4 uses
  %i.au = phi i32 [ %i.ut, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph.split ]
  %indvars.iv.next732 = add nuw nsw i64 %indvars.iv731, 1 ; 2 uses
  %i.av = sext i32 %i.at to i64
  %i.aw = icmp slt i64 %indvars.iv.next732, %i.av
  br i1 %i.aw, label %.lr.ph.split, label %._crit_edge685, !llvm.loop !129

.noexc326:                                        ; preds = %.noexc326.lr.ph, %bb.as
  %indvars.iv728 = phi i64 [ 0, %.noexc326.lr.ph ], [ %indvars.iv.next729, %bb.as ] ; 5 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !19, !noalias !150
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !150
  %i.az = mul i64 %i.ay, %indvars.iv728
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !52, !noalias !150
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb
  %i.bd = load ptr, ptr %10, align 8, !tbaa !19, !noalias !151
  %i.be = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !151
  %i.bf = mul i64 %i.be, %indvars.iv728
  %i.bg = load i64, ptr %i.o, align 8, !tbaa !52, !noalias !151
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %11, align 8, !tbaa !68   ; 3 uses
  %.not268 = icmp eq ptr %i.bj, null
  br i1 %.not268, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc326
  %i.bk = load i32, ptr %12, align 4, !tbaa !55
  switch i32 %i.bk, label %bb.e [
    i32 4, label %.thread
    i32 1, label %bb.d
  ]

.thread:                                          ; preds = %bb.c
  %.idx = shl nuw nsw i64 %indvars.iv728, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !tbaa !66
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv728
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.thread, %bb.d, %.noexc326
  %.1619 = phi nsz <4 x float> [ zeroinitializer, %.noexc326 ], [ zeroinitializer, %bb.d ], [ zeroinitializer, %bb.c ], [ %i.bm, %.thread ] ; 3 uses
  %.0247 = phi nsz float [ 0.000000e+00, %.noexc326 ], [ %i.bo, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %.thread ] ; 3 uses
  %i.bp = load i32, ptr %13, align 4, !tbaa !55   ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.preheader633.lr.ph, label %._crit_edge667

.preheader633.lr.ph:                              ; preds = %bb.e
  %i.br = load i32, ptr %14, align 4, !tbaa !55   ; 5 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.preheader633.lr.ph.split.us, label %._crit_edge667

.preheader633.lr.ph.split.us:                     ; preds = %.preheader633.lr.ph
  %i.bt = load i8, ptr %15, align 1, !tbaa !58, !range !47, !noundef !48
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load i8, ptr %17, align 1, !tbaa !58, !range !47, !noundef !48 ; 2 uses
  %i.bw = trunc nuw i8 %i.bv to i1                ; 2 uses
  %i.bx = load i32, ptr %20, align 4, !tbaa !55
  %i.by = load i32, ptr %21, align 4, !tbaa !55
  %i.bz = load i32, ptr %24, align 4, !tbaa !55   ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %i.cb = zext nneg i32 %i.br to i64              ; 2 uses
  %wide.trip.count726 = zext nneg i32 %i.bp to i64
  %wide.trip.count716 = zext nneg i32 %i.bz to i64
  %i.cc = trunc nuw i8 %i.bv to i1
  br label %.preheader633.us

.preheader633.us:                                 ; preds = %._crit_edge659.us, %.preheader633.lr.ph.split.us
  %indvars.iv723 = phi i64 [ %indvars.iv.next724, %._crit_edge659.us ], [ 0, %.preheader633.lr.ph.split.us ] ; 6 uses
  %.1248665.us = phi float [ %.3.lcssa.us, %._crit_edge659.us ], [ %.0247, %.preheader633.lr.ph.split.us ]
  %.0249664.us = phi ptr [ %.2251.lcssa.us, %._crit_edge659.us ], [ %i.bc, %.preheader633.lr.ph.split.us ]
  %.2620663.us = phi <4 x float> [ %.4622.lcssa.us, %._crit_edge659.us ], [ %.1619, %.preheader633.lr.ph.split.us ]
  %i.cd = mul nuw nsw i64 %indvars.iv723, %i.cb
  %i.ce = trunc i64 %indvars.iv723 to i32
  %i.cf = mul i32 %i.bx, %i.ce
  %i.cg = add i32 %i.cf, %i.as
  %i.ch = sitofp fast i32 %i.cg to float
  %i.ci = trunc nuw nsw i64 %indvars.iv723 to i32
  %i.cj = mul nuw nsw i32 %i.br, %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv723 to i32
  %i.cl = mul nuw nsw i32 %i.br, %i.ck
  %i.cm = trunc nuw nsw i64 %indvars.iv723 to i32
  %i.cn = mul nuw nsw i32 %i.br, %i.cm
  %i.co = insertelement <2 x float> poison, float %i.ch, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.preheader633.us, %._crit_edge.us
  %indvars.iv718 = phi i64 [ 0, %.preheader633.us ], [ %indvars.iv.next719, %._crit_edge.us ] ; 5 uses
  %.2656.us = phi float [ %.1248665.us, %.preheader633.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.1250655.us = phi ptr [ %.0249664.us, %.preheader633.us ], [ %.2251.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.3621654.us = phi <4 x float> [ %.2620663.us, %.preheader633.us ], [ %.4622.lcssa.us, %._crit_edge.us ] ; 2 uses
  %i.cp = add nuw nsw i64 %i.cd, %indvars.iv718
  %i.cq = shl nuw nsw i64 %i.cp, 1                ; 3 uses
  br i1 %i.bu, label %_ZN4ncnn3MatD2Ev.exit274.us, label %_ZN4ncnn3MatD2Ev.exit272.us

_ZN4ncnn3MatD2Ev.exit272.us:                      ; preds = %bb.f
  %i.cr = load i32, ptr %i.p, align 8, !tbaa !54  ; 5 uses
  %i.cs = trunc nuw i64 %i.cq to i32              ; 2 uses
  %i.ct = sdiv i32 %i.cs, %i.cr
  %i.cu = load i32, ptr %i.q, align 4, !tbaa !51, !noalias !152
  %i.cv = load ptr, ptr %16, align 8, !tbaa !19, !noalias !152 ; 2 uses
  %i.cw = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.cx = sext i32 %i.ct to i64
  %i.cy = mul i64 %i.cw, %i.cx
  %i.cz = load i64, ptr %i.s, align 8, !tbaa !52, !noalias !152 ; 3 uses
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.da
  %i.dc = sext i32 %i.cu to i64
  %i.dd = mul nsw i64 %indvars.iv734, %i.dc
  %i.de = mul i64 %i.dd, %i.cz                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  %i.dg = mul nsw i32 %i.cr, %i.aj                ; 2 uses
  %i.dh = srem i32 %i.cs, %i.cr
  %i.di = add nsw i32 %i.dh, %i.dg
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dj
  %i.dl = trunc i64 %i.cq to i32
  %i.dm = or disjoint i32 %i.dl, 1                ; 2 uses
  %i.dn = sdiv i32 %i.dm, %i.cr
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul i64 %i.cw, %i.do
  %i.dq = mul i64 %i.dp, %i.cz
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.de
  %i.dt = srem i32 %i.dm, %i.cr
  %i.du = add nsw i32 %i.dt, %i.dg
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dv
  br label %bb.g

_ZN4ncnn3MatD2Ev.exit274.us:                      ; preds = %bb.f
  %i.dx = load i32, ptr %i.q, align 4, !tbaa !51, !noalias !153
  %i.dy = load ptr, ptr %16, align 8, !tbaa !19, !noalias !153 ; 2 uses
  %i.dz = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !153 ; 2 uses
  %i.ea = mul i64 %i.dz, %i.cq
  %i.eb = load i64, ptr %i.s, align 8, !tbaa !52, !noalias !153 ; 3 uses
  %i.ec = mul i64 %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ec
  %i.ee = sext i32 %i.dx to i64
  %i.ef = mul nsw i64 %indvars.iv734, %i.ee
  %i.eg = mul i64 %i.ef, %i.eb                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv731
  %i.ej = trunc nuw nsw i64 %indvars.iv718 to i32
  %i.ek = add nuw nsw i32 %i.cj, %i.ej
  %i.el = shl nuw nsw i32 %i.ek, 1
  %i.em = or disjoint i32 %i.el, 1
  %29 = zext nneg i32 %i.em to i64
  %i.en = mul i64 %i.eb, %i.dz
  %i.eo = mul i64 %i.en, %29
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eg
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv731
  br label %bb.g

bb.g:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit274.us, %_ZN4ncnn3MatD2Ev.exit272.us
  %.0244.in.us = phi ptr [ %i.ei, %_ZN4ncnn3MatD2Ev.exit274.us ], [ %i.dk, %_ZN4ncnn3MatD2Ev.exit272.us ]
  %.0243.in.us = phi ptr [ %i.er, %_ZN4ncnn3MatD2Ev.exit274.us ], [ %i.dw, %_ZN4ncnn3MatD2Ev.exit272.us ]
  %.0243.us = load float, ptr %.0243.in.us, align 4, !tbaa !38
  %.0244.us = load float, ptr %.0244.in.us, align 4, !tbaa !38
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.es = load ptr, ptr %18, align 8, !tbaa !57   ; 8 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 144 ; 2 uses
  %i.eu = load i8, ptr %19, align 1, !tbaa !58, !range !47, !noundef !48
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = trunc nuw nsw i64 %indvars.iv718 to i32 ; 2 uses
  br i1 %i.ev, label %_ZN4ncnn3MatD2Ev.exit270.us, label %_ZN4ncnn3MatD2Ev.exit269.us

_ZN4ncnn3MatD2Ev.exit269.us:                      ; preds = %bb.h
  %i.ex = add nuw nsw i32 %i.cl, %i.ew            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 168
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !54 ; 3 uses
  %i.fa = sdiv i32 %i.ex, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 188
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !51, !noalias !154
  %i.fd = load ptr, ptr %i.et, align 8, !tbaa !19, !noalias !154
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 208
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !20, !noalias !154
  %i.fg = sext i32 %i.fa to i64
  %i.fh = mul i64 %i.ff, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 160
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !52, !noalias !154 ; 2 uses
  %i.fk = mul i64 %i.fh, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fk
  %i.fm = sext i32 %i.fc to i64
  %i.fn = mul nsw i64 %indvars.iv734, %i.fm
  %i.fo = mul i64 %i.fn, %i.fj
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fo
  %i.fq = mul nsw i32 %i.ez, %i.aj
  %i.fr = srem i32 %i.ex, %i.ez
  %i.fs = add nsw i32 %i.fr, %i.fq
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !38
  br label %bb.i

_ZN4ncnn3MatD2Ev.exit270.us:                      ; preds = %bb.h
  %i.fw = add nuw nsw i32 %i.cn, %i.ew
  %i.fx = getelementptr inbounds nuw i8, ptr %i.es, i64 188
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !51, !noalias !155
  %i.fz = load ptr, ptr %i.et, align 8, !tbaa !19, !noalias !155
  %i.ga = getelementptr inbounds nuw i8, ptr %i.es, i64 208
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !20, !noalias !155
  %30 = zext nneg i32 %i.fw to i64
  %i.gc = mul i64 %i.gb, %30
  %i.gd = getelementptr inbounds nuw i8, ptr %i.es, i64 160
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !52, !noalias !155 ; 2 uses
  %i.gf = mul i64 %i.gc, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gf
  %i.gh = sext i32 %i.fy to i64
  %i.gi = mul nsw i64 %indvars.iv734, %i.gh
  %i.gj = mul i64 %i.gi, %i.ge
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv731
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit270.us, %_ZN4ncnn3MatD2Ev.exit269.us, %bb.g
  %.1242.us = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.gm, %_ZN4ncnn3MatD2Ev.exit270.us ], [ %i.fv, %_ZN4ncnn3MatD2Ev.exit269.us ] ; 2 uses
  %i.gn = trunc i64 %indvars.iv718 to i32
  %i.go = mul i32 %i.by, %i.gn
  %i.gp = add i32 %i.go, %i.ao
  %i.gq = sitofp fast i32 %i.gp to float
  %i.gr = insertelement <2 x float> poison, float %.0243.us, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %.0244.us, i64 1
  %i.gt = insertelement <2 x float> %i.co, float %i.gq, i64 0
  %i.gu = fadd fast <2 x float> %i.gs, %i.gt      ; 4 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 1 ; 2 uses
  %i.gw = fcmp fast ogt float %i.gv, -1.000000e+00
  %i.gx = extractelement <2 x float> %i.gu, i64 0 ; 2 uses
  %i.gy = fcmp fast ogt float %i.gx, -1.000000e+00
  %or.cond.us = select i1 %i.gw, i1 %i.gy, i1 false
  br i1 %or.cond.us, label %bb.j, label %.thread626.us

bb.j:                                             ; preds = %bb.i
  %i.gz = load i32, ptr %22, align 4, !tbaa !55   ; 2 uses
  %i.ha = sitofp fast i32 %i.gz to float
  %i.hb = fcmp fast olt float %i.gv, %i.ha
  br i1 %i.hb, label %bb.k, label %.thread626.us

bb.k:                                             ; preds = %bb.j
  %i.hc = load i32, ptr %23, align 4, !tbaa !55   ; 7 uses
  %i.hd = sitofp fast i32 %i.hc to float
  %i.he = fcmp fast olt float %i.gx, %i.hd
  br i1 %i.he, label %bb.l, label %.thread626.us

bb.l:                                             ; preds = %bb.k
  %i.hf = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gu)
  %i.hg = fptosi <2 x float> %i.hf to <2 x i32>   ; 3 uses
  %i.hh = extractelement <2 x i32> %i.hg, i64 1   ; 5 uses
  %i.hi = add nsw i32 %i.hh, 1                    ; 2 uses
  %i.hj = extractelement <2 x i32> %i.hg, i64 0   ; 6 uses
  %i.hk = add nsw i32 %i.hj, 1                    ; 2 uses
  %i.hl = sitofp <2 x i32> %i.hg to <2 x float>
  %i.hm = fsub fast <2 x float> %i.gu, %i.hl      ; 3 uses
  %i.hn = fsub fast <2 x float> splat (float 1.000000e+00), %i.hm ; 2 uses
  %i.ho = icmp sgt i32 %i.hh, -1                  ; 2 uses
  %i.hp = icmp sgt i32 %i.hj, -1                  ; 2 uses
  %i.hq = select i1 %i.ho, i1 %i.hp, i1 false     ; 2 uses
  %i.hr = add nsw i32 %i.hc, -1
  %i.hs = icmp sgt i32 %i.hr, %i.hj
  %i.ht = select i1 %i.ho, i1 %i.hs, i1 false     ; 2 uses
  %i.hu = add nsw i32 %i.gz, -1
  %i.hv = icmp sgt i32 %i.hu, %i.hh               ; 2 uses
  %i.hw = select i1 %i.hv, i1 %i.hp, i1 false     ; 2 uses
  %i.hx = add nsw i32 %i.hc, -1
  %i.hy = icmp sgt i32 %i.hx, %i.hj
  %i.hz = select i1 %i.hv, i1 %i.hy, i1 false     ; 2 uses
  %i.ia = mul nsw i32 %i.hc, %i.hh
  %i.ib = add nsw i32 %i.ia, %i.hj
  %.0231.us = select i1 %i.hq, i32 %i.ib, i32 0
  %i.ic = mul nsw i32 %i.hc, %i.hh
  %i.id = add nsw i32 %i.ic, %i.hk
  %.0229.us = select i1 %i.ht, i32 %i.id, i32 0
  %i.ie = mul nsw i32 %i.hc, %i.hi
  %i.if = add nsw i32 %i.ie, %i.hj
  %.0227.us = select i1 %i.hw, i32 %i.if, i32 0
  %i.ig = mul nsw i32 %i.hc, %i.hi
  %i.ih = add nsw i32 %i.ig, %i.hk
  %.0225.us = select i1 %i.hz, i32 %i.ih, i32 0
  %i.ii = shufflevector <2 x float> %i.hn, <2 x float> %i.hm, <4 x i32> <i32 0, i32 2, i32 3, i32 2>
  %i.ij = shufflevector <2 x float> %i.hn, <2 x float> %i.hm, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %i.ik = fmul fast <4 x float> %i.ii, %i.ij      ; 4 uses
  %i.il = extractelement <4 x float> %i.ik, i64 0
  %i.im = extractelement <4 x float> %i.ik, i64 1
  %i.in = extractelement <4 x float> %i.ik, i64 2
  %i.io = extractelement <4 x float> %i.ik, i64 3
  br label %.thread626.us

.thread626.us:                                    ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ip = phi i1 [ true, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 2 uses
  %.0240.us = phi nsz float [ %i.il, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.0239.us = phi nsz float [ %i.im, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.0238.us = phi nsz float [ %i.in, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.0237.us = phi nsz float [ %i.io, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.0236.us = phi i1 [ %i.hq, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 2 uses
  %.0235.us = phi i1 [ %i.ht, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 2 uses
  %.0234.us = phi i1 [ %i.hw, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 2 uses
  %.0233.us = phi i1 [ %i.hz, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 2 uses
  %.1232.us = phi i32 [ %.0231.us, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.1230.us = phi i32 [ %.0229.us, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.1228.us = phi i32 [ %.0227.us, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.1226.us = phi i32 [ %.0225.us, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 2 uses
  br i1 %i.ca, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %.loopexit.us
  %indvars.iv713 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next714, %.loopexit.us ] ; 2 uses
  %.3650.us = phi float [ %.2656.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.5.us, %.loopexit.us ] ; 6 uses
  %.2251649.us = phi ptr [ %.1250655.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.6.us, %.loopexit.us ] ; 5 uses
  %.4622648.us = phi <4 x float> [ %.3621654.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.6624.us763, %.loopexit.us ] ; 4 uses
  %.reass.us = mul i64 %factor.op.mul.us, %indvars.iv713
  %i.iq = getelementptr inbounds nuw i8, ptr %i.md, i64 %.reass.us ; 8 uses
  br i1 %i.mh, label %bb.m, label %.loopexit632.us

bb.m:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.ir = load i32, ptr %26, align 4, !tbaa !55   ; 8 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %bb.m
  %i.it = mul nsw i32 %i.ir, %.1232.us
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.iu
  %i.iw = mul nsw i32 %i.ir, %.1230.us
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ix
  %i.iz = mul nsw i32 %i.ir, %.1228.us
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ja
  %i.jc = mul nsw i32 %i.ir, %.1226.us
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jd
  br i1 %i.ip, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us670.preheader

.lr.ph.split.us670.preheader:                     ; preds = %.lr.ph.us
  %scevgep = getelementptr i8, ptr %.2251649.us, i64 16
  %i.jf = add nsw i32 %i.ir, -1
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 4
  %scevgep700 = getelementptr i8, ptr %scevgep, i64 %i.jh
  br label %.loopexit.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.ir to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next, %bb.u ] ; 5 uses
  %.3252636.us.us = phi ptr [ %.2251649.us, %.lr.ph.split.us.us.preheader ], [ %i.ki, %bb.u ] ; 2 uses
  %.5623635.us.us = phi <4 x float> [ %.4622648.us, %.lr.ph.split.us.us.preheader ], [ %i.kh, %bb.u ]
  br i1 %.0236.us, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.us
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv
  %i.jj = load float, ptr %i.ji, align 1, !tbaa !66
  %.scalar = fmul fast float %i.jj, %.0240.us
  %i.jk = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.us.us
  %i.jm = phi <4 x float> [ %i.jl, %bb.n ], [ zeroinitializer, %.lr.ph.split.us.us ] ; 2 uses
  br i1 %.0235.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv
  %i.jo = load float, ptr %i.jn, align 1, !tbaa !66
  %.scalar738 = fmul fast float %i.jo, %.0239.us
  %i.jp = insertelement <4 x float> poison, float %.scalar738, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = fadd fast <4 x float> %i.jq, %i.jm
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.js = phi <4 x float> [ %i.jr, %bb.p ], [ %i.jm, %bb.o ] ; 2 uses
  br i1 %.0234.us, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv
  %i.ju = load float, ptr %i.jt, align 1, !tbaa !66
  %.scalar739 = fmul fast float %i.ju, %.0238.us
  %i.jv = insertelement <4 x float> poison, float %.scalar739, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = fadd fast <4 x float> %i.jw, %i.js
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.jy = phi <4 x float> [ %i.jx, %bb.r ], [ %i.js, %bb.q ] ; 2 uses
  br i1 %.0233.us, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv
  %i.ka = load float, ptr %i.jz, align 1, !tbaa !66
  %.scalar740 = fmul fast float %i.ka, %.0237.us
  %i.kb = insertelement <4 x float> poison, float %.scalar740, i64 0
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kd = fadd fast <4 x float> %i.kc, %i.jy
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0614.us.us = phi nsz <4 x float> [ %i.jy, %bb.s ], [ %i.kd, %bb.t ] ; 2 uses
  %i.ke = fmul fast <4 x float> %.0614.us.us, %i.mj
  %.1615.us.us = select nsz i1 %i.cc, <4 x float> %i.ke, <4 x float> %.0614.us.us
  %i.kf = load <4 x float>, ptr %.3252636.us.us, align 16, !tbaa !66
end_hunk_1
