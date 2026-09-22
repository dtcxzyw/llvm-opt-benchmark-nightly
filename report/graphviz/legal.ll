Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/legal?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Plegal_arrangement:bb.a
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %._crit_edge94
  %indvars.iv122 = phi i64 [ 0, %.lr.ph102.preheader ], [ %indvars.iv.next123, %._crit_edge94 ] ; 3 uses
  %.062101 = phi i32 [ 0, %.lr.ph102.preheader ], [ %.1.lcssa, %._crit_edge94 ] ; 2 uses
  %i.ay = sext i32 %.062101 to i64                ; 3 uses
  %i.az = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %indvars.iv122 ; 5 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %.not104 = icmp eq i64 %i.be, 0
  br i1 %.not104, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph102
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !46
  br label %bb.j

._crit_edge94.loopexit:                           ; preds = %bb.j
  %i.bg = trunc nsw i64 %indvars.iv.next119 to i32
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge94.loopexit, %.lr.ph102
  %.pre-phi = phi i64 [ %indvars.iv.next119, %._crit_edge94.loopexit ], [ %i.ay, %.lr.ph102 ]
  %.1.lcssa = phi i32 [ %i.bg, %._crit_edge94.loopexit ], [ %.062101, %.lr.ph102 ]
  %i.bh = phi <2 x double> [ %i.br, %._crit_edge94.loopexit ], [ splat (double f0x7FEFFFFFFFFFFFFF), %.lr.ph102 ]
  %i.bi = phi <2 x double> [ %i.bs, %._crit_edge94.loopexit ], [ splat (double f0xFFEFFFFFFFFFFFFF), %.lr.ph102 ]
  %i.bj = getelementptr [32 x i8], ptr %i.ax, i64 %.pre-phi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x double> %i.bh, ptr %i.bm, align 8, !tbaa !18
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <2 x double> %i.bi, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !18
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !27

bb.j:                                             ; preds = %.lr.ph93, %bb.j
  %indvars.iv118 = phi i64 [ %i.ay, %.lr.ph93 ], [ %indvars.iv.next119, %bb.j ] ; 2 uses
  %.091 = phi i64 [ 0, %.lr.ph93 ], [ %i.bw, %bb.j ] ; 2 uses
  %i.bn = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %.lr.ph93 ], [ %i.br, %bb.j ]
  %i.bo = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %.lr.ph93 ], [ %i.bs, %bb.j ]
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.091
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !18 ; 3 uses
  %i.br = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bn, <2 x double> %i.bq) ; 2 uses
  %i.bs = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bo, <2 x double> %i.bq) ; 2 uses
  %i.bt = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %indvars.iv118 ; 3 uses
  store <2 x double> %i.bq, ptr %i.bt, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.ba, ptr %i.bu, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr null, ptr %i.bv, align 8, !tbaa !47
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, 1 ; 3 uses
  %i.bw = add nuw i64 %.091, 1                    ; 2 uses
  %exitcond121.not = icmp eq i64 %i.bw, %i.be
  br i1 %exitcond121.not, label %._crit_edge94.loopexit, label %bb.j, !llvm.loop !28

._crit_edge103:                                   ; preds = %._crit_edge94
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  br i1 %.not.i69, label %._crit_edge.thread.i, label %bb.k

._crit_edge.thread.i:                             ; preds = %.thread.i72.thread, %._crit_edge103
  %i.bx = phi ptr [ %i.k, %.thread.i72.thread ], [ %i.f, %._crit_edge103 ]
  %i.by = phi ptr [ %i.l, %.thread.i72.thread ], [ %i.ax, %._crit_edge103 ]
  %i.bz = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #17 ; 2 uses
  tail call void @qsort(ptr noundef %i.bz, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @gt) #18
  br label %.thread104.i

bb.k:                                             ; preds = %._crit_edge103
  %i.ca = tail call noalias ptr @calloc(i64 noundef %.060.lcssa183192, i64 noundef 8) #17 ; 7 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.l, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.lcssa239, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader236, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.lcssa239, -4                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [32 x i8], ptr %i.ax, <2 x i64> %vec.ind
  %wide.gep228 = getelementptr inbounds nuw [32 x i8], ptr %i.ax, <2 x i64> %step.add
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cc, align 8, !tbaa !22
  store <2 x ptr> %wide.gep228, ptr %i.cd, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.lcssa239, %n.vec
  br i1 %cmp.n, label %.lr.ph125.i, label %.lr.ph.i.preheader236

.lr.ph.i.preheader236:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.080115.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

bb.l:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.cg = shl nuw nsw i64 %.060.lcssa183192, 3
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.1, i64 noundef %i.cg) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

.lr.ph125.i:                                      ; preds = %.lr.ph.i, %middle.block
  tail call void @qsort(ptr noundef nonnull %i.ca, i64 noundef %.060.lcssa183192, i64 noundef 8, ptr noundef nonnull @gt) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.m

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader236, %.lr.ph.i
  %.080115.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %.080115.i.ph, %.lr.ph.i.preheader236 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %.080115.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.080115.i
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !22
  %i.cn = add nuw nsw i64 %.080115.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cn, %.060.lcssa183192
  br i1 %exitcond.not.i, label %.lr.ph125.i, label %.lr.ph.i, !llvm.loop !30

bb.m:                                             ; preds = %bb.fk, %.lr.ph125.i
  %.079123.i = phi i64 [ 0, %.lr.ph125.i ], [ %i.nk, %bb.fk ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.079123.i ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !16
  %i.ct = icmp eq ptr %i.cp, %i.cs
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds i8, ptr %i.cp, i64 -32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cx = phi ptr [ %i.cv, %bb.n ], [ %i.cw, %bb.o ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.fj, %bb.p
  %i.cz = phi i1 [ true, %bb.p ], [ false, %bb.fj ]
  %.075121.i = phi ptr [ %i.cx, %bb.p ], [ %i.nb, %bb.fj ] ; 12 uses
  %.0120.i = phi ptr [ %i.cx, %bb.p ], [ %i.nj, %bb.fj ] ; 2 uses
  %i.da = load double, ptr %i.cp, align 8, !tbaa !23 ; 2 uses
  %i.db = load double, ptr %.0120.i, align 8, !tbaa !23 ; 2 uses
  %i.dc = fcmp ogt double %i.da, %i.db
  br i1 %i.dc, label %gt.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = fcmp olt double %i.da, %i.db
  br i1 %i.dd, label %.critedge.preheader.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load double, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0120.i, i64 8
  %i.dg = load double, ptr %i.df, align 8, !tbaa !24 ; 2 uses
  %i.dh = fcmp ogt double %i.de, %i.dg
  br i1 %i.dh, label %gt.exit.thread.i, label %gt.exit.i

gt.exit.i:                                        ; preds = %bb.s
  %i.di = fcmp olt double %i.de, %i.dg
  br i1 %i.di, label %.critedge.preheader.i, label %bb.fg

.critedge.preheader.i:                            ; preds = %gt.exit.i, %bb.r
  %.val91116.i = load i64, ptr %i.ci, align 8, !tbaa !51
  %.not88117.not.i = icmp eq i64 %.val91116.i, 0
  br i1 %.not88117.not.i, label %.critedge._crit_edge.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.critedge.preheader.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.075121.i, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.075121.i, i64 32 ; 6 uses
  br label %bb.t

bb.t:                                             ; preds = %.critedge.i, %.lr.ph119.i
  %.073118.i = phi i64 [ 0, %.lr.ph119.i ], [ %i.mk, %.critedge.i ] ; 2 uses
  %i.dl = load ptr, ptr %2, align 8, !tbaa !52
  %i.dm = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.073118.i) #18
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load <2 x double>, ptr %i.do, align 8, !tbaa !18 ; 7 uses
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !24 ; 12 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !21 ; 10 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !17
  %i.dw = icmp eq ptr %i.do, %i.dv                ; 9 uses
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.in.i.i.i = phi ptr [ %i.dx, %bb.u ], [ %i.dy, %bb.v ]
  %i.dz = load <2 x double>, ptr %.in.i.i.i, align 8, !tbaa !18
  %i.ea = load <2 x double>, ptr %.075121.i, align 8, !tbaa !18 ; 15 uses
  %i.eb = load ptr, ptr %i.dj, align 8, !tbaa !21 ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !17
  %i.ee = icmp ne ptr %.075121.i, %i.ed           ; 7 uses
  br i1 %i.ee, label %sgnarea.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !16
  br label %sgnarea.exit.i.i

sgnarea.exit.i.i:                                 ; preds = %bb.x, %bb.w
  %.in46.i.i.i = phi ptr [ %i.ef, %bb.x ], [ %i.dk, %bb.w ]
  %i.eg = load <2 x double>, ptr %.in46.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.eh = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <2 x double> %i.eg, <2 x double> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ej = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fsub <2 x double> %i.ei, %i.ej
  %i.el = insertelement <2 x double> %i.dq, double %i.dr, i64 1 ; 2 uses
  %i.em = fsub <2 x double> %i.dz, %i.el          ; 2 uses
  %i.en = shufflevector <2 x double> %i.ea, <2 x double> %i.eg, <2 x i32> <i32 3, i32 1>
  %3 = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = fsub <2 x double> %i.en, %3
  %i.ep = fneg <2 x double> %i.ek
  %i.eq = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.er = fmul <2 x double> %i.eq, %i.ep
  %i.es = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.eo, <2 x double> %i.er) ; 2 uses
  %i.eu = fcmp olt <2 x double> %i.et, zeroinitializer
  %i.ev = fcmp ogt <2 x double> %i.et, zeroinitializer
  %i.ew = zext <2 x i1> %i.ev to <2 x i8>
  %i.ex = select <2 x i1> %i.eu, <2 x i8> splat (i8 -1), <2 x i8> %i.ew ; 2 uses
  %i.ey = extractelement <2 x i8> %i.ex, i64 0    ; 2 uses
  %i.ez = extractelement <2 x i8> %i.ex, i64 1    ; 3 uses
  %narrow = mul nsw i8 %i.ey, %i.ez               ; 2 uses
  %i.fa = icmp sgt i8 %narrow, 0
  br i1 %i.fa, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %sgnarea.exit.i.i
  %i.fb = icmp slt i8 %narrow, 0
  br i1 %i.fb, label %bb.z, label %bb.az

bb.z:                                             ; preds = %bb.y
  br i1 %i.ee, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load ptr, ptr %i.eb, align 8, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.in.i27.i.i = phi ptr [ %i.fc, %bb.aa ], [ %i.dk, %bb.z ]
  %i.fd = load <2 x double>, ptr %.in.i27.i.i, align 8, !tbaa !18
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fe = load ptr, ptr %i.dt, align 8, !tbaa !16
  br label %sgnarea.exit33.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  br label %sgnarea.exit33.i.i

sgnarea.exit33.i.i:                               ; preds = %bb.ad, %bb.ac
  %.in46.i28.i.i = phi ptr [ %i.fe, %bb.ac ], [ %i.ff, %bb.ad ]
  %i.fg = fsub <2 x double> %i.fd, %i.ea          ; 2 uses
  %i.fh = load <2 x double>, ptr %.in46.i28.i.i, align 8, !tbaa !18 ; 2 uses
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.fj = fsub <2 x double> %i.fi, %i.eh
  %i.fk = shufflevector <2 x double> %i.fh, <2 x double> %i.dq, <2 x i32> <i32 1, i32 3>
  %i.fl = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = fsub <2 x double> %i.fk, %i.fl
  %i.fn = fneg <2 x double> %i.fj
  %i.fo = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = fmul <2 x double> %i.fo, %i.fn
  %i.fq = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fm, <2 x double> %i.fp) ; 2 uses
  %i.fs = fcmp olt <2 x double> %i.fr, zeroinitializer
  %i.ft = fcmp ogt <2 x double> %i.fr, zeroinitializer
  %i.fu = zext <2 x i1> %i.ft to <2 x i8>
  %i.fv = select <2 x i1> %i.fs, <2 x i8> splat (i8 -1), <2 x i8> %i.fu ; 2 uses
  %i.fw = extractelement <2 x i8> %i.fv, i64 0
  %i.fx = extractelement <2 x i8> %i.fv, i64 1    ; 2 uses
  %narrow229 = mul nsw i8 %i.fw, %i.fx            ; 2 uses
  %i.fy = icmp sgt i8 %narrow229, 0
  br i1 %i.fy, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %sgnarea.exit33.i.i
  %i.fz = icmp slt i8 %narrow229, 0
  br i1 %i.fz, label %online.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ee, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ga = load ptr, ptr %i.eb, align 8, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gb = phi ptr [ %i.ga, %bb.ag ], [ %i.dk, %bb.af ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load double, ptr %i.gb, align 8, !tbaa !18 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.5.0.copyload.i.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !18 ; 4 uses
  %i.gc = icmp eq i8 %i.fx, 0
  br i1 %i.gc, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gd = load ptr, ptr %i.dt, align 8, !tbaa !16
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %.pn.i.i.i = phi ptr [ %i.do, %bb.ah ], [ %i.gd, %bb.aj ], [ %i.ge, %bb.ak ] ; 2 uses
  %.sroa.0.0.i.i.i = load double, ptr %.pn.i.i.i, align 8, !tbaa !18 ; 7 uses
  %.sroa.6.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  %.sroa.6.0.i.i.i = load double, ptr %.sroa.6.0.in.i.i.i, align 8, !tbaa !18 ; 6 uses
  %i.gf = extractelement <2 x double> %i.ea, i64 0 ; 4 uses
  %i.gg = fcmp oeq double %i.gf, %.sroa.05.0.copyload.i.i.i
  br i1 %i.gg, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.gh = fcmp oeq double %i.gf, %.sroa.0.0.i.i.i
  br i1 %i.gh, label %bb.an, label %online.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.gi = extractelement <2 x double> %i.ea, i64 1 ; 2 uses
  %i.gj = fcmp olt double %i.gi, %.sroa.6.0.i.i.i
  br i1 %i.gj, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gk = fcmp olt double %.sroa.6.0.i.i.i, %.sroa.5.0.copyload.i.i.i
  br i1 %i.gk, label %between.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gl = fcmp ogt double %.sroa.6.0.i.i.i, %.sroa.5.0.copyload.i.i.i
  %..i.i35.i.i = sext i1 %i.gl to i32
  br label %between.exit.i.i.i

bb.aq:                                            ; preds = %bb.an
  %i.gm = fcmp ogt double %i.gi, %.sroa.6.0.i.i.i
  br i1 %i.gm, label %bb.ar, label %between.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.gn = fcmp ogt double %.sroa.6.0.i.i.i, %.sroa.5.0.copyload.i.i.i
  br i1 %i.gn, label %between.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.go = fcmp olt double %.sroa.6.0.i.i.i, %.sroa.5.0.copyload.i.i.i
  %.15.i.i.i.i = sext i1 %i.go to i32
  br label %between.exit.i.i.i

between.exit.i.i.i:                               ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.0.i.i34.i.i = phi i32 [ %.15.i.i.i.i, %bb.as ], [ %..i.i35.i.i, %bb.ap ], [ 1, %bb.ao ], [ 1, %bb.ar ], [ 0, %bb.aq ]
  %i.gp = icmp ne i32 %.0.i.i34.i.i, -1
  %i.gq = zext i1 %i.gp to i32
  br label %online.exit.i.i

bb.at:                                            ; preds = %bb.al
  %i.gr = fcmp olt double %i.gf, %.sroa.0.0.i.i.i
  br i1 %i.gr, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gs = fcmp olt double %.sroa.0.0.i.i.i, %.sroa.05.0.copyload.i.i.i
  br i1 %i.gs, label %online.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gt = fcmp ogt double %.sroa.0.0.i.i.i, %.sroa.05.0.copyload.i.i.i
  %..i23.i.i.i = sext i1 %i.gt to i32
  br label %online.exit.i.i

bb.aw:                                            ; preds = %bb.at
  %i.gu = fcmp ogt double %i.gf, %.sroa.0.0.i.i.i
  br i1 %i.gu, label %bb.ax, label %online.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.gv = fcmp ogt double %.sroa.0.0.i.i.i, %.sroa.05.0.copyload.i.i.i
  br i1 %i.gv, label %online.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gw = fcmp olt double %.sroa.0.0.i.i.i, %.sroa.05.0.copyload.i.i.i
  %.15.i22.i.i.i = sext i1 %i.gw to i32
  br label %online.exit.i.i

online.exit.i.i:                                  ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %between.exit.i.i.i, %bb.am, %bb.ae
  %i.gx = phi i32 [ 3, %bb.ae ], [ %i.gq, %between.exit.i.i.i ], [ 0, %bb.am ], [ %.15.i22.i.i.i, %bb.ay ], [ %..i23.i.i.i, %bb.av ], [ 1, %bb.au ], [ 1, %bb.ax ], [ 0, %bb.aw ]
  %i.gy = call fastcc i32 @intpoint(ptr noundef nonnull readonly %i.do, ptr noundef nonnull readonly %.075121.i, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %i.gx)
  %.not26.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not26.i.i, label %.critedge.i, label %bb.em

bb.az:                                            ; preds = %bb.y
  %i.gz = icmp eq i8 %i.ez, %i.ey
  br i1 %i.gz, label %bb.ba, label %bb.dt

bb.ba:                                            ; preds = %bb.az
  br i1 %i.dw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ha = load ptr, ptr %i.dt, align 8, !tbaa !16
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hc = phi ptr [ %i.ha, %bb.bb ], [ %i.hb, %bb.bc ] ; 2 uses
  %.sroa.05.0.copyload.i39.i.i = load double, ptr %i.hc, align 8, !tbaa !18 ; 5 uses
  %.sroa.5.0..sroa_idx.i40.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.5.0.copyload.i41.i.i = load double, ptr %.sroa.5.0..sroa_idx.i40.i.i, align 8, !tbaa !18 ; 4 uses
  %i.hd = extractelement <2 x double> %i.dq, i64 0 ; 16 uses
  %i.he = fcmp oeq double %i.hd, %.sroa.05.0.copyload.i39.i.i
  br i1 %i.he, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.hf = extractelement <2 x double> %i.ea, i64 0
  %i.hg = fcmp oeq double %i.hd, %i.hf
  br i1 %i.hg, label %bb.bf, label %online.exit52.i.i

end_hunk_0
