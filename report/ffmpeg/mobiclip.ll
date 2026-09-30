Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mobiclip?download=true
inline.NumInlined: 100
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 24
begin_hunk_0_@add_coefficients:bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.dl = load i8, ptr %i.bz, align 1, !tbaa !46
  %i.dm = icmp slt i32 %spec.select.i106, %i.ac
  %i.dn = zext i1 %i.dm to i32
  %spec.select.i108 = add i32 %spec.select.i106, %i.dn ; 7 uses
  %i.do = zext i8 %i.dl to i32
  %i.dp = and i32 %spec.select.i106, 7
  store i32 %spec.select.i108, ptr %i.r, align 8, !tbaa !45
  %i.dq = lshr exact i32 128, %i.dp
  %i.dr = and i32 %i.dq, %i.do
  %.not95 = icmp eq i32 %i.dr, 0
  %i.ds = lshr i32 %spec.select.i108, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dt ; 2 uses
  br i1 %.not95, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dv = load i32, ptr %i.du, align 1, !tbaa !46
  %i.dw = tail call i32 @llvm.bswap.i32(i32 %i.dv)
  %i.dx = and i32 %spec.select.i108, 7
  %i.dy = shl i32 %i.dw, %i.dx
  %i.dz = lshr i32 %i.dy, 20
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !46
  %i.ee = sext i16 %i.ed to i32
  %i.ef = load i16, ptr %i.eb, align 2, !tbaa !46 ; 2 uses
  %i.eg = zext i16 %i.ef to i32                   ; 2 uses
  %i.eh = add i32 %spec.select.i108, %i.ee
  %i.ei = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.eh) ; 5 uses
  store i32 %i.ei, ptr %i.r, align 8, !tbaa !45
  %i.ej = and i16 %i.ef, -2048
  %i.ek = icmp ne i16 %i.ej, 2048                 ; 2 uses
  %i.el = lshr i32 %i.eg, 5
  %i.em = and i32 %i.el, 63
  %i.en = and i32 %i.eg, 31                       ; 3 uses
  %i.eo = select i1 %i.ek, i32 128, i32 192
  %i.ep = or disjoint i32 %i.eo, %i.en
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !46
  %i.et = zext i8 %i.es to i32
  %i.eu = add nuw nsw i32 %i.em, %i.et
  %i.ev = lshr i32 %i.ei, 3
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !46
  %i.ez = icmp slt i32 %i.ei, %i.ac
  %i.fa = zext i1 %i.ez to i32
  %spec.select.i109 = add i32 %i.ei, %i.fa        ; 2 uses
  %i.fb = zext i8 %i.ey to i32
  %i.fc = and i32 %i.ei, 7
  store i32 %spec.select.i109, ptr %i.r, align 8, !tbaa !45
  %i.fd = lshr exact i32 128, %i.fc
  %i.fe = and i32 %i.fd, %i.fb
  %.not97 = icmp eq i32 %i.fe, 0
  %i.ff = sub nsw i32 0, %i.en
  %spec.select25 = select i1 %.not97, i32 %i.en, i32 %i.ff
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.fg = load i8, ptr %i.du, align 1, !tbaa !46
  %i.fh = icmp slt i32 %spec.select.i108, %i.ac
  %i.fi = zext i1 %i.fh to i32
  %spec.select.i110 = add i32 %spec.select.i108, %i.fi ; 4 uses
  %i.fj = zext i8 %i.fg to i32
  %i.fk = and i32 %spec.select.i108, 7
  store i32 %spec.select.i110, ptr %i.r, align 8, !tbaa !45
  %i.fl = lshr i32 %spec.select.i110, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 1, !tbaa !46
  %i.fp = tail call i32 @llvm.bswap.i32(i32 %i.fo)
  %i.fq = and i32 %spec.select.i110, 7
  %i.fr = shl i32 %i.fp, %i.fq
  %i.fs = lshr i32 %i.fr, 26
  %i.ft = add i32 %spec.select.i110, 6
  %i.fu = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ft) ; 4 uses
  store i32 %i.fu, ptr %i.r, align 8, !tbaa !45
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 1, !tbaa !46
  %i.fz = tail call i32 @llvm.bswap.i32(i32 %i.fy)
  %i.ga = and i32 %i.fu, 7
  %i.gb = shl i32 %i.fz, %i.ga
  %i.gc = ashr i32 %i.gb, 20
  %i.gd = add i32 %i.fu, 12
  %i.ge = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.gd) ; 2 uses
  store i32 %i.ge, ptr %i.r, align 8, !tbaa !45
  %i.gf = lshr exact i32 128, %i.fk
  %i.gg = and i32 %i.gf, %i.fj
  %i.gh = icmp eq i32 %i.gg, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.h
  %i.gi = phi i32 [ %spec.select.i, %bb.c ], [ %i.ge, %bb.h ], [ %spec.select.i109, %bb.g ], [ %spec.select.i107, %bb.e ] ; 2 uses
  %.015 = phi i1 [ %i.bb, %bb.c ], [ %i.gh, %bb.h ], [ %i.ek, %bb.g ], [ %i.cp, %bb.e ]
  %.014 = phi i32 [ %i.az, %bb.c ], [ %i.fs, %bb.h ], [ %i.eu, %bb.g ], [ %i.cr, %bb.e ]
  %.013 = phi i32 [ %spec.select, %bb.c ], [ %i.gc, %bb.h ], [ %spec.select25, %bb.g ], [ %spec.select24, %bb.e ]
  %i.gj = add nuw nsw i32 %.014, %.08728          ; 3 uses
  %.not99 = icmp slt i32 %i.gj, %i.ae
  br i1 %.not99, label %bb.j, label %.thread21

bb.j:                                             ; preds = %bb.i
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !41
  %i.gn = mul i32 %i.gm, %.013
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gk
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !46
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gq
  store i32 %i.gn, ptr %i.gr, align 4, !tbaa !41
  %i.gs = add nuw nsw i32 %i.gj, 1
  %i.gt = icmp sgt i32 %.val102, %i.gi
  %or.cond = select i1 %.015, i1 %i.gt, i1 false
  br i1 %or.cond, label %bb.b, label %.thread18.loopexit, !llvm.loop !164

.thread18.loopexit:                               ; preds = %bb.j
  %.pre = load i32, ptr %i.a, align 16, !tbaa !41
  %i.gu = add nsw i32 %.pre, 32
  br label %.thread18

.thread18:                                        ; preds = %.thread18.loopexit, %bb.a
  %i.gv = phi i32 [ %i.gu, %.thread18.loopexit ], [ 32, %bb.a ]
  store i32 %i.gv, ptr %i.a, align 16, !tbaa !41
  %i.gw = zext nneg i32 %3 to i64                 ; 14 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread18, %bb.k
  %indvars.iv = phi i64 [ 0, %.thread18 ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.gx = mul nuw nsw i64 %indvars.iv, %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  call fastcc void @idct(ptr noundef %i.gy, i32 noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.gw
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.k, !llvm.loop !165

.preheader.preheader:                             ; preds = %bb.k
  %i.gz = add nsw i64 %i.gw, -2
  %min.iters.check = icmp samesign ult i32 %3, 8
  %n.vec = and i64 %i.gw, 24                      ; 3 uses
  %i.ha = icmp eq i64 %n.vec, 8
  %cmp.n = icmp eq i64 %n.vec, %i.gw
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.loopexit ], [ 0, %.preheader.preheader ] ; 5 uses
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %.loopexit ], [ 1, %.preheader.preheader ] ; 5 uses
  %.08834 = phi ptr [ %i.io, %.loopexit ], [ %i.q, %.preheader.preheader ] ; 7 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 3 uses
  %i.hb = icmp samesign ult i64 %indvars.iv.next51, %i.gw
  %i.hc = mul nuw nsw i64 %indvars.iv50, %i.gw    ; 3 uses
  br i1 %i.hb, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %.preheader
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv50 ; 3 uses
  %invariant.gep60 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hc ; 3 uses
  %i.hd = sub nsw i64 %indvars.iv50, %i.gw
  %i.he = and i64 %i.hd, 1
  %lcmp.mod.not.not = icmp eq i64 %i.he, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph32
  %i.hf = mul nuw nsw i64 %indvars.iv38, %i.gw
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.hf ; 2 uses
  %i.hg = load i32, ptr %gep.prol, align 4, !tbaa !41
  %gep61.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep60, i64 %indvars.iv38 ; 2 uses
  %i.hh = load i32, ptr %gep61.prol, align 4, !tbaa !41
  store i32 %i.hg, ptr %gep61.prol, align 4, !tbaa !41
  store i32 %i.hh, ptr %gep.prol, align 4, !tbaa !41
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv38, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph32
  %indvars.iv40.unr = phi i64 [ %indvars.iv38, %.lr.ph32 ], [ %indvars.iv.next41.prol, %.prol.loopexit.unr-lcssa ]
  %i.hi = icmp eq i64 %i.gz, %indvars.iv50
  br i1 %i.hi, label %._crit_edge, label %.lr.ph32.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph32.new, %.preheader
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hc
  call fastcc void @idct(ptr noundef %i.hj, i32 noundef %3)
  %invariant.gep62 = getelementptr [4 x i8], ptr %i.a, i64 %i.hc ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %._crit_edge
  %i.hk = getelementptr inbounds nuw i8, ptr %.08834, i64 4 ; 2 uses
  %wide.load = load <4 x i8>, ptr %.08834, align 1, !tbaa !46
  %wide.load66 = load <4 x i8>, ptr %i.hk, align 1, !tbaa !46
  %i.hl = zext <4 x i8> %wide.load to <4 x i32>
  %i.hm = zext <4 x i8> %wide.load66 to <4 x i32>
  %i.hn = getelementptr i8, ptr %invariant.gep62, i64 16
  %wide.load67 = load <4 x i32>, ptr %invariant.gep62, align 4, !tbaa !41
  %wide.load68 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !41
  %i.ho = ashr <4 x i32> %wide.load67, splat (i32 6)
  %i.hp = ashr <4 x i32> %wide.load68, splat (i32 6)
  %i.hq = add nsw <4 x i32> %i.ho, %i.hl          ; 3 uses
  %i.hr = add nsw <4 x i32> %i.hp, %i.hm          ; 3 uses
  %5 = icmp ugt <4 x i32> %i.hq, splat (i32 255)
  %6 = icmp ugt <4 x i32> %i.hr, splat (i32 255)
  %7 = icmp sgt <4 x i32> %i.hq, splat (i32 -1)
  %8 = icmp sgt <4 x i32> %i.hr, splat (i32 -1)
  %9 = sext <4 x i1> %7 to <4 x i8>
  %10 = sext <4 x i1> %8 to <4 x i8>
  %i.hs = trunc nuw <4 x i32> %i.hq to <4 x i8>
  %i.ht = trunc nuw <4 x i32> %i.hr to <4 x i8>
  %11 = select <4 x i1> %5, <4 x i8> %9, <4 x i8> %i.hs
  %12 = select <4 x i1> %6, <4 x i8> %10, <4 x i8> %i.ht
  store <4 x i8> %11, ptr %.08834, align 1, !tbaa !46
  store <4 x i8> %12, ptr %i.hk, align 1, !tbaa !46
  br i1 %i.ha, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %i.hu = getelementptr inbounds nuw i8, ptr %.08834, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.08834, i64 12 ; 2 uses
  %wide.load.1 = load <4 x i8>, ptr %i.hu, align 1, !tbaa !46
  %wide.load66.1 = load <4 x i8>, ptr %i.hv, align 1, !tbaa !46
  %i.hw = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.hx = zext <4 x i8> %wide.load66.1 to <4 x i32>
  %i.hy = getelementptr i8, ptr %invariant.gep62, i64 32
  %i.hz = getelementptr i8, ptr %invariant.gep62, i64 48
  %wide.load67.1 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !41
  %wide.load68.1 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !41
  %i.ia = ashr <4 x i32> %wide.load67.1, splat (i32 6)
  %i.ib = ashr <4 x i32> %wide.load68.1, splat (i32 6)
  %i.ic = add nsw <4 x i32> %i.ia, %i.hw          ; 3 uses
  %i.id = add nsw <4 x i32> %i.ib, %i.hx          ; 3 uses
  %13 = icmp ugt <4 x i32> %i.ic, splat (i32 255)
  %14 = icmp ugt <4 x i32> %i.id, splat (i32 255)
  %15 = icmp sgt <4 x i32> %i.ic, splat (i32 -1)
  %16 = icmp sgt <4 x i32> %i.id, splat (i32 -1)
  %17 = sext <4 x i1> %15 to <4 x i8>
  %18 = sext <4 x i1> %16 to <4 x i8>
  %i.ie = trunc nuw <4 x i32> %i.ic to <4 x i8>
  %i.if = trunc nuw <4 x i32> %i.id to <4 x i8>
  %19 = select <4 x i1> %13, <4 x i8> %17, <4 x i8> %i.ie
  %20 = select <4 x i1> %14, <4 x i8> %18, <4 x i8> %i.if
  store <4 x i8> %19, ptr %i.hu, align 1, !tbaa !46
  store <4 x i8> %20, ptr %i.hv, align 1, !tbaa !46
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %._crit_edge, %middle.block
  %indvars.iv45.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph32.new:                                     ; preds = %.prol.loopexit, %.lr.ph32.new
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.1, %.lr.ph32.new ], [ %indvars.iv40.unr, %.prol.loopexit ] ; 4 uses
  %i.ig = mul nuw nsw i64 %indvars.iv40, %i.gw
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ig ; 2 uses
  %i.ih = load i32, ptr %gep, align 4, !tbaa !41
  %gep61 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep60, i64 %indvars.iv40 ; 2 uses
  %i.ii = load i32, ptr %gep61, align 4, !tbaa !41
  store i32 %i.ih, ptr %gep61, align 4, !tbaa !41
  store i32 %i.ii, ptr %gep, align 4, !tbaa !41
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.ij = mul nuw nsw i64 %indvars.iv.next41, %i.gw
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ij ; 2 uses
  %i.ik = load i32, ptr %gep.1, align 4, !tbaa !41
  %gep61.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep60, i64 %indvars.iv.next41 ; 2 uses
  %i.il = load i32, ptr %gep61.1, align 4, !tbaa !41
  store i32 %i.ik, ptr %gep61.1, align 4, !tbaa !41
  store i32 %i.il, ptr %gep.1, align 4, !tbaa !41
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %exitcond44.not.1 = icmp eq i64 %indvars.iv.next41.1, %i.gw
  br i1 %exitcond44.not.1, label %._crit_edge, label %.lr.ph32.new, !llvm.loop !166

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.im = load i32, ptr %i.k, align 4, !tbaa !41
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds i8, ptr %.08834, i64 %i.in
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %i.gw
  br i1 %exitcond54.not, label %.thread21, label %.preheader, !llvm.loop !167

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %scalar.ph ], [ %indvars.iv45.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.08834, i64 %indvars.iv45 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !46
  %i.ir = zext i8 %i.iq to i32
  %gep63 = getelementptr [4 x i8], ptr %invariant.gep62, i64 %indvars.iv45
  %i.is = load i32, ptr %gep63, align 4, !tbaa !41
  %i.it = ashr i32 %i.is, 6
  %i.iu = add nsw i32 %i.it, %i.ir                ; 3 uses
  %21 = icmp ugt i32 %i.iu, 255
  %isnotneg.i = icmp sgt i32 %i.iu, -1
  %22 = sext i1 %isnotneg.i to i8
  %i.iv = trunc nuw i32 %i.iu to i8
  %.0.i = select i1 %21, i8 %22, i8 %i.iv
  store i8 %.0.i, ptr %i.ip, align 1, !tbaa !46
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %i.gw
  br i1 %exitcond49.not, label %.loopexit, label %scalar.ph, !llvm.loop !168

.thread21:                                        ; preds = %bb.i, %.loopexit
  %.3 = phi i32 [ 0, %.loopexit ], [ -1094995529, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i8 @half_vert(ptr nofree noundef readonly byval(%struct.BlockXY) align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %.sroa.069.0.copyload = load i32, ptr %0, align 8, !tbaa !41
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.470.0.copyload = load i32, ptr %.sroa.470.0..sroa_idx, align 4, !tbaa !41
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.571.0.copyload = load i32, ptr %.sroa.571.0..sroa_idx, align 8, !tbaa !41 ; 3 uses
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.672.0.copyload = load i32, ptr %.sroa.672.0..sroa_idx, align 4, !tbaa !41 ; 3 uses
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.773.0.copyload = load i32, ptr %.sroa.773.0..sroa_idx, align 8, !tbaa !41 ; 13 uses
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.874.0.copyload = load i32, ptr %.sroa.874.0..sroa_idx, align 4, !tbaa !41 ; 12 uses
  %.sroa.1175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1175.0.copyload = load i32, ptr %.sroa.1175.0..sroa_idx, align 8, !tbaa !41 ; 6 uses
  %.sroa.1277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.1277.0.copyload = load ptr, ptr %.sroa.1277.0..sroa_idx, align 8, !tbaa !55 ; 3 uses
  %.sroa.1378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.1378.0.copyload = load i32, ptr %.sroa.1378.0..sroa_idx, align 8, !tbaa !41 ; 3 uses
  %i.a = add nsw i32 %.sroa.874.0.copyload, -1    ; 3 uses
  %i.b = add nsw i32 %.sroa.874.0.copyload, 1     ; 5 uses
  %i.c = icmp eq i32 %.sroa.773.0.copyload, -1    ; 6 uses
  %.not.i = icmp sgt i32 %.sroa.874.0.copyload, %.sroa.1175.0.copyload
  %or.cond.not = select i1 %i.c, i1 %.not.i, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %.sroa.1175.0.copyload, -1
  br label %pget.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %.sroa.773.0.copyload, -2
  %i.f = icmp sgt i32 %.sroa.874.0.copyload, -1
  %or.cond.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.i, label %pget.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %i.a, -2
  %or.cond5.i = select i1 %i.c, i1 %i.g, i1 false
  br i1 %or.cond5.i, label %pget.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i32 %.sroa.773.0.copyload, -2
  %i.i = icmp eq i32 %.sroa.874.0.copyload, 0
  %or.cond8.i = select i1 %i.h, i1 %i.i, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond8.i, i32 0, i32 %i.a
  %spec.select13.i = select i1 %or.cond8.i, i32 -1, i32 %.sroa.773.0.copyload
  br label %pget.exit

pget.exit:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.12.0.i = phi i32 [ %i.d, %bb.b ], [ %spec.select.i, %bb.e ], [ %i.a, %bb.c ], [ -1, %bb.d ]
  %.sroa.7.0.i = phi i32 [ -1, %bb.b ], [ %spec.select13.i, %bb.e ], [ %.sroa.773.0.copyload, %bb.c ], [ 0, %bb.d ]
  %i.j = add nsw i32 %.sroa.12.0.i, %.sroa.672.0.copyload ; 2 uses
  %i.k = add nsw i32 %.sroa.470.0.copyload, -1    ; 3 uses
  %i.l = icmp slt i32 %i.j, 0
  %..i14.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.k)
  %.0.i15.i = select i1 %i.l, i32 0, i32 %..i14.i
  %i.m = add nsw i32 %.sroa.7.0.i, %.sroa.571.0.copyload ; 2 uses
  %i.n = add nsw i32 %.sroa.069.0.copyload, -1    ; 3 uses
  %i.o = icmp slt i32 %i.m, 0
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.n)
  %.0.i.i = select i1 %i.o, i32 0, i32 %..i.i
  %i.p = mul nsw i32 %.0.i15.i, %.sroa.1378.0.copyload
  %i.q = add nsw i32 %i.p, %.0.i.i
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %.sroa.1277.0.copyload, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !46
  %.not.i28 = icmp sge i32 %.sroa.874.0.copyload, %.sroa.1175.0.copyload
  %or.cond81.not = select i1 %i.c, i1 %.not.i28, i1 false
  br i1 %or.cond81.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %pget.exit
  %i.u = add nsw i32 %.sroa.1175.0.copyload, -1
  br label %pget.exit29

bb.g:                                             ; preds = %pget.exit
  %i.v = icmp sgt i32 %.sroa.773.0.copyload, -2
  %i.w = icmp sgt i32 %.sroa.874.0.copyload, -2
  %or.cond.i16 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i16, label %pget.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i32 %.sroa.874.0.copyload, -2
  %or.cond5.i17 = select i1 %i.c, i1 %i.x, i1 false
  br i1 %or.cond5.i17, label %pget.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %.sroa.773.0.copyload, -2
  %i.z = icmp eq i32 %.sroa.874.0.copyload, -1
  %or.cond8.i18 = select i1 %i.y, i1 %i.z, i1 false ; 2 uses
  %spec.select.i19 = select i1 %or.cond8.i18, i32 0, i32 %.sroa.874.0.copyload
  %spec.select13.i20 = select i1 %or.cond8.i18, i32 -1, i32 %.sroa.773.0.copyload
  br label %pget.exit29

pget.exit29:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.12.0.i21 = phi i32 [ %i.u, %bb.f ], [ %spec.select.i19, %bb.i ], [ %.sroa.874.0.copyload, %bb.g ], [ -1, %bb.h ]
  %.sroa.7.0.i22 = phi i32 [ -1, %bb.f ], [ %spec.select13.i20, %bb.i ], [ %.sroa.773.0.copyload, %bb.g ], [ 0, %bb.h ]
  %i.aa = add nsw i32 %.sroa.12.0.i21, %.sroa.672.0.copyload ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %..i14.i23 = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.k)
  %.0.i15.i24 = select i1 %i.ab, i32 0, i32 %..i14.i23
  %i.ac = add nsw i32 %.sroa.7.0.i22, %.sroa.571.0.copyload ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  %..i.i25 = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.n)
  %.0.i.i26 = select i1 %i.ad, i32 0, i32 %..i.i25
  %i.ae = mul nsw i32 %.0.i15.i24, %.sroa.1378.0.copyload
  %i.af = add nsw i32 %i.ae, %.0.i.i26
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %.sroa.1277.0.copyload, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !46
  %.not.i57 = icmp sge i32 %i.b, %.sroa.1175.0.copyload
  %or.cond83.not = select i1 %i.c, i1 %.not.i57, i1 false
  br i1 %or.cond83.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %pget.exit29
  %i.aj = add nsw i32 %.sroa.1175.0.copyload, -1
  br label %pget.exit58

bb.k:                                             ; preds = %pget.exit29
  %i.ak = icmp sgt i32 %.sroa.773.0.copyload, -2
  %i.al = icmp sgt i32 %.sroa.874.0.copyload, -3
  %or.cond.i45 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i45, label %pget.exit58, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i32 %i.b, -2
  %or.cond5.i46 = select i1 %i.c, i1 %i.am, i1 false
  br i1 %or.cond5.i46, label %pget.exit58, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = icmp eq i32 %.sroa.773.0.copyload, -2
  %i.ao = icmp eq i32 %i.b, -1
  %or.cond8.i47 = select i1 %i.an, i1 %i.ao, i1 false ; 2 uses
  %spec.select.i48 = select i1 %or.cond8.i47, i32 0, i32 %i.b
  %spec.select13.i49 = select i1 %or.cond8.i47, i32 -1, i32 %.sroa.773.0.copyload
  br label %pget.exit58

pget.exit58:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.12.0.i50 = phi i32 [ %i.aj, %bb.j ], [ %spec.select.i48, %bb.m ], [ %i.b, %bb.k ], [ -1, %bb.l ]
  %.sroa.7.0.i51 = phi i32 [ -1, %bb.j ], [ %spec.select13.i49, %bb.m ], [ %.sroa.773.0.copyload, %bb.k ], [ 0, %bb.l ]
  %i.ap = zext i8 %i.ai to i16
  %i.aq = zext i8 %i.t to i16
  %i.ar = add nsw i32 %.sroa.12.0.i50, %.sroa.672.0.copyload ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  %..i14.i52 = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.k)
  %.0.i15.i53 = select i1 %i.as, i32 0, i32 %..i14.i52
  %i.at = add nsw i32 %.sroa.7.0.i51, %.sroa.571.0.copyload ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  %..i.i54 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.n)
  %.0.i.i55 = select i1 %i.au, i32 0, i32 %..i.i54
  %i.av = mul nsw i32 %.0.i15.i53, %.sroa.1378.0.copyload
  %i.aw = add nsw i32 %i.av, %.0.i.i55
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.sroa.1277.0.copyload, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !46
  %i.ba = zext i8 %i.az to i16
  %reass.add.i = shl nuw nsw i16 %i.ap, 1
  %i.bb = add nuw nsw i16 %reass.add.i, %i.aq
  %i.bc = add nuw nsw i16 %i.bb, %i.ba
  %i.bd = lshr i16 %i.bc, 1
  %i.be = add nuw nsw i16 %i.bd, 1
  %i.bf = lshr i16 %i.be, 1
  %i.bg = trunc nuw i16 %i.bf to i8
  ret i8 %i.bg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i8 @half_horz(ptr nofree noundef readonly byval(%struct.BlockXY) align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %.sroa.069.0.copyload = load i32, ptr %0, align 8, !tbaa !41
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.470.0.copyload = load i32, ptr %.sroa.470.0..sroa_idx, align 4, !tbaa !41
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.571.0.copyload = load i32, ptr %.sroa.571.0..sroa_idx, align 8, !tbaa !41 ; 3 uses
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.672.0.copyload = load i32, ptr %.sroa.672.0..sroa_idx, align 4, !tbaa !41 ; 3 uses
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.773.0.copyload = load i32, ptr %.sroa.773.0..sroa_idx, align 8, !tbaa !41 ; 10 uses
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.1074.0.copyload = load i32, ptr %.sroa.1074.0..sroa_idx, align 4, !tbaa !41 ; 16 uses
  %.sroa.1175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1175.0.copyload = load i32, ptr %.sroa.1175.0..sroa_idx, align 8, !tbaa !41 ; 4 uses
  %.sroa.1277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.1277.0.copyload = load ptr, ptr %.sroa.1277.0..sroa_idx, align 8, !tbaa !55 ; 3 uses
  %.sroa.1378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.1378.0.copyload = load i32, ptr %.sroa.1378.0..sroa_idx, align 8, !tbaa !41 ; 3 uses
  %i.a = add nsw i32 %.sroa.773.0.copyload, -1    ; 3 uses
  %i.b = add nsw i32 %.sroa.773.0.copyload, 1     ; 4 uses
  %i.c = icmp eq i32 %.sroa.773.0.copyload, 0     ; 2 uses
end_hunk_0
begin_hunk_1_@half_horz:bb.a
  %.0.i.i26 = select i1 %i.ae, i32 0, i32 %..i.i25
  %i.af = mul nsw i32 %.0.i15.i24, %.sroa.1378.0.copyload
  %i.ag = add nsw i32 %i.af, %.0.i.i26
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %.sroa.1277.0.copyload, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !46
  %i.ak = icmp eq i32 %i.b, -1                    ; 2 uses
  %or.cond83.not = select i1 %i.ak, i1 %.not.i, i1 false
  br i1 %or.cond83.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %pget.exit29
  %i.al = add nsw i32 %.sroa.1175.0.copyload, -1
  br label %pget.exit58

bb.k:                                             ; preds = %pget.exit29
  %i.am = icmp sgt i32 %.sroa.773.0.copyload, -3
  %i.an = icmp sgt i32 %.sroa.1074.0.copyload, -2
  %or.cond.i45 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i45, label %pget.exit58, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i32 %.sroa.1074.0.copyload, -2
  %or.cond5.i46 = select i1 %i.ak, i1 %i.ao, i1 false
  br i1 %or.cond5.i46, label %pget.exit58, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i32 %i.b, -2
  %i.aq = icmp eq i32 %.sroa.1074.0.copyload, -1
  %or.cond8.i47 = select i1 %i.ap, i1 %i.aq, i1 false ; 2 uses
  %spec.select.i48 = select i1 %or.cond8.i47, i32 0, i32 %.sroa.1074.0.copyload
  %spec.select13.i49 = select i1 %or.cond8.i47, i32 -1, i32 %i.b
  br label %pget.exit58

pget.exit58:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.12.0.i50 = phi i32 [ %i.al, %bb.j ], [ %spec.select.i48, %bb.m ], [ %.sroa.1074.0.copyload, %bb.k ], [ -1, %bb.l ]
  %.sroa.7.0.i51 = phi i32 [ -1, %bb.j ], [ %spec.select13.i49, %bb.m ], [ %i.b, %bb.k ], [ 0, %bb.l ]
  %i.ar = zext i8 %i.aj to i16
  %i.as = zext i8 %i.t to i16
  %i.at = add nsw i32 %.sroa.12.0.i50, %.sroa.672.0.copyload ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  %..i14.i52 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.k)
  %.0.i15.i53 = select i1 %i.au, i32 0, i32 %..i14.i52
  %i.av = add nsw i32 %.sroa.7.0.i51, %.sroa.571.0.copyload ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  %..i.i54 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.n)
  %.0.i.i55 = select i1 %i.aw, i32 0, i32 %..i.i54
  %i.ax = mul nsw i32 %.0.i15.i53, %.sroa.1378.0.copyload
  %i.ay = add nsw i32 %i.ax, %.0.i.i55
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %.sroa.1277.0.copyload, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bc = zext i8 %i.bb to i16
  %reass.add.i = shl nuw nsw i16 %i.ar, 1
  %i.bd = add nuw nsw i16 %reass.add.i, %i.as
  %i.be = add nuw nsw i16 %i.bd, %i.bc
  %i.bf = lshr i16 %i.be, 1
  %i.bg = add nuw nsw i16 %i.bf, 1
  %i.bh = lshr i16 %i.bg, 1
  %i.bi = trunc nuw i16 %i.bh to i8
  ret i8 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @idct(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 4, 17) %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %1, 4
  %i.b = load i32, ptr %0, align 4, !tbaa !41     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41   ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.d, %i.b                       ; 2 uses
  %i.f = sub i32 %i.b, %i.d                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41   ; 2 uses
  %i.k = ashr i32 %i.j, 1
  %i.l = add i32 %i.k, %i.h                       ; 2 uses
  %i.m = ashr i32 %i.h, 1
  %i.n = sub i32 %i.m, %i.j                       ; 2 uses
  %i.o = add i32 %i.l, %i.e
  store i32 %i.o, ptr %0, align 4, !tbaa !41
  %i.p = add i32 %i.n, %i.f
  store i32 %i.p, ptr %i.g, align 4, !tbaa !41
  %i.q = sub i32 %i.f, %i.n
  store i32 %i.q, ptr %i.c, align 4, !tbaa !41
  %i.r = sub i32 %i.e, %i.l
  store i32 %i.r, ptr %i.i, align 4, !tbaa !41
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !41   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41   ; 2 uses
  %i.w = add i32 %i.t, %i.b                       ; 2 uses
  %i.x = sub i32 %i.b, %i.t                       ; 2 uses
  %i.y = ashr i32 %i.v, 1
  %i.z = add i32 %i.y, %i.d                       ; 2 uses
  %i.aa = ashr i32 %i.d, 1
  %i.ab = sub i32 %i.aa, %i.v                     ; 2 uses
  %i.ac = add i32 %i.z, %i.w                      ; 2 uses
  %i.ad = add i32 %i.ab, %i.x                     ; 2 uses
  %i.ae = sub i32 %i.x, %i.ab                     ; 2 uses
  %i.af = sub i32 %i.w, %i.z                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !41 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !41 ; 4 uses
  %i.am = ashr i32 %i.al, 1
  %.neg53 = add i32 %i.aj, %i.ah
  %i.an = add i32 %i.al, %i.am
  %i.ao = sub i32 %.neg53, %i.an                  ; 2 uses
  %i.ap = sub i32 %i.ah, %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !41 ; 4 uses
  %i.as = add i32 %i.ap, %i.ar
  %i.at = ashr i32 %i.ar, 1
  %i.au = add i32 %i.as, %i.at                    ; 2 uses
  %i.av = ashr i32 %i.ah, 1
  %i.aw = add i32 %i.av, %i.ah
  %i.ax = add i32 %i.aw, %i.al
  %i.ay = sub i32 %i.ar, %i.ax                    ; 2 uses
  %i.az = ashr i32 %i.aj, 1
  %i.ba = add i32 %i.al, %i.aj
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = add i32 %i.bb, %i.ar                    ; 2 uses
  %i.bd = ashr i32 %i.bc, 2
  %i.be = add i32 %i.bd, %i.ay                    ; 2 uses
  %i.bf = ashr i32 %i.au, 2
  %i.bg = add i32 %i.bf, %i.ao                    ; 2 uses
  %i.bh = ashr i32 %i.ao, 2
  %i.bi = sub i32 %i.bh, %i.au                    ; 2 uses
  %i.bj = ashr i32 %i.ay, 2
  %i.bk = sub i32 %i.bc, %i.bj                    ; 2 uses
  %i.bl = add i32 %i.bk, %i.ac
  store i32 %i.bl, ptr %0, align 4, !tbaa !41
  %i.bm = add i32 %i.bi, %i.ad
  store i32 %i.bm, ptr %i.ai, align 4, !tbaa !41
  %i.bn = add i32 %i.bg, %i.ae
  store i32 %i.bn, ptr %i.c, align 4, !tbaa !41
  %i.bo = add i32 %i.be, %i.af
  store i32 %i.bo, ptr %i.ak, align 4, !tbaa !41
  %i.bp = sub i32 %i.af, %i.be
  store i32 %i.bp, ptr %i.s, align 4, !tbaa !41
  %i.bq = sub i32 %i.ae, %i.bg
  store i32 %i.bq, ptr %i.aq, align 4, !tbaa !41
  %i.br = sub i32 %i.ad, %i.bi
  store i32 %i.br, ptr %i.u, align 4, !tbaa !41
  %i.bs = sub i32 %i.ac, %i.bk
  store i32 %i.bs, ptr %i.ag, align 4, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 112}
!30 = !{!27, !6, i64 116}
!31 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!"p1 _ZTS8MotionXY", !9, i64 0}
!33 = !{!"BswapDSPContext", !9, i64 0, !9, i64 8}
!34 = !{!"MobiClipContext", !5, i64 0, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !31, i64 64, !14, i64 88, !6, i64 96, !5, i64 100, !5, i64 612, !32, i64 648, !6, i64 656, !33, i64 664}
!35 = !{!34, !32, i64 648}
!36 = !{!34, !6, i64 656}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!34, !6, i64 48}
!41 = !{!6, !6, i64 0}
!42 = !{!31, !14, i64 0}
!43 = !{!31, !6, i64 12}
!44 = !{!31, !6, i64 16}
!45 = !{!31, !6, i64 8}
!46 = !{!5, !5, i64 0}
!47 = !{!34, !6, i64 52}
!48 = !{!34, !6, i64 56}
!49 = !{!34, !6, i64 60}
!50 = !{!"MotionXY", !6, i64 0, !6, i64 4}
!51 = !{!50, !6, i64 0}
!52 = !{!50, !6, i64 4}
!53 = !{!"p1 _ZTS7VLCElem", !9, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!14, !14, i64 0}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !37}
!60 = !{!27, !6, i64 136}
!61 = distinct !{!61, !37}
!62 = distinct !{!62, !37, !79}
!63 = distinct !{!63, !37}
!64 = distinct !{!64, !37}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37, !79}
!68 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!69 = !{!68, !6, i64 32}
!70 = !{!34, !9, i64 672}
!71 = !{!34, !14, i64 88}
!72 = !{!68, !14, i64 24}
!73 = !{!"p2 omnipotent char", !25, i64 0}
!74 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!75 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!76 = !{!"AVFrame", !5, i64 0, !5, i64 64, !73, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !74, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !75, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!77 = !{!76, !6, i64 120}
!78 = !{!76, !6, i64 276}
!79 = !{!"llvm.loop.unswitch.partial.disable"}
!80 = !{!27, !6, i64 152}
!81 = distinct !{!81, !37}
!82 = !{!34, !6, i64 96}
!83 = distinct !{!83, !37}
!84 = distinct !{!84, !37}
!85 = distinct !{!85, !37}
!86 = distinct !{!86, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !37, !56, !57}
!90 = distinct !{!90, !37, !56, !57}
!91 = distinct !{!91, !58}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37, !56}
!94 = distinct !{!94, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !37, !56, !57}
!98 = distinct !{!98, !37, !56, !57}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37, !56}
!101 = distinct !{!101, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !101}
!105 = distinct !{!105, !37, !56, !57}
!106 = distinct !{!106, !37, !56, !57}
!107 = distinct !{!107, !37}
!108 = distinct !{!108, !37, !56}
!109 = distinct !{!109, !"LVerDomain"}
!110 = distinct !{!110, !109}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !109}
!113 = distinct !{!113, !37, !56, !57}
!114 = distinct !{!114, !37, !56, !57}
!115 = distinct !{!115, !37}
!116 = distinct !{!116, !37, !56}
!117 = distinct !{!117, !37}
!118 = !{!87}
!119 = !{!88}
!120 = !{!"branch_weights", i32 4, i32 28}
!121 = !{!95}
!122 = !{!96}
!123 = !{!"branch_weights", i32 8, i32 24}
!124 = !{!102}
!125 = !{!103}
!126 = !{!104}
!127 = !{!103, !102}
!128 = !{!110}
!129 = !{!111}
!130 = !{!112}
!131 = !{!111, !110}
!132 = distinct !{!132, !37}
!133 = distinct !{!133, !37}
!134 = distinct !{!134, !37}
!135 = distinct !{!135, !37}
!136 = distinct !{!136, !37, !57, !56}
!137 = distinct !{!137, !37, !56}
!138 = distinct !{!138, !"LVerDomain"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !138}
!142 = distinct !{!142, !37}
!143 = distinct !{!143, !37, !56}
!144 = distinct !{!144, !37}
!145 = distinct !{!145, !58}
!146 = distinct !{!146, !37, !57, !56}
!147 = distinct !{!147, !58}
!148 = distinct !{!148, !37, !57, !56}
!149 = distinct !{!149, !37}
!150 = distinct !{!150, !37, !163}
!151 = distinct !{!151, !37, !163}
!152 = distinct !{!152, !37, !163}
!153 = distinct !{!153, !37, !163}
!154 = distinct !{!154, !37, !163}
!155 = distinct !{!155, !58}
!156 = !{!139}
!157 = !{!140}
!158 = !{!141}
!159 = !{!140, !139}
!160 = !{!"BlockXY", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !14, i64 32, !6, i64 40}
!161 = !{!160, !6, i64 16}
!162 = !{!160, !6, i64 20}
!163 = !{!"llvm.loop.peeled.count", i32 1}
!164 = distinct !{!164, !37}
!165 = distinct !{!165, !37}
!166 = distinct !{!166, !37}
!167 = distinct !{!167, !37}
!168 = distinct !{!168, !37, !57, !56}
end_hunk_1
