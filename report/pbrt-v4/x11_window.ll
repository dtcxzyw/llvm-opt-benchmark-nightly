Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/x11_window?download=true
inline.NumInlined: 89
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_glfwPollEventsX11:bb.a
  %i.me = load i32, ptr %i.md, align 8, !tbaa !438
  %.not265.i = icmp eq i32 %i.mc, %i.me
  br i1 %.not265.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 1300
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !439
  %.not266.i = icmp eq i32 %.pre346.i, %i.mg
  br i1 %.not266.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  store i32 %i.mc, ptr %i.md, align 8, !tbaa !438
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 1300
  store i32 %.pre346.i, ptr %i.mh, align 4, !tbaa !439
  call void @_glfwInputWindowPos(ptr noundef nonnull %i.mb, i32 noundef %i.mc, i32 noundef %.pre346.i) #17
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br label %.critedge291.i

bb.cm:                                            ; preds = %bb.aa
  %.not256.i = icmp eq i32 %i.bu, 0
  br i1 %.not256.i, label %bb.cn, label %.critedge291.i

bb.cn:                                            ; preds = %bb.cm
  %i.mi = load i64, ptr %i.aj, align 8, !tbaa !118 ; 5 uses
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %.critedge291.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 140944), align 8, !tbaa !440
  %i.ml = icmp eq i64 %i.mi, %i.mk
  br i1 %i.ml, label %bb.cp, label %bb.cu

bb.cp:                                            ; preds = %bb.co
  %i.mm = load i64, ptr %i.ai, align 8, !tbaa !118 ; 3 uses
  %.not259.i = icmp eq i64 %i.mm, 0
  br i1 %.not259.i, label %.critedge291.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 140960), align 8, !tbaa !202
  %i.mo = icmp eq i64 %i.mm, %i.mn
  br i1 %i.mo, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.mp = load ptr, ptr %i.e, align 8, !tbaa !427
  call void @_glfwInputWindowCloseRequest(ptr noundef %i.mp) #17
  br label %.critedge291.i

bb.cs:                                            ; preds = %bb.cq
  %i.mq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141000), align 8, !tbaa !203
  %i.mr = icmp eq i64 %i.mm, %i.mq
  br i1 %i.mr, label %bb.ct, label %.critedge291.i

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(192) %6, i64 192, i1 false), !tbaa.struct !441
  %i.ms = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137856), align 8, !tbaa !189 ; 2 uses
  store i64 %i.ms, ptr %i.be, align 8, !tbaa !118
  %i.mt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141840), align 8, !tbaa !135
  %i.mu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.mv = call i32 %i.mt(ptr noundef %i.mu, i64 noundef %i.ms, i32 noundef 0, i64 noundef 1572864, ptr noundef nonnull %2) #17, !inline_history !407 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.critedge291.i

bb.cu:                                            ; preds = %bb.co
  %i.mw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141160), align 8, !tbaa !442
  %i.mx = icmp eq i64 %i.mi, %i.mw
  br i1 %i.mx, label %bb.cv, label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  store ptr null, ptr %i.l, align 8, !tbaa !133
  %i.my = load i64, ptr %i.bd, align 8, !tbaa !118 ; 2 uses
  %i.mz = load i64, ptr %i.ai, align 8, !tbaa !118 ; 2 uses
  store i64 %i.mz, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142376), align 8, !tbaa !443
  %i.na = lshr i64 %i.my, 24
  %i.nb = trunc i64 %i.na to i32                  ; 2 uses
  store i32 %i.nb, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142368), align 8, !tbaa !444
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142384), align 8, !tbaa !445
  %i.nc = icmp slt i32 %i.nb, 6
  br i1 %i.nc, label %bb.cw, label %.critedge293.i

bb.cw:                                            ; preds = %bb.cv
  %i.nd = trunc i64 %i.my to i1                   ; 2 uses
  br i1 %i.nd, label %bb.cx, label %.thread.i

.thread.i:                                        ; preds = %bb.cw
  store ptr %i.aq, ptr %i.l, align 8, !tbaa !133
  br label %.lr.ph332.i

bb.cx:                                            ; preds = %bb.cw
  %i.ne = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141216), align 8, !tbaa !446
  %i.nf = call i64 @_glfwGetWindowPropertyX11(i64 noundef %i.mz, i64 noundef %i.ne, i64 noundef 4, ptr noundef nonnull %i.l) ; 2 uses
  %.pre341.pre.i = load ptr, ptr %i.l, align 8    ; 2 uses
  %.not336.i = icmp eq i64 %i.nf, 0
  br i1 %.not336.i, label %.loopexit326.i, label %.lr.ph332.i

.lr.ph332.i:                                      ; preds = %bb.cx, %.thread.i
  %.0212376.i = phi i64 [ 3, %.thread.i ], [ %i.nf, %bb.cx ]
  %.pre341374.i = phi ptr [ %i.aq, %.thread.i ], [ %.pre341.pre.i, %bb.cx ] ; 3 uses
  %i.ng = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141224), align 8, !tbaa !447 ; 2 uses
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cz
  %i.nh = add i32 %.0211330.i, 1                  ; 2 uses
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %i.nj = icmp ugt i64 %.0212376.i, %i.ni
  br i1 %i.nj, label %bb.cz, label %.loopexit326.i

bb.cz:                                            ; preds = %bb.cy, %.lr.ph332.i
  %i.nk = phi i64 [ 0, %.lr.ph332.i ], [ %i.ni, %bb.cy ]
  %.0211330.i = phi i32 [ 0, %.lr.ph332.i ], [ %i.nh, %bb.cy ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.pre341374.i, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !107
  %i.nn = icmp eq i64 %i.nm, %i.ng
  br i1 %i.nn, label %bb.da, label %bb.cy

bb.da:                                            ; preds = %bb.cz
  store i64 %i.ng, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142384), align 8, !tbaa !445
  br label %.loopexit326.i

.loopexit326.i:                                   ; preds = %bb.cy, %bb.da, %bb.cx
  %.pre341375.i = phi ptr [ %.pre341374.i, %bb.da ], [ %.pre341.pre.i, %bb.cx ], [ %.pre341374.i, %bb.cy ] ; 2 uses
  %i.no = icmp ne ptr %.pre341375.i, null
  %or.cond11.i = select i1 %i.nd, i1 %i.no, i1 false
  br i1 %or.cond11.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.loopexit326.i
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141552), align 8, !tbaa !134
  %i.nq = call i32 %i.np(ptr noundef nonnull %.pre341375.i) #17, !inline_history !407 ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.loopexit326.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %.critedge291.i

bb.dd:                                            ; preds = %bb.cu
  %i.nr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141192), align 8, !tbaa !448
  %i.ns = icmp eq i64 %i.mi, %i.nr
  br i1 %i.ns, label %bb.de, label %bb.dj

bb.de:                                            ; preds = %bb.dd
  %i.nt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142368), align 8, !tbaa !444 ; 3 uses
  %i.nu = icmp slt i32 %i.nt, 6
  br i1 %i.nu, label %bb.df, label %.critedge291.i

bb.df:                                            ; preds = %bb.de
  %i.nv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142384), align 8, !tbaa !445 ; 2 uses
  %.not258.i = icmp eq i64 %i.nv, 0
  br i1 %.not258.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nw = icmp sgt i32 %i.nt, 0
  %i.nx = load i64, ptr %i.aq, align 8
  %.0210.i = select i1 %i.nw, i64 %i.nx, i64 0
  %i.ny = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141416), align 8, !tbaa !114
  %i.nz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.oa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141208), align 8, !tbaa !449 ; 2 uses
  %i.ob = load ptr, ptr %i.e, align 8, !tbaa !427
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1248
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !174
  %i.oe = call i32 %i.ny(ptr noundef %i.nz, i64 noundef %i.oa, i64 noundef %i.nv, i64 noundef %i.oa, i64 noundef %i.od, i64 noundef %.0210.i) #17, !inline_history !407 ; 0 uses
  br label %.critedge291.i

bb.dh:                                            ; preds = %bb.df
  %i.of = icmp sgt i32 %i.nt, 1
  br i1 %i.of, label %bb.di, label %.critedge291.i

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i64 192, i1 false)
  store i32 33, ptr %3, align 8
  %i.og = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142376), align 8, !tbaa !443 ; 2 uses
  store i64 %i.og, ptr %i.ay, align 8, !tbaa !118
  %i.oh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141200), align 8, !tbaa !450
  store i64 %i.oh, ptr %i.az, align 8, !tbaa !118
  store i32 32, ptr %i.ba, align 8, !tbaa !118
  %i.oi = load ptr, ptr %i.e, align 8, !tbaa !427
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1248
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !174
  store i64 %i.ok, ptr %i.bb, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.ol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141840), align 8, !tbaa !135
  %i.om = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.on = call i32 %i.ol(ptr noundef %i.om, i64 noundef %i.og, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %3) #17, !inline_history !407 ; 0 uses
  %i.oo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141544), align 8, !tbaa !218
  %i.op = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.oq = call i32 %i.oo(ptr noundef %i.op) #17, !inline_history !407 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.critedge291.i

bb.dj:                                            ; preds = %bb.dd
  %i.or = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141168), align 8, !tbaa !451
  %i.os = icmp eq i64 %i.mi, %i.or
  br i1 %i.os, label %bb.dk, label %.critedge291.i

bb.dk:                                            ; preds = %bb.dj
  %i.ot = load i64, ptr %i.aq, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #17
  %i.ou = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142368), align 8, !tbaa !444
  %i.ov = icmp slt i32 %i.ou, 6
  br i1 %i.ov, label %bb.dl, label %.critedge297.i

bb.dl:                                            ; preds = %bb.dk
  %i.ow = trunc i64 %i.ot to i32                  ; 2 uses
  %i.ox = and i32 %i.ow, 65535
  %7 = lshr i32 %i.ow, 16
  %i.oy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141952), align 8, !tbaa !210
  %i.oz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.pa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137856), align 8, !tbaa !189
  %i.pb = load ptr, ptr %i.e, align 8, !tbaa !427
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 1248
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !174
  %i.pe = call i32 %i.oy(ptr noundef %i.oz, i64 noundef %i.pa, i64 noundef %i.pd, i32 noundef %7, i32 noundef %i.ox, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.m) #17, !inline_history !407 ; 0 uses
  %i.pf = load ptr, ptr %i.e, align 8, !tbaa !427
  %i.pg = load i32, ptr %i.n, align 4, !tbaa !182
  %i.ph = sitofp i32 %i.pg to double
  %i.pi = load i32, ptr %i.o, align 4, !tbaa !182
  %i.pj = sitofp i32 %i.pi to double
  call void @_glfwInputCursorPos(ptr noundef %i.pf, double noundef %i.ph, double noundef %i.pj) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i64 192, i1 false)
  store i32 33, ptr %4, align 8
  %i.pk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142376), align 8, !tbaa !443 ; 2 uses
  store i64 %i.pk, ptr %i.ar, align 8, !tbaa !118
  %i.pl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141176), align 8, !tbaa !452
  store i64 %i.pl, ptr %i.as, align 8, !tbaa !118
  store i32 32, ptr %i.at, align 8, !tbaa !118
  %i.pm = load ptr, ptr %i.e, align 8, !tbaa !427
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 1248
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !174
  store i64 %i.po, ptr %i.au, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.pp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142384), align 8, !tbaa !445
  %.not257.i = icmp eq i64 %i.pp, 0
  br i1 %.not257.i, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i64 1, ptr %i.aw, align 8, !tbaa !118
  %i.pq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142368), align 8, !tbaa !444
  %i.pr = icmp sgt i32 %i.pq, 1
  br i1 %i.pr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ps = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141184), align 8, !tbaa !453
  store i64 %i.ps, ptr %i.ax, align 8, !tbaa !118
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.pt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141840), align 8, !tbaa !135
  %i.pu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.pv = call i32 %i.pt(ptr noundef %i.pu, i64 noundef %i.pk, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %4) #17, !inline_history !407 ; 0 uses
  %i.pw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141544), align 8, !tbaa !218
  %i.px = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.py = call i32 %i.pw(ptr noundef %i.px) #17, !inline_history !407 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  br label %.critedge291.i

bb.dp:                                            ; preds = %bb.aa
  %i.pz = load i64, ptr %i.ai, align 8, !tbaa !118 ; 2 uses
  %i.qa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141208), align 8, !tbaa !449
  %i.qb = icmp eq i64 %i.pz, %i.qa
  br i1 %i.qb, label %bb.dq, label %.critedge291.i

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #17
  %i.qc = load i64, ptr %i.af, align 8, !tbaa !118
  %i.qd = load i64, ptr %i.ah, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.qe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141672), align 8, !tbaa !105
  %i.qf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.qg = call i32 %i.qe(ptr noundef %i.qf, i64 noundef %i.qc, i64 noundef %i.pz, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0, i64 noundef %i.qd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.p) #17, !inline_history !270 ; 0 uses
  %i.qh = load i64, ptr %i.c, align 8, !tbaa !107 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not254.i = icmp eq i64 %i.qh, 0
  br i1 %.not254.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #17
  %i.qi = load ptr, ptr %i.p, align 8, !tbaa !290
  %i.qj = call ptr @_glfwParseUriList(ptr noundef %i.qi, ptr noundef nonnull %i.q) #17 ; 3 uses
  %i.qk = load ptr, ptr %i.e, align 8, !tbaa !427
  %i.ql = load i32, ptr %i.q, align 4, !tbaa !182
  call void @_glfwInputDrop(ptr noundef %i.qk, i32 noundef %i.ql, ptr noundef %i.qj) #17
  %i.qm = load i32, ptr %i.q, align 4, !tbaa !182
  %i.qn = icmp sgt i32 %i.qm, 0
  br i1 %i.qn, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.dr
  call void @_glfw_free(ptr noundef %i.qj) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #17
  br label %bb.ds

.lr.ph.i:                                         ; preds = %bb.dr, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.dr ] ; 2 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %indvars.iv.i
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !290
  call void @_glfw_free(ptr noundef %i.qp) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.qq = load i32, ptr %i.q, align 4, !tbaa !182
  %i.qr = sext i32 %i.qq to i64
  %i.qs = icmp slt i64 %indvars.iv.next.i, %i.qr
  br i1 %i.qs, label %.lr.ph.i, label %._crit_edge.i

bb.ds:                                            ; preds = %._crit_edge.i, %bb.dq
  %i.qt = load ptr, ptr %i.p, align 8, !tbaa !290 ; 2 uses
  %.not255.i = icmp eq ptr %i.qt, null
  br i1 %.not255.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141552), align 8, !tbaa !134
  %i.qv = call i32 %i.qu(ptr noundef nonnull %i.qt) #17, !inline_history !407 ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.qw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142368), align 8, !tbaa !444
  %i.qx = icmp sgt i32 %i.qw, 1
  br i1 %i.qx, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %5, i8 0, i64 192, i1 false)
  store i32 33, ptr %5, align 8
  %i.qy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 142376), align 8, !tbaa !443 ; 2 uses
  store i64 %i.qy, ptr %i.ak, align 8, !tbaa !118
  %i.qz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141200), align 8, !tbaa !450
  store i64 %i.qz, ptr %i.al, align 8, !tbaa !118
  store i32 32, ptr %i.am, align 8, !tbaa !118
  %i.ra = load ptr, ptr %i.e, align 8, !tbaa !427
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 1248
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !174
  store i64 %i.rc, ptr %i.an, align 8, !tbaa !118
  store i64 %i.qh, ptr %i.ao, align 8, !tbaa !118
  %i.rd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141184), align 8, !tbaa !453
  store i64 %i.rd, ptr %i.ap, align 8, !tbaa !118
  %i.re = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141840), align 8, !tbaa !135
  %i.rf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.rg = call i32 %i.re(ptr noundef %i.rf, i64 noundef %i.qy, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %5) #17, !inline_history !407 ; 0 uses
  %i.rh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141544), align 8, !tbaa !218
  %i.ri = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.rj = call i32 %i.rh(ptr noundef %i.ri) #17, !inline_history !407 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #17
  br label %.critedge291.i

bb.dx:                                            ; preds = %bb.aa
  %i.rk = load i32, ptr %i.aj, align 8, !tbaa !118
  %.off300.i = add i32 %i.rk, -1
  %switch301.i = icmp ult i32 %.off300.i, 2
  br i1 %switch301.i, label %.critedge291.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rl = load ptr, ptr %i.e, align 8, !tbaa !427 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 140
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !253
  switch i32 %i.rn, label %bb.eb [
    i32 212995, label %bb.dz
    i32 212996, label %bb.ea
  ]

bb.dz:                                            ; preds = %bb.dy
  call fastcc void @disableCursor(ptr noundef nonnull %i.rl)
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.ro = getelementptr i8, ptr %i.rl, i64 1248
  %.val304.i = load i64, ptr %i.ro, align 8, !tbaa !174 ; 2 uses
  %i.rp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141680), align 8, !tbaa !291
  %i.rq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !106
  %i.rr = call i32 %i.rp(ptr noundef %i.rq, i64 noundef %.val304.i, i32 noundef 1, i32 noundef 76, i32 noundef 1, i32 noundef 1, i64 noundef %.val304.i, i64 noundef 0, i64 noundef 0) #17, !inline_history !408 ; 0 uses
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dy
  %i.rs = load ptr, ptr %i.e, align 8, !tbaa !427 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 1264
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !175 ; 2 uses
  %.not253.i = icmp eq ptr %i.ru, null
  br i1 %.not253.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141864), align 8, !tbaa !454
  call void %i.rv(ptr noundef nonnull %i.ru) #17, !inline_history !407
  %.pre340.i = load ptr, ptr %i.e, align 8, !tbaa !427
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.rw = phi ptr [ %.pre340.i, %bb.ec ], [ %i.rs, %bb.eb ]
  call void @_glfwInputWindowFocus(ptr noundef %i.rw, i32 noundef 1) #17
  br label %.critedge291.i

bb.ee:                                            ; preds = %bb.aa
  %i.rx = load i32, ptr %i.aj, align 8, !tbaa !118
  %.off302.i = add i32 %i.rx, -1
  %switch303.i = icmp ult i32 %.off302.i, 2
  br i1 %switch303.i, label %.critedge291.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ry = load ptr, ptr %i.e, align 8, !tbaa !427 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 140
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !253
  switch i32 %i.sa, label %bb.ei [
    i32 212995, label %bb.eg
end_hunk_0
