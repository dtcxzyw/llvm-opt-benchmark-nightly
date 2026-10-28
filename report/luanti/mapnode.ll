Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapnode?download=true
inline.NumInlined: 476
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7MapNode13serializeBulkEiPKS_jhhb:bb.a
  %i.bw = getelementptr i8, ptr %bc.resume.val127, i64 %reass.sub
  %scevgep129 = getelementptr i8, ptr %i.bw, i64 %wide.trip.count
  %scevgep130 = getelementptr i8, ptr %2, i64 2
  %i.bx = shl nuw nsw i64 %wide.trip.count, 2
  %i.by = getelementptr i8, ptr %2, i64 %i.bx
  %scevgep131 = getelementptr i8, ptr %i.by, i64 -1
  %bound0 = icmp ult ptr %i.gk, %scevgep131
  %bound1 = icmp ult ptr %scevgep130, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check134 = icmp ult i32 %3, 17
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %wide.trip.count, 15            ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 16, i64 %i.bz      ; 2 uses
  %n.vec136 = sub nsw i64 %wide.trip.count, %i.cb ; 4 uses
  %i.cc = getelementptr i8, ptr %i.gk, i64 %n.vec136
  br label %vector.body137

vector.body137:                                   ; preds = %vector.ph135, %vector.body137
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next140, %vector.body137 ] ; 18 uses
  %next.gep139 = getelementptr i8, ptr %i.gk, i64 %index138
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 26
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 30
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 34
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 38
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 42
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 46
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 54
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 58
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 62
  %i.dj = load i8, ptr %i.ct, align 2, !tbaa !85, !alias.scope !172
  %i.dk = load i8, ptr %i.cu, align 2, !tbaa !85, !alias.scope !172
  %i.dl = load i8, ptr %i.cv, align 2, !tbaa !85, !alias.scope !172
  %i.dm = load i8, ptr %i.cw, align 2, !tbaa !85, !alias.scope !172
  %i.dn = load i8, ptr %i.cx, align 2, !tbaa !85, !alias.scope !172
  %i.do = load i8, ptr %i.cy, align 2, !tbaa !85, !alias.scope !172
  %i.dp = load i8, ptr %i.cz, align 2, !tbaa !85, !alias.scope !172
  %i.dq = load i8, ptr %i.da, align 2, !tbaa !85, !alias.scope !172
  %i.dr = load i8, ptr %i.db, align 2, !tbaa !85, !alias.scope !172
  %i.ds = load i8, ptr %i.dc, align 2, !tbaa !85, !alias.scope !172
  %i.dt = load i8, ptr %i.dd, align 2, !tbaa !85, !alias.scope !172
  %i.du = load i8, ptr %i.de, align 2, !tbaa !85, !alias.scope !172
  %i.dv = load i8, ptr %i.df, align 2, !tbaa !85, !alias.scope !172
  %i.dw = load i8, ptr %i.dg, align 2, !tbaa !85, !alias.scope !172
  %i.dx = load i8, ptr %i.dh, align 2, !tbaa !85, !alias.scope !172
  %i.dy = load i8, ptr %i.di, align 2, !tbaa !85, !alias.scope !172
  %i.dz = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 1
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 2
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 3
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 4
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 5
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 6
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 7
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 8
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 9
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 10
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 11
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 12
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 13
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 14
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 15
  store <16 x i8> %i.eo, ptr %next.gep139, align 1, !tbaa !66, !alias.scope !173, !noalias !172
  %index.next140 = add nuw i64 %index138, 16      ; 2 uses
  %i.ep = icmp eq i64 %index.next140, %n.vec136
  br i1 %i.ep, label %vec.epilog.iter.check, label %vector.body137, !llvm.loop !155

vec.epilog.iter.check:                            ; preds = %vector.body137
  %min.epilog.iters.check = icmp samesign ult i64 %i.cb, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph, label %vec.epilog.ph, !prof !174

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.eq = and i64 %wide.trip.count, 7             ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = select i1 %i.er, i64 8, i64 %i.eq
  %n.vec142 = sub nsw i64 %wide.trip.count, %i.es ; 3 uses
  %i.et = getelementptr i8, ptr %i.gk, i64 %n.vec142
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 10 uses
  %next.gep144 = getelementptr i8, ptr %i.gk, i64 %index143
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index143
  %i.ev = getelementptr [4 x i8], ptr %2, i64 %index143
  %i.ew = getelementptr [4 x i8], ptr %2, i64 %index143
  %i.ex = getelementptr [4 x i8], ptr %2, i64 %index143
  %i.ey = getelementptr [4 x i8], ptr %2, i64 %index143
  %i.ez = getelementptr [4 x i8], ptr %2, i64 %index143
  %i.fa = getelementptr [4 x i8], ptr %2, i64 %index143
  %i.fb = getelementptr [4 x i8], ptr %2, i64 %index143
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.fd = getelementptr i8, ptr %i.ev, i64 6
  %i.fe = getelementptr i8, ptr %i.ew, i64 10
  %i.ff = getelementptr i8, ptr %i.ex, i64 14
  %i.fg = getelementptr i8, ptr %i.ey, i64 18
  %i.fh = getelementptr i8, ptr %i.ez, i64 22
  %i.fi = getelementptr i8, ptr %i.fa, i64 26
  %i.fj = getelementptr i8, ptr %i.fb, i64 30
  %i.fk = load i8, ptr %i.fc, align 2, !tbaa !85, !alias.scope !172
  %i.fl = load i8, ptr %i.fd, align 2, !tbaa !85, !alias.scope !172
  %i.fm = load i8, ptr %i.fe, align 2, !tbaa !85, !alias.scope !172
  %i.fn = load i8, ptr %i.ff, align 2, !tbaa !85, !alias.scope !172
  %i.fo = load i8, ptr %i.fg, align 2, !tbaa !85, !alias.scope !172
  %i.fp = load i8, ptr %i.fh, align 2, !tbaa !85, !alias.scope !172
  %i.fq = load i8, ptr %i.fi, align 2, !tbaa !85, !alias.scope !172
  %i.fr = load i8, ptr %i.fj, align 2, !tbaa !85, !alias.scope !172
  %i.fs = insertelement <8 x i8> poison, i8 %i.fk, i64 0
  %i.ft = insertelement <8 x i8> %i.fs, i8 %i.fl, i64 1
  %i.fu = insertelement <8 x i8> %i.ft, i8 %i.fm, i64 2
  %i.fv = insertelement <8 x i8> %i.fu, i8 %i.fn, i64 3
  %i.fw = insertelement <8 x i8> %i.fv, i8 %i.fo, i64 4
  %i.fx = insertelement <8 x i8> %i.fw, i8 %i.fp, i64 5
  %i.fy = insertelement <8 x i8> %i.fx, i8 %i.fq, i64 6
  %i.fz = insertelement <8 x i8> %i.fy, i8 %i.fr, i64 7
  store <8 x i8> %i.fz, ptr %next.gep144, align 1, !tbaa !66, !alias.scope !173, !noalias !172
  %index.next145 = add nuw i64 %index143, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next145, %n.vec142
  br i1 %i.ga, label %vec.epilog.scalar.ph, label %vec.epilog.vector.body, !llvm.loop !156

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %bc.resume.val146 = phi i64 [ 0, %iter.check ], [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.memcheck ], [ %n.vec142, %vec.epilog.vector.body ] ; 4 uses
  %bc.resume.val147 = phi ptr [ %i.gk, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.gk, %vector.memcheck ], [ %i.et, %vec.epilog.vector.body ] ; 4 uses
  %bc.resume.val147149 = ptrtoaddr ptr %bc.resume.val147 to i64
  %i.gb = sub nsw i64 %wide.trip.count, %bc.resume.val146
  %xtraiter = and i64 %i.gb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol

.lr.ph80.prol:                                    ; preds = %vec.epilog.scalar.ph, %.lr.ph80.prol
  %indvars.iv106.prol = phi i64 [ %indvars.iv.next107.prol, %.lr.ph80.prol ], [ %bc.resume.val146, %vec.epilog.scalar.ph ] ; 2 uses
  %.478.prol = phi ptr [ %i.gf, %.lr.ph80.prol ], [ %bc.resume.val147, %vec.epilog.scalar.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph80.prol ], [ 0, %vec.epilog.scalar.ph ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106.prol
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.ge = load i8, ptr %i.gd, align 2, !tbaa !85
  store i8 %i.ge, ptr %.478.prol, align 1, !tbaa !66
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %i.gf = getelementptr i8, ptr %.478.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol, !llvm.loop !157

.lr.ph80.prol.loopexit:                           ; preds = %.lr.ph80.prol, %vec.epilog.scalar.ph
  %.lcssa210.unr = phi ptr [ poison, %vec.epilog.scalar.ph ], [ %i.gf, %.lr.ph80.prol ]
  %indvars.iv106.unr = phi i64 [ %bc.resume.val146, %vec.epilog.scalar.ph ], [ %indvars.iv.next107.prol, %.lr.ph80.prol ]
  %.478.unr = phi ptr [ %bc.resume.val147, %vec.epilog.scalar.ph ], [ %i.gf, %.lr.ph80.prol ]
  %i.gg = sub nsw i64 %bc.resume.val146, %wide.trip.count
  %i.gh = icmp ugt i64 %i.gg, -8
  br i1 %i.gh, label %iter.check167, label %.lr.ph80

.lr.ph:                                           ; preds = %scalar.ph, %.lr.ph
  %indvars.iv = phi i64 [ %bc.resume.val, %scalar.ph ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.376 = phi ptr [ %bc.resume.val127, %scalar.ph ], [ %i.gk, %.lr.ph ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.gj = load i16, ptr %i.gi, align 4, !tbaa !11
  %rev.i.i68 = tail call noundef i16 @llvm.bswap.i16(i16 %i.gj)
  store i16 %rev.i.i68, ptr %.376, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gk = getelementptr i8, ptr %.376, i64 2      ; 9 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %iter.check, label %.lr.ph, !llvm.loop !158

iter.check167:                                    ; preds = %.lr.ph80, %.lr.ph80.prol.loopexit
  %.lcssa210 = phi ptr [ %.lcssa210.unr, %.lr.ph80.prol.loopexit ], [ %i.mf, %.lr.ph80 ] ; 8 uses
  %wide.trip.count114 = zext i32 %3 to i64
  %min.iters.check157 = icmp ult i32 %3, 9
  br i1 %min.iters.check157, label %.lr.ph84.preheader, label %vector.memcheck148

vector.memcheck148:                               ; preds = %iter.check167
  %i.gl = xor i64 %bc.resume.val147149, -1
  %i.gm = ptrtoaddr ptr %.lcssa210 to i64
  %i.gn = getelementptr i8, ptr %bc.resume.val147, i64 %wide.trip.count
  %i.go = getelementptr i8, ptr %i.gn, i64 1
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gm
  %scevgep150 = getelementptr i8, ptr %i.gp, i64 %i.gl
  %scevgep151 = getelementptr i8, ptr %2, i64 3
  %i.gq = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep152 = getelementptr i8, ptr %2, i64 %i.gq
  %bound0153 = icmp ult ptr %.lcssa210, %scevgep152
  %bound1154 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict155 = and i1 %bound0153, %bound1154
  br i1 %found.conflict155, label %.lr.ph84.preheader, label %vector.main.loop.iter.check158

vector.main.loop.iter.check158:                   ; preds = %vector.memcheck148
  %min.iters.check159 = icmp ult i32 %3, 17
  br i1 %min.iters.check159, label %vec.epilog.ph171, label %vector.ph160

vector.ph160:                                     ; preds = %vector.main.loop.iter.check158
  %i.gr = and i64 %wide.trip.count, 15            ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  %i.gt = select i1 %i.gs, i64 16, i64 %i.gr      ; 2 uses
  %n.vec161 = sub nsw i64 %wide.trip.count, %i.gt ; 4 uses
  %i.gu = getelementptr i8, ptr %.lcssa210, i64 %n.vec161
  br label %vector.body162

vector.body162:                                   ; preds = %vector.ph160, %vector.body162
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next165, %vector.body162 ] ; 18 uses
  %next.gep164 = getelementptr i8, ptr %.lcssa210, i64 %index163
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index163
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 7
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 11
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 15
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 19
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 23
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 27
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 35
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 39
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hf, i64 43
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hg, i64 47
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 51
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 55
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 59
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 63
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !65, !alias.scope !175
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !65, !alias.scope !175
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !65, !alias.scope !175
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !65, !alias.scope !175
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !65, !alias.scope !175
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !65, !alias.scope !175
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !65, !alias.scope !175
  %i.ii = load i8, ptr %i.hs, align 1, !tbaa !65, !alias.scope !175
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !65, !alias.scope !175
  %i.ik = load i8, ptr %i.hu, align 1, !tbaa !65, !alias.scope !175
  %i.il = load i8, ptr %i.hv, align 1, !tbaa !65, !alias.scope !175
  %i.im = load i8, ptr %i.hw, align 1, !tbaa !65, !alias.scope !175
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !65, !alias.scope !175
  %i.io = load i8, ptr %i.hy, align 1, !tbaa !65, !alias.scope !175
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !65, !alias.scope !175
  %i.iq = load i8, ptr %i.ia, align 1, !tbaa !65, !alias.scope !175
  %i.ir = insertelement <16 x i8> poison, i8 %i.ib, i64 0
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 1
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 2
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 3
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 4
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 5
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 6
  %i.iy = insertelement <16 x i8> %i.ix, i8 %i.ii, i64 7
  %i.iz = insertelement <16 x i8> %i.iy, i8 %i.ij, i64 8
  %i.ja = insertelement <16 x i8> %i.iz, i8 %i.ik, i64 9
  %i.jb = insertelement <16 x i8> %i.ja, i8 %i.il, i64 10
  %i.jc = insertelement <16 x i8> %i.jb, i8 %i.im, i64 11
  %i.jd = insertelement <16 x i8> %i.jc, i8 %i.in, i64 12
  %i.je = insertelement <16 x i8> %i.jd, i8 %i.io, i64 13
  %i.jf = insertelement <16 x i8> %i.je, i8 %i.ip, i64 14
  %i.jg = insertelement <16 x i8> %i.jf, i8 %i.iq, i64 15
  store <16 x i8> %i.jg, ptr %next.gep164, align 1, !tbaa !66, !alias.scope !176, !noalias !175
  %index.next165 = add nuw i64 %index163, 16      ; 2 uses
  %i.jh = icmp eq i64 %index.next165, %n.vec161
  br i1 %i.jh, label %vec.epilog.iter.check168, label %vector.body162, !llvm.loop !162

vec.epilog.iter.check168:                         ; preds = %vector.body162
  %min.epilog.iters.check170 = icmp samesign ult i64 %i.gt, 9
  br i1 %min.epilog.iters.check170, label %.lr.ph84.preheader, label %vec.epilog.ph171, !prof !174

.lr.ph84.preheader:                               ; preds = %vec.epilog.vector.body174, %iter.check167, %vector.memcheck148, %vec.epilog.iter.check168
  %indvars.iv111.ph = phi i64 [ 0, %iter.check167 ], [ 0, %vector.memcheck148 ], [ %n.vec161, %vec.epilog.iter.check168 ], [ %n.vec173, %vec.epilog.vector.body174 ] ; 4 uses
  %.582.ph = phi ptr [ %.lcssa210, %iter.check167 ], [ %.lcssa210, %vector.memcheck148 ], [ %i.gu, %vec.epilog.iter.check168 ], [ %i.js, %vec.epilog.vector.body174 ] ; 2 uses
  %i.ji = sub nsw i64 %wide.trip.count, %indvars.iv111.ph
  %xtraiter212 = and i64 %i.ji, 7                 ; 2 uses
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol

.lr.ph84.prol:                                    ; preds = %.lr.ph84.preheader, %.lr.ph84.prol
  %indvars.iv111.prol = phi i64 [ %indvars.iv.next112.prol, %.lr.ph84.prol ], [ %indvars.iv111.ph, %.lr.ph84.preheader ] ; 2 uses
  %.582.prol = phi ptr [ %i.jm, %.lr.ph84.prol ], [ %.582.ph, %.lr.ph84.preheader ] ; 2 uses
  %prol.iter214 = phi i64 [ %prol.iter214.next, %.lr.ph84.prol ], [ 0, %.lr.ph84.preheader ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv111.prol
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !65
  store i8 %i.jl, ptr %.582.prol, align 1, !tbaa !66
  %indvars.iv.next112.prol = add nuw nsw i64 %indvars.iv111.prol, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.582.prol, i64 1 ; 2 uses
  %prol.iter214.next = add i64 %prol.iter214, 1   ; 2 uses
  %prol.iter214.cmp.not = icmp eq i64 %prol.iter214.next, %xtraiter212
  br i1 %prol.iter214.cmp.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol, !llvm.loop !163

.lr.ph84.prol.loopexit:                           ; preds = %.lr.ph84.prol, %.lr.ph84.preheader
  %indvars.iv111.unr = phi i64 [ %indvars.iv111.ph, %.lr.ph84.preheader ], [ %indvars.iv.next112.prol, %.lr.ph84.prol ]
  %.582.unr = phi ptr [ %.582.ph, %.lr.ph84.preheader ], [ %i.jm, %.lr.ph84.prol ]
  %i.jn = sub nsw i64 %indvars.iv111.ph, %wide.trip.count
  %i.jo = icmp ugt i64 %i.jn, -8
  br i1 %i.jo, label %.loopexit, label %.lr.ph84

vec.epilog.ph171:                                 ; preds = %vector.main.loop.iter.check158, %vec.epilog.iter.check168
  %vec.epilog.resume.val172 = phi i64 [ %n.vec161, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check158 ]
  %i.jp = and i64 %wide.trip.count, 7             ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  %i.jr = select i1 %i.jq, i64 8, i64 %i.jp
  %n.vec173 = sub nsw i64 %wide.trip.count, %i.jr ; 3 uses
  %i.js = getelementptr i8, ptr %.lcssa210, i64 %n.vec173
  br label %vec.epilog.vector.body174

vec.epilog.vector.body174:                        ; preds = %vec.epilog.vector.body174, %vec.epilog.ph171
  %index175 = phi i64 [ %vec.epilog.resume.val172, %vec.epilog.ph171 ], [ %index.next177, %vec.epilog.vector.body174 ] ; 10 uses
  %next.gep176 = getelementptr i8, ptr %.lcssa210, i64 %index175
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index175
  %i.ju = getelementptr [4 x i8], ptr %2, i64 %index175
  %i.jv = getelementptr [4 x i8], ptr %2, i64 %index175
  %i.jw = getelementptr [4 x i8], ptr %2, i64 %index175
  %i.jx = getelementptr [4 x i8], ptr %2, i64 %index175
  %i.jy = getelementptr [4 x i8], ptr %2, i64 %index175
  %i.jz = getelementptr [4 x i8], ptr %2, i64 %index175
  %i.ka = getelementptr [4 x i8], ptr %2, i64 %index175
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 3
  %i.kc = getelementptr i8, ptr %i.ju, i64 7
  %i.kd = getelementptr i8, ptr %i.jv, i64 11
  %i.ke = getelementptr i8, ptr %i.jw, i64 15
  %i.kf = getelementptr i8, ptr %i.jx, i64 19
  %i.kg = getelementptr i8, ptr %i.jy, i64 23
  %i.kh = getelementptr i8, ptr %i.jz, i64 27
  %i.ki = getelementptr i8, ptr %i.ka, i64 31
  %i.kj = load i8, ptr %i.kb, align 1, !tbaa !65, !alias.scope !175
  %i.kk = load i8, ptr %i.kc, align 1, !tbaa !65, !alias.scope !175
  %i.kl = load i8, ptr %i.kd, align 1, !tbaa !65, !alias.scope !175
  %i.km = load i8, ptr %i.ke, align 1, !tbaa !65, !alias.scope !175
  %i.kn = load i8, ptr %i.kf, align 1, !tbaa !65, !alias.scope !175
  %i.ko = load i8, ptr %i.kg, align 1, !tbaa !65, !alias.scope !175
  %i.kp = load i8, ptr %i.kh, align 1, !tbaa !65, !alias.scope !175
  %i.kq = load i8, ptr %i.ki, align 1, !tbaa !65, !alias.scope !175
  %i.kr = insertelement <8 x i8> poison, i8 %i.kj, i64 0
  %i.ks = insertelement <8 x i8> %i.kr, i8 %i.kk, i64 1
  %i.kt = insertelement <8 x i8> %i.ks, i8 %i.kl, i64 2
  %i.ku = insertelement <8 x i8> %i.kt, i8 %i.km, i64 3
  %i.kv = insertelement <8 x i8> %i.ku, i8 %i.kn, i64 4
  %i.kw = insertelement <8 x i8> %i.kv, i8 %i.ko, i64 5
  %i.kx = insertelement <8 x i8> %i.kw, i8 %i.kp, i64 6
  %i.ky = insertelement <8 x i8> %i.kx, i8 %i.kq, i64 7
  store <8 x i8> %i.ky, ptr %next.gep176, align 1, !tbaa !66, !alias.scope !176, !noalias !175
  %index.next177 = add nuw i64 %index175, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next177, %n.vec173
  br i1 %i.kz, label %.lr.ph84.preheader, label %vec.epilog.vector.body174, !llvm.loop !164

.lr.ph80:                                         ; preds = %.lr.ph80.prol.loopexit, %.lr.ph80
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.7, %.lr.ph80 ], [ %indvars.iv106.unr, %.lr.ph80.prol.loopexit ] ; 9 uses
  %.478 = phi ptr [ %i.mf, %.lr.ph80 ], [ %.478.unr, %.lr.ph80.prol.loopexit ] ; 9 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = load i8, ptr %i.lb, align 2, !tbaa !85
  store i8 %i.lc, ptr %.478, align 1, !tbaa !66
  %i.ld = getelementptr i8, ptr %.478, i64 1
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 6
  %i.lg = load i8, ptr %i.lf, align 2, !tbaa !85
  store i8 %i.lg, ptr %i.ld, align 1, !tbaa !66
  %i.lh = getelementptr i8, ptr %.478, i64 2
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 10
  %i.lk = load i8, ptr %i.lj, align 2, !tbaa !85
  store i8 %i.lk, ptr %i.lh, align 1, !tbaa !66
  %i.ll = getelementptr i8, ptr %.478, i64 3
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 14
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !85
  store i8 %i.lo, ptr %i.ll, align 1, !tbaa !66
  %i.lp = getelementptr i8, ptr %.478, i64 4
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 18
  %i.ls = load i8, ptr %i.lr, align 2, !tbaa !85
end_hunk_0
