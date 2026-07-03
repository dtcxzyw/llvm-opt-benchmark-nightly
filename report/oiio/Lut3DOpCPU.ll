inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE:bb.a
  br i1 %exitcond202.not.i, label %._crit_edge165.thread296.i, label %.lr.ph26.i.i, !llvm.loop !186

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc82.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.ps, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.pp, %.noexc82.i ]
  %.val74.i = load ptr, ptr %i.ml, align 8, !tbaa !175 ; 5 uses
  %xtraiter347 = and i64 %i.mq, 3                 ; 3 uses
  %i.rq = icmp ult i64 %i.mq, 4
  br i1 %i.rq, label %.epil.preheader346, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new:         ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i
  %unroll_iter351 = and i64 %i.mq, 1152921504606846972
  br label %bb.cq

._crit_edge168.i.loopexit.unr-lcssa:              ; preds = %bb.cq
  %lcmp.mod349.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod349.not, label %._crit_edge168.i.loopexit, label %.epil.preheader346

.epil.preheader346:                               ; preds = %._crit_edge168.i.loopexit.unr-lcssa, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i
  %.053166.i.epil.init = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i ], [ %i.xs, %._crit_edge168.i.loopexit.unr-lcssa ]
  %lcmp.mod350 = icmp ne i64 %xtraiter347, 0
  call void @llvm.assume(i1 %lcmp.mod350)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.epil.preheader346
  %.053166.i.epil = phi i64 [ %.053166.i.epil.init, %.epil.preheader346 ], [ %i.rv, %bb.cd ] ; 3 uses
  %epil.iter348 = phi i64 [ 0, %.epil.preheader346 ], [ %epil.iter348.next, %bb.cd ]
  %i.rr = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %.053166.i.epil
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !184
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.053166.i.epil
  store i64 %i.rt, ptr %i.ru, align 8, !tbaa !117
  %i.rv = add nuw i64 %.053166.i.epil, 1
  %epil.iter348.next = add i64 %epil.iter348, 1   ; 2 uses
  %epil.iter348.cmp.not = icmp eq i64 %epil.iter348.next, %xtraiter347
  br i1 %epil.iter348.cmp.not, label %._crit_edge168.i.loopexit, label %bb.cd, !llvm.loop !199

._crit_edge168.i.loopexit:                        ; preds = %bb.cd, %._crit_edge168.i.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.fh, align 8, !tbaa !119
  br label %._crit_edge168.i

._crit_edge168.i:                                 ; preds = %._crit_edge168.i.loopexit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i
  %i.rw = phi i64 [ %.pre35, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i ], [ %.pre, %._crit_edge168.i.loopexit ]
  %.0.i.i.i.i.i302.i = phi ptr [ null, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i ], [ %.0.i.i.i.i.i.i, %._crit_edge168.i.loopexit ]
  %.sroa.22.3301.i = phi ptr [ null, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i ], [ %i.po, %._crit_edge168.i.loopexit ] ; 4 uses
  %.sroa.0119.3300.i = phi ptr [ null, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i ], [ %i.pn, %._crit_edge168.i.loopexit ] ; 4 uses
  %i.rx = add i64 %i.rw, -1                       ; 3 uses
  %.val60.i.i = load ptr, ptr %i.fi, align 8, !tbaa !112 ; 4 uses
  %i.ry = getelementptr inbounds nuw [112 x i8], ptr %.val60.i.i, i64 %i.rx ; 3 uses
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !170 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 2 uses
  %i.sb = load i64, ptr %i.ex, align 8, !tbaa !118 ; 4 uses
  %i.sc = mul i64 %i.sb, %i.rz                    ; 7 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 24 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !200 ; 2 uses
  %i.sf = load ptr, ptr %i.sa, align 8, !tbaa !87 ; 2 uses
  %i.sg = ptrtoint ptr %i.se to i64
  %i.sh = ptrtoint ptr %i.sf to i64
  %i.si = sub i64 %i.sg, %i.sh
  %i.sj = ashr exact i64 %i.si, 2                 ; 3 uses
  %i.sk = icmp ugt i64 %i.sc, %i.sj
  br i1 %i.sk, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge168.i
  %i.sl = sub nuw i64 %i.sc, %i.sj
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sa, i64 noundef %i.sl)
          to label %.noexc89.i unwind label %bb.cs

.noexc89.i:                                       ; preds = %bb.ce
  %.val58.pre.i.i = load ptr, ptr %i.fi, align 8, !tbaa !112
  %.pre.i.i = load i64, ptr %i.ex, align 8, !tbaa !118 ; 2 uses
  %.pre99.i.i = mul i64 %.pre.i.i, %i.rz
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.cf:                                            ; preds = %._crit_edge168.i
  %i.sm = icmp ult i64 %i.sc, %i.sj
  br i1 %i.sm, label %bb.cg, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.sc ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.se, %i.sn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.cg
  store ptr %i.sn, ptr %i.sd, align 8, !tbaa !200
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.cg, %bb.cf, %.noexc89.i
  %.pre-phi.i.i = phi i64 [ %.pre99.i.i, %.noexc89.i ], [ %i.sc, %bb.cf ], [ %i.sc, %bb.cg ], [ %i.sc, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 4 uses
  %i.so = phi i64 [ %.pre.i.i, %.noexc89.i ], [ %i.sb, %bb.cf ], [ %i.sb, %bb.cg ], [ %i.sb, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 3 uses
  %.val58.i.i = phi ptr [ %.val58.pre.i.i, %.noexc89.i ], [ %.val60.i.i, %bb.cf ], [ %.val60.i.i, %bb.cg ], [ %.val60.i.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.sp = getelementptr inbounds nuw [112 x i8], ptr %.val58.i.i, i64 %i.rx ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 40 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 48 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !200 ; 2 uses
  %i.st = load ptr, ptr %i.sq, align 8, !tbaa !87 ; 2 uses
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = ptrtoint ptr %i.st to i64
  %i.sw = sub i64 %i.su, %i.sv
  %i.sx = ashr exact i64 %i.sw, 2                 ; 3 uses
  %i.sy = icmp ugt i64 %.pre-phi.i.i, %i.sx
  br i1 %i.sy, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.sz = sub nuw i64 %.pre-phi.i.i, %i.sx
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sq, i64 noundef %i.sz)
          to label %.noexc90.i unwind label %bb.cs

.noexc90.i:                                       ; preds = %bb.ch
  %.pre98.i.i = load i64, ptr %i.ex, align 8, !tbaa !118
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit66.i.i

bb.ci:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.ta = icmp ult i64 %.pre-phi.i.i, %i.sx
  br i1 %i.ta, label %bb.cj, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit66.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %.pre-phi.i.i ; 2 uses
  %.not.i.i64.i.i = icmp eq ptr %i.ss, %i.tb
  br i1 %.not.i.i64.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit66.i.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i65.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i65.i.i:  ; preds = %bb.cj
  store ptr %i.tb, ptr %i.sr, align 8, !tbaa !200
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit66.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit66.i.i:         ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i65.i.i, %bb.cj, %bb.ci, %.noexc90.i
  %i.tc = phi i64 [ %.pre98.i.i, %.noexc90.i ], [ %i.so, %bb.ci ], [ %i.so, %bb.cj ], [ %i.so, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i65.i.i ] ; 15 uses
  %i.td = load i64, ptr %i.ez, align 8, !tbaa !117 ; 5 uses
  %i.te = load i64, ptr %i.fa, align 8, !tbaa !117 ; 3 uses
  %i.tf = mul i64 %i.te, %i.td                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  switch i64 %i.tc, label %bb.cm [
    i64 3, label %bb.ck
    i64 2, label %bb.cl
  ]

bb.ck:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit66.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.tg, align 8, !tbaa !117
  store i64 %i.td, ptr %.sink114.i.sroa.gep.i, align 16, !tbaa !117
  %i.th = add i64 %i.td, 1
  store i64 %i.th, ptr %.sink111.i.sroa.gep.i, align 8, !tbaa !117
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.tf, ptr %i.ti, align 16, !tbaa !117
  %i.tj = add i64 %i.tf, 1
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.tj, ptr %i.tk, align 8, !tbaa !117
  %i.tl = add i64 %i.te, 1
  %i.tm = mul i64 %i.tl, %i.td
  br label %bb.cp

bb.cl:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit66.i.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.tn, align 8, !tbaa !117
  br label %bb.cp

bb.cm:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit66.i.i
  %i.to = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.to, ptr noundef nonnull @.str.4)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @__cxa_throw(ptr nonnull %i.to, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %.noexc91.i unwind label %bb.cs

.noexc91.i:                                       ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.to) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.body.i

bb.cp:                                            ; preds = %bb.cl, %bb.ck
  %.sink114.i.sroa.phi.i = phi ptr [ %.sink114.i.sroa.gep.i, %bb.cl ], [ %.sink114.i.sroa.gep132.i, %bb.ck ]
  %.sink.i.i = phi i64 [ %i.te, %bb.cl ], [ %i.tm, %bb.ck ] ; 2 uses
  %.sink111.i.sroa.phi.i = phi ptr [ %.sink111.i.sroa.gep.i, %bb.cl ], [ %.sink111.i.sroa.gep133.i, %bb.ck ]
  %.050.i.i = phi i64 [ 4, %bb.cl ], [ 8, %bb.ck ]
  store i64 %.sink.i.i, ptr %.sink114.i.sroa.phi.i, align 16, !tbaa !117
  %i.tq = add i64 %.sink.i.i, 1
  store i64 %i.tq, ptr %.sink111.i.sroa.phi.i, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %.not.i86.i = icmp eq i64 %i.rz, 0
  br i1 %.not.i86.i, label %.loopexit138.i, label %.lr.ph80.split.us.preheader.i.i

.lr.ph80.split.us.preheader.i.i:                  ; preds = %bb.cp
  %.val63.i.i = load ptr, ptr %i.ml, align 8, !tbaa !175
  %i.tr = shl nuw nsw i64 %i.tc, 2                ; 2 uses
  %.val57.us.i.i = load ptr, ptr %i.fi, align 8, !tbaa !112
  %i.ts = getelementptr inbounds nuw [112 x i8], ptr %.val57.us.i.i, i64 %i.rx ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !87 ; 5 uses
  %i.tv = ptrtoaddr ptr %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 40
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !87 ; 5 uses
  %i.ty = ptrtoaddr ptr %i.tx to i64
  %min.iters.check228 = icmp ult i64 %i.tc, 4
  %n.vec231 = and i64 %i.tc, -4                   ; 3 uses
  %cmp.n239 = icmp eq i64 %i.tc, %n.vec231
  %min.iters.check215 = icmp ult i64 %i.tc, 4
  %5 = sub i64 %i.tv, %i.ty
  %diff.check = icmp ugt i64 %5, -16
  %or.cond = select i1 %min.iters.check215, i1 true, i1 %diff.check
  %n.vec218 = and i64 %i.tc, -4                   ; 3 uses
  %cmp.n225 = icmp eq i64 %i.tc, %n.vec218
  %xtraiter353 = and i64 %i.tc, 1
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br label %.preheader70.us.i.i

._crit_edge77.us.i.i:                             ; preds = %scalar.ph214.prol.loopexit, %scalar.ph214, %middle.block224
  %i.tz = add nuw i64 %.05278.us.i.i, 1           ; 2 uses
  %exitcond96.not.i.i = icmp eq i64 %i.tz, %i.rz
  br i1 %exitcond96.not.i.i, label %.loopexit138.i, label %.preheader70.us.i.i, !llvm.loop !201

scalar.ph214:                                     ; preds = %scalar.ph214.prol.loopexit, %scalar.ph214
  %.075.us.i.i = phi i64 [ %i.ut, %scalar.ph214 ], [ %.075.us.i.i.unr, %scalar.ph214.prol.loopexit ] ; 5 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.075.us.i.i
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !102
  %i.uc = fadd float %i.ub, f0xB58637BD
  %i.ud = add i64 %.075.us.i.i, %i.wf             ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.ud
  store float %i.uc, ptr %i.ue, align 4, !tbaa !102
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.075.us.i.i
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !102
  %i.uh = fadd float %i.ug, f0x358637BD
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.ud
  store float %i.uh, ptr %i.ui, align 4, !tbaa !102
  %i.uj = add nuw i64 %.075.us.i.i, 1             ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.uj
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !102
  %i.um = fadd float %i.ul, f0xB58637BD
  %i.un = add i64 %i.uj, %i.wf                    ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.un
  store float %i.um, ptr %i.uo, align 4, !tbaa !102
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.uj
  %i.uq = load float, ptr %i.up, align 4, !tbaa !102
  %i.ur = fadd float %i.uq, f0x358637BD
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.un
  store float %i.ur, ptr %i.us, align 4, !tbaa !102
  %i.ut = add nuw i64 %.075.us.i.i, 2             ; 2 uses
  %exitcond95.not.i.i.1 = icmp eq i64 %i.ut, %i.tc
  br i1 %exitcond95.not.i.i.1, label %._crit_edge77.us.i.i, label %scalar.ph214, !llvm.loop !202

.lr.ph73.us.i.i:                                  ; preds = %._crit_edge.us.i88.i, %.preheader70.us.i.i
  %.05374.us.i.i = phi i64 [ 1, %.preheader70.us.i.i ], [ %i.we, %._crit_edge.us.i88.i ] ; 2 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.05374.us.i.i
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !117
  %i.uw = add i64 %i.uv, %i.wb
  %i.ux = mul i64 %i.uw, %i.tc
  %i.uy = getelementptr [4 x i8], ptr %i.ew, i64 %i.ux ; 2 uses
  br i1 %min.iters.check228, label %scalar.ph227.preheader, label %vector.body232

vector.body232:                                   ; preds = %.lr.ph73.us.i.i, %vector.body232
  %index233 = phi i64 [ %index.next237, %vector.body232 ], [ 0, %.lr.ph73.us.i.i ] ; 4 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index233 ; 2 uses
  %i.va = getelementptr [4 x i8], ptr %i.uy, i64 %index233
  %wide.load234 = load <4 x float>, ptr %i.va, align 4, !tbaa !102 ; 4 uses
  %wide.load235 = load <4 x float>, ptr %i.uz, align 16, !tbaa !102 ; 2 uses
  %i.vb = fcmp olt <4 x float> %wide.load234, %wide.load235
  %i.vc = select <4 x i1> %i.vb, <4 x float> %wide.load234, <4 x float> %wide.load235
  store <4 x float> %i.vc, ptr %i.uz, align 16, !tbaa !102
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index233 ; 2 uses
  %wide.load236 = load <4 x float>, ptr %i.vd, align 16, !tbaa !102 ; 2 uses
  %i.ve = fcmp olt <4 x float> %wide.load236, %wide.load234
  %i.vf = select <4 x i1> %i.ve, <4 x float> %wide.load234, <4 x float> %wide.load236
  store <4 x float> %i.vf, ptr %i.vd, align 16, !tbaa !102
  %index.next237 = add nuw i64 %index233, 4       ; 2 uses
  %i.vg = icmp eq i64 %index.next237, %n.vec231
  br i1 %i.vg, label %middle.block238, label %vector.body232, !llvm.loop !203

middle.block238:                                  ; preds = %vector.body232
  br i1 %cmp.n239, label %._crit_edge.us.i88.i, label %scalar.ph227.preheader

scalar.ph227.preheader:                           ; preds = %.lr.ph73.us.i.i, %middle.block238
  %.05172.us.i.i.ph = phi i64 [ 0, %.lr.ph73.us.i.i ], [ %n.vec231, %middle.block238 ]
  br label %scalar.ph227

scalar.ph227:                                     ; preds = %scalar.ph227.preheader, %scalar.ph227
  %.05172.us.i.i = phi i64 [ %i.vr, %scalar.ph227 ], [ %.05172.us.i.i.ph, %scalar.ph227.preheader ] ; 4 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05172.us.i.i ; 2 uses
  %i.vi = getelementptr [4 x i8], ptr %i.uy, i64 %.05172.us.i.i
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !102 ; 4 uses
  %i.vk = load float, ptr %i.vh, align 4, !tbaa !102 ; 2 uses
  %i.vl = fcmp olt float %i.vj, %i.vk
  %i.vm = select i1 %i.vl, float %i.vj, float %i.vk
  store float %i.vm, ptr %i.vh, align 4, !tbaa !102
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05172.us.i.i ; 2 uses
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !102 ; 2 uses
  %i.vp = fcmp olt float %i.vo, %i.vj
  %i.vq = select i1 %i.vp, float %i.vj, float %i.vo
  store float %i.vq, ptr %i.vn, align 4, !tbaa !102
  %i.vr = add nuw i64 %.05172.us.i.i, 1           ; 2 uses
  %exitcond.not.i87.i = icmp eq i64 %i.vr, %i.tc
  br i1 %exitcond.not.i87.i, label %._crit_edge.us.i88.i, label %scalar.ph227, !llvm.loop !204

.preheader70.us.i.i:                              ; preds = %._crit_edge77.us.i.i, %.lr.ph80.split.us.preheader.i.i
  %.05278.us.i.i = phi i64 [ %i.tz, %._crit_edge77.us.i.i ], [ 0, %.lr.ph80.split.us.preheader.i.i ] ; 3 uses
  %i.vs = getelementptr inbounds nuw [32 x i8], ptr %.val63.i.i, i64 %.05278.us.i.i ; 3 uses
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !117
  %i.vu = mul i64 %i.vt, %i.tf
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !117
  %i.vx = mul i64 %i.vw, %i.td
  %i.vy = add i64 %i.vx, %i.vu
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !117
  %i.wb = add i64 %i.vy, %i.wa                    ; 2 uses
  %i.wc = mul i64 %i.wb, %i.tc
  %i.wd = getelementptr [4 x i8], ptr %i.ew, i64 %i.wc ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 4 %i.wd, i64 %i.tr, i1 false), !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 4 %i.wd, i64 %i.tr, i1 false), !tbaa !102
  br label %.lr.ph73.us.i.i

._crit_edge.us.i88.i:                             ; preds = %scalar.ph227, %middle.block238
  %i.we = add nuw nsw i64 %.05374.us.i.i, 1       ; 2 uses
  %exitcond94.not.i.i = icmp eq i64 %i.we, %.050.i.i
  br i1 %exitcond94.not.i.i, label %.lr.ph76.us.i.i, label %.lr.ph73.us.i.i, !llvm.loop !205

.lr.ph76.us.i.i:                                  ; preds = %._crit_edge.us.i88.i
  %i.wf = mul i64 %.05278.us.i.i, %i.tc           ; 4 uses
  br i1 %or.cond, label %scalar.ph214.preheader, label %vector.body219

vector.body219:                                   ; preds = %.lr.ph76.us.i.i, %vector.body219
  %index220 = phi i64 [ %index.next223, %vector.body219 ], [ 0, %.lr.ph76.us.i.i ] ; 4 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index220
  %wide.load221 = load <4 x float>, ptr %i.wg, align 16, !tbaa !102
  %i.wh = fadd <4 x float> %wide.load221, splat (float f0xB58637BD)
  %i.wi = add i64 %index220, %i.wf                ; 2 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.wi
  store <4 x float> %i.wh, ptr %i.wj, align 4, !tbaa !102
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index220
  %wide.load222 = load <4 x float>, ptr %i.wk, align 16, !tbaa !102
  %i.wl = fadd <4 x float> %wide.load222, splat (float f0x358637BD)
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.wi
  store <4 x float> %i.wl, ptr %i.wm, align 4, !tbaa !102
  %index.next223 = add nuw i64 %index220, 4       ; 2 uses
  %i.wn = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.wn, label %middle.block224, label %vector.body219, !llvm.loop !206

middle.block224:                                  ; preds = %vector.body219
  br i1 %cmp.n225, label %._crit_edge77.us.i.i, label %scalar.ph214.preheader

scalar.ph214.preheader:                           ; preds = %.lr.ph76.us.i.i, %middle.block224
  %.075.us.i.i.ph = phi i64 [ 0, %.lr.ph76.us.i.i ], [ %n.vec218, %middle.block224 ] ; 6 uses
  %.neg = or disjoint i64 %.075.us.i.i.ph, 1
  br i1 %lcmp.mod354.not, label %scalar.ph214.prol.loopexit, label %scalar.ph214.prol

scalar.ph214.prol:                                ; preds = %scalar.ph214.preheader
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.075.us.i.i.ph
  %i.wp = load float, ptr %i.wo, align 16, !tbaa !102
  %i.wq = fadd float %i.wp, f0xB58637BD
  %i.wr = add i64 %.075.us.i.i.ph, %i.wf          ; 2 uses
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.wr
  store float %i.wq, ptr %i.ws, align 4, !tbaa !102
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.075.us.i.i.ph
  %i.wu = load float, ptr %i.wt, align 16, !tbaa !102
  %i.wv = fadd float %i.wu, f0x358637BD
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.wr
  store float %i.wv, ptr %i.ww, align 4, !tbaa !102
  %i.wx = or disjoint i64 %.075.us.i.i.ph, 1
  br label %scalar.ph214.prol.loopexit

scalar.ph214.prol.loopexit:                       ; preds = %scalar.ph214.prol, %scalar.ph214.preheader
  %.075.us.i.i.unr = phi i64 [ %.075.us.i.i.ph, %scalar.ph214.preheader ], [ %i.wx, %scalar.ph214.prol ]
  %i.wy = icmp eq i64 %i.tc, %.neg
  br i1 %i.wy, label %._crit_edge77.us.i.i, label %scalar.ph214

bb.cq:                                            ; preds = %bb.cq, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new
  %.053166.i = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new ], [ %i.xs, %bb.cq ] ; 6 uses
  %niter352 = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new ], [ %niter352.next.3, %bb.cq ]
  %i.wz = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %.053166.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !184
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.053166.i
  store i64 %i.xb, ptr %i.xc, align 8, !tbaa !117
  %i.xd = or disjoint i64 %.053166.i, 1           ; 2 uses
  %i.xe = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !184
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.xd
  store i64 %i.xg, ptr %i.xh, align 8, !tbaa !117
  %i.xi = or disjoint i64 %.053166.i, 2           ; 2 uses
  %i.xj = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !184
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.xi
  store i64 %i.xl, ptr %i.xm, align 8, !tbaa !117
  %i.xn = or disjoint i64 %.053166.i, 3           ; 2 uses
  %i.xo = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !184
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.xn
  store i64 %i.xq, ptr %i.xr, align 8, !tbaa !117
  %i.xs = add nuw i64 %.053166.i, 4               ; 2 uses
  %niter352.next.3 = add i64 %niter352, 4         ; 2 uses
  %niter352.ncmp.3 = icmp eq i64 %niter352.next.3, %unroll_iter351
  br i1 %niter352.ncmp.3, label %._crit_edge168.i.loopexit.unr-lcssa, label %bb.cq, !llvm.loop !207

.loopexit138.i:                                   ; preds = %._crit_edge77.us.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE:bb.a
          to label %.noexc118.i unwind label %.loopexit137.i ; 4 uses

.noexc118.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.zr ; 3 uses
  store i64 0, ptr %i.adx, align 8, !tbaa !117
  %i.ady = add nsw i64 %i.adh, -1                 ; 2 uses
  %i.adz = icmp eq i64 %i.ady, 0
  br i1 %i.adz, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc118.i
  %i.aea = getelementptr i8, ptr %i.adx, i64 8
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.ady, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aea, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !117
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc118.i
  %i.aeb = icmp sgt i64 %i.zr, 0
  br i1 %i.aeb, label %bb.dh, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i

bb.dh:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adw, ptr align 8 %.sroa.0119.0173.i, i64 %i.zr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i: ; preds = %bb.dh, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i.i
  %.not.i35.i.i = icmp eq ptr %.sroa.0119.0173.i, null
  br i1 %.not.i35.i.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i
  %i.aec = sub i64 %i.adi, %i.zq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0173.i, i64 noundef %i.aec) #26
  %.val77.i.pre.pre.i = load ptr, ptr %i.fi, align 8, !tbaa !112
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i.i: ; preds = %bb.di, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i
  %.val77.i.pre.i = phi ptr [ %.val77.i.pre.pre.i, %bb.di ], [ %.val69.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i ]
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.adx, i64 %i.adh
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.adu
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit104.i

bb.dj:                                            ; preds = %._crit_edge172.i
  %i.aef = icmp ult i64 %i.acy, %i.zs
  br i1 %i.aef, label %bb.dk, label %_ZNSt6vectorImSaImEE6resizeEm.exit104.i

bb.dk:                                            ; preds = %bb.dj
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %i.acy ; 2 uses
  %.not.i.i101.i = icmp eq ptr %.sroa.15.0174.i, %i.aeg
  %spec.select.i = select i1 %.not.i.i101.i, ptr %.sroa.15.0174.i, ptr %i.aeg
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit104.i

bb.dl:                                            ; preds = %bb.cw, %bb.ct
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i, %.lr.ph171.i.preheader.new
  %.050169.i = phi i64 [ 0, %.lr.ph171.i.preheader.new ], [ %i.aff, %.lr.ph171.i ] ; 6 uses
  %niter368 = phi i64 [ 0, %.lr.ph171.i.preheader.new ], [ %niter368.next.3, %.lr.ph171.i ]
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %.050169.i
  %i.aej = load i64, ptr %i.aei, align 8, !tbaa !117
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %i.aej
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !117
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %.050169.i
  store i64 %i.ael, ptr %i.aem, align 8, !tbaa !117
  %i.aen = or disjoint i64 %.050169.i, 1          ; 2 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.aen
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !117
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %i.aep
  %i.aer = load i64, ptr %i.aeq, align 8, !tbaa !117
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %i.aen
  store i64 %i.aer, ptr %i.aes, align 8, !tbaa !117
  %i.aet = or disjoint i64 %.050169.i, 2          ; 2 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.aet
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !117
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %i.aev
  %i.aex = load i64, ptr %i.aew, align 8, !tbaa !117
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %i.aet
  store i64 %i.aex, ptr %i.aey, align 8, !tbaa !117
  %i.aez = or disjoint i64 %.050169.i, 3          ; 2 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.aez
  %i.afb = load i64, ptr %i.afa, align 8, !tbaa !117
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %i.afb
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !117
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0173.i, i64 %i.aez
  store i64 %i.afd, ptr %i.afe, align 8, !tbaa !117
  %i.aff = add nuw i64 %.050169.i, 4              ; 2 uses
  %niter368.next.3 = add i64 %niter368, 4         ; 2 uses
  %niter368.ncmp.3 = icmp eq i64 %niter368.next.3, %unroll_iter367
  br i1 %niter368.ncmp.3, label %._crit_edge172.i.loopexit.unr-lcssa, label %.lr.ph171.i, !llvm.loop !218

_ZNSt6vectorImSaImEE6resizeEm.exit104.i:          ; preds = %bb.dk, %bb.dj, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %bb.de
  %.val77.i.i = phi ptr [ %.val69.i, %bb.dj ], [ %.val69.i, %bb.dk ], [ %.val69.i, %bb.de ], [ %.val69.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %.val77.i.pre.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i.i ] ; 4 uses
  %.sroa.0119.4.i = phi ptr [ %.sroa.0119.0173.i, %bb.dj ], [ %.sroa.0119.0173.i, %bb.dk ], [ %.sroa.0119.0173.i, %bb.de ], [ %.sroa.0119.0173.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.adw, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i.i ] ; 4 uses
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0174.i, %bb.dj ], [ %spec.select.i, %bb.dk ], [ %i.ado, %bb.de ], [ %i.adr, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aed, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i.i ]
  %.sroa.22.4.i = phi ptr [ %.sroa.22.0175.i, %bb.dj ], [ %.sroa.22.0175.i, %bb.dk ], [ %.sroa.22.0175.i, %bb.de ], [ %.sroa.22.0175.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aee, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i.i ] ; 4 uses
  %i.afg = load i64, ptr %i.ex, align 8, !tbaa !118 ; 2 uses
  %i.afh = trunc i64 %i.afg to i32                ; 2 uses
  %i.afi = shl nuw i32 1, %i.afh
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds nuw [112 x i8], ptr %.val77.i.i, i64 %indvars.iv.i ; 3 uses
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !170 ; 5 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afk, i64 16 ; 2 uses
  %i.afn = mul i64 %i.afl, %i.afg                 ; 7 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afk, i64 24 ; 2 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !200 ; 2 uses
  %i.afq = load ptr, ptr %i.afm, align 8, !tbaa !87 ; 2 uses
  %i.afr = ptrtoint ptr %i.afp to i64
  %i.afs = ptrtoint ptr %i.afq to i64
  %i.aft = sub i64 %i.afr, %i.afs
  %i.afu = ashr exact i64 %i.aft, 2               ; 3 uses
  %i.afv = icmp ugt i64 %i.afn, %i.afu
  br i1 %i.afv, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit104.i
  %i.afw = sub nuw i64 %i.afn, %i.afu
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.afm, i64 noundef %i.afw)
          to label %.noexc112.i unwind label %.loopexit137.i

.noexc112.i:                                      ; preds = %bb.dm
  %.val75.pre.i.i = load ptr, ptr %i.fi, align 8, !tbaa !112
  %.pre.i111.i = load i64, ptr %i.ex, align 8, !tbaa !118
  %.pre114.i.i = mul i64 %.pre.i111.i, %i.afl
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i105.i

bb.dn:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit104.i
  %i.afx = icmp ult i64 %i.afn, %i.afu
  br i1 %i.afx, label %bb.do, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i105.i

bb.do:                                            ; preds = %bb.dn
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %i.afn ; 2 uses
  %.not.i.i.i109.i = icmp eq ptr %i.afp, %i.afy
  br i1 %.not.i.i.i109.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i105.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i110.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i110.i: ; preds = %bb.do
  store ptr %i.afy, ptr %i.afo, align 8, !tbaa !200
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i105.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i105.i:        ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i110.i, %bb.do, %bb.dn, %.noexc112.i
  %.pre-phi.i106.i = phi i64 [ %.pre114.i.i, %.noexc112.i ], [ %i.afn, %bb.dn ], [ %i.afn, %bb.do ], [ %i.afn, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i110.i ] ; 4 uses
  %.val75.i.i = phi ptr [ %.val75.pre.i.i, %.noexc112.i ], [ %.val77.i.i, %bb.dn ], [ %.val77.i.i, %bb.do ], [ %.val77.i.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i110.i ]
  %i.afz = getelementptr inbounds nuw [112 x i8], ptr %.val75.i.i, i64 %indvars.iv.i ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 40 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 48 ; 2 uses
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !200 ; 2 uses
  %i.agd = load ptr, ptr %i.aga, align 8, !tbaa !87 ; 2 uses
  %i.age = ptrtoint ptr %i.agc to i64
  %i.agf = ptrtoint ptr %i.agd to i64
  %i.agg = sub i64 %i.age, %i.agf
  %i.agh = ashr exact i64 %i.agg, 2               ; 3 uses
  %i.agi = icmp ugt i64 %.pre-phi.i106.i, %i.agh
  br i1 %i.agi, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i105.i
  %i.agj = sub nuw i64 %.pre-phi.i106.i, %i.agh
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aga, i64 noundef %i.agj)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit80.i.i unwind label %.loopexit137.i

bb.dq:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i105.i
  %i.agk = icmp ult i64 %.pre-phi.i106.i, %i.agh
  br i1 %i.agk, label %bb.dr, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit80.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.agd, i64 %.pre-phi.i106.i ; 2 uses
  %.not.i.i78.i.i = icmp eq ptr %i.agc, %i.agl
  br i1 %.not.i.i78.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit80.i.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i79.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i79.i.i:  ; preds = %bb.dr
  store ptr %i.agl, ptr %i.agb, align 8, !tbaa !200
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit80.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit80.i.i:         ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i79.i.i, %bb.dr, %bb.dq, %bb.dp
  %.not100.i.i = icmp eq i64 %i.afl, 0
  br i1 %.not100.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i, label %.lr.ph88.i.i

.lr.ph88.i.i:                                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit80.i.i
  %.val74.i.i = load ptr, ptr %i.fi, align 8, !tbaa !112
  %i.agm = getelementptr inbounds nuw [112 x i8], ptr %.val74.i.i, i64 %indvars.iv.i ; 6 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 64
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !110 ; 2 uses
  %i.agp = load i64, ptr %i.ex, align 8, !tbaa !118
  %.fr102.i.i = freeze i64 %i.agp                 ; 25 uses
  %.not101.i.i = icmp eq i64 %.fr102.i.i, 0       ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 128 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agm, i64 16 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agm, i64 152 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agm, i64 40 ; 2 uses
  %.not84.i.i = icmp eq i32 %i.afh, 0
  br i1 %.not84.i.i, label %.lr.ph88.split.us.i.i, label %.lr.ph88.split.i.i

.lr.ph88.split.us.i.i:                            ; preds = %.lr.ph88.i.i
  br i1 %.not101.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i, label %.lr.ph88.split.us.split.i.i

.lr.ph88.split.us.split.i.i:                      ; preds = %.lr.ph88.split.us.i.i
  %i.agu = load ptr, ptr %i.agq, align 8, !tbaa !87 ; 5 uses
  %i.agv = ptrtoaddr ptr %i.agu to i64            ; 2 uses
  %i.agw = load ptr, ptr %i.agr, align 8, !tbaa !87 ; 5 uses
  %i.agx = ptrtoaddr ptr %i.agw to i64            ; 3 uses
  %i.agy = load ptr, ptr %i.ags, align 8, !tbaa !87 ; 5 uses
  %i.agz = ptrtoaddr ptr %i.agy to i64            ; 2 uses
  %i.aha = load ptr, ptr %i.agt, align 8, !tbaa !87 ; 5 uses
  %i.ahb = ptrtoaddr ptr %i.aha to i64            ; 3 uses
  %i.ahc = shl i64 %.fr102.i.i, 2
  %i.ahd = shl i64 %.fr102.i.i, 2
  %i.ahe = sub i64 %i.agz, %i.agx
  %i.ahf = mul i64 %.fr102.i.i, -4
  %min.iters.check251 = icmp ult i64 %.fr102.i.i, 16
  %6 = sub i64 %i.agx, %i.ahb
  %diff.check242 = icmp ugt i64 %6, -32
  %n.vec254 = and i64 %.fr102.i.i, -8             ; 3 uses
  %cmp.n263 = icmp eq i64 %.fr102.i.i, %n.vec254
  %xtraiter372 = and i64 %.fr102.i.i, 1
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br label %.lr.ph.us.i108.i

.lr.ph.us.i108.i:                                 ; preds = %..preheader_crit_edge.us.i.i, %.lr.ph88.split.us.split.i.i
  %.087.us.i.i = phi i64 [ 0, %.lr.ph88.split.us.split.i.i ], [ %i.ajl, %..preheader_crit_edge.us.i.i ] ; 5 uses
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.ago, i64 %.087.us.i.i
  %i.ahh = load i64, ptr %i.ahg, align 8, !tbaa !117 ; 2 uses
  %i.ahi = mul i64 %i.ahh, %.fr102.i.i            ; 4 uses
  %i.ahj = mul i64 %.087.us.i.i, %.fr102.i.i      ; 4 uses
  br i1 %min.iters.check251, label %scalar.ph250.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.us.i108.i
  %i.ahk = mul i64 %i.ahc, %.087.us.i.i           ; 3 uses
  %i.ahl = mul i64 %i.ahf, %.087.us.i.i
  %i.ahm = add i64 %i.ahe, %i.ahl
  %i.ahn = mul i64 %i.ahd, %i.ahh                 ; 4 uses
  %i.aho = add i64 %i.ahk, %i.agx
  %i.ahp = add i64 %i.ahn, %i.agv
  %i.ahq = sub i64 %i.ahp, %i.aho
  %diff.check243 = icmp ugt i64 %i.ahq, -32
  %conflict.rdx = or i1 %diff.check242, %diff.check243
  %7 = add i64 %i.ahm, %i.ahn
  %i.ahr = add i64 %7, -1
  %diff.check244 = icmp ult i64 %i.ahr, 31
  %conflict.rdx245 = or i1 %conflict.rdx, %diff.check244
  %i.ahs = add i64 %i.ahk, %i.ahb
  %i.aht = add i64 %i.ahn, %i.agv
  %i.ahu = sub i64 %i.aht, %i.ahs
  %diff.check246 = icmp ugt i64 %i.ahu, -32
  %conflict.rdx247 = or i1 %conflict.rdx245, %diff.check246
  %i.ahv = add i64 %i.ahk, %i.ahb
  %i.ahw = add i64 %i.ahn, %i.agz
  %i.ahx = sub i64 %i.ahw, %i.ahv
  %diff.check248 = icmp ugt i64 %i.ahx, -32
  %conflict.rdx249 = or i1 %conflict.rdx247, %diff.check248
  br i1 %conflict.rdx249, label %scalar.ph250.preheader, label %vector.body255

vector.body255:                                   ; preds = %vector.memcheck241, %vector.body255
  %index256 = phi i64 [ %index.next261, %vector.body255 ], [ 0, %vector.memcheck241 ] ; 3 uses
  %i.ahy = add i64 %index256, %i.ahi              ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.ahy ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %wide.load257 = load <4 x float>, ptr %i.ahz, align 4, !tbaa !102
  %wide.load258 = load <4 x float>, ptr %i.aia, align 4, !tbaa !102
  %i.aib = add i64 %index256, %i.ahj              ; 2 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aib ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  store <4 x float> %wide.load257, ptr %i.aic, align 4, !tbaa !102
  store <4 x float> %wide.load258, ptr %i.aid, align 4, !tbaa !102
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ahy ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %wide.load259 = load <4 x float>, ptr %i.aie, align 4, !tbaa !102
  %wide.load260 = load <4 x float>, ptr %i.aif, align 4, !tbaa !102
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.aib ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  store <4 x float> %wide.load259, ptr %i.aig, align 4, !tbaa !102
  store <4 x float> %wide.load260, ptr %i.aih, align 4, !tbaa !102
  %index.next261 = add nuw i64 %index256, 8       ; 2 uses
  %i.aii = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.aii, label %middle.block262, label %vector.body255, !llvm.loop !219

middle.block262:                                  ; preds = %vector.body255
  br i1 %cmp.n263, label %..preheader_crit_edge.us.i.i, label %scalar.ph250.preheader

scalar.ph250.preheader:                           ; preds = %vector.memcheck241, %.lr.ph.us.i108.i, %middle.block262
  %.05881.us.i.i.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %.lr.ph.us.i108.i ], [ %n.vec254, %middle.block262 ] ; 5 uses
  %.neg376 = or disjoint i64 %.05881.us.i.i.ph, 1
  br i1 %lcmp.mod373.not, label %scalar.ph250.prol.loopexit, label %scalar.ph250.prol

scalar.ph250.prol:                                ; preds = %scalar.ph250.preheader
  %i.aij = add i64 %.05881.us.i.i.ph, %i.ahi      ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.aij
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !102
  %i.aim = add i64 %.05881.us.i.i.ph, %i.ahj      ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aim
  store float %i.ail, ptr %i.ain, align 4, !tbaa !102
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.aij
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !102
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.aim
  store float %i.aip, ptr %i.aiq, align 4, !tbaa !102
  %i.air = or disjoint i64 %.05881.us.i.i.ph, 1
  br label %scalar.ph250.prol.loopexit

scalar.ph250.prol.loopexit:                       ; preds = %scalar.ph250.prol, %scalar.ph250.preheader
  %.05881.us.i.i.unr = phi i64 [ %.05881.us.i.i.ph, %scalar.ph250.preheader ], [ %i.air, %scalar.ph250.prol ]
  %i.ais = icmp eq i64 %.fr102.i.i, %.neg376
  br i1 %i.ais, label %..preheader_crit_edge.us.i.i, label %scalar.ph250

scalar.ph250:                                     ; preds = %scalar.ph250.prol.loopexit, %scalar.ph250
  %.05881.us.i.i = phi i64 [ %i.ajk, %scalar.ph250 ], [ %.05881.us.i.i.unr, %scalar.ph250.prol.loopexit ] ; 4 uses
  %i.ait = add i64 %.05881.us.i.i, %i.ahi         ; 2 uses
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.ait
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !102
  %i.aiw = add i64 %.05881.us.i.i, %i.ahj         ; 2 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aiw
  store float %i.aiv, ptr %i.aix, align 4, !tbaa !102
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ait
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !102
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.aiw
  store float %i.aiz, ptr %i.aja, align 4, !tbaa !102
  %i.ajb = add nuw i64 %.05881.us.i.i, 1          ; 2 uses
  %i.ajc = add i64 %i.ajb, %i.ahi                 ; 2 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.ajc
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !102
  %i.ajf = add i64 %i.ajb, %i.ahj                 ; 2 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ajf
  store float %i.aje, ptr %i.ajg, align 4, !tbaa !102
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ajc
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !102
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.ajf
  store float %i.aji, ptr %i.ajj, align 4, !tbaa !102
  %i.ajk = add nuw i64 %.05881.us.i.i, 2          ; 2 uses
  %exitcond111.not.i.i.1 = icmp eq i64 %i.ajk, %.fr102.i.i
  br i1 %exitcond111.not.i.i.1, label %..preheader_crit_edge.us.i.i, label %scalar.ph250, !llvm.loop !220

..preheader_crit_edge.us.i.i:                     ; preds = %scalar.ph250.prol.loopexit, %scalar.ph250, %middle.block262
  %i.ajl = add nuw i64 %.087.us.i.i, 1            ; 2 uses
  %exitcond112.not.i.i = icmp eq i64 %i.ajl, %i.afl
  br i1 %exitcond112.not.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i, label %.lr.ph.us.i108.i, !llvm.loop !221

.lr.ph88.split.i.i:                               ; preds = %.lr.ph88.i.i
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.agm, i64 88
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !110
  br i1 %.not101.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i, label %.lr.ph88.split.split.us.preheader.i.i

.lr.ph88.split.split.us.preheader.i.i:            ; preds = %.lr.ph88.split.i.i
  %i.ajo = add nsw i64 %i.afj, 1
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.ajo, i64 3)
  %i.ajp = load ptr, ptr %i.agq, align 8, !tbaa !87 ; 6 uses
  %i.ajq = ptrtoaddr ptr %i.ajp to i64            ; 2 uses
  %i.ajr = load ptr, ptr %i.agr, align 8, !tbaa !87 ; 6 uses
  %i.ajs = ptrtoaddr ptr %i.ajr to i64            ; 3 uses
  %i.ajt = load ptr, ptr %i.ags, align 8, !tbaa !87 ; 6 uses
  %i.aju = ptrtoaddr ptr %i.ajt to i64            ; 2 uses
  %i.ajv = load ptr, ptr %i.agt, align 8, !tbaa !87 ; 6 uses
  %i.ajw = ptrtoaddr ptr %i.ajv to i64            ; 3 uses
  %i.ajx = shl i64 %.fr102.i.i, 2
  %i.ajy = shl i64 %.fr102.i.i, 2
  %i.ajz = sub i64 %i.aju, %i.ajs
  %i.aka = mul i64 %.fr102.i.i, -4
  %min.iters.check276 = icmp ult i64 %.fr102.i.i, 16
  %8 = sub i64 %i.ajs, %i.ajw
  %diff.check266 = icmp ugt i64 %8, -32
  %n.vec279 = and i64 %.fr102.i.i, -8             ; 3 uses
  %cmp.n288 = icmp eq i64 %.fr102.i.i, %n.vec279
  %xtraiter369 = and i64 %.fr102.i.i, 1
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br label %.lr.ph.us93.i.i

scalar.ph275:                                     ; preds = %scalar.ph275.prol.loopexit, %scalar.ph275
  %.05881.us91.i.i = phi i64 [ %i.aks, %scalar.ph275 ], [ %.05881.us91.i.i.unr, %scalar.ph275.prol.loopexit ] ; 4 uses
  %i.akb = add i64 %.05881.us91.i.i, %i.aky       ; 2 uses
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %i.akb
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !102
  %i.ake = add i64 %.05881.us91.i.i, %i.akz       ; 2 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.ake
  store float %i.akd, ptr %i.akf, align 4, !tbaa !102
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.akb
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !102
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.ake
  store float %i.akh, ptr %i.aki, align 4, !tbaa !102
  %i.akj = add nuw i64 %.05881.us91.i.i, 1        ; 2 uses
  %i.akk = add i64 %i.akj, %i.aky                 ; 2 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %i.akk
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !102
  %i.akn = add i64 %i.akj, %i.akz                 ; 2 uses
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.akn
  store float %i.akm, ptr %i.ako, align 4, !tbaa !102
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.akk
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !102
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.akn
  store float %i.akq, ptr %i.akr, align 4, !tbaa !102
  %i.aks = add nuw i64 %.05881.us91.i.i, 2        ; 2 uses
  %exitcond.not.i107.i.1 = icmp eq i64 %i.aks, %.fr102.i.i
  br i1 %exitcond.not.i107.i.1, label %.preheader.us92.i.i, label %scalar.ph275, !llvm.loop !222

.preheader.us92.i.i:                              ; preds = %scalar.ph275.prol.loopexit, %scalar.ph275, %middle.block287
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %.087.us90.i.i
  %i.aku = load i64, ptr %i.akt, align 8, !tbaa !117
  %i.akv = add i64 %i.akx, -1
  br label %bb.ds

.lr.ph.us93.i.i:                                  ; preds = %._crit_edge.split.us.us.i.i, %.lr.ph88.split.split.us.preheader.i.i
  %.087.us90.i.i = phi i64 [ %i.amz, %._crit_edge.split.us.us.i.i ], [ 0, %.lr.ph88.split.split.us.preheader.i.i ] ; 6 uses
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.ago, i64 %.087.us90.i.i
  %i.akx = load i64, ptr %i.akw, align 8, !tbaa !117 ; 3 uses
  %i.aky = mul i64 %i.akx, %.fr102.i.i            ; 4 uses
  %i.akz = mul i64 %.087.us90.i.i, %.fr102.i.i    ; 5 uses
  br i1 %min.iters.check276, label %scalar.ph275.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %.lr.ph.us93.i.i
  %i.ala = mul i64 %i.ajx, %.087.us90.i.i         ; 3 uses
  %i.alb = mul i64 %i.aka, %.087.us90.i.i
  %i.alc = add i64 %i.ajz, %i.alb
  %i.ald = mul i64 %i.ajy, %i.akx                 ; 4 uses
  %i.ale = add i64 %i.ala, %i.ajs
  %i.alf = add i64 %i.ald, %i.ajq
  %i.alg = sub i64 %i.alf, %i.ale
  %diff.check267 = icmp ugt i64 %i.alg, -32
  %conflict.rdx268 = or i1 %diff.check266, %diff.check267
  %9 = add i64 %i.alc, %i.ald
  %i.alh = add i64 %9, -1
  %diff.check269 = icmp ult i64 %i.alh, 31
  %conflict.rdx270 = or i1 %conflict.rdx268, %diff.check269
  %i.ali = add i64 %i.ala, %i.ajw
  %i.alj = add i64 %i.ald, %i.ajq
  %i.alk = sub i64 %i.alj, %i.ali
  %diff.check271 = icmp ugt i64 %i.alk, -32
  %conflict.rdx272 = or i1 %conflict.rdx270, %diff.check271
  %i.all = add i64 %i.ala, %i.ajw
  %i.alm = add i64 %i.ald, %i.aju
  %i.aln = sub i64 %i.alm, %i.all
  %diff.check273 = icmp ugt i64 %i.aln, -32
  %conflict.rdx274 = or i1 %conflict.rdx272, %diff.check273
  br i1 %conflict.rdx274, label %scalar.ph275.preheader, label %vector.body280

vector.body280:                                   ; preds = %vector.memcheck265, %vector.body280
  %index281 = phi i64 [ %index.next286, %vector.body280 ], [ 0, %vector.memcheck265 ] ; 3 uses
  %i.alo = add i64 %index281, %i.aky              ; 2 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %i.alo ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 16
  %wide.load282 = load <4 x float>, ptr %i.alp, align 4, !tbaa !102
  %wide.load283 = load <4 x float>, ptr %i.alq, align 4, !tbaa !102
  %i.alr = add i64 %index281, %i.akz              ; 2 uses
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.alr ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 16
  store <4 x float> %wide.load282, ptr %i.als, align 4, !tbaa !102
  store <4 x float> %wide.load283, ptr %i.alt, align 4, !tbaa !102
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.alo ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 16
  %wide.load284 = load <4 x float>, ptr %i.alu, align 4, !tbaa !102
  %wide.load285 = load <4 x float>, ptr %i.alv, align 4, !tbaa !102
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.alr ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  store <4 x float> %wide.load284, ptr %i.alw, align 4, !tbaa !102
  store <4 x float> %wide.load285, ptr %i.alx, align 4, !tbaa !102
  %index.next286 = add nuw i64 %index281, 8       ; 2 uses
  %i.aly = icmp eq i64 %index.next286, %n.vec279
  br i1 %i.aly, label %middle.block287, label %vector.body280, !llvm.loop !223

middle.block287:                                  ; preds = %vector.body280
  br i1 %cmp.n288, label %.preheader.us92.i.i, label %scalar.ph275.preheader

scalar.ph275.preheader:                           ; preds = %vector.memcheck265, %.lr.ph.us93.i.i, %middle.block287
  %.05881.us91.i.i.ph = phi i64 [ 0, %vector.memcheck265 ], [ 0, %.lr.ph.us93.i.i ], [ %n.vec279, %middle.block287 ] ; 5 uses
  %.neg375 = or disjoint i64 %.05881.us91.i.i.ph, 1
  br i1 %lcmp.mod370.not, label %scalar.ph275.prol.loopexit, label %scalar.ph275.prol

scalar.ph275.prol:                                ; preds = %scalar.ph275.preheader
  %i.alz = add i64 %.05881.us91.i.i.ph, %i.aky    ; 2 uses
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %i.alz
  %i.amb = load float, ptr %i.ama, align 4, !tbaa !102
  %i.amc = add i64 %.05881.us91.i.i.ph, %i.akz    ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.amc
  store float %i.amb, ptr %i.amd, align 4, !tbaa !102
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.alz
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !102
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.amc
  store float %i.amf, ptr %i.amg, align 4, !tbaa !102
  %i.amh = or disjoint i64 %.05881.us91.i.i.ph, 1
  br label %scalar.ph275.prol.loopexit

scalar.ph275.prol.loopexit:                       ; preds = %scalar.ph275.prol, %scalar.ph275.preheader
  %.05881.us91.i.i.unr = phi i64 [ %.05881.us91.i.i.ph, %scalar.ph275.preheader ], [ %i.amh, %scalar.ph275.prol ]
  %i.ami = icmp eq i64 %.fr102.i.i, %.neg375
  br i1 %i.ami, label %.preheader.us92.i.i, label %scalar.ph275

bb.ds:                                            ; preds = %..loopexit_crit_edge.us.us.i.i, %.preheader.us92.i.i
  %.05985.us.us.i.i = phi i64 [ 2, %.preheader.us92.i.i ], [ %i.amy, %..loopexit_crit_edge.us.us.i.i ] ; 3 uses
  %.not63.us.us.i.i = icmp ult i64 %i.aku, %.05985.us.us.i.i
  br i1 %.not63.us.us.i.i, label %..loopexit_crit_edge.us.us.i.i, label %.lr.ph83.us.us.i.i

.lr.ph83.us.us.i.i:                               ; preds = %bb.ds
  %i.amj = add i64 %i.akv, %.05985.us.us.i.i
  %i.amk = mul i64 %i.amj, %.fr102.i.i
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dx, %.lr.ph83.us.us.i.i
  %.06082.us.us.i.i = phi i64 [ 0, %.lr.ph83.us.us.i.i ], [ %i.amx, %bb.dx ] ; 3 uses
  %i.aml = add i64 %.06082.us.us.i.i, %i.akz      ; 2 uses
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.aml ; 2 uses
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !102
  %i.amo = add i64 %.06082.us.us.i.i, %i.amk      ; 2 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %i.amo
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !102 ; 2 uses
  %i.amr = fcmp olt float %i.amq, %i.amn
  br i1 %i.amr, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store float %i.amq, ptr %i.amm, align 4, !tbaa !102
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.aml ; 2 uses
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !102
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.amo
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !102 ; 2 uses
  %i.amw = fcmp ogt float %i.amv, %i.amt
  br i1 %i.amw, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store float %i.amv, ptr %i.ams, align 4, !tbaa !102
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.amx = add nuw i64 %.06082.us.us.i.i, 1       ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %i.amx, %.fr102.i.i
  br i1 %exitcond107.not.i.i, label %..loopexit_crit_edge.us.us.i.i, label %bb.dt, !llvm.loop !224

..loopexit_crit_edge.us.us.i.i:                   ; preds = %bb.dx, %bb.ds
  %i.amy = add nuw i64 %.05985.us.us.i.i, 1       ; 2 uses
  %exitcond108.i.i = icmp eq i64 %i.amy, %umax.i.i
  br i1 %exitcond108.i.i, label %._crit_edge.split.us.us.i.i, label %bb.ds, !llvm.loop !225

._crit_edge.split.us.us.i.i:                      ; preds = %..loopexit_crit_edge.us.us.i.i
  %i.amz = add nuw i64 %.087.us90.i.i, 1          ; 2 uses
  %exitcond109.not.i.i = icmp eq i64 %i.amz, %i.afl
  br i1 %exitcond109.not.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i, label %.lr.ph.us93.i.i, !llvm.loop !221

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i: ; preds = %._crit_edge.split.us.us.i.i, %..preheader_crit_edge.us.i.i, %.lr.ph88.split.i.i, %.lr.ph88.split.us.i.i, %_ZNSt6vectorIfSaIfEE6resizeEm.exit80.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ana = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ana, label %.lr.ph178.i, label %._crit_edge179.i, !llvm.loop !226

.loopexit137.i:                                   ; preds = %bb.dp, %bb.dm, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0119.1.ph.i = phi ptr [ %.sroa.0119.0173.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0119.4.i, %bb.dm ], [ %.sroa.0119.4.i, %bb.dp ]
  %.sroa.22.1.ph.i = phi ptr [ %.sroa.22.0175.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.22.4.i, %bb.dm ], [ %.sroa.22.4.i, %bb.dp ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.dg
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit137.i, %bb.dl, %bb.cs, %bb.co
  %.sroa.0119.2.i = phi ptr [ %.sroa.0119.0173.i, %bb.dl ], [ %.sroa.0119.3300.i, %bb.cs ], [ %.sroa.0119.3300.i, %bb.co ], [ %.sroa.0119.1.ph.i, %.loopexit137.i ], [ %.sroa.0119.0173.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.22.2.i = phi ptr [ %.sroa.22.0175.i, %bb.dl ], [ %.sroa.22.3301.i, %bb.cs ], [ %.sroa.22.3301.i, %bb.co ], [ %.sroa.22.1.ph.i, %.loopexit137.i ], [ %.sroa.22.0175.i, %.loopexit.split-lp.i ]
  %.pn.pn.i = phi { ptr, i32 } [ %i.aeh, %bb.dl ], [ %i.yb, %bb.cs ], [ %i.tp, %bb.co ], [ %lpad.loopexit.i, %.loopexit137.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i114.i = icmp eq ptr %.sroa.0119.2.i, null
  br i1 %.not.i.i.i114.i, label %common.resume, label %bb.dy

bb.dy:                                            ; preds = %.body.i
  %i.anb = ptrtoint ptr %.sroa.22.2.i to i64
  %i.anc = ptrtoint ptr %.sroa.0119.2.i to i64
  %i.and = sub i64 %i.anb, %i.anc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.2.i, i64 noundef %i.and) #26
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10initializeEPfm.exit: ; preds = %._crit_edge179.i, %bb.cr
  %i.ane = load i64, ptr %i.ev, align 8, !tbaa !86
  %i.anf = add nsw i64 %i.ane, -3
  %i.ang = sitofp i64 %i.anf to float
  %i.anh = fdiv float 1.000000e+00, %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.anh, ptr %i.ani, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD0Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC1Em(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.c = load ptr, ptr %1, align 8, !tbaa !87     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = load ptr, ptr %0, align 8, !tbaa !87     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, !prof !227

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
end_hunk_1
