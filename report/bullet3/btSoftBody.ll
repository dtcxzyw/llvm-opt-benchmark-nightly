Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody17indicesToPointersEPKi:bb.a
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !275
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.eg
  store ptr %i.eh, ptr %i.eb, align 8, !tbaa !316
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !316
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !275
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.en
  store ptr %i.eo, ptr %i.ei, align 8, !tbaa !316
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !316
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %1, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !275
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.eu
  store ptr %i.ev, ptr %i.ep, align 8, !tbaa !316
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !319 ; 2 uses
  %.not89 = icmp eq ptr %i.ex, null
  br i1 %.not89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph106.split
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store ptr %i.ea, ptr %i.ey, align 8, !tbaa !259
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph106.split, %bb.j
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge107, label %.lr.ph106.split, !llvm.loop !625

._crit_edge107:                                   ; preds = %bb.k, %bb.i, %._crit_edge103
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !199 ; 5 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph110, label %._crit_edge111

._crit_edge107.thread:                            ; preds = %._crit_edge103.thread
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !199 ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph110.thread, label %._crit_edge111

.lr.ph110.thread:                                 ; preds = %._crit_edge107.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !198
  br label %.lr.ph110.split.us

.lr.ph110:                                        ; preds = %._crit_edge107
  %.not83 = icmp eq ptr %1, null
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !198 ; 4 uses
  br i1 %.not83, label %.lr.ph110.split.us, label %.lr.ph110.split

.lr.ph110.split.us:                               ; preds = %.lr.ph110.thread, %.lr.ph110
  %i.fj = phi ptr [ %i.fg, %.lr.ph110.thread ], [ %i.fi, %.lr.ph110 ] ; 5 uses
  %i.fk = phi i32 [ %i.fd, %.lr.ph110.thread ], [ %i.fa, %.lr.ph110 ] ; 2 uses
  %wide.trip.count150 = zext nneg i32 %i.fk to i64 ; 2 uses
  %xtraiter213 = and i64 %wide.trip.count150, 3   ; 3 uses
  %i.fl = icmp ult i32 %i.fk, 4
  br i1 %i.fl, label %.epil.preheader212, label %.lr.ph110.split.us.new

.lr.ph110.split.us.new:                           ; preds = %.lr.ph110.split.us
  %unroll_iter216 = and i64 %wide.trip.count150, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph110.split.us.new
  %indvars.iv147 = phi i64 [ 0, %.lr.ph110.split.us.new ], [ %indvars.iv.next148.3, %bb.l ] ; 5 uses
  %niter217 = phi i64 [ 0, %.lr.ph110.split.us.new ], [ %niter217.next.3, %bb.l ]
  %i.fm = getelementptr inbounds nuw [104 x i8], ptr %i.fj, i64 %indvars.iv147 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !322
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.fo
  store ptr %i.fp, ptr %i.fm, align 8, !tbaa !322
  %i.fq = getelementptr inbounds nuw [104 x i8], ptr %i.fj, i64 %indvars.iv147
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 104 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !322
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.ft
  store ptr %i.fu, ptr %i.fr, align 8, !tbaa !322
  %i.fv = getelementptr inbounds nuw [104 x i8], ptr %i.fj, i64 %indvars.iv147
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 208 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !322
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.fy
  store ptr %i.fz, ptr %i.fw, align 8, !tbaa !322
  %i.ga = getelementptr inbounds nuw [104 x i8], ptr %i.fj, i64 %indvars.iv147
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 312 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !322
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.gd
  store ptr %i.ge, ptr %i.gb, align 8, !tbaa !322
  %indvars.iv.next148.3 = add nuw nsw i64 %indvars.iv147, 4 ; 2 uses
  %niter217.next.3 = add i64 %niter217, 4         ; 2 uses
  %niter217.ncmp.3 = icmp eq i64 %niter217.next.3, %unroll_iter216
  br i1 %niter217.ncmp.3, label %._crit_edge111.loopexit.unr-lcssa, label %bb.l, !llvm.loop !626

.lr.ph110.split:                                  ; preds = %.lr.ph110
  %wide.trip.count145 = zext nneg i32 %i.fa to i64 ; 2 uses
  %xtraiter207 = and i64 %wide.trip.count145, 1
  %i.gf = icmp eq i32 %i.fa, 1
  br i1 %i.gf, label %.epil.preheader206, label %.lr.ph110.split.new

.lr.ph110.split.new:                              ; preds = %.lr.ph110.split
  %unroll_iter210 = and i64 %wide.trip.count145, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph110.split.new
  %indvars.iv142 = phi i64 [ 0, %.lr.ph110.split.new ], [ %indvars.iv.next143.1, %bb.m ] ; 3 uses
  %niter211 = phi i64 [ 0, %.lr.ph110.split.new ], [ %niter211.next.1, %bb.m ]
  %i.gg = getelementptr inbounds nuw [104 x i8], ptr %i.fi, i64 %indvars.iv142 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !322
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !275
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.gl
  store ptr %i.gm, ptr %i.gg, align 8, !tbaa !322
  %i.gn = getelementptr inbounds nuw [104 x i8], ptr %i.fi, i64 %indvars.iv142
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 104 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !322
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !275
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.gt
  store ptr %i.gu, ptr %i.go, align 8, !tbaa !322
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %niter211.next.1 = add i64 %niter211, 2         ; 2 uses
  %niter211.ncmp.1 = icmp eq i64 %niter211.next.1, %unroll_iter210
  br i1 %niter211.ncmp.1, label %._crit_edge111.loopexit193.unr-lcssa, label %bb.m, !llvm.loop !626

._crit_edge111.loopexit.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %._crit_edge111, label %.epil.preheader212

.epil.preheader212:                               ; preds = %._crit_edge111.loopexit.unr-lcssa, %.lr.ph110.split.us
  %indvars.iv147.epil.init = phi i64 [ 0, %.lr.ph110.split.us ], [ %indvars.iv.next148.3, %._crit_edge111.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i64 %xtraiter213, 0
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader212
  %indvars.iv147.epil = phi i64 [ %indvars.iv.next148.epil, %bb.n ], [ %indvars.iv147.epil.init, %.epil.preheader212 ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.n ], [ 0, %.epil.preheader212 ]
  %i.gv = getelementptr inbounds nuw [104 x i8], ptr %i.fj, i64 %indvars.iv147.epil ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !322
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.gx
  store ptr %i.gy, ptr %i.gv, align 8, !tbaa !322
  %indvars.iv.next148.epil = add nuw nsw i64 %indvars.iv147.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter213
  br i1 %epil.iter.cmp.not, label %._crit_edge111, label %bb.n, !llvm.loop !627

._crit_edge111.loopexit193.unr-lcssa:             ; preds = %bb.m
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %._crit_edge111, label %.epil.preheader206

.epil.preheader206:                               ; preds = %._crit_edge111.loopexit193.unr-lcssa, %.lr.ph110.split
  %indvars.iv142.epil.init = phi i64 [ 0, %.lr.ph110.split ], [ %indvars.iv.next143.1, %._crit_edge111.loopexit193.unr-lcssa ]
  %lcmp.mod209 = trunc i32 %i.fa to i1
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %i.gz = getelementptr inbounds nuw [104 x i8], ptr %i.fi, i64 %indvars.iv142.epil.init ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !322
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !275
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.he
  store ptr %i.hf, ptr %i.gz, align 8, !tbaa !322
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %.epil.preheader206, %._crit_edge111.loopexit193.unr-lcssa, %._crit_edge111.loopexit.unr-lcssa, %bb.n, %._crit_edge107.thread, %._crit_edge107
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !167 ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %.preheader.lr.ph, label %._crit_edge116

.preheader.lr.ph:                                 ; preds = %._crit_edge111
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !166 ; 2 uses
  %.not82 = icmp eq ptr %1, null
  %wide.trip.count170 = zext nneg i32 %i.hh to i64 ; 2 uses
  br i1 %.not82, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge114.split.us.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %._crit_edge114.split.us.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [88 x i8], ptr %i.hk, i64 %indvars.iv167 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !325 ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph113.us, label %._crit_edge114.split.us.us

._crit_edge114.split.us.us:                       ; preds = %scalar.ph, %middle.block, %.preheader.us
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge116, label %.preheader.us, !llvm.loop !628

.lr.ph113.us:                                     ; preds = %.preheader.us
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 40 ; 2 uses
  %wide.trip.count165 = zext nneg i32 %i.hn to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.hn, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph113.us
  %n.vec = and i64 %wide.trip.count165, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %index ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.hq, align 8, !tbaa !316
  %wide.load190 = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !316
  %i.hs = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.ht = ptrtoint <2 x ptr> %wide.load190 to <2 x i64>
  %wide.gep = getelementptr inbounds [256 x i8], ptr %i.e, <2 x i64> %i.hs
  %wide.gep191 = getelementptr inbounds [256 x i8], ptr %i.e, <2 x i64> %i.ht
  store <2 x ptr> %wide.gep, ptr %i.hq, align 8, !tbaa !316
  store <2 x ptr> %wide.gep191, ptr %i.hr, align 8, !tbaa !316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !629

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count165
  br i1 %cmp.n, label %._crit_edge114.split.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph113.us, %middle.block
  %indvars.iv162.ph = phi i64 [ 0, %.lr.ph113.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph ], [ %indvars.iv162.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv162 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !316
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.hx
  store ptr %i.hy, ptr %i.hv, align 8, !tbaa !316
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge114.split.us.us, label %scalar.ph, !llvm.loop !630

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge114.split
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %._crit_edge114.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [88 x i8], ptr %i.hk, i64 %indvars.iv157 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !325 ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph113, label %._crit_edge114.split

.lr.ph113:                                        ; preds = %.preheader
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 40 ; 5 uses
  %wide.trip.count155 = zext nneg i32 %i.ib to i64 ; 2 uses
  %xtraiter219 = and i64 %wide.trip.count155, 3   ; 3 uses
  %i.ie = icmp ult i32 %i.ib, 4
  br i1 %i.ie, label %.epil.preheader218, label %.lr.ph113.new

.lr.ph113.new:                                    ; preds = %.lr.ph113
  %unroll_iter223 = and i64 %wide.trip.count155, 2147483644
  br label %bb.p

._crit_edge114.split.loopexit.unr-lcssa:          ; preds = %bb.p
  %lcmp.mod221.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod221.not, label %._crit_edge114.split, label %.epil.preheader218

.epil.preheader218:                               ; preds = %._crit_edge114.split.loopexit.unr-lcssa, %.lr.ph113
  %indvars.iv152.epil.init = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next153.3, %._crit_edge114.split.loopexit.unr-lcssa ]
  %lcmp.mod222 = icmp ne i64 %xtraiter219, 0
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader218
  %indvars.iv152.epil = phi i64 [ %indvars.iv152.epil.init, %.epil.preheader218 ], [ %indvars.iv.next153.epil, %bb.o ] ; 2 uses
  %epil.iter220 = phi i64 [ 0, %.epil.preheader218 ], [ %epil.iter220.next, %bb.o ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv152.epil ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !316
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !275
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.ik
  store ptr %i.il, ptr %i.if, align 8, !tbaa !316
  %indvars.iv.next153.epil = add nuw nsw i64 %indvars.iv152.epil, 1
  %epil.iter220.next = add i64 %epil.iter220, 1   ; 2 uses
  %epil.iter220.cmp.not = icmp eq i64 %epil.iter220.next, %xtraiter219
  br i1 %epil.iter220.cmp.not, label %._crit_edge114.split, label %bb.o, !llvm.loop !631

._crit_edge114.split:                             ; preds = %._crit_edge114.split.loopexit.unr-lcssa, %bb.o, %.preheader
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count170
  br i1 %exitcond161.not, label %._crit_edge116, label %.preheader, !llvm.loop !628

bb.p:                                             ; preds = %bb.p, %.lr.ph113.new
  %indvars.iv152 = phi i64 [ 0, %.lr.ph113.new ], [ %indvars.iv.next153.3, %bb.p ] ; 5 uses
  %niter224 = phi i64 [ 0, %.lr.ph113.new ], [ %niter224.next.3, %bb.p ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv152 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !316
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %1, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !275
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.ir
  store ptr %i.is, ptr %i.im, align 8, !tbaa !316
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv152
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !316
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !275
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.iz
  store ptr %i.ja, ptr %i.iu, align 8, !tbaa !316
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv152
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !316
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !275
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.jh
  store ptr %i.ji, ptr %i.jc, align 8, !tbaa !316
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv152
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !316
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !275
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [256 x i8], ptr %i.e, i64 %i.jp
  store ptr %i.jq, ptr %i.jk, align 8, !tbaa !316
  %indvars.iv.next153.3 = add nuw nsw i64 %indvars.iv152, 4 ; 2 uses
  %niter224.next.3 = add i64 %niter224, 4         ; 2 uses
  %niter224.ncmp.3 = icmp eq i64 %niter224.next.3, %unroll_iter223
  br i1 %niter224.ncmp.3, label %._crit_edge114.split.loopexit.unr-lcssa, label %bb.p, !llvm.loop !632

._crit_edge116:                                   ; preds = %._crit_edge114.split, %._crit_edge114.split.us.us, %._crit_edge111
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.7 = alloca <{ %class.btVector3, [2 x ptr], float, i8, [3 x i8], float, float, float, [4 x i8] }>, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %.sroa.0.0.copyload5 = load ptr, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0.copyload7 = load ptr, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7.0..sroa_idx8, i64 52, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i8 0, i64 56, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !230
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !295
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload5, %bb.b ], [ null, %bb.c ], [ null, %bb.d ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload7, %bb.b ], [ %2, %bb.c ], [ %i.h, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !179  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !180
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.j, 0
  %i.n = shl nsw i32 %i.j, 1
  %i.o = select i1 %.not.i.i, i32 1, i32 %i.n     ; 4 uses
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %bb.g, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sext i32 %i.o to i64
  %i.r = mul nsw i64 %i.q, 72
  %i.s = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16)
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !179
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i: ; preds = %bb.h, %bb.g
  %i.t = phi i32 [ %.pre.i, %bb.h ], [ %i.j, %bb.g ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.s, %bb.h ], [ null, %bb.g ] ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.t to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.w = icmp eq i32 %i.t, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !9

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.af, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !178 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !177, !range !262, !noundef !263
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ah)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i: ; preds = %bb.k, %bb.j, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i8 1, ptr %i.al, align 8, !tbaa !177
  store ptr %.0.i.i.i, ptr %i.ag, align 8, !tbaa !178
  store i32 %i.o, ptr %i.k, align 8, !tbaa !180
  %.pre2.i = load i32, ptr %i.i, align 4, !tbaa !179
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE9push_backERKS1_.exit: ; preds = %bb.e, %bb.f, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i
  %i.am = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i ], [ %i.j, %bb.f ], [ %i.j, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !178
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [72 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  store ptr %.sroa.0.0, ptr %i.aq, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false)
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !179
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.i, align 4, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@llvm.fabs.v2f32
!428 = !{!147, !55, i64 636}
!429 = !{!"_ZTSN10btSoftBody8eFeature1_E", !36, i64 0}
!430 = !{!"_ZTSN10btSoftBody8sRayCastE", !284, i64 0, !429, i64 8, !37, i64 12, !55, i64 16}
!431 = !{!430, !284, i64 0}
!432 = !{!430, !55, i64 16}
!433 = !{!430, !37, i64 12}
!434 = !{!"_ZTS18btAlignedAllocatorIP10btDbvtNodeLj16EE"}
!435 = !{!"p2 _ZTS10btDbvtNode", !44, i64 0}
!436 = !{!"_ZTS20btAlignedObjectArrayIP10btDbvtNodeE", !434, i64 0, !37, i64 4, !37, i64 8, !435, i64 16, !46, i64 24}
!437 = !{!436, !46, i64 24}
!438 = !{!436, !435, i64 16}
!439 = !{!436, !37, i64 8}
!440 = !{!436, !37, i64 4}
!441 = !{!126, !126, i64 0}
!442 = !{!"_ZTS18btAlignedAllocatorI20btAlignedObjectArrayIiELj16EE"}
!443 = !{!"p1 _ZTS20btAlignedObjectArrayIiE", !43, i64 0}
!444 = !{!"_ZTS20btAlignedObjectArrayIS_IiEE", !442, i64 0, !37, i64 4, !37, i64 8, !443, i64 16, !46, i64 24}
!445 = !{!444, !46, i64 24}
!446 = !{!444, !443, i64 16}
!447 = !{!444, !37, i64 4}
!448 = !{!444, !37, i64 8}
!449 = !{!147, !126, i64 1608}
!450 = !{!130, !126, i64 0}
!451 = !{!"_ZTSN6btDbvt8ICollideE"}
!452 = !{!"_ZTSN10btSoftBody15RayFromToCasterE", !451, i64 0, !53, i64 8, !53, i64 24, !53, i64 40, !55, i64 56, !88, i64 64, !37, i64 72}
!453 = !{!452, !55, i64 56}
!454 = !{!452, !88, i64 64}
!455 = !{!452, !37, i64 72}
!456 = !{!147, !55, i64 496}
!457 = !{!147, !55, i64 628}
!458 = !{!147, !55, i64 436}
!459 = !{!147, !55, i64 440}
!460 = !{!147, !55, i64 492}
!461 = !{!326, !55, i64 64}
!462 = !{!321, !320, i64 24}
!463 = !{!321, !55, i64 100}
!464 = !{!"llvm.loop.unswitch.partial.disable"}
!465 = !{ptr @_ZN10btSoftBody12PSolve_LinksEPS_ff, ptr @_ZN10btSoftBody14PSolve_AnchorsEPS_ff, ptr @_ZN10btSoftBody16PSolve_RContactsEPS_ff, ptr @_ZN10btSoftBody16PSolve_SContactsEPS_ff}
!466 = !{!284, !284, i64 0}
!467 = !{!386, !46, i64 180}
!468 = !{!"_ZTS18btAlignedAllocatorIPK10btDbvtNodeLj16EE"}
!469 = !{!"_ZTS20btAlignedObjectArrayIPK10btDbvtNodeE", !468, i64 0, !37, i64 4, !37, i64 8, !435, i64 16, !46, i64 24}
!470 = !{!469, !46, i64 24}
!471 = !{!469, !435, i64 16}
!472 = !{!469, !37, i64 4}
!473 = !{!469, !37, i64 8}
!474 = !{!"_ZTS12btDbvtAabbMm", !53, i64 0, !53, i64 16}
!475 = !{i64 0, i64 16, !259, i64 16, i64 16, !259}
!476 = !{!"_ZTS11btDbvntNode", !474, i64 0, !53, i64 32, !55, i64 48, !36, i64 56, !43, i64 72}
!477 = !{!476, !43, i64 72}
!478 = !{!147, !126, i64 1544}
!479 = !{!"p1 _ZTS24btCollisionObjectWrapper", !43, i64 0}
!480 = !{!"p1 _ZTS11btTransform", !43, i64 0}
!481 = !{!"_ZTS24btCollisionObjectWrapper", !479, i64 0, !57, i64 8, !331, i64 16, !480, i64 24, !480, i64 32, !37, i64 40, !37, i64 44}
!482 = !{!481, !57, i64 8}
!483 = !{!481, !480, i64 24}
!484 = !{i64 4}
!485 = !{!481, !331, i64 16}
!486 = !{!346, !331, i64 0}
!487 = !{!346, !55, i64 40}
!488 = !{!481, !480, i64 32}
!489 = !{!"_ZTSN15btGjkEpaSolver28sResults7eStatusE", !36, i64 0}
!490 = !{!"_ZTSN15btGjkEpaSolver28sResultsE", !489, i64 0, !36, i64 4, !53, i64 36, !55, i64 52}
!491 = !{!490, !55, i64 52}
!492 = !{!381, !320, i64 8}
!493 = !{i64 0, i64 16, !259, i64 16, i64 16, !259, i64 32, i64 1, !259}
!494 = !{!386, !55, i64 92}
!495 = !{!"_ZTSN10btSoftBody6CJointE", !386, i64 0, !37, i64 184, !37, i64 188, !36, i64 192, !53, i64 224, !55, i64 240}
!496 = !{!495, !37, i64 184}
!497 = !{!495, !37, i64 188}
!498 = !{!410, !55, i64 408}
!499 = !{!410, !55, i64 412}
!500 = !{!"_ZTSN10btSoftBody8RContactE", !346, i64 0, !79, i64 64, !52, i64 72, !53, i64 120, !55, i64 136, !55, i64 140, !55, i64 144, !348, i64 152, !348, i64 360, !348, i64 568, !53, i64 776, !53, i64 792}
!501 = !{!500, !79, i64 64}
!502 = !{!500, !55, i64 144}
!503 = !{!"_ZTSN15btSoftColliders13CollideSDF_RSE", !451, i64 0, !284, i64 8, !479, i64 16, !320, i64 24, !55, i64 32, !55, i64 36}
!504 = !{!503, !284, i64 8}
!505 = !{!503, !479, i64 16}
!506 = !{!503, !320, i64 24}
!507 = !{!"_ZTSN15btSoftColliders11ClusterBaseE", !451, i64 0, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24}
!508 = !{!507, !55, i64 8}
!509 = !{!"_ZTSN15btSoftColliders12CollideCL_RSE", !507, i64 0, !284, i64 32, !479, i64 40}
!510 = !{!509, !284, i64 32}
!511 = !{!509, !479, i64 40}
!512 = !{!507, !55, i64 12}
!513 = !{!507, !55, i64 16}
!514 = !{!507, !55, i64 20}
!515 = !{!147, !126, i64 1680}
!516 = !{!"_ZTSN15btSoftColliders13CollideSDF_RDE", !451, i64 0, !284, i64 8, !479, i64 16, !320, i64 24, !55, i64 32, !55, i64 36}
!517 = !{!516, !284, i64 8}
!518 = !{!516, !479, i64 16}
!519 = !{!516, !320, i64 24}
!520 = !{!"_ZTSN15btSoftColliders14CollideSDF_RDFE", !451, i64 0, !284, i64 8, !479, i64 16, !320, i64 24, !55, i64 32, !55, i64 36}
!521 = !{!520, !284, i64 8}
!522 = !{!520, !479, i64 16}
!523 = !{!520, !320, i64 24}
!524 = !{!"_ZTSN15btSoftColliders12CollideVF_SSE", !451, i64 0, !36, i64 8, !55, i64 24}
!525 = !{!524, !55, i64 24}
!526 = !{!"_ZTSN15btSoftColliders12CollideVF_DDE", !451, i64 0, !36, i64 8, !55, i64 24, !46, i64 28}
!527 = !{!526, !46, i64 28}
!528 = !{!"_ZTSN15btSoftColliders12CollideFF_DDE", !451, i64 0, !36, i64 8, !55, i64 24, !46, i64 28}
!529 = !{!528, !46, i64 28}
!530 = !{!129, !128, i64 16}
!531 = !{!476, !55, i64 48}
!532 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt7sStknNNELj16EE"}
!533 = !{!"p1 _ZTSN6btDbvt7sStknNNE", !43, i64 0}
!534 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt7sStknNNEE", !532, i64 0, !37, i64 4, !37, i64 8, !533, i64 16, !46, i64 24}
!535 = !{!534, !533, i64 16}
!536 = !{!"_ZTSN15btSoftColliders10CollideCCDE", !451, i64 0, !36, i64 8, !55, i64 24, !55, i64 28, !46, i64 32}
!537 = !{!536, !46, i64 32}
!538 = !{!"_ZTS18btAlignedAllocatorI9btHashPtrLj16EE"}
!539 = !{!"p1 _ZTS9btHashPtr", !43, i64 0}
!540 = !{!"_ZTS20btAlignedObjectArrayI9btHashPtrE", !538, i64 0, !37, i64 4, !37, i64 8, !539, i64 16, !46, i64 24}
!541 = !{!540, !46, i64 24}
!542 = !{!540, !539, i64 16}
!543 = !{!540, !37, i64 4}
!544 = !{!540, !37, i64 8}
!545 = !{!"_ZTS18btVector3FloatData", !36, i64 0}
!546 = !{!147, !55, i64 488}
!547 = !{!58, !55, i64 244}
!548 = !{!"_ZTS13btConvexShape", !281, i64 0}
!549 = !{!"_ZTS21btConvexInternalShape", !548, i64 0, !53, i64 32, !53, i64 48, !55, i64 64, !55, i64 68}
!550 = !{!549, !55, i64 64}
!551 = !{!"_ZTS27btSoftClusterCollisionShape", !549, i64 0, !377, i64 72}
!552 = !{!551, !377, i64 72}
!553 = !{!88, !88, i64 0}
!554 = !{i64 0, i64 8, !316, i64 8, i64 8, !553, i64 16, i64 16, !259, i64 32, i64 16, !259, i64 48, i64 16, !259, i64 64, i64 4, !253, i64 68, i64 4, !253, i64 72, i64 4, !253, i64 76, i64 4, !253, i64 80, i64 8, !332}
!555 = !{!536, !55, i64 28}
!556 = distinct !{!556, !264}
!557 = distinct !{!557, !261}
!558 = distinct !{!558, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f"}
!559 = distinct !{!559, !558, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f: argument 0"}
!560 = distinct !{!560, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_"}
!561 = distinct !{!561, !560, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_: argument 0"}
!562 = distinct !{!562, !261}
!563 = !{!147, !59, i64 408}
!564 = !{!559}
!565 = !{!561}
!566 = !{!561, !559}
!567 = !{!147, !43, i64 880}
!568 = !{!147, !55, i64 1504}
!569 = distinct !{!569, !261, !296, !297}
!570 = distinct !{!570, !264}
!571 = distinct !{!571, !261, !296}
!572 = distinct !{!572, !261}
!573 = !{!58, !56, i64 192}
!574 = !{!304, !298, i64 32}
!575 = !{!304, !299, i64 40}
!576 = distinct !{!576, !261}
!577 = distinct !{!577, !261}
!578 = distinct !{!578, !261, !296, !297}
!579 = distinct !{!579, !264}
!580 = distinct !{!580, !261, !296}
!581 = distinct !{!581, !261, !296, !297}
!582 = distinct !{!582, !264}
!583 = distinct !{!583, !261, !296}
!584 = distinct !{!584, !261, !296, !297}
!585 = distinct !{!585, !264}
!586 = distinct !{!586, !261, !296}
!587 = distinct !{!587, !261, !296, !297}
!588 = distinct !{!588, !264}
!589 = distinct !{!589, !261, !296}
!590 = distinct !{!590, !261, !296, !297}
!591 = distinct !{!591, !264}
!592 = distinct !{!592, !261, !296}
!593 = distinct !{!593, !261, !296, !297}
!594 = distinct !{!594, !264}
!595 = distinct !{!595, !261, !296}
!596 = distinct !{!596, !261, !296, !297}
!597 = distinct !{!597, !264}
!598 = distinct !{!598, !261, !296}
!599 = distinct !{!599, !261, !296, !297}
!600 = distinct !{!600, !264}
!601 = distinct !{!601, !261, !296}
!602 = distinct !{!602, !261, !296, !297}
!603 = distinct !{!603, !264}
!604 = distinct !{!604, !261, !296}
!605 = distinct !{!605, !261}
!606 = distinct !{!606, !261}
!607 = distinct !{!607, !261}
!608 = distinct !{!608, !261}
!609 = distinct !{!609, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f"}
!610 = distinct !{!610, !609, !"_ZN12btDbvtAabbMm6FromCRERK9btVector3f: argument 0"}
!611 = distinct !{!611, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_"}
!612 = distinct !{!612, !611, !"_ZN12btDbvtAabbMm6FromCEERK9btVector3S2_: argument 0"}
!613 = !{!610}
!614 = !{!612}
!615 = !{!612, !610}
!616 = distinct !{!616, !261}
!617 = distinct !{!617, !261}
!618 = distinct !{!618, !261}
!619 = distinct !{!619, !261}
!620 = distinct !{!620, !261, !296, !297}
!621 = distinct !{!621, !261}
!622 = distinct !{!622, !261, !297, !296}
!623 = distinct !{!623, !261}
!624 = distinct !{!624, !261}
!625 = distinct !{!625, !261}
!626 = distinct !{!626, !261}
!627 = distinct !{!627, !264}
!628 = distinct !{!628, !261}
!629 = distinct !{!629, !261, !296, !297}
!630 = distinct !{!630, !261, !297, !296}
!631 = distinct !{!631, !264}
!632 = distinct !{!632, !261}
!633 = distinct !{!633, !261}
!634 = distinct !{!634, !"_ZNK11btTransform7inverseEv"}
!635 = distinct !{!635, !634, !"_ZNK11btTransform7inverseEv: argument 0"}
!636 = distinct !{!636, !"_ZNK11btMatrix3x39transposeEv"}
!637 = distinct !{!637, !636, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!638 = !{!637, !635}
!639 = !{!635}
!640 = distinct !{!640, !261, !296, !297}
!641 = distinct !{!641, !264}
!642 = distinct !{!642, !261, !296}
!643 = distinct !{!643, !261}
!644 = distinct !{!644, !"_ZNK11btMatrix3x39transposeEv"}
!645 = distinct !{!645, !644, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!646 = distinct !{!646, !"_ZNK11btTransform7inverseEv"}
!647 = distinct !{!647, !646, !"_ZNK11btTransform7inverseEv: argument 0"}
!648 = distinct !{!648, !"_ZNK11btMatrix3x39transposeEv"}
!649 = distinct !{!649, !648, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!650 = !{!645}
!651 = !{!649, !647}
!652 = distinct !{!652, !261}
!653 = distinct !{!653, !261}
!654 = distinct !{!654, !261}
!655 = !{!302, !37, i64 4}
!656 = !{!302, !301, i64 16}
!657 = !{!360, !360, i64 0}
!658 = !{!303, !37, i64 56}
!659 = !{!303, !37, i64 52}
!660 = !{!361, !37, i64 272}
!661 = !{!361, !360, i64 288}
!662 = !{!303, !37, i64 44}
!663 = !{!303, !37, i64 48}
!664 = !{!303, !55, i64 36}
!665 = !{!303, !37, i64 40}
!666 = !{!361, !37, i64 268}
!667 = distinct !{!667, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3"}
!668 = distinct !{!668, !667, !"_ZL10MassMatrixfRK11btMatrix3x3RK9btVector3: argument 0"}
!669 = distinct !{!669, !"_ZL5CrossRK9btVector3"}
!670 = distinct !{!670, !669, !"_ZL5CrossRK9btVector3: argument 0"}
!671 = distinct !{!671, !"_ZmlRK11btMatrix3x3S1_"}
!672 = distinct !{!672, !671, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!673 = distinct !{!673, !"_ZmlRK11btMatrix3x3S1_"}
!674 = distinct !{!674, !673, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!675 = !{!670, !668}
!676 = !{!672, !668}
!677 = !{!674}
!678 = distinct !{!678, !261}
!679 = distinct !{!679, !"_ZNK11btMatrix3x39transposeEv"}
!680 = distinct !{!680, !679, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!681 = distinct !{!681, !"_ZL12OuterProductPKfS0_S0_S0_S0_S0_i"}
!682 = distinct !{!682, !681, !"_ZL12OuterProductPKfS0_S0_S0_S0_S0_i: argument 0"}
!683 = distinct !{!683, !264}
!684 = distinct !{!684, !264}
!685 = distinct !{!685, !264}
!686 = distinct !{!686, !264}
!687 = distinct !{!687, !264}
!688 = distinct !{!688, !264}
!689 = distinct !{!689, !264}
!690 = distinct !{!690, !264}
!691 = distinct !{!691, !264}
!692 = distinct !{!692, !"_ZNK11btTransform7inverseEv"}
!693 = distinct !{!693, !692, !"_ZNK11btTransform7inverseEv: argument 0"}
!694 = distinct !{!694, !"_ZNK11btMatrix3x39transposeEv"}
!695 = distinct !{!695, !694, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!696 = !{!680}
!697 = !{!682}
!698 = !{!695, !693}
!699 = distinct !{!699, !261, !296, !297}
!700 = distinct !{!700, !264}
!701 = distinct !{!701, !261, !296}
!702 = distinct !{!702, !261, !296, !297}
!703 = distinct !{!703, !264}
!704 = distinct !{!704, !261, !296}
!705 = distinct !{!705, !264}
!706 = distinct !{!706, !264}
!707 = distinct !{!707, !264}
!708 = distinct !{!708, !264}
!709 = distinct !{!709, !264}
!710 = distinct !{!710, !264}
!711 = distinct !{!711, !264}
!712 = distinct !{!712, !264}
!713 = distinct !{!713, !264}
!714 = distinct !{!714, !261, !296, !297}
!715 = distinct !{!715, !264}
!716 = distinct !{!716, !261, !296}
!717 = distinct !{!717, !261, !296, !297}
!718 = distinct !{!718, !264}
!719 = distinct !{!719, !261, !296}
!720 = distinct !{!720, !261, !296, !297}
!721 = distinct !{!721, !264}
!722 = distinct !{!722, !261, !296}
!723 = distinct !{!723, !261, !296, !297}
!724 = distinct !{!724, !264}
!725 = distinct !{!725, !261, !296}
!726 = distinct !{!726, !261, !296, !297}
!727 = distinct !{!727, !264}
!728 = distinct !{!728, !261, !296}
!729 = distinct !{!729, !261, !296, !297}
!730 = distinct !{!730, !264}
!731 = distinct !{!731, !261, !296}
!732 = distinct !{!732, !261, !296, !297}
!733 = distinct !{!733, !264}
!734 = distinct !{!734, !261, !296}
!735 = distinct !{!735, !261, !296, !297}
!736 = distinct !{!736, !264}
!737 = distinct !{!737, !261, !296}
!738 = distinct !{!738, !"_ZNK11btTransform7inverseEv"}
!739 = distinct !{!739, !738, !"_ZNK11btTransform7inverseEv: argument 0"}
!740 = distinct !{!740, !"_ZNK11btMatrix3x39transposeEv"}
!741 = distinct !{!741, !740, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!742 = distinct !{!742, !"_ZNK11btTransform7inverseEv"}
!743 = distinct !{!743, !742, !"_ZNK11btTransform7inverseEv: argument 0"}
!744 = distinct !{!744, !"_ZNK11btMatrix3x39transposeEv"}
!745 = distinct !{!745, !744, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!746 = distinct !{!746, !261, !296, !297}
!747 = distinct !{!747, !264}
!748 = distinct !{!748, !261, !296}
!749 = !{!741, !739}
!750 = !{!739}
!751 = !{!745, !743}
!752 = !{!743}
!753 = distinct !{!753, !"_ZNK11btTransform7inverseEv"}
!754 = distinct !{!754, !753, !"_ZNK11btTransform7inverseEv: argument 0"}
!755 = distinct !{!755, !"_ZNK11btMatrix3x39transposeEv"}
!756 = distinct !{!756, !755, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!757 = distinct !{!757, !"_ZNK11btTransform7inverseEv"}
!758 = distinct !{!758, !757, !"_ZNK11btTransform7inverseEv: argument 0"}
!759 = distinct !{!759, !"_ZNK11btMatrix3x39transposeEv"}
!760 = distinct !{!760, !759, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!761 = distinct !{!761, !261, !296, !297}
!762 = distinct !{!762, !264}
!763 = distinct !{!763, !261, !296}
!764 = !{!756, !754}
!765 = !{!760, !758}
!766 = !{!"_ZTSN10btSoftBody6AJoint5SpecsE", !384, i64 0, !53, i64 12, !388, i64 32}
!767 = !{!766, !388, i64 32}
!768 = distinct !{!768, !261}
!769 = distinct !{!769, !261}
!770 = distinct !{!770, !264}
!771 = distinct !{!771, !261}
!772 = distinct !{!772, !261, !296, !297}
!773 = distinct !{!773, !261}
!774 = distinct !{!774, !261, !297, !296}
!775 = distinct !{!775, !261, !296, !297}
!776 = distinct !{!776, !261, !297, !296}
!777 = distinct !{!777, !264}
!778 = distinct !{!778, !261}
!779 = distinct !{!779, !261}
!780 = distinct !{!780, !261}
!781 = distinct !{!781, !261, !296, !297}
!782 = distinct !{!782, !261, !297, !296}
!783 = distinct !{!783, !261}
!784 = distinct !{!784, !261}
!785 = distinct !{!785, !261}
!786 = distinct !{!786, !"_ZmlRK11btMatrix3x3S1_"}
!787 = distinct !{!787, !786, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!788 = distinct !{!788, !"_ZNK11btMatrix3x39transposeEv"}
!789 = distinct !{!789, !788, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!790 = distinct !{!790, !"_ZL12OuterProductRK9btVector3S1_"}
!791 = distinct !{!791, !790, !"_ZL12OuterProductRK9btVector3S1_: argument 0"}
!792 = distinct !{!792, !261}
!793 = !{!787}
!794 = !{!789}
!795 = !{!791}
!796 = distinct !{!796, !261}
!797 = !{!397, !55, i64 8}
!798 = !{!397, !55, i64 4}
!799 = distinct !{!799, !"_ZNK11btTransform7inverseEv"}
!800 = distinct !{!800, !799, !"_ZNK11btTransform7inverseEv: argument 0"}
!801 = distinct !{!801, !"_ZNK11btTransformmlERKS_"}
!802 = distinct !{!802, !801, !"_ZNK11btTransformmlERKS_: argument 0"}
!803 = distinct !{!803, !"_ZmlRK11btMatrix3x3S1_"}
!804 = distinct !{!804, !803, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!805 = distinct !{!805, !"_ZNK11btMatrix3x39transposeEv"}
!806 = distinct !{!806, !805, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!807 = !{!800}
!808 = !{!802}
!809 = !{!804, !802}
!810 = !{!806, !800}
!811 = distinct !{!811, !261}
!812 = distinct !{!812, !261}
!813 = distinct !{!813, !264}
!814 = distinct !{!814, !261}
!815 = distinct !{!815, !261}
!816 = distinct !{!816, !261}
!817 = distinct !{!817, !261}
!818 = !{!329, !55, i64 232}
!819 = distinct !{!819, !261, !296, !297}
!820 = distinct !{!820, !261, !297, !296}
!821 = distinct !{!821, !261, !296, !297}
!822 = distinct !{!822, !264}
!823 = distinct !{!823, !261, !296}
!824 = distinct !{!824, !"LVerDomain"}
!825 = distinct !{!825, !824}
!826 = distinct !{!826, !824}
!827 = distinct !{!827, !261, !296, !297}
!828 = distinct !{!828, !261}
!829 = distinct !{!829, !261, !296}
!830 = distinct !{!830, !261}
end_hunk_1
