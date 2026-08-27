Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/multispline?download=true
inline.NumInlined: 116
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mkRouter:bb.a
bb.q:                                             ; preds = %._crit_edge153
  %mul.ov.i.i = icmp slt i32 %i.fs, 0
  br i1 %mul.ov.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.fx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str, i64 noundef %i.fu, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fy = tail call noalias ptr @calloc(i64 noundef %i.fu, i64 noundef 4) #19 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.t, label %mkTriIndices.exit

bb.t:                                             ; preds = %bb.s
  %i.ga = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.gb = shl nuw nsw i64 %i.fu, 2
  %i.gc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.1, i64 noundef %i.gb) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

mkTriIndices.exit:                                ; preds = %.thread.i.i, %bb.s
  %i.gd = phi ptr [ %i.fv, %.thread.i.i ], [ %i.fy, %bb.s ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 24 ; 6 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !55
  %i.gg = shl nuw nsw i64 %i.fu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gd, ptr align 4 %i.gf, i64 %i.gg, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.gd, ptr %i.gh, align 8, !tbaa !17
  %i.gi = load ptr, ptr @Dtoset, align 8, !tbaa !56
  %i.gj = tail call ptr @dtopen(ptr noundef nonnull @itemdisc, ptr noundef %i.gi) #18 ; 7 uses
  %i.gk = load i32, ptr %i.fr, align 8, !tbaa !53 ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.i114, label %mapSegToTri.exit

.lr.ph.i114:                                      ; preds = %mkTriIndices.exit
  %i.gm = load ptr, ptr %i.ge, align 8, !tbaa !55
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i114
  %.025.i = phi ptr [ %i.gm, %.lr.ph.i114 ], [ %i.ha, %bb.u ] ; 4 uses
  %.01924.i = phi i32 [ 0, %.lr.ph.i114 ], [ %i.hi, %bb.u ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  %i.gx = load i32, ptr %.025.i, align 4, !tbaa !46 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.gz = load i32, ptr %i.gw, align 4, !tbaa !46 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.025.i, i64 12
  %i.hb = load i32, ptr %i.gy, align 4, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.gx, i32 %i.gz)
  %spec.select13.i.i = call i32 @llvm.smin.i32(i32 %i.gx, i32 %i.gz)
  store i32 %spec.select13.i.i, ptr %i.gn, align 8, !tbaa !46
  store i32 %spec.select.i.i, ptr %i.go, align 4, !tbaa !46
  store i32 %.01924.i, ptr %i.gp, align 8, !tbaa !57
  %i.hc = load ptr, ptr %i.gj, align 8, !tbaa !61
  %i.hd = call ptr %i.hc(ptr noundef nonnull %i.gj, ptr noundef nonnull %4, i32 noundef 1) #18, !inline_history !65 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %spec.select.i20.i = call i32 @llvm.smax.i32(i32 %i.gz, i32 %i.hb)
  %spec.select13.i21.i = call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.hb)
  store i32 %spec.select13.i21.i, ptr %i.gq, align 8, !tbaa !46
  store i32 %spec.select.i20.i, ptr %i.gr, align 4, !tbaa !46
  store i32 %.01924.i, ptr %i.gs, align 8, !tbaa !57
  %i.he = load ptr, ptr %i.gj, align 8, !tbaa !61
  %i.hf = call ptr %i.he(ptr noundef nonnull %i.gj, ptr noundef nonnull %3, i32 noundef 1) #18, !inline_history !65 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %spec.select.i22.i = call i32 @llvm.smax.i32(i32 %i.hb, i32 %i.gx)
  %spec.select13.i23.i = call i32 @llvm.smin.i32(i32 %i.hb, i32 %i.gx)
  store i32 %spec.select13.i23.i, ptr %i.gt, align 8, !tbaa !46
  store i32 %spec.select.i22.i, ptr %i.gu, align 4, !tbaa !46
  store i32 %.01924.i, ptr %i.gv, align 8, !tbaa !57
  %i.hg = load ptr, ptr %i.gj, align 8, !tbaa !61
  %i.hh = call ptr %i.hg(ptr noundef nonnull %i.gj, ptr noundef nonnull %2, i32 noundef 1) #18, !inline_history !65 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.hi = add nuw nsw i32 %.01924.i, 1            ; 2 uses
  %i.hj = load i32, ptr %i.fr, align 8, !tbaa !53 ; 2 uses
  %i.hk = icmp slt i32 %i.hi, %i.hj
  br i1 %i.hk, label %bb.u, label %mapSegToTri.exit, !llvm.loop !66

mapSegToTri.exit:                                 ; preds = %bb.u, %mkTriIndices.exit
  %i.hl = phi i32 [ %i.gk, %mkTriIndices.exit ], [ %i.hj, %bb.u ] ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.gj, ptr %i.hm, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.hl, ptr %i.hn, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !alias.scope !68
  %i.ho = add nsw i32 %i.hl, 2                    ; 2 uses
  %i.hp = sext i32 %i.ho to i64                   ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !19, !alias.scope !68
  %.not.i.i115 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i115, label %.preheader.i, label %bb.v

bb.v:                                             ; preds = %mapSegToTri.exit
  %mul.ov.i.i116 = icmp slt i32 %i.hl, -2
  br i1 %mul.ov.i.i116, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !28, !noalias !68
  %i.hs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str, i64 noundef %i.hp, i64 noundef 32) #20, !noalias !68 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ht = call noalias ptr @calloc(i64 noundef %i.hp, i64 noundef 32) #19, !noalias !68 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.y, label %gv_calloc.exit.i

bb.y:                                             ; preds = %bb.x
  %i.hv = load ptr, ptr @stderr, align 8, !tbaa !28, !noalias !68
  %i.hw = shl nuw nsw i64 %i.hp, 5
  %i.hx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hv, ptr noundef nonnull @.str.1, i64 noundef %i.hw) #20, !noalias !68 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.x
  store ptr %i.ht, ptr %5, align 8, !tbaa !20, !alias.scope !68
  %i.hy = icmp sgt i32 %i.hl, 0
  br i1 %i.hy, label %.lr.ph.i118, label %mkTriGraph.exit

.lr.ph.i118:                                      ; preds = %gv_calloc.exit.i
  %i.hz = load ptr, ptr %i.ge, align 8, !tbaa !55, !noalias !68
  %wide.trip.count.i = zext nneg i32 %i.hl to i64
  br label %bb.z

.preheader.i:                                     ; preds = %mapSegToTri.exit
  %i.ia = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #19, !noalias !68
  store ptr %i.ia, ptr %5, align 8, !tbaa !20, !alias.scope !68
  br label %mkTriGraph.exit

.lr.ph34.i:                                       ; preds = %bb.z
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph.i118
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i118 ], [ %indvars.iv.next.i, %bb.z ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %indvars.iv.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx.i ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !46, !noalias !68
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ik = load i32, ptr %i.if, align 4, !tbaa !46, !noalias !68
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.il
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !46, !noalias !68
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.io
  %i.iq = load <2 x double>, ptr %i.ii, align 8, !tbaa !38, !noalias !68
  %i.ir = load <2 x double>, ptr %i.im, align 8, !tbaa !38, !noalias !68
  %i.is = load <2 x double>, ptr %i.ip, align 8, !tbaa !38, !noalias !68
  %i.it = fadd <2 x double> %i.iq, %i.ir
  %i.iu = fadd <2 x double> %i.it, %i.is
  %i.iv = fdiv <2 x double> %i.iu, splat (double 3.000000e+00)
  store <2 x double> %i.iv, ptr %i.id, align 8, !tbaa !38, !noalias !68
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i119 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i119, label %.lr.ph34.i, label %bb.z, !llvm.loop !71

bb.aa:                                            ; preds = %.critedge.i, %.lr.ph34.i
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph34.i ], [ %indvars.iv.next38.i, %.critedge.i ] ; 8 uses
  %i.iw = load ptr, ptr %i.ib, align 8, !tbaa !72, !noalias !68
  %i.ix = mul nuw nsw i64 %indvars.iv37.i, 3      ; 4 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.ix ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !46, !noalias !68 ; 4 uses
  %.not.i120 = icmp eq i32 %i.ja, -1
  br i1 %.not.i120, label %.critedge.i, label %bb.ab

.critedge.i:                                      ; preds = %sharedEdge.exit.2.i, %bb.bc, %bb.ao, %bb.aa
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.jb = load i32, ptr %i.fr, align 8, !tbaa !53, !noalias !68
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next38.i, %i.jc
  br i1 %i.jd, label %bb.aa, label %mkTriGraph.exit, !llvm.loop !73

bb.ab:                                            ; preds = %bb.aa
  %i.je = sext i32 %i.ja to i64
  %i.jf = icmp slt i64 %indvars.iv37.i, %i.je
  br i1 %i.jf, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  %i.jg = load ptr, ptr %i.ge, align 8, !tbaa !55, !noalias !68 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ix ; 6 uses
  %i.ji = mul nuw nsw i32 %i.ja, 3
  %6 = zext nneg i32 %i.ji to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %6 ; 5 uses
  %i.jk = load i32, ptr %i.jh, align 4, !tbaa !46, !noalias !68 ; 11 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !46, !noalias !68 ; 12 uses
  %i.jn = load i32, ptr %i.jj, align 4, !tbaa !46, !noalias !68 ; 3 uses
  %i.jo = icmp eq i32 %i.jk, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !46, !noalias !68 ; 3 uses
  br i1 %i.jo, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not42.i.i = icmp eq i32 %i.jm, %i.jq
  br i1 %.not42.i.i, label %sharedEdge.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !46, !noalias !68
  %.not43.i.i = icmp eq i32 %i.jm, %i.js
  br i1 %.not43.i.i, label %sharedEdge.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.i

bb.ag:                                            ; preds = %bb.ac
  %i.jv = icmp eq i32 %i.jk, %i.jq
  br i1 %i.jv, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.not40.i.i = icmp eq i32 %i.jm, %i.jn
  br i1 %.not40.i.i, label %sharedEdge.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !46, !noalias !68
  %.not41.i.i = icmp eq i32 %i.jm, %i.jx
  br i1 %.not41.i.i, label %sharedEdge.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !46, !noalias !68
  %i.kc = icmp eq i32 %i.jk, %i.kb
  br i1 %i.kc, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.not.i29.i = icmp eq i32 %i.jm, %i.jn
  %.not39.i.i = icmp eq i32 %i.jm, %i.jq
  %or.cond.i.i = or i1 %.not.i29.i, %.not39.i.i
  br i1 %or.cond.i.i, label %sharedEdge.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.i

sharedEdge.exit.i:                                ; preds = %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad
  %.031.i.i = phi i32 [ %i.ju, %bb.af ], [ %i.jm, %bb.ae ], [ %i.jm, %bb.ad ], [ %i.jz, %bb.aj ], [ %i.jm, %bb.ai ], [ %i.jm, %bb.ah ], [ %i.ke, %bb.am ], [ %i.jm, %bb.an ], [ %i.jm, %bb.al ] ; 2 uses
  %.0.i.i = phi i32 [ %i.jk, %bb.af ], [ %i.jk, %bb.ae ], [ %i.jk, %bb.ad ], [ %i.jk, %bb.aj ], [ %i.jk, %bb.ai ], [ %i.jk, %bb.ah ], [ %i.jk, %bb.am ], [ %i.kg, %bb.an ], [ %i.jk, %bb.al ] ; 2 uses
  %spec.select.i.i121 = call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %.031.i.i)
  %spec.select44.i.i = call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.031.i.i)
  %.sroa.2.0.insert.ext.i.i = zext i32 %spec.select.i.i121 to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.030.0.insert.ext.i.i = zext i32 %spec.select44.i.i to i64
  %.sroa.030.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.030.0.insert.ext.i.i
  %i.kh = trunc nuw nsw i64 %indvars.iv37.i to i32
  call fastcc void @addTriEdge(ptr noundef nonnull align 8 %5, i32 noundef %i.kh, i32 noundef %i.ja, i64 %.sroa.030.0.insert.insert.i.i)
  br label %bb.ao

bb.ao:                                            ; preds = %sharedEdge.exit.i, %bb.ab
  %i.ki = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.kj = load i32, ptr %i.iz, align 4, !tbaa !46, !noalias !68 ; 4 uses
  %.not.1.i = icmp eq i32 %i.kj, -1
  br i1 %.not.1.i, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %indvars.iv37.i, %i.kk
  br i1 %i.kl, label %bb.aq, label %bb.bc

bb.aq:                                            ; preds = %bb.ap
  %i.km = load ptr, ptr %i.ge, align 8, !tbaa !55, !noalias !68 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.ix ; 6 uses
  %i.ko = mul nuw nsw i32 %i.kj, 3
  %7 = zext nneg i32 %i.ko to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %7 ; 5 uses
  %i.kq = load i32, ptr %i.kn, align 4, !tbaa !46, !noalias !68 ; 11 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !46, !noalias !68 ; 12 uses
  %i.kt = load i32, ptr %i.kp, align 4, !tbaa !46, !noalias !68 ; 3 uses
  %i.ku = icmp eq i32 %i.kq, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !46, !noalias !68 ; 3 uses
  br i1 %i.ku, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kx = icmp eq i32 %i.kq, %i.kw
  br i1 %i.kx, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !46, !noalias !68
  %i.la = icmp eq i32 %i.kq, %i.kz
  br i1 %i.la, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.1.i

bb.au:                                            ; preds = %bb.as
  %.not.i29.1.i = icmp eq i32 %i.ks, %i.kt
  %.not39.i.1.i = icmp eq i32 %i.ks, %i.kw
  %or.cond.i.1.i = or i1 %.not.i29.1.i, %.not39.i.1.i
  br i1 %or.cond.i.1.i, label %sharedEdge.exit.1.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.1.i

bb.aw:                                            ; preds = %bb.ar
  %.not40.i.1.i = icmp eq i32 %i.ks, %i.kt
  br i1 %.not40.i.1.i, label %sharedEdge.exit.1.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !46, !noalias !68
  %.not41.i.1.i = icmp eq i32 %i.ks, %i.lg
  br i1 %.not41.i.1.i, label %sharedEdge.exit.1.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.1.i

bb.az:                                            ; preds = %bb.aq
  %.not42.i.1.i = icmp eq i32 %i.ks, %i.kw
  br i1 %.not42.i.1.i, label %sharedEdge.exit.1.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !46, !noalias !68
  %.not43.i.1.i = icmp eq i32 %i.ks, %i.lk
  br i1 %.not43.i.1.i, label %sharedEdge.exit.1.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.1.i

sharedEdge.exit.1.i:                              ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.031.i.1.i = phi i32 [ %i.lm, %bb.bb ], [ %i.ks, %bb.ba ], [ %i.ks, %bb.az ], [ %i.li, %bb.ay ], [ %i.ks, %bb.ax ], [ %i.ks, %bb.aw ], [ %i.le, %bb.av ], [ %i.ks, %bb.at ], [ %i.ks, %bb.au ] ; 2 uses
  %.0.i.1.i = phi i32 [ %i.kq, %bb.bb ], [ %i.kq, %bb.ba ], [ %i.kq, %bb.az ], [ %i.kq, %bb.ay ], [ %i.kq, %bb.ax ], [ %i.kq, %bb.aw ], [ %i.kq, %bb.av ], [ %i.lc, %bb.at ], [ %i.kq, %bb.au ] ; 2 uses
  %spec.select.i.1.i = call i32 @llvm.smax.i32(i32 %.0.i.1.i, i32 %.031.i.1.i)
  %spec.select44.i.1.i = call i32 @llvm.smin.i32(i32 %.0.i.1.i, i32 %.031.i.1.i)
  %.sroa.2.0.insert.ext.i.1.i = zext i32 %spec.select.i.1.i to i64
  %.sroa.2.0.insert.shift.i.1.i = shl nuw i64 %.sroa.2.0.insert.ext.i.1.i, 32
  %.sroa.030.0.insert.ext.i.1.i = zext i32 %spec.select44.i.1.i to i64
  %.sroa.030.0.insert.insert.i.1.i = or disjoint i64 %.sroa.2.0.insert.shift.i.1.i, %.sroa.030.0.insert.ext.i.1.i
  %i.ln = trunc nuw nsw i64 %indvars.iv37.i to i32
  call fastcc void @addTriEdge(ptr noundef nonnull align 8 %5, i32 noundef %i.ln, i32 noundef %i.kj, i64 %.sroa.030.0.insert.insert.i.1.i)
  br label %bb.bc

bb.bc:                                            ; preds = %sharedEdge.exit.1.i, %bb.ap
  %i.lo = load i32, ptr %i.ki, align 4, !tbaa !46, !noalias !68 ; 3 uses
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp slt i64 %indvars.iv37.i, %i.lp
  br i1 %i.lq, label %bb.bd, label %.critedge.i

bb.bd:                                            ; preds = %bb.bc
  %i.lr = load ptr, ptr %i.ge, align 8, !tbaa !55, !noalias !68 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ix ; 6 uses
  %i.lt = mul nuw nsw i32 %i.lo, 3
  %8 = zext nneg i32 %i.lt to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %8 ; 5 uses
  %i.lv = load i32, ptr %i.ls, align 4, !tbaa !46, !noalias !68 ; 11 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !46, !noalias !68 ; 12 uses
  %i.ly = load i32, ptr %i.lu, align 4, !tbaa !46, !noalias !68 ; 3 uses
  %i.lz = icmp eq i32 %i.lv, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !46, !noalias !68 ; 3 uses
  br i1 %i.lz, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mc = icmp eq i32 %i.lv, %i.mb
  br i1 %i.mc, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.md = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.me = load i32, ptr %i.md, align 4, !tbaa !46, !noalias !68
  %i.mf = icmp eq i32 %i.lv, %i.me
  br i1 %i.mf, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.2.i

bb.bh:                                            ; preds = %bb.bf
  %.not.i29.2.i = icmp eq i32 %i.lx, %i.ly
  %.not39.i.2.i = icmp eq i32 %i.lx, %i.mb
  %or.cond.i.2.i = or i1 %.not.i29.2.i, %.not39.i.2.i
  br i1 %or.cond.i.2.i, label %sharedEdge.exit.2.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.2.i

bb.bj:                                            ; preds = %bb.be
  %.not40.i.2.i = icmp eq i32 %i.lx, %i.ly
  br i1 %.not40.i.2.i, label %sharedEdge.exit.2.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !46, !noalias !68
  %.not41.i.2.i = icmp eq i32 %i.lx, %i.ml
  br i1 %.not41.i.2.i, label %sharedEdge.exit.2.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.2.i

bb.bm:                                            ; preds = %bb.bd
  %.not42.i.2.i = icmp eq i32 %i.lx, %i.mb
  br i1 %.not42.i.2.i, label %sharedEdge.exit.2.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !46, !noalias !68
  %.not43.i.2.i = icmp eq i32 %i.lx, %i.mp
  br i1 %.not43.i.2.i, label %sharedEdge.exit.2.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.2.i

sharedEdge.exit.2.i:                              ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.031.i.2.i = phi i32 [ %i.mr, %bb.bo ], [ %i.lx, %bb.bn ], [ %i.lx, %bb.bm ], [ %i.mn, %bb.bl ], [ %i.lx, %bb.bk ], [ %i.lx, %bb.bj ], [ %i.mj, %bb.bi ], [ %i.lx, %bb.bg ], [ %i.lx, %bb.bh ] ; 2 uses
  %.0.i.2.i = phi i32 [ %i.lv, %bb.bo ], [ %i.lv, %bb.bn ], [ %i.lv, %bb.bm ], [ %i.lv, %bb.bl ], [ %i.lv, %bb.bk ], [ %i.lv, %bb.bj ], [ %i.lv, %bb.bi ], [ %i.mh, %bb.bg ], [ %i.lv, %bb.bh ] ; 2 uses
  %spec.select.i.2.i = call i32 @llvm.smax.i32(i32 %.0.i.2.i, i32 %.031.i.2.i)
  %spec.select44.i.2.i = call i32 @llvm.smin.i32(i32 %.0.i.2.i, i32 %.031.i.2.i)
  %.sroa.2.0.insert.ext.i.2.i = zext i32 %spec.select.i.2.i to i64
  %.sroa.2.0.insert.shift.i.2.i = shl nuw i64 %.sroa.2.0.insert.ext.i.2.i, 32
  %.sroa.030.0.insert.ext.i.2.i = zext i32 %spec.select44.i.2.i to i64
  %.sroa.030.0.insert.insert.i.2.i = or disjoint i64 %.sroa.2.0.insert.shift.i.2.i, %.sroa.030.0.insert.ext.i.2.i
  %i.ms = trunc nuw nsw i64 %indvars.iv37.i to i32
  call fastcc void @addTriEdge(ptr noundef nonnull align 8 %5, i32 noundef %i.ms, i32 noundef %i.lo, i64 %.sroa.030.0.insert.insert.i.2.i)
  br label %.critedge.i

mkTriGraph.exit:                                  ; preds = %.critedge.i, %gv_calloc.exit.i, %.preheader.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @freeSurface(ptr noundef nonnull %i.fo) #18
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare hidden ptr @mkSurface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @freeSurface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @makeMultiSpline(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pointf_s, align 8           ; 7 uses
  %4 = alloca [2 x %struct.pointf_s], align 16    ; 7 uses
  %5 = alloca %struct.Ppoly_t, align 8            ; 17 uses
  %6 = alloca %struct.Ppoly_t, align 8            ; 7 uses
  %7 = alloca %struct.Ppoly_t, align 8            ; 9 uses
  %8 = alloca %struct.Ppoly_t, align 8            ; 7 uses
  %9 = alloca [2 x %struct.pointf_s], align 8     ; 4 uses
  %10 = alloca [2 x %struct.pointf_s], align 8    ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %struct.Ipair, align 8             ; 5 uses
  %12 = alloca %struct.Ipair, align 8             ; 5 uses
  %13 = alloca %struct.Ipair, align 8             ; 5 uses
  %14 = alloca %struct.Ipair, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.sroa.032.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !80 ; 2 uses
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !75
  %i.f = load i32, ptr %0, align 8
  %i.g = and i32 %i.f, 3                          ; 2 uses
  %i.h = icmp eq i32 %i.g, 3
  %i.i = select i1 %i.h, i64 56, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = icmp eq i32 %i.g, 2
  %i.m = select i1 %i.l, i64 56, i64 -8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.p = load <2 x double>, ptr %.sroa.032.0.copyload, align 8, !tbaa !38 ; 3 uses
  %i.q = getelementptr [16 x i8], ptr %.sroa.032.0.copyload, i64 %.sroa.534.0.copyload ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %.sroa.0.0.copyload = load double, ptr %i.r, align 8, !tbaa !38 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.q, i64 -8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !67   ; 6 uses
  %i.u = add nsw i32 %i.t, 1                      ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !84   ; 8 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %gv_calloc.exit.thread, label %bb.b

gv_calloc.exit.thread:                            ; preds = %bb.a
  %i.y = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #19
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp ugt i64 %i.x, 2305843009213693951
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str, i64 noundef %i.x, i64 noundef 8) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.x, i64 noundef 8) #19 ; 8 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ae = shl nuw i64 %i.x, 3
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.1, i64 noundef %i.ae) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

.lr.ph:                                           ; preds = %bb.d
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !85  ; 5 uses
  %xtraiter = and i64 %i.x, 3                     ; 3 uses
  %i.ah = icmp ult i64 %i.x, 4
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.x, 2305843009213693948
  br label %bb.ai

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0166.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.io, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod417 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod417)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.0166.epil = phi i64 [ %.0166.epil.init, %.epil.preheader ], [ %i.al, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.0166.epil
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0166.epil
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !75
end_hunk_0
begin_hunk_1_@addEndpoint:bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.az = sext i32 %i.e to i64
  %i.ba = sext i32 %i.av to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.03.us = phi i32 [ %i.bc, %.lr.ph.split.us ], [ %i.e, %.lr.ph ] ; 5 uses
  %i.bb = icmp slt i32 %.03.us, %i.av
  %i.bc = add i32 %.03.us, 1                      ; 3 uses
  %.sroa.7.0.us = select i1 %i.bb, i32 %i.bc, i32 %i.e ; 3 uses
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %spec.select.i.us = call i32 @llvm.smax.i32(i32 %.03.us, i32 %.sroa.7.0.us)
  %spec.select13.i.us = call i32 @llvm.smin.i32(i32 %.03.us, i32 %.sroa.7.0.us)
  store i32 %spec.select13.i.us, ptr %i.ax, align 8, !tbaa !46
  store i32 %spec.select.i.us, ptr %i.ay, align 4, !tbaa !46
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !61
  %i.bf = call ptr %i.be(ptr noundef nonnull %i.bd, ptr noundef nonnull %5, i32 noundef 4) #18, !inline_history !170
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.sroa.7.0.insert.ext.us = zext i32 %.sroa.7.0.us to i64
  %.sroa.7.0.insert.shift.us = shl nuw i64 %.sroa.7.0.insert.ext.us, 32
  %.sroa.0.0.insert.ext.us = zext i32 %.03.us to i64
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.7.0.insert.shift.us, %.sroa.0.0.insert.ext.us
  call fastcc void @addTriEdge(ptr noundef nonnull %i.ap, i32 noundef %3, i32 noundef %i.bh, i64 %.sroa.0.0.insert.insert.us)
  %exitcond6.not = icmp eq i32 %i.bc, %i.g
  br i1 %exitcond6.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !171

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.l
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.l ] ; 5 uses
  %i.bi = icmp slt i64 %indvars.iv, %i.ba
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bj = trunc i64 %indvars.iv.next to i32       ; 2 uses
  %.sroa.7.0 = select i1 %i.bi, i32 %i.bj, i32 %i.e ; 4 uses
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bl = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bl, i32 %.sroa.7.0)
  %spec.select13.i = call i32 @llvm.smin.i32(i32 %i.bl, i32 %.sroa.7.0)
  store i32 %spec.select13.i, ptr %i.ax, align 8, !tbaa !46
  store i32 %spec.select.i, ptr %i.ay, align 4, !tbaa !46
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !61
  %i.bn = call ptr %i.bm(ptr noundef nonnull %i.bk, ptr noundef nonnull %5, i32 noundef 4) #18, !inline_history !170
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.br = load double, ptr %i.bq, align 8         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8         ; 2 uses
  %i.bu = call double @area2(double %i.br, double %i.bt, double %.sroa.056.0, double %.sroa.1258.0, double %1, double %2) #18
  %i.bv = fcmp ult double %i.bu, -1.000000e-10
  br i1 %i.bv, label %inCone.exit.thread, label %inCone.exit

inCone.exit:                                      ; preds = %.lr.ph.split
  %i.bw = call double @area2(double %i.br, double %i.bt, double %1, double %2, double %.sroa.053.0, double %.sroa.12.0) #18
  %i.bx = fcmp ult double %i.bw, -1.000000e-10
  br i1 %i.bx, label %inCone.exit.thread, label %bb.k

inCone.exit.thread:                               ; preds = %.lr.ph.split, %inCone.exit
  %i.by = sext i32 %.sroa.7.0 to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.by ; 3 uses
  %i.ca = load double, ptr %i.bz, align 8         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8         ; 2 uses
  %i.cd = call double @area2(double %i.ca, double %i.cc, double %.sroa.056.0, double %.sroa.1258.0, double %1, double %2) #18
  %i.ce = fcmp ult double %i.cd, -1.000000e-10
  br i1 %i.ce, label %inCone.exit191.thread, label %inCone.exit191

inCone.exit191:                                   ; preds = %inCone.exit.thread
  %i.cf = call double @area2(double %i.ca, double %i.cc, double %1, double %2, double %.sroa.053.0, double %.sroa.12.0) #18
  %i.cg = fcmp ult double %i.cf, -1.000000e-10
  br i1 %i.cg, label %inCone.exit191.thread, label %bb.k

inCone.exit191.thread:                            ; preds = %inCone.exit.thread, %inCone.exit191
  %i.ch = load double, ptr %i.bq, align 8
  %i.ci = load double, ptr %i.bs, align 8
  %i.cj = load double, ptr %i.bz, align 8
  %i.ck = load double, ptr %i.cb, align 8
  %i.cl = call fastcc i32 @raySeg(double %1, double %2, double %.sroa.060.0, double %.sroa.11.0, double %i.ch, double %i.ci, double %i.cj, double %i.ck)
  %.not144 = icmp eq i32 %i.cl, 0
  br i1 %.not144, label %bb.l, label %bb.k

bb.k:                                             ; preds = %inCone.exit191.thread, %inCone.exit191, %inCone.exit
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.ext = and i64 %indvars.iv, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  call fastcc void @addTriEdge(ptr noundef nonnull %i.ap, i32 noundef %3, i32 noundef %i.bp, i64 %.sroa.0.0.insert.insert)
  br label %bb.l

bb.l:                                             ; preds = %inCone.exit191.thread, %bb.k
  %exitcond.not = icmp eq i32 %i.g, %i.bj
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.l, %.lr.ph.split.us, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare ptr @dtopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal nonnull ptr @newItem(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 81) 32) #19 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.1, i64 noundef 32) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !46
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.i, ptr %i.j, align 8, !tbaa !57
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmpItem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !46     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !46     ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, %i.h
  %. = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addTriEdge(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !172  ; 3 uses
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %mul.ov.i = icmp slt i32 %i.d, -1
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, i64 noundef %i.f, i64 noundef 24) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = sext i32 %i.d to i64
  %i.j = mul nsw i64 %i.i, 24                     ; 2 uses
  %i.k = mul nuw nsw i64 %i.f, 24                 ; 3 uses
  %i.l = icmp eq i32 %i.e, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.b) #18
  br label %gv_recalloc.exit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.k) #23 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.1, i64 noundef %i.k) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.r = sub nuw nsw i64 %i.k, %i.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.q, i8 0, i64 %i.r, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.d, %bb.g
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.m, %bb.g ] ; 2 uses
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !27
  %i.s = load i32, ptr %i.c, align 8, !tbaa !172
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %.0.i.i, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w ; 6 uses
  %i.y = sext i32 %2 to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.y ; 6 uses
  store i32 %1, ptr %i.u, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %2, ptr %i.aa, align 4, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !173
  %i.af = fsub double %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !174
  %i.ak = fsub double %i.ah, %i.aj                ; 2 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.al)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %sqrt, ptr %i.an, align 8, !tbaa !118
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %3, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !86  ; 2 uses
  %i.as = add i64 %i.ar, 1                        ; 4 uses
  %mul.ov.i39 = icmp ugt i64 %i.as, 4611686018427387903
  br i1 %mul.ov.i39, label %bb.h, label %bb.i

bb.h:                                             ; preds = %gv_recalloc.exit
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str, i64 noundef %i.as, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.i:                                             ; preds = %gv_recalloc.exit
  %i.av = shl nuw i64 %i.ar, 2                    ; 2 uses
  %i.aw = shl nuw i64 %i.as, 2                    ; 3 uses
  %i.ax = icmp eq i64 %i.as, 0
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef %i.aq) #18
  br label %gv_recalloc.exit41

bb.k:                                             ; preds = %bb.i
  %i.ay = tail call ptr @realloc(ptr noundef %i.aq, i64 noundef %i.aw) #23 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.1, i64 noundef %i.aw) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.aw, %i.av
  br i1 %i.bc, label %bb.n, label %gv_recalloc.exit41

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  store i32 0, ptr %i.bd, align 1
  br label %gv_recalloc.exit41

gv_recalloc.exit41:                               ; preds = %bb.j, %bb.m, %bb.n
  %.0.i.i40 = phi ptr [ null, %bb.j ], [ %i.ay, %bb.n ], [ %i.ay, %bb.m ] ; 2 uses
  store ptr %.0.i.i40, ptr %i.ap, align 8, !tbaa !21
  %i.be = load i32, ptr %i.c, align 8, !tbaa !172
  %i.bf = load i64, ptr %i.x, align 8, !tbaa !86  ; 2 uses
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.x, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i40, i64 %i.bf
  store i32 %i.be, ptr %i.bh, align 4, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.bl = add i64 %i.bk, 1                        ; 4 uses
  %mul.ov.i43 = icmp ugt i64 %i.bl, 4611686018427387903
  br i1 %mul.ov.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %gv_recalloc.exit41
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str, i64 noundef %i.bl, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.p:                                             ; preds = %gv_recalloc.exit41
  %i.bo = shl nuw i64 %i.bk, 2                    ; 2 uses
  %i.bp = shl nuw i64 %i.bl, 2                    ; 3 uses
  %i.bq = icmp eq i64 %i.bl, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef %i.bj) #18
  br label %gv_recalloc.exit45

bb.r:                                             ; preds = %bb.p
  %i.br = tail call ptr @realloc(ptr noundef %i.bj, i64 noundef %i.bp) #23 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.1, i64 noundef %i.bp) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bv = icmp ugt i64 %i.bp, %i.bo
  br i1 %i.bv, label %bb.u, label %gv_recalloc.exit45

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  store i32 0, ptr %i.bw, align 1
  br label %gv_recalloc.exit45

gv_recalloc.exit45:                               ; preds = %bb.q, %bb.t, %bb.u
  %.0.i.i44 = phi ptr [ null, %bb.q ], [ %i.br, %bb.u ], [ %i.br, %bb.t ] ; 2 uses
  store ptr %.0.i.i44, ptr %i.bi, align 8, !tbaa !21
  %i.bx = load i32, ptr %i.c, align 8, !tbaa !172 ; 2 uses
  %i.by = load i64, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.z, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i44, i64 %i.by
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !46
  %i.cb = add nsw i32 %i.bx, 1
  store i32 %i.cb, ptr %i.c, align 8, !tbaa !172
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @raySeg(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wind(double %0, double %1, double %2, double %3, double %4, double %5) #18 ; 2 uses
  %i.b = tail call i32 @wind(double %0, double %1, double %2, double %3, double %6, double %7) #18
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.a, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @wind(double %0, double %1, double %6, double %7, double %2, double %3) #18
  %i.f = tail call i32 @wind(double %0, double %1, double %6, double %7, double %4, double %5) #18
  %i.g = mul nsw i32 %i.f, %i.e
  %i.h = icmp sgt i32 %i.g, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @wind(double %0, double %1, double %4, double %5, double %2, double %3) #18
  %i.j = tail call i32 @wind(double %0, double %1, double %4, double %5, double %6, double %7) #18
  %i.k = mul nsw i32 %i.j, %i.i
  %i.l = icmp sgt i32 %i.k, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0.shrunk = phi i1 [ %i.l, %bb.d ], [ %i.h, %bb.c ], [ false, %bb.a ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
end_hunk_1
