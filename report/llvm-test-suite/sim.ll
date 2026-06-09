inline.NumInlined: 13
inline.NumDeleted: 1
begin_hunk_0_@big_pass:bb.a
bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !45
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp sgt i64 %indvars.iv229, %i.ek
  br i1 %i.el, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.bj, ptr %i.ei, align 4, !tbaa !45
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 28 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !46
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv224, %i.eo
  br i1 %i.ep, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.cy, ptr %i.em, align 4, !tbaa !46
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !47
  %i.es = sext i32 %i.er to i64
  %i.et = icmp sgt i64 %indvars.iv224, %i.es
  br i1 %i.et, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  store i32 %i.cy, ptr %i.eq, align 4, !tbaa !47
  br label %bb.ap

.critedge.i:                                      ; preds = %bb.ad, %bb.aa
  %i.eu = icmp eq i32 %i.bl, %4
  br i1 %i.eu, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.critedge.i
  %i.ev = add nsw i32 %i.bl, 1                    ; 2 uses
  store i32 %i.ev, ptr @numnode, align 4, !tbaa !4
  %i.ew = sext i32 %i.bl to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ew
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge.i
  %i.ey = phi i32 [ %i.ev, %bb.an ], [ %4, %.critedge.i ]
  %storemerge.in.i = phi ptr [ %i.ex, %bb.an ], [ @low, %.critedge.i ]
  %storemerge.i = load ptr, ptr %storemerge.in.i, align 8, !tbaa !34 ; 11 uses
  store ptr %storemerge.i, ptr @most, align 8, !tbaa !34
  store i32 %.4158, ptr %storemerge.i, align 4, !tbaa !37
  %i.ez = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4
  store i32 %.3148, ptr %i.ez, align 4, !tbaa !40
  %i.fa = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8
  store i32 %.4, ptr %i.fa, align 4, !tbaa !41
  %i.fb = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 12
  store i32 %i.bj, ptr %i.fb, align 4, !tbaa !42
  %i.fc = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  store i32 %i.cy, ptr %i.fc, align 4, !tbaa !43
  %i.fd = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  store i32 %i.bj, ptr %i.fd, align 4, !tbaa !45
  %i.fe = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 20
  store i32 %i.bj, ptr %i.fe, align 4, !tbaa !44
  %i.ff = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 32
  store i32 %i.cy, ptr %i.ff, align 4, !tbaa !47
  %i.fg = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 28
  store i32 %i.cy, ptr %i.fg, align 4, !tbaa !46
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.al
  %i.fh = phi i32 [ %i.bl, %bb.al ], [ %i.bl, %bb.am ], [ %i.ey, %bb.ao ] ; 2 uses
  %i.fi = phi ptr [ %i.dz, %bb.al ], [ %i.dz, %bb.am ], [ %storemerge.i, %bb.ao ] ; 2 uses
  %i.fj = icmp eq i32 %i.fh, %4
  br i1 %i.fj, label %bb.aq, label %addnode.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fk = icmp ne ptr %i.bm, %i.fi
  %i.fl = icmp ne ptr %i.bm, null
  %or.cond.i = and i1 %i.fl, %i.fk
  br i1 %or.cond.i, label %.loopexit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fm = load ptr, ptr %i.bh, align 8, !tbaa !34 ; 4 uses
  store ptr %i.fm, ptr @low, align 8, !tbaa !34
  br i1 %i.ae, label %.lr.ph50.i.preheader, label %.loopexit.i

.lr.ph50.i.preheader:                             ; preds = %bb.ar
  br i1 %i.ai, label %.lr.ph50.i.epil.preheader, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.preheader, %bb.au
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i.1, %bb.au ], [ 1, %.lr.ph50.i.preheader ] ; 3 uses
  %i.fn = phi ptr [ %i.ga, %bb.au ], [ %i.fm, %.lr.ph50.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.au ], [ 0, %.lr.ph50.i.preheader ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv52.i
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !34 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !37
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !37
  %i.fs = icmp slt i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.as, label %.lr.ph50.i.1

bb.as:                                            ; preds = %.lr.ph50.i
  store ptr %i.fp, ptr @low, align 8, !tbaa !34
  br label %.lr.ph50.i.1

.lr.ph50.i.1:                                     ; preds = %bb.as, %.lr.ph50.i
  %i.ft = phi ptr [ %i.fn, %.lr.ph50.i ], [ %i.fp, %bb.as ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv52.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !34 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !37
  %i.fy = load i32, ptr %i.ft, align 4, !tbaa !37
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph50.i.1
  store ptr %i.fw, ptr @low, align 8, !tbaa !34
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph50.i.1
  %i.ga = phi ptr [ %i.ft, %.lr.ph50.i.1 ], [ %i.fw, %bb.at ] ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph50.i, !llvm.loop !56

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.au
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph50.i.epil.preheader

.lr.ph50.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph50.i.preheader
  %indvars.iv52.i.epil.init = phi i64 [ 1, %.lr.ph50.i.preheader ], [ %indvars.iv.next53.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.fm, %.lr.ph50.i.preheader ], [ %i.ga, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod257)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv52.i.epil.init
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !34 ; 3 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !37
  %i.ge = load i32, ptr %.epil.init, align 4, !tbaa !37
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %bb.av, label %.loopexit.i

bb.av:                                            ; preds = %.lr.ph50.i.epil.preheader
  store ptr %i.gc, ptr @low, align 8, !tbaa !34
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.av, %.lr.ph50.i.epil.preheader, %bb.ar, %bb.aq
  %i.gg = phi ptr [ %i.bm, %bb.aq ], [ %i.fm, %bb.ar ], [ %i.ga, %.loopexit.i.loopexit.unr-lcssa ], [ %.epil.init, %.lr.ph50.i.epil.preheader ], [ %i.gc, %bb.av ] ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !37
  br label %addnode.exit

addnode.exit:                                     ; preds = %bb.ap, %.loopexit.i
  %i.gi = phi ptr [ %i.gg, %.loopexit.i ], [ %i.bm, %bb.ap ]
  %.037.i = phi i32 [ %i.gh, %.loopexit.i ], [ %.037.i194199, %bb.ap ] ; 2 uses
  store i32 %.037.i, ptr @min, align 4, !tbaa !4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.w, %addnode.exit
  %i.gj = phi ptr [ %i.bm, %bb.w ], [ %i.gi, %addnode.exit ]
  %i.gk = phi i32 [ %i.bl, %bb.w ], [ %i.fh, %addnode.exit ]
  %i.gl = phi ptr [ %i.bk, %bb.w ], [ %i.fi, %addnode.exit ]
  %.037.i193 = phi i32 [ %.037.i194199, %bb.w ], [ %.037.i, %addnode.exit ]
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %.loopexit, label %bb.f, !llvm.loop !57

._crit_edge217:                                   ; preds = %.loopexit, %.preheader
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @locate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @nn, align 4, !tbaa !4     ; 11 uses
  %i.b = load i32, ptr @n1, align 4, !tbaa !4     ; 9 uses
  %.not619 = icmp slt i32 %i.a, %i.b
  %.pre = load i32, ptr @mm, align 4              ; 8 uses
  %.pre760.pre = load i32, ptr @q, align 4        ; 2 uses
  %.pre764.pre = load ptr, ptr @CC, align 8       ; 6 uses
  %.pre765.pre = load ptr, ptr @RR, align 8       ; 9 uses
  %.pre766.pre = load ptr, ptr @EE, align 8       ; 9 uses
  %.pre767.pre = load ptr, ptr @DD, align 8       ; 9 uses
  %.pre768.pre = load ptr, ptr @SS, align 8       ; 9 uses
  %.pre769.pre = load ptr, ptr @FF, align 8       ; 9 uses
  br i1 %.not619, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = sub nsw i32 0, %.pre760.pre              ; 4 uses
  %i.d = icmp eq i32 %2, 2
  %i.e = add nsw i32 %.pre, 1                     ; 5 uses
  %i.f = sext i32 %i.a to i64                     ; 10 uses
  %i.g = sub i32 %i.a, %i.b
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = sub nsw i64 %i.f, %i.h
  %i.k = shl nsw i64 %i.j, 2
  %scevgep745 = getelementptr i8, ptr %.pre764.pre, i64 %i.k
  %i.l = add nuw nsw i64 %i.i, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep745, i8 0, i64 %i.l, i1 false), !tbaa !4
  br i1 %i.d, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.m = sext i32 %.pre to i64                    ; 2 uses
  %i.n = sext i32 %i.b to i64                     ; 2 uses
  %3 = add nsw i64 %i.f, 1
  %4 = sub nsw i64 %3, %i.n                       ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader923, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %4, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.o = sub nsw i64 %i.f, %n.vec
  %broadcast.splatinsert873 = insertelement <4 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat874 = shufflevector <4 x i64> %broadcast.splatinsert873, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert875 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat876 = shufflevector <4 x i32> %broadcast.splatinsert875, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert877 = insertelement <4 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat878 = shufflevector <4 x i64> %broadcast.splatinsert877, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.p = add nsw <4 x i64> %broadcast.splat878, <i64 0, i64 -1, i64 -2, i64 -3>
  %broadcast.splatinsert879 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat880 = shufflevector <4 x i32> %broadcast.splatinsert879, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.q = add <4 x i32> %broadcast.splat880, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %i.p, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind881 = phi <4 x i32> [ %i.q, %vector.ph ], [ %vec.ind.next884, %vector.body ] ; 3 uses
  %i.r = sub i64 %i.f, %index                     ; 5 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12
  %reverse882 = shufflevector <4 x i32> %vec.ind881, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i32> %reverse882, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %i.r
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  store <4 x i32> %broadcast.splat, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %i.r
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -12
  store <4 x i32> %reverse882, ptr %i.x, align 4, !tbaa !4
  %i.y = icmp sgt <4 x i64> %vec.ind, %broadcast.splat874
  %i.z = select <4 x i1> %i.y, <4 x i32> %broadcast.splat876, <4 x i32> %vec.ind881
  %i.aa = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %i.r
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %reverse883 = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i32> %reverse883, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %i.r
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12
  store <4 x i32> %reverse883, ptr %i.ad, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 -4)
  %vec.ind.next884 = add <4 x i32> %vec.ind881, splat (i32 -4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader923

.lr.ph.split.preheader923:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.f, %.lr.ph.split.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.af = sext i32 %i.b to i64                    ; 2 uses
  %5 = add nsw i64 %i.f, 1
  %6 = sub nsw i64 %5, %i.af                      ; 3 uses
  %min.iters.check886 = icmp ult i64 %6, 8
  br i1 %min.iters.check886, label %.lr.ph.split.us.preheader922, label %vector.ph887

vector.ph887:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec889 = and i64 %6, -8                      ; 3 uses
  %broadcast.splatinsert890 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat891 = shufflevector <4 x i32> %broadcast.splatinsert890, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert892 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat893 = shufflevector <4 x i32> %broadcast.splatinsert892, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ag = sub nsw i64 %i.f, %n.vec889
  %broadcast.splatinsert896 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat897 = shufflevector <4 x i32> %broadcast.splatinsert896, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ah = add <4 x i32> %broadcast.splat897, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body898

vector.body898:                                   ; preds = %vector.body898, %vector.ph887
  %index899 = phi i64 [ 0, %vector.ph887 ], [ %index.next903, %vector.body898 ] ; 2 uses
  %vec.ind900 = phi <4 x i32> [ %i.ah, %vector.ph887 ], [ %vec.ind.next904, %vector.body898 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind900, splat (i32 -4)
  %i.ai = sub i64 %i.f, %index899                 ; 5 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -12
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -28
  %reverse901 = shufflevector <4 x i32> %vec.ind900, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %reverse902 = shufflevector <4 x i32> %step.add, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i32> %reverse901, ptr %i.ak, align 4, !tbaa !4
  store <4 x i32> %reverse902, ptr %i.al, align 4, !tbaa !4
  %i.am = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -12
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -28
  store <4 x i32> %broadcast.splat893, ptr %i.an, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat893, ptr %i.ao, align 4, !tbaa !4
  %i.ap = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %i.ai ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -12
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -28
  store <4 x i32> %reverse901, ptr %i.aq, align 4, !tbaa !4
  store <4 x i32> %reverse902, ptr %i.ar, align 4, !tbaa !4
  %i.as = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %i.ai ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -12
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -28
  store <4 x i32> %broadcast.splat891, ptr %i.at, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat891, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %i.ai ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -12
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -28
  store <4 x i32> %broadcast.splat891, ptr %i.aw, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat891, ptr %i.ax, align 4, !tbaa !4
  %index.next903 = add nuw i64 %index899, 8       ; 2 uses
  %vec.ind.next904 = add <4 x i32> %vec.ind900, splat (i32 -8)
  %i.ay = icmp eq i64 %index.next903, %n.vec889
  br i1 %i.ay, label %middle.block905, label %vector.body898, !llvm.loop !59

middle.block905:                                  ; preds = %vector.body898
  %cmp.n906 = icmp eq i64 %6, %n.vec889
  br i1 %cmp.n906, label %._crit_edge, label %.lr.ph.split.us.preheader922

.lr.ph.split.us.preheader922:                     ; preds = %.lr.ph.split.us.preheader, %middle.block905
  %indvars.iv746.ph = phi i64 [ %i.f, %.lr.ph.split.us.preheader ], [ %i.ag, %middle.block905 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader922, %.lr.ph.split.us
  %indvars.iv746 = phi i64 [ %indvars.iv.next747, %.lr.ph.split.us ], [ %indvars.iv746.ph, %.lr.ph.split.us.preheader922 ] ; 8 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %indvars.iv746
  %i.ba = trunc nsw i64 %indvars.iv746 to i32     ; 2 uses
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %indvars.iv746
  store i32 %i.c, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %indvars.iv746
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !4
  %i.bd = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %indvars.iv746
  store i32 %i.e, ptr %i.bd, align 4, !tbaa !4
  %i.be = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %indvars.iv746
  store i32 %i.e, ptr %i.be, align 4, !tbaa !4
  %indvars.iv.next747 = add nsw i64 %indvars.iv746, -1
  %.not.us.not = icmp sgt i64 %indvars.iv746, %i.af
  br i1 %.not.us.not, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !60

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader923, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader923 ] ; 9 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %indvars.iv
  %i.bg = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !4
  %i.bh = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %indvars.iv
  store i32 %i.c, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %indvars.iv
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !4
  %i.bj = icmp sgt i64 %indvars.iv, %i.m
  %spec.select862 = select i1 %i.bj, i32 %i.e, i32 %i.bg ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %indvars.iv
  store i32 %spec.select862, ptr %i.bk, align 4, !tbaa !4
  %i.bl = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %indvars.iv
  store i32 %spec.select862, ptr %i.bl, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.n
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block905, %bb.a
  %i.bm = load i32, ptr @m1, align 4, !tbaa !4    ; 5 uses
  %.not522644 = icmp slt i32 %.pre, %i.bm
  %.pre761 = load ptr, ptr @v, align 8            ; 3 uses
  %.pre762 = load i32, ptr @r, align 4            ; 6 uses
  %.pre763 = load i32, ptr @qr, align 4           ; 6 uses
  %.pre770 = load i32, ptr @min, align 4          ; 3 uses
  %.pre771 = load ptr, ptr @HH, align 8           ; 5 uses
  %.pre772 = load ptr, ptr @II, align 8           ; 5 uses
  %.pre773 = load ptr, ptr @JJ, align 8           ; 5 uses
  %.pre774 = load ptr, ptr @WW, align 8           ; 4 uses
  %.pre775 = load ptr, ptr @XX, align 8           ; 4 uses
  %.pre776 = load ptr, ptr @YY, align 8           ; 4 uses
  %.pre786 = sub nsw i32 0, %.pre760.pre          ; 3 uses
  %.pre788 = add nsw i32 %i.a, 1                  ; 8 uses
  br i1 %.not522644, label %._crit_edge.._crit_edge650_crit_edge, label %.lr.ph649

._crit_edge.._crit_edge650_crit_edge:             ; preds = %._crit_edge
  %.pre790 = sext i32 %i.a to i64
  br label %._crit_edge650

.lr.ph649:                                        ; preds = %._crit_edge
  %i.bn = icmp eq i32 %2, 2
  %i.bo = load ptr, ptr @row, align 8
  %i.bp = sext i32 %i.b to i64                    ; 7 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %.pre764.pre, i64 %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %i.bp
  %i.bs = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %i.bp
  %i.bt = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %i.bp
  %i.bu = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %i.bp
  %i.bv = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %i.bp
  %i.bw = sext i32 %i.a to i64                    ; 2 uses
  %i.bx = sext i32 %.pre to i64
  %i.by = sext i32 %i.bm to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph649, %bb.x
  %indvars.iv752 = phi i64 [ %i.bx, %.lr.ph649 ], [ %indvars.iv.next753, %bb.x ] ; 13 uses
  %.0406647 = phi i32 [ undef, %.lr.ph649 ], [ %.1407.lcssa, %bb.x ]
  %.0413646 = phi i32 [ undef, %.lr.ph649 ], [ %.1414.lcssa, %bb.x ]
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %indvars.iv752
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [1024 x i8], ptr %.pre761, i64 %i.cb
  %i.cd = icmp slt i64 %indvars.iv752, %i.bp
  %or.cond539 = or i1 %i.bn, %i.cd                ; 2 uses
  %i.ce = trunc i64 %indvars.iv752 to i32
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  %.0 = select i1 %or.cond539, i32 %i.b, i32 %i.cf ; 2 uses
  %.not533627 = icmp slt i32 %i.a, %.0
  br i1 %.not533627, label %._crit_edge640, label %.lr.ph639

.lr.ph639:                                        ; preds = %bb.b
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv752
  %i.ch = sext i32 %.0 to i64
  %i.ci = trunc nsw i64 %indvars.iv752 to i32     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph639, %bb.v
  %indvars.iv749 = phi i64 [ %i.bw, %.lr.ph639 ], [ %indvars.iv.next750, %bb.v ] ; 10 uses
  %.0386637 = phi i32 [ %.pre788, %.lr.ph639 ], [ %i.cw, %bb.v ]
  %.0390636 = phi i32 [ %i.cf, %.lr.ph639 ], [ %i.cu, %bb.v ]
  %.0394635 = phi i32 [ %.pre788, %.lr.ph639 ], [ %.1395, %bb.v ] ; 3 uses
  %.0400634 = phi i32 [ %i.ci, %.lr.ph639 ], [ %.1401, %bb.v ] ; 4 uses
  %.0424633 = phi i32 [ %.pre788, %.lr.ph639 ], [ %.3427, %bb.v ] ; 3 uses
  %.0435632 = phi i32 [ %i.ci, %.lr.ph639 ], [ %.3438, %bb.v ] ; 4 uses
  %.0447631 = phi i32 [ 0, %.lr.ph639 ], [ %i.cr, %bb.v ]
  %.0454630 = phi i32 [ %.pre786, %.lr.ph639 ], [ %.1455, %bb.v ]
  %.0460629 = phi i32 [ 0, %.lr.ph639 ], [ %.4464, %bb.v ]
  %i.cj = sub nsw i32 %.0454630, %.pre762         ; 5 uses
  %i.ck = sub nsw i32 %.0460629, %.pre763         ; 3 uses
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = icmp eq i32 %i.cj, %i.ck
  br i1 %i.cm, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.cn = icmp slt i32 %.0400634, %.0435632
  br i1 %i.cn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = icmp eq i32 %.0400634, %.0435632
  %i.cp = tail call i32 @llvm.smax.i32(i32 %.0394635, i32 %.0424633)
  %spec.select580 = select i1 %i.co, i32 %i.cp, i32 %.0394635
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %.1455 = phi i32 [ %i.cj, %bb.d ], [ %i.ck, %bb.c ], [ %i.cj, %bb.f ], [ %i.cj, %bb.e ] ; 6 uses
  %.1401 = phi i32 [ %.0400634, %bb.d ], [ %.0435632, %bb.c ], [ %.0400634, %bb.f ], [ %.0435632, %bb.e ] ; 5 uses
  %.1395 = phi i32 [ %.0394635, %bb.d ], [ %.0424633, %bb.c ], [ %spec.select580, %bb.f ], [ %.0424633, %bb.e ] ; 4 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.pre764.pre, i64 %indvars.iv749 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4  ; 2 uses
  %i.cs = sub nsw i32 %i.cr, %.pre763             ; 5 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %indvars.iv749 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4  ; 5 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %indvars.iv749 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4  ; 4 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %indvars.iv749 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = sub nsw i32 %i.cy, %.pre762             ; 3 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %indvars.iv749 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4  ; 4 uses
end_hunk_0
