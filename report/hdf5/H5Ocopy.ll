Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Ocopy?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@H5O__copy_header_real:bb.a
  %i.ld = add i64 %.0463719, 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cc, %bb.cf, %bb.cg
  %.1464 = phi i64 [ %i.ld, %bb.cg ], [ %.0463719, %bb.cf ], [ %.0463719, %bb.cc ] ; 2 uses
  %.0462 = phi ptr [ @H5O_MSG_NULL, %bb.cg ], [ %i.ks, %bb.cf ], [ %i.ks, %bb.cc ]
  %i.le = getelementptr inbounds nuw i8, ptr %.0462, i64 112 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !121 ; 2 uses
  %.not550 = icmp eq ptr %i.lf, null
  br i1 %.not550, label %bb.cv, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 24 ; 6 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !122 ; 2 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.cj, label %bb.cs

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i32 0, ptr %i.e, align 4, !tbaa !25
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !123
  %i.ll = load ptr, ptr %0, align 8, !tbaa !23
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kr, i64 9 ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !124
  %i.lo = zext i8 %i.ln to i32
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !119
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !125
  %i.lt = call ptr %i.lk(ptr noundef %i.ll, ptr noundef nonnull %i.ab, i32 noundef %i.lo, ptr noundef nonnull %i.e, i64 noundef %i.lq, ptr noundef %i.ls) #7 ; 2 uses
  store ptr %i.lt, ptr %i.lg, align 8, !tbaa !122
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lv = load i32, ptr %i.e, align 4, !tbaa !25
  %i.lw = and i32 %i.lv, 2
  %.not551 = icmp eq i32 %i.lw, 0
  br i1 %.not551, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lx = load ptr, ptr %0, align 8, !tbaa !23
  %i.ly = call i32 @H5F_get_intent(ptr noundef %i.lx) #7
  %i.lz = and i32 %i.ly, 1
  %.not552 = icmp eq i32 %i.lz, 0
  br i1 %.not552, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i8 1, ptr %i.ma, align 8, !tbaa !126
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.mb = load i8, ptr %i.lm, align 1, !tbaa !124
  %i.mc = and i8 %i.mb, 64
  %.not553 = icmp eq i8 %i.mc, 0
  %.pre774.pre786.pre790 = load ptr, ptr %i.lg, align 8, !tbaa !122 ; 5 uses
  br i1 %.not553, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i32 3, ptr %.pre774.pre786.pre790, align 8, !tbaa !128
  %i.md = load ptr, ptr %0, align 8, !tbaa !23
  %i.me = getelementptr inbounds nuw i8, ptr %.pre774.pre786.pre790, i64 8
  store ptr %i.md, ptr %i.me, align 8, !tbaa !129
  %i.mf = load i32, ptr %i.ks, align 8, !tbaa !118
  %i.mg = getelementptr inbounds nuw i8, ptr %.pre774.pre786.pre790, i64 16
  store i32 %i.mf, ptr %i.mg, align 8, !tbaa !130
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !131
  %i.mj = getelementptr inbounds nuw i8, ptr %.pre774.pre786.pre790, i64 24
  store i32 %i.mi, ptr %i.mj, align 8, !tbaa !56
  %i.mk = load ptr, ptr %i.km, align 8, !tbaa !110
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !134
  %i.mm = load ptr, ptr %i.lg, align 8, !tbaa !122
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  store i64 %i.ml, ptr %i.mn, align 8, !tbaa !56
  %.pre774.pre786.pre = load ptr, ptr %i.lg, align 8, !tbaa !122
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pre774.pre786 = phi ptr [ %.pre774.pre786.pre, %bb.co ], [ %.pre774.pre786.pre790, %bb.cn ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ks, i64 144
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !135 ; 2 uses
  %.not554 = icmp eq ptr %i.mp, null
  br i1 %.not554, label %.thread577, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !131
  %i.ms = call i32 %i.mp(ptr noundef %.pre774.pre786, i32 noundef %i.mr) #7
  %i.mt = icmp slt i32 %i.ms, 0
  br i1 %i.mt, label %bb.cr, label %..thread577_crit_edge

..thread577_crit_edge:                            ; preds = %bb.cq
  %.pre774.pre = load ptr, ptr %i.lg, align 8, !tbaa !122
  br label %.thread577

.thread577:                                       ; preds = %..thread577_crit_edge, %bb.cp
  %.pre774 = phi ptr [ %.pre774.pre, %..thread577_crit_edge ], [ %.pre774.pre786, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %.pre = load ptr, ptr %i.le, align 8, !tbaa !121
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cj
  %H5E_CANTSET_g.sink = phi ptr [ @H5E_CANTDECODE_g, %bb.cj ], [ @H5E_CANTSET_g, %bb.cq ]
  %.str.24.sink = phi ptr [ @.str.23, %bb.cj ], [ @.str.24, %bb.cq ]
  %i.mu = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.mv = load i64, ptr %H5E_CANTSET_g.sink, align 8, !tbaa !14
  %i.mw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_header_real, i32 noundef 380, i64 noundef %i.mu, i64 noundef %i.mv, ptr noundef nonnull %.str.24.sink) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.fq

bb.cs:                                            ; preds = %.thread577, %bb.ci
  %i.mx = phi ptr [ %.pre774, %.thread577 ], [ %i.lh, %bb.ci ]
  %i.my = phi ptr [ %.pre, %.thread577 ], [ %i.lf, %bb.ci ]
  %i.mz = load ptr, ptr %1, align 8, !tbaa !23
  store ptr %i.mz, ptr %i.kn, align 8, !tbaa !136
  %i.na = load ptr, ptr %0, align 8, !tbaa !23
  %i.nb = getelementptr inbounds nuw i8, ptr %calloc, i64 %i.kp ; 2 uses
  %i.nc = call i32 %i.my(ptr noundef %i.na, ptr noundef %i.mx, ptr noundef nonnull %i.nb, ptr noundef %2, ptr noundef %.0460) #7
  %i.nd = icmp slt i32 %i.nc, 0
  br i1 %i.nd, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ne = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.nf = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.ng = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_header_real, i32 noundef 392, i64 noundef %i.ne, i64 noundef %i.nf, ptr noundef nonnull @.str.25) #7 ; 0 uses
  br label %bb.fq

bb.cu:                                            ; preds = %bb.cs
  %i.nh = load i8, ptr %i.nb, align 1, !tbaa !9, !range !10, !noundef !11
  %i.ni = zext nneg i8 %i.nh to i64
  %spec.select = add i64 %.1464, %i.ni
  %.pre775 = load i64, ptr %i.ke, align 8, !tbaa !112
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ch
  %i.nj = phi i64 [ %i.ko, %bb.ch ], [ %.pre775, %bb.cu ] ; 3 uses
  %.2465 = phi i64 [ %.1464, %bb.ch ], [ %spec.select, %bb.cu ] ; 2 uses
  %i.nk = add i32 %.0478718, 1                    ; 2 uses
  %i.nl = zext i32 %i.nk to i64                   ; 2 uses
  %i.nm = icmp ugt i64 %i.nj, %i.nl
  br i1 %i.nm, label %bb.cc, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.cv, %bb.cb
  %.0463.lcssa = phi i64 [ 0, %bb.cb ], [ %.2465, %bb.cv ]
  %.lcssa703 = phi i64 [ 0, %bb.cb ], [ %i.nj, %bb.cv ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 4 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !30, !range !10, !noundef !11
  %i.np = trunc nuw i8 %i.no to i1
  %i.nq = select i1 %i.np, i64 0, i64 %.0463.lcssa ; 2 uses
  %.sink773 = sub i64 %.lcssa703, %i.nq           ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ht, i64 336 ; 6 uses
  store i64 %.sink773, ptr %i.nr, align 8, !tbaa !112
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ht, i64 344 ; 2 uses
  store i64 %.sink773, ptr %i.ns, align 8, !tbaa !137
  %.not524 = icmp eq i64 %.lcssa703, %i.nq
  br i1 %.not524, label %.preheader692.thread, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge
  %i.nt = call noalias ptr @H5FL_seq_calloc(ptr noundef nonnull @H5_H5O_mesg_t_seq_free_list, i64 noundef %.sink773) #7 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ht, i64 352
  store ptr %i.nt, ptr %i.nu, align 8, !tbaa !113
  %i.nv = icmp eq ptr %i.nt, null
  br i1 %i.nv, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.nw = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !14
  %i.nx = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.ny = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_header_real, i32 noundef 412, i64 noundef %i.nw, i64 noundef %i.nx, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %bb.fq

bb.cy:                                            ; preds = %bb.cw
  %.pre777 = load i64, ptr %i.nr, align 8, !tbaa !112 ; 2 uses
  %.not748 = icmp eq i64 %.pre777, 0
  br i1 %.not748, label %.preheader692.thread, label %.lr.ph724

.lr.ph724:                                        ; preds = %bb.cy
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ht, i64 352
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ab, i64 408
  br label %bb.cz

.preheader692.thread:                             ; preds = %bb.cy, %._crit_edge
  %.pre782846 = load i8, ptr %i.ia, align 8, !tbaa !104
  br label %._crit_edge729

.preheader692:                                    ; preds = %bb.du
  %.not749 = icmp eq i64 %i.uu, 0
  %.pre782 = load i8, ptr %i.ia, align 8, !tbaa !104 ; 3 uses
  br i1 %.not749, label %._crit_edge729, label %.lr.ph728

.lr.ph728:                                        ; preds = %.preheader692
  %i.oc = icmp eq i8 %.pre782, 1
  %i.od = getelementptr inbounds nuw i8, ptr %i.ht, i64 352
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !113 ; 10 uses
  br i1 %i.oc, label %.lr.ph728.split.us.preheader, label %.lr.ph728.split

.lr.ph728.split.us.preheader:                     ; preds = %.lr.ph728
  %min.iters.check901 = icmp ult i64 %i.uu, 11
  br i1 %min.iters.check901, label %.lr.ph728.split.us.preheader913, label %vector.scevcheck899

vector.scevcheck899:                              ; preds = %.lr.ph728.split.us.preheader
  %i.of = add i64 %i.uu, -1                       ; 2 uses
  %i.og = and i64 %i.of, 4294967295
  %i.oh = icmp eq i64 %i.og, 4294967295
  %i.oi = icmp ugt i64 %i.of, 4294967295
  %i.oj = or i1 %i.oh, %i.oi
  br i1 %i.oj, label %.lr.ph728.split.us.preheader913, label %vector.ph902

vector.ph902:                                     ; preds = %vector.scevcheck899
  %i.ok = and i64 %i.uu, 3                        ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 0
  %i.om = select i1 %i.ol, i64 4, i64 %i.ok
  %n.vec903 = sub nsw i64 %i.uu, %i.om            ; 2 uses
  br label %vector.body904

vector.body904:                                   ; preds = %vector.body904, %vector.ph902
  %index905 = phi i64 [ 0, %vector.ph902 ], [ %index.next908, %vector.body904 ] ; 5 uses
  %vec.phi906 = phi <2 x i64> [ zeroinitializer, %vector.ph902 ], [ %i.pf, %vector.body904 ]
  %vec.phi907 = phi <2 x i64> [ zeroinitializer, %vector.ph902 ], [ %i.pg, %vector.body904 ]
  %i.on = add <2 x i64> %vec.phi906, splat (i64 8)
  %i.oo = add <2 x i64> %vec.phi907, splat (i64 8)
  %i.op = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %index905
  %i.oq = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %index905
  %i.or = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %index905
  %i.os = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %index905
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 88
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 136
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 184
  %i.ox = load i64, ptr %i.ot, align 8, !tbaa !119
  %i.oy = load i64, ptr %i.ou, align 8, !tbaa !119
  %i.oz = insertelement <2 x i64> poison, i64 %i.ox, i64 0
  %i.pa = insertelement <2 x i64> %i.oz, i64 %i.oy, i64 1
  %i.pb = load i64, ptr %i.ov, align 8, !tbaa !119
  %i.pc = load i64, ptr %i.ow, align 8, !tbaa !119
  %i.pd = insertelement <2 x i64> poison, i64 %i.pb, i64 0
  %i.pe = insertelement <2 x i64> %i.pd, i64 %i.pc, i64 1
  %i.pf = add <2 x i64> %i.on, %i.pa              ; 2 uses
  %i.pg = add <2 x i64> %i.oo, %i.pe              ; 2 uses
  %index.next908 = add nuw i64 %index905, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next908, %n.vec903
  br i1 %i.ph, label %middle.block909, label %vector.body904, !llvm.loop !70

middle.block909:                                  ; preds = %vector.body904
  %bin.rdx910 = add <2 x i64> %i.pg, %i.pf
  %i.pi = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx910)
  br label %.lr.ph728.split.us.preheader913

.lr.ph728.split.us.preheader913:                  ; preds = %vector.scevcheck899, %.lr.ph728.split.us.preheader, %middle.block909
  %indvars.iv765.ph = phi i64 [ 0, %vector.scevcheck899 ], [ 0, %.lr.ph728.split.us.preheader ], [ %n.vec903, %middle.block909 ]
  %.0458727.us.ph = phi i64 [ 0, %vector.scevcheck899 ], [ 0, %.lr.ph728.split.us.preheader ], [ %i.pi, %middle.block909 ]
  br label %.lr.ph728.split.us

.lr.ph728.split.us:                               ; preds = %.lr.ph728.split.us.preheader913, %.lr.ph728.split.us
  %indvars.iv765 = phi i64 [ %indvars.iv.next766, %.lr.ph728.split.us ], [ %indvars.iv765.ph, %.lr.ph728.split.us.preheader913 ] ; 2 uses
  %.0458727.us = phi i64 [ %i.pn, %.lr.ph728.split.us ], [ %.0458727.us.ph, %.lr.ph728.split.us.preheader913 ]
  %i.pj = add i64 %.0458727.us, 8
  %i.pk = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %indvars.iv765
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !119
  %i.pn = add i64 %i.pj, %i.pm                    ; 2 uses
  %indvars.iv.next766 = add i64 %indvars.iv765, 1 ; 2 uses
  %i.po = and i64 %indvars.iv.next766, 4294967295
  %i.pp = icmp samesign ugt i64 %i.uu, %i.po
  br i1 %i.pp, label %.lr.ph728.split.us, label %.thread591, !llvm.loop !71

.lr.ph728.split:                                  ; preds = %.lr.ph728
  %i.pq = load i8, ptr %i.in, align 1, !tbaa !105
  %i.pr = lshr i8 %i.pq, 1
  %i.ps = and i8 %i.pr, 2
  %i.pt = or disjoint i8 %i.ps, 4
  %i.pu = zext nneg i8 %i.pt to i64               ; 2 uses
  %min.iters.check = icmp ult i64 %i.uu, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph728.split
  %i.pv = add i64 %i.uu, -1                       ; 2 uses
  %i.pw = and i64 %i.pv, 4294967295
  %i.px = icmp eq i64 %i.pw, 4294967295
  %i.py = icmp ugt i64 %i.pv, 4294967295
  %i.pz = or i1 %i.px, %i.py
  br i1 %i.pz, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.qa = and i64 %i.uu, 3                        ; 2 uses
  %i.qb = icmp eq i64 %i.qa, 0
  %i.qc = select i1 %i.qb, i64 4, i64 %i.qa
  %n.vec = sub nsw i64 %i.uu, %i.qc               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.pu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qv, %vector.body ]
  %vec.phi898 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.qw, %vector.body ]
  %i.qd = add <2 x i64> %vec.phi, %broadcast.splat
  %i.qe = add <2 x i64> %vec.phi898, %broadcast.splat
  %i.qf = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %index
  %i.qg = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %index
  %i.qh = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %index
  %i.qi = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %index
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 40
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 88
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 136
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 184
  %i.qn = load i64, ptr %i.qj, align 8, !tbaa !119
  %i.qo = load i64, ptr %i.qk, align 8, !tbaa !119
  %i.qp = insertelement <2 x i64> poison, i64 %i.qn, i64 0
  %i.qq = insertelement <2 x i64> %i.qp, i64 %i.qo, i64 1
  %i.qr = load i64, ptr %i.ql, align 8, !tbaa !119
  %i.qs = load i64, ptr %i.qm, align 8, !tbaa !119
  %i.qt = insertelement <2 x i64> poison, i64 %i.qr, i64 0
  %i.qu = insertelement <2 x i64> %i.qt, i64 %i.qs, i64 1
  %i.qv = add <2 x i64> %i.qd, %i.qq              ; 2 uses
  %i.qw = add <2 x i64> %i.qe, %i.qu              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qx = icmp eq i64 %index.next, %n.vec
  br i1 %i.qx, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.qw, %i.qv
  %i.qy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph728.split, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph728.split ], [ %n.vec, %middle.block ]
  %.0458727.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph728.split ], [ %i.qy, %middle.block ]
  br label %scalar.ph

bb.cz:                                            ; preds = %.lr.ph724, %bb.du
  %i.qz = phi i64 [ %.pre777, %.lr.ph724 ], [ %i.uu, %bb.du ]
  %i.ra = phi i64 [ 0, %.lr.ph724 ], [ %i.uw, %bb.du ] ; 4 uses
  %.3466722 = phi i64 [ 0, %.lr.ph724 ], [ %.5468, %bb.du ] ; 2 uses
  %.1479721 = phi i32 [ 0, %.lr.ph724 ], [ %i.uv, %bb.du ]
  %i.rb = load i8, ptr %i.nn, align 1, !tbaa !30, !range !10, !noundef !11 ; 2 uses
  %i.rc = icmp eq i8 %i.rb, 0
  br i1 %i.rc, label %.preheader693, label %.loopexit694

.preheader693:                                    ; preds = %bb.cz
  %invariant.gep = getelementptr i8, ptr %calloc, i64 %i.ra
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.preheader693
  %.4467 = phi i64 [ %i.rf, %bb.da ], [ %.3466722, %.preheader693 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.4467
  %i.rd = load i8, ptr %gep, align 1, !tbaa !9, !range !10, !noundef !11
  %i.re = trunc nuw i8 %i.rd to i1
  %i.rf = add i64 %.4467, 1
  br i1 %i.re, label %bb.da, label %.loopexit694, !llvm.loop !73

.loopexit694:                                     ; preds = %bb.da, %bb.cz
  %.5468 = phi i64 [ %.3466722, %bb.cz ], [ %.4467, %bb.da ] ; 2 uses
  %i.rg = load ptr, ptr %i.nz, align 8, !tbaa !113
  %i.rh = getelementptr [48 x i8], ptr %i.rg, i64 %.5468
  %i.ri = getelementptr [48 x i8], ptr %i.rh, i64 %i.ra ; 8 uses
  %i.rj = load ptr, ptr %i.oa, align 8, !tbaa !113
  %i.rk = getelementptr inbounds nuw [48 x i8], ptr %i.rj, i64 %i.ra ; 9 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 12 ; 3 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !131
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !131
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 9 ; 3 uses
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !124
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 9 ; 6 uses
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !124
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !119 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rk, i64 40 ; 2 uses
  store i64 %i.rs, ptr %i.rt, align 8, !tbaa !119
  %i.ru = load ptr, ptr %i.ri, align 8, !tbaa !116 ; 3 uses
  store ptr %i.ru, ptr %i.rk, align 8, !tbaa !116
  %i.rv = trunc nuw i8 %i.rb to i1
  br i1 %i.rv, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %.loopexit694
  %i.rw = getelementptr inbounds nuw i8, ptr %calloc, i64 %i.ra
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !9, !range !10, !noundef !11
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store ptr @H5O_MSG_NULL, ptr %i.rk, align 8, !tbaa !116
  store i8 0, ptr %i.rq, align 1, !tbaa !124
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store i8 1, ptr %i.rz, align 8, !tbaa !126
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %.loopexit694
  %i.sa = phi ptr [ @H5O_MSG_NULL, %bb.dc ], [ %i.ru, %bb.db ], [ %i.ru, %.loopexit694 ] ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 120
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !140
  %.not540 = icmp eq ptr %i.sc, null
  br i1 %.not540, label %bb.du, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ri, i64 24 ; 6 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !122 ; 2 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %bb.df, label %bb.do

bb.df:                                            ; preds = %bb.de
  %i.sg = load ptr, ptr %i.ri, align 8, !tbaa !116 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store i32 0, ptr %i.h, align 4, !tbaa !25
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !123
  %i.sj = load ptr, ptr %0, align 8, !tbaa !23
  %i.sk = load i8, ptr %i.ro, align 1, !tbaa !124
  %i.sl = zext i8 %i.sk to i32
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !125
  %i.so = call ptr %i.si(ptr noundef %i.sj, ptr noundef nonnull %i.ab, i32 noundef %i.sl, ptr noundef nonnull %i.h, i64 noundef %i.rs, ptr noundef %i.sn) #7 ; 2 uses
  store ptr %i.so, ptr %i.sd, align 8, !tbaa !122
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.dn, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sq = load i32, ptr %i.h, align 4, !tbaa !25
  %i.sr = and i32 %i.sq, 2
  %.not541 = icmp eq i32 %i.sr, 0
  br i1 %.not541, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ss = load ptr, ptr %0, align 8, !tbaa !23
  %i.st = call i32 @H5F_get_intent(ptr noundef %i.ss) #7
  %i.su = and i32 %i.st, 1
  %.not542 = icmp eq i32 %i.su, 0
  br i1 %.not542, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store i8 1, ptr %i.sv, align 8, !tbaa !126
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  %i.sw = load i8, ptr %i.ro, align 1, !tbaa !124
  %i.sx = and i8 %i.sw, 64
  %.not543 = icmp eq i8 %i.sx, 0
  %.pre778.pre788.pre792 = load ptr, ptr %i.sd, align 8, !tbaa !122 ; 5 uses
  br i1 %.not543, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store i32 3, ptr %.pre778.pre788.pre792, align 8, !tbaa !128
  %i.sy = load ptr, ptr %0, align 8, !tbaa !23
  %i.sz = getelementptr inbounds nuw i8, ptr %.pre778.pre788.pre792, i64 8
  store ptr %i.sy, ptr %i.sz, align 8, !tbaa !129
  %i.ta = load i32, ptr %i.sg, align 8, !tbaa !118
  %i.tb = getelementptr inbounds nuw i8, ptr %.pre778.pre788.pre792, i64 16
  store i32 %i.ta, ptr %i.tb, align 8, !tbaa !130
  %i.tc = load i32, ptr %i.rl, align 4, !tbaa !131
  %i.td = getelementptr inbounds nuw i8, ptr %.pre778.pre788.pre792, i64 24
  store i32 %i.tc, ptr %i.td, align 8, !tbaa !56
  %i.te = load ptr, ptr %i.ob, align 8, !tbaa !110
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !134
  %i.tg = load ptr, ptr %i.sd, align 8, !tbaa !122
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  store i64 %i.tf, ptr %i.th, align 8, !tbaa !56
  %.pre778.pre788.pre = load ptr, ptr %i.sd, align 8, !tbaa !122
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pre778.pre788 = phi ptr [ %.pre778.pre788.pre, %bb.dk ], [ %.pre778.pre788.pre792, %bb.dj ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sg, i64 144
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !135 ; 2 uses
  %.not544 = icmp eq ptr %i.tj, null
  br i1 %.not544, label %.thread581, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.tk = load i32, ptr %i.rl, align 4, !tbaa !131
  %i.tl = call i32 %i.tj(ptr noundef %.pre778.pre788, i32 noundef %i.tk) #7
  %i.tm = icmp slt i32 %i.tl, 0
  br i1 %i.tm, label %bb.dn, label %..thread581_crit_edge

..thread581_crit_edge:                            ; preds = %bb.dm
  %.pre778.pre = load ptr, ptr %i.sd, align 8, !tbaa !122
  br label %.thread581

.thread581:                                       ; preds = %..thread581_crit_edge, %bb.dl
  %.pre778 = phi ptr [ %.pre778.pre, %..thread581_crit_edge ], [ %.pre778.pre788, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  br label %bb.do

bb.dn:                                            ; preds = %bb.dm, %bb.df
  %H5E_CANTSET_g.sink886 = phi ptr [ @H5E_CANTDECODE_g, %bb.df ], [ @H5E_CANTSET_g, %bb.dm ]
  %.str.24.sink885 = phi ptr [ @.str.23, %bb.df ], [ @.str.24, %bb.dm ]
  %i.tn = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.to = load i64, ptr %H5E_CANTSET_g.sink886, align 8, !tbaa !14
  %i.tp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_header_real, i32 noundef 459, i64 noundef %i.tn, i64 noundef %i.to, ptr noundef nonnull %.str.24.sink885) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  br label %.thread586

bb.do:                                            ; preds = %.thread581, %bb.de
  %i.tq = phi ptr [ %.pre778, %.thread581 ], [ %i.se, %bb.de ]
  %i.tr = load i8, ptr %i.rq, align 1, !tbaa !124
  %i.ts = and i8 %i.tr, -67
  %i.tt = zext i8 %i.ts to i32
  store i32 %i.tt, ptr %i.g, align 4, !tbaa !25
  store i8 0, ptr %i.f, align 1, !tbaa !9
  %i.tu = load ptr, ptr %0, align 8, !tbaa !23
  %i.tv = load ptr, ptr %1, align 8, !tbaa !23
  %i.tw = call ptr @H5O__msg_copy_file(ptr noundef nonnull %i.sa, ptr noundef %i.tu, ptr noundef %i.tq, ptr noundef %i.tv, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %2, ptr noundef %.0460) #7 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !122
  %i.ty = icmp eq ptr %i.tw, null
  br i1 %i.ty, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.tz = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ua = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !14
  %i.ub = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_header_real, i32 noundef 471, i64 noundef %i.tz, i64 noundef %i.ua, ptr noundef nonnull @.str.26) #7 ; 0 uses
  br label %.thread586

bb.dq:                                            ; preds = %bb.do
  %i.uc = load i32, ptr %i.g, align 4, !tbaa !25  ; 3 uses
  %i.ud = load i8, ptr %i.rq, align 1, !tbaa !124
  %i.ue = and i8 %i.ud, 2
  %.not546 = icmp eq i8 %i.ue, 0
  %i.uf = and i32 %i.uc, 2
  %i.ug = icmp eq i32 %i.uf, 0
  %.not547.not = xor i1 %i.ug, %.not546
  br i1 %.not547.not, label %.thread848, label %bb.dr

.thread848:                                       ; preds = %bb.dq
  store i8 1, ptr %i.f, align 1, !tbaa !9
  %i.uh = trunc i32 %i.uc to i8
  store i8 %i.uh, ptr %i.rq, align 1, !tbaa !124
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %.pre780 = load i8, ptr %i.f, align 1, !tbaa !9, !range !10
  %i.ui = trunc nuw i8 %.pre780 to i1
  %i.uj = trunc i32 %i.uc to i8
  store i8 %i.uj, ptr %i.rq, align 1, !tbaa !124
  br i1 %i.ui, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.thread848, %bb.dr
  %i.uk = load i8, ptr %i.ia, align 8, !tbaa !104
  %i.ul = icmp eq i8 %i.uk, 1
  %i.um = load ptr, ptr %1, align 8, !tbaa !23
  %i.un = load ptr, ptr %i.rk, align 8, !tbaa !116
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !118
  %i.up = call i64 @H5O_msg_raw_size(ptr noundef %i.um, i32 noundef %i.uo, i1 noundef zeroext false, ptr noundef nonnull %i.tw) #7 ; 2 uses
  %i.uq = add i64 %i.up, 7
  %i.ur = and i64 %i.uq, -8
  %i.us = select i1 %i.ul, i64 %i.ur, i64 %i.up
  store i64 %i.us, ptr %i.rt, align 8, !tbaa !119
  br label %bb.dt

.thread586:                                       ; preds = %bb.dp, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.fq

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %i.ut = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store i8 1, ptr %i.ut, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %.pre781 = load i64, ptr %i.nr, align 8, !tbaa !112
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dd
  %i.uu = phi i64 [ %.pre781, %bb.dt ], [ %i.qz, %bb.dd ] ; 13 uses
  %i.uv = add i32 %.1479721, 1                    ; 2 uses
  %i.uw = zext i32 %i.uv to i64                   ; 2 uses
  %i.ux = icmp ugt i64 %i.uu, %i.uw
  br i1 %i.ux, label %bb.cz, label %.preheader692, !llvm.loop !74

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0458727 = phi i64 [ %i.vc, %scalar.ph ], [ %.0458727.ph, %scalar.ph.preheader ]
  %i.uy = add i64 %.0458727, %i.pu
  %i.uz = getelementptr inbounds nuw [48 x i8], ptr %i.oe, i64 %indvars.iv
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 40
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !119
  %i.vc = add i64 %i.uy, %i.vb                    ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.vd = and i64 %indvars.iv.next, 4294967295
  %i.ve = icmp samesign ugt i64 %i.uu, %i.vd
  br i1 %i.ve, label %scalar.ph, label %._crit_edge729, !llvm.loop !75

._crit_edge729:                                   ; preds = %scalar.ph, %.preheader692.thread, %.preheader692
  %.pre782847 = phi i8 [ %.pre782, %.preheader692 ], [ %.pre782846, %.preheader692.thread ], [ %.pre782, %scalar.ph ] ; 4 uses
  %.0458.lcssa = phi i64 [ 0, %.preheader692 ], [ 0, %.preheader692.thread ], [ %i.vc, %scalar.ph ] ; 12 uses
  %i.vf = icmp ugt i8 %.pre782847, 1
  br i1 %i.vf, label %bb.dv, label %.thread591

bb.dv:                                            ; preds = %._crit_edge729
  %i.vg = load i8, ptr %i.in, align 1, !tbaa !105 ; 3 uses
  %i.vh = and i8 %i.vg, -4                        ; 3 uses
  store i8 %i.vh, ptr %i.in, align 1, !tbaa !105
  %i.vi = icmp ugt i64 %.0458.lcssa, 4294967295
  br i1 %i.vi, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.vj = or i8 %i.vg, 3                          ; 2 uses
  store i8 %i.vj, ptr %i.in, align 1, !tbaa !105
  br label %.thread594

bb.dx:                                            ; preds = %bb.dv
  %i.vk = icmp samesign ugt i64 %.0458.lcssa, 65535
  br i1 %i.vk, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.vl = or disjoint i8 %i.vh, 2                 ; 2 uses
  store i8 %i.vl, ptr %i.in, align 1, !tbaa !105
  br label %.thread594

bb.dz:                                            ; preds = %bb.dx
  %i.vm = icmp samesign ugt i64 %.0458.lcssa, 255
  br i1 %i.vm, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.vn = or disjoint i8 %i.vh, 1                 ; 2 uses
  store i8 %i.vn, ptr %i.in, align 1, !tbaa !105
  br label %.thread594

bb.eb:                                            ; preds = %bb.dz
  %i.vo = icmp samesign ult i64 %.0458.lcssa, 22
  br i1 %i.vo, label %bb.ec, label %..thread594_crit_edge

.thread591:                                       ; preds = %.lr.ph728.split.us, %._crit_edge729
  %.0458.lcssa856 = phi i64 [ %.0458.lcssa, %._crit_edge729 ], [ %i.pn, %.lr.ph728.split.us ] ; 6 uses
  %.pre782847855 = phi i8 [ %.pre782847, %._crit_edge729 ], [ 1, %.lr.ph728.split.us ] ; 2 uses
  %i.vp = icmp ult i64 %.0458.lcssa856, 22
  br i1 %i.vp, label %.thread592, label %bb.ef

.thread592:                                       ; preds = %.thread591
  %i.vq = sub nuw nsw i64 22, %.0458.lcssa856     ; 3 uses
  %.not887 = icmp eq i8 %.pre782847855, 0
  br i1 %.not887, label %.thread592..thread593_crit_edge, label %.thread593.thread

.thread593.thread:                                ; preds = %.thread592
  %i.vr = icmp ult i64 %.0458.lcssa856, 15
  %.mux863 = select i1 %i.vr, i64 %i.vq, i64 8    ; 2 uses
  br label %bb.ee

.thread592..thread593_crit_edge:                  ; preds = %.thread592
  %.pre783 = load i8, ptr %i.in, align 1, !tbaa !105
  %.pre794 = lshr i8 %.pre783, 1
  %.pre795 = and i8 %.pre794, 2
  %.pre797 = or disjoint i8 %.pre795, 4
  %.pre799 = zext nneg i8 %.pre797 to i64
  %i.vs = icmp samesign uge i64 %i.vq, %.pre799
  br label %.thread593

bb.ec:                                            ; preds = %bb.eb
  %i.vt = sub nuw nsw i64 22, %.0458.lcssa        ; 4 uses
  %i.vu = lshr i8 %i.vg, 1
  %i.vv = and i8 %i.vu, 2
  %i.vw = or disjoint i8 %i.vv, 4
  %i.vx = zext nneg i8 %i.vw to i64
  %i.vy = icmp samesign ult i64 %i.vt, %i.vx
  br i1 %i.vy, label %bb.ee, label %.thread593

.thread593:                                       ; preds = %bb.ec, %.thread592..thread593_crit_edge
  %.0458.lcssa859 = phi i64 [ %.0458.lcssa, %bb.ec ], [ %.0458.lcssa856, %.thread592..thread593_crit_edge ] ; 2 uses
  %.pre782847854 = phi i8 [ %.pre782847, %bb.ec ], [ 0, %.thread592..thread593_crit_edge ] ; 2 uses
  %i.vz = phi i64 [ %i.vt, %bb.ec ], [ %i.vq, %.thread592..thread593_crit_edge ]
  %i.wa = phi i1 [ true, %bb.ec ], [ %i.vs, %.thread592..thread593_crit_edge ] ; 2 uses
  %.mux = select i1 %i.wa, i64 %i.vz, i64 8       ; 2 uses
  br i1 %i.wa, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.thread593
  %i.wb = load i8, ptr %i.in, align 1, !tbaa !105
  %i.wc = lshr i8 %i.wb, 1
  %i.wd = and i8 %i.wc, 2
  %i.we = or disjoint i8 %i.wd, 4
  %i.wf = zext nneg i8 %i.we to i64               ; 2 uses
  br label %bb.ee

bb.ee:                                            ; preds = %.thread593.thread, %.thread593, %bb.ed, %bb.ec
  %.0458.lcssa858 = phi i64 [ %.0458.lcssa, %bb.ec ], [ %.0458.lcssa859, %.thread593 ], [ %.0458.lcssa859, %bb.ed ], [ %.0458.lcssa856, %.thread593.thread ]
  %.pre782847853 = phi i8 [ %.pre782847, %bb.ec ], [ %.pre782847854, %.thread593 ], [ %.pre782847854, %bb.ed ], [ 1, %.thread593.thread ]
  %.0456 = phi i64 [ 0, %bb.ec ], [ %.mux, %.thread593 ], [ %i.wf, %bb.ed ], [ %.mux863, %.thread593.thread ]
  %.0454 = phi i64 [ %i.vt, %bb.ec ], [ 0, %.thread593 ], [ 0, %bb.ed ], [ 0, %.thread593.thread ]
  %.1 = phi i64 [ %i.vt, %bb.ec ], [ %.mux, %.thread593 ], [ %i.wf, %bb.ed ], [ %.mux863, %.thread593.thread ]
  %i.wg = add nuw nsw i64 %.1, %.0458.lcssa858
  br label %bb.ef

bb.ef:                                            ; preds = %.thread591, %bb.ee
  %.pre782847851 = phi i8 [ %.pre782847853, %bb.ee ], [ %.pre782847855, %.thread591 ]
  %.1459 = phi i64 [ %i.wg, %bb.ee ], [ %.0458.lcssa856, %.thread591 ] ; 2 uses
  %.1457 = phi i64 [ %.0456, %bb.ee ], [ 0, %.thread591 ] ; 2 uses
  %.1455 = phi i64 [ %.0454, %bb.ee ], [ 0, %.thread591 ] ; 2 uses
  %i.wh = icmp eq i8 %.pre782847851, 1
  br i1 %i.wh, label %bb.eg, label %..thread594_crit_edge

..thread594_crit_edge:                            ; preds = %bb.eb, %bb.ef
  %.1455871 = phi i64 [ %.1455, %bb.ef ], [ 0, %bb.eb ]
  %.1457870 = phi i64 [ %.1457, %bb.ef ], [ 0, %bb.eb ]
  %.1459869 = phi i64 [ %.1459, %bb.ef ], [ %.0458.lcssa, %bb.eb ]
  %.pre784 = load i8, ptr %i.in, align 1, !tbaa !105
  br label %.thread594

.thread594:                                       ; preds = %..thread594_crit_edge, %bb.dw, %bb.ea, %bb.dy
  %i.wi = phi i8 [ %.pre784, %..thread594_crit_edge ], [ %i.vl, %bb.dy ], [ %i.vn, %bb.ea ], [ %i.vj, %bb.dw ]
  %.1455602 = phi i64 [ %.1455871, %..thread594_crit_edge ], [ 0, %bb.dy ], [ 0, %bb.ea ], [ 0, %bb.dw ]
  %.1457600 = phi i64 [ %.1457870, %..thread594_crit_edge ], [ 0, %bb.dy ], [ 0, %bb.ea ], [ 0, %bb.dw ]
  %.1459598 = phi i64 [ %.1459869, %..thread594_crit_edge ], [ %.0458.lcssa, %bb.dy ], [ %.0458.lcssa, %bb.ea ], [ %.0458.lcssa, %bb.dw ]
  %i.wj = zext i8 %i.wi to i32                    ; 3 uses
  %i.wk = lshr i32 %i.wj, 1
  %i.wl = and i32 %i.wk, 16
  %i.wm = lshr i32 %i.wj, 2
  %i.wn = and i32 %i.wm, 4
  %i.wo = and i32 %i.wj, 3
  %i.wp = shl nuw nsw i32 1, %i.wo
  %i.wq = or disjoint i32 %i.wl, %i.wn
  %i.wr = or disjoint i32 %i.wq, 10
  %i.ws = add nuw nsw i32 %i.wr, %i.wp
  %i.wt = zext nneg i32 %i.ws to i64
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.thread594
  %.1455603 = phi i64 [ %.1455602, %.thread594 ], [ %.1455, %bb.ef ]
  %.1457601 = phi i64 [ %.1457600, %.thread594 ], [ %.1457, %bb.ef ] ; 2 uses
  %.1459599 = phi i64 [ %.1459598, %.thread594 ], [ %.1459, %bb.ef ]
  %i.wu = phi i64 [ %i.wt, %.thread594 ], [ 16, %bb.ef ]
  %i.wv = add i64 %i.wu, %.1459599                ; 3 uses
  %i.ww = load ptr, ptr %1, align 8, !tbaa !23
  %i.wx = call i64 @H5MF_alloc(ptr noundef %i.ww, i32 noundef 6, i64 noundef %i.wv) #7 ; 3 uses
  %i.wy = load ptr, ptr %i.jy, align 8, !tbaa !110
  store i64 %i.wx, ptr %i.wy, align 8, !tbaa !134
  %i.wz = icmp eq i64 %i.wx, -1
  br i1 %i.wz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.xa = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !14
  %i.xb = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.xc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_header_real, i32 noundef 557, i64 noundef %i.xa, i64 noundef %i.xb, ptr noundef nonnull @.str.27) #7 ; 0 uses
  br label %bb.fq

bb.ei:                                            ; preds = %bb.eg
  %i.xd = call noalias ptr @H5FL_blk_calloc(ptr noundef nonnull @H5_chunk_image_blk_free_list, i64 noundef %i.wv) #7 ; 4 uses
  %i.xe = load ptr, ptr %i.jy, align 8, !tbaa !110 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  store ptr %i.xd, ptr %i.xf, align 8, !tbaa !141
  %i.xg = icmp eq ptr %i.xd, null
  br i1 %i.xg, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.xh = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !14
  %i.xi = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.xj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_header_real, i32 noundef 570, i64 noundef %i.xh, i64 noundef %i.xi, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %bb.fq

bb.ek:                                            ; preds = %bb.ei
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i64 %i.wv, ptr %i.xk, align 8, !tbaa !142
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  store i64 %.1455603, ptr %i.xl, align 8, !tbaa !143
  store i64 1, ptr %i.jw, align 8, !tbaa !144
  %i.xm = load i8, ptr %i.ia, align 8, !tbaa !104 ; 2 uses
  %i.xn = icmp eq i8 %i.xm, 1
  br i1 %i.xn, label %bb.eo, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.xo = load i8, ptr %i.in, align 1, !tbaa !105 ; 2 uses
  %i.xp = lshr i8 %i.xo, 1
  %i.xq = and i8 %i.xp, 2
  %i.xr = or disjoint i8 %i.xq, 4
  %i.xs = zext nneg i8 %i.xr to i64
  %.not688 = icmp eq i8 %i.xm, 0
end_hunk_0
begin_hunk_1_@H5O__copy_search_comm_dt_cb:bb.a
  ret i32 %.0
}

declare ptr @H5O_msg_free(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5T_cmp(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @H5O_msg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5T_is_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5O__copy_search_comm_dt_attr_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread59, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @H5A_type(ptr noundef %0) #7 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_search_comm_dt_attr_cb, i32 noundef 1174, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.48) #7 ; 0 uses
  br label %.thread59

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i32 @H5T_is_named(ptr noundef nonnull %i.g) #7
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread59, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5O_copy_search_comm_dt_key_t_reg_free_list) #7 ; 9 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !14
  %i.p = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_search_comm_dt_attr_cb, i32 noundef 1180, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %.thread59

bb.g:                                             ; preds = %bb.e
  %i.r = tail call ptr @H5O_msg_copy(i32 noundef 3, ptr noundef nonnull %i.g, ptr noundef null) #7 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !50
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.u = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_search_comm_dt_attr_cb, i32 noundef 1184, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.49) #7 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = tail call i32 @H5F_get_fileno(ptr noundef %i.x, ptr noundef nonnull %i.y) #7 ; 0 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !53
  %i.ab = tail call ptr @H5SL_search(ptr noundef %i.aa, ptr noundef nonnull %i.m) #7
  %.not36 = icmp eq ptr %i.ab, null
  br i1 %.not36, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_haddr_t_reg_free_list) #7 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !14
  %i.af = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.ag = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_search_comm_dt_attr_cb, i32 noundef 1192, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !56
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !14
  %i.ak = load ptr, ptr %1, align 8, !tbaa !53
  %i.al = tail call i32 @H5SL_insert(ptr noundef %i.ak, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.m) #7
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %.thread59

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ao = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !14
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__copy_search_comm_dt_attr_cb, i32 noundef 1197, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.h
  %.028.ph.ph = phi ptr [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.k ], [ %i.ac, %bb.m ] ; 2 uses
  %.0.ph.ph = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.k ], [ -1, %bb.m ] ; 2 uses
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %.not38 = icmp eq ptr %i.aq, null
  br i1 %.not38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call ptr @H5O_msg_free(i32 noundef 3, ptr noundef nonnull %i.aq) #7
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.as = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_copy_search_comm_dt_key_t_reg_free_list, ptr noundef nonnull %i.m) #7 ; 0 uses
  %.not39 = icmp eq ptr %.028.ph.ph, null
  br i1 %.not39, label %.thread59, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_haddr_t_reg_free_list, ptr noundef nonnull %.028.ph.ph) #7 ; 0 uses
  br label %.thread59

.thread59:                                        ; preds = %bb.c, %bb.f, %bb.d, %bb.l, %bb.q, %bb.p, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.0.ph.ph, %bb.q ], [ %.0.ph.ph, %bb.p ], [ 0, %bb.l ], [ -1, %bb.c ], [ -1, %bb.f ], [ 0, %bb.d ]
  ret i32 %.1
}

declare i32 @H5O_attr_iterate_real(i64 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5A_type(ptr noundef) local_unnamed_addr #2

declare ptr @H5O_msg_copy(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5L_link(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @H5I_object(i64 noundef) local_unnamed_addr #2

declare i32 @H5P_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5P_peek(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5SL_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5O__copy_free_addrmap_cb(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  tail call void %i.l(ptr noundef nonnull %i.h) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_addr_map_t_reg_free_list, ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5O__copy_free_comm_dt_cb(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !50
  %i.h = tail call ptr @H5O_msg_free(i32 noundef 3, ptr noundef %i.g) #7
  store ptr %i.h, ptr %1, align 8, !tbaa !50
  %i.i = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5O_copy_search_comm_dt_key_t_reg_free_list, ptr noundef nonnull %1) #7 ; 0 uses
  %i.j = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_haddr_t_reg_free_list, ptr noundef %0) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"long", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 _ZTS9H5O_loc_t", !15, i64 0}
!17 = !{!"p1 _ZTS10H5G_name_t", !15, i64 0}
!18 = !{!"H5G_loc_t", !16, i64 0, !17, i64 8}
!19 = !{!18, !16, i64 0}
!20 = !{!18, !17, i64 8}
!21 = !{!"p1 _ZTS5H5F_t", !15, i64 0}
!22 = !{!"H5O_loc_t", !21, i64 0, !13, i64 8, !8, i64 16}
!23 = !{!22, !21, i64 0}
!24 = !{!"p1 _ZTS27H5O_copy_dtype_merge_list_t", !15, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!"p1 _ZTS6H5SL_t", !15, i64 0}
!27 = !{!"p1 _ZTS5H5O_t", !15, i64 0}
!28 = !{!"H5O_copy_t", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !24, i64 8, !5, i64 16, !5, i64 20, !26, i64 24, !26, i64 32, !8, i64 40, !27, i64 48, !21, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !13, i64 88}
!29 = !{!28, !5, i64 16}
!30 = !{!28, !8, i64 5}
!31 = !{!28, !8, i64 6}
!32 = !{!28, !24, i64 8}
!33 = !{!15, !15, i64 0}
!34 = !{!28, !26, i64 24}
!35 = !{!28, !26, i64 32}
!36 = !{!22, !13, i64 8}
!37 = !{!"", !13, i64 0, !13, i64 8}
!38 = !{!"p1 _ZTS15H5O_obj_class_t", !15, i64 0}
!39 = !{!"H5O_addr_map_t", !37, i64 0, !13, i64 16, !8, i64 24, !13, i64 32, !38, i64 40, !15, i64 48}
!40 = !{!39, !13, i64 16}
!41 = !{!39, !38, i64 40}
!42 = !{!"p1 omnipotent char", !15, i64 0}
!43 = !{!"H5O_obj_class_t", !5, i64 0, !42, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72}
!44 = !{!43, !5, i64 0}
!45 = !{!39, !15, i64 48}
!46 = !{!39, !8, i64 24}
!47 = !{!39, !13, i64 32}
!48 = !{!"p1 _ZTS5H5T_t", !15, i64 0}
!49 = !{!"H5O_copy_search_comm_dt_key_t", !48, i64 0, !13, i64 8}
!50 = !{!49, !48, i64 0}
!51 = !{!"p1 _ZTS9H5G_loc_t", !15, i64 0}
!52 = !{!"H5O_copy_search_comm_dt_ud_t", !26, i64 0, !51, i64 8, !22, i64 16}
!53 = !{!52, !26, i64 0}
!54 = !{!52, !21, i64 16}
!55 = !{!52, !13, i64 24}
!56 = !{!4, !4, i64 0}
!57 = !{!43, !15, i64 24}
!58 = !{!24, !24, i64 0}
!59 = !{!28, !8, i64 0}
!60 = !{!28, !5, i64 20}
!61 = !{!28, !8, i64 1}
!62 = !{!28, !8, i64 2}
!63 = !{!28, !8, i64 3}
!64 = !{!28, !8, i64 4}
!65 = !{!28, !13, i64 88}
!66 = !{!37, !13, i64 8}
!67 = distinct !{!67, !86}
!68 = distinct !{null}
!69 = distinct !{!69, !86}
!70 = distinct !{!70, !86, !138, !139}
!71 = distinct !{!71, !86, !138}
!72 = distinct !{!72, !86, !138, !139}
!73 = distinct !{!73, !86}
!74 = distinct !{!74, !86}
!75 = distinct !{!75, !86, !138}
!76 = distinct !{!76, !86}
!77 = distinct !{!77, !86}
!78 = distinct !{!78, !86}
!79 = distinct !{!79, !86}
!80 = !{!28, !15, i64 64}
!81 = !{!43, !15, i64 16}
!82 = !{!52, !51, i64 8}
!83 = !{!"H5O_copy_dtype_merge_list_t", !42, i64 0, !24, i64 8}
!84 = !{!83, !42, i64 0}
!85 = !{!83, !24, i64 8}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!28, !8, i64 40}
!88 = !{!28, !15, i64 72}
!89 = !{!28, !15, i64 80}
!90 = !{!39, !13, i64 0}
!91 = !{!39, !13, i64 8}
!92 = !{!"p1 _ZTS5H5C_t", !15, i64 0}
!93 = !{!"p1 _ZTS11H5C_class_t", !15, i64 0}
!94 = !{!"any p2 pointer", !15, i64 0}
!95 = !{!"p2 _ZTS17H5C_cache_entry_t", !94, i64 0}
!96 = !{!"p1 _ZTS17H5C_cache_entry_t", !15, i64 0}
!97 = !{!"p1 long", !15, i64 0}
!98 = !{!"p1 _ZTS14H5C_tag_info_t", !15, i64 0}
!99 = !{!"H5C_cache_entry_t", !92, i64 0, !13, i64 8, !13, i64 16, !15, i64 24, !8, i64 32, !93, i64 40, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !5, i64 52, !8, i64 56, !8, i64 57, !8, i64 58, !8, i64 59, !8, i64 60, !5, i64 64, !95, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !8, i64 100, !8, i64 101, !96, i64 104, !96, i64 112, !96, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !8, i64 152, !5, i64 156, !8, i64 160, !13, i64 168, !97, i64 176, !13, i64 184, !13, i64 192, !5, i64 200, !8, i64 204, !5, i64 208, !5, i64 212, !8, i64 216, !96, i64 224, !96, i64 232, !98, i64 240}
!100 = !{!"p1 _ZTS10H5O_mesg_t", !15, i64 0}
!101 = !{!"p1 _ZTS11H5O_chunk_t", !15, i64 0}
!102 = !{!"p1 _ZTS18H5AC_proxy_entry_t", !15, i64 0}
!103 = !{!"H5O_t", !99, i64 0, !13, i64 248, !13, i64 256, !8, i64 264, !13, i64 272, !8, i64 280, !5, i64 284, !4, i64 288, !4, i64 289, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !5, i64 328, !5, i64 332, !13, i64 336, !13, i64 344, !100, i64 352, !13, i64 360, !13, i64 368, !5, i64 376, !5, i64 380, !5, i64 384, !13, i64 392, !13, i64 400, !101, i64 408, !8, i64 416, !102, i64 424}
!104 = !{!103, !4, i64 288}
!105 = !{!103, !4, i64 289}
!106 = !{!103, !13, i64 248}
!107 = !{!103, !13, i64 256}
!108 = !{!103, !8, i64 264}
!109 = !{!103, !102, i64 424}
!110 = !{!103, !101, i64 408}
!111 = !{!103, !13, i64 400}
!112 = !{!103, !13, i64 336}
!113 = !{!103, !100, i64 352}
!114 = !{!"p1 _ZTS15H5O_msg_class_t", !15, i64 0}
!115 = !{!"H5O_mesg_t", !114, i64 0, !8, i64 8, !4, i64 9, !5, i64 12, !5, i64 16, !15, i64 24, !42, i64 32, !13, i64 40}
!116 = !{!115, !114, i64 0}
!117 = !{!"H5O_msg_class_t", !5, i64 0, !42, i64 8, !13, i64 16, !5, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152}
!118 = !{!117, !5, i64 0}
!119 = !{!115, !13, i64 40}
!120 = !{!117, !42, i64 8}
!121 = !{!117, !15, i64 112}
!122 = !{!115, !15, i64 24}
!123 = !{!117, !15, i64 32}
!124 = !{!115, !4, i64 9}
!125 = !{!115, !42, i64 32}
!126 = !{!115, !8, i64 8}
!127 = !{!"H5O_shared_t", !5, i64 0, !21, i64 8, !5, i64 16, !4, i64 24}
!128 = !{!127, !5, i64 0}
!129 = !{!127, !21, i64 8}
!130 = !{!127, !5, i64 16}
!131 = !{!115, !5, i64 12}
!132 = !{!"p1 _ZTS17H5O_chunk_proxy_t", !15, i64 0}
!133 = !{!"H5O_chunk_t", !13, i64 0, !13, i64 8, !13, i64 16, !42, i64 24, !132, i64 32}
!134 = !{!133, !13, i64 0}
!135 = !{!117, !15, i64 144}
!136 = !{!28, !21, i64 56}
!137 = !{!103, !13, i64 344}
!138 = !{!"llvm.loop.isvectorized", i32 1}
!139 = !{!"llvm.loop.unroll.runtime.disable"}
!140 = !{!117, !15, i64 120}
!141 = !{!133, !42, i64 24}
!142 = !{!133, !13, i64 8}
!143 = !{!133, !13, i64 16}
!144 = !{!103, !13, i64 392}
!145 = !{!115, !5, i64 16}
!146 = !{!117, !15, i64 128}
!147 = !{!28, !27, i64 48}
!148 = !{!103, !5, i64 284}
!149 = !{!49, !13, i64 8}
!150 = !{!"H5A_attr_iter_op_t", !5, i64 0, !4, i64 8}
!151 = !{!150, !5, i64 0}
end_hunk_1
