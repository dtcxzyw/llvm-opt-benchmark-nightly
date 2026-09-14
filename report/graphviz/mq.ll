Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mq?download=true
inline.NumInlined: 25
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Multilevel_MQ_Clustering_init:bb.a
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph174.us.i
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.fh
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !28 ; 2 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = icmp eq i64 %indvars.iv240.i, %i.fl
  br i1 %i.fm, label %.prol.loopexit.unr-lcssa, label %bb.aa

bb.aa:                                            ; preds = %.prol.preheader
  %i.fn = sext i32 %i.fk to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !28
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !28
  %i.ft = sitofp i32 %i.fs to double
  %i.fu = fdiv double 1.000000e+00, %i.ft
  %i.fv = load double, ptr %i.fg, align 8, !tbaa !9
  %i.fw = fadd double %i.fv, %i.fu
  store double %i.fw, ptr %i.fg, align 8, !tbaa !9
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.aa, %.prol.preheader
  %indvars.iv.next236.i.prol = add nsw i64 %i.fh, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph174.us.i
  %indvars.iv235.i.unr = phi i64 [ %i.fh, %.lr.ph174.us.i ], [ %indvars.iv.next236.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.fx = add nsw i64 %wide.trip.count238.i, -1
  %i.fy = icmp eq i64 %i.fx, %i.fh
  br i1 %i.fy, label %.loopexit.us.i, label %.lr.ph174.us.i.new

.lr.ph174.us.i.new:                               ; preds = %.prol.loopexit, %bb.ae
  %indvars.iv235.i = phi i64 [ %indvars.iv.next236.i.1, %bb.ae ], [ %indvars.iv235.i.unr, %.prol.loopexit ] ; 3 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv235.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !28 ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = icmp eq i64 %indvars.iv240.i, %i.gb
  br i1 %i.gc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph174.us.i.new
  %i.gd = sext i32 %i.ga to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !28
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !28
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = fdiv double 1.000000e+00, %i.gj
  %i.gl = load double, ptr %i.fg, align 8, !tbaa !9
  %i.gm = fadd double %i.gl, %i.gk
  store double %i.gm, ptr %i.fg, align 8, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph174.us.i.new
  %i.gn = getelementptr [4 x i8], ptr %i.bb, i64 %indvars.iv235.i
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !28 ; 2 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp eq i64 %indvars.iv240.i, %i.gq
  br i1 %i.gr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gs = sext i32 %i.gp to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !28
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !28
  %i.gy = sitofp i32 %i.gx to double
  %i.gz = fdiv double 1.000000e+00, %i.gy
  %i.ha = load double, ptr %i.fg, align 8, !tbaa !9
  %i.hb = fadd double %i.ha, %i.gz
  store double %i.hb, ptr %i.fg, align 8, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next236.i.1 = add nsw i64 %indvars.iv235.i, 2 ; 2 uses
  %exitcond239.not.i.1 = icmp eq i64 %indvars.iv.next236.i.1, %wide.trip.count238.i
  br i1 %exitcond239.not.i.1, label %.loopexit.us.i, label %.lr.ph174.us.i.new, !llvm.loop !58

.loopexit.us.i:                                   ; preds = %.prol.loopexit, %bb.ae, %.lr.ph178.split.us.i
  %exitcond244.not.i = icmp eq i64 %indvars.iv.next241.i, %wide.trip.count.i
  br i1 %exitcond244.not.i, label %._crit_edge179.i, label %.lr.ph178.split.us.i, !llvm.loop !59

.loopexit.i:                                      ; preds = %bb.ah, %.lr.ph178.split.i
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next231.i, %wide.trip.count.i
  br i1 %exitcond234.not.i, label %._crit_edge179.i, label %.lr.ph178.split.i, !llvm.loop !59

.lr.ph178.split.i:                                ; preds = %.lr.ph178.i, %.loopexit.i
  %i.hc = phi i32 [ %i.he, %.loopexit.i ], [ %.pre247.i, %.lr.ph178.i ] ; 2 uses
  %indvars.iv230.i = phi i64 [ %indvars.iv.next231.i, %.loopexit.i ], [ 0, %.lr.ph178.i ] ; 3 uses
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 1 ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next231.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !28 ; 3 uses
  %i.hf = icmp slt i32 %i.hc, %i.he
  br i1 %i.hf, label %.lr.ph174.i, label %.loopexit.i

.lr.ph174.i:                                      ; preds = %.lr.ph178.split.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv230.i ; 2 uses
  %i.hh = sext i32 %i.hc to i64
  %wide.trip.count228.i = sext i32 %i.he to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph174.i
  %indvars.iv225.i = phi i64 [ %i.hh, %.lr.ph174.i ], [ %indvars.iv.next226.i, %bb.ah ] ; 3 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv225.i
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !28 ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp eq i64 %indvars.iv230.i, %i.hk
  br i1 %i.hl, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hm = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %indvars.iv225.i
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !9
  %i.ho = sext i32 %i.hj to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !28
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !28
  %i.hu = sitofp i32 %i.ht to double
  %i.hv = fdiv double %i.hn, %i.hu
  %i.hw = load double, ptr %i.hg, align 8, !tbaa !9
  %i.hx = fadd double %i.hw, %i.hv
  store double %i.hx, ptr %i.hg, align 8, !tbaa !9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next226.i = add nsw i64 %indvars.iv225.i, 1 ; 2 uses
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next226.i, %wide.trip.count228.i
  br i1 %exitcond229.not.i, label %.loopexit.i, label %bb.af, !llvm.loop !58

._crit_edge179.i:                                 ; preds = %.loopexit.i, %.loopexit.us.i
  tail call void @free(ptr noundef %i.bl) #15
  %i.hy = icmp samesign ugt i32 %spec.select.i.lcssa, 1
  br i1 %i.hy, label %bb.ai, label %get_mq.exit

bb.ai:                                            ; preds = %._crit_edge179.i
  %i.hz = add nsw i32 %spec.select.i.lcssa, -1
  %i.ia = mul nuw nsw i32 %i.hz, %spec.select.i.lcssa
  %i.ib = uitofp nneg i32 %i.ia to double
  %i.ic = uitofp nneg i32 %spec.select.i.lcssa to double
  %i.id = insertelement <2 x double> poison, double %.0101.lcssa.i, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %.0102.lcssa.i, i64 1
  %i.if = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.ic, i64 1
  %i.ih = fdiv <2 x double> %i.ie, %i.ig          ; 2 uses
  %shift = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.ih
  %i.ii = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %get_mq.exit

get_mq.exit:                                      ; preds = %._crit_edge179.i.thread, %._crit_edge179.i, %bb.ai
  %.0101.lcssa280298.i70 = phi double [ %.0101.lcssa.i, %bb.ai ], [ %.0101.lcssa.i, %._crit_edge179.i ], [ 0.000000e+00, %._crit_edge179.i.thread ]
  %.0102.lcssa278300.i69 = phi double [ %.0102.lcssa.i, %bb.ai ], [ %.0102.lcssa.i, %._crit_edge179.i ], [ 0.000000e+00, %._crit_edge179.i.thread ]
  %.0110.lcssa272276302.i68 = phi i32 [ %spec.select.i.lcssa, %bb.ai ], [ %spec.select.i.lcssa, %._crit_edge179.i ], [ 0, %._crit_edge179.i.thread ] ; 2 uses
  %i.ij = phi ptr [ %i.ex, %bb.ai ], [ %i.ex, %._crit_edge179.i ], [ %i.bq, %._crit_edge179.i.thread ]
  %.0112.in.i = phi double [ %i.ii, %bb.ai ], [ %.0102.lcssa.i, %._crit_edge179.i ], [ 0.000000e+00, %._crit_edge179.i.thread ]
  %.0112.i = fmul double %.0112.in.i, 2.000000e+00 ; 2 uses
  %i.ik = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.il = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ik, ptr noundef nonnull @.str, i32 noundef %.0110.lcssa272276302.i68, double noundef %.0112.i) #16 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double %.0112.i, ptr %i.im, align 8, !tbaa !31
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double %.0102.lcssa278300.i69, ptr %i.in, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store double %.0101.lcssa280298.i70, ptr %i.io, align 8, !tbaa !62
  store ptr %i.ij, ptr %i.aw, align 8, !tbaa !37
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %.0110.lcssa272276302.i68, ptr %i.ip, align 8, !tbaa !63
  br label %bb.aj

bb.aj:                                            ; preds = %gv_calloc.exit.thread, %gv_calloc.exit, %get_mq.exit
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @Multilevel_MQ_Clustering_establish(ptr noundef returned %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24   ; 15 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 5 uses
  %i.s = sext i32 %i.g to i64                     ; 14 uses
  %.not.i.not = icmp eq i32 %i.g, 0               ; 4 uses
  br i1 %.not.i.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.g, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 48) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 48) #18 ; 7 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.y = mul nuw nsw i64 %i.s, 48
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.9, i64 noundef %i.y) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !9
  %i.ae = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 8) #18 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %gv_calloc.exit534

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ah = shl nuw nsw i64 %i.s, 3
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.9, i64 noundef %i.ah) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit534:                                ; preds = %bb.f
  %i.aj = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 8) #18 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.h, label %gv_calloc.exit539

bb.h:                                             ; preds = %gv_calloc.exit534
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.am = shl nuw nsw i64 %i.s, 3
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.9, i64 noundef %i.am) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit539:                                ; preds = %gv_calloc.exit534
  %i.ao = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 8) #18 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %gv_calloc.exit544

bb.i:                                             ; preds = %gv_calloc.exit539
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ar = shl nuw nsw i64 %i.s, 3
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.9, i64 noundef %i.ar) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit544:                                ; preds = %gv_calloc.exit539
  %i.at = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 4) #18 ; 7 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.j, label %gv_calloc.exit549

bb.j:                                             ; preds = %gv_calloc.exit544
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.aw = shl nuw nsw i64 %i.s, 2
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.9, i64 noundef %i.aw) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit549:                                ; preds = %gv_calloc.exit544
  %i.ay = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.s, i64 noundef 8) #18 ; 7 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.k, label %.lr.ph629.preheader

bb.k:                                             ; preds = %gv_calloc.exit549
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.bb = shl nuw nsw i64 %i.s, 3
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.9, i64 noundef %i.bb) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

._crit_edge:                                      ; preds = %bb.a
  %i.bd = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 48) #18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load <2 x double>, ptr %i.bg, align 8, !tbaa !9
  %i.bi = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  %i.bj = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  %i.bk = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  %i.bl = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #18
  %i.bm = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  br label %._crit_edge630

.lr.ph629.preheader:                              ; preds = %gv_calloc.exit549
  %i.bn = zext nneg i32 %i.g to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 -1, i64 %i.bo, i1 false), !tbaa !28
  %i.bp = zext nneg i32 %i.g to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 -1, i64 %i.bq, i1 false), !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41 ; 5 uses
  %invariant.smax730 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count679 = zext nneg i32 %i.g to i64 ; 2 uses
  br label %.lr.ph629

.lr.ph629:                                        ; preds = %.lr.ph629.preheader, %.loopexit562
  %indvars.iv676 = phi i64 [ 0, %.lr.ph629.preheader ], [ %indvars.iv.next677, %.loopexit562 ] ; 19 uses
  %.0446627 = phi double [ 0.000000e+00, %.lr.ph629.preheader ], [ %.2, %.loopexit562 ] ; 3 uses
  %.0449626 = phi double [ 0.000000e+00, %.lr.ph629.preheader ], [ %.3, %.loopexit562 ] ; 3 uses
  %.0452625 = phi double [ 0.000000e+00, %.lr.ph629.preheader ], [ %.3455, %.loopexit562 ] ; 3 uses
  %.0472622 = phi double [ 0.000000e+00, %.lr.ph629.preheader ], [ %.3475, %.loopexit562 ] ; 3 uses
  %.0484619 = phi double [ 0.000000e+00, %.lr.ph629.preheader ], [ %.3487, %.loopexit562 ] ; 3 uses
  %.0495616 = phi double [ %i.ab, %.lr.ph629.preheader ], [ %.2497, %.loopexit562 ] ; 4 uses
  %.0498615 = phi i32 [ %i.g, %.lr.ph629.preheader ], [ %.2500, %.loopexit562 ] ; 6 uses
  %.0501614 = phi i32 [ 0, %.lr.ph629.preheader ], [ %.3504, %.loopexit562 ] ; 11 uses
  %i.bt = phi <2 x double> [ %i.ad, %.lr.ph629.preheader ], [ %i.ly, %.loopexit562 ] ; 4 uses
  %i.bu = phi <2 x double> [ zeroinitializer, %.lr.ph629.preheader ], [ %i.lz, %.loopexit562 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv676 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28
  %.not520 = icmp eq i32 %i.bw, -1
  br i1 %.not520, label %bb.l, label %.loopexit562

bb.l:                                             ; preds = %.lr.ph629
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv676 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !28 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !28 ; 2 uses
  %i.cb = icmp slt i32 %i.by, %i.ca
  br i1 %i.cb, label %.lr.ph571.preheader, label %._crit_edge572.thread

._crit_edge572.thread:                            ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv676
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv676 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv676
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !9
  br label %._crit_edge584

.lr.ph571.preheader:                              ; preds = %bb.l
  %i.ch = sext i32 %i.by to i64
  %wide.trip.count = sext i32 %i.ca to i64
  %i.ci = trunc nuw nsw i64 %indvars.iv676 to i32
  br label %.lr.ph571

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %bb.q
  %indvars.iv = phi i64 [ %i.ch, %.lr.ph571.preheader ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !28 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp eq i64 %indvars.iv676, %i.cl
  br i1 %i.cm, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph571
  %i.cn = sext i32 %i.ck to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !28 ; 2 uses
  %.not524 = icmp eq i32 %i.cp, -1
  br i1 %.not524, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !28
  %i.ct = zext i32 %i.cs to i64
  %.not525 = icmp eq i64 %indvars.iv676, %i.ct
  br i1 %.not525, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.ci, ptr %i.cr, align 4, !tbaa !28
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !9
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cq
  store double %i.cv, ptr %i.cw, align 8, !tbaa !9
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !9
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cq ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !9
  %i.db = fadd double %i.cy, %i.da
  store double %i.db, ptr %i.cz, align 8, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %.lr.ph571
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge572, label %.lr.ph571, !llvm.loop !64

._crit_edge572:                                   ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv676 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !9 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv676 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !9 ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv676
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !9 ; 3 uses
  %i.di = fdiv double %i.dh, %i.df
  %i.dj = extractelement <2 x double> %i.bt, i64 1
  %i.dk = fsub double %i.dj, %i.di
  %i.dl = icmp sgt i32 %.0498615, 2
  %i.dm = add nsw i32 %.0498615, -1               ; 3 uses
  %i.dn = sitofp i32 %i.dm to double
  %i.do = uitofp nneg i32 %i.dm to double
  %i.dp = add nsw i32 %.0498615, -2
  %i.dq = mul nuw nsw i32 %i.dm, %i.dp
  %i.dr = uitofp nneg i32 %i.dq to double
  %i.ds = sext i32 %i.by to i64
  %i.dt = trunc nuw nsw i64 %indvars.iv676 to i32
  %i.du = extractelement <2 x double> %i.bt, i64 0
  %i.dv = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.dr, i64 1
  %i.dx = insertelement <2 x double> poison, double %i.dk, i64 1
  %i.dy = insertelement <2 x double> poison, double %i.dh, i64 1
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge572, %bb.ad
  %indvars.iv658 = phi i64 [ %i.ds, %._crit_edge572 ], [ %indvars.iv.next659, %bb.ad ] ; 4 uses
  %.0447581 = phi double [ 0.000000e+00, %._crit_edge572 ], [ %.1448, %bb.ad ] ; 4 uses
  %.1450580 = phi double [ %.0449626, %._crit_edge572 ], [ %.2451, %bb.ad ] ; 3 uses
  %.1453579 = phi double [ %.0452625, %._crit_edge572 ], [ %.2454, %bb.ad ] ; 3 uses
  %.0460578 = phi i32 [ -1, %._crit_edge572 ], [ %.1461, %bb.ad ] ; 3 uses
  %.1473576 = phi double [ %.0472622, %._crit_edge572 ], [ %.2474, %bb.ad ] ; 3 uses
  %.1485573 = phi double [ %.0484619, %._crit_edge572 ], [ %.2486, %bb.ad ] ; 3 uses
  %i.dz = phi <2 x double> [ %i.bu, %._crit_edge572 ], [ %i.gf, %bb.ad ] ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv658
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28 ; 4 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp eq i64 %indvars.iv676, %i.ec
  br i1 %i.ed, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = sext i32 %i.eb to i64                   ; 4 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !28 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv658
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !9
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ee
  %i.el = load double, ptr %i.ek, align 8, !tbaa !9
  %i.em = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ee
  %i.en = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ee
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.eo = sext i32 %i.eg to i64                   ; 4 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !9 ; 2 uses
  %i.er = fcmp olt double %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.eo
  %i.et = load double, ptr %i.es, align 8, !tbaa !9
  store double -1.000000e+00, ptr %i.ep, align 8, !tbaa !9
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.eo
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.eo
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0459.in = phi ptr [ %i.em, %bb.t ], [ %i.eu, %bb.v ]
  %.0458 = phi double [ %i.el, %bb.t ], [ %i.et, %bb.v ] ; 4 uses
  %.0457 = phi double [ %i.ej, %bb.t ], [ %i.eq, %bb.v ] ; 2 uses
  %.0456.in = phi ptr [ %i.en, %bb.t ], [ %i.ev, %bb.v ]
  %.0456 = load double, ptr %.0456.in, align 8, !tbaa !9 ; 2 uses
  %.0459 = load double, ptr %.0459.in, align 8, !tbaa !9 ; 2 uses
  %i.ew = tail call double @pow(double noundef %i.df, double noundef 2.000000e+00) #15
  %i.ex = fdiv double %i.dd, %i.ew
  %i.ey = fsub double %i.du, %i.ex
  %i.ez = tail call double @pow(double noundef %.0458, double noundef 2.000000e+00) #15
  %i.fa = fadd double %i.dd, %.0459
  %i.fb = fadd double %i.df, %.0458               ; 2 uses
  %i.fc = tail call double @pow(double noundef %i.fb, double noundef 2.000000e+00) #15
  %i.fd = insertelement <2 x double> poison, double %.0459, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %.0456, i64 1 ; 2 uses
  %i.ff = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %.0458, i64 1
  %i.fh = fdiv <2 x double> %i.fe, %i.fg
  %i.fi = insertelement <2 x double> %i.dx, double %i.ey, i64 0
  %i.fj = fsub <2 x double> %i.fi, %i.fh
  %i.fk = insertelement <2 x double> %i.dy, double %.0457, i64 0
  %i.fl = insertelement <2 x double> %i.fe, double %i.fa, i64 0
  %i.fm = fadd <2 x double> %i.fk, %i.fl
  %i.fn = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fb, i64 1
  %i.fp = fdiv <2 x double> %i.fm, %i.fo
  %i.fq = fadd <2 x double> %i.fj, %i.fp          ; 3 uses
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fr = fdiv <2 x double> %i.fq, %i.dw          ; 2 uses
  %shift = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.fr, %shift
  %i.fs = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ft = fmul double %i.fs, 2.000000e+00
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fu = extractelement <2 x double> %i.fq, i64 0
  %i.fv = fmul double %i.fu, 2.000000e+00
  %i.fw = fdiv double %i.fv, %i.dn
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0488 = phi double [ %i.ft, %bb.x ], [ %i.fw, %bb.y ] ; 3 uses
  %i.fx = fsub double %.0488, %.0495616           ; 3 uses
  %i.fy = load i8, ptr @Verbose, align 1, !tbaa !75
  %.not523 = icmp eq i8 %i.fy, 0
  br i1 %.not523, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ga = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.1, i32 noundef %i.dt, i32 noundef %i.eb, double noundef %.0495616, double noundef %.0488, double noundef %i.fx) #16 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gb = load i32, ptr %i.bx, align 4, !tbaa !28
  %i.gc = trunc nsw i64 %indvars.iv658 to i32
  %i.gd = icmp eq i32 %i.gb, %i.gc
  %i.ge = fcmp ogt double %i.fx, %.0447581
  %or.cond = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.u, %bb.r
  %.2486 = phi double [ %.1485573, %bb.r ], [ %.0488, %bb.ac ], [ %.1485573, %bb.ab ], [ %.1485573, %bb.u ] ; 2 uses
  %.2474 = phi double [ %.1473576, %bb.r ], [ %.0457, %bb.ac ], [ %.1473576, %bb.ab ], [ %.1473576, %bb.u ] ; 2 uses
  %.1461 = phi i32 [ %.0460578, %bb.r ], [ %i.eb, %bb.ac ], [ %.0460578, %bb.ab ], [ %.0460578, %bb.u ] ; 2 uses
  %.2454 = phi double [ %.1453579, %bb.r ], [ %.0456, %bb.ac ], [ %.1453579, %bb.ab ], [ %.1453579, %bb.u ] ; 2 uses
  %.2451 = phi double [ %.1450580, %bb.r ], [ %.0458, %bb.ac ], [ %.1450580, %bb.ab ], [ %.1450580, %bb.u ] ; 2 uses
  %.1448 = phi double [ %.0447581, %bb.r ], [ %i.fx, %bb.ac ], [ %.0447581, %bb.ab ], [ %.0447581, %bb.u ] ; 2 uses
  %i.gf = phi <2 x double> [ %i.dz, %bb.r ], [ %i.fq, %bb.ac ], [ %i.dz, %bb.ab ], [ %i.dz, %bb.u ] ; 2 uses
  %indvars.iv.next659 = add nsw i64 %indvars.iv658, 1 ; 2 uses
  %i.gg = load i32, ptr %i.bz, align 4, !tbaa !28
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next659, %i.gh
  br i1 %i.gi, label %bb.r, label %._crit_edge584, !llvm.loop !65

._crit_edge584:                                   ; preds = %bb.ad, %._crit_edge572.thread
  %i.gj = phi double [ %i.cg, %._crit_edge572.thread ], [ %i.dh, %bb.ad ] ; 2 uses
  %i.gk = phi double [ %i.ce, %._crit_edge572.thread ], [ %i.df, %bb.ad ] ; 2 uses
  %i.gl = phi ptr [ %i.cd, %._crit_edge572.thread ], [ %i.de, %bb.ad ] ; 3 uses
  %i.gm = phi ptr [ %i.cc, %._crit_edge572.thread ], [ %i.dc, %bb.ad ] ; 3 uses
  %.1485.lcssa = phi double [ %.0484619, %._crit_edge572.thread ], [ %.2486, %bb.ad ] ; 4 uses
  %.1473.lcssa = phi double [ %.0472622, %._crit_edge572.thread ], [ %.2474, %bb.ad ] ; 5 uses
  %.0460.lcssa = phi i32 [ -1, %._crit_edge572.thread ], [ %.1461, %bb.ad ] ; 3 uses
  %.1453.lcssa = phi double [ %.0452625, %._crit_edge572.thread ], [ %.2454, %bb.ad ] ; 5 uses
  %.1450.lcssa = phi double [ %.0449626, %._crit_edge572.thread ], [ %.2451, %bb.ad ] ; 5 uses
  %.0447.lcssa = phi double [ 0.000000e+00, %._crit_edge572.thread ], [ %.1448, %bb.ad ] ; 5 uses
  %i.gn = phi <2 x double> [ %i.bu, %._crit_edge572.thread ], [ %i.gf, %bb.ad ] ; 4 uses
  %i.go = fcmp ogt double %.0447.lcssa, 0.000000e+00
  %or.cond526 = icmp sgt i32 %.0501614, %invariant.smax730
  %or.cond651 = select i1 %i.go, i1 true, i1 %or.cond526
  br i1 %or.cond651, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %._crit_edge584
  %i.gp = fadd double %.0446627, %.0447.lcssa
  %i.gq = sext i32 %.0460.lcssa to i64            ; 3 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !28 ; 4 uses
  %i.gt = icmp eq i32 %i.gs, -1
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !26 ; 2 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv676 to i32 ; 4 uses
  br i1 %i.gt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str.2, double noundef %.0447.lcssa, i32 noundef %i.gv, i32 noundef %.0460.lcssa) #16 ; 0 uses
  %i.gx = sext i32 %.0501614 to i64               ; 5 uses
  %i.gy = getelementptr inbounds [48 x i8], ptr %i.v, i64 %i.gx ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40 ; 4 uses
  store i32 %.0460.lcssa, ptr %i.gz, align 8, !tbaa !77
  %i.ha = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.gy, i64 noundef 4) #15
  %i.hb = load i32, ptr %i.gz, align 8, !tbaa !77
  %i.hc = load ptr, ptr %i.gy, align 8, !tbaa !75
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !28
  store i32 %i.gv, ptr %i.gz, align 8, !tbaa !77
  %i.he = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.gy, i64 noundef 4) #15
  %i.hf = load i32, ptr %i.gz, align 8, !tbaa !77
  %i.hg = load ptr, ptr %i.gy, align 8, !tbaa !75
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.he
  store i32 %i.hf, ptr %i.hh, align 4, !tbaa !28
  %i.hi = fadd double %i.gj, %.1453.lcssa
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.gx
  store double %i.hi, ptr %i.hj, align 8, !tbaa !9
  store i32 %.0501614, ptr %i.gr, align 4, !tbaa !28
  %i.hk = load double, ptr %i.gl, align 8, !tbaa !9
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gq
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !9
  %i.hn = fadd double %i.hk, %i.hm
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.gx
  store double %i.hn, ptr %i.ho, align 8, !tbaa !9
  %i.hp = load double, ptr %i.gm, align 8, !tbaa !9
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.gq
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !9
  %i.hs = fadd double %i.hp, %i.hr
  %i.ht = fadd double %.1473.lcssa, %i.hs
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.gx
  store double %i.ht, ptr %i.hu, align 8, !tbaa !9
  %i.hv = add nsw i32 %.0501614, 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str.3, double noundef %.0447.lcssa, i32 noundef %i.gv, i32 noundef %i.gs) #16 ; 0 uses
  %i.hx = sext i32 %i.gs to i64                   ; 5 uses
  %i.hy = getelementptr inbounds [48 x i8], ptr %i.v, i64 %i.hx ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40 ; 2 uses
  store i32 %i.gv, ptr %i.hz, align 8, !tbaa !77
  %i.ia = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.hy, i64 noundef 4) #15
  %i.ib = load i32, ptr %i.hz, align 8, !tbaa !77
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !75
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ia
  store i32 %i.ib, ptr %i.id, align 4, !tbaa !28
  %i.ie = fadd double %i.gj, %.1453.lcssa
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.hx
  store double %i.ie, ptr %i.if, align 8, !tbaa !9
  %i.ig = load double, ptr %i.gl, align 8, !tbaa !9
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.hx ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !9
  %i.ij = fadd double %i.ig, %i.ii
  store double %i.ij, ptr %i.ih, align 8, !tbaa !9
  %i.ik = load double, ptr %i.gm, align 8, !tbaa !9
  %i.il = fadd double %.1473.lcssa, %i.ik
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.hx ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !9
  %i.io = fadd double %i.in, %i.il
  store double %i.io, ptr %i.im, align 8, !tbaa !9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pre.pre-phi = phi i64 [ %i.hx, %bb.ag ], [ %i.gx, %bb.af ]
  %.sink = phi i32 [ %i.gs, %bb.ag ], [ %.0501614, %bb.af ] ; 2 uses
  %.1502 = phi i32 [ %.0501614, %bb.ag ], [ %i.hv, %bb.af ]
  store i32 %.sink, ptr %i.bv, align 4, !tbaa !28
  %i.ip = add nsw i32 %.0498615, -1
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge584
  %i.iq = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ir = trunc nuw nsw i64 %indvars.iv676 to i32 ; 2 uses
  %i.is = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.4, double noundef %.0447.lcssa, i32 noundef %i.ir) #16 ; 0 uses
  %i.it = sext i32 %.0501614 to i64               ; 4 uses
  %i.iu = getelementptr inbounds [48 x i8], ptr %i.v, i64 %i.it ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 40 ; 2 uses
  store i32 %i.ir, ptr %i.iv, align 8, !tbaa !77
  %i.iw = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.iu, i64 noundef 4) #15
  %i.ix = load i32, ptr %i.iv, align 8, !tbaa !77
  %i.iy = load ptr, ptr %i.iu, align 8, !tbaa !75
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.iw
  store i32 %i.ix, ptr %i.iz, align 4, !tbaa !28
  store i32 %.0501614, ptr %i.bv, align 4, !tbaa !28
  %i.ja = load double, ptr %i.gm, align 8, !tbaa !9
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.it
  store double %i.ja, ptr %i.jb, align 8, !tbaa !9
  %i.jc = load double, ptr %i.gl, align 8, !tbaa !9
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.it
  store double %i.jc, ptr %i.jd, align 8, !tbaa !9
  %i.je = add nsw i32 %.0501614, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre-phi = phi i64 [ %i.it, %bb.ai ], [ %.pre.pre-phi, %bb.ah ]
  %i.jf = phi i32 [ %.0501614, %bb.ai ], [ %.sink, %bb.ah ]
  %.2503 = phi i32 [ %i.je, %bb.ai ], [ %.1502, %bb.ah ] ; 3 uses
  %.1499 = phi i32 [ %.0498615, %bb.ai ], [ %i.ip, %bb.ah ] ; 3 uses
  %.1496 = phi double [ %.0495616, %bb.ai ], [ %.1485.lcssa, %bb.ah ] ; 3 uses
  %.1 = phi double [ %.0446627, %bb.ai ], [ %i.gp, %bb.ah ] ; 3 uses
  %i.jg = phi <2 x double> [ %i.bt, %bb.ai ], [ %i.gn, %bb.ah ] ; 3 uses
  %i.jh = getelementptr inbounds [48 x i8], ptr %i.v, i64 %.pre-phi ; 3 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 16     ; 2 uses
  %.val529 = load i64, ptr %i.ji, align 8, !tbaa !79 ; 2 uses
  %.not521592 = icmp eq i64 %.val529, 0
  br i1 %.not521592, label %.loopexit562, label %.lr.ph595

.lr.ph595:                                        ; preds = %bb.aj
  %i.jj = trunc i64 %indvars.iv676 to i32
  %i.jk = add i32 %i.g, %i.jj
  br label %bb.ak

._crit_edge596:                                   ; preds = %bb.ak
  %.val528.pre = load i64, ptr %i.ji, align 8, !tbaa !79 ; 2 uses
  %.not522609 = icmp eq i64 %.val528.pre, 0
  br i1 %.not522609, label %.loopexit562, label %.lr.ph613

.lr.ph613:                                        ; preds = %._crit_edge596
  %i.jl = add nuw nsw i64 %indvars.iv676, %wide.trip.count679 ; 2 uses
  %i.jm = fadd double %i.gk, %.1450.lcssa         ; 2 uses
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph595, %bb.ak
  %.0444.in593 = phi i64 [ %.val529, %.lr.ph595 ], [ %.0444, %bb.ak ]
  %.0444 = add i64 %.0444.in593, -1               ; 3 uses
  %i.jn = load ptr, ptr %i.jh, align 8, !tbaa !75
  %i.jo = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.jh, i64 noundef %.0444) #15
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !28
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.jr
  store i32 %i.jk, ptr %i.js, align 4, !tbaa !28
  %.not521 = icmp eq i64 %.0444, 0
  br i1 %.not521, label %._crit_edge596, label %bb.ak, !llvm.loop !66

.loopexit:                                        ; preds = %bb.at, %bb.ap, %bb.al
  %.1463.lcssa = phi i32 [ %.0462610, %bb.al ], [ %.2464.us, %bb.ap ], [ %.2464, %bb.at ]
  %.not522 = icmp eq i64 %.0443611, 0
  br i1 %.not522, label %.loopexit562, label %bb.al, !llvm.loop !67

bb.al:                                            ; preds = %.lr.ph613, %.loopexit
  %.0443611.in = phi i64 [ %.val528.pre, %.lr.ph613 ], [ %.0443611, %.loopexit ]
  %.0462610 = phi i32 [ %i.jf, %.lr.ph613 ], [ %.1463.lcssa, %.loopexit ] ; 4 uses
  %.0443611 = add i64 %.0443611.in, -1            ; 3 uses
  %i.jt = sext i32 %.0462610 to i64
  %i.ju = getelementptr inbounds [48 x i8], ptr %i.v, i64 %i.jt ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !75
  %i.jw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.ju, i64 noundef %.0443611) #15
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !28 ; 2 uses
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !28 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.ka, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !28 ; 2 uses
  %i.ke = icmp slt i32 %i.kb, %i.kd
  br i1 %i.ke, label %.lr.ph600, label %.loopexit

.lr.ph600:                                        ; preds = %bb.al
  %i.kf = zext i32 %i.jy to i64
  %i.kg = icmp eq i64 %indvars.iv676, %i.kf
  %.fr607 = freeze i1 %i.kg
  %i.kh = sext i32 %i.kb to i64                   ; 2 uses
  %wide.trip.count674 = sext i32 %i.kd to i64     ; 2 uses
  br i1 %.fr607, label %.lr.ph600.split.us, label %.lr.ph600.split.split

.lr.ph600.split.us:                               ; preds = %.lr.ph600, %bb.ap
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %bb.ap ], [ %i.kh, %.lr.ph600 ] ; 3 uses
  %.1463598.us = phi i32 [ %.2464.us, %bb.ap ], [ %.0462610, %.lr.ph600 ]
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv671
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !28
  %i.kk = sext i32 %i.kj to i64                   ; 3 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !28
  %2 = zext i32 %i.km to i64
  %i.kn = icmp eq i64 %i.jl, %2
  br i1 %i.kn, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.lr.ph600.split.us
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.kk
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !28 ; 3 uses
  %i.kq = icmp eq i32 %i.kp, -1
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv671
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !9 ; 2 uses
  %i.kt = fdiv double %i.ks, %i.jm
  %i.ku = fdiv double %i.ks, %i.gk
  %i.kv = fsub double %i.kt, %i.ku                ; 2 uses
  br i1 %i.kq, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kw = sext i32 %i.kp to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.kw ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !9
  %i.kz = fadd double %i.ky, %i.kv
  store double %i.kz, ptr %i.kx, align 8, !tbaa !9
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.la = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.kk ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !9
  %i.lc = fadd double %i.lb, %i.kv
  store double %i.lc, ptr %i.la, align 8, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.lr.ph600.split.us
  %.2464.us = phi i32 [ %.1463598.us, %.lr.ph600.split.us ], [ -1, %bb.ao ], [ %i.kp, %bb.an ] ; 2 uses
  %indvars.iv.next672 = add nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond675.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count674
  br i1 %exitcond675.not, label %.loopexit, label %.lr.ph600.split.us, !llvm.loop !68

.lr.ph600.split.split:                            ; preds = %.lr.ph600, %bb.at
  %indvars.iv661 = phi i64 [ %indvars.iv.next662, %bb.at ], [ %i.kh, %.lr.ph600 ] ; 3 uses
  %.1463598 = phi i32 [ %.2464, %bb.at ], [ %.0462610, %.lr.ph600 ]
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv661
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !28
  %i.lf = sext i32 %i.le to i64                   ; 3 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !28
  %3 = zext i32 %i.lh to i64
  %i.li = icmp eq i64 %i.jl, %3
  br i1 %i.li, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph600.split.split
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.lf
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !28 ; 3 uses
  %i.ll = icmp eq i32 %i.lk, -1
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv661
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !9 ; 2 uses
  %i.lo = fdiv double %i.ln, %i.jm
  %i.lp = fdiv double %i.ln, %.1450.lcssa
  %i.lq = fsub double %i.lo, %i.lp                ; 2 uses
  br i1 %i.ll, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.lf ; 2 uses
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !9
  %i.lt = fadd double %i.ls, %i.lq
  store double %i.lt, ptr %i.lr, align 8, !tbaa !9
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.lu = sext i32 %i.lk to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.lu ; 2 uses
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !9
  %i.lx = fadd double %i.lw, %i.lq
  store double %i.lx, ptr %i.lv, align 8, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %.lr.ph600.split.split
  %.2464 = phi i32 [ %.1463598, %.lr.ph600.split.split ], [ %i.lk, %bb.as ], [ -1, %bb.ar ] ; 2 uses
  %indvars.iv.next662 = add nsw i64 %indvars.iv661, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next662, %wide.trip.count674
  br i1 %exitcond665.not, label %.loopexit, label %.lr.ph600.split.split, !llvm.loop !68

.loopexit562:                                     ; preds = %.loopexit, %bb.aj, %._crit_edge596, %.lr.ph629
  %.3504 = phi i32 [ %.0501614, %.lr.ph629 ], [ %.2503, %._crit_edge596 ], [ %.2503, %bb.aj ], [ %.2503, %.loopexit ] ; 2 uses
  %.2500 = phi i32 [ %.0498615, %.lr.ph629 ], [ %.1499, %._crit_edge596 ], [ %.1499, %bb.aj ], [ %.1499, %.loopexit ]
  %.2497 = phi double [ %.0495616, %.lr.ph629 ], [ %.1496, %._crit_edge596 ], [ %.1496, %bb.aj ], [ %.1496, %.loopexit ] ; 2 uses
  %.3487 = phi double [ %.0484619, %.lr.ph629 ], [ %.1485.lcssa, %._crit_edge596 ], [ %.1485.lcssa, %bb.aj ], [ %.1485.lcssa, %.loopexit ]
  %.3475 = phi double [ %.0472622, %.lr.ph629 ], [ %.1473.lcssa, %._crit_edge596 ], [ %.1473.lcssa, %bb.aj ], [ %.1473.lcssa, %.loopexit ]
  %.3455 = phi double [ %.0452625, %.lr.ph629 ], [ %.1453.lcssa, %._crit_edge596 ], [ %.1453.lcssa, %bb.aj ], [ %.1453.lcssa, %.loopexit ]
  %.3 = phi double [ %.0449626, %.lr.ph629 ], [ %.1450.lcssa, %._crit_edge596 ], [ %.1450.lcssa, %bb.aj ], [ %.1450.lcssa, %.loopexit ]
  %.2 = phi double [ %.0446627, %.lr.ph629 ], [ %.1, %._crit_edge596 ], [ %.1, %bb.aj ], [ %.1, %.loopexit ] ; 2 uses
  %i.ly = phi <2 x double> [ %i.bt, %.lr.ph629 ], [ %i.jg, %._crit_edge596 ], [ %i.jg, %bb.aj ], [ %i.jg, %.loopexit ] ; 2 uses
  %i.lz = phi <2 x double> [ %i.bu, %.lr.ph629 ], [ %i.gn, %._crit_edge596 ], [ %i.gn, %bb.aj ], [ %i.gn, %.loopexit ]
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1 ; 2 uses
  %exitcond680.not = icmp eq i64 %indvars.iv.next677, %wide.trip.count679
  br i1 %exitcond680.not, label %._crit_edge630, label %.lr.ph629, !llvm.loop !69

._crit_edge630:                                   ; preds = %.loopexit562, %._crit_edge
  %i.ma = phi ptr [ %i.bm, %._crit_edge ], [ %i.ay, %.loopexit562 ] ; 4 uses
  %i.mb = phi ptr [ %i.bk, %._crit_edge ], [ %i.ao, %.loopexit562 ]
  %i.mc = phi ptr [ %i.bi, %._crit_edge ], [ %i.ae, %.loopexit562 ] ; 4 uses
  %i.md = phi ptr [ %i.bd, %._crit_edge ], [ %i.v, %.loopexit562 ] ; 2 uses
  %i.me = phi ptr [ %i.be, %._crit_edge ], [ %i.aa, %.loopexit562 ]
  %i.mf = phi ptr [ %i.bj, %._crit_edge ], [ %i.aj, %.loopexit562 ] ; 5 uses
  %i.mg = phi ptr [ %i.bl, %._crit_edge ], [ %i.at, %.loopexit562 ]
  %.0501.lcssa = phi i32 [ 0, %._crit_edge ], [ %.3504, %.loopexit562 ] ; 5 uses
  %.0495.lcssa = phi double [ %i.bf, %._crit_edge ], [ %.2497, %.loopexit562 ] ; 2 uses
  %.0446.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %.2, %.loopexit562 ] ; 4 uses
  %i.mh = phi <2 x double> [ %i.bh, %._crit_edge ], [ %i.ly, %.loopexit562 ] ; 2 uses
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.mj = load i8, ptr @Verbose, align 1, !tbaa !75
  %i.mk = zext i8 %i.mj to i32
  %i.ml = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.5, i32 noundef %i.mk) #16 ; 0 uses
  %i.mm = load i8, ptr @Verbose, align 1, !tbaa !75
  %.not = icmp eq i8 %i.mm, 0
  br i1 %.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge630
  %i.mn = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.mo = fadd double %.0495.lcssa, %.0446.lcssa
  %i.mp = extractelement <2 x double> %i.mh, i64 0
  %i.mq = extractelement <2 x double> %i.mh, i64 1
  %i.mr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mn, ptr noundef nonnull @.str.6, double noundef %.0495.lcssa, double noundef %i.mo, i32 noundef %i.h, i32 noundef %i.g, i32 noundef %.0501.lcssa, double noundef %.0446.lcssa, double noundef %i.mp, double noundef %i.mq) #16 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge630
  %i.ms = icmp sgt i32 %.0501.lcssa, 0
  br i1 %i.ms, label %bb.aw, label %bb.bk

bb.aw:                                            ; preds = %bb.av
  %i.mt = fcmp ogt double %.0446.lcssa, 0.000000e+00
  %i.mu = icmp slt i32 %.0501.lcssa, %i.g
  %or.cond527 = select i1 %i.mt, i1 true, i1 %i.mu
  br i1 %or.cond527, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !9
  %i.mv = tail call ptr @SparseMatrix_new(i32 noundef %.0501.lcssa, i32 noundef %i.g, i64 noundef 1, i32 noundef 1, i32 noundef 1) #15 ; 3 uses
  br i1 %.not.i.not, label %._crit_edge643, label %.lr.ph642.preheader

.lr.ph642.preheader:                              ; preds = %bb.ax
  %wide.trip.count689 = zext nneg i32 %i.g to i64
  br label %.lr.ph642

.lr.ph642:                                        ; preds = %.lr.ph642.preheader, %.lr.ph642
  %indvars.iv686 = phi i64 [ 0, %.lr.ph642.preheader ], [ %indvars.iv.next687, %.lr.ph642 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv686
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !28
  %i.my = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.mz = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.mv, i32 noundef %i.mx, i32 noundef %i.my, ptr noundef nonnull %i.a, i32 noundef 1) #15 ; 0 uses
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %exitcond690.not = icmp eq i64 %indvars.iv.next687, %wide.trip.count689
  br i1 %exitcond690.not, label %._crit_edge643, label %.lr.ph642, !llvm.loop !70

._crit_edge643:                                   ; preds = %.lr.ph642, %bb.ax
  %i.na = call ptr @SparseMatrix_from_coordinate_format(ptr noundef %i.mv) #15 ; 3 uses
  call void @SparseMatrix_delete(ptr noundef %i.mv) #15
  %i.nb = call ptr @SparseMatrix_transpose(ptr noundef %i.na) #15 ; 2 uses
  %i.nc = call ptr @SparseMatrix_multiply(ptr noundef %i.na, ptr noundef %i.e) #15 ; 3 uses
  call void @SparseMatrix_delete(ptr noundef %i.na) #15
  %.not517 = icmp eq ptr %i.nc, null
  br i1 %.not517, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge643
  call void @free(ptr noundef %i.mc) #15
  call void @free(ptr noundef %i.mf) #15
  call void @free(ptr noundef %i.ma) #15
  br label %bb.bj

bb.az:                                            ; preds = %._crit_edge643
  %i.nd = call ptr @SparseMatrix_multiply(ptr noundef nonnull %i.nc, ptr noundef %i.nb) #15 ; 2 uses
  call void @SparseMatrix_delete(ptr noundef nonnull %i.nc) #15
  %.not518 = icmp eq ptr %i.nd, null
  br i1 %.not518, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef %i.mc) #15
  call void @free(ptr noundef %i.mf) #15
  call void @free(ptr noundef %i.ma) #15
  br label %bb.bj

bb.bb:                                            ; preds = %bb.az
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.nb, ptr %i.ne, align 8, !tbaa !33
  %i.nf = add nsw i32 %i.h, 1
  %i.ng = call fastcc ptr @Multilevel_MQ_Clustering_init(ptr noundef nonnull %i.nd, i32 noundef %i.nf) ; 7 uses
  %i.nh = zext nneg i32 %.0501.lcssa to i64
  %i.ni = shl nsw i64 %i.s, 3                     ; 6 uses
  %i.nj = shl nuw nsw i64 %i.nh, 3                ; 10 uses
  %i.nk = call ptr @realloc(ptr noundef %i.mc, i64 noundef range(i64 8, 17179869177) %i.nj) #19 ; 3 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.nm = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.nn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nm, ptr noundef nonnull @.str.9, i64 noundef range(i64 8, 17179869177) %i.nj) #16 ; 0 uses
  call fastcc void @graphviz_exit() #17
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.no = icmp ugt i64 %i.nj, %i.ni               ; 2 uses
  br i1 %i.no, label %gv_recalloc.exit, label %gv_recalloc.exit.thread

gv_recalloc.exit:                                 ; preds = %bb.bd
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.ni
  %i.nq = sub nuw nsw i64 %i.nj, %i.ni            ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.np, i8 0, i64 %i.nq, i1 false)
  %i.nr = call ptr @realloc(ptr noundef %i.mf, i64 noundef range(i64 8, 17179869177) %i.nj) #19 ; 3 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %bb.be, label %bb.bf

gv_recalloc.exit.thread:                          ; preds = %bb.bd
  %i.nt = call ptr @realloc(ptr noundef %i.mf, i64 noundef range(i64 8, 17179869177) %i.nj) #19 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %bb.be, label %gv_recalloc.exit555

bb.be:                                            ; preds = %gv_recalloc.exit.thread, %gv_recalloc.exit
  %i.nv = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.nw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nv, ptr noundef nonnull @.str.9, i64 noundef range(i64 8, 17179869177) %i.nj) #16 ; 0 uses
  call fastcc void @graphviz_exit() #17
  unreachable

bb.bf:                                            ; preds = %gv_recalloc.exit
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ni
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.nx, i8 0, i64 %i.nq, i1 false)
  br label %gv_recalloc.exit555

gv_recalloc.exit555:                              ; preds = %gv_recalloc.exit.thread, %bb.bf
  %i.ny = phi ptr [ %i.nr, %bb.bf ], [ %i.nt, %gv_recalloc.exit.thread ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ng, i64 88
  store ptr %i.nk, ptr %i.nz, align 8, !tbaa !36
  %i.oa = load double, ptr %i.me, align 8, !tbaa !31
  %i.ob = fadd double %.0446.lcssa, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ng, i64 56
  store double %i.ob, ptr %i.oc, align 8, !tbaa !31
  %i.od = getelementptr inbounds nuw i8, ptr %i.ng, i64 104
  store ptr %i.ny, ptr %i.od, align 8, !tbaa !38
  %i.oe = call ptr @realloc(ptr noundef %i.ma, i64 noundef range(i64 8, 17179869177) %i.nj) #19 ; 3 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %gv_recalloc.exit555
  %i.og = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.oh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.og, ptr noundef nonnull @.str.9, i64 noundef range(i64 8, 17179869177) %i.nj) #16 ; 0 uses
  call fastcc void @graphviz_exit() #17
  unreachable

end_hunk_0
