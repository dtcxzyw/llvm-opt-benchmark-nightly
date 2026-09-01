Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@hnsw_reconnect_nodes:bb.a
  %i.eb = and i32 %i.dg, -8
  br label %.preheader.i356

.preheader.i356:                                  ; preds = %.preheader.loopexit.i, %bb.v
  %.071.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.gg, %.preheader.loopexit.i ] ; 3 uses
  %.070.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.hp, %.preheader.loopexit.i ]
  %.069.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.eb, %.preheader.loopexit.i ] ; 2 uses
  %i.ec = icmp ult i32 %.069.lcssa.i, %i.dg
  br i1 %i.ec, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i356
  %i.ed = zext i32 %.069.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.dg to i64      ; 3 uses
  %i.ee = sub nsw i64 %wide.trip.count.i, %i.ed   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ee, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %i.ef = and i64 %wide.trip.count.i, 7           ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ee, %i.ef           ; 2 uses
  %i.eg = add nsw i64 %n.vec, %i.ed
  %i.eh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.071.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eh, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi612 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eu, %vector.body ]
  %i.ei = add nuw i64 %index, %i.ed               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %wide.load = load <4 x i8>, ptr %i.ej, align 1, !tbaa !32
  %wide.load613 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !32
  %i.el = sext <4 x i8> %wide.load to <4 x i32>
  %i.em = sext <4 x i8> %wide.load613 to <4 x i32>
  %i.en = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ei ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %wide.load614 = load <4 x i8>, ptr %i.en, align 1, !tbaa !32
  %wide.load615 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !32
  %i.ep = sext <4 x i8> %wide.load614 to <4 x i32>
  %i.eq = sext <4 x i8> %wide.load615 to <4 x i32>
  %i.er = mul nsw <4 x i32> %i.ep, %i.el
  %i.es = mul nsw <4 x i32> %i.eq, %i.em
  %i.et = add <4 x i32> %i.er, %vec.phi           ; 2 uses
  %i.eu = add <4 x i32> %i.es, %vec.phi612        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eu, %i.et
  %i.ew = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.ed, %.lr.ph92.preheader.i ], [ %i.eg, %middle.block ]
  %.17290.i.ph = phi i32 [ %.071.lcssa.i, %.lr.ph92.preheader.i ], [ %i.ew, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i358:                                      ; preds = %.lr.ph.i358, %.lr.ph.preheader.i
  %indvars.iv.i359 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i360, %.lr.ph.i358 ] ; 10 uses
  %.07086.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.hp, %.lr.ph.i358 ]
  %.07185.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gg, %.lr.ph.i358 ]
  %i.ex = or disjoint i64 %indvars.iv.i359, 7     ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i359
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !32
  %i.fa = sext i8 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.i359
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !32
  %i.fd = sext i8 %i.fc to i32
  %i.fe = mul nsw i32 %i.fd, %i.fa
  %i.ff = or disjoint i64 %indvars.iv.i359, 1     ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !32
  %i.fi = sext i8 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ff
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !32
  %i.fl = sext i8 %i.fk to i32
  %i.fm = mul nsw i32 %i.fl, %i.fi
  %i.fn = or disjoint i64 %indvars.iv.i359, 2     ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !32
  %i.fq = sext i8 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fn
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !32
  %i.ft = sext i8 %i.fs to i32
  %i.fu = mul nsw i32 %i.ft, %i.fq
  %i.fv = or disjoint i64 %indvars.iv.i359, 3     ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !32
  %i.fy = sext i8 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fv
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !32
  %i.gb = sext i8 %i.ga to i32
  %i.gc = mul nsw i32 %i.gb, %i.fy
  %i.gd = add i32 %i.fe, %.07185.i
  %i.ge = add i32 %i.gd, %i.fm
  %i.gf = add i32 %i.ge, %i.fu
  %i.gg = add i32 %i.gf, %i.gc                    ; 2 uses
  %i.gh = or disjoint i64 %indvars.iv.i359, 4     ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !32
  %i.gk = sext i8 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gh
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !32
  %i.gn = sext i8 %i.gm to i32
  %i.go = mul nsw i32 %i.gn, %i.gk
  %i.gp = or disjoint i64 %indvars.iv.i359, 5     ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !32
  %i.gs = sext i8 %i.gr to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gp
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !32
  %i.gv = sext i8 %i.gu to i32
  %i.gw = mul nsw i32 %i.gv, %i.gs
  %i.gx = or disjoint i64 %indvars.iv.i359, 6     ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !32
  %i.ha = sext i8 %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gx
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !32
  %i.hd = sext i8 %i.hc to i32
  %i.he = mul nsw i32 %i.hd, %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ex
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !32
  %i.hh = sext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ex
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !32
  %i.hk = sext i8 %i.hj to i32
  %i.hl = mul nsw i32 %i.hk, %i.hh
  %i.hm = add i32 %i.go, %.07086.i
  %i.hn = add i32 %i.hm, %i.gw
  %i.ho = add i32 %i.hn, %i.he
  %i.hp = add i32 %i.ho, %i.hl                    ; 2 uses
  %indvars.iv.next.i360 = add nuw nsw i64 %indvars.iv.i359, 8 ; 2 uses
  %i.hq = or disjoint i64 %indvars.iv.next.i360, 7
  %i.hr = icmp samesign ult i64 %i.hq, %i.ea
  br i1 %i.hr, label %.lr.ph.i358, label %.preheader.loopexit.i, !llvm.loop !57

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17290.i = phi i32 [ %i.hz, %.lr.ph92.i ], [ %.17290.i.ph, %.lr.ph92.i.preheader ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv98.i
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !32
  %i.hu = sext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv98.i
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !32
  %i.hx = sext i8 %i.hw to i32
  %i.hy = mul nsw i32 %i.hx, %i.hu
  %i.hz = add nsw i32 %i.hy, %.17290.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !169

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i356
  %.172.lcssa.i = phi i32 [ %.071.lcssa.i, %.preheader.i356 ], [ %i.ew, %middle.block ], [ %i.hz, %.lr.ph92.i ]
  %i.ia = add nsw i32 %.172.lcssa.i, %.070.lcssa.i
  %i.ib = sitofp i32 %i.ia to float
  %i.ic = fmul float %i.dy, %i.ib
  %i.id = fsub float 1.000000e+00, %i.ic          ; 3 uses
  %i.ie = fcmp olt float %i.id, 0.000000e+00
  %i.if = fcmp ogt float %i.id, 2.000000e+00
  %spec.store.select.i = select i1 %i.if, float 2.000000e+00, float %i.id
  %.0.i357 = select i1 %i.ie, float 0.000000e+00, float %spec.store.select.i
  br label %hnsw_distance.exit

bb.w:                                             ; preds = %bb.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !15
  %i.ik = load i32, ptr %i.h, align 8, !tbaa !73
  %i.il = tail call float @vectors_distance_bin(ptr noundef %i.ih, ptr noundef %i.ij, i32 noundef %i.ik)
  br label %hnsw_distance.exit

bb.x:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %._crit_edge.i, %bb.u, %bb.t, %bb.r, %._crit_edge.i365, %bb.n, %bb.k, %bb.w
  %.0.i = phi float [ %i.il, %bb.w ], [ %i.db, %._crit_edge.i365 ], [ %i.as, %bb.k ], [ %i.aw, %bb.n ], [ %i.do, %bb.r ], [ %i.ds, %bb.t ], [ %.0.i357, %._crit_edge.i ], [ 1.000000e+00, %bb.u ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv458
  store float %.0.i, ptr %gep, align 4, !tbaa !27
  %i.im = mul nuw nsw i64 %indvars.iv458, %i.c
  %gep578 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep577, i64 %i.im
  store float %.0.i, ptr %gep578, align 4, !tbaa !27
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next459, %i.c
  br i1 %exitcond.not, label %.loopexit383, label %bb.i, !llvm.loop !170

._crit_edge406:                                   ; preds = %._crit_edge403.us
  %i.in = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.io = tail call ptr %i.in(i64 noundef %i.e) #34 ; 13 uses
  %.not326 = icmp eq ptr %i.io, null
  br i1 %.not326, label %.sink.split.sink.split, label %.preheader379.lr.ph

.preheader379.lr.ph:                              ; preds = %._crit_edge406
  %i.ip = zext i32 %3 to i64                      ; 3 uses
  %i.iq = icmp sgt i32 %2, 2
  %4 = insertelement <2 x i32> poison, i32 %2, i64 0
  %5 = shufflevector <2 x i32> %4, <2 x i32> poison, <2 x i32> zeroinitializer
  %6 = add nsw <2 x i32> %5, <i32 -1, i32 -2>
  %7 = uitofp <2 x i32> %6 to <2 x float>         ; 2 uses
  br i1 %i.iq, label %.preheader379.us.preheader, label %.preheader379

.preheader379.us.preheader:                       ; preds = %.preheader379.lr.ph
  %i.ir = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %.preheader379.us

.preheader379.us:                                 ; preds = %.preheader379.us.preheader, %._crit_edge413.split.us.us
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %._crit_edge413.split.us.us ], [ 0, %.preheader379.us.preheader ] ; 6 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv502
  %i.it = mul nuw nsw i64 %indvars.iv502, %i.c    ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv502
  %invariant.gep583 = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.it
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv502
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.it
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %.preheader379.us
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %bb.ad ], [ 0, %.preheader379.us ] ; 6 uses
  %i.ix = icmp eq i64 %indvars.iv502, %indvars.iv497
  br i1 %i.ix, label %bb.ac, label %.preheader378.us.us

bb.z:                                             ; preds = %bb.aa
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %exitcond496.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count495
  br i1 %exitcond496.not, label %.critedge.us.us, label %bb.aa, !llvm.loop !171

bb.aa:                                            ; preds = %.lr.ph409.us.us, %bb.z
  %indvars.iv492 = phi i64 [ 0, %.lr.ph409.us.us ], [ %indvars.iv.next493, %bb.z ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv492
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !26
  %i.ja = icmp eq ptr %i.iz, %i.kb
  br i1 %i.ja, label %bb.ab, label %bb.z

.critedge.us.us:                                  ; preds = %bb.z, %.preheader378.us.us
  %i.jb = add nuw nsw i64 %indvars.iv497, %i.it   ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !27 ; 2 uses
  %i.je = load float, ptr %i.iu, align 4, !tbaa !27
  %i.jf = fneg float %i.jd
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv497
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !27
  %i.ji = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %i.jh, i64 1
  %i.jk = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jj, <2 x float> %i.ir, <2 x float> %i.jl)
  %i.jn = fdiv <2 x float> %i.jm, %8              ; 2 uses
  %shift617 = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop618 = fadd <2 x float> %i.jn, %shift617
  %i.jo = extractelement <2 x float> %foldExtExtBinop618, i64 0
  %i.jp = fmul float %i.jo, 5.000000e-01
  %i.jq = fmul float %i.jp, 3.000000e-01
  %i.jr = fsub float 2.000000e+00, %i.jd
  %i.js = tail call float @llvm.fmuladd.f32(float %i.jr, float f0x3F333333, float %i.jq)
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jb
  store float %i.js, ptr %i.jt, align 4, !tbaa !27
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %gep584 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv497
  store float -1.000000e+00, ptr %gep584, align 4, !tbaa !27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  store float -1.000000e+00, ptr %i.iw, align 4, !tbaa !27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.critedge.us.us
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond501.not = icmp eq i64 %indvars.iv.next498, %i.c
  br i1 %exitcond501.not, label %._crit_edge413.split.us.us, label %bb.y, !llvm.loop !172

.preheader378.us.us:                              ; preds = %bb.y
  %i.ju = load ptr, ptr %i.is, align 8, !tbaa !26
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 312
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %i.ip ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !132 ; 2 uses
  %.not343407.us.us.not = icmp eq i32 %i.jy, 0
  br i1 %.not343407.us.us.not, label %.critedge.us.us, label %.lr.ph409.us.us

.lr.ph409.us.us:                                  ; preds = %.preheader378.us.us
  %i.jz = load ptr, ptr %i.jw, align 8, !tbaa !135
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv497
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !26
  %wide.trip.count495 = zext i32 %i.jy to i64
  br label %bb.aa

._crit_edge413.split.us.us:                       ; preds = %bb.ad
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %i.c
  br i1 %exitcond506.not, label %._crit_edge416.split, label %.preheader379.us, !llvm.loop !173

._crit_edge416.split:                             ; preds = %.preheader379, %._crit_edge413.split, %._crit_edge413.split.1, %._crit_edge413.split.us.us
  %i.kc = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.kd = tail call ptr %i.kc(i64 noundef %i.d) #34 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kd, i8 0, i64 %i.d, i1 false)
  %.not327 = icmp eq ptr %i.kd, null
  br i1 %.not327, label %.sink.split.sink.split.sink.split, label %.preheader377

.preheader377:                                    ; preds = %._crit_edge416.split
  %i.ke = zext i32 %3 to i64                      ; 13 uses
  %wide.trip.count516 = zext nneg i32 %2 to i64   ; 2 uses
  br label %.lr.ph432

.preheader379.1:                                  ; preds = %._crit_edge413.split
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %invariant.gep581.1 = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.c
  %i.kg = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.c
  %i.ki = load ptr, ptr %i.kf, align 8, !tbaa !26
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 312
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.kj, i64 %i.ip ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !132 ; 2 uses
  %.not343407.not.1639 = icmp eq i32 %i.km, 0
  br i1 %.not343407.not.1639, label %.critedge.1647, label %.lr.ph409.1642

.lr.ph409.1642:                                   ; preds = %.preheader379.1
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !135
  %i.ko = load ptr, ptr %1, align 8, !tbaa !26
  %wide.trip.count479.1641 = zext i32 %i.km to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph409.1642
  %indvars.iv476.1643 = phi i64 [ 0, %.lr.ph409.1642 ], [ %indvars.iv.next477.1644, %bb.af ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv476.1643
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !26
  %i.kr = icmp eq ptr %i.kq, %i.ko
  br i1 %i.kr, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next477.1644 = add nuw nsw i64 %indvars.iv476.1643, 1 ; 2 uses
  %exitcond480.not.1645 = icmp eq i64 %indvars.iv.next477.1644, %wide.trip.count479.1641
  br i1 %exitcond480.not.1645, label %.critedge.1647, label %bb.ae, !llvm.loop !171

bb.ag:                                            ; preds = %bb.ae
  store float -1.000000e+00, ptr %invariant.gep581.1, align 4, !tbaa !27
  br label %._crit_edge413.split.1

.critedge.1647:                                   ; preds = %bb.af, %.preheader379.1
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !27
  %i.ku = fsub float 2.000000e+00, %i.kt
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.ku, float f0x3F333333, float 0.000000e+00)
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.c
  store float %i.kv, ptr %i.kw, align 4, !tbaa !27
  br label %._crit_edge413.split.1

._crit_edge413.split.1:                           ; preds = %.critedge.1647, %bb.ag
  store float -1.000000e+00, ptr %i.kh, align 4, !tbaa !27
  br label %._crit_edge416.split

.preheader379:                                    ; preds = %.preheader379.lr.ph
  store float -1.000000e+00, ptr %i.io, align 4, !tbaa !27
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %._crit_edge416.split, label %.preheader378.1

.preheader378.1:                                  ; preds = %.preheader379
  %i.kx = load ptr, ptr %1, align 8, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 312
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %i.ip ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !132 ; 2 uses
  %.not343407.not.1 = icmp eq i32 %i.lb, 0
  br i1 %.not343407.not.1, label %.critedge.1, label %.lr.ph409.1

.lr.ph409.1:                                      ; preds = %.preheader378.1
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !135
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !26
  %wide.trip.count479.1 = zext i32 %i.lb to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph409.1
  %indvars.iv476.1 = phi i64 [ 0, %.lr.ph409.1 ], [ %indvars.iv.next477.1, %bb.ai ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv476.1
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !26
  %i.lh = icmp eq ptr %i.lg, %i.le
  br i1 %i.lh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next477.1 = add nuw nsw i64 %indvars.iv476.1, 1 ; 2 uses
  %exitcond480.not.1 = icmp eq i64 %indvars.iv.next477.1, %wide.trip.count479.1
  br i1 %exitcond480.not.1, label %.critedge.1, label %bb.ah, !llvm.loop !171

bb.aj:                                            ; preds = %bb.ah
  %gep582.1 = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store float -1.000000e+00, ptr %gep582.1, align 4, !tbaa !27
  br label %._crit_edge413.split

.critedge.1:                                      ; preds = %bb.ai, %.preheader378.1
  %i.li = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.lj = load float, ptr %i.li, align 4, !tbaa !27
  %i.lk = fsub float 2.000000e+00, %i.lj
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.lk, float f0x3F333333, float 0.000000e+00)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store float %i.ll, ptr %i.lm, align 4, !tbaa !27
  br label %._crit_edge413.split

._crit_edge413.split:                             ; preds = %.critedge.1, %bb.aj
  %exitcond491.not = icmp eq i32 %2, 1
  br i1 %exitcond491.not, label %._crit_edge416.split, label %.preheader379.1

.lr.ph432:                                        ; preds = %.lr.ph432.backedge, %.preheader377
  %indvars.iv513 = phi i64 [ 0, %.preheader377 ], [ %indvars.iv513.be, %.lr.ph432.backedge ] ; 6 uses
  %.0287428.us = phi i32 [ -1, %.preheader377 ], [ %.0287428.us.be, %.lr.ph432.backedge ] ; 3 uses
  %.0290427.us = phi i32 [ -1, %.preheader377 ], [ %.0290427.us.be, %.lr.ph432.backedge ] ; 3 uses
  %.0296426.us = phi float [ -1.000000e+00, %.preheader377 ], [ %.0296426.us.be, %.lr.ph432.backedge ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv513
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !9
  %.not339.us = icmp eq i32 %i.lo, 0
  br i1 %.not339.us, label %bb.ak, label %..loopexit_crit_edge.us

bb.ak:                                            ; preds = %.lr.ph432
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv513
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !26
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 312
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.lr, i64 %i.ke ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !132
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !128
  %.not340.us = icmp ult i32 %i.lu, %i.lw
  br i1 %.not340.us, label %.preheader.us, label %..loopexit_crit_edge.us

bb.al:                                            ; preds = %.preheader.us, %bb.aq
  %indvars.iv507 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next508, %bb.aq ] ; 6 uses
  %.1288421.us = phi i32 [ %.0287428.us, %.preheader.us ], [ %.4.us, %bb.aq ] ; 4 uses
  %.1291420.us = phi i32 [ %.0290427.us, %.preheader.us ], [ %.4294.us, %bb.aq ] ; 4 uses
  %.1297419.us = phi float [ %.0296426.us, %.preheader.us ], [ %.4300.us, %bb.aq ] ; 5 uses
  %i.lx = icmp eq i64 %indvars.iv513, %indvars.iv507
  br i1 %i.lx, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv507
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !9
  %.not341.us = icmp eq i32 %i.lz, 0
  br i1 %.not341.us, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %gep586 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep585, i64 %indvars.iv507
  %i.ma = load float, ptr %gep586, align 4, !tbaa !27 ; 3 uses
  %i.mb = fcmp uge float %i.ma, 0.000000e+00
  %i.mc = fcmp ogt float %i.ma, %.1297419.us
  %or.cond.us = select i1 %i.mb, i1 %i.mc, i1 false
  br i1 %or.cond.us, label %bb.ao, label %bb.aq
end_hunk_0
