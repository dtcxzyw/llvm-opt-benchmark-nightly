Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatmr?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dlatmr_:bb.a
  %.1078 = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.av)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.aw = tail call i32 @lsame_(ptr noundef %17, ptr noundef nonnull @.str.4) #6
  %.not899 = icmp eq i32 %i.aw, 0
  br i1 %.not899, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 3, ptr %i.m, align 4, !tbaa !70
  %i.ax = load i32, ptr %1, align 4, !tbaa !70
  %i.ay = load i32, ptr %0, align 4, !tbaa !70
  %.1079 = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.ay)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i32 -1, ptr %i.m, align 4, !tbaa !70
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.r, %bb.v, %bb.w, %bb.t, %bb.p, %bb.l
  %i.az = phi i1 [ false, %bb.l ], [ false, %bb.n ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.v ], [ false, %bb.w ]
  %i.ba = phi i1 [ false, %bb.l ], [ false, %bb.n ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.v ], [ true, %bb.w ]
  %i.bb = phi i32 [ 0, %bb.l ], [ 0, %bb.n ], [ 1, %bb.p ], [ 2, %bb.r ], [ 3, %bb.t ], [ 3, %bb.v ], [ -1, %bb.w ] ; 2 uses
  %.0807 = phi i32 [ undef, %bb.l ], [ undef, %bb.n ], [ %i.aq, %bb.p ], [ %i.as, %bb.r ], [ %.1078, %bb.t ], [ %.1079, %bb.v ], [ undef, %bb.w ] ; 25 uses
  %i.bc = tail call i32 @lsame_(ptr noundef %10, ptr noundef nonnull @.str.2) #6
  %.not902 = icmp eq i32 %i.bc, 0
  br i1 %.not902, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.bd = tail call i32 @lsame_(ptr noundef %10, ptr noundef nonnull @.str.7) #6
  %.not903 = icmp eq i32 %i.bd, 0
  br i1 %.not903, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.be = tail call i32 @lsame_(ptr noundef %10, ptr noundef nonnull @.str.8) #6
  %.not904 = icmp eq i32 %i.be, 0
  br i1 %.not904, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bf = tail call i32 @lsame_(ptr noundef %10, ptr noundef nonnull @.str.9) #6
  %.not905 = icmp eq i32 %i.bf, 0
  br i1 %.not905, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bg = tail call i32 @lsame_(ptr noundef %10, ptr noundef nonnull @.str.10) #6
  %.not906 = icmp eq i32 %i.bg, 0
  br i1 %.not906, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bh = tail call i32 @lsame_(ptr noundef %10, ptr noundef nonnull @.str.3) #6
  %.not907 = icmp eq i32 %i.bh, 0
  br i1 %.not907, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bi = tail call i32 @lsame_(ptr noundef %10, ptr noundef nonnull @.str.1) #6
  %.not908 = icmp eq i32 %i.bi, 0
  %spec.select1682 = select i1 %.not908, i32 -1, i32 5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.sink1661 = phi i32 [ 0, %bb.x ], [ 2, %bb.z ], [ 4, %bb.ab ], [ 5, %bb.ac ], [ 3, %bb.aa ], [ 1, %bb.y ], [ %spec.select1682, %bb.ad ] ; 6 uses
  %i.bj = phi i1 [ false, %bb.x ], [ false, %bb.z ], [ true, %bb.ab ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.ad ]
  store i32 %.sink1661, ptr %i.k, align 4, !tbaa !70
  %i.bk = tail call i32 @lsame_(ptr noundef %23, ptr noundef nonnull @.str.2) #6
  %.not909 = icmp ne i32 %i.bk, 0                 ; 5 uses
  br i1 %.not909, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bl = tail call i32 @lsame_(ptr noundef %23, ptr noundef nonnull @.str) #6
  %.not910 = icmp eq i32 %i.bl, 0
  br i1 %.not910, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.bm = tail call i32 @lsame_(ptr noundef %23, ptr noundef nonnull @.str.7) #6
  %.not911 = icmp eq i32 %i.bm, 0
  br i1 %.not911, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.bn = tail call i32 @lsame_(ptr noundef %23, ptr noundef nonnull @.str.11) #6
  %.not912 = icmp eq i32 %i.bn, 0
  br i1 %.not912, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.bo = tail call i32 @lsame_(ptr noundef %23, ptr noundef nonnull @.str.8) #6
  %.not913 = icmp eq i32 %i.bo, 0
  br i1 %.not913, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.bp = tail call i32 @lsame_(ptr noundef %23, ptr noundef nonnull @.str.9) #6
  %.not914 = icmp eq i32 %i.bp, 0
  br i1 %.not914, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.bq = tail call i32 @lsame_(ptr noundef %23, ptr noundef nonnull @.str.12) #6
  %.not915 = icmp eq i32 %i.bq, 0
  br i1 %.not915, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.br = tail call i32 @lsame_(ptr noundef %23, ptr noundef nonnull @.str.13) #6
  %.not916 = icmp eq i32 %i.br, 0                 ; 3 uses
  %not..not916 = xor i1 %.not916, true
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.bs = phi i1 [ false, %bb.ak ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ %.not916, %bb.al ]
  %i.bt = phi i1 [ false, %bb.ak ], [ false, %bb.ae ], [ true, %bb.af ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.al ] ; 5 uses
  %i.bu = phi i1 [ false, %bb.ak ], [ false, %bb.ae ], [ false, %bb.af ], [ true, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.al ] ; 5 uses
  %i.bv = phi i1 [ false, %bb.ak ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ true, %bb.aj ], [ false, %bb.al ] ; 5 uses
  %i.bw = phi i1 [ true, %bb.ak ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.al ] ; 5 uses
  %i.bx = phi i1 [ false, %bb.ak ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.ag ], [ true, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.al ] ; 5 uses
  %i.by = phi i1 [ false, %bb.ak ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.ag ], [ false, %bb.ah ], [ true, %bb.ai ], [ false, %bb.aj ], [ false, %bb.al ] ; 5 uses
  %i.bz = phi i1 [ false, %bb.ak ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ %not..not916, %bb.al ] ; 4 uses
  %i.ca = phi i1 [ false, %bb.ak ], [ true, %bb.ae ], [ true, %bb.af ], [ true, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ %.not916, %bb.al ] ; 2 uses
  %i.cb = load i32, ptr %0, align 4, !tbaa !70    ; 12 uses
  %i.cc = load i32, ptr %1, align 4, !tbaa !70    ; 4 uses
  %.1082 = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cc)
  store i32 %.1082, ptr %i.j, align 4, !tbaa !70
  %i.cd = load i32, ptr %19, align 4, !tbaa !70   ; 6 uses
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !70
  %i.ce = add i32 %i.cb, -1                       ; 2 uses
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.ce) ; 2 uses
  store i32 %i.cf, ptr %i.n, align 4, !tbaa !70
  %i.cg = load i32, ptr %20, align 4, !tbaa !70   ; 5 uses
  %i.ch = add nsw i32 %i.cc, -1                   ; 3 uses
  store i32 %i.ch, ptr %i.b, align 4, !tbaa !70
  %i.ci = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.ch) ; 3 uses
  store i32 %i.ci, ptr %i.o, align 4, !tbaa !70
  br i1 %i.bj, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.cj = load i32, ptr %12, align 4, !tbaa !70
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !70
  %.not9201160 = icmp slt i32 %i.cb, 1
  br i1 %.not9201160, label %.loopexit1159, label %iter.check

iter.check:                                       ; preds = %bb.ao
  %i.cl = add nuw i32 %i.cb, 1
  %wide.trip.count = zext i32 %i.cl to i64
  %i.cm = zext nneg i32 %i.cb to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.cb, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1735 = icmp ult i32 %i.cb, 16
  br i1 %min.iters.check1735, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cn = and i64 %i.cm, 12
  %n.vec = and i64 %i.cm, 2147483632              ; 4 uses
  %i.co = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi1736 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %vec.phi1737 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %vec.phi1738 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %i.cp = getelementptr [8 x i8], ptr %11, i64 %index ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %wide.load = load <4 x double>, ptr %i.cp, align 8, !tbaa !72
  %wide.load1739 = load <4 x double>, ptr %i.cq, align 8, !tbaa !72
  %wide.load1740 = load <4 x double>, ptr %i.cr, align 8, !tbaa !72
  %wide.load1741 = load <4 x double>, ptr %i.cs, align 8, !tbaa !72
  %i.ct = fcmp oeq <4 x double> %wide.load, zeroinitializer
  %i.cu = fcmp oeq <4 x double> %wide.load1739, zeroinitializer
  %i.cv = fcmp oeq <4 x double> %wide.load1740, zeroinitializer
  %i.cw = fcmp oeq <4 x double> %wide.load1741, zeroinitializer
  %i.cx = or <4 x i1> %vec.phi, %i.ct             ; 2 uses
  %i.cy = or <4 x i1> %vec.phi1736, %i.cu         ; 2 uses
  %i.cz = or <4 x i1> %vec.phi1737, %i.cv         ; 2 uses
  %i.da = or <4 x i1> %vec.phi1738, %i.cw         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.cy, %i.cx
  %bin.rdx1742 = or <4 x i1> %i.cz, %bin.rdx
  %bin.rdx1743 = or <4 x i1> %i.da, %bin.rdx1742
  %bin.rdx1743.fr = freeze <4 x i1> %bin.rdx1743
  %i.dc = bitcast <4 x i1> %bin.rdx1743.fr to i4
  %.not1812 = icmp ne i4 %i.dc, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cm
  br i1 %cmp.n, label %.loopexit1159.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not1812, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec1744 = and i64 %i.cm, 2147483644          ; 3 uses
  %28 = or disjoint i64 %n.vec1744, 1
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1745 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1748, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1746 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.df, %vec.epilog.vector.body ]
  %i.dd = getelementptr [8 x i8], ptr %11, i64 %index1745
  %wide.load1747 = load <4 x double>, ptr %i.dd, align 8, !tbaa !72
  %wide.load1747.fr = freeze <4 x double> %wide.load1747
  %i.de = fcmp oeq <4 x double> %wide.load1747.fr, zeroinitializer
  %i.df = or <4 x i1> %vec.phi1746, %i.de         ; 2 uses
  %index.next1748 = add nuw i64 %index1745, 4     ; 2 uses
  %i.dg = icmp eq i64 %index.next1748, %n.vec1744
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dh = bitcast <4 x i1> %i.df to i4
  %.not1814 = icmp ne i4 %i.dh, 0                 ; 2 uses
  %cmp.n1750 = icmp eq i64 %n.vec1744, %i.cm
  br i1 %cmp.n1750, label %.loopexit1159.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %bc.resume.val1751 = phi i64 [ %28, %vec.epilog.middle.block ], [ %i.co, %vec.epilog.iter.check ], [ 1, %iter.check ]
  %bc.merge.rdx1752.shrunk = phi i1 [ %.not1814, %vec.epilog.middle.block ], [ %.not1812, %vec.epilog.iter.check ], [ false, %iter.check ]
  %bc.merge.rdx1752 = zext i1 %bc.merge.rdx1752.shrunk to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %vec.epilog.scalar.ph, %.lr.ph
  %indvars.iv = phi i64 [ %bc.resume.val1751, %vec.epilog.scalar.ph ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.08091162 = phi i32 [ %bc.merge.rdx1752, %vec.epilog.scalar.ph ], [ %spec.select, %.lr.ph ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.dj = load double, ptr %i.di, align 8, !tbaa !72
  %i.dk = fcmp oeq double %i.dj, 0.000000e+00
  %spec.select = select i1 %i.dk, i32 1, i32 %.08091162 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1159.loopexit.loopexit, label %.lr.ph, !llvm.loop !10

.loopexit1159.loopexit.loopexit:                  ; preds = %.lr.ph
  %i.dl = icmp ne i32 %spec.select, 0
  br label %.loopexit1159.loopexit

.loopexit1159.loopexit:                           ; preds = %.loopexit1159.loopexit.loopexit, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %.not1814, %vec.epilog.middle.block ], [ %.not1812, %middle.block ], [ %i.dl, %.loopexit1159.loopexit.loopexit ]
  %i.dm = add nuw i32 %i.cb, 1
  br label %.loopexit1159

.loopexit1159:                                    ; preds = %.loopexit1159.loopexit, %bb.ao
  %storemerge.lcssa = phi i32 [ 1, %bb.ao ], [ %i.dm, %.loopexit1159.loopexit ]
  %.0809.lcssa = phi i1 [ false, %bb.ao ], [ %spec.select.lcssa, %.loopexit1159.loopexit ]
  store i32 %storemerge.lcssa, ptr %i.f, align 4, !tbaa !70
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit1159, %bb.an, %bb.am
  %or.cond9 = phi i1 [ false, %bb.am ], [ false, %bb.an ], [ %.0809.lcssa, %.loopexit1159 ]
  br i1 %i.az, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.not9221164 = icmp slt i32 %.0807, 1
  br i1 %.not9221164, label %.loopexit1158, label %.lr.ph1167.preheader

.lr.ph1167.preheader:                             ; preds = %bb.aq
  %i.dn = zext nneg i32 %.0807 to i64             ; 2 uses
  %xtraiter = and i64 %i.dn, 7                    ; 3 uses
  %i.do = add nsw i32 %.0807, -1
  %i.dp = icmp ult i32 %i.do, 7
  br i1 %i.dp, label %.lr.ph1167.epil.preheader, label %.lr.ph1167.preheader.new

.lr.ph1167.preheader.new:                         ; preds = %.lr.ph1167.preheader
  %unroll_iter = and i64 %i.dn, 2147483640
  br label %.lr.ph1167

.lr.ph1167:                                       ; preds = %.lr.ph1167, %.lr.ph1167.preheader.new
  %indvars.iv1427 = phi i64 [ 1, %.lr.ph1167.preheader.new ], [ %indvars.iv.next1428.7, %.lr.ph1167 ] ; 9 uses
  %.01166 = phi i32 [ 0, %.lr.ph1167.preheader.new ], [ %.1.7, %.lr.ph1167 ]
  %niter = phi i64 [ 0, %.lr.ph1167.preheader.new ], [ %niter.next.7, %.lr.ph1167 ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv1427
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !70 ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 1
  %i.dt = icmp sgt i32 %i.dr, %.0807
  %i.du = getelementptr [4 x i8], ptr %18, i64 %indvars.iv1427
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !70 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 1
  %i.dx = icmp sgt i32 %i.dv, %.0807
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv1427
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !70 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 1
  %i.ec = icmp sgt i32 %i.ea, %.0807
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv1427
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !70 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 1
  %i.eh = icmp sgt i32 %i.ef, %.0807
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv1427
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !70 ; 2 uses
  %i.el = icmp slt i32 %i.ek, 1
  %i.em = icmp sgt i32 %i.ek, %.0807
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv1427
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !70 ; 2 uses
  %i.eq = icmp slt i32 %i.ep, 1
  %i.er = icmp sgt i32 %i.ep, %.0807
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv1427
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !70 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, 1
  %i.ew = icmp sgt i32 %i.eu, %.0807
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv1427
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !70 ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 1
  %i.fb = icmp sgt i32 %i.ez, %.0807
  %or.cond1083.7 = select i1 %i.fa, i1 true, i1 %i.fb
  %i.fc = select i1 %or.cond1083.7, i1 true, i1 %i.ev
  %i.fd = select i1 %i.fc, i1 true, i1 %i.ew
  %i.fe = select i1 %i.fd, i1 true, i1 %i.eq
  %i.ff = select i1 %i.fe, i1 true, i1 %i.er
  %i.fg = select i1 %i.ff, i1 true, i1 %i.el
  %i.fh = select i1 %i.fg, i1 true, i1 %i.em
  %i.fi = select i1 %i.fh, i1 true, i1 %i.eg
  %i.fj = select i1 %i.fi, i1 true, i1 %i.eh
  %i.fk = select i1 %i.fj, i1 true, i1 %i.eb
  %i.fl = select i1 %i.fk, i1 true, i1 %i.ec
  %i.fm = select i1 %i.fl, i1 true, i1 %i.dw
  %i.fn = select i1 %i.fm, i1 true, i1 %i.dx
  %i.fo = select i1 %i.fn, i1 true, i1 %i.ds
  %i.fp = select i1 %i.fo, i1 true, i1 %i.dt
  %.1.7 = select i1 %i.fp, i32 1, i32 %.01166     ; 3 uses
  %indvars.iv.next1428.7 = add nuw nsw i64 %indvars.iv1427, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit1158.loopexit.unr-lcssa, label %.lr.ph1167, !llvm.loop !11

.loopexit1158.loopexit.unr-lcssa:                 ; preds = %.lr.ph1167
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1158.loopexit, label %.lr.ph1167.epil.preheader

.lr.ph1167.epil.preheader:                        ; preds = %.loopexit1158.loopexit.unr-lcssa, %.lr.ph1167.preheader
  %indvars.iv1427.epil.init = phi i64 [ 1, %.lr.ph1167.preheader ], [ %indvars.iv.next1428.7, %.loopexit1158.loopexit.unr-lcssa ]
  %.01166.epil.init = phi i32 [ 0, %.lr.ph1167.preheader ], [ %.1.7, %.loopexit1158.loopexit.unr-lcssa ]
  %lcmp.mod1866 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1866)
  br label %.lr.ph1167.epil

.lr.ph1167.epil:                                  ; preds = %.lr.ph1167.epil, %.lr.ph1167.epil.preheader
  %indvars.iv1427.epil = phi i64 [ %indvars.iv1427.epil.init, %.lr.ph1167.epil.preheader ], [ %indvars.iv.next1428.epil, %.lr.ph1167.epil ] ; 2 uses
  %.01166.epil = phi i32 [ %.01166.epil.init, %.lr.ph1167.epil.preheader ], [ %.1.epil, %.lr.ph1167.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph1167.epil.preheader ], [ %epil.iter.next, %.lr.ph1167.epil ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv1427.epil
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !70 ; 2 uses
  %i.fs = icmp slt i32 %i.fr, 1
  %i.ft = icmp sgt i32 %i.fr, %.0807
  %or.cond1083.epil = select i1 %i.fs, i1 true, i1 %i.ft
  %.1.epil = select i1 %or.cond1083.epil, i32 1, i32 %.01166.epil ; 2 uses
  %indvars.iv.next1428.epil = add nuw nsw i64 %indvars.iv1427.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit1158.loopexit, label %.lr.ph1167.epil, !llvm.loop !12

.loopexit1158.loopexit:                           ; preds = %.lr.ph1167.epil, %.loopexit1158.loopexit.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.7, %.loopexit1158.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph1167.epil ]
  %narrow1592 = add nuw i32 %.0807, 1
  %i.fu = icmp ne i32 %.1.lcssa, 0
  br label %.loopexit1158

.loopexit1158:                                    ; preds = %.loopexit1158.loopexit, %bb.aq
  %storemerge921.lcssa = phi i32 [ 1, %bb.aq ], [ %narrow1592, %.loopexit1158.loopexit ]
  %.0.lcssa = phi i1 [ false, %bb.aq ], [ %i.fu, %.loopexit1158.loopexit ]
  store i32 %storemerge921.lcssa, ptr %i.g, align 4, !tbaa !70
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit1158, %bb.ap
  %.2 = phi i1 [ false, %bb.ap ], [ %.0.lcssa, %.loopexit1158 ]
  %i.fv = icmp slt i32 %i.cb, 0
  br i1 %i.fv, label %.thread1096.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = icmp ne i32 %i.cb, %i.cc                ; 5 uses
  %or.cond = and i1 %i.ah, %i.fw
  br i1 %or.cond, label %.thread1096.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fx = icmp slt i32 %i.cc, 0                   ; 3 uses
  %brmerge = select i1 %i.fx, i1 true, i1 %i.ad
  %brmerge1684 = select i1 %brmerge, i1 true, i1 %i.ai
  %.mux = select i1 %i.ad, i32 -3, i32 -5
  %.mux.mux = select i1 %i.fx, i32 -2, i32 %.mux
  %.mux1683 = select i1 %i.ad, i32 -3, i32 -5
  %.mux1683.mux = select i1 %i.fx, i32 -2, i32 %.mux1683
  br i1 %brmerge1684, label %.thread1096.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load i32, ptr %6, align 4, !tbaa !70    ; 3 uses
  %i.fz = add i32 %i.fy, -7
  %or.cond1084 = icmp ult i32 %i.fz, -13
  br i1 %or.cond1084, label %.thread1096.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  switch i32 %i.fy, label %bb.aw [
end_hunk_0
