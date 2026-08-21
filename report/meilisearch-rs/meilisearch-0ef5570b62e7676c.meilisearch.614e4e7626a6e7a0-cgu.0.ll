inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
bb.bv:                                            ; preds = %bb.bu
  %i.lg = add nuw nsw i64 %i.d, 9                 ; 2 uses
  %exitcond170.9.not = icmp eq i64 %i.hj, 10
  br i1 %exitcond170.9.not, label %.invoke300, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !noundef !27
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.lg
  store float %i.li, ptr %i.lj, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ll = load float, ptr %i.lk, align 4, !noundef !27
  store float %i.ll, ptr %i.lh, align 4
  %exitcond172.9.not = icmp eq i64 %i.hk, 11
  br i1 %exitcond172.9.not, label %._crit_edge91, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lm = add nuw nsw i64 %i.d, 10                ; 2 uses
  %exitcond170.10.not = icmp eq i64 %i.hj, 11
  br i1 %exitcond170.10.not, label %.invoke300, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 8, !noundef !27
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.lm
  store float %i.lo, ptr %i.lp, align 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.lr = load float, ptr %i.lq, align 4, !noundef !27
  store float %i.lr, ptr %i.ln, align 8
  %exitcond172.10.not = icmp eq i64 %i.hk, 12
  br i1 %exitcond172.10.not, label %._crit_edge91, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ls = add nuw nsw i64 %i.d, 11                ; 2 uses
  %exitcond170.11.not = icmp eq i64 %i.hj, 12
  br i1 %exitcond170.11.not, label %.invoke300, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !noundef !27
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ls
  store float %i.lu, ptr %i.lv, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.lx = load float, ptr %i.lw, align 4, !noundef !27
  store float %i.lx, ptr %i.lt, align 4
  %exitcond172.11.not = icmp eq i64 %i.hk, 13
  br i1 %exitcond172.11.not, label %._crit_edge91, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ly = add nuw nsw i64 %i.d, 12                ; 2 uses
  %exitcond170.12.not = icmp eq i64 %i.hj, 13
  br i1 %exitcond170.12.not, label %.invoke300, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ma = load float, ptr %i.lz, align 8, !noundef !27
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ly
  store float %i.ma, ptr %i.mb, align 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.md = load float, ptr %i.mc, align 4, !noundef !27
  store float %i.md, ptr %i.lz, align 8
  %exitcond172.12.not = icmp eq i64 %i.hk, 14
  br i1 %exitcond172.12.not, label %._crit_edge91, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.me = add nuw nsw i64 %i.d, 13                ; 2 uses
  %exitcond170.13.not = icmp eq i64 %i.hj, 14
  br i1 %exitcond170.13.not, label %.invoke300, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.mg = load float, ptr %i.mf, align 4, !noundef !27
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.me
  store float %i.mg, ptr %i.mh, align 4
  br label %.invoke300

bb.cf:                                            ; preds = %bb.z
  %i.mi = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.cv ; 3 uses
  %i.mj = load i64, ptr %i.co, align 8, !noundef !27
  %i.mk = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.mi, i64 noundef 256, i64 noundef %i.mj)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.ml = extractvalue { float, i64 } %i.mk, 0    ; 2 uses
  %i.mm = extractvalue { float, i64 } %i.mk, 1
  %i.mn = uitofp i64 %i.mm to float               ; 2 uses
  %i.mo = fcmp olt float %i.ml, %i.mn
  %.sroa.022.0 = select i1 %i.mo, float %i.mn, float %i.ml ; 3 uses
  %i.mp = icmp samesign ult i64 %.sroa.028.074, 13
  br i1 %i.mp, label %bb.ch, label %.invoke300

bb.ch:                                            ; preds = %bb.cg
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.028.074
  store float %.sroa.022.0, ptr %i.mq, align 4
  %i.mr = load i64, ptr %0, align 8, !noundef !27
  %i.ms = add i64 %i.mr, %.sroa.028.074           ; 3 uses
  %i.mt = icmp ult i64 %.sroa.028.074, %i.bv
  br i1 %i.mt, label %bb.ci, label %.invoke300

bb.ci:                                            ; preds = %bb.ch
  %i.mu = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %.sroa.028.074 ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.mu, ptr noundef nonnull align 8 dereferenceable(1040) %i.mi, i64 1040, i1 false)
  %i.mv = icmp ult i64 %i.ms, %3
  br i1 %i.mv, label %.noexc112, label %.invoke

.noexc112:                                        ; preds = %bb.ci
  %i.mw = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.ms ; 8 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 1024 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !39225, !noundef !27
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 1024 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !39228, !noundef !27
  %i.nb = add i64 %i.na, %i.my
  store i64 %i.nb, ptr %i.mx, align 8, !alias.scope !39231
  %bound0335 = icmp ult ptr %.sroa.10.0.i.i.i, %i.mz
  %bound1336 = icmp ult ptr %i.mw, %scevgep334
  %found.conflict337 = and i1 %bound0335, %bound1336
  br i1 %found.conflict337, label %scalar.ph338, label %vector.body340

vector.body340:                                   ; preds = %.noexc112, %vector.body340
  %index341 = phi i64 [ %index.next346.1, %vector.body340 ], [ 0, %.noexc112 ] ; 4 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index341 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %wide.load342 = load <4 x i32>, ptr %i.nc, align 4, !alias.scope !39234, !noalias !39237
  %wide.load343 = load <4 x i32>, ptr %i.nd, align 4, !alias.scope !39234, !noalias !39237
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index341 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %wide.load344 = load <4 x i32>, ptr %i.ne, align 8, !alias.scope !39237
  %wide.load345 = load <4 x i32>, ptr %i.nf, align 8, !alias.scope !39237
  %i.ng = add <4 x i32> %wide.load344, %wide.load342
  %i.nh = add <4 x i32> %wide.load345, %wide.load343
  store <4 x i32> %i.ng, ptr %i.nc, align 4, !alias.scope !39234, !noalias !39237
  store <4 x i32> %i.nh, ptr %i.nd, align 4, !alias.scope !39234, !noalias !39237
  %index.next346 = or disjoint i64 %index341, 8   ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index.next346 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  %wide.load342.1 = load <4 x i32>, ptr %i.ni, align 4, !alias.scope !39234, !noalias !39237
  %wide.load343.1 = load <4 x i32>, ptr %i.nj, align 4, !alias.scope !39234, !noalias !39237
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index.next346 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %wide.load344.1 = load <4 x i32>, ptr %i.nk, align 8, !alias.scope !39237
  %wide.load345.1 = load <4 x i32>, ptr %i.nl, align 8, !alias.scope !39237
  %i.nm = add <4 x i32> %wide.load344.1, %wide.load342.1
  %i.nn = add <4 x i32> %wide.load345.1, %wide.load343.1
  store <4 x i32> %i.nm, ptr %i.ni, align 4, !alias.scope !39234, !noalias !39237
  store <4 x i32> %i.nn, ptr %i.nj, align 4, !alias.scope !39234, !noalias !39237
  %index.next346.1 = add nuw nsw i64 %index341, 16 ; 2 uses
  %i.no = icmp eq i64 %index.next346.1, 256
  br i1 %i.no, label %middle.block347, label %vector.body340, !llvm.loop !39239

scalar.ph338:                                     ; preds = %.noexc112, %scalar.ph338
  %.sroa.01.0.i72 = phi i64 [ %i.oh, %scalar.ph338 ], [ 0, %.noexc112 ] ; 6 uses
  %i.np = or disjoint i64 %.sroa.01.0.i72, 1      ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %.sroa.01.0.i72 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !noundef !27
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %.sroa.01.0.i72
  %i.nt = load i32, ptr %i.ns, align 8, !noundef !27
  %i.nu = add i32 %i.nt, %i.nr
  store i32 %i.nu, ptr %i.nq, align 4
  %i.nv = or disjoint i64 %.sroa.01.0.i72, 2      ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.np ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !noundef !27
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.np
  %i.nz = load i32, ptr %i.ny, align 4, !noundef !27
  %i.oa = add i32 %i.nz, %i.nx
  store i32 %i.oa, ptr %i.nw, align 4
  %i.ob = or disjoint i64 %.sroa.01.0.i72, 3      ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.nv ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4, !noundef !27
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.nv
  %i.of = load i32, ptr %i.oe, align 8, !noundef !27
  %i.og = add i32 %i.of, %i.od
  store i32 %i.og, ptr %i.oc, align 4
  %i.oh = add nuw nsw i64 %.sroa.01.0.i72, 4      ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.ob ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4, !noundef !27
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.ob
  %i.ol = load i32, ptr %i.ok, align 4, !noundef !27
  %i.om = add i32 %i.ol, %i.oj
  store i32 %i.om, ptr %i.oi, align 4
  %exitcond.not.3 = icmp eq i64 %i.oh, 256
  br i1 %exitcond.not.3, label %middle.block347, label %scalar.ph338, !llvm.loop !39240

middle.block347:                                  ; preds = %vector.body340, %scalar.ph338
  %i.on = load i64, ptr %i.co, align 8, !noundef !27
  %i.oo = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.mu, i64 noundef 256, i64 noundef %i.on)
          to label %bb.cj unwind label %.loopexit.split-lp.thread ; 2 uses

bb.cj:                                            ; preds = %middle.block347
  %i.op = extractvalue { float, i64 } %i.oo, 0    ; 2 uses
  %i.oq = extractvalue { float, i64 } %i.oo, 1
  %i.or = uitofp i64 %i.oq to float               ; 2 uses
  %i.os = fcmp olt float %i.op, %i.or
  %.sroa.024.0 = select i1 %i.os, float %i.or, float %i.op ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.028.074
  store float %.sroa.024.0, ptr %i.ot, align 4
  %i.ou = fsub float %.sroa.024.0, %.sroa.022.0
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.sroa.028.074
  %i.ow = load float, ptr %i.ov, align 4, !noundef !27
  %i.ox = fsub float %i.ou, %i.ow
  %i.oy = fadd float %.sroa.0.0, %i.ox            ; 2 uses
  %i.oz = add i64 %i.d, %.sroa.028.074            ; 7 uses
  %i.pa = load i64, ptr %i.cq, align 8, !noundef !27
  %i.pb = add i64 %i.pa, %.sroa.028.074           ; 3 uses
  %i.pc = icmp ult i64 %i.oz, %i.bv
  br i1 %i.pc, label %bb.ck, label %.invoke300

bb.ck:                                            ; preds = %bb.cj
  %i.pd = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.oz ; 9 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.pd, ptr noundef nonnull align 8 dereferenceable(1040) %i.mi, i64 1040, i1 false)
  %i.pe = icmp ult i64 %i.pb, %3
  br i1 %i.pe, label %.noexc112.1, label %.invoke

.noexc112.1:                                      ; preds = %bb.ck
  %i.pf = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.pb ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 1024 ; 2 uses
  %i.ph = load i64, ptr %i.pg, align 8, !alias.scope !39225, !noundef !27
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 1024 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !39228, !noundef !27
  %i.pk = add i64 %i.pj, %i.ph
  store i64 %i.pk, ptr %i.pg, align 8, !alias.scope !39231
  %bound0 = icmp ult ptr %scevgep, %i.pi
  %bound1 = icmp ult ptr %i.pf, %scevgep329
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.noexc112.1, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %.noexc112.1 ] ; 4 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %index ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.pl, align 4, !alias.scope !39241, !noalias !39244
  %wide.load330 = load <4 x i32>, ptr %i.pm, align 4, !alias.scope !39241, !noalias !39244
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %index ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %wide.load331 = load <4 x i32>, ptr %i.pn, align 8, !alias.scope !39244
  %wide.load332 = load <4 x i32>, ptr %i.po, align 8, !alias.scope !39244
  %i.pp = add <4 x i32> %wide.load331, %wide.load
  %i.pq = add <4 x i32> %wide.load332, %wide.load330
  store <4 x i32> %i.pp, ptr %i.pl, align 4, !alias.scope !39241, !noalias !39244
  store <4 x i32> %i.pq, ptr %i.pm, align 4, !alias.scope !39241, !noalias !39244
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %index.next ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.pr, align 4, !alias.scope !39241, !noalias !39244
  %wide.load330.1 = load <4 x i32>, ptr %i.ps, align 4, !alias.scope !39241, !noalias !39244
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %index.next ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %wide.load331.1 = load <4 x i32>, ptr %i.pt, align 8, !alias.scope !39244
  %wide.load332.1 = load <4 x i32>, ptr %i.pu, align 8, !alias.scope !39244
  %i.pv = add <4 x i32> %wide.load331.1, %wide.load.1
  %i.pw = add <4 x i32> %wide.load332.1, %wide.load330.1
  store <4 x i32> %i.pv, ptr %i.pr, align 4, !alias.scope !39241, !noalias !39244
  store <4 x i32> %i.pw, ptr %i.ps, align 4, !alias.scope !39241, !noalias !39244
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.px = icmp eq i64 %index.next.1, 256
  br i1 %i.px, label %middle.block, label %vector.body, !llvm.loop !39246

scalar.ph:                                        ; preds = %.noexc112.1, %scalar.ph
  %.sroa.01.0.i72.1 = phi i64 [ %i.qq, %scalar.ph ], [ 0, %.noexc112.1 ] ; 6 uses
  %i.py = or disjoint i64 %.sroa.01.0.i72.1, 1    ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %.sroa.01.0.i72.1 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !noundef !27
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %.sroa.01.0.i72.1
  %i.qc = load i32, ptr %i.qb, align 8, !noundef !27
  %i.qd = add i32 %i.qc, %i.qa
  store i32 %i.qd, ptr %i.pz, align 4
  %i.qe = or disjoint i64 %.sroa.01.0.i72.1, 2    ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.py ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !noundef !27
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.py
  %i.qi = load i32, ptr %i.qh, align 4, !noundef !27
  %i.qj = add i32 %i.qi, %i.qg
  store i32 %i.qj, ptr %i.qf, align 4
  %i.qk = or disjoint i64 %.sroa.01.0.i72.1, 3    ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qe ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !noundef !27
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qe
  %i.qo = load i32, ptr %i.qn, align 8, !noundef !27
  %i.qp = add i32 %i.qo, %i.qm
  store i32 %i.qp, ptr %i.ql, align 4
  %i.qq = add nuw nsw i64 %.sroa.01.0.i72.1, 4    ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qk ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !noundef !27
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qk
  %i.qu = load i32, ptr %i.qt, align 4, !noundef !27
  %i.qv = add i32 %i.qu, %i.qs
  store i32 %i.qv, ptr %i.qr, align 4
  %exitcond.1.not.3 = icmp eq i64 %i.qq, 256
  br i1 %exitcond.1.not.3, label %middle.block, label %scalar.ph, !llvm.loop !39247

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.qw = load i64, ptr %i.co, align 8, !noundef !27
  %i.qx = invoke { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.pd, i64 noundef 256, i64 noundef %i.qw)
          to label %bb.cl unwind label %.loopexit.split-lp.thread ; 2 uses

bb.cl:                                            ; preds = %middle.block
  %i.qy = icmp ult i64 %i.oz, 26
  br i1 %i.qy, label %.loopexit, label %.invoke300

.loopexit:                                        ; preds = %bb.cl
  %i.qz = extractvalue { float, i64 } %i.qx, 0    ; 2 uses
  %i.ra = extractvalue { float, i64 } %i.qx, 1
  %i.rb = uitofp i64 %i.ra to float               ; 2 uses
  %i.rc = fcmp olt float %i.qz, %i.rb
  %.sroa.024.0.1 = select i1 %i.rc, float %i.rb, float %i.qz ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oz
  store float %.sroa.024.0.1, ptr %i.rd, align 4
  %i.re = fsub float %.sroa.024.0.1, %.sroa.022.0
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.oz
  %i.rg = load float, ptr %i.rf, align 4, !noundef !27
  %i.rh = fsub float %i.re, %i.rg
  %i.ri = fadd float %.sroa.7.0, %i.rh            ; 2 uses
  %i.rj = icmp ult i64 %.sroa.028.175, %i.d       ; 2 uses
  %i.rk = zext i1 %i.rj to i64
  %.sroa.028.1 = add nuw i64 %.sroa.028.175, %i.rk
  br i1 %i.rj, label %bb.z, label %._crit_edge

bb.cm:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %.loopexit.split-lp
  %lpad.phi9 = phi { ptr, i32 } [ %lpad.phi8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %lpad.phi9

.thread:                                          ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

.loopexit.split-lp.thread:                        ; preds = %middle.block347, %middle.block
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

.loopexit.split-lp.loopexit:                      ; preds = %bb.cf
  %lpad.loopexit12 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke302, %.invoke300
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp13, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit12, %.loopexit.split-lp.loopexit ] ; 2 uses
  br i1 %.not10, label %bb.cm, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %.loopexit.split-lp.thread, %.thread, %.loopexit.split-lp
  %lpad.phi8 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split-lp.thread ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i) #38
  br label %bb.cm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h0916bdb0a16a6b62E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef range(i64 0, 4294967296) %3, i8 noundef %4, i8 noundef %5, i8 noundef range(i8 0, 4) %6, i64 noundef %7, ptr noalias noundef nonnull readonly align 4 captures(none) %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 4 captures(none) %10, i64 noundef %11, i64 noundef %12, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %13) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.sroa.0 = alloca [16 x i8], align 8     ; 5 uses
  %.sroa.5.sroa.9.sroa.6 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.5.sroa.12.sroa.0 = alloca [104 x i8], align 8 ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = alloca [88 x i8], align 8                ; 12 uses
  %i.c = alloca [208 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %12, 0                      ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %12, -1
  %.not284.not = icmp ugt i64 %11, %i.d
  br i1 %.not284.not, label %.lr.ph.preheader548, label %bb.cl

.lr.ph.preheader548:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %12, 3                      ; 3 uses
  %i.e = icmp ult i64 %12, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader548.new

.lr.ph.preheader548.new:                          ; preds = %.lr.ph.preheader548
  %unroll_iter = and i64 %12, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader548.new
  %i.f = phi i64 [ 1, %.lr.ph.preheader548.new ], [ %i.z, %.lr.ph ] ; 5 uses
  %.sroa.08.0119 = phi i64 [ 0, %.lr.ph.preheader548.new ], [ %i.y, %.lr.ph ]
  %.sroa.019.0118 = phi i64 [ 0, %.lr.ph.preheader548.new ], [ %i.t, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader548.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.sroa.019.0118
  %i.h = load i32, ptr %i.g, align 4, !noundef !27
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %.sroa.08.0119, %i.i
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !noundef !27
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 4, !noundef !27
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %i.n, %i.r
  %i.t = add nuw i64 %i.f, 3                      ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !noundef !27
end_hunk_0
