Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorcsd?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dorcsd_:bb.a
  call void @dorgqr_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %8, ptr noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.k, ptr noundef nonnull %29) #5
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.not857 = icmp eq i32 %i.ab, 0
  br i1 %.not857, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = load i32, ptr %8, align 4, !tbaa !46    ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fs = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fs, ptr %i.a, align 4, !tbaa !46
  store i32 %i.fs, ptr %i.b, align 4, !tbaa !46
  %i.ft = shl i32 %i.l, 1
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr [8 x i8], ptr %i.n, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = shl i32 %i.r, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [8 x i8], ptr %i.t, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 16     ; 2 uses
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.fw, ptr noundef nonnull %10, ptr noundef %i.ga, ptr noundef nonnull %23) #5
  store double 1.000000e+00, ptr %22, align 8, !tbaa !49
  %i.gb = load i32, ptr %8, align 4, !tbaa !46    ; 5 uses
  %.not858902 = icmp slt i32 %i.gb, 2
  br i1 %.not858902, label %.._crit_edge906_crit_edge, label %iter.check1024

.._crit_edge906_crit_edge:                        ; preds = %bb.aj
  %.pre953 = add nsw i32 %i.gb, -1
  br label %._crit_edge906

iter.check1024:                                   ; preds = %bb.aj
  %i.gc = add i32 %i.r, 2
  %i.gd = sext i32 %i.gc to i64
  %i.ge = add nsw i64 %i.s, %i.gd
  %i.gf = shl nsw i64 %i.ge, 3
  %scevgep927 = getelementptr i8, ptr %22, i64 %i.gf
  %i.gg = add nsw i32 %i.gb, -1                   ; 5 uses
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep927, i8 0, i64 %i.gi, i1 false), !tbaa !49
  %i.gj = sext i32 %i.r to i64                    ; 9 uses
  %i.gk = add nuw i32 %i.gb, 1
  %wide.trip.count931 = zext i32 %i.gk to i64     ; 3 uses
  %i.gl = add nsw i64 %wide.trip.count931, -2     ; 7 uses
  %min.iters.check1013 = icmp ugt i64 %i.gl, 3
  %ident.check1012.not = icmp eq i32 %i.r, 1
  %or.cond1263 = select i1 %min.iters.check1013, i1 %ident.check1012.not, i1 false
  br i1 %or.cond1263, label %vector.main.loop.iter.check1014, label %.lr.ph905.preheader

vector.main.loop.iter.check1014:                  ; preds = %iter.check1024
  %min.iters.check1015 = icmp ult i64 %i.gl, 16
  br i1 %min.iters.check1015, label %vec.epilog.ph1028, label %vector.ph1016

vector.ph1016:                                    ; preds = %vector.main.loop.iter.check1014
  %i.gm = and i64 %i.gl, 12
  %n.vec1017 = and i64 %i.gl, -16                 ; 4 uses
  %i.gn = or disjoint i64 %n.vec1017, 2
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.ph1016, %vector.body1018
  %index1019 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1020, %vector.body1018 ] ; 2 uses
  %i.go = getelementptr [8 x i8], ptr %i.t, i64 %index1019 ; 4 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 24
  %i.gq = getelementptr i8, ptr %i.go, i64 56
  %i.gr = getelementptr i8, ptr %i.go, i64 88
  %i.gs = getelementptr i8, ptr %i.go, i64 120
  store <4 x double> zeroinitializer, ptr %i.gp, align 8, !tbaa !49
  store <4 x double> zeroinitializer, ptr %i.gq, align 8, !tbaa !49
  store <4 x double> zeroinitializer, ptr %i.gr, align 8, !tbaa !49
  store <4 x double> zeroinitializer, ptr %i.gs, align 8, !tbaa !49
  %index.next1020 = add nuw i64 %index1019, 16    ; 2 uses
  %i.gt = icmp eq i64 %index.next1020, %n.vec1017
  br i1 %i.gt, label %middle.block1021, label %vector.body1018, !llvm.loop !8

middle.block1021:                                 ; preds = %vector.body1018
  %cmp.n1022 = icmp eq i64 %i.gl, %n.vec1017
  br i1 %cmp.n1022, label %._crit_edge906, label %vec.epilog.iter.check1026

vec.epilog.iter.check1026:                        ; preds = %middle.block1021
  %min.epilog.iters.check1027 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check1027, label %.lr.ph905.preheader, label %vec.epilog.ph1028, !prof !53

vec.epilog.ph1028:                                ; preds = %vector.main.loop.iter.check1014, %vec.epilog.iter.check1026
  %vec.epilog.resume.val1023 = phi i64 [ %n.vec1017, %vec.epilog.iter.check1026 ], [ 0, %vector.main.loop.iter.check1014 ]
  %n.vec1029 = and i64 %i.gl, -4                  ; 3 uses
  %i.gu = or disjoint i64 %n.vec1029, 2
  br label %vec.epilog.vector.body1030

vec.epilog.vector.body1030:                       ; preds = %vec.epilog.vector.body1030, %vec.epilog.ph1028
  %index1031 = phi i64 [ %vec.epilog.resume.val1023, %vec.epilog.ph1028 ], [ %index.next1032, %vec.epilog.vector.body1030 ] ; 2 uses
  %i.gv = getelementptr [8 x i8], ptr %i.t, i64 %index1031
  %i.gw = getelementptr i8, ptr %i.gv, i64 24
  store <4 x double> zeroinitializer, ptr %i.gw, align 8, !tbaa !49
  %index.next1032 = add nuw i64 %index1031, 4     ; 2 uses
  %i.gx = icmp eq i64 %index.next1032, %n.vec1029
  br i1 %i.gx, label %vec.epilog.middle.block1033, label %vec.epilog.vector.body1030, !llvm.loop !9

vec.epilog.middle.block1033:                      ; preds = %vec.epilog.vector.body1030
  %cmp.n1034 = icmp eq i64 %i.gl, %n.vec1029
  br i1 %cmp.n1034, label %._crit_edge906, label %.lr.ph905.preheader

.lr.ph905.preheader:                              ; preds = %iter.check1024, %vec.epilog.iter.check1026, %vec.epilog.middle.block1033
  %indvars.iv928.ph = phi i64 [ 2, %iter.check1024 ], [ %i.gn, %vec.epilog.iter.check1026 ], [ %i.gu, %vec.epilog.middle.block1033 ] ; 4 uses
  %i.gy = sub nsw i64 %wide.trip.count931, %indvars.iv928.ph
  %i.gz = zext nneg i32 %i.gb to i64
  %i.ha = sub nsw i64 %i.gz, %indvars.iv928.ph
  %xtraiter1265.a = and i64 %i.gy, 7              ; 2 uses
  %lcmp.mod1266.not.a = icmp eq i64 %xtraiter1265.a, 0
  br i1 %lcmp.mod1266.not.a, label %.lr.ph905.prol.loopexit, label %.lr.ph905.prol

.lr.ph905.prol:                                   ; preds = %.lr.ph905.preheader, %.lr.ph905.prol
  %indvars.iv928.prol = phi i64 [ %indvars.iv.next929.prol, %.lr.ph905.prol ], [ %indvars.iv928.ph, %.lr.ph905.preheader ] ; 2 uses
  %prol.iter1267.a = phi i64 [ %prol.iter1267.next.a, %.lr.ph905.prol ], [ 0, %.lr.ph905.preheader ]
  %i.hb = mul nsw i64 %indvars.iv928.prol, %i.gj
  %i.hc = getelementptr [8 x i8], ptr %i.t, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  store double 0.000000e+00, ptr %i.hd, align 8, !tbaa !49
  %indvars.iv.next929.prol = add nuw nsw i64 %indvars.iv928.prol, 1 ; 2 uses
  %prol.iter1267.next.a = add i64 %prol.iter1267.a, 1 ; 2 uses
  %prol.iter1267.cmp.not.a = icmp eq i64 %prol.iter1267.next.a, %xtraiter1265.a
  br i1 %prol.iter1267.cmp.not.a, label %.lr.ph905.prol.loopexit, label %.lr.ph905.prol, !llvm.loop !10

.lr.ph905.prol.loopexit:                          ; preds = %.lr.ph905.prol, %.lr.ph905.preheader
  %indvars.iv928.unr = phi i64 [ %indvars.iv928.ph, %.lr.ph905.preheader ], [ %indvars.iv.next929.prol, %.lr.ph905.prol ]
  %i.he = icmp ult i64 %i.ha, 7
  br i1 %i.he, label %._crit_edge906, label %.lr.ph905

.lr.ph905:                                        ; preds = %.lr.ph905.prol.loopexit, %.lr.ph905
  %indvars.iv928 = phi i64 [ %indvars.iv.next929.7, %.lr.ph905 ], [ %indvars.iv928.unr, %.lr.ph905.prol.loopexit ] ; 9 uses
  %i.hf = mul nsw i64 %indvars.iv928, %i.gj
  %i.hg = getelementptr [8 x i8], ptr %i.t, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  store double 0.000000e+00, ptr %i.hh, align 8, !tbaa !49
  %indvars.iv.next929 = add nuw nsw i64 %indvars.iv928, 1
  %i.hi = mul nsw i64 %indvars.iv.next929, %i.gj
  %i.hj = getelementptr [8 x i8], ptr %i.t, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 8
  store double 0.000000e+00, ptr %i.hk, align 8, !tbaa !49
  %indvars.iv.next929.1 = add nuw nsw i64 %indvars.iv928, 2
  %i.hl = mul nsw i64 %indvars.iv.next929.1, %i.gj
  %i.hm = getelementptr [8 x i8], ptr %i.t, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  store double 0.000000e+00, ptr %i.hn, align 8, !tbaa !49
  %indvars.iv.next929.2 = add nuw nsw i64 %indvars.iv928, 3
  %i.ho = mul nsw i64 %indvars.iv.next929.2, %i.gj
  %i.hp = getelementptr [8 x i8], ptr %i.t, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  store double 0.000000e+00, ptr %i.hq, align 8, !tbaa !49
  %indvars.iv.next929.3 = add nuw nsw i64 %indvars.iv928, 4
  %i.hr = mul nsw i64 %indvars.iv.next929.3, %i.gj
  %i.hs = getelementptr [8 x i8], ptr %i.t, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 8
  store double 0.000000e+00, ptr %i.ht, align 8, !tbaa !49
  %indvars.iv.next929.4 = add nuw nsw i64 %indvars.iv928, 5
  %i.hu = mul nsw i64 %indvars.iv.next929.4, %i.gj
  %i.hv = getelementptr [8 x i8], ptr %i.t, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  store double 0.000000e+00, ptr %i.hw, align 8, !tbaa !49
  %indvars.iv.next929.5 = add nuw nsw i64 %indvars.iv928, 6
  %i.hx = mul nsw i64 %indvars.iv.next929.5, %i.gj
  %i.hy = getelementptr [8 x i8], ptr %i.t, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  store double 0.000000e+00, ptr %i.hz, align 8, !tbaa !49
  %indvars.iv.next929.6 = add nuw nsw i64 %indvars.iv928, 7
  %i.ia = mul nsw i64 %indvars.iv.next929.6, %i.gj
  %i.ib = getelementptr [8 x i8], ptr %i.t, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 8
  store double 0.000000e+00, ptr %i.ic, align 8, !tbaa !49
  %indvars.iv.next929.7 = add nuw nsw i64 %indvars.iv928, 8 ; 2 uses
  %exitcond932.not.7 = icmp eq i64 %indvars.iv.next929.7, %wide.trip.count931
  br i1 %exitcond932.not.7, label %._crit_edge906, label %.lr.ph905, !llvm.loop !11

._crit_edge906:                                   ; preds = %.lr.ph905.prol.loopexit, %.lr.ph905, %middle.block1021, %vec.epilog.middle.block1033, %.._crit_edge906_crit_edge
  %.pre-phi = phi i32 [ %.pre953, %.._crit_edge906_crit_edge ], [ %i.gg, %middle.block1021 ], [ %i.gg, %vec.epilog.middle.block1033 ], [ %i.gg, %.lr.ph905 ], [ %i.gg, %.lr.ph905.prol.loopexit ] ; 3 uses
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !46
  store i32 %.pre-phi, ptr %i.b, align 4, !tbaa !46
  store i32 %.pre-phi, ptr %i.c, align 4, !tbaa !46
  %i.id = zext nneg i32 %i.cq to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.id
  call void @dorglq_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.ga, ptr noundef nonnull %23, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ie, ptr noundef nonnull %i.j, ptr noundef nonnull %29) #5
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge906, %bb.ai, %bb.ah
  %.not859 = icmp eq i32 %i.ac, 0
  br i1 %.not859, label %bb.bc, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.if = load i32, ptr %6, align 4, !tbaa !46
  %i.ig = load i32, ptr %8, align 4, !tbaa !46
  %i.ih = sub nsw i32 %i.if, %i.ig                ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %bb.am, label %bb.bc

bb.am:                                            ; preds = %bb.al
  store i32 %i.ih, ptr %i.a, align 4, !tbaa !46
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %7, ptr noundef nonnull %i.a, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %24, ptr noundef nonnull %25) #5
  %i.ij = load i32, ptr %6, align 4, !tbaa !46    ; 2 uses
  %i.ik = load i32, ptr %7, align 4, !tbaa !46    ; 2 uses
  %i.il = sub nsw i32 %i.ij, %i.ik                ; 2 uses
  %i.im = load i32, ptr %8, align 4, !tbaa !46    ; 4 uses
  %i.in = icmp sgt i32 %i.il, %i.im
  br i1 %i.in, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.io = sub i32 %i.il, %i.im                    ; 2 uses
  store i32 %i.io, ptr %i.a, align 4, !tbaa !46
  store i32 %i.io, ptr %i.b, align 4, !tbaa !46
  %i.ip = add nsw i32 %i.im, 1
  %i.iq = add nsw i32 %i.ik, 1                    ; 2 uses
  %i.ir = mul nsw i32 %i.iq, %i.o
  %i.is = add nsw i32 %i.ip, %i.ir
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.it
  %i.iv = add i32 %i.u, 1
  %i.iw = mul i32 %i.iq, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ix
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.iu, ptr noundef nonnull %16, ptr noundef %i.iy, ptr noundef nonnull %25) #5
  %.pre949.a = load i32, ptr %6, align 4, !tbaa !46
  %.pre950 = load i32, ptr %8, align 4, !tbaa !46
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.iz = phi i32 [ %.pre950, %bb.an ], [ %i.im, %bb.am ] ; 2 uses
  %i.ja = phi i32 [ %.pre949.a, %bb.an ], [ %i.ij, %bb.am ] ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, %i.iz
  br i1 %i.jb, label %bb.ap, label %bb.bc

bb.ap:                                            ; preds = %bb.ao
  %i.jc = sub nsw i32 %i.ja, %i.iz                ; 3 uses
  store i32 %i.jc, ptr %i.a, align 4, !tbaa !46
  store i32 %i.jc, ptr %i.b, align 4, !tbaa !46
  store i32 %i.jc, ptr %i.c, align 4, !tbaa !46
  %i.jd = zext nneg i32 %i.cq to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.jd
  call void @dorglq_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %24, ptr noundef nonnull %25, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.je, ptr noundef nonnull %i.j, ptr noundef nonnull %29) #5
  br label %bb.bc

bb.aq:                                            ; preds = %bb.aa
  br i1 %.not855, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jf = load i32, ptr %7, align 4, !tbaa !46
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %18, ptr noundef nonnull %19) #5
  %i.jh = zext nneg i32 %i.cq to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.jh
  call void @dorglq_(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.ji, ptr noundef nonnull %i.j, ptr noundef nonnull %29) #5
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.not851 = icmp eq i32 %i.aa, 0
  br i1 %.not851, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jj = load i32, ptr %6, align 4, !tbaa !46
  %i.jk = load i32, ptr %7, align 4, !tbaa !46
  %i.jl = sub nsw i32 %i.jj, %i.jk                ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 %i.jl, ptr %i.a, align 4, !tbaa !46
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %8, ptr noundef nonnull %i.a, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %20, ptr noundef nonnull %21) #5
  %i.jn = load i32, ptr %6, align 4, !tbaa !46
  %i.jo = load i32, ptr %7, align 4, !tbaa !46
  %i.jp = sub nsw i32 %i.jn, %i.jo                ; 2 uses
  store i32 %i.jp, ptr %i.a, align 4, !tbaa !46
  store i32 %i.jp, ptr %i.b, align 4, !tbaa !46
  %i.jq = zext nneg i32 %i.cq to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.jq
  call void @dorglq_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %8, ptr noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.jr, ptr noundef nonnull %i.j, ptr noundef nonnull %29) #5
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.not852 = icmp eq i32 %i.ab, 0
  br i1 %.not852, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.js = load i32, ptr %8, align 4, !tbaa !46    ; 2 uses
  %i.jt = icmp sgt i32 %i.js, 0
  br i1 %i.jt, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ju = add nsw i32 %i.js, -1                   ; 2 uses
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !46
  store i32 %i.ju, ptr %i.b, align 4, !tbaa !46
  %i.jv = sext i32 %i.l to i64
  %i.jw = getelementptr [8 x i8], ptr %i.n, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 16
  %i.jy = shl i32 %i.r, 1
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr [8 x i8], ptr %i.t, i64 %i.jz
  %i.kb = getelementptr i8, ptr %i.ka, i64 16     ; 2 uses
  call void @dlacpy_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.jx, ptr noundef nonnull %10, ptr noundef %i.kb, ptr noundef nonnull %23) #5
  store double 1.000000e+00, ptr %22, align 8, !tbaa !49
  %i.kc = load i32, ptr %8, align 4, !tbaa !46    ; 5 uses
  %.not853900 = icmp slt i32 %i.kc, 2
  br i1 %.not853900, label %.._crit_edge_crit_edge, label %iter.check

.._crit_edge_crit_edge:                           ; preds = %bb.ay
  %.pre954 = add nsw i32 %i.kc, -1
  br label %._crit_edge

iter.check:                                       ; preds = %bb.ay
  %i.kd = add i32 %i.r, 2
  %i.ke = sext i32 %i.kd to i64
  %i.kf = add nsw i64 %i.s, %i.ke
  %i.kg = shl nsw i64 %i.kf, 3
  %scevgep = getelementptr i8, ptr %22, i64 %i.kg
  %i.kh = add nsw i32 %i.kc, -1                   ; 5 uses
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = shl nuw nsw i64 %i.ki, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.kj, i1 false), !tbaa !49
  %i.kk = sext i32 %i.r to i64                    ; 9 uses
  %i.kl = add nuw i32 %i.kc, 1
  %wide.trip.count = zext i32 %i.kl to i64        ; 3 uses
  %i.km = add nsw i64 %wide.trip.count, -2        ; 7 uses
  %min.iters.check = icmp ugt i64 %i.km, 3
  %ident.check.not = icmp eq i32 %i.r, 1
  %or.cond1264 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond1264, label %vector.main.loop.iter.check, label %.lr.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1005 = icmp ult i64 %i.km, 16
  br i1 %min.iters.check1005, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kn = and i64 %i.km, 12
  %n.vec = and i64 %i.km, -16                     ; 4 uses
  %i.ko = or disjoint i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kp = getelementptr [8 x i8], ptr %i.t, i64 %index ; 4 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 24
  %i.kr = getelementptr i8, ptr %i.kp, i64 56
  %i.ks = getelementptr i8, ptr %i.kp, i64 88
  %i.kt = getelementptr i8, ptr %i.kp, i64 120
  store <4 x double> zeroinitializer, ptr %i.kq, align 8, !tbaa !49
  store <4 x double> zeroinitializer, ptr %i.kr, align 8, !tbaa !49
  store <4 x double> zeroinitializer, ptr %i.ks, align 8, !tbaa !49
  store <4 x double> zeroinitializer, ptr %i.kt, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.km, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1006 = and i64 %i.km, -4                  ; 3 uses
  %i.kv = or disjoint i64 %n.vec1006, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1007 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1008, %vec.epilog.vector.body ] ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.t, i64 %index1007
  %i.kx = getelementptr i8, ptr %i.kw, i64 24
  store <4 x double> zeroinitializer, ptr %i.kx, align 8, !tbaa !49
  %index.next1008 = add nuw i64 %index1007, 4     ; 2 uses
  %i.ky = icmp eq i64 %index.next1008, %n.vec1006
  br i1 %i.ky, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1009 = icmp eq i64 %i.km, %n.vec1006
  br i1 %cmp.n1009, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 2, %iter.check ], [ %i.ko, %vec.epilog.iter.check ], [ %i.kv, %vec.epilog.middle.block ] ; 4 uses
  %i.kz = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.la = zext nneg i32 %i.kc to i64
  %i.lb = sub nsw i64 %i.la, %indvars.iv.ph
  %xtraiter = and i64 %i.kz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.lc = mul nsw i64 %indvars.iv.prol, %i.kk
  %i.ld = getelementptr [8 x i8], ptr %i.t, i64 %i.lc
  %i.le = getelementptr i8, ptr %i.ld, i64 8
  store double 0.000000e+00, ptr %i.le, align 8, !tbaa !49
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !14

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.lf = icmp ult i64 %i.lb, 7
  br i1 %i.lf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.lg = mul nsw i64 %indvars.iv, %i.kk
end_hunk_0
