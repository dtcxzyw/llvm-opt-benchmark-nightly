inline.NumInlined: 116
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mkRouter:bb.a
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
  %i.ji = mul nsw i32 %i.ja, 3
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.jj ; 5 uses
  %i.jl = load i32, ptr %i.jh, align 4, !tbaa !46, !noalias !68 ; 11 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !46, !noalias !68 ; 12 uses
  %i.jo = load i32, ptr %i.jk, align 4, !tbaa !46, !noalias !68 ; 3 uses
  %i.jp = icmp eq i32 %i.jl, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !46, !noalias !68 ; 3 uses
  br i1 %i.jp, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not42.i.i = icmp eq i32 %i.jn, %i.jr
  br i1 %.not42.i.i, label %sharedEdge.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !46, !noalias !68
  %.not43.i.i = icmp eq i32 %i.jn, %i.jt
  br i1 %.not43.i.i, label %sharedEdge.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.i

bb.ag:                                            ; preds = %bb.ac
  %i.jw = icmp eq i32 %i.jl, %i.jr
  br i1 %i.jw, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.not40.i.i = icmp eq i32 %i.jn, %i.jo
  br i1 %.not40.i.i, label %sharedEdge.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !46, !noalias !68
  %.not41.i.i = icmp eq i32 %i.jn, %i.jy
  br i1 %.not41.i.i, label %sharedEdge.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !46, !noalias !68
  %i.kd = icmp eq i32 %i.jl, %i.kc
  br i1 %i.kd, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.not.i29.i = icmp eq i32 %i.jn, %i.jo
  %.not39.i.i = icmp eq i32 %i.jn, %i.jr
  %or.cond.i.i = or i1 %.not.i29.i, %.not39.i.i
  br i1 %or.cond.i.i, label %sharedEdge.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.i

sharedEdge.exit.i:                                ; preds = %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad
  %.031.i.i = phi i32 [ %i.jv, %bb.af ], [ %i.jn, %bb.ae ], [ %i.jn, %bb.ad ], [ %i.ka, %bb.aj ], [ %i.jn, %bb.ai ], [ %i.jn, %bb.ah ], [ %i.kf, %bb.am ], [ %i.jn, %bb.an ], [ %i.jn, %bb.al ] ; 2 uses
  %.0.i.i = phi i32 [ %i.jl, %bb.af ], [ %i.jl, %bb.ae ], [ %i.jl, %bb.ad ], [ %i.jl, %bb.aj ], [ %i.jl, %bb.ai ], [ %i.jl, %bb.ah ], [ %i.jl, %bb.am ], [ %i.kh, %bb.an ], [ %i.jl, %bb.al ] ; 2 uses
  %spec.select.i.i121 = call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %.031.i.i)
  %spec.select44.i.i = call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %.031.i.i)
  %.sroa.2.0.insert.ext.i.i = zext i32 %spec.select.i.i121 to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.030.0.insert.ext.i.i = zext i32 %spec.select44.i.i to i64
  %.sroa.030.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.030.0.insert.ext.i.i
  %i.ki = trunc nuw nsw i64 %indvars.iv37.i to i32
  call fastcc void @addTriEdge(ptr noundef nonnull align 8 %5, i32 noundef %i.ki, i32 noundef %i.ja, i64 %.sroa.030.0.insert.insert.i.i)
  br label %bb.ao

bb.ao:                                            ; preds = %sharedEdge.exit.i, %bb.ab
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.kk = load i32, ptr %i.iz, align 4, !tbaa !46, !noalias !68 ; 4 uses
  %.not.1.i = icmp eq i32 %i.kk, -1
  br i1 %.not.1.i, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i64 %indvars.iv37.i, %i.kl
  br i1 %i.km, label %bb.aq, label %bb.bc

bb.aq:                                            ; preds = %bb.ap
  %i.kn = load ptr, ptr %i.ge, align 8, !tbaa !55, !noalias !68 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.ix ; 6 uses
  %i.kp = mul nsw i32 %i.kk, 3
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.kq ; 5 uses
  %i.ks = load i32, ptr %i.ko, align 4, !tbaa !46, !noalias !68 ; 11 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !46, !noalias !68 ; 12 uses
  %i.kv = load i32, ptr %i.kr, align 4, !tbaa !46, !noalias !68 ; 3 uses
  %i.kw = icmp eq i32 %i.ks, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !46, !noalias !68 ; 3 uses
  br i1 %i.kw, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kz = icmp eq i32 %i.ks, %i.ky
  br i1 %i.kz, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !46, !noalias !68
  %i.lc = icmp eq i32 %i.ks, %i.lb
  br i1 %i.lc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.1.i

bb.au:                                            ; preds = %bb.as
  %.not.i29.1.i = icmp eq i32 %i.ku, %i.kv
  %.not39.i.1.i = icmp eq i32 %i.ku, %i.ky
  %or.cond.i.1.i = or i1 %.not.i29.1.i, %.not39.i.1.i
  br i1 %or.cond.i.1.i, label %sharedEdge.exit.1.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.1.i

bb.aw:                                            ; preds = %bb.ar
  %.not40.i.1.i = icmp eq i32 %i.ku, %i.kv
  br i1 %.not40.i.1.i, label %sharedEdge.exit.1.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !46, !noalias !68
  %.not41.i.1.i = icmp eq i32 %i.ku, %i.li
  br i1 %.not41.i.1.i, label %sharedEdge.exit.1.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.1.i

bb.az:                                            ; preds = %bb.aq
  %.not42.i.1.i = icmp eq i32 %i.ku, %i.ky
  br i1 %.not42.i.1.i, label %sharedEdge.exit.1.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !46, !noalias !68
  %.not43.i.1.i = icmp eq i32 %i.ku, %i.lm
  br i1 %.not43.i.1.i, label %sharedEdge.exit.1.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.1.i

sharedEdge.exit.1.i:                              ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.031.i.1.i = phi i32 [ %i.lo, %bb.bb ], [ %i.ku, %bb.ba ], [ %i.ku, %bb.az ], [ %i.lk, %bb.ay ], [ %i.ku, %bb.ax ], [ %i.ku, %bb.aw ], [ %i.lg, %bb.av ], [ %i.ku, %bb.at ], [ %i.ku, %bb.au ] ; 2 uses
  %.0.i.1.i = phi i32 [ %i.ks, %bb.bb ], [ %i.ks, %bb.ba ], [ %i.ks, %bb.az ], [ %i.ks, %bb.ay ], [ %i.ks, %bb.ax ], [ %i.ks, %bb.aw ], [ %i.ks, %bb.av ], [ %i.le, %bb.at ], [ %i.ks, %bb.au ] ; 2 uses
  %spec.select.i.1.i = call i32 @llvm.smax.i32(i32 %.0.i.1.i, i32 %.031.i.1.i)
  %spec.select44.i.1.i = call i32 @llvm.smin.i32(i32 %.0.i.1.i, i32 %.031.i.1.i)
  %.sroa.2.0.insert.ext.i.1.i = zext i32 %spec.select.i.1.i to i64
  %.sroa.2.0.insert.shift.i.1.i = shl nuw i64 %.sroa.2.0.insert.ext.i.1.i, 32
  %.sroa.030.0.insert.ext.i.1.i = zext i32 %spec.select44.i.1.i to i64
  %.sroa.030.0.insert.insert.i.1.i = or disjoint i64 %.sroa.2.0.insert.shift.i.1.i, %.sroa.030.0.insert.ext.i.1.i
  %i.lp = trunc nuw nsw i64 %indvars.iv37.i to i32
  call fastcc void @addTriEdge(ptr noundef nonnull align 8 %5, i32 noundef %i.lp, i32 noundef %i.kk, i64 %.sroa.030.0.insert.insert.i.1.i)
  br label %bb.bc

bb.bc:                                            ; preds = %sharedEdge.exit.1.i, %bb.ap
  %i.lq = load i32, ptr %i.kj, align 4, !tbaa !46, !noalias !68 ; 3 uses
  %i.lr = sext i32 %i.lq to i64
  %i.ls = icmp slt i64 %indvars.iv37.i, %i.lr
  br i1 %i.ls, label %bb.bd, label %.critedge.i

bb.bd:                                            ; preds = %bb.bc
  %i.lt = load ptr, ptr %i.ge, align 8, !tbaa !55, !noalias !68 ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.ix ; 6 uses
  %i.lv = mul nsw i32 %i.lq, 3
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lt, i64 %i.lw ; 5 uses
  %i.ly = load i32, ptr %i.lu, align 4, !tbaa !46, !noalias !68 ; 11 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !46, !noalias !68 ; 12 uses
  %i.mb = load i32, ptr %i.lx, align 4, !tbaa !46, !noalias !68 ; 3 uses
  %i.mc = icmp eq i32 %i.ly, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !46, !noalias !68 ; 3 uses
  br i1 %i.mc, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mf = icmp eq i32 %i.ly, %i.me
  br i1 %i.mf, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !46, !noalias !68
  %i.mi = icmp eq i32 %i.ly, %i.mh
  br i1 %i.mi, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.2.i

bb.bh:                                            ; preds = %bb.bf
  %.not.i29.2.i = icmp eq i32 %i.ma, %i.mb
  %.not39.i.2.i = icmp eq i32 %i.ma, %i.me
  %or.cond.i.2.i = or i1 %.not.i29.2.i, %.not39.i.2.i
  br i1 %or.cond.i.2.i, label %sharedEdge.exit.2.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.2.i

bb.bj:                                            ; preds = %bb.be
  %.not40.i.2.i = icmp eq i32 %i.ma, %i.mb
  br i1 %.not40.i.2.i, label %sharedEdge.exit.2.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !46, !noalias !68
  %.not41.i.2.i = icmp eq i32 %i.ma, %i.mo
  br i1 %.not41.i.2.i, label %sharedEdge.exit.2.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.2.i

bb.bm:                                            ; preds = %bb.bd
  %.not42.i.2.i = icmp eq i32 %i.ma, %i.me
  br i1 %.not42.i.2.i, label %sharedEdge.exit.2.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !46, !noalias !68
  %.not43.i.2.i = icmp eq i32 %i.ma, %i.ms
  br i1 %.not43.i.2.i, label %sharedEdge.exit.2.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !46, !noalias !68
  br label %sharedEdge.exit.2.i

sharedEdge.exit.2.i:                              ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.031.i.2.i = phi i32 [ %i.mu, %bb.bo ], [ %i.ma, %bb.bn ], [ %i.ma, %bb.bm ], [ %i.mq, %bb.bl ], [ %i.ma, %bb.bk ], [ %i.ma, %bb.bj ], [ %i.mm, %bb.bi ], [ %i.ma, %bb.bg ], [ %i.ma, %bb.bh ] ; 2 uses
  %.0.i.2.i = phi i32 [ %i.ly, %bb.bo ], [ %i.ly, %bb.bn ], [ %i.ly, %bb.bm ], [ %i.ly, %bb.bl ], [ %i.ly, %bb.bk ], [ %i.ly, %bb.bj ], [ %i.ly, %bb.bi ], [ %i.mk, %bb.bg ], [ %i.ly, %bb.bh ] ; 2 uses
  %spec.select.i.2.i = call i32 @llvm.smax.i32(i32 %.0.i.2.i, i32 %.031.i.2.i)
  %spec.select44.i.2.i = call i32 @llvm.smin.i32(i32 %.0.i.2.i, i32 %.031.i.2.i)
  %.sroa.2.0.insert.ext.i.2.i = zext i32 %spec.select.i.2.i to i64
  %.sroa.2.0.insert.shift.i.2.i = shl nuw i64 %.sroa.2.0.insert.ext.i.2.i, 32
  %.sroa.030.0.insert.ext.i.2.i = zext i32 %spec.select44.i.2.i to i64
  %.sroa.030.0.insert.insert.i.2.i = or disjoint i64 %.sroa.2.0.insert.shift.i.2.i, %.sroa.030.0.insert.ext.i.2.i
  %i.mv = trunc nuw nsw i64 %indvars.iv37.i to i32
  call fastcc void @addTriEdge(ptr noundef nonnull align 8 %5, i32 noundef %i.mv, i32 noundef %i.lq, i64 %.sroa.030.0.insert.insert.i.2.i)
  br label %.critedge.i

mkTriGraph.exit:                                  ; preds = %.critedge.i, %gv_calloc.exit.i, %.preheader.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mw, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !74
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

end_hunk_0
