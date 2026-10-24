Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpBacktrackingLineSearch?download=true
inline.NumInlined: 2109
inline.NumDeleted: 474
begin_hunk_0_@_ZN5Ipopt22BacktrackingLineSearch24FindAcceptableTrialPointEv:bb.a
_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i267: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i270, %_ZNK5Ipopt9IpoptData4currEv.exit265
  %.0.i3.i.i.i268 = phi ptr [ %i.kn, %_ZNK5Ipopt9IpoptData4currEv.exit265 ], [ %i.kr, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i270 ] ; 11 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i268, i64 8 ; 6 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !29, !noalias !321 ; 2 uses
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 8, !tbaa !29, !noalias !321
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i268, i64 120 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !124
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i268, i64 48 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !125
  %.not.i272 = icmp eq i32 %i.kw, %i.ky
  br i1 %.not.i272, label %._crit_edge.i273, label %bb.bu

._crit_edge.i273:                                 ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i267
  %.phi.trans.insert.i274 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i268, i64 128
  %.pre.i275 = load double, ptr %.phi.trans.insert.i274, align 8, !tbaa !126
  br label %bb.bv

bb.bu:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i267
  %i.kz = load ptr, ptr %.0.i3.i.i.i268, align 8, !tbaa !31
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 64
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = invoke noundef double %i.lb(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i268)
          to label %.noexc276 unwind label %bb.ca, !inline_history !5 ; 2 uses

.noexc276:                                        ; preds = %bb.bu
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i268, i64 128
  store double %i.lc, ptr %i.ld, align 8, !tbaa !126
  %i.le = load i32, ptr %i.kx, align 8, !tbaa !125
  store i32 %i.le, ptr %i.kv, align 8, !tbaa !124
  %.pre700 = load i32, ptr %i.ks, align 8, !tbaa !29
  %i.lf = add nsw i32 %.pre700, -1
  br label %bb.bv

bb.bv:                                            ; preds = %.noexc276, %._crit_edge.i273
  %i.lg = phi i32 [ %i.kt, %._crit_edge.i273 ], [ %i.lf, %.noexc276 ] ; 2 uses
  %i.lh = phi double [ %.pre.i275, %._crit_edge.i273 ], [ %i.lc, %.noexc276 ] ; 2 uses
  %i.li = fcmp olt double %i.ke, %i.lh
  %.sroa.speculated.i = select i1 %i.li, double %i.lh, double %i.ke
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !322
  %i.ll = fcmp ogt double %.sroa.speculated.i, %i.lk
  %cond.fr = freeze i1 %i.ll                      ; 2 uses
  store i32 %i.lg, ptr %i.ks, align 8, !tbaa !29
  %i.lm = icmp eq i32 %i.lg, 0
  br i1 %i.lm, label %bb.bw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.bw:                                            ; preds = %bb.bv
  %i.ln = load ptr, ptr %.0.i3.i.i.i268, align 8, !tbaa !31
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i268) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.bw, %bb.bv
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !29
  %i.ls = add nsw i32 %i.lr, -1                   ; 2 uses
  store i32 %i.ls, ptr %i.lq, align 8, !tbaa !29
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.bx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit280

bb.bx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.lu = load ptr, ptr %i.kg, align 8, !tbaa !31
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(280) %i.kg) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit280

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit280: ; preds = %bb.bx, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.lx = load i32, ptr %i.jq, align 8, !tbaa !29
  %i.ly = add nsw i32 %i.lx, -1                   ; 2 uses
  store i32 %i.ly, ptr %i.jq, align 8, !tbaa !29
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.by, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit282

bb.by:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit280
  %i.ma = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !31
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  call void %i.mc(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit282

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit282:     ; preds = %bb.by, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit280
  %i.md = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.me = load i32, ptr %i.md, align 8, !tbaa !29
  %i.mf = add nsw i32 %i.me, -1                   ; 2 uses
  store i32 %i.mf, ptr %i.md, align 8, !tbaa !29
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %.split, label %.critedge229

.split:                                           ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit282
  %i.mh = load ptr, ptr %i.je, align 8, !tbaa !31
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(280) %i.je) #23, !inline_history !0
  br i1 %cond.fr, label %.thread549, label %.critedge229.thread

.critedge229:                                     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit282
  br i1 %cond.fr, label %.thread549, label %.critedge229.thread

.thread549:                                       ; preds = %.critedge229, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !127
  br label %bb.cg

.critedge229.thread:                              ; preds = %bb.bo, %bb.bn, %.split, %.critedge229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !127
  br i1 %.1152, label %bb.cg, label %bb.cf

bb.bz:                                            ; preds = %bb.br
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit288.thread

bb.ca:                                            ; preds = %bb.bu
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mm = load i32, ptr %i.ks, align 8, !tbaa !29
  %i.mn = add nsw i32 %i.mm, -1                   ; 2 uses
  store i32 %i.mn, ptr %i.ks, align 8, !tbaa !29
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.cb, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit286.thread

bb.cb:                                            ; preds = %bb.ca
  %i.mp = load ptr, ptr %.0.i3.i.i.i268, align 8, !tbaa !31
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i268) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit286.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit286.thread: ; preds = %bb.ca, %bb.cb
  %i.ms = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !29
  %i.mu = add nsw i32 %i.mt, -1                   ; 2 uses
  store i32 %i.mu, ptr %i.ms, align 8, !tbaa !29
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %bb.cc, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit288.thread

bb.cc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit286.thread
  %i.mw = load ptr, ptr %i.kg, align 8, !tbaa !31
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(280) %i.kg) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit288.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit288.thread: ; preds = %bb.bz, %bb.cc, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit286.thread
  %.pn168.pn.pn555 = phi { ptr, i32 } [ %i.mk, %bb.bz ], [ %i.ml, %bb.cc ], [ %i.ml, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit286.thread ] ; 2 uses
  %i.mz = load i32, ptr %i.jq, align 8, !tbaa !29
  %i.na = add nsw i32 %i.mz, -1                   ; 2 uses
  store i32 %i.na, ptr %i.jq, align 8, !tbaa !29
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.cd, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit290.thread

bb.cd:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit288.thread
  %i.nc = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !31
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit290.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit290.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit288.thread, %bb.cd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !29
  %i.nh = add nsw i32 %i.ng, -1                   ; 2 uses
  store i32 %i.nh, ptr %i.nf, align 8, !tbaa !29
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %bb.ce, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit292

bb.ce:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit290.thread
  %i.nj = load ptr, ptr %i.je, align 8, !tbaa !31
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(280) %i.je) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit292

bb.cf:                                            ; preds = %.critedge229.thread
  %i.nm = invoke noundef zeroext i1 @_ZN5Ipopt22BacktrackingLineSearch14DetectTinyStepEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
          to label %bb.cg unwind label %bb.if     ; 2 uses

bb.cg:                                            ; preds = %.thread549, %bb.cf, %.critedge229.thread
  %or.cond = phi i1 [ true, %.critedge229.thread ], [ %i.nm, %bb.cf ], [ true, %.thread549 ]
  %i.nn = phi i8 [ 1, %.critedge229.thread ], [ 0, %bb.cf ], [ 1, %.thread549 ]
  %i.no = phi i1 [ false, %.critedge229.thread ], [ %i.nm, %bb.cf ], [ false, %.thread549 ]
  %i.np = load i8, ptr %i.io, align 8, !tbaa !55, !range !96, !noundef !97
  %i.nq = trunc nuw i8 %i.np to i1
  %or.cond230 = and i1 %or.cond, %i.nq
  br i1 %or.cond230, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN5Ipopt22BacktrackingLineSearch12StopWatchDogERNS_8SmartPtrINS_14IteratesVectorEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ci unwind label %bb.if

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.3154 = phi i8 [ %i.nn, %bb.cg ], [ 0, %bb.ch ] ; 3 uses
  %.083.shrunk = phi i1 [ %i.no, %bb.cg ], [ false, %bb.ch ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !323 ; 2 uses
  %i.nt = icmp sgt i32 %i.ns, 0
  br i1 %i.nt, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.nu = load i8, ptr %i.io, align 8, !tbaa !55, !range !96, !noundef !97
  %i.nv = or i8 %i.nu, %.3154
  %or.cond3 = icmp ne i8 %i.nv, 0
  %or.cond5 = or i1 %.083.shrunk, %or.cond3
  br i1 %or.cond5, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 223
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !128, !range !96, !noundef !97
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.ef, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nz = load i8, ptr %i.ix, align 4, !tbaa !99, !range !96, !noundef !97
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.ef, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !93
  %.not174 = icmp slt i32 %i.oc, %i.ns
  br i1 %.not174, label %bb.ef, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN5Ipopt22BacktrackingLineSearch13StartWatchDogEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
          to label %bb.ef unwind label %bb.if

bb.co:                                            ; preds = %bb.cj, %bb.ci
  br i1 %.083.shrunk, label %bb.cp, label %bb.ef

bb.cp:                                            ; preds = %bb.co
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !60
  %i.of = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 88
  %i.oh = load double, ptr %i.og, align 8, !tbaa !129
  %i.oi = invoke noundef double @_ZN5Ipopt25IpoptCalculatedQuantities29curr_primal_frac_to_the_boundEd(ptr noundef nonnull align 8 dereferenceable(2185) %i.oe, double noundef %i.oh)
          to label %bb.cq unwind label %bb.if     ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  store double %i.oi, ptr %i.b, align 8, !tbaa !127
  %i.oj = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !31
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.om(ptr noundef nonnull align 8 dereferenceable(40) %i.oj, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.76, double noundef %i.oi)
          to label %bb.cr unwind label %bb.if

bb.cr:                                            ; preds = %bb.cq
  %i.on = load ptr, ptr %i.j, align 8, !tbaa !61  ; 2 uses
  %i.oo = load double, ptr %i.b, align 8, !tbaa !127
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !56, !noalias !324 ; 14 uses
  %.not.i.i.i.i293 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i.i293, label %_ZNK5Ipopt9IpoptData5deltaEv.exit294, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8 ; 2 uses
  %i.os = load i32, ptr %i.or, align 8, !tbaa !29, !noalias !324
  %i.ot = add nsw i32 %i.os, 1
  store i32 %i.ot, ptr %i.or, align 8, !tbaa !29, !noalias !324
  br label %_ZNK5Ipopt9IpoptData5deltaEv.exit294

_ZNK5Ipopt9IpoptData5deltaEv.exit294:             ; preds = %bb.cs, %bb.cr
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 208
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !102, !noalias !325 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !105, !noalias !325 ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i295, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i299, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i296

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i299: ; preds = %_ZNK5Ipopt9IpoptData5deltaEv.exit294
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 232
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !108, !noalias !325
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !110, !noalias !325 ; 2 uses
  %.not3.i.i.i300 = icmp eq ptr %i.oz, null
  br i1 %.not3.i.i.i300, label %bb.ct, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i296

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i296: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i299, %_ZNK5Ipopt9IpoptData5deltaEv.exit294
  %.0.i3.i.i.i297 = phi ptr [ %i.ow, %_ZNK5Ipopt9IpoptData5deltaEv.exit294 ], [ %i.oz, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i299 ] ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i297, i64 8 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !29, !noalias !326
  %i.pc = add nsw i32 %i.pb, 1
  store i32 %i.pc, ptr %i.pa, align 8, !tbaa !29, !noalias !326
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i296, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i299
  %storemerge.i.i298 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i299 ], [ %.0.i3.i.i.i297, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i296 ] ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oq, i64 8 ; 10 uses
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !29, !noalias !327
  %i.pf = add nsw i32 %i.pe, 1
  store i32 %i.pf, ptr %i.pd, align 8, !tbaa !29, !noalias !327
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !105, !noalias !328 ; 2 uses
  %.not.i.i.i303 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i303, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i307, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i304

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i307: ; preds = %bb.ct
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oq, i64 232
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !108, !noalias !328
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !110, !noalias !328, !nonnull !97, !noundef !97
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i304

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i304: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i307, %bb.ct
  %.0.i3.i.i.i305 = phi ptr [ %i.ph, %bb.ct ], [ %i.pl, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i307 ] ; 6 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i305, i64 8 ; 6 uses
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !29, !noalias !329
  %i.po = add nsw i32 %i.pn, 1
  store i32 %i.po, ptr %i.pm, align 8, !tbaa !29, !noalias !329
  invoke void @_ZN5Ipopt9IpoptData31SetTrialPrimalVariablesFromStepEdRKNS_6VectorES3_(ptr noundef nonnull align 8 dereferenceable(2232) %i.on, double noundef %i.oo, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i298, ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i305)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i304
  %i.pp = load i32, ptr %i.pm, align 8, !tbaa !29
  %i.pq = add nsw i32 %i.pp, -1                   ; 2 uses
  store i32 %i.pq, ptr %i.pm, align 8, !tbaa !29
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.cv, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit310

bb.cv:                                            ; preds = %bb.cu
  %i.ps = load ptr, ptr %.0.i3.i.i.i305, align 8, !tbaa !31
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i305) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit310

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit310:     ; preds = %bb.cv, %bb.cu
  %i.pv = load i32, ptr %i.pd, align 8, !tbaa !29
  %i.pw = add nsw i32 %i.pv, -1                   ; 2 uses
  store i32 %i.pw, ptr %i.pd, align 8, !tbaa !29
  %i.px = icmp eq i32 %i.pw, 0
  br i1 %i.px, label %bb.cw, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit312

bb.cw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit310
  %i.py = load ptr, ptr %i.oq, align 8, !tbaa !31
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr noundef nonnull align 8 dereferenceable(280) %i.oq) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit312

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit312: ; preds = %bb.cw, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit310
  %i.qb = getelementptr inbounds nuw i8, ptr %storemerge.i.i298, i64 8 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !29
  %i.qd = add nsw i32 %i.qc, -1                   ; 2 uses
  store i32 %i.qd, ptr %i.qb, align 8, !tbaa !29
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.cx, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314

bb.cx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit312
  %i.qf = load ptr, ptr %storemerge.i.i298, align 8, !tbaa !31
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8
  call void %i.qh(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i298) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314:     ; preds = %bb.cx, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit312
  %i.qi = load i32, ptr %i.pd, align 8, !tbaa !29
  %i.qj = add nsw i32 %i.qi, -1                   ; 2 uses
  store i32 %i.qj, ptr %i.pd, align 8, !tbaa !29
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314
  %i.ql = load ptr, ptr %i.oq, align 8, !tbaa !31
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(280) %i.oq) #23, !inline_history !0
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314
  %i.qo = load ptr, ptr %i.od, align 8, !tbaa !60 ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !31
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 56
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = invoke noundef double %i.qr(ptr noundef nonnull align 8 dereferenceable(2185) %i.qo)
          to label %bb.da unwind label %bb.dg     ; 0 uses

bb.da:                                            ; preds = %bb.cz
  %i.qt = load ptr, ptr %i.od, align 8, !tbaa !60 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !31
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 72
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = invoke noundef double %i.qw(ptr noundef nonnull align 8 dereferenceable(2185) %i.qt)
          to label %bb.di unwind label %bb.dg     ; 0 uses

bb.db:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i304
  %i.qy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qz = load i32, ptr %i.pm, align 8, !tbaa !29
  %i.ra = add nsw i32 %i.qz, -1                   ; 2 uses
  store i32 %i.ra, ptr %i.pm, align 8, !tbaa !29
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %bb.dc, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit318.thread

bb.dc:                                            ; preds = %bb.db
  %i.rc = load ptr, ptr %.0.i3.i.i.i305, align 8, !tbaa !31
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i305) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit318.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit318.thread: ; preds = %bb.db, %bb.dc
  %i.rf = load i32, ptr %i.pd, align 8, !tbaa !29
  %i.rg = add nsw i32 %i.rf, -1                   ; 2 uses
  store i32 %i.rg, ptr %i.pd, align 8, !tbaa !29
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %bb.dd, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit320.thread

bb.dd:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit318.thread
  %i.ri = load ptr, ptr %i.oq, align 8, !tbaa !31
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(280) %i.oq) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit320.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit320.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit318.thread, %bb.dd
  %i.rl = getelementptr inbounds nuw i8, ptr %storemerge.i.i298, i64 8 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !29
  %i.rn = add nsw i32 %i.rm, -1                   ; 2 uses
  store i32 %i.rn, ptr %i.rl, align 8, !tbaa !29
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %bb.de, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322

bb.de:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit320.thread
  %i.rp = load ptr, ptr %storemerge.i.i298, align 8, !tbaa !31
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i298) #23, !inline_history !6
end_hunk_0
begin_hunk_1_@_ZN5Ipopt22BacktrackingLineSearch24FindAcceptableTrialPointEv:bb.a
  %.not.i.i.i.i341 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i.i.i341, label %_ZNK5Ipopt9IpoptData5deltaEv.exit342, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8 ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !29, !noalias !334
  %i.uh = add nsw i32 %i.ug, 1
  store i32 %i.uh, ptr %i.uf, align 8, !tbaa !29, !noalias !334
  br label %_ZNK5Ipopt9IpoptData5deltaEv.exit342

_ZNK5Ipopt9IpoptData5deltaEv.exit342:             ; preds = %bb.dq, %bb.dp
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 208
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !102, !noalias !335
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !105, !noalias !335 ; 2 uses
  %.not.i.i.i343 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i343, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i347, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i344

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i347: ; preds = %_ZNK5Ipopt9IpoptData5deltaEv.exit342
  %i.um = getelementptr inbounds nuw i8, ptr %i.ue, i64 232
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !108, !noalias !335
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !110, !noalias !335, !nonnull !97, !noundef !97
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i344

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i344: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i347, %_ZNK5Ipopt9IpoptData5deltaEv.exit342
  %.0.i3.i.i.i345 = phi ptr [ %i.ul, %_ZNK5Ipopt9IpoptData5deltaEv.exit342 ], [ %i.up, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i347 ] ; 11 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i345, i64 8 ; 6 uses
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !29, !noalias !336 ; 2 uses
  %i.us = add nsw i32 %i.ur, 1
  store i32 %i.us, ptr %i.uq, align 8, !tbaa !29, !noalias !336
  %i.ut = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i345, i64 120 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !124
  %i.uv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i345, i64 48 ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !125
  %.not.i350 = icmp eq i32 %i.uu, %i.uw
  br i1 %.not.i350, label %._crit_edge.i351, label %bb.dr

._crit_edge.i351:                                 ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i344
  %.phi.trans.insert.i352 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i345, i64 128
  %.pre.i353 = load double, ptr %.phi.trans.insert.i352, align 8, !tbaa !126
  br label %bb.ds

bb.dr:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i344
  %i.ux = load ptr, ptr %.0.i3.i.i.i345, align 8, !tbaa !31
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 64
  %i.uz = load ptr, ptr %i.uy, align 8
  %i.va = invoke noundef double %i.uz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i345)
          to label %.noexc354 unwind label %bb.dz, !inline_history !5 ; 2 uses

.noexc354:                                        ; preds = %bb.dr
  %i.vb = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i345, i64 128
  store double %i.va, ptr %i.vb, align 8, !tbaa !126
  %i.vc = load i32, ptr %i.uv, align 8, !tbaa !125
  store i32 %i.vc, ptr %i.ut, align 8, !tbaa !124
  %.pre702 = load i32, ptr %i.uq, align 8, !tbaa !29
  %i.vd = add nsw i32 %.pre702, -1
  br label %bb.ds

bb.ds:                                            ; preds = %.noexc354, %._crit_edge.i351
  %i.ve = phi i32 [ %i.ur, %._crit_edge.i351 ], [ %i.vd, %.noexc354 ] ; 2 uses
  %i.vf = phi double [ %.pre.i353, %._crit_edge.i351 ], [ %i.va, %.noexc354 ] ; 2 uses
  %i.vg = fcmp olt double %i.uc, %i.vf
  %.sroa.speculated.i356 = select i1 %i.vg, double %i.vf, double %i.uc
  store i32 %i.ve, ptr %i.uq, align 8, !tbaa !29
  %i.vh = icmp eq i32 %i.ve, 0
  br i1 %i.vh, label %bb.dt, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit358

bb.dt:                                            ; preds = %bb.ds
  %i.vi = load ptr, ptr %.0.i3.i.i.i345, align 8, !tbaa !31
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8
  call void %i.vk(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i345) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit358

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit358:     ; preds = %bb.dt, %bb.ds
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ue, i64 8 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !29
  %i.vn = add nsw i32 %i.vm, -1                   ; 2 uses
  store i32 %i.vn, ptr %i.vl, align 8, !tbaa !29
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %bb.du, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit360

bb.du:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit358
  %i.vp = load ptr, ptr %i.ue, align 8, !tbaa !31
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(280) %i.ue) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit360

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit360: ; preds = %bb.du, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit358
  %i.vs = load i32, ptr %i.to, align 8, !tbaa !29
  %i.vt = add nsw i32 %i.vs, -1                   ; 2 uses
  store i32 %i.vt, ptr %i.to, align 8, !tbaa !29
  %i.vu = icmp eq i32 %i.vt, 0
  br i1 %i.vu, label %bb.dv, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit362

bb.dv:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit360
  %i.vv = load ptr, ptr %.0.i3.i.i.i330, align 8, !tbaa !31
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i330) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit362

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit362:     ; preds = %bb.dv, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit360
  %i.vy = getelementptr inbounds nuw i8, ptr %i.tc, i64 8 ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !29
  %i.wa = add nsw i32 %i.vz, -1                   ; 2 uses
  store i32 %i.wa, ptr %i.vy, align 8, !tbaa !29
  %i.wb = icmp eq i32 %i.wa, 0
  br i1 %i.wb, label %bb.dw, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit364

bb.dw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit362
  %i.wc = load ptr, ptr %i.tc, align 8, !tbaa !31
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(280) %i.tc) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit364

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit364: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit362, %bb.dw
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !337
  %i.wh = fcmp olt double %.sroa.speculated.i356, %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  br i1 %i.wh, label %bb.dx, label %bb.ee

bb.dx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit364
  store i8 1, ptr %i.wi, align 8, !tbaa !77
  br label %bb.eg

bb.dy:                                            ; preds = %bb.do
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit368.thread

bb.dz:                                            ; preds = %bb.dr
  %i.wk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wl = load i32, ptr %i.uq, align 8, !tbaa !29
  %i.wm = add nsw i32 %i.wl, -1                   ; 2 uses
  store i32 %i.wm, ptr %i.uq, align 8, !tbaa !29
  %i.wn = icmp eq i32 %i.wm, 0
  br i1 %i.wn, label %bb.ea, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit366.thread

bb.ea:                                            ; preds = %bb.dz
  %i.wo = load ptr, ptr %.0.i3.i.i.i345, align 8, !tbaa !31
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8
  call void %i.wq(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i345) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit366.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit366.thread: ; preds = %bb.dz, %bb.ea
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ue, i64 8 ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !29
  %i.wt = add nsw i32 %i.ws, -1                   ; 2 uses
  store i32 %i.wt, ptr %i.wr, align 8, !tbaa !29
  %i.wu = icmp eq i32 %i.wt, 0
  br i1 %i.wu, label %bb.eb, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit368.thread

bb.eb:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit366.thread
  %i.wv = load ptr, ptr %i.ue, align 8, !tbaa !31
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(280) %i.ue) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit368.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit368.thread: ; preds = %bb.dy, %bb.eb, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit366.thread
  %.pn182.pn.pn578 = phi { ptr, i32 } [ %i.wj, %bb.dy ], [ %i.wk, %bb.eb ], [ %i.wk, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit366.thread ] ; 2 uses
  %i.wy = load i32, ptr %i.to, align 8, !tbaa !29
  %i.wz = add nsw i32 %i.wy, -1                   ; 2 uses
  store i32 %i.wz, ptr %i.to, align 8, !tbaa !29
  %i.xa = icmp eq i32 %i.wz, 0
  br i1 %i.xa, label %bb.ec, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit370.thread

bb.ec:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit368.thread
  %i.xb = load ptr, ptr %.0.i3.i.i.i330, align 8, !tbaa !31
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8
  call void %i.xd(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i330) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit370.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit370.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit368.thread, %bb.ec
  %i.xe = getelementptr inbounds nuw i8, ptr %i.tc, i64 8 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !29
  %i.xg = add nsw i32 %i.xf, -1                   ; 2 uses
  store i32 %i.xg, ptr %i.xe, align 8, !tbaa !29
  %i.xh = icmp eq i32 %i.xg, 0
  br i1 %i.xh, label %bb.ed, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.ed:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit370.thread
  %i.xi = load ptr, ptr %i.tc, align 8, !tbaa !31
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8
  call void %i.xk(ptr noundef nonnull align 8 dereferenceable(280) %i.tc) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.ee:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit364
  store i8 0, ptr %i.wi, align 8, !tbaa !77
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.xl, align 8, !tbaa !77
  br label %bb.eg

bb.eg:                                            ; preds = %bb.dx, %bb.ee, %bb.ef
  %.086 = phi i1 [ false, %bb.ef ], [ true, %bb.ee ], [ true, %bb.dx ]
  %.285 = phi i1 [ false, %bb.ef ], [ %.184571, %bb.ee ], [ %.184571, %bb.dx ] ; 2 uses
  %i.xm = trunc nuw i8 %.3154 to i1
  %or.cond7 = or i1 %.285, %i.xm
  br i1 %or.cond7, label %bb.fc, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 223 ; 2 uses
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !128, !range !96, !noundef !97
  %i.xp = trunc nuw i8 %i.xo to i1
  br i1 %i.xp, label %bb.ei, label %.peel.begin

bb.ei:                                            ; preds = %bb.eh
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !133 ; 2 uses
  %i.xs = add nsw i32 %i.xr, 1
  store i32 %i.xs, ptr %i.xq, align 8, !tbaa !133
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !338
  %.not193 = icmp slt i32 %i.xr, %i.xu
  br i1 %.not193, label %bb.ej, label %.thread583

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !tbaa !134
  %i.xv = invoke noundef zeroext i1 @_ZN5Ipopt22BacktrackingLineSearch16TrySoftRestoStepERNS_8SmartPtrINS_14IteratesVectorEEERb(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.ek unwind label %bb.en

bb.ek:                                            ; preds = %bb.ej
  br i1 %i.xv, label %bb.el, label %.split804

bb.el:                                            ; preds = %bb.ek
  %i.xw = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 136 ; 2 uses
  store i8 115, ptr %i.xx, align 8, !tbaa !98
  %i.xy = load i8, ptr %i.c, align 1, !tbaa !134, !range !96, !noundef !97
  %i.xz = trunc nuw i8 %i.xy to i1
  br i1 %i.xz, label %bb.em, label %.split804.thread

bb.em:                                            ; preds = %bb.el
  store i8 0, ptr %i.xn, align 1, !tbaa !128
  store i32 0, ptr %i.xq, align 8, !tbaa !133
  store i8 83, ptr %i.xx, align 8, !tbaa !98
  br label %.split804.thread

bb.en:                                            ; preds = %bb.ej
  %i.ya = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.split804.thread:                                 ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.hw

.split804:                                        ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.thread583

.peel.begin:                                      ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 0, ptr %i.e, align 1, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i8 0, ptr %i.f, align 1, !tbaa !134
  %i.yf = invoke noundef zeroext i1 @_ZN5Ipopt22BacktrackingLineSearch24DoBacktrackingLineSearchEbRdRbS2_RiS2_RNS_8SmartPtrINS_14IteratesVectorEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.eo unwind label %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.eo:                                            ; preds = %.peel.begin
  %i.yg = load i8, ptr %i.io, align 8, !tbaa !55, !range !96, !noundef !97
  %i.yh = trunc nuw i8 %i.yg to i1
  br i1 %i.yh, label %bb.ep, label %.split803

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.yf, label %._crit_edge.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.yi = load i32, ptr %i.yb, align 8, !tbaa !135 ; 2 uses
  %i.yj = add nsw i32 %i.yi, 1
  store i32 %i.yj, ptr %i.yb, align 8, !tbaa !135
  %i.yk = load i8, ptr %i.d, align 1, !tbaa !134, !range !96, !noundef !97
  %i.yl = trunc nuw i8 %i.yk to i1
  br i1 %i.yl, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ym = load i32, ptr %i.yc, align 8, !tbaa !339
  %.not188.peel = icmp slt i32 %i.yi, %i.ym
  br i1 %.not188.peel, label %.split803.thread, label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  invoke void @_ZN5Ipopt22BacktrackingLineSearch12StopWatchDogERNS_8SmartPtrINS_14IteratesVectorEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.peel.next unwind label %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp

.peel.next:                                       ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.et

bb.et:                                            ; preds = %bb.fa, %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 0, ptr %i.e, align 1, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i8 0, ptr %i.f, align 1, !tbaa !134
  %i.yn = invoke noundef zeroext i1 @_ZN5Ipopt22BacktrackingLineSearch24DoBacktrackingLineSearchEbRdRbS2_RiS2_RNS_8SmartPtrINS_14IteratesVectorEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.eu unwind label %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.yo = load i8, ptr %i.io, align 8, !tbaa !55, !range !96, !noundef !97
  %i.yp = trunc nuw i8 %i.yo to i1
  br i1 %i.yp, label %bb.ev, label %.split803

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.yn, label %._crit_edge.i.i, label %bb.ex

._crit_edge.i.i:                                  ; preds = %bb.ev, %bb.ep
  store i8 0, ptr %i.io, align 8, !tbaa !55
  %i.yq = load ptr, ptr %i.j, align 8, !tbaa !61  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.yd, ptr %8, align 8, !tbaa !66
  store i8 87, ptr %i.yd, align 8, !tbaa !71
  store i64 1, ptr %i.ye, align 8, !tbaa !72
  %i.yr = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.yr, align 1, !tbaa !71
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 168
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !72
  %i.yu = icmp eq i64 %i.yt, 4611686018427387903
  br i1 %i.yu, label %bb.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.ew:                                            ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #25
          to label %.noexc374 unwind label %.loopexit.split-lp

.noexc374:                                        ; preds = %bb.ew
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yq, i64 160
  %i.yw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.yv, ptr noundef nonnull %i.yd, i64 noundef 1)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.yx = load ptr, ptr %8, align 8, !tbaa !70    ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.yd
  br i1 %i.yy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.yz = load i64, ptr %i.yd, align 8, !tbaa !71
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.za) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i377: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.zb = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !31
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.ze = load ptr, ptr %i.zd, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.ze(ptr noundef nonnull align 8 dereferenceable(40) %i.zb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.78)
          to label %.split803.thread unwind label %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i377, %bb.et, %bb.ez, %.peel.begin, %bb.es
  %lpad.loopexit.split-lp835 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

.loopexit.split-lp:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.ew
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.zf = load ptr, ptr %8, align 8, !tbaa !70    ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.yd
  br i1 %i.zg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %.loopexit.split-lp
  %i.zh = load i64, ptr %i.yd, align 8, !tbaa !71
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.fb

bb.ex:                                            ; preds = %bb.ev
  %i.zj = load i32, ptr %i.yb, align 8, !tbaa !135 ; 2 uses
  %i.zk = add nsw i32 %i.zj, 1
  store i32 %i.zk, ptr %i.yb, align 8, !tbaa !135
  %i.zl = load i8, ptr %i.d, align 1, !tbaa !134, !range !96, !noundef !97
  %i.zm = trunc nuw i8 %i.zl to i1
  br i1 %i.zm, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.zn = load i32, ptr %i.yc, align 8, !tbaa !339
  %.not188 = icmp slt i32 %i.zj, %i.zn
  br i1 %.not188, label %.split803.thread, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  invoke void @_ZN5Ipopt22BacktrackingLineSearch12StopWatchDogERNS_8SmartPtrINS_14IteratesVectorEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.fa unwind label %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.et, !llvm.loop !284

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp
  %.pn191 = phi { ptr, i32 } [ %lpad.loopexit.split-lp835, %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.split803.thread:                                 ; preds = %bb.er, %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.hw

.split803:                                        ; preds = %bb.eu, %bb.eo
  %.lcssa = phi i1 [ %i.yf, %bb.eo ], [ %i.yn, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br i1 %.lcssa, label %bb.hw, label %.thread583

bb.fc:                                            ; preds = %bb.eg
  br i1 %.086, label %bb.hw, label %.thread583

.thread583:                                       ; preds = %.split804, %.split803, %bb.ei, %bb.fc
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 221
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !75, !range !96, !noundef !97
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %.thread583
  %i.zr = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !31
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.zu = load ptr, ptr %i.zt, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.zu(ptr noundef nonnull align 8 dereferenceable(40) %i.zr, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.79)
          to label %bb.fe unwind label %bb.if

bb.fe:                                            ; preds = %bb.fd
  store i8 1, ptr %i.co, align 2, !tbaa !76
  br label %bb.jb

bb.ff:                                            ; preds = %.thread583
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 223 ; 4 uses
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !128, !range !96, !noundef !97 ; 3 uses
  %i.zx = or i8 %i.zw, %.3154
  %or.cond9.not = icmp eq i8 %i.zx, 0
  br i1 %or.cond9.not, label %bb.fg, label %.thread587

bb.fg:                                            ; preds = %bb.ff
  %i.zy = load i8, ptr %i.ix, align 4, !tbaa !99, !range !96, !noundef !97
  %i.zz = trunc nuw i8 %i.zy to i1
  br i1 %i.zz, label %.thread587, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aaa = load ptr, ptr %i.h, align 8, !tbaa !63 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !31
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.aad(ptr noundef nonnull align 8 dereferenceable(40) %i.aaa, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.80)
          to label %bb.fi unwind label %bb.if

bb.fi:                                            ; preds = %bb.fh
  %i.aae = load ptr, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !31
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 40
  %i.aah = load ptr, ptr %i.aag, align 8
  invoke void %i.aah(ptr noundef nonnull align 8 dereferenceable(49) %i.aae)
          to label %bb.fj unwind label %bb.if

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.aai = invoke noundef zeroext i1 @_ZN5Ipopt22BacktrackingLineSearch16TrySoftRestoStepERNS_8SmartPtrINS_14IteratesVectorEEERb(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.aai, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  %i.aaj = load i8, ptr %i.g, align 1, !tbaa !134, !range !96, !noundef !97
  %i.aak = trunc nuw i8 %i.aaj to i1
  br i1 %i.aak, label %.thread590, label %bb.fn

bb.fm:                                            ; preds = %bb.fj
  %i.aal = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.fn:                                            ; preds = %bb.fl
  store i8 1, ptr %i.zv, align 1, !tbaa !128
  br label %.thread590

.thread590:                                       ; preds = %bb.fl, %bb.fn
  %.sink817 = phi i8 [ 115, %bb.fn ], [ 83, %bb.fl ]
  %i.aam = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 136
  store i8 %.sink817, ptr %i.aan, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.jb

bb.fo:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %.pre703 = load i8, ptr %i.zv, align 1, !tbaa !128, !range !96
  br label %.thread587

.thread587:                                       ; preds = %bb.fg, %bb.ff, %bb.fo
  %i.aao = phi i8 [ %i.zw, %bb.fg ], [ %i.zw, %bb.ff ], [ %.pre703, %bb.fo ]
  %i.aap = trunc nuw i8 %i.aao to i1
  br i1 %i.aap, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %.thread587
  %i.aaq = load ptr, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !31
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 40
  %i.aat = load ptr, ptr %i.aas, align 8
  invoke void %i.aat(ptr noundef nonnull align 8 dereferenceable(49) %i.aaq)
          to label %bb.fq unwind label %bb.if

bb.fq:                                            ; preds = %bb.fp, %.thread587
  %i.aau = load ptr, ptr %i.be, align 8, !tbaa !59 ; 3 uses
  %.not.i382 = icmp eq ptr %i.aau, null
  br i1 %.not.i382, label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384.thread, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !31
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 32
  %i.aax = load ptr, ptr %i.aaw, align 8
  %i.aay = invoke noundef zeroext i1 %i.aax(ptr noundef nonnull align 8 dereferenceable(49) %i.aau)
          to label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384 unwind label %bb.if, !inline_history !310

_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384: ; preds = %bb.fr
  br i1 %i.aay, label %bb.fs, label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384.thread

bb.fs:                                            ; preds = %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384
  %i.aaz = call ptr @__cxa_allocate_exception(i64 112) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.81, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ft unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.thread

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.fu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZN5Ipopt24ACCEPTABLE_POINT_REACHEDC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.aaz, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 570)
          to label %bb.fv unwind label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  invoke void @__cxa_throw(ptr nonnull %i.aaz, ptr nonnull @_ZTIN5Ipopt24ACCEPTABLE_POINT_REACHEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #25
          to label %bb.ji unwind label %bb.fw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.thread: ; preds = %bb.fs
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split820

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.076 = phi i1 [ false, %bb.fv ], [ true, %bb.fu ] ; 2 uses
  %i.abb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abc = load ptr, ptr %11, align 8, !tbaa !70  ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.abe = icmp eq ptr %i.abc, %i.abd
  br i1 %i.abe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.fw
  %i.abf = load i64, ptr %i.abd, align 8, !tbaa !71
  %i.abg = add i64 %i.abf, 1
  call void @_ZdlPvm(ptr noundef %i.abc, i64 noundef %i.abg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.abh = load ptr, ptr %9, align 8, !tbaa !70   ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.abj = icmp eq ptr %i.abh, %i.abi
  br i1 %i.abj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread: ; preds = %bb.ft
  %i.abk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.abl = load ptr, ptr %9, align 8, !tbaa !70   ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.abn = icmp eq ptr %i.abl, %i.abm
  br i1 %i.abn, label %.sink.split820, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread
  %i.abo = load i64, ptr %i.abm, align 8, !tbaa !71
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abp) #24
  br label %.sink.split820

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  %i.abq = load i64, ptr %i.abi, align 8, !tbaa !71
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abr) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.076, label %bb.fx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.076, label %bb.fx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.sink.split820:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.thread
  %.pn213.pn593.ph = phi { ptr, i32 } [ %i.abk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.thread ], [ %i.aba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.thread ], [ %i.abk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.fx

bb.fx:                                            ; preds = %.sink.split820, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390
  %.pn213.pn593 = phi { ptr, i32 } [ %i.abb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388 ], [ %i.abb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390 ], [ %.pn213.pn593.ph, %.sink.split820 ]
  call void @__cxa_free_exception(ptr %i.aaz) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

end_hunk_1
