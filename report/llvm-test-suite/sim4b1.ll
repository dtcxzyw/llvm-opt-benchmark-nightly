Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim4b1?download=true
inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.n, %bb.r, %.critedge
  %.3299 = phi ptr [ %i.fn, %bb.r ], [ %.1297896, %.critedge ], [ %.0296, %bb.n ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.3299, i64 4 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !31 ; 3 uses
  %i.fq = add i32 %i.fp, -1                       ; 4 uses
  %.not331 = icmp eq i32 %i.fq, 0
  br i1 %.not331, label %.thread548, label %bb.s

bb.s:                                             ; preds = %.critedge.thread
  %spec.select346 = call i32 @llvm.umin.i32(i32 %i.fq, i32 250) ; 12 uses
  %i.fr = shl nuw nsw i32 %spec.select346, 2
  %i.fs = load i32, ptr %.3299, align 4, !tbaa !32 ; 4 uses
  %i.ft = add i32 %i.fs, -1                       ; 2 uses
  %i.fu = call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.ft) ; 10 uses
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.fw = zext i32 %i.fp to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -1
  %i.fz = zext nneg i32 %spec.select346 to i64    ; 3 uses
  %i.ga = sub nsw i64 0, %i.fz
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.gd = zext i32 %i.fs to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -1
  %i.gg = sext i32 %i.fu to i64                   ; 3 uses
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.gf, i64 %i.gh ; 2 uses
  %i.gj = xor i32 %spec.select346, -1
  %i.gk = add i32 %i.fp, %i.gj                    ; 5 uses
  %i.gl = xor i32 %i.fu, -1
  %i.gm = add i32 %i.fs, %i.gl                    ; 5 uses
  %i.gn = load i32, ptr %i.x, align 4, !tbaa !36  ; 2 uses
  %i.go = add nuw nsw i32 %spec.select346, 1      ; 6 uses
  %i.gp = icmp sgt i32 %i.fs, 1
  br i1 %i.gp, label %.lr.ph.i365, label %.critedge.i

.lr.ph.i365:                                      ; preds = %bb.s, %bb.t
  %.0234274.i = phi i32 [ %i.gz, %bb.t ], [ %spec.select346, %bb.s ] ; 3 uses
  %.0237273.i = phi i32 [ %i.ha, %bb.t ], [ %i.fu, %bb.s ] ; 4 uses
  %i.gq = zext nneg i32 %.0234274.i to i64
  %i.gr = getelementptr i8, ptr %i.gb, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !20
  %i.gu = zext nneg i32 %.0237273.i to i64
  %i.gv = getelementptr i8, ptr %i.gi, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !20
  %i.gy = icmp eq i8 %i.gt, %i.gx
  br i1 %i.gy, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph.i365
  %i.gz = add nsw i32 %.0234274.i, -1             ; 3 uses
  %i.ha = add nsw i32 %.0237273.i, -1             ; 2 uses
  %i.hb = icmp ne i32 %i.gz, 0
  %i.hc = icmp sgt i32 %.0237273.i, 1
  %or.cond.i = and i1 %i.hb, %i.hc
  br i1 %or.cond.i, label %.lr.ph.i365, label %.critedge.i, !llvm.loop !72

.critedge.i:                                      ; preds = %bb.t, %.lr.ph.i365, %bb.s
  %.0237.lcssa.i = phi i32 [ %i.fu, %bb.s ], [ %.0237273.i, %.lr.ph.i365 ], [ %i.ha, %bb.t ] ; 2 uses
  %.0234.lcssa.i = phi i32 [ %spec.select346, %bb.s ], [ %.0234274.i, %.lr.ph.i365 ], [ %i.gz, %bb.t ] ; 3 uses
  %i.hd = icmp eq i32 %.0234.lcssa.i, 0
  %i.he = icmp eq i32 %.0237.lcssa.i, 0
  %or.cond3.i = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge.i
  %i.hf = add nsw i32 %.0234.lcssa.i, %i.gk
  %i.hg = add nsw i32 %.0237.lcssa.i, %i.gm
  br label %extend_bw.exit

bb.v:                                             ; preds = %.critedge.i
  %i.hh = add nsw i32 %i.fu, %spec.select346      ; 2 uses
  %i.hi = add nsw i32 %i.hh, 1                    ; 3 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = shl nsw i64 %i.hj, 2                    ; 2 uses
  %i.hl = call ptr @xmalloc(i64 noundef %i.hk) #18 ; 17 uses
  %i.hm = ptrtoaddr ptr %i.hl to i64
  %i.hn = call ptr @xmalloc(i64 noundef %i.hk) #18 ; 16 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64
  %.not279.i = icmp slt i32 %i.hh, 0
  br i1 %.not279.i, label %._crit_edge.i, label %.lr.ph281.preheader.i

.lr.ph281.preheader.i:                            ; preds = %bb.v
  %wide.trip.count.i361 = zext nneg i32 %i.hi to i64 ; 3 uses
  %min.iters.check1102 = icmp ult i32 %i.hi, 8
  br i1 %min.iters.check1102, label %.lr.ph281.i.preheader, label %vector.ph1103

vector.ph1103:                                    ; preds = %.lr.ph281.preheader.i
  %n.vec1104 = and i64 %wide.trip.count.i361, 2147483640 ; 3 uses
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1103
  %index1108 = phi i64 [ 0, %vector.ph1103 ], [ %index.next1109, %vector.body1107 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index1108 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <4 x i32> %broadcast.splat1106, ptr %i.hp, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat1106, ptr %i.hq, align 4, !tbaa !10
  %index.next1109 = add nuw i64 %index1108, 8     ; 2 uses
  %i.hr = icmp eq i64 %index.next1109, %n.vec1104
  br i1 %i.hr, label %middle.block1110, label %vector.body1107, !llvm.loop !73

middle.block1110:                                 ; preds = %vector.body1107
  %cmp.n1111 = icmp eq i64 %n.vec1104, %wide.trip.count.i361
  br i1 %cmp.n1111, label %._crit_edge.i, label %.lr.ph281.i.preheader

.lr.ph281.i.preheader:                            ; preds = %.lr.ph281.preheader.i, %middle.block1110
  %indvars.iv.i362.ph = phi i64 [ 0, %.lr.ph281.preheader.i ], [ %n.vec1104, %middle.block1110 ]
  br label %.lr.ph281.i

.lr.ph281.i:                                      ; preds = %.lr.ph281.i.preheader, %.lr.ph281.i
  %indvars.iv.i362 = phi i64 [ %indvars.iv.next.i363, %.lr.ph281.i ], [ %indvars.iv.i362.ph, %.lr.ph281.i.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.i362
  store i32 %i.go, ptr %i.hs, align 4, !tbaa !10
  %indvars.iv.next.i363 = add nuw nsw i64 %indvars.iv.i362, 1 ; 2 uses
  %exitcond.not.i364 = icmp eq i64 %indvars.iv.next.i363, %wide.trip.count.i361
  br i1 %exitcond.not.i364, label %._crit_edge.i, label %.lr.ph281.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %.lr.ph281.i, %middle.block1110, %bb.v
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gg ; 3 uses
  store i32 %.0234.lcssa.i, ptr %i.ht, align 4, !tbaa !10
  %i.hu = shl nuw nsw i32 %i.go, 2
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hw = call ptr @xmalloc(i64 noundef %i.hv) #18 ; 12 uses
  %i.hx = call ptr @xmalloc(i64 noundef %i.hv) #18 ; 7 uses
  %wide.trip.count322.i = zext nneg i32 %i.go to i64 ; 2 uses
  %min.iters.check1090 = icmp ult i32 %i.fq, 8
  br i1 %min.iters.check1090, label %scalar.ph1089.preheader, label %vector.ph1091

vector.ph1091:                                    ; preds = %._crit_edge.i
  %n.vec1092 = and i64 %i.fz, 248                 ; 3 uses
  %i.hy = or disjoint i64 %n.vec1092, 1
  %broadcast.splatinsert1093 = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat1094 = shufflevector <4 x i32> %broadcast.splatinsert1093, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1091
  %index1096 = phi i64 [ 0, %vector.ph1091 ], [ %index.next1097, %vector.body1095 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %index1096 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  store <4 x i32> %broadcast.splat1094, ptr %i.ia, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat1094, ptr %i.ib, align 4, !tbaa !10
  %index.next1097 = add nuw i64 %index1096, 8     ; 2 uses
  %i.ic = icmp eq i64 %index.next1097, %n.vec1092
  br i1 %i.ic, label %middle.block1098, label %vector.body1095, !llvm.loop !75

middle.block1098:                                 ; preds = %vector.body1095
  %cmp.n1099 = icmp eq i64 %n.vec1092, %i.fz
  br i1 %cmp.n1099, label %.loopexit, label %scalar.ph1089.preheader

scalar.ph1089.preheader:                          ; preds = %._crit_edge.i, %middle.block1098
  %indvars.iv319.i.ph = phi i64 [ 1, %._crit_edge.i ], [ %i.hy, %middle.block1098 ]
  br label %scalar.ph1089

scalar.ph1089:                                    ; preds = %scalar.ph1089.preheader, %scalar.ph1089
  %indvars.iv319.i = phi i64 [ %indvars.iv.next320.i, %scalar.ph1089 ], [ %indvars.iv319.i.ph, %scalar.ph1089.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv319.i
  store i32 %i.go, ptr %i.id, align 4, !tbaa !10
  %indvars.iv.next320.i = add nuw nsw i64 %indvars.iv319.i, 1 ; 2 uses
  %exitcond323.not.i = icmp eq i64 %indvars.iv.next320.i, %wide.trip.count322.i
  br i1 %exitcond323.not.i, label %.loopexit, label %scalar.ph1089, !llvm.loop !76

.loopexit:                                        ; preds = %scalar.ph1089, %middle.block1098
  %i.ie = load i32, ptr %i.ht, align 4, !tbaa !10
  store i32 %i.ie, ptr %i.hw, align 4, !tbaa !10
  store i32 %i.fu, ptr %i.hx, align 4, !tbaa !10
  %i.if = sdiv i32 %i.gn, 2                       ; 2 uses
  %i.ig = shl nsw i32 %i.gn, 1                    ; 2 uses
  %i.ih = add nsw i32 %i.fu, 2
  %i.ii = add nuw nsw i32 %spec.select346, 2
  %i.ij = call i32 @llvm.umin.i32(i32 %i.fq, i32 250)
  %i.ik = shl nuw nsw i32 %i.ij, 2
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = sext i32 %i.ft to i64
  %smin = call i64 @llvm.smin.i64(i64 %i.il, i64 %i.im)
  %i.in = add nsw i64 %smin, 1
  %i.io = sub i64 %i.ho, %i.hm
  %diff.check1076 = icmp ugt i64 %i.io, -32
  br label %bb.w

.loopexit.i.loopexit:                             ; preds = %.lr.ph300.i, %.lr.ph300.i.prol.loopexit
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1
  %indvars.iv.next331.i = add nsw i32 %indvars.iv330.i, 1
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond352.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count322.i
  br i1 %exitcond352.i, label %.critedge5.i, label %bb.w, !llvm.loop !77

bb.w:                                             ; preds = %.loopexit.i.loopexit, %.loopexit
  %indvars.iv346.i = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next347.i, %.loopexit.i.loopexit ] ; 10 uses
  %indvars.iv344.i = phi i64 [ 1, %.loopexit ], [ %indvars.iv.next345.i, %.loopexit.i.loopexit ] ; 9 uses
  %indvars.iv330.i = phi i32 [ %i.ih, %.loopexit ], [ %indvars.iv.next331.i, %.loopexit.i.loopexit ] ; 5 uses
  %indvars.iv324.in.i = phi i32 [ %i.fu, %.loopexit ], [ %indvars.iv324.i, %.loopexit.i.loopexit ]
  %i.ip = add i64 %i.in, %indvars.iv346.i
  %i.iq = trunc i64 %i.ip to i32
  %11 = shl nuw nsw i64 %indvars.iv346.i, 1
  %12 = add nuw i64 %11, 2
  %indvars.iv324.i = add i32 %indvars.iv324.in.i, -1 ; 3 uses
  %i.ir = sext i32 %indvars.iv324.i to i64        ; 6 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv346.i
  %i.it = load i32, ptr %i.is, align 4, !tbaa !10
  %i.iu = sub nsw i32 %spec.select346, %i.it      ; 3 uses
  %.not.i.i = icmp sgt i32 %i.iu, %i.if
  br i1 %.not.i.i, label %bb.x, label %good_ratio.exit.i

bb.x:                                             ; preds = %bb.w
  %i.iv = icmp slt i32 %i.iu, %i.ig
  br i1 %i.iv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iw = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !142
  br label %good_ratio.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ix = sitofp i32 %i.iu to double
  %i.iy = call double @llvm.fmuladd.f64(double %i.ix, double f0x3FC3333333333334, double 1.000000e+00)
  %i.iz = fptosi double %i.iy to i32
  br label %good_ratio.exit.i

good_ratio.exit.i:                                ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i = phi i32 [ %i.iz, %bb.z ], [ %i.iw, %bb.y ], [ 2, %bb.w ]
  %i.ja = sext i32 %.0.i.i to i64
  %.not247.i = icmp sgt i64 %indvars.iv346.i, %i.ja
  br i1 %.not247.i, label %bb.aa, label %.critedge7.i

bb.aa:                                            ; preds = %good_ratio.exit.i
  %.not248.i = icmp eq i64 %indvars.iv346.i, 0
  br i1 %.not248.i, label %.critedge5.split.loop.exit375.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jb = add nsw i64 %indvars.iv346.i, -1        ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !10
  %i.je = sub nsw i32 %spec.select346, %i.jd      ; 3 uses
  %.not.i257.i = icmp sgt i32 %i.je, %i.if
  br i1 %.not.i257.i, label %bb.ac, label %good_ratio.exit259.i

bb.ac:                                            ; preds = %bb.ab
  %i.jf = icmp slt i32 %i.je, %i.ig
  br i1 %i.jf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jg = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !142
  br label %good_ratio.exit259.i

bb.ae:                                            ; preds = %bb.ac
  %i.jh = sitofp i32 %i.je to double
  %i.ji = call double @llvm.fmuladd.f64(double %i.jh, double f0x3FC3333333333334, double 1.000000e+00)
  %i.jj = fptosi double %i.ji to i32
  br label %good_ratio.exit259.i

good_ratio.exit259.i:                             ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i258.i = phi i32 [ %i.jj, %bb.ae ], [ %i.jg, %bb.ad ], [ 2, %bb.ab ]
  %i.jk = sext i32 %.0.i258.i to i64
  %.not249.i = icmp sgt i64 %i.jb, %i.jk
  br i1 %.not249.i, label %.critedge5.split.loop.exit377.i, label %.critedge7.i

.critedge7.i:                                     ; preds = %good_ratio.exit259.i, %good_ratio.exit.i
  %i.jl = trunc i64 %indvars.iv346.i to i32
  %i.jm = xor i32 %i.jl, -1
  %i.jn = add i32 %i.fu, %i.jm
  %i.jo = add nsw i64 %indvars.iv344.i, %i.gg     ; 2 uses
  %sext328.i = sext i32 %i.jn to i64              ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.hl, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jp, i64 -4
  %i.jr = getelementptr [4 x i8], ptr %i.hl, i64 %sext328.i
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ar, %.critedge7.i
  %indvars.iv326.i = phi i64 [ %i.ir, %.critedge7.i ], [ %indvars.iv.next327.i, %bb.ar ] ; 7 uses
  %i.jt = icmp eq i64 %indvars.iv326.i, %sext328.i
  br i1 %i.jt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !10
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.jv = icmp eq i64 %indvars.iv326.i, %i.jo
  br i1 %i.jv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jw = load i32, ptr %i.jq, align 4, !tbaa !10
  %i.jx = add nsw i32 %i.jw, -1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv326.i ; 3 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !10 ; 3 uses
  %i.ka = add nsw i32 %i.jz, -1                   ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jy, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !10 ; 3 uses
  %.not253.i = icmp sgt i32 %i.ka, %i.kc
  %.phi.trans.insert.i = getelementptr i8, ptr %i.jy, i64 -4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !10 ; 3 uses
  %.not254.i = icmp sgt i32 %i.jz, %.pre.i
  %or.cond380.i = select i1 %.not253.i, i1 true, i1 %.not254.i
  br i1 %or.cond380.i, label %._crit_edge353.i, label %bb.ak

._crit_edge353.i:                                 ; preds = %bb.aj
  %i.kd = add nsw i32 %.pre.i, -1
  %.not256.i = icmp sgt i32 %.pre.i, %i.jz
  %i.ke = call i32 @llvm.smin.i32(i32 %i.kd, i32 %i.kc)
  %spec.select.i = select i1 %.not256.i, i32 %i.kc, i32 %i.ke
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge353.i, %bb.aj, %bb.ai, %bb.ag
  %.1235.i = phi i32 [ %i.ju, %bb.ag ], [ %i.jx, %bb.ai ], [ %spec.select.i, %._crit_edge353.i ], [ %i.ka, %bb.aj ] ; 4 uses
  %i.kf = trunc nsw i64 %indvars.iv326.i to i32
  %i.kg = sub i32 %i.kf, %spec.select346
  %i.kh = add i32 %.1235.i, %i.kg                 ; 3 uses
  %i.ki = icmp sgt i32 %.1235.i, 0
  %i.kj = icmp sgt i32 %i.kh, 0
  %or.cond9283.i = and i1 %i.ki, %i.kj
  br i1 %or.cond9283.i, label %.lr.ph287.i, label %.critedge11.i

.lr.ph287.i:                                      ; preds = %bb.ak, %bb.al
  %.2236285.i = phi i32 [ %i.ku, %bb.al ], [ %.1235.i, %bb.ak ] ; 4 uses
  %.1238284.i = phi i32 [ %i.kv, %bb.al ], [ %i.kh, %bb.ak ] ; 3 uses
  %i.kk = zext nneg i32 %.2236285.i to i64
  %i.kl = getelementptr i8, ptr %i.gb, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 -1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !20
  %i.ko = zext nneg i32 %.1238284.i to i64
  %i.kp = getelementptr i8, ptr %i.gi, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kp, i64 -1
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !20
  %i.ks = icmp eq i8 %i.kn, %i.kr
  br i1 %i.ks, label %bb.al, label %.critedge11.thread.i

.critedge11.thread.i:                             ; preds = %.lr.ph287.i
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv326.i
  store i32 %.2236285.i, ptr %i.kt, align 4, !tbaa !10
  br label %bb.ar

bb.al:                                            ; preds = %.lr.ph287.i
  %i.ku = add nsw i32 %.2236285.i, -1             ; 2 uses
  %i.kv = add nsw i32 %.1238284.i, -1             ; 2 uses
  %i.kw = icmp sgt i32 %.2236285.i, 1
  %i.kx = icmp sgt i32 %.1238284.i, 1
  %or.cond9.i = and i1 %i.kw, %i.kx
  br i1 %or.cond9.i, label %.lr.ph287.i, label %.critedge11.i, !llvm.loop !78

.critedge11.i:                                    ; preds = %bb.al, %bb.ak
  %.1238.lcssa.i = phi i32 [ %i.kh, %bb.ak ], [ %i.kv, %bb.al ] ; 2 uses
  %.2236.lcssa.i = phi i32 [ %.1235.i, %bb.ak ], [ %i.ku, %bb.al ] ; 3 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv326.i
  store i32 %.2236.lcssa.i, ptr %i.ky, align 4, !tbaa !10
  %i.kz = icmp eq i32 %.2236.lcssa.i, 0           ; 2 uses
  %i.la = icmp eq i32 %.1238.lcssa.i, 0           ; 2 uses
  %or.cond13.i = select i1 %i.kz, i1 %i.la, i1 false
  br i1 %or.cond13.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge11.i
  %i.lb = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  br label %extend_bw.exit

bb.an:                                            ; preds = %.critedge11.i
  br i1 %i.kz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.lc = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  %i.ld = add nsw i32 %.1238.lcssa.i, %i.gm
  br label %extend_bw.exit

bb.ap:                                            ; preds = %bb.an
  br i1 %i.la, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.le = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  %i.lf = add nsw i32 %.2236.lcssa.i, %i.gk
  br label %extend_bw.exit

bb.ar:                                            ; preds = %bb.ap, %.critedge11.thread.i
  %indvars.iv.next327.i = add nsw i64 %indvars.iv326.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next327.i to i32
  %exitcond332.i = icmp eq i32 %indvars.iv330.i, %lftr.wideiv.i
  br i1 %exitcond332.i, label %._crit_edge293.i, label %bb.af, !llvm.loop !79

._crit_edge293.i:                                 ; preds = %bb.ar
  %i.lg = load i32, ptr %i.ht, align 4, !tbaa !10
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv344.i ; 8 uses
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !10
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv344.i ; 4 uses
  store i32 %i.fu, ptr %i.li, align 4, !tbaa !10
  %.pre355.i = load i32, ptr %i.lh, align 4, !tbaa !10 ; 2 uses
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.ir
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !10 ; 2 uses
  %i.ll = icmp slt i32 %i.lk, %.pre355.i
  br i1 %i.ll, label %bb.as, label %.lr.ph297.i.prol.loopexit.unr-lcssa

bb.as:                                            ; preds = %._crit_edge293.i
  store i32 %i.lk, ptr %i.lh, align 4, !tbaa !10
  store i32 %indvars.iv324.i, ptr %i.li, align 4, !tbaa !10
  %.pre354.i.prol = load i32, ptr %i.lh, align 4, !tbaa !10
  br label %.lr.ph297.i.prol.loopexit.unr-lcssa

.lr.ph297.i.prol.loopexit.unr-lcssa:              ; preds = %bb.as, %._crit_edge293.i
  %i.lm = phi i32 [ %.pre355.i, %._crit_edge293.i ], [ %.pre354.i.prol, %bb.as ]
  %indvars.iv.next334.i.prol = add nsw i64 %i.ir, 1
  %.mask1207 = and i64 %indvars.iv346.i, 2147483647
  %i.ln = icmp eq i64 %.mask1207, 2147483647
  br i1 %i.ln, label %.lr.ph300.i.preheader, label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %.lr.ph297.i.prol.loopexit.unr-lcssa, %bb.av
  %i.lo = phi i32 [ %i.ly, %bb.av ], [ %i.lm, %.lr.ph297.i.prol.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv333.i = phi i64 [ %indvars.iv.next334.i.1, %bb.av ], [ %indvars.iv.next334.i.prol, %.lr.ph297.i.prol.loopexit.unr-lcssa ] ; 4 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv333.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !10 ; 2 uses
  %i.lr = icmp slt i32 %i.lq, %i.lo
  br i1 %i.lr, label %bb.at, label %.lr.ph297.i.1

bb.at:                                            ; preds = %.lr.ph297.i
  store i32 %i.lq, ptr %i.lh, align 4, !tbaa !10
  %i.ls = trunc nsw i64 %indvars.iv333.i to i32
  store i32 %i.ls, ptr %i.li, align 4, !tbaa !10
  %.pre354.i = load i32, ptr %i.lh, align 4, !tbaa !10
  br label %.lr.ph297.i.1

.lr.ph297.i.1:                                    ; preds = %bb.at, %.lr.ph297.i
  %i.lt = phi i32 [ %i.lo, %.lr.ph297.i ], [ %.pre354.i, %bb.at ] ; 2 uses
  %indvars.iv.next334.i = add nsw i64 %indvars.iv333.i, 1 ; 2 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next334.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !10 ; 2 uses
  %i.lw = icmp slt i32 %i.lv, %i.lt
  br i1 %i.lw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph297.i.1
  store i32 %i.lv, ptr %i.lh, align 4, !tbaa !10
  %i.lx = trunc nsw i64 %indvars.iv.next334.i to i32
  store i32 %i.lx, ptr %i.li, align 4, !tbaa !10
  %.pre354.i.1 = load i32, ptr %i.lh, align 4, !tbaa !10
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph297.i.1
  %i.ly = phi i32 [ %i.lt, %.lr.ph297.i.1 ], [ %.pre354.i.1, %bb.au ]
  %indvars.iv.next334.i.1 = add nsw i64 %indvars.iv333.i, 2 ; 2 uses
  %lftr.wideiv336.i.1 = trunc i64 %indvars.iv.next334.i.1 to i32
  %exitcond337.i.1 = icmp eq i32 %indvars.iv330.i, %lftr.wideiv336.i.1
  br i1 %exitcond337.i.1, label %.lr.ph300.i.preheader, label %.lr.ph297.i, !llvm.loop !80

.lr.ph300.i.preheader:                            ; preds = %bb.av, %.lr.ph297.i.prol.loopexit.unr-lcssa
  %min.iters.check1078 = icmp samesign ult i64 %indvars.iv346.i, 3
  %or.cond = select i1 %min.iters.check1078, i1 true, i1 %diff.check1076
  br i1 %or.cond, label %.lr.ph300.i.preheader1122, label %vector.ph1079

vector.ph1079:                                    ; preds = %.lr.ph300.i.preheader
  %n.vec1080 = and i64 %12, -8                    ; 2 uses
  %i.lz = add i64 %n.vec1080, %i.ir
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1079
  %index1082 = phi i64 [ 0, %vector.ph1079 ], [ %index.next1085, %vector.body1081 ] ; 2 uses
  %i.ma = add i64 %index1082, %i.ir               ; 2 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %wide.load1083 = load <4 x i32>, ptr %i.mb, align 4, !tbaa !10
  %wide.load1084 = load <4 x i32>, ptr %i.mc, align 4, !tbaa !10
  %i.md = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.ma ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <4 x i32> %wide.load1083, ptr %i.md, align 4, !tbaa !10
  store <4 x i32> %wide.load1084, ptr %i.me, align 4, !tbaa !10
  %index.next1085 = add nuw i64 %index1082, 8     ; 2 uses
  %i.mf = icmp eq i64 %index.next1085, %n.vec1080
  br i1 %i.mf, label %.lr.ph300.i.preheader1122, label %vector.body1081, !llvm.loop !81

.lr.ph300.i.preheader1122:                        ; preds = %vector.body1081, %.lr.ph300.i.preheader
  %indvars.iv339.i.ph = phi i64 [ %i.ir, %.lr.ph300.i.preheader ], [ %i.lz, %vector.body1081 ] ; 3 uses
  %i.mg = trunc i64 %indvars.iv339.i.ph to i32    ; 2 uses
  %i.mh = sub i32 %indvars.iv330.i, %i.mg
  %i.mi = sub i32 %i.iq, %i.mg
  %xtraiter1186 = and i32 %i.mh, 3                ; 2 uses
  %lcmp.mod1187.not = icmp eq i32 %xtraiter1186, 0
  br i1 %lcmp.mod1187.not, label %.lr.ph300.i.prol.loopexit, label %.lr.ph300.i.prol

.lr.ph300.i.prol:                                 ; preds = %.lr.ph300.i.preheader1122, %.lr.ph300.i.prol
  %indvars.iv339.i.prol = phi i64 [ %indvars.iv.next340.i.prol, %.lr.ph300.i.prol ], [ %indvars.iv339.i.ph, %.lr.ph300.i.preheader1122 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph300.i.prol ], [ 0, %.lr.ph300.i.preheader1122 ]
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv339.i.prol
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !10
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv339.i.prol
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !10
  %indvars.iv.next340.i.prol = add nsw i64 %indvars.iv339.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1186
  br i1 %prol.iter.cmp.not, label %.lr.ph300.i.prol.loopexit, label %.lr.ph300.i.prol, !llvm.loop !82

.lr.ph300.i.prol.loopexit:                        ; preds = %.lr.ph300.i.prol, %.lr.ph300.i.preheader1122
  %indvars.iv339.i.unr = phi i64 [ %indvars.iv339.i.ph, %.lr.ph300.i.preheader1122 ], [ %indvars.iv.next340.i.prol, %.lr.ph300.i.prol ]
  %i.mm = icmp ult i32 %i.mi, 3
  br i1 %i.mm, label %.loopexit.i.loopexit, label %.lr.ph300.i

.lr.ph300.i:                                      ; preds = %.lr.ph300.i.prol.loopexit, %.lr.ph300.i
  %indvars.iv339.i = phi i64 [ %indvars.iv.next340.i.3, %.lr.ph300.i ], [ %indvars.iv339.i.unr, %.lr.ph300.i.prol.loopexit ] ; 6 uses
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv339.i
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !10
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv339.i
  store i32 %i.mo, ptr %i.mp, align 4, !tbaa !10
  %indvars.iv.next340.i = add nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next340.i
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !10
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next340.i
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !10
  %indvars.iv.next340.i.1 = add nsw i64 %indvars.iv339.i, 2 ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next340.i.1
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !10
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next340.i.1
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !10
  %indvars.iv.next340.i.2 = add nsw i64 %indvars.iv339.i, 3 ; 2 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next340.i.2
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !10
  %i.my = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next340.i.2
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !10
  %indvars.iv.next340.i.3 = add nsw i64 %indvars.iv339.i, 4 ; 2 uses
  %lftr.wideiv342.i.3 = trunc i64 %indvars.iv.next340.i.3 to i32
  %exitcond343.i.3 = icmp eq i32 %indvars.iv330.i, %lftr.wideiv342.i.3
  br i1 %exitcond343.i.3, label %.loopexit.i.loopexit, label %.lr.ph300.i, !llvm.loop !83

.critedge5.split.loop.exit375.i:                  ; preds = %bb.aa
  %i.mz = trunc nuw nsw i64 %indvars.iv344.i to i32
  br label %.critedge5.i

.critedge5.split.loop.exit377.i:                  ; preds = %good_ratio.exit259.i
  %i.na = trunc nuw nsw i64 %indvars.iv344.i to i32
  br label %.critedge5.i

.critedge5.i:                                     ; preds = %.loopexit.i.loopexit, %.critedge5.split.loop.exit377.i, %.critedge5.split.loop.exit375.i
  %.lcssa.i = phi i32 [ %i.mz, %.critedge5.split.loop.exit375.i ], [ %i.na, %.critedge5.split.loop.exit377.i ], [ %i.ii, %.loopexit.i.loopexit ] ; 2 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %.lcssa.i, i32 1)
  %i.nb = add i32 %smin.i, -1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.critedge5.i
  %.2233306.i = phi i32 [ %.lcssa.i, %.critedge5.i ], [ %i.nj, %bb.ax ] ; 4 uses
  %i.nc = zext nneg i32 %.2233306.i to i64
  %i.nd = getelementptr [4 x i8], ptr %i.hw, i64 %i.nc ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 -4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !10
  %i.ng = load i32, ptr %i.nd, align 4, !tbaa !10
  %i.nh = sub nsw i32 %i.nf, %i.ng
  %i.ni = icmp slt i32 %i.nh, 3
  br i1 %i.ni, label %bb.ax, label %.critedge15.i

bb.ax:                                            ; preds = %bb.aw
  %i.nj = add nsw i32 %.2233306.i, -1
  %i.nk = icmp sgt i32 %.2233306.i, 1
  br i1 %i.nk, label %bb.aw, label %.critedge15.i, !llvm.loop !84

.critedge15.i:                                    ; preds = %bb.ax, %bb.aw
  %.2233.lcssa.i = phi i32 [ %i.nb, %bb.ax ], [ %.2233306.i, %bb.aw ] ; 2 uses
  %i.nl = sext i32 %.2233.lcssa.i to i64          ; 2 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !10 ; 2 uses
  %i.no = add nsw i32 %i.nn, %i.gk
  %i.np = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.nl
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !10
  %i.nr = sub i32 %i.gm, %spec.select346
  %i.ns = add i32 %i.nr, %i.nn
  %i.nt = add i32 %i.ns, %i.nq
  call void @free(ptr noundef nonnull %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef %i.hn) #18
  br label %extend_bw.exit

extend_bw.exit:                                   ; preds = %bb.u, %bb.am, %bb.ao, %bb.aq, %.critedge15.i
  %.0545 = phi i32 [ %i.hf, %bb.u ], [ %i.no, %.critedge15.i ], [ %i.gk, %bb.am ], [ %i.gk, %bb.ao ], [ %i.lf, %bb.aq ] ; 2 uses
  %.0544 = phi i32 [ %i.hg, %bb.u ], [ %i.nt, %.critedge15.i ], [ %i.gm, %bb.am ], [ %i.ld, %bb.ao ], [ %i.gm, %bb.aq ]
  %.0239.i = phi i32 [ 0, %bb.u ], [ %.2233.lcssa.i, %.critedge15.i ], [ %i.lb, %bb.am ], [ %i.lc, %bb.ao ], [ %i.le, %bb.aq ]
  %i.nu = load i32, ptr %i.fo, align 4, !tbaa !31
  %i.nv = xor i32 %.0545, -1
  %i.nw = add i32 %i.nu, %i.nv
  %i.nx = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !143
  %i.ny = mul nsw i32 %i.nw, %i.nx
  %i.nz = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !144
  %i.oa = mul nsw i32 %i.nz, %.0239.i
  %i.ob = add nsw i32 %i.oa, %i.ny
  %i.oc = icmp sgt i32 %i.ob, -1
  br i1 %i.oc, label %bb.ay, label %.thread548

bb.ay:                                            ; preds = %extend_bw.exit
  %i.od = add nsw i32 %.0545, 1
  store i32 %i.od, ptr %i.fo, align 4, !tbaa !31
  %i.oe = add nsw i32 %.0544, 1
  store i32 %i.oe, ptr %.3299, align 4, !tbaa !32
  br label %.thread548

.thread548:                                       ; preds = %extend_bw.exit, %bb.ay, %.critedge.thread, %bb.f, %bb.e
  %i.of = load i32, ptr %i.bh, align 8, !tbaa !137
  %.not333 = icmp eq i32 %i.of, 0
  br i1 %.not333, label %bb.az, label %.thread555

bb.az:                                            ; preds = %.thread548
  %i.og = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.oh = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %i.oi = add i32 %i.oh, -1
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.oj
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !29 ; 5 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 12 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !44 ; 3 uses
  %i.oo = load i32, ptr %i.i, align 4, !tbaa !135 ; 2 uses
  %i.op = icmp ult i32 %i.on, %i.oo
  br i1 %i.op, label %bb.ba, label %.thread555

bb.ba:                                            ; preds = %bb.az
  %i.oq = sub nuw i32 %i.oo, %i.on                ; 3 uses
  %i.or = icmp ugt i32 %i.oq, 60
  br i1 %i.or, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.os = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !43
  %i.ou = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !35
  %i.ow = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !45
  %i.oy = add i32 %i.ox, %i.ov
  %i.oz = icmp ult i32 %i.ot, %i.oy
  br i1 %i.oz, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.pa = load i32, ptr %i.x, align 4, !tbaa !36
  %spec.select347 = call i32 @llvm.umin.i32(i32 %i.pa, i32 10) ; 2 uses
  %i.pb = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.pc = zext i32 %i.on to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pc
  store i32 %spec.select347, ptr %i.ad, align 4, !tbaa !36
  store ptr %i.pd, ptr %i.ae, align 8, !tbaa !27
  store i32 %i.oq, ptr %i.af, align 8, !tbaa !16
  %i.pe = shl nuw nsw i32 %spec.select347, 1
  %i.pf = add nsw i32 %i.pe, -2
  %notmask.i366 = shl nsw i32 -1, %i.pf
  %i.pg = xor i32 %notmask.i366, -1
  store i32 %i.pg, ptr %i.ag, align 8, !tbaa !37
  %i.ph = add i32 %i.oq, 1
  %i.pi = zext i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 2
  %i.pk = call ptr @xmalloc(i64 noundef %i.pj) #18 ; 2 uses
  store ptr %i.pk, ptr %i.ah, align 8, !tbaa !38
  %i.pl = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #18 ; 3 uses
  store ptr %i.pl, ptr %9, align 8, !tbaa !39
  call void @bld_table(ptr noundef nonnull %9)
  %i.pm = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.pn = load i32, ptr %i.os, align 4, !tbaa !43 ; 3 uses
  %i.po = zext i32 %i.pn to i64
end_hunk_0
begin_hunk_1_@SIM4:bb.a
  %.pre757 = phi i32 [ %i.rz, %grow_exon_left.exit ], [ %.pre757.pre, %free_hash_env.exit370._crit_edge ]
  %.0290 = phi ptr [ %i.sd, %grow_exon_left.exit ], [ %i.ol, %free_hash_env.exit370._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bb, %bb.ba
  %i.se = phi i32 [ %.pre757, %bb.bf ], [ %i.oh, %bb.bb ], [ %i.oh, %bb.ba ] ; 6 uses
  %.1291 = phi ptr [ %.0290, %bb.bf ], [ %i.ol, %bb.bb ], [ %i.ol, %bb.ba ] ; 2 uses
  %.not679 = icmp eq i32 %i.se, 0
  br i1 %.not679, label %.critedge7.thread, label %.lr.ph653

.lr.ph653:                                        ; preds = %bb.bg
  %i.sf = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.sg = load ptr, ptr %i.o, align 8, !tbaa !136
  %wide.trip.count740 = zext i32 %i.se to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph653, %bb.bi
  %indvars.iv737 = phi i64 [ 0, %.lr.ph653 ], [ %indvars.iv.next738, %bb.bi ] ; 2 uses
  %i.sh = trunc nuw i64 %indvars.iv737 to i32     ; 2 uses
  %i.si = xor i32 %i.sh, -1
  %i.sj = add i32 %i.se, %i.si
  %i.sk = zext i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.sk
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !29 ; 2 uses
  %i.sn = getelementptr i8, ptr %i.sm, i64 4
  %.val = load i32, ptr %i.sn, align 4, !tbaa !31
  %i.so = getelementptr i8, ptr %i.sm, i64 12
  %.val350 = load i32, ptr %i.so, align 4, !tbaa !44
  %i.sp = call fastcc i32 @is_polyAT_exon_p(i32 %.val, i32 %.val350, ptr noundef %i.sg)
  %.not335 = icmp eq i32 %i.sp, 0
  br i1 %.not335, label %.critedge7, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %exitcond741.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count740
  br i1 %exitcond741.not, label %.critedge7, label %bb.bh, !llvm.loop !87

.critedge7:                                       ; preds = %bb.bh, %bb.bi
  %.0289.lcssa = phi i32 [ %i.se, %bb.bi ], [ %i.sh, %bb.bh ] ; 5 uses
  %.not336 = icmp eq i32 %.0289.lcssa, 0
  br i1 %.not336, label %.critedge7.thread, label %bb.bj

bb.bj:                                            ; preds = %.critedge7
  %i.sq = sub i32 %i.se, %.0289.lcssa             ; 3 uses
  %.not893 = icmp ugt i32 %.0289.lcssa, %i.se
  br i1 %.not893, label %._crit_edge.thread, label %.lr.ph660.preheader

._crit_edge.thread:                               ; preds = %bb.bj
  store i32 %i.sq, ptr %i.bl, align 8, !tbaa !19
  br label %bb.bk

.lr.ph660.preheader:                              ; preds = %bb.bj
  %i.sr = zext i32 %i.sq to i64
  br label %.lr.ph660

.lr.ph660:                                        ; preds = %.lr.ph660.preheader, %.lr.ph660
  %indvars.iv742 = phi i64 [ %i.sr, %.lr.ph660.preheader ], [ %indvars.iv.next743, %.lr.ph660 ] ; 2 uses
  %i.ss = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %indvars.iv742
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !29
  call void @free(ptr noundef %i.su) #18
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1 ; 2 uses
  %i.sv = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %i.sw = zext i32 %i.sv to i64
  %i.sx = icmp samesign ult i64 %indvars.iv.next743, %i.sw
  br i1 %i.sx, label %.lr.ph660, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph660
  %.pre771 = sub i32 %i.sv, %.0289.lcssa          ; 2 uses
  %i.sy = icmp eq i32 %i.sv, %.0289.lcssa
  store i32 %.pre771, ptr %i.bl, align 8, !tbaa !19
  br i1 %i.sy, label %bb.if, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %.pre-phi905 = phi i32 [ %i.sq, %._crit_edge.thread ], [ %.pre771, %._crit_edge ]
  %i.sz = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.ta = add i32 %.pre-phi905, -1
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %i.tb
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !29
  br label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.bg, %bb.bk, %.critedge7
  %.3293 = phi ptr [ %i.td, %bb.bk ], [ %.1291, %.critedge7 ], [ %.1291, %bb.bg ] ; 2 uses
  %i.te = load i32, ptr %i.i, align 4, !tbaa !135 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.3293, i64 12 ; 3 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !44 ; 4 uses
  %.not338 = icmp eq i32 %i.te, %i.tg
  br i1 %.not338, label %.thread555, label %bb.bl

bb.bl:                                            ; preds = %.critedge7.thread
  %i.th = sub i32 %i.te, %i.tg
  %spec.select348 = call i32 @llvm.umin.i32(i32 %i.th, i32 250) ; 18 uses
  %i.ti = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.tj = zext i32 %i.tg to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj ; 2 uses
  %i.tl = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.tm = getelementptr inbounds nuw i8, ptr %.3293, i64 8 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !43 ; 8 uses
  %i.to = zext i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.to ; 2 uses
  %i.tq = shl nuw nsw i32 %spec.select348, 2
  %i.tr = load i32, ptr %i.f, align 8, !tbaa !16
  %i.ts = sub i32 %i.tr, %i.tn                    ; 2 uses
  %i.tt = call i32 @llvm.smin.i32(i32 %i.tq, i32 %i.ts) ; 10 uses
  %i.tu = load i32, ptr %i.x, align 4, !tbaa !36  ; 2 uses
  %i.tv = add nuw nsw i32 %spec.select348, 1      ; 2 uses
  %i.tw = icmp sgt i32 %i.ts, 0
  br i1 %i.tw, label %.lr.ph.preheader.i401, label %.critedge.thread.i

.lr.ph.preheader.i401:                            ; preds = %bb.bl
  %i.tx = add nsw i32 %i.tt, -1
  %i.ty = add nsw i32 %spec.select348, -1
  %umin.i = call i32 @llvm.umin.i32(i32 %i.tx, i32 %i.ty)
  %i.tz = add nsw i32 %umin.i, 1
  %wide.trip.count.i402 = zext i32 %i.tz to i64   ; 2 uses
  br label %.lr.ph.i403

.lr.ph.i403:                                      ; preds = %bb.bm, %.lr.ph.preheader.i401
  %indvars.iv.i404 = phi i64 [ 0, %.lr.ph.preheader.i401 ], [ %indvars.iv.next.i406, %bb.bm ] ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tk, i64 %indvars.iv.i404
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !20
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tp, i64 %indvars.iv.i404
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !20
  %i.ue = icmp eq i8 %i.ub, %i.ud
  br i1 %i.ue, label %bb.bm, label %.critedge.i405

bb.bm:                                            ; preds = %.lr.ph.i403
  %indvars.iv.next.i406 = add nuw nsw i64 %indvars.iv.i404, 1 ; 2 uses
  %exitcond.not.i407 = icmp eq i64 %indvars.iv.next.i406, %wide.trip.count.i402
  br i1 %exitcond.not.i407, label %.critedge.i405, label %.lr.ph.i403, !llvm.loop !89

.critedge.i405:                                   ; preds = %bb.bm, %.lr.ph.i403
  %.0231.lcssa.ph.in.i = phi i64 [ %indvars.iv.i404, %.lr.ph.i403 ], [ %wide.trip.count.i402, %bb.bm ]
  %.0231.lcssa.ph.i = trunc i64 %.0231.lcssa.ph.in.i to i32 ; 2 uses
  %i.uf = icmp eq i32 %spec.select348, %.0231.lcssa.ph.i
  br i1 %i.uf, label %bb.bn, label %.critedge.thread.i

bb.bn:                                            ; preds = %.critedge.i405
  %i.ug = add nsw i32 %i.tn, %spec.select348
  br label %extend_fw.exit

.critedge.thread.i:                               ; preds = %.critedge.i405, %bb.bl
  %.0231.lcssa391.i = phi i32 [ %.0231.lcssa.ph.i, %.critedge.i405 ], [ 0, %bb.bl ] ; 2 uses
  %i.uh = icmp eq i32 %.0231.lcssa391.i, %i.tt
  br i1 %i.uh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.critedge.thread.i
  %i.ui = add nsw i32 %i.tt, %i.tn
  br label %extend_fw.exit

bb.bp:                                            ; preds = %.critedge.thread.i
  %i.uj = add nsw i32 %i.tt, %spec.select348      ; 2 uses
  %i.uk = add nsw i32 %i.uj, 1                    ; 2 uses
  %i.ul = sext i32 %i.uk to i64
  %i.um = shl nsw i64 %i.ul, 2                    ; 2 uses
  %i.un = call ptr @xmalloc(i64 noundef %i.um) #18 ; 16 uses
  %i.uo = ptrtoaddr ptr %i.un to i64
  %i.up = call ptr @xmalloc(i64 noundef %i.um) #18 ; 15 uses
  %i.uq = ptrtoaddr ptr %i.up to i64
  %.not274.i = icmp slt i32 %i.uj, 0
  br i1 %.not274.i, label %._crit_edge.i385, label %.lr.ph276.preheader.i

.lr.ph276.preheader.i:                            ; preds = %bb.bp
  %i.ur = zext nneg i32 %i.uk to i64
  %i.us = shl nuw nsw i64 %i.ur, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.un, i8 -1, i64 %i.us, i1 false), !tbaa !10
  br label %._crit_edge.i385

._crit_edge.i385:                                 ; preds = %.lr.ph276.preheader.i, %bb.bp
  %i.ut = zext nneg i32 %spec.select348 to i64    ; 6 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.ut ; 3 uses
  store i32 %.0231.lcssa391.i, ptr %i.uu, align 4, !tbaa !10
  %i.uv = shl nuw nsw i32 %i.tv, 2
  %i.uw = zext nneg i32 %i.uv to i64              ; 2 uses
  %i.ux = call ptr @xmalloc(i64 noundef %i.uw) #18 ; 11 uses
  %i.uy = call ptr @xmalloc(i64 noundef %i.uw) #18 ; 7 uses
  %scevgep.i = getelementptr i8, ptr %i.ux, i64 4
  %i.uz = shl nuw nsw i64 %i.ut, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 -1, i64 %i.uz, i1 false), !tbaa !10
  %i.va = load i32, ptr %i.uu, align 4, !tbaa !10
  store i32 %i.va, ptr %i.ux, align 4, !tbaa !10
  store i32 %spec.select348, ptr %i.uy, align 4, !tbaa !10
  %i.vb = sdiv i32 %i.tu, 2                       ; 2 uses
  %i.vc = shl nsw i32 %i.tu, 1                    ; 2 uses
  %i.vd = sext i32 %i.tt to i64
  %i.ve = add nuw nsw i32 %spec.select348, 2
  %i.vf = add nuw nsw i64 %i.ut, 2
  %wide.trip.count374.i = zext nneg i32 %i.tv to i64 ; 2 uses
  %i.vg = sub i64 %i.uq, %i.uo
  %diff.check1062 = icmp ugt i64 %i.vg, -32
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge298.i.loopexit, %._crit_edge.i385
  %indvars.iv366.i = phi i64 [ 0, %._crit_edge.i385 ], [ %indvars.iv.next367.i, %._crit_edge298.i.loopexit ] ; 9 uses
  %indvars.iv364.i = phi i64 [ 1, %._crit_edge.i385 ], [ %indvars.iv.next365.i, %._crit_edge298.i.loopexit ] ; 9 uses
  %indvars.iv362.i = phi i64 [ %i.vf, %._crit_edge.i385 ], [ %indvars.iv.next363.i, %._crit_edge298.i.loopexit ] ; 5 uses
  %indvars.iv337.in.i = phi i64 [ %i.ut, %._crit_edge.i385 ], [ %indvars.iv337.i, %._crit_edge298.i.loopexit ] ; 2 uses
  %indvars.iv327.i = phi i32 [ -1, %._crit_edge.i385 ], [ %indvars.iv.next328.i, %._crit_edge298.i.loopexit ] ; 2 uses
  %13 = add nuw i64 %indvars.iv366.i, %wide.trip.count374.i
  %14 = shl nuw nsw i64 %indvars.iv366.i, 1
  %i.vh = add nuw i64 %14, 2
  %indvars.iv337.i = add nsw i64 %indvars.iv337.in.i, -1 ; 7 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %indvars.iv366.i
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !10 ; 3 uses
  %.not.i.i386 = icmp sgt i32 %i.vj, %i.vb
  br i1 %.not.i.i386, label %bb.br, label %good_ratio.exit.i387

bb.br:                                            ; preds = %bb.bq
  %i.vk = icmp slt i32 %i.vj, %i.vc
  br i1 %i.vk, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.vl = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !142
  br label %good_ratio.exit.i387

bb.bt:                                            ; preds = %bb.br
  %i.vm = sitofp i32 %i.vj to double
  %i.vn = call double @llvm.fmuladd.f64(double %i.vm, double f0x3FC3333333333334, double 1.000000e+00)
  %i.vo = fptosi double %i.vn to i32
  br label %good_ratio.exit.i387

good_ratio.exit.i387:                             ; preds = %bb.bt, %bb.bs, %bb.bq
  %.0.i.i388 = phi i32 [ %i.vo, %bb.bt ], [ %i.vl, %bb.bs ], [ 2, %bb.bq ]
  %i.vp = sext i32 %.0.i.i388 to i64
  %.not244.i = icmp sgt i64 %indvars.iv366.i, %i.vp
  br i1 %.not244.i, label %bb.bu, label %.critedge4.i

bb.bu:                                            ; preds = %good_ratio.exit.i387
  %.not245.i = icmp eq i64 %indvars.iv366.i, 0
  br i1 %.not245.i, label %.critedge2.split.loop.exit404.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vq = add nsw i64 %indvars.iv366.i, -1        ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !10 ; 3 uses
  %.not.i256.i = icmp sgt i32 %i.vs, %i.vb
  br i1 %.not.i256.i, label %bb.bw, label %good_ratio.exit258.i

bb.bw:                                            ; preds = %bb.bv
  %i.vt = icmp slt i32 %i.vs, %i.vc
  br i1 %i.vt, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vu = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !142
  br label %good_ratio.exit258.i

bb.by:                                            ; preds = %bb.bw
  %i.vv = sitofp i32 %i.vs to double
  %i.vw = call double @llvm.fmuladd.f64(double %i.vv, double f0x3FC3333333333334, double 1.000000e+00)
  %i.vx = fptosi double %i.vw to i32
  br label %good_ratio.exit258.i

good_ratio.exit258.i:                             ; preds = %bb.by, %bb.bx, %bb.bv
  %.0.i257.i = phi i32 [ %i.vx, %bb.by ], [ %i.vu, %bb.bx ], [ 2, %bb.bv ]
  %i.vy = sext i32 %.0.i257.i to i64
  %.not246.i = icmp sgt i64 %i.vq, %i.vy
  br i1 %.not246.i, label %.critedge2.split.loop.exit406.i, label %.critedge4.i

.critedge4.i:                                     ; preds = %good_ratio.exit258.i, %good_ratio.exit.i387
  %i.vz = xor i64 %indvars.iv366.i, -1
  %i.wa = add nsw i64 %i.vz, %i.ut                ; 2 uses
  %i.wb = add nuw nsw i64 %indvars.iv364.i, %i.ut ; 2 uses
  %i.wc = getelementptr [4 x i8], ptr %i.un, i64 %i.wb
  %i.wd = getelementptr i8, ptr %i.wc, i64 -4
  %i.we = getelementptr [4 x i8], ptr %i.un, i64 %i.wa
  %i.wf = getelementptr i8, ptr %i.we, i64 4
  br label %bb.ca

bb.bz:                                            ; preds = %bb.cm
  %indvars.iv.next340.i390 = add nsw i64 %indvars.iv339.i389, 1 ; 2 uses
  %indvars.iv.next330.i = add nsw i32 %indvars.iv329.i, 1
  %exitcond347.not.i = icmp eq i64 %indvars.iv.next340.i390, %indvars.iv362.i
  br i1 %exitcond347.not.i, label %._crit_edge290.i, label %bb.ca, !llvm.loop !90

bb.ca:                                            ; preds = %bb.bz, %.critedge4.i
  %indvars.iv339.i389 = phi i64 [ %indvars.iv337.i, %.critedge4.i ], [ %indvars.iv.next340.i390, %bb.bz ] ; 6 uses
  %indvars.iv329.i = phi i32 [ %indvars.iv327.i, %.critedge4.i ], [ %indvars.iv.next330.i, %bb.bz ] ; 2 uses
  %i.wg = icmp eq i64 %indvars.iv339.i389, %i.wa
  br i1 %i.wg, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.wh = load i32, ptr %i.wf, align 4, !tbaa !10
  %i.wi = add nsw i32 %i.wh, 1
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  %i.wj = icmp eq i64 %indvars.iv339.i389, %i.wb
  br i1 %i.wj, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.wk = load i32, ptr %i.wd, align 4, !tbaa !10
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv339.i389 ; 4 uses
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !10 ; 3 uses
  %i.wn = getelementptr i8, ptr %i.wl, i64 4
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !10 ; 3 uses
  %.not250.i = icmp slt i32 %i.wm, %i.wo
  br i1 %.not250.i, label %._crit_edge376.i, label %bb.cf

._crit_edge376.i:                                 ; preds = %bb.ce
  %.phi.trans.insert.i399 = getelementptr i8, ptr %i.wl, i64 -4
  %.pre.i400 = load i32, ptr %.phi.trans.insert.i399, align 4, !tbaa !10
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.wp = add nsw i32 %i.wm, 1                    ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wl, i64 -4
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !10 ; 2 uses
  %.not251.i = icmp slt i32 %i.wp, %i.wr
  br i1 %.not251.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %._crit_edge376.i
  %i.ws = phi i32 [ %.pre.i400, %._crit_edge376.i ], [ %i.wr, %bb.cf ] ; 2 uses
  %i.wt = add nsw i32 %i.wo, 1
  %.not253.i397 = icmp slt i32 %i.wo, %i.wm
  %i.wu = call i32 @llvm.smax.i32(i32 %i.wt, i32 %i.ws)
  %spec.select.i398 = select i1 %.not253.i397, i32 %i.ws, i32 %i.wu
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.cb
  %.1228.i = phi i32 [ %i.wi, %bb.cb ], [ %i.wk, %bb.cd ], [ %spec.select.i398, %bb.cg ], [ %i.wp, %bb.cf ] ; 7 uses
  %i.wv = trunc i64 %indvars.iv339.i389 to i32
  %i.ww = sub i32 %i.wv, %spec.select348
  %i.wx = add i32 %.1228.i, %i.ww                 ; 3 uses
  %i.wy = icmp sgt i32 %.1228.i, -1
  br i1 %i.wy, label %.preheader.i394, label %.critedge6.i

.preheader.i394:                                  ; preds = %bb.ch
  %i.wz = icmp slt i32 %.1228.i, %spec.select348
  %i.xa = icmp slt i32 %i.wx, %i.tt
  %or.cond254278.i = and i1 %i.wz, %i.xa
  br i1 %or.cond254278.i, label %.lr.ph281.preheader.i395, label %.critedge6.i

.lr.ph281.preheader.i395:                         ; preds = %.preheader.i394
  %i.xb = zext nneg i32 %.1228.i to i64
  %i.xc = add i32 %.1228.i, %indvars.iv329.i
  %i.xd = sext i32 %i.xc to i64
  br label %.lr.ph281.i396

.lr.ph281.i396:                                   ; preds = %bb.ci, %.lr.ph281.preheader.i395
  %indvars.iv331.i = phi i64 [ %i.xd, %.lr.ph281.preheader.i395 ], [ %indvars.iv.next332.i, %bb.ci ] ; 3 uses
  %indvars.iv325.i = phi i64 [ %i.xb, %.lr.ph281.preheader.i395 ], [ %indvars.iv.next326.i, %bb.ci ] ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.tk, i64 %indvars.iv325.i
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !20
  %i.xg = getelementptr inbounds i8, ptr %i.tp, i64 %indvars.iv331.i
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !20
  %i.xi = icmp eq i8 %i.xf, %i.xh
  br i1 %i.xi, label %bb.ci, label %.critedge6.loopexit.split.loop.exit.i

bb.ci:                                            ; preds = %.lr.ph281.i396
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %indvars333.i = trunc i64 %indvars.iv.next326.i to i32 ; 2 uses
  %indvars.iv.next332.i = add nsw i64 %indvars.iv331.i, 1 ; 3 uses
  %i.xj = icmp sgt i32 %spec.select348, %indvars333.i
  %i.xk = icmp slt i64 %indvars.iv.next332.i, %i.vd
  %or.cond254.i = select i1 %i.xj, i1 %i.xk, i1 false
  br i1 %or.cond254.i, label %.lr.ph281.i396, label %.critedge6.loopexit.i, !llvm.loop !91

.critedge6.loopexit.split.loop.exit.i:            ; preds = %.lr.ph281.i396
  %i.xl = trunc nuw i64 %indvars.iv325.i to i32
  br label %.critedge6.loopexit.i

.critedge6.loopexit.i:                            ; preds = %bb.ci, %.critedge6.loopexit.split.loop.exit.i
  %.2233.ph.in.i = phi i64 [ %indvars.iv331.i, %.critedge6.loopexit.split.loop.exit.i ], [ %indvars.iv.next332.i, %bb.ci ]
  %.3230.ph.i = phi i32 [ %i.xl, %.critedge6.loopexit.split.loop.exit.i ], [ %indvars333.i, %bb.ci ]
  %.2233.ph.i = trunc i64 %.2233.ph.in.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.loopexit.i, %.preheader.i394, %bb.ch
  %.2233.i = phi i32 [ %i.wx, %bb.ch ], [ %i.wx, %.preheader.i394 ], [ %.2233.ph.i, %.critedge6.loopexit.i ] ; 2 uses
  %.3230.i = phi i32 [ %.1228.i, %bb.ch ], [ %.1228.i, %.preheader.i394 ], [ %.3230.ph.i, %.critedge6.loopexit.i ] ; 3 uses
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv339.i389
  store i32 %.3230.i, ptr %i.xm, align 4, !tbaa !10
  %i.xn = icmp eq i32 %.3230.i, %spec.select348   ; 2 uses
  %i.xo = icmp eq i32 %.2233.i, %i.tt             ; 2 uses
  %or.cond255.i = select i1 %i.xn, i1 %i.xo, i1 false
  br i1 %or.cond255.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.critedge6.i
  %i.xp = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef %i.un) #18
  call void @free(ptr noundef nonnull %i.up) #18
  call void @free(ptr noundef %i.ux) #18
  call void @free(ptr noundef %i.uy) #18
  %i.xq = add nsw i32 %i.tt, %i.tn
  br label %extend_fw.exit

bb.ck:                                            ; preds = %.critedge6.i
  br i1 %i.xn, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.xr = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef nonnull %i.up) #18
  call void @free(ptr noundef %i.un) #18
  call void @free(ptr noundef %i.ux) #18
  call void @free(ptr noundef %i.uy) #18
  %i.xs = add nsw i32 %.2233.i, %i.tn
  br label %extend_fw.exit

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.xo, label %bb.cn, label %bb.bz

bb.cn:                                            ; preds = %bb.cm
  %i.xt = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef nonnull %i.up) #18
  call void @free(ptr noundef %i.un) #18
  call void @free(ptr noundef %i.ux) #18
  call void @free(ptr noundef %i.uy) #18
  %i.xu = add nsw i32 %i.tt, %i.tn
  br label %extend_fw.exit

._crit_edge290.i:                                 ; preds = %bb.bz
  %i.xv = load i32, ptr %i.uu, align 4, !tbaa !10
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %indvars.iv364.i ; 8 uses
  store i32 %i.xv, ptr %i.xw, align 4, !tbaa !10
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv364.i ; 4 uses
  store i32 %spec.select348, ptr %i.xx, align 4, !tbaa !10
  %.pre378.i = load i32, ptr %i.xw, align 4, !tbaa !10 ; 2 uses
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv337.i
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !10 ; 2 uses
  %i.ya = icmp sgt i32 %i.xz, %.pre378.i
  br i1 %i.ya, label %bb.co, label %._crit_edge290.i.new

bb.co:                                            ; preds = %._crit_edge290.i
  store i32 %i.xz, ptr %i.xw, align 4, !tbaa !10
  %i.yb = trunc nsw i64 %indvars.iv337.i to i32
  store i32 %i.yb, ptr %i.xx, align 4, !tbaa !10
  %.pre377.i.prol = load i32, ptr %i.xw, align 4, !tbaa !10
  br label %._crit_edge290.i.new

._crit_edge290.i.new:                             ; preds = %bb.co, %._crit_edge290.i
  %i.yc = phi i32 [ %.pre378.i, %._crit_edge290.i ], [ %.pre377.i.prol, %bb.co ]
  br label %.lr.ph294.i

.lr.ph294.i:                                      ; preds = %bb.cr, %._crit_edge290.i.new
  %i.yd = phi i32 [ %i.yc, %._crit_edge290.i.new ], [ %i.yn, %bb.cr ] ; 2 uses
  %indvars.iv348.i = phi i64 [ %indvars.iv337.in.i, %._crit_edge290.i.new ], [ %indvars.iv.next349.i.1, %bb.cr ] ; 4 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv348.i
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !10 ; 2 uses
  %i.yg = icmp sgt i32 %i.yf, %i.yd
  br i1 %i.yg, label %bb.cp, label %.lr.ph294.i.1

bb.cp:                                            ; preds = %.lr.ph294.i
  store i32 %i.yf, ptr %i.xw, align 4, !tbaa !10
  %i.yh = trunc nsw i64 %indvars.iv348.i to i32
  store i32 %i.yh, ptr %i.xx, align 4, !tbaa !10
  %.pre377.i = load i32, ptr %i.xw, align 4, !tbaa !10
  br label %.lr.ph294.i.1

.lr.ph294.i.1:                                    ; preds = %bb.cp, %.lr.ph294.i
  %i.yi = phi i32 [ %i.yd, %.lr.ph294.i ], [ %.pre377.i, %bb.cp ] ; 2 uses
  %indvars.iv.next349.i = add nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next349.i
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !10 ; 2 uses
  %i.yl = icmp sgt i32 %i.yk, %i.yi
  br i1 %i.yl, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph294.i.1
  store i32 %i.yk, ptr %i.xw, align 4, !tbaa !10
  %i.ym = trunc nsw i64 %indvars.iv.next349.i to i32
  store i32 %i.ym, ptr %i.xx, align 4, !tbaa !10
  %.pre377.i.1 = load i32, ptr %i.xw, align 4, !tbaa !10
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph294.i.1
  %i.yn = phi i32 [ %i.yi, %.lr.ph294.i.1 ], [ %.pre377.i.1, %bb.cq ]
  %indvars.iv.next349.i.1 = add nsw i64 %indvars.iv348.i, 2 ; 2 uses
  %exitcond353.not.i.1 = icmp eq i64 %indvars.iv.next349.i.1, %indvars.iv362.i
  br i1 %exitcond353.not.i.1, label %.lr.ph297.i391.preheader, label %.lr.ph294.i, !llvm.loop !92

.lr.ph297.i391.preheader:                         ; preds = %bb.cr
  %min.iters.check1064 = icmp samesign ult i64 %indvars.iv366.i, 3
  %or.cond1113 = select i1 %min.iters.check1064, i1 true, i1 %diff.check1062
  br i1 %or.cond1113, label %.lr.ph297.i391.preheader1121, label %vector.ph1065

vector.ph1065:                                    ; preds = %.lr.ph297.i391.preheader
  %n.vec1066 = and i64 %i.vh, -8                  ; 2 uses
  %i.yo = add i64 %indvars.iv337.i, %n.vec1066
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1071, %vector.body1067 ] ; 2 uses
  %i.yp = add i64 %indvars.iv337.i, %index1068    ; 2 uses
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.yp ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %wide.load1069 = load <4 x i32>, ptr %i.yq, align 4, !tbaa !10
  %wide.load1070 = load <4 x i32>, ptr %i.yr, align 4, !tbaa !10
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.yp ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store <4 x i32> %wide.load1069, ptr %i.ys, align 4, !tbaa !10
  store <4 x i32> %wide.load1070, ptr %i.yt, align 4, !tbaa !10
  %index.next1071 = add nuw i64 %index1068, 8     ; 2 uses
  %i.yu = icmp eq i64 %index.next1071, %n.vec1066
  br i1 %i.yu, label %.lr.ph297.i391.preheader1121, label %vector.body1067, !llvm.loop !93

.lr.ph297.i391.preheader1121:                     ; preds = %vector.body1067, %.lr.ph297.i391.preheader
  %indvars.iv356.i.ph = phi i64 [ %indvars.iv337.i, %.lr.ph297.i391.preheader ], [ %i.yo, %vector.body1067 ] ; 4 uses
  %i.yv = sub i64 %indvars.iv362.i, %indvars.iv356.i.ph
  %i.yw = sub i64 %13, %indvars.iv356.i.ph
  %xtraiter1198 = and i64 %i.yv, 3                ; 2 uses
  %lcmp.mod1199.not = icmp eq i64 %xtraiter1198, 0
  br i1 %lcmp.mod1199.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol

.lr.ph297.i391.prol:                              ; preds = %.lr.ph297.i391.preheader1121, %.lr.ph297.i391.prol
  %indvars.iv356.i.prol = phi i64 [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ], [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1121 ] ; 3 uses
  %prol.iter1200 = phi i64 [ %prol.iter1200.next, %.lr.ph297.i391.prol ], [ 0, %.lr.ph297.i391.preheader1121 ]
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv356.i.prol
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !10
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv356.i.prol
  store i32 %i.yy, ptr %i.yz, align 4, !tbaa !10
  %indvars.iv.next357.i.prol = add nsw i64 %indvars.iv356.i.prol, 1 ; 2 uses
  %prol.iter1200.next = add i64 %prol.iter1200, 1 ; 2 uses
  %prol.iter1200.cmp.not = icmp eq i64 %prol.iter1200.next, %xtraiter1198
  br i1 %prol.iter1200.cmp.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol, !llvm.loop !94

.lr.ph297.i391.prol.loopexit:                     ; preds = %.lr.ph297.i391.prol, %.lr.ph297.i391.preheader1121
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1121 ], [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ]
  %i.za = icmp ult i64 %i.yw, 3
  br i1 %i.za, label %._crit_edge298.i.loopexit, label %.lr.ph297.i391

.lr.ph297.i391:                                   ; preds = %.lr.ph297.i391.prol.loopexit, %.lr.ph297.i391
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i.3, %.lr.ph297.i391 ], [ %indvars.iv356.i.unr, %.lr.ph297.i391.prol.loopexit ] ; 6 uses
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv356.i
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !10
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv356.i
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !10
  %indvars.iv.next357.i = add nsw i64 %indvars.iv356.i, 1 ; 2 uses
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next357.i
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !10
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv.next357.i
  store i32 %i.zf, ptr %i.zg, align 4, !tbaa !10
  %indvars.iv.next357.i.1 = add nsw i64 %indvars.iv356.i, 2 ; 2 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next357.i.1
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !10
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv.next357.i.1
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !10
  %indvars.iv.next357.i.2 = add nsw i64 %indvars.iv356.i, 3 ; 2 uses
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.up, i64 %indvars.iv.next357.i.2
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !10
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.un, i64 %indvars.iv.next357.i.2
  store i32 %i.zl, ptr %i.zm, align 4, !tbaa !10
  %indvars.iv.next357.i.3 = add nsw i64 %indvars.iv356.i, 4 ; 2 uses
  %exitcond361.not.i.3 = icmp eq i64 %indvars.iv.next357.i.3, %indvars.iv362.i
  br i1 %exitcond361.not.i.3, label %._crit_edge298.i.loopexit, label %.lr.ph297.i391, !llvm.loop !95

._crit_edge298.i.loopexit:                        ; preds = %.lr.ph297.i391, %.lr.ph297.i391.prol.loopexit
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1
  %indvars.iv.next328.i = add nsw i32 %indvars.iv327.i, -1
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1 ; 2 uses
  %exitcond375.i = icmp eq i64 %indvars.iv.next367.i, %wide.trip.count374.i
  br i1 %exitcond375.i, label %.critedge2.i, label %bb.bq, !llvm.loop !96

.critedge2.split.loop.exit404.i:                  ; preds = %bb.bu
  %i.zn = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i

.critedge2.split.loop.exit406.i:                  ; preds = %good_ratio.exit258.i
  %i.zo = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %._crit_edge298.i.loopexit, %.critedge2.split.loop.exit406.i, %.critedge2.split.loop.exit404.i
  %.lcssa.i392 = phi i32 [ %i.zn, %.critedge2.split.loop.exit404.i ], [ %i.zo, %.critedge2.split.loop.exit406.i ], [ %i.ve, %._crit_edge298.i.loopexit ] ; 2 uses
  %smin.i393 = call i32 @llvm.smin.i32(i32 %.lcssa.i392, i32 1)
  %i.zp = add i32 %smin.i393, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.critedge2.i
  %.2226303.i = phi i32 [ %.lcssa.i392, %.critedge2.i ], [ %i.zx, %bb.ct ] ; 4 uses
  %i.zq = zext nneg i32 %.2226303.i to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.zq ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !10
  %i.zt = getelementptr i8, ptr %i.zr, i64 -4
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !10
  %i.zv = sub nsw i32 %i.zs, %i.zu
  %i.zw = icmp slt i32 %i.zv, 3
  br i1 %i.zw, label %bb.ct, label %.critedge8.i

bb.ct:                                            ; preds = %bb.cs
  %i.zx = add nsw i32 %.2226303.i, -1
  %i.zy = icmp sgt i32 %.2226303.i, 1
  br i1 %i.zy, label %bb.cs, label %.critedge8.i, !llvm.loop !97

.critedge8.i:                                     ; preds = %bb.ct, %bb.cs
  %.2226.lcssa.i = phi i32 [ %i.zp, %bb.ct ], [ %.2226303.i, %bb.cs ] ; 2 uses
  %i.zz = sext i32 %.2226.lcssa.i to i64          ; 2 uses
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !10 ; 2 uses
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.zz
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !10
  %i.aae = sub i32 %i.tn, %spec.select348
  %i.aaf = add i32 %i.aae, %i.aab
  %i.aag = add i32 %i.aaf, %i.aad
  call void @free(ptr noundef nonnull %i.ux) #18
  call void @free(ptr noundef %i.uy) #18
  call void @free(ptr noundef %i.un) #18
  call void @free(ptr noundef %i.up) #18
  br label %extend_fw.exit

extend_fw.exit:                                   ; preds = %bb.bn, %bb.bo, %bb.cj, %bb.cl, %bb.cn, %.critedge8.i
  %spec.select348.pn = phi i32 [ %spec.select348, %bb.bn ], [ %i.tt, %bb.bo ], [ %i.aab, %.critedge8.i ], [ %spec.select348, %bb.cj ], [ %spec.select348, %bb.cl ], [ %.3230.i, %bb.cn ]
  %.0542 = phi i32 [ %i.ug, %bb.bn ], [ %i.ui, %bb.bo ], [ %i.aag, %.critedge8.i ], [ %i.xq, %bb.cj ], [ %i.xs, %bb.cl ], [ %i.xu, %bb.cn ]
  %.0234.i = phi i32 [ 0, %bb.bn ], [ 0, %bb.bo ], [ %.2226.lcssa.i, %.critedge8.i ], [ %i.xp, %bb.cj ], [ %i.xr, %bb.cl ], [ %i.xt, %bb.cn ]
  %.0543 = add nsw i32 %spec.select348.pn, %i.tg  ; 2 uses
  %i.aah = load i32, ptr %i.tf, align 4, !tbaa !44
  %i.aai = sub nsw i32 %.0543, %i.aah
  %i.aaj = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !143
  %i.aak = mul nsw i32 %i.aai, %i.aaj
  %i.aal = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !144
  %i.aam = mul nsw i32 %i.aal, %.0234.i
  %i.aan = add nsw i32 %i.aam, %i.aak
  %i.aao = icmp sgt i32 %i.aan, -1
  br i1 %i.aao, label %bb.cu, label %.thread555

bb.cu:                                            ; preds = %extend_fw.exit
  store i32 %.0543, ptr %i.tf, align 4, !tbaa !44
  store i32 %.0542, ptr %i.tm, align 4, !tbaa !43
  br label %.thread555

.thread555:                                       ; preds = %extend_fw.exit, %bb.cu, %.critedge7.thread, %bb.az, %.thread548
  %i.aap = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.aaq = icmp ugt i32 %i.aap, 1
  br i1 %i.aaq, label %.lr.ph663, label %.loopexit599

.lr.ph663:                                        ; preds = %.thread555, %bb.fg
  %i.aar = phi i32 [ %i.ato, %bb.fg ], [ %i.aap, %.thread555 ] ; 2 uses
  %.0285662 = phi i32 [ %i.atp, %bb.fg ], [ 1, %.thread555 ] ; 6 uses
  %i.aas = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aat = add i32 %.0285662, -1                  ; 2 uses
  %i.aau = zext i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.aas, i64 %i.aau
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !29 ; 2 uses
  %i.aax = zext i32 %.0285662 to i64
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aas, i64 %i.aax
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !29 ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 4
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !31 ; 6 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaw, i64 12 ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !44 ; 9 uses
  %i.abe = xor i32 %i.abd, -1
  %i.abf = add i32 %i.abb, %i.abe                 ; 14 uses
  %i.abg = icmp sgt i32 %i.abf, 0
  br i1 %i.abg, label %bb.cv, label %bb.fg

bb.cv:                                            ; preds = %.lr.ph663
  %i.abh = load i32, ptr %i.aaz, align 4, !tbaa !32 ; 2 uses
  %i.abi = add i32 %i.abh, -1                     ; 4 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8 ; 3 uses
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !43 ; 10 uses
  %i.abl = icmp ugt i32 %i.abi, %i.abk
  br i1 %i.abl, label %bb.cw, label %bb.fg

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.abm = icmp samesign ult i32 %i.abf, 501
  %.pre760 = load i32, ptr %i.x, align 4, !tbaa !36 ; 3 uses
  %.pre763 = load ptr, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  br i1 %i.abm, label %bb.cx, label %.thread559

bb.cx:                                            ; preds = %bb.cw
  %i.abn = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.abo = zext i32 %i.abd to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.abo ; 4 uses
  %i.abq = zext i32 %i.abk to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %.pre763, i64 %i.abq ; 4 uses
  %i.abs = xor i32 %i.abk, -1
  %i.abt = add i32 %i.abh, %i.abs                 ; 8 uses
  %i.abu = icmp ugt i32 %i.abt, 999999
  br i1 %i.abu, label %greedy.exitthread-pre-split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.abv = sub nsw i32 %i.abt, %i.abf             ; 3 uses
  %i.abw = uitofp nneg i32 %i.abf to double       ; 2 uses
  %i.abx = call double @llvm.fmuladd.f64(double %i.abw, double 2.000000e-01, double 1.000000e+00)
  %i.aby = fptoui double %i.abx to i32
  %..i = call i32 @llvm.umax.i32(i32 %.pre760, i32 %i.aby) ; 22 uses
  %i.abz = icmp slt i32 %i.abv, 0
  br i1 %i.abz, label %bb.cz, label %.lr.ph.i408.preheader

bb.cz:                                            ; preds = %bb.cy
  %i.aca = uitofp i32 %.pre760 to double          ; 2 uses
  %i.acb = uitofp nneg i32 %i.abt to double       ; 2 uses
  %i.acc = fmul nnan double %i.acb, 1.200000e+00  ; 2 uses
  %i.acd = fcmp olt double %i.acc, %i.aca
  %.501.i = select i1 %i.acd, double %i.acc, double %i.aca
  %i.ace = fcmp ult double %.501.i, %i.abw
  br i1 %i.ace, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.acf = add nuw i32 %i.abk, 1
  %i.acg = add i32 %i.abd, 1
  %i.ach = add i32 %i.abb, -1
  %i.aci = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.acf, ptr %i.aci, align 4, !tbaa !32
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  store i32 %i.acg, ptr %i.acj, align 4, !tbaa !31
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store i32 %i.abi, ptr %i.ack, align 4, !tbaa !43
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 12
end_hunk_1
