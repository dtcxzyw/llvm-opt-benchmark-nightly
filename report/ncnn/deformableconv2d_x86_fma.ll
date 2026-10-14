Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_fma?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ncnn24DeformableConv2D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
bb.dq:                                            ; preds = %bb.dp
  %i.mb = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.mc = load ptr, ptr %i.mb, align 16, !tbaa !18 ; 3 uses
  %.not3.i100 = icmp eq ptr %i.mc, null
  %i.md = load ptr, ptr %14, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i100, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !11
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  invoke void %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, ptr noundef %i.md)
          to label %_ZN4ncnn3MatD2Ev.exit72 unwind label %bb.du, !inline_history !0

bb.ds:                                            ; preds = %bb.dq
  %.not.i119 = icmp eq ptr %i.md, null
  br i1 %.not.i119, label %_ZN4ncnn3MatD2Ev.exit72, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @free(ptr noundef nonnull %i.md) #9
  br label %_ZN4ncnn3MatD2Ev.exit72

bb.du:                                            ; preds = %bb.dr
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #20
  unreachable

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
  %i.od = mul i32 %i.cb, %i.bf
  %i.oe = mul i32 %i.od, %i.bh
  %i.of = mul i32 %i.oe, %i.nx
  %i.og = mul i32 %i.cb, %i.bf
  %i.oh = mul i32 %i.og, %i.nx
  %i.oi = mul nuw nsw i64 %i.oa, %i.nz            ; 2 uses
  %i.oj = shl nuw i64 %i.oi, 2                    ; 2 uses
  %i.ok = mul i64 %i.oi, -4
  %i.ol = mul nuw nsw i64 %i.oa, %i.nz
  %i.om = mul i64 %i.ol, %i.ob
  %i.on = shl i64 %i.om, 2
  %i.oo = shl nuw nsw i64 %i.oa, 2
  %i.op = mul i32 %i.cb, %i.bf
  %i.oq = mul i32 %i.op, %i.bh
  %i.or = mul i32 %i.oq, %i.nx
  %i.os = mul i32 %i.cb, %i.bf
  %i.ot = mul i32 %i.os, %i.nx
  %i.ou = shl nuw nsw i64 %i.ob, 2
  %scevgep253 = getelementptr i8, ptr %i.ns, i64 %i.ou
  %i.ov = mul nuw nsw i64 %i.oa, %i.nz
  %i.ow = mul i64 %i.ov, %i.ob
  %i.ox = shl i64 %i.ow, 2
  %i.oy = shl nuw nsw i64 %i.oa, 2
  %i.oz = add nuw nsw i64 %i.ob, 4611686018427387903
  %i.pa = mul i64 %i.oz, %i.oa
  %i.pb = mul i64 %i.pa, %i.nz
  %i.pc = shl i64 %i.pb, 2
  %i.pd = getelementptr i8, ptr %.val, i64 %i.pc
  %min.iters.check = icmp ult i32 %.fr275, 32
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
end_hunk_0
