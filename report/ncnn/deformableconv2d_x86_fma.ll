Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_fma?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ncnn24DeformableConv2D_x86_fma15create_pipelineERKNS_6OptionE:bb.a

_ZN4ncnn3MatD2Ev.exit72:                          ; preds = %bb.dp, %bb.do, %bb.dr, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  br label %bb.ee

bb.dv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit73, %_ZN4ncnn3MatD2Ev.exit76.1
  %i.mj = load ptr, ptr %i.cg, align 8, !tbaa !50 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !11
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = invoke noundef i32 %i.mm(ptr noundef nonnull align 8 dereferenceable(208) %i.mj, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.dw unwind label %bb.ed     ; 0 uses

bb.dw:                                            ; preds = %bb.dv
  %i.mo = load ptr, ptr %i.cr, align 8, !tbaa !17 ; 2 uses
  %.not.i103 = icmp eq ptr %i.mo, null
  br i1 %.not.i103, label %_ZN4ncnn3MatD2Ev.exit71, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mp = atomicrmw add ptr %i.mo, i32 -1 acq_rel, align 4
  %i.mq = icmp eq i32 %i.mp, 1
  br i1 %i.mq, label %bb.dy, label %_ZN4ncnn3MatD2Ev.exit71

bb.dy:                                            ; preds = %bb.dx
  %i.mr = load ptr, ptr %i.cu, align 16, !tbaa !18 ; 3 uses
  %.not3.i104 = icmp eq ptr %i.mr, null
  %i.ms = load ptr, ptr %10, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i104, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !11
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef %i.ms)
          to label %_ZN4ncnn3MatD2Ev.exit71 unwind label %bb.ec, !inline_history !0

bb.ea:                                            ; preds = %bb.dy
  %.not.i117 = icmp eq ptr %i.ms, null
  br i1 %.not.i117, label %_ZN4ncnn3MatD2Ev.exit71, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef nonnull %i.ms) #9
  br label %_ZN4ncnn3MatD2Ev.exit71

bb.ec:                                            ; preds = %bb.dz
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit71:                          ; preds = %bb.dx, %bb.dw, %bb.dz, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.fi

bb.ed:                                            ; preds = %bb.dv
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_ZN4ncnn3MatD2Ev.exit72, %_ZN4ncnn3MatD2Ev.exit74.1, %_ZN4ncnn3MatD2Ev.exit75
  %.pn66.pn.pn = phi { ptr, i32 } [ %.pn66.pn, %_ZN4ncnn3MatD2Ev.exit75 ], [ %i.my, %bb.ed ], [ %.pn63.pn, %_ZN4ncnn3MatD2Ev.exit74.1 ], [ %.pn.pn, %_ZN4ncnn3MatD2Ev.exit72 ]
  %i.mz = load ptr, ptr %i.cr, align 8, !tbaa !17 ; 2 uses
  %.not.i107 = icmp eq ptr %i.mz, null
  br i1 %.not.i107, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.na = atomicrmw add ptr %i.mz, i32 -1 acq_rel, align 4
  %i.nb = icmp eq i32 %i.na, 1
  br i1 %i.nb, label %bb.eg, label %_ZN4ncnn3MatD2Ev.exit

bb.eg:                                            ; preds = %bb.ef
  %i.nc = load ptr, ptr %i.cu, align 16, !tbaa !18 ; 3 uses
  %.not3.i108 = icmp eq ptr %i.nc, null
  %i.nd = load ptr, ptr %10, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i108, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ne = load ptr, ptr %i.nc, align 8, !tbaa !11
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, ptr noundef %i.nd)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ek, !inline_history !0

bb.ei:                                            ; preds = %bb.eg
  %.not.i115 = icmp eq ptr %i.nd, null
  br i1 %.not.i115, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @free(ptr noundef nonnull %i.nd) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ek:                                            ; preds = %bb.eh
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ef, %bb.ee, %bb.eh, %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.el

bb.el:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.au
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn, %_ZN4ncnn3MatD2Ev.exit ], [ %i.ef, %bb.au ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %common.resume

bb.em:                                            ; preds = %bb.aa
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 5 uses
  %.val = load ptr, ptr %i.nj, align 8, !tbaa !19 ; 4 uses
  %i.nl = mul i32 %.fr275, %i.bi
  %i.nm = mul i32 %i.nl, %i.bn
  %i.nn = extractelement <2 x i32> %i.ca, i64 0   ; 6 uses
  %i.no = mul nuw nsw i32 %i.nn, %i.cb            ; 2 uses
  %i.np = sdiv i32 %i.nm, %i.no
  %i.nq = shl nuw nsw i32 %i.cb, 2
  %narrow.i = mul nuw nsw i32 %i.nq, %i.nn
  %i.nr = zext nneg i32 %narrow.i to i64
  call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nk, i32 noundef %i.np, i64 noundef %i.nr, i32 noundef %i.no, ptr noundef null)
  %i.ns = load ptr, ptr %i.nk, align 8, !tbaa !19 ; 4 uses
  %i.nt = icmp sgt i32 %i.bn, 0
  %i.nu = icmp sgt i32 %i.bh, 0
  %or.cond.i = and i1 %i.nu, %i.nt
  br i1 %or.cond.i, label %.preheader2.lr.ph.split.us.i, label %._crit_edge13.i

.preheader2.lr.ph.split.us.i:                     ; preds = %bb.em
  %i.nv = icmp slt i32 %.fr275, 1
  %i.nw = icmp slt i32 %i.bf, 1
  %brmerge.i = or i1 %i.nw, %i.nv
  br i1 %brmerge.i, label %._crit_edge13.i, label %.preheader2.lr.ph.split.us.split.split.i

.preheader2.lr.ph.split.us.split.split.i:         ; preds = %.preheader2.lr.ph.split.us.i
  %i.nx = udiv i32 %.fr275, %i.cb                 ; 5 uses
  %i.ny = urem i32 %.fr275, %i.cb
  %i.nz = zext nneg i32 %i.bh to i64              ; 14 uses
  %i.oa = zext nneg i32 %i.bf to i64              ; 17 uses
  %i.ob = zext nneg i32 %.fr275 to i64            ; 9 uses
  %wide.trip.count31.i = zext nneg i32 %i.bn to i64
  %i.oc = add nsw i64 %i.ob, -1                   ; 3 uses
  %i.od = mul i32 %i.cb, %i.bh
  %i.oe = mul i32 %i.od, %i.bf
  %i.of = mul i32 %i.oe, %i.nx
  %i.og = mul i32 %i.cb, %i.bf
  %i.oh = mul i32 %i.og, %i.nx
  %i.oi = mul nuw nsw i64 %i.nz, %i.oa            ; 2 uses
  %i.oj = shl nuw i64 %i.oi, 2                    ; 2 uses
  %i.ok = mul i64 %i.oi, -4
  %i.ol = mul nuw nsw i64 %i.nz, %i.oa
  %i.om = mul i64 %i.ol, %i.ob
  %i.on = shl i64 %i.om, 2
  %i.oo = shl nuw nsw i64 %i.oa, 2
  %i.op = mul i32 %i.cb, %i.bh
  %i.oq = mul i32 %i.op, %i.bf
  %i.or = mul i32 %i.oq, %i.nx
  %i.os = mul i32 %i.cb, %i.bf
  %i.ot = mul i32 %i.os, %i.nx
  %i.ou = shl nuw nsw i64 %i.ob, 2
  %scevgep253 = getelementptr i8, ptr %i.ns, i64 %i.ou
  %i.ov = mul nuw nsw i64 %i.nz, %i.oa
  %i.ow = mul i64 %i.ov, %i.ob
  %i.ox = shl i64 %i.ow, 2
  %i.oy = shl nuw nsw i64 %i.oa, 2
  %i.oz = add nuw nsw i64 %i.ob, 4611686018427387903
  %i.pa = mul i64 %i.oz, %i.nz
  %i.pb = mul i64 %i.pa, %i.oa
  %i.pc = shl i64 %i.pb, 2
  %i.pd = getelementptr i8, ptr %.val, i64 %i.pc
  %min.iters.check = icmp ult i32 %.fr275, 16
  %ident.check = icmp ne i32 %i.nn, 1
  %i.pe = zext i32 %i.of to i64
  %i.pf = zext i32 %i.oh to i64
  %i.pg = trunc nsw i64 %i.oc to i32
  %i.ph = icmp ugt i64 %i.oc, 4294967295
  %i.pi = icmp slt i64 %i.oj, 0                   ; 2 uses
  %i.pj = select i1 %i.pi, i64 %i.ok, i64 %i.oj
  %mul251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.pj, i64 %i.oc) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul251, 0 ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul251, 1
  %i.pk = sub i64 0, %mul.result
  %invariant.op = or i1 %i.ph, %ident.check
  %i.pl = zext i32 %i.or to i64
  %i.pm = zext i32 %i.ot to i64
  %n.vec = and i64 %i.ob, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ob
  br label %.preheader2.us.i

.preheader2.us.i:                                 ; preds = %._crit_edge8.us.i, %.preheader2.lr.ph.split.us.split.split.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %._crit_edge8.us.i ], [ 0, %.preheader2.lr.ph.split.us.split.split.i ] ; 7 uses
  %i.pn = mul i64 %i.ox, %indvars.iv28.i          ; 2 uses
  %i.po = mul i64 %i.on, %indvars.iv28.i
  %i.pp = mul nuw nsw i64 %indvars.iv28.i, %i.ob  ; 9 uses
  %i.pq = trunc nuw nsw i64 %indvars.iv28.i to i32 ; 2 uses
  %i.pr = udiv i32 %i.pq, %i.nn
  %i.ps = urem i32 %i.pq, %i.nn
  %i.pt = mul nuw nsw i32 %i.pr, %i.bh
  %i.pu = zext i32 %i.pt to i64
  %i.pv = getelementptr i8, ptr %.val, i64 %i.pn
  %i.pw = getelementptr i8, ptr %i.pd, i64 %i.pn
  %i.px = getelementptr i8, ptr %.val, i64 %i.po
  %i.py = mul i64 %indvars.iv28.i, %i.pe
  %i.pz = mul i64 %indvars.iv28.i, %i.pl
  br label %.preheader1.us.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.qa = add nuw nsw i64 %indvars.iv.i, %i.pp
  %i.qb = mul nuw nsw i64 %i.qa, %i.nz
  %i.qc = add nuw nsw i64 %i.qb, %indvars.iv23.i
  %i.qd = mul nuw nsw i64 %i.qc, %i.oa
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qd
  %i.qe = load float, ptr %gep.i, align 4, !tbaa !38
  %i.qf = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.qg = udiv i32 %i.qf, %i.cb
  %i.qh = urem i32 %i.qf, %i.cb
  %i.qi = add nsw i32 %i.qg, %i.qu
  %i.qj = mul nsw i32 %i.qi, %i.cb
  %i.qk = add nsw i32 %i.qj, %i.qh
  %i.ql = mul nsw i32 %i.qk, %i.nn
  %i.qm = add nsw i32 %i.ql, %i.ps
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %i.qn
  store float %i.qe, ptr %i.qo, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ob
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !85

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader1.us.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %._crit_edge.us.i ], [ 0, %.preheader1.us.i ] ; 7 uses
  %i.qp = shl nuw nsw i64 %indvars.iv18.i, 2      ; 2 uses
  %scevgep255 = getelementptr i8, ptr %i.un, i64 %i.qp ; 4 uses
  %scevgep256 = getelementptr i8, ptr %i.uo, i64 %i.qp ; 4 uses
  %i.qq = icmp ult ptr %scevgep255, %scevgep256
  %umin = select i1 %i.qq, ptr %scevgep255, ptr %scevgep256
  %i.qr = icmp ugt ptr %scevgep255, %scevgep256
  %umax = select i1 %i.qr, ptr %scevgep255, ptr %scevgep256
  %scevgep257 = getelementptr i8, ptr %umax, i64 4
  %i.qs = add i64 %indvars.iv18.i, %i.um
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv18.i ; 9 uses
  %i.qt = trunc i64 %i.qs to i32
  %i.qu = mul i32 %i.nx, %i.qt                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i
  %i.qv = shl nuw nsw i64 %indvars.iv18.i, 2
  %scevgep = getelementptr i8, ptr %i.up, i64 %i.qv ; 4 uses
  %i.qw = urem i32 %.fr275, %i.cb
  %narrow = sub nuw nsw i32 %.fr275, %i.qw
  %i.qx = zext nneg i32 %narrow to i64
  %i.qy = mul i64 %indvars.iv18.i, %i.qx
  %i.qz = add i64 %i.qy, %i.ur
  %i.ra = trunc i64 %i.qz to i32                  ; 2 uses
  %i.rb = add i32 %i.ra, %i.pg
  %i.rc = icmp slt i32 %i.rb, %i.ra
  %i.rd = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.re = getelementptr i8, ptr %scevgep, i64 %i.pk
  %i.rf = icmp ult ptr %i.rd, %scevgep
  %i.rg = icmp ugt ptr %i.re, %scevgep
  %i.rh = select i1 %i.pi, i1 %i.rg, i1 %i.rf
  %i.ri = or i1 %i.rh, %mul.overflow
  %.reass281 = or i1 %i.rc, %invariant.op
  %i.rj = or i1 %.reass281, %i.ri
  br i1 %i.rj, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %narrow276 = sub nuw nsw i32 %.fr275, %i.ny
  %i.rk = zext nneg i32 %narrow276 to i64
  %i.rl = mul i64 %indvars.iv18.i, %i.rk
  %i.rm = add i64 %i.rl, %i.ut
  %i.rn = shl i64 %i.rm, 32
  %i.ro = ashr exact i64 %i.rn, 30                ; 2 uses
  %scevgep252 = getelementptr i8, ptr %i.ns, i64 %i.ro
  %scevgep254 = getelementptr i8, ptr %scevgep253, i64 %i.ro
  %bound0 = icmp ult ptr %scevgep252, %scevgep257
  %bound1 = icmp ult ptr %umin, %scevgep254
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.rp = or disjoint i64 %index, 1
  %i.rq = or disjoint i64 %index, 2
  %i.rr = or disjoint i64 %index, 3
  %i.rs = or disjoint i64 %index, 4
  %i.rt = or disjoint i64 %index, 5
  %i.ru = or disjoint i64 %index, 6
  %i.rv = or disjoint i64 %index, 7
  %i.rw = add nuw nsw i64 %index, %i.pp
  %i.rx = add nuw nsw i64 %i.rp, %i.pp
  %i.ry = add nuw nsw i64 %i.rq, %i.pp
  %i.rz = add nuw nsw i64 %i.rr, %i.pp
  %i.sa = add nuw nsw i64 %i.rs, %i.pp
  %i.sb = add nuw nsw i64 %i.rt, %i.pp
  %i.sc = add nuw nsw i64 %i.ru, %i.pp
  %i.sd = add nuw nsw i64 %i.rv, %i.pp
  %i.se = mul nuw nsw i64 %i.rw, %i.nz
  %i.sf = mul nuw nsw i64 %i.rx, %i.nz
  %i.sg = mul nuw nsw i64 %i.ry, %i.nz
  %i.sh = mul nuw nsw i64 %i.rz, %i.nz
  %i.si = mul nuw nsw i64 %i.sa, %i.nz
  %i.sj = mul nuw nsw i64 %i.sb, %i.nz
  %i.sk = mul nuw nsw i64 %i.sc, %i.nz
  %i.sl = mul nuw nsw i64 %i.sd, %i.nz
  %i.sm = add nuw nsw i64 %i.se, %indvars.iv23.i
  %i.sn = add nuw nsw i64 %i.sf, %indvars.iv23.i
  %i.so = add nuw nsw i64 %i.sg, %indvars.iv23.i
  %i.sp = add nuw nsw i64 %i.sh, %indvars.iv23.i
  %i.sq = add nuw nsw i64 %i.si, %indvars.iv23.i
  %i.sr = add nuw nsw i64 %i.sj, %indvars.iv23.i
  %i.ss = add nuw nsw i64 %i.sk, %indvars.iv23.i
  %i.st = add nuw nsw i64 %i.sl, %indvars.iv23.i
  %i.su = mul nuw nsw i64 %i.sm, %i.oa
  %i.sv = mul nuw nsw i64 %i.sn, %i.oa
  %i.sw = mul nuw nsw i64 %i.so, %i.oa
  %i.sx = mul nuw nsw i64 %i.sp, %i.oa
  %i.sy = mul nuw nsw i64 %i.sq, %i.oa
  %i.sz = mul nuw nsw i64 %i.sr, %i.oa
  %i.ta = mul nuw nsw i64 %i.ss, %i.oa
  %i.tb = mul nuw nsw i64 %i.st, %i.oa
  %i.tc = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.su
  %i.td = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.sv
  %i.te = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.sw
  %i.tf = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.sx
  %i.tg = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.sy
  %i.th = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.sz
  %i.ti = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ta
  %i.tj = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.tb
  %i.tk = load float, ptr %i.tc, align 4, !tbaa !38, !alias.scope !96
  %i.tl = load float, ptr %i.td, align 4, !tbaa !38, !alias.scope !96
  %i.tm = load float, ptr %i.te, align 4, !tbaa !38, !alias.scope !96
  %i.tn = load float, ptr %i.tf, align 4, !tbaa !38, !alias.scope !96
  %i.to = load float, ptr %i.tg, align 4, !tbaa !38, !alias.scope !96
  %i.tp = load float, ptr %i.th, align 4, !tbaa !38, !alias.scope !96
  %i.tq = load float, ptr %i.ti, align 4, !tbaa !38, !alias.scope !96
  %i.tr = load float, ptr %i.tj, align 4, !tbaa !38, !alias.scope !96
  %i.ts = insertelement <8 x float> poison, float %i.tk, i64 0
  %i.tt = insertelement <8 x float> %i.ts, float %i.tl, i64 1
  %i.tu = insertelement <8 x float> %i.tt, float %i.tm, i64 2
  %i.tv = insertelement <8 x float> %i.tu, float %i.tn, i64 3
  %i.tw = insertelement <8 x float> %i.tv, float %i.to, i64 4
  %i.tx = insertelement <8 x float> %i.tw, float %i.tp, i64 5
  %i.ty = insertelement <8 x float> %i.tx, float %i.tq, i64 6
  %i.tz = insertelement <8 x float> %i.ty, float %i.tr, i64 7
  %i.ua = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.ub = udiv i32 %i.ua, %i.cb
  %i.uc = urem i32 %i.ua, %i.cb
  %i.ud = add nsw i32 %i.ub, %i.qu
  %i.ue = mul nsw i32 %i.ud, %i.cb
  %i.uf = add nsw i32 %i.ue, %i.uc
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %i.ug
  store <8 x float> %i.tz, ptr %i.uh, align 4, !tbaa !38, !alias.scope !97, !noalias !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ui = icmp eq i64 %index.next, %n.vec
  br i1 %i.ui, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader1.us.i:                                 ; preds = %._crit_edge5.us.i, %.preheader2.us.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader2.us.i ], [ %indvars.iv.next24.i, %._crit_edge5.us.i ] ; 15 uses
  %i.uj = mul i64 %i.oy, %indvars.iv23.i          ; 2 uses
  %i.uk = mul i64 %i.oo, %indvars.iv23.i
  %i.ul = add nuw nsw i64 %indvars.iv23.i, %i.pu
  %i.um = mul i64 %i.ul, %i.oa
  %i.un = getelementptr i8, ptr %i.pv, i64 %i.uj
  %i.uo = getelementptr i8, ptr %i.pw, i64 %i.uj
  %i.up = getelementptr i8, ptr %i.px, i64 %i.uk
  %i.uq = mul i64 %indvars.iv23.i, %i.pf
  %i.ur = add i64 %i.uq, %i.py
  %i.us = mul i64 %indvars.iv23.i, %i.pm
  %i.ut = add i64 %i.us, %i.pz
  br label %.preheader.us.i

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %i.oa
  br i1 %exitcond22.not.i, label %._crit_edge5.us.i, label %.preheader.us.i, !llvm.loop !90

._crit_edge5.us.i:                                ; preds = %._crit_edge.us.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %i.nz
  br i1 %exitcond27.not.i, label %._crit_edge8.us.i, label %.preheader1.us.i, !llvm.loop !91

._crit_edge8.us.i:                                ; preds = %._crit_edge5.us.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %._crit_edge13.i, label %.preheader2.us.i, !llvm.loop !92

._crit_edge13.i:                                  ; preds = %._crit_edge8.us.i, %.preheader2.lr.ph.split.us.i, %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.uu = insertelement <2 x i32> poison, i32 %i.bn, i64 0
  %i.uv = insertelement <2 x i32> %i.uu, i32 %.fr275, i64 1
end_hunk_0
begin_hunk_1_@llvm.memcpy.p0.p0.i64

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %16, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %18, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %19, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %20, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %21, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %22, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %23, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %24, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %25, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %26, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %27, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %28) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bg

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not930 = icmp sgt i32 %i.k, %i.j
  br i1 %.not930, label %._crit_edge933, label %.preheader857.lr.ph

.preheader857.lr.ph:                              ; preds = %bb.b
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
  %i.v = load i32, ptr %3, align 4, !tbaa !57     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader857.preheader, label %._crit_edge933

.preheader857.preheader:                          ; preds = %.preheader857.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.preheader857

.preheader857:                                    ; preds = %.preheader857.preheader, %._crit_edge929
  %i.z = phi i32 [ %i.v, %.preheader857.preheader ], [ %i.af, %._crit_edge929 ] ; 3 uses
  %i.aa = phi i32 [ %i.v, %.preheader857.preheader ], [ %i.ag, %._crit_edge929 ] ; 3 uses
  %indvars.iv991 = phi i64 [ %i.x, %.preheader857.preheader ], [ %indvars.iv.next992, %._crit_edge929 ] ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge929

.lr.ph:                                           ; preds = %.preheader857
  %i.ac = load i32, ptr %8, align 4, !tbaa !57    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.split.preheader, label %._crit_edge929

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ae = trunc nsw i64 %indvars.iv991 to i32     ; 3 uses
  br label %.lr.ph.split

._crit_edge929:                                   ; preds = %._crit_edge, %.lr.ph, %.preheader857
  %i.af = phi i32 [ %i.z, %.preheader857 ], [ %i.z, %.lr.ph ], [ %i.at, %._crit_edge ]
  %i.ag = phi i32 [ %i.aa, %.preheader857 ], [ %i.aa, %.lr.ph ], [ %i.at, %._crit_edge ]
  %indvars.iv.next992 = add nsw i64 %indvars.iv991, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next992 to i32
  %exitcond994.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond994.not, label %._crit_edge933, label %.preheader857, !llvm.loop !148

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.ah = phi i32 [ %i.z, %.lr.ph.split.preheader ], [ %i.at, %._crit_edge ]
  %i.ai = phi i32 [ %i.ac, %.lr.ph.split.preheader ], [ %i.au, %._crit_edge ] ; 2 uses
  %indvars.iv988 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next989, %._crit_edge ] ; 6 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv988 to i32 ; 5 uses
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %.noexc360.lr.ph, label %._crit_edge

.noexc360.lr.ph:                                  ; preds = %.lr.ph.split
  %i.al = load i32, ptr %6, align 4, !tbaa !57
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = load i32, ptr %7, align 4, !tbaa !57
  %i.ao = sub i32 %i.am, %i.an
  %i.ap = load i32, ptr %4, align 4, !tbaa !57
  %i.aq = mul nsw i32 %i.ap, %i.ae
  %i.ar = load i32, ptr %5, align 4, !tbaa !57
  %i.as = sub i32 %i.aq, %i.ar
  br label %.noexc360

._crit_edge.loopexit:                             ; preds = %bb.bf
  %.pre996 = load i32, ptr %3, align 4, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.at = phi i32 [ %.pre996, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph.split ] ; 4 uses
  %i.au = phi i32 [ %i.agr, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph.split ]
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 1 ; 2 uses
  %i.av = sext i32 %i.at to i64
  %i.aw = icmp slt i64 %indvars.iv.next989, %i.av
  br i1 %i.aw, label %.lr.ph.split, label %._crit_edge929, !llvm.loop !149

.noexc360:                                        ; preds = %.noexc360.lr.ph, %bb.bf
  %indvars.iv985 = phi i64 [ 0, %.noexc360.lr.ph ], [ %indvars.iv.next986, %bb.bf ] ; 6 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !19, !noalias !175
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !175
  %i.az = mul i64 %i.ay, %indvars.iv985
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !52, !noalias !175
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb
  %i.bd = load ptr, ptr %10, align 8, !tbaa !19, !noalias !176
  %i.be = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !176
  %i.bf = mul i64 %i.be, %indvars.iv985
  %i.bg = load i64, ptr %i.o, align 8, !tbaa !52, !noalias !176
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh ; 3 uses
  %i.bj = load ptr, ptr %11, align 8, !tbaa !71   ; 4 uses
  %.not302 = icmp eq ptr %i.bj, null
  br i1 %.not302, label %.thread842, label %bb.c

bb.c:                                             ; preds = %.noexc360
  %i.bk = load i32, ptr %12, align 4, !tbaa !57
  switch i32 %i.bk, label %.thread842 [
    i32 8, label %.thread
    i32 4, label %bb.d
    i32 1, label %bb.e
  ]

.thread:                                          ; preds = %bb.c
  %.idx1018 = shl nuw nsw i64 %indvars.iv985, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx1018
  %i.bm = load <8 x float>, ptr %i.bl, align 32, !tbaa !63
  br label %.thread842

bb.d:                                             ; preds = %bb.c
  %.idx = shl nuw nsw i64 %indvars.iv985, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !tbaa !63
  br label %.thread842

bb.e:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv985
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !38
  br label %.thread842

.thread842:                                       ; preds = %bb.c, %bb.d, %.thread, %bb.e, %.noexc360
  %.1832 = phi nsz <8 x float> [ zeroinitializer, %.noexc360 ], [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.c ], [ %i.bm, %.thread ], [ zeroinitializer, %bb.d ] ; 3 uses
  %.1825 = phi nsz <4 x float> [ zeroinitializer, %.noexc360 ], [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %.thread ], [ %i.bo, %bb.d ] ; 3 uses
  %.0280 = phi nsz float [ 0.000000e+00, %.noexc360 ], [ %i.bq, %bb.e ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %.thread ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %i.br = load i32, ptr %13, align 4, !tbaa !57   ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.preheader856.lr.ph, label %._crit_edge904

.preheader856.lr.ph:                              ; preds = %.thread842
  %i.bt = load i32, ptr %14, align 4, !tbaa !57   ; 5 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.preheader856.lr.ph.split.us, label %._crit_edge904

.preheader856.lr.ph.split.us:                     ; preds = %.preheader856.lr.ph
  %i.bv = load i8, ptr %15, align 1, !tbaa !61, !range !47, !noundef !48
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = load i8, ptr %17, align 1, !tbaa !61, !range !47, !noundef !48 ; 3 uses
  %i.by = trunc nuw i8 %i.bx to i1                ; 5 uses
  %i.bz = load i32, ptr %20, align 4, !tbaa !57
  %i.ca = load i32, ptr %21, align 4, !tbaa !57
  %i.cb = load i32, ptr %24, align 4, !tbaa !57   ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  %i.cd = zext nneg i32 %i.bt to i64              ; 2 uses
  %wide.trip.count983 = zext nneg i32 %i.br to i64
  %wide.trip.count973 = zext nneg i32 %i.cb to i64
  %i.ce = trunc nuw i8 %i.bx to i1
  %i.cf = trunc nuw i8 %i.bx to i1
  br label %.preheader856.us

.preheader856.us:                                 ; preds = %._crit_edge894.us, %.preheader856.lr.ph.split.us
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %._crit_edge894.us ], [ 0, %.preheader856.lr.ph.split.us ] ; 6 uses
  %.1281902.us = phi float [ %.3.lcssa.us, %._crit_edge894.us ], [ %.0280, %.preheader856.lr.ph.split.us ]
  %.0282901.us = phi ptr [ %.2284.lcssa.us, %._crit_edge894.us ], [ %i.bc, %.preheader856.lr.ph.split.us ]
  %.2826900.us = phi <4 x float> [ %.4828.lcssa.us, %._crit_edge894.us ], [ %.1825, %.preheader856.lr.ph.split.us ]
  %.2833899.us = phi <8 x float> [ %.4835.lcssa.us, %._crit_edge894.us ], [ %.1832, %.preheader856.lr.ph.split.us ]
  %i.cg = mul nuw nsw i64 %indvars.iv980, %i.cd
  %i.ch = trunc i64 %indvars.iv980 to i32
  %i.ci = mul i32 %i.bz, %i.ch
  %i.cj = add i32 %i.ci, %i.as
  %i.ck = sitofp fast i32 %i.cj to float
  %i.cl = trunc nuw nsw i64 %indvars.iv980 to i32
  %i.cm = mul nsw i32 %i.bt, %i.cl
  %i.cn = trunc nuw nsw i64 %indvars.iv980 to i32
  %i.co = mul nsw i32 %i.bt, %i.cn
  %i.cp = trunc nuw nsw i64 %indvars.iv980 to i32
  %i.cq = mul nsw i32 %i.bt, %i.cp
  br label %bb.f

bb.f:                                             ; preds = %.preheader856.us, %._crit_edge.us
  %indvars.iv975 = phi i64 [ 0, %.preheader856.us ], [ %indvars.iv.next976, %._crit_edge.us ] ; 5 uses
  %.2891.us = phi float [ %.1281902.us, %.preheader856.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.1283890.us = phi ptr [ %.0282901.us, %.preheader856.us ], [ %.2284.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.3827889.us = phi <4 x float> [ %.2826900.us, %.preheader856.us ], [ %.4828.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.3834888.us = phi <8 x float> [ %.2833899.us, %.preheader856.us ], [ %.4835.lcssa.us, %._crit_edge.us ] ; 2 uses
  %i.cr = add nuw nsw i64 %i.cg, %indvars.iv975
  %i.cs = shl nuw nsw i64 %i.cr, 1                ; 3 uses
  br i1 %i.bw, label %_ZN4ncnn3MatD2Ev.exit308.us, label %_ZN4ncnn3MatD2Ev.exit306.us

_ZN4ncnn3MatD2Ev.exit306.us:                      ; preds = %bb.f
  %i.ct = load i32, ptr %i.p, align 8, !tbaa !56  ; 5 uses
  %i.cu = trunc nuw i64 %i.cs to i32              ; 2 uses
  %i.cv = sdiv i32 %i.cu, %i.ct
  %i.cw = load i32, ptr %i.q, align 4, !tbaa !51, !noalias !177
  %i.cx = load ptr, ptr %16, align 8, !tbaa !19, !noalias !177 ; 2 uses
  %i.cy = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !177 ; 2 uses
  %i.cz = sext i32 %i.cv to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = load i64, ptr %i.s, align 8, !tbaa !52, !noalias !177 ; 3 uses
  %i.dc = mul i64 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dc
  %i.de = sext i32 %i.cw to i64
  %i.df = mul nsw i64 %indvars.iv991, %i.de
  %i.dg = mul i64 %i.df, %i.db                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dg
  %i.di = mul nsw i32 %i.ct, %i.aj                ; 2 uses
  %i.dj = srem i32 %i.cu, %i.ct
  %i.dk = add nsw i32 %i.dj, %i.di
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dl
  %i.dn = trunc i64 %i.cs to i32
  %i.do = or disjoint i32 %i.dn, 1                ; 2 uses
  %i.dp = sdiv i32 %i.do, %i.ct
  %i.dq = sext i32 %i.dp to i64
  %i.dr = mul i64 %i.cy, %i.dq
  %i.ds = mul i64 %i.dr, %i.db
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dg
  %i.dv = srem i32 %i.do, %i.ct
  %i.dw = add nsw i32 %i.dv, %i.di
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dx
  br label %bb.g

_ZN4ncnn3MatD2Ev.exit308.us:                      ; preds = %bb.f
  %i.dz = load i32, ptr %i.q, align 4, !tbaa !51, !noalias !178
  %i.ea = load ptr, ptr %16, align 8, !tbaa !19, !noalias !178 ; 2 uses
  %i.eb = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !178 ; 2 uses
  %i.ec = mul i64 %i.eb, %i.cs
  %i.ed = load i64, ptr %i.s, align 8, !tbaa !52, !noalias !178 ; 3 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = mul nsw i64 %indvars.iv991, %i.eg
  %i.ei = mul i64 %i.eh, %i.ed                    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv988
  %i.el = trunc nuw nsw i64 %indvars.iv975 to i32
  %i.em = add nsw i32 %i.cm, %i.el
  %i.en = shl nsw i32 %i.em, 1
  %i.eo = or disjoint i32 %i.en, 1
  %29 = sext i32 %i.eo to i64
  %i.ep = mul i64 %i.ed, %i.eb
  %i.eq = mul i64 %i.ep, %29
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ei
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv988
  br label %bb.g

bb.g:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit308.us, %_ZN4ncnn3MatD2Ev.exit306.us
  %.0277.in.us = phi ptr [ %i.ek, %_ZN4ncnn3MatD2Ev.exit308.us ], [ %i.dm, %_ZN4ncnn3MatD2Ev.exit306.us ]
  %.0276.in.us = phi ptr [ %i.et, %_ZN4ncnn3MatD2Ev.exit308.us ], [ %i.dy, %_ZN4ncnn3MatD2Ev.exit306.us ]
  %.0276.us = load float, ptr %.0276.in.us, align 4, !tbaa !38
  %.0277.us = load float, ptr %.0277.in.us, align 4, !tbaa !38
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.eu = load ptr, ptr %18, align 8, !tbaa !60   ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 144 ; 2 uses
  %i.ew = load i8, ptr %19, align 1, !tbaa !61, !range !47, !noundef !48
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = trunc nuw nsw i64 %indvars.iv975 to i32 ; 2 uses
  br i1 %i.ex, label %_ZN4ncnn3MatD2Ev.exit304.us, label %_ZN4ncnn3MatD2Ev.exit303.us

_ZN4ncnn3MatD2Ev.exit303.us:                      ; preds = %bb.h
  %i.ez = add nsw i32 %i.co, %i.ey                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 168
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !56 ; 3 uses
  %i.fc = sdiv i32 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 188
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !51, !noalias !179
  %i.ff = load ptr, ptr %i.ev, align 8, !tbaa !19, !noalias !179
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 208
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !20, !noalias !179
  %i.fi = sext i32 %i.fc to i64
  %i.fj = mul i64 %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 160
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !52, !noalias !179 ; 2 uses
  %i.fm = mul i64 %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fm
  %i.fo = sext i32 %i.fe to i64
  %i.fp = mul nsw i64 %indvars.iv991, %i.fo
  %i.fq = mul i64 %i.fp, %i.fl
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fq
  %i.fs = mul nsw i32 %i.fb, %i.aj
  %i.ft = srem i32 %i.ez, %i.fb
  %i.fu = add nsw i32 %i.ft, %i.fs
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !38
  br label %bb.i

_ZN4ncnn3MatD2Ev.exit304.us:                      ; preds = %bb.h
  %i.fy = add nsw i32 %i.cq, %i.ey
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eu, i64 188
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !51, !noalias !180
  %i.gb = load ptr, ptr %i.ev, align 8, !tbaa !19, !noalias !180
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eu, i64 208
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !20, !noalias !180
  %30 = sext i32 %i.fy to i64
  %i.ge = mul i64 %i.gd, %30
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eu, i64 160
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !52, !noalias !180 ; 2 uses
  %i.gh = mul i64 %i.ge, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gh
  %i.gj = sext i32 %i.ga to i64
  %i.gk = mul nsw i64 %indvars.iv991, %i.gj
  %i.gl = mul i64 %i.gk, %i.gg
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv988
  %i.go = load float, ptr %i.gn, align 4, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit304.us, %_ZN4ncnn3MatD2Ev.exit303.us, %bb.g
  %.1275.us = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.go, %_ZN4ncnn3MatD2Ev.exit304.us ], [ %i.fx, %_ZN4ncnn3MatD2Ev.exit303.us ] ; 5 uses
  %i.gp = fadd fast float %.0277.us, %i.ck        ; 4 uses
  %i.gq = trunc i64 %indvars.iv975 to i32
  %i.gr = mul i32 %i.ca, %i.gq
  %i.gs = add i32 %i.gr, %i.ao
  %i.gt = sitofp fast i32 %i.gs to float
  %i.gu = fadd fast float %.0276.us, %i.gt        ; 4 uses
  %i.gv = fcmp fast ogt float %i.gp, -1.000000e+00
  %i.gw = fcmp fast ogt float %i.gu, -1.000000e+00
  %or.cond.us = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond.us, label %bb.j, label %.thread846.us

bb.j:                                             ; preds = %bb.i
  %i.gx = load i32, ptr %22, align 4, !tbaa !57   ; 2 uses
  %i.gy = sitofp fast i32 %i.gx to float
  %i.gz = fcmp fast olt float %i.gp, %i.gy
  br i1 %i.gz, label %bb.k, label %.thread846.us

bb.k:                                             ; preds = %bb.j
  %i.ha = load i32, ptr %23, align 4, !tbaa !57   ; 7 uses
  %i.hb = sitofp fast i32 %i.ha to float
  %i.hc = fcmp fast olt float %i.gu, %i.hb
  br i1 %i.hc, label %bb.l, label %.thread846.us

bb.l:                                             ; preds = %bb.k
  %i.hd = call fast float @llvm.floor.f32(float %i.gp)
  %i.he = fptosi float %i.hd to i32               ; 6 uses
  %i.hf = call fast float @llvm.floor.f32(float %i.gu)
  %i.hg = fptosi float %i.hf to i32               ; 7 uses
  %i.hh = add nsw i32 %i.he, 1                    ; 2 uses
  %i.hi = add nsw i32 %i.hg, 1                    ; 2 uses
  %i.hj = sitofp fast i32 %i.he to float
  %i.hk = fsub fast float %i.gp, %i.hj            ; 3 uses
  %i.hl = sitofp fast i32 %i.hg to float
  %i.hm = fsub fast float %i.gu, %i.hl            ; 3 uses
  %i.hn = fsub fast float 1.000000e+00, %i.hk     ; 2 uses
  %i.ho = fsub fast float 1.000000e+00, %i.hm     ; 2 uses
  %i.hp = icmp sgt i32 %i.he, -1                  ; 2 uses
  %i.hq = icmp sgt i32 %i.hg, -1                  ; 2 uses
  %i.hr = select i1 %i.hp, i1 %i.hq, i1 false     ; 2 uses
  %i.hs = add nsw i32 %i.ha, -1
  %i.ht = icmp sgt i32 %i.hs, %i.hg
  %i.hu = select i1 %i.hp, i1 %i.ht, i1 false     ; 2 uses
  %i.hv = add nsw i32 %i.gx, -1
  %i.hw = icmp sgt i32 %i.hv, %i.he               ; 2 uses
  %i.hx = select i1 %i.hw, i1 %i.hq, i1 false     ; 2 uses
  %i.hy = add nsw i32 %i.ha, -1
  %i.hz = icmp sgt i32 %i.hy, %i.hg
  %i.ia = select i1 %i.hw, i1 %i.hz, i1 false     ; 2 uses
  %i.ib = mul nsw i32 %i.ha, %i.he
  %i.ic = add nsw i32 %i.ib, %i.hg
  %.0264.us = select i1 %i.hr, i32 %i.ic, i32 0
  %i.id = mul nsw i32 %i.ha, %i.he
  %i.ie = add nsw i32 %i.id, %i.hi
  %.0262.us = select i1 %i.hu, i32 %i.ie, i32 0
  %i.if = mul nsw i32 %i.ha, %i.hh
  %i.ig = add nsw i32 %i.if, %i.hg
  %.0260.us = select i1 %i.hx, i32 %i.ig, i32 0
  %i.ih = mul nsw i32 %i.ha, %i.hh
  %i.ii = add nsw i32 %i.ih, %i.hi
  %.0258.us = select i1 %i.ia, i32 %i.ii, i32 0
  %i.ij = fmul fast float %i.ho, %i.hn
  %i.ik = fmul fast float %i.hn, %i.hm
  %i.il = fmul fast float %i.ho, %i.hk
  %i.im = fmul fast float %i.hm, %i.hk
  br label %.thread846.us

.thread846.us:                                    ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.in = phi i1 [ true, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 8 uses
  %.0273.us = phi nsz float [ %i.ij, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 5 uses
  %.0272.us = phi nsz float [ %i.ik, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 5 uses
  %.0271.us = phi nsz float [ %i.il, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 5 uses
  %.0270.us = phi nsz float [ %i.im, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 5 uses
  %.0269.us = phi i1 [ %i.hr, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 8 uses
  %.0268.us = phi i1 [ %i.hu, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 8 uses
  %.0267.us = phi i1 [ %i.hx, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 8 uses
  %.0266.us = phi i1 [ %i.ia, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 5 uses
  %.1265.us = phi i32 [ %.0264.us, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.1263.us = phi i32 [ %.0262.us, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.1261.us = phi i32 [ %.0260.us, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.1259.us = phi i32 [ %.0258.us, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  br i1 %i.cc, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %.loopexit.us
  %indvars.iv970 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next971, %.loopexit.us ] ; 2 uses
  %.3882.us = phi float [ %.2891.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.5.us, %.loopexit.us ] ; 9 uses
  %.2284881.us = phi ptr [ %.1283890.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.8.us, %.loopexit.us ] ; 7 uses
  %.4828880.us = phi <4 x float> [ %.3827889.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.6830.us1026, %.loopexit.us ] ; 7 uses
  %.4835879.us = phi <8 x float> [ %.3834888.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %.6837.us10211025, %.loopexit.us ] ; 5 uses
  %.reass.us = mul i64 %factor.op.mul.us, %indvars.iv970
  %i.io = getelementptr inbounds nuw i8, ptr %i.rz, i64 %.reass.us ; 12 uses
  br i1 %i.sd, label %bb.m, label %.loopexit855.us

bb.m:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.ip = load i32, ptr %26, align 4, !tbaa !57   ; 11 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %bb.m
  %i.ir = mul nsw i32 %i.ip, %.1265.us
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.is
  %i.iu = mul nsw i32 %i.ip, %.1263.us
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.iv
  %i.ix = mul nsw i32 %i.ip, %.1261.us
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.iy
  %i.ja = mul nsw i32 %i.ip, %.1259.us
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.jb
  br i1 %i.in, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us908.preheader

.lr.ph.split.us908.preheader:                     ; preds = %.lr.ph.us
  %xtraiter = and i32 %i.ip, 7                    ; 3 uses
  %i.jd = icmp ult i32 %i.ip, 8
  br i1 %i.jd, label %.lr.ph.split.us908.epil.preheader, label %.lr.ph.split.us908.preheader.new

.lr.ph.split.us908.preheader.new:                 ; preds = %.lr.ph.split.us908.preheader
  %unroll_iter = and i32 %i.ip, 2147483640
  br label %.lr.ph.split.us908

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.ip to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us908:                               ; preds = %.lr.ph.split.us908, %.lr.ph.split.us908.preheader.new
  %.3285859.us911 = phi ptr [ %.2284881.us, %.lr.ph.split.us908.preheader.new ], [ %i.kb, %.lr.ph.split.us908 ] ; 9 uses
  %.5836858.us912 = phi <8 x float> [ %.4835879.us, %.lr.ph.split.us908.preheader.new ], [ %i.ka, %.lr.ph.split.us908 ]
  %niter = phi i32 [ 0, %.lr.ph.split.us908.preheader.new ], [ %niter.next.7, %.lr.ph.split.us908 ]
  %i.je = load <8 x float>, ptr %.3285859.us911, align 32, !tbaa !63
  %i.jf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %spec.select847.us909, <8 x float> nofpclass(nan inf) %i.je, <8 x float> nofpclass(nan inf) %.5836858.us912)
  %i.jg = getelementptr inbounds nuw i8, ptr %.3285859.us911, i64 32
  %i.jh = load <8 x float>, ptr %i.jg, align 32, !tbaa !63
  %i.ji = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %spec.select847.us909, <8 x float> nofpclass(nan inf) %i.jh, <8 x float> nofpclass(nan inf) %i.jf)
  %i.jj = getelementptr inbounds nuw i8, ptr %.3285859.us911, i64 64
  %i.jk = load <8 x float>, ptr %i.jj, align 32, !tbaa !63
  %i.jl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %spec.select847.us909, <8 x float> nofpclass(nan inf) %i.jk, <8 x float> nofpclass(nan inf) %i.ji)
  %i.jm = getelementptr inbounds nuw i8, ptr %.3285859.us911, i64 96
  %i.jn = load <8 x float>, ptr %i.jm, align 32, !tbaa !63
  %i.jo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %spec.select847.us909, <8 x float> nofpclass(nan inf) %i.jn, <8 x float> nofpclass(nan inf) %i.jl)
  %i.jp = getelementptr inbounds nuw i8, ptr %.3285859.us911, i64 128
  %i.jq = load <8 x float>, ptr %i.jp, align 32, !tbaa !63
  %i.jr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %spec.select847.us909, <8 x float> nofpclass(nan inf) %i.jq, <8 x float> nofpclass(nan inf) %i.jo)
  %i.js = getelementptr inbounds nuw i8, ptr %.3285859.us911, i64 160
  %i.jt = load <8 x float>, ptr %i.js, align 32, !tbaa !63
  %i.ju = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %spec.select847.us909, <8 x float> nofpclass(nan inf) %i.jt, <8 x float> nofpclass(nan inf) %i.jr)
  %i.jv = getelementptr inbounds nuw i8, ptr %.3285859.us911, i64 192
  %i.jw = load <8 x float>, ptr %i.jv, align 32, !tbaa !63
  %i.jx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %spec.select847.us909, <8 x float> nofpclass(nan inf) %i.jw, <8 x float> nofpclass(nan inf) %i.ju)
  %i.jy = getelementptr inbounds nuw i8, ptr %.3285859.us911, i64 224
  %i.jz = load <8 x float>, ptr %i.jy, align 32, !tbaa !63
  %i.ka = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %spec.select847.us909, <8 x float> nofpclass(nan inf) %i.jz, <8 x float> nofpclass(nan inf) %i.jx) ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.3285859.us911, i64 256 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit855.us.loopexit935.unr-lcssa, label %.lr.ph.split.us908, !llvm.loop !162

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next, %bb.u ] ; 5 uses
  %.3285859.us.us = phi ptr [ %.2284881.us, %.lr.ph.split.us.us.preheader ], [ %i.lb, %bb.u ] ; 2 uses
  %.5836858.us.us = phi <8 x float> [ %.4835879.us, %.lr.ph.split.us.us.preheader ], [ %i.la, %bb.u ]
  br i1 %.0269.us, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.us
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv
  %i.kd = load float, ptr %i.kc, align 1, !tbaa !63
  %.scalar = fmul fast float %i.kd, %.0273.us
  %i.ke = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.kf = shufflevector <8 x float> %i.ke, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.us.us
  %i.kg = phi <8 x float> [ %i.kf, %bb.n ], [ zeroinitializer, %.lr.ph.split.us.us ]
  br i1 %.0268.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv
  %i.ki = load float, ptr %i.kh, align 1, !tbaa !63
  %i.kj = insertelement <8 x float> poison, float %i.ki, i64 0
  %i.kk = shufflevector <8 x float> %i.kj, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.kl = phi fast <8 x float> [ %i.kk, %bb.p ], [ zeroinitializer, %bb.o ]
  br i1 %.0267.us, label %bb.r, label %bb.s
end_hunk_1
