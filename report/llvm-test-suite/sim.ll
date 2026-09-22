Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@big_pass:bb.a

bb.af:                                            ; preds = %bb.ae, %.loopexit46.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 20 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !39
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv240, %i.ef
  br i1 %i.eg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.bj, ptr %i.ed, align 4, !tbaa !39
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !40
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp sgt i64 %indvars.iv240, %i.ej
  br i1 %i.ek, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.bj, ptr %i.eh, align 4, !tbaa !40
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 28 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !41
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv235, %i.en
  br i1 %i.eo, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.cw, ptr %i.el, align 4, !tbaa !41
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !42
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp sgt i64 %indvars.iv235, %i.er
  br i1 %i.es, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  store i32 %i.cw, ptr %i.ep, align 4, !tbaa !42
  br label %bb.ap

.critedge.i:                                      ; preds = %bb.ad, %bb.aa
  %i.et = icmp eq i32 %i.bk, %4
  br i1 %i.et, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.critedge.i
  %i.eu = add nsw i32 %i.bk, 1                    ; 3 uses
  store i32 %i.eu, ptr @numnode, align 4, !tbaa !11
  %i.ev = sext i32 %i.bk to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ev
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge.i
  %numnode.promoted219 = phi i32 [ %i.eu, %bb.an ], [ %numnode.promoted220, %.critedge.i ]
  %i.ex = phi i32 [ %i.eu, %bb.an ], [ %4, %.critedge.i ]
  %storemerge.in.i = phi ptr [ %i.ew, %bb.an ], [ @low, %.critedge.i ]
  %storemerge.i = load ptr, ptr %storemerge.in.i, align 8, !tbaa !32 ; 11 uses
  store ptr %storemerge.i, ptr @most, align 8, !tbaa !32
  store i32 %.4157, ptr %storemerge.i, align 4, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4
  store i32 %.3147, ptr %i.ey, align 4, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 8
  store i32 %.4, ptr %i.ez, align 4, !tbaa !36
  %i.fa = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 12
  store i32 %i.bj, ptr %i.fa, align 4, !tbaa !37
  %i.fb = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  store i32 %i.cw, ptr %i.fb, align 4, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  store i32 %i.bj, ptr %i.fc, align 4, !tbaa !40
  %i.fd = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 20
  store i32 %i.bj, ptr %i.fd, align 4, !tbaa !39
  %i.fe = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 32
  store i32 %i.cw, ptr %i.fe, align 4, !tbaa !42
  %i.ff = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 28
  store i32 %i.cw, ptr %i.ff, align 4, !tbaa !41
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.al
  %numnode.promoted218 = phi i32 [ %numnode.promoted220, %bb.al ], [ %numnode.promoted220, %bb.am ], [ %numnode.promoted219, %bb.ao ]
  %i.fg = phi i32 [ %i.bk, %bb.al ], [ %i.bk, %bb.am ], [ %i.ex, %bb.ao ] ; 2 uses
  %i.fh = phi ptr [ %i.dy, %bb.al ], [ %i.dy, %bb.am ], [ %storemerge.i, %bb.ao ]
  %i.fi = icmp eq i32 %i.fg, %4
  br i1 %i.fi, label %bb.aq, label %addnode.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fj = load ptr, ptr @low, align 8, !tbaa !32  ; 3 uses
  %i.fk = icmp ne ptr %i.fj, %i.fh
  %i.fl = icmp ne ptr %i.fj, null
  %or.cond.i = and i1 %i.fl, %i.fk
  br i1 %or.cond.i, label %.loopexit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fm = load ptr, ptr %i.bh, align 8, !tbaa !32 ; 4 uses
  store ptr %i.fm, ptr @low, align 8, !tbaa !32
  br i1 %i.ai, label %.lr.ph50.i.preheader, label %.loopexit.i

.lr.ph50.i.preheader:                             ; preds = %bb.ar
  br i1 %i.am, label %.lr.ph50.i.epil.preheader, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.preheader, %bb.au
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i.1, %bb.au ], [ 1, %.lr.ph50.i.preheader ] ; 3 uses
  %i.fn = phi ptr [ %i.ga, %bb.au ], [ %i.fm, %.lr.ph50.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.au ], [ 0, %.lr.ph50.i.preheader ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv52.i
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !32 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !34
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !34
  %i.fs = icmp slt i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.as, label %.lr.ph50.i.1

bb.as:                                            ; preds = %.lr.ph50.i
  store ptr %i.fp, ptr @low, align 8, !tbaa !32
  br label %.lr.ph50.i.1

.lr.ph50.i.1:                                     ; preds = %bb.as, %.lr.ph50.i
  %i.ft = phi ptr [ %i.fn, %.lr.ph50.i ], [ %i.fp, %bb.as ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv52.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !32 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !34
  %i.fy = load i32, ptr %i.ft, align 4, !tbaa !34
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph50.i.1
  store ptr %i.fw, ptr @low, align 8, !tbaa !32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph50.i.1
  %i.ga = phi ptr [ %i.ft, %.lr.ph50.i.1 ], [ %i.fw, %bb.at ] ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph50.i, !llvm.loop !2

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.au
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph50.i.epil.preheader

.lr.ph50.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph50.i.preheader
  %indvars.iv52.i.epil.init = phi i64 [ 1, %.lr.ph50.i.preheader ], [ %indvars.iv.next53.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.fm, %.lr.ph50.i.preheader ], [ %i.ga, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv52.i.epil.init
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !32 ; 3 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !34
  %i.ge = load i32, ptr %.epil.init, align 4, !tbaa !34
  %i.gf = icmp slt i32 %i.gd, %i.ge
  br i1 %i.gf, label %bb.av, label %.loopexit.i

bb.av:                                            ; preds = %.lr.ph50.i.epil.preheader
  store ptr %i.gc, ptr @low, align 8, !tbaa !32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.av, %.lr.ph50.i.epil.preheader, %bb.ar, %bb.aq
  %i.gg = phi ptr [ %i.fj, %bb.aq ], [ %i.fm, %bb.ar ], [ %i.ga, %.loopexit.i.loopexit.unr-lcssa ], [ %.epil.init, %.lr.ph50.i.epil.preheader ], [ %i.gc, %bb.av ]
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !34
  br label %addnode.exit

addnode.exit:                                     ; preds = %bb.ap, %.loopexit.i
  %.037.i = phi i32 [ %i.gh, %.loopexit.i ], [ %.037.i194196, %bb.ap ] ; 3 uses
  store i32 %.037.i, ptr @min, align 4, !tbaa !11
  br label %bb.aw

bb.aw:                                            ; preds = %bb.w, %addnode.exit
  %numnode.promoted217 = phi i32 [ %numnode.promoted220, %bb.w ], [ %numnode.promoted218, %addnode.exit ] ; 2 uses
  %min.promoted212 = phi i32 [ %min.promoted213, %bb.w ], [ %.037.i, %addnode.exit ] ; 2 uses
  %i.gi = phi i32 [ %i.bk, %bb.w ], [ %i.fg, %addnode.exit ]
  %.037.i193 = phi i32 [ %.037.i194196, %bb.w ], [ %.037.i, %addnode.exit ]
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %.loopexit, label %bb.f, !llvm.loop !58

._crit_edge228:                                   ; preds = %.loopexit, %.preheader
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @locate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @nn, align 4, !tbaa !11    ; 11 uses
  %i.b = load i32, ptr @n1, align 4, !tbaa !11    ; 9 uses
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
  %i.f = sext i32 %i.a to i64                     ; 12 uses
  %i.g = sub i32 %i.a, %i.b
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = sub nsw i64 %i.f, %i.h
  %i.k = shl nsw i64 %i.j, 2
  %scevgep745 = getelementptr i8, ptr %.pre764.pre, i64 %i.k
  %i.l = add nuw nsw i64 %i.i, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep745, i8 0, i64 %i.l, i1 false), !tbaa !11
  br i1 %i.d, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.m = sext i32 %.pre to i64                    ; 2 uses
  %i.n = sext i32 %i.b to i64                     ; 2 uses
  %3 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.n)
  %i.o = add nsw i64 %i.f, 1
  %i.p = sub i64 %i.o, %3                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader922, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.q = sub i64 %i.f, %n.vec
  %broadcast.splatinsert873 = insertelement <4 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat874 = shufflevector <4 x i64> %broadcast.splatinsert873, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert875 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat876 = shufflevector <4 x i32> %broadcast.splatinsert875, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert877 = insertelement <4 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat878 = shufflevector <4 x i64> %broadcast.splatinsert877, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.r = add nsw <4 x i64> %broadcast.splat878, <i64 0, i64 -1, i64 -2, i64 -3>
  %broadcast.splatinsert879 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat880 = shufflevector <4 x i32> %broadcast.splatinsert879, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.s = add <4 x i32> %broadcast.splat880, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %i.r, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind881 = phi <4 x i32> [ %i.s, %vector.ph ], [ %vec.ind.next884, %vector.body ] ; 3 uses
  %i.t = sub i64 %i.f, %index                     ; 5 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %reverse882 = shufflevector <4 x i32> %vec.ind881, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i32> %reverse882, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %i.t
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -12
  store <4 x i32> %broadcast.splat, ptr %i.x, align 4, !tbaa !11
  %i.y = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %i.t
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  store <4 x i32> %reverse882, ptr %i.z, align 4, !tbaa !11
  %i.aa = icmp sgt <4 x i64> %vec.ind, %broadcast.splat874
  %i.ab = select <4 x i1> %i.aa, <4 x i32> %broadcast.splat876, <4 x i32> %vec.ind881
  %i.ac = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %i.t
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12
  %reverse883 = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i32> %reverse883, ptr %i.ad, align 4, !tbaa !11
  %i.ae = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %i.t
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -12
  store <4 x i32> %reverse883, ptr %i.af, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 -4)
  %vec.ind.next884 = add <4 x i32> %vec.ind881, splat (i32 -4)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader922

.lr.ph.split.preheader922:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.f, %.lr.ph.split.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ah = sext i32 %i.b to i64                    ; 2 uses
  %4 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.ah)
  %i.ai = add nsw i64 %i.f, 1
  %i.aj = sub i64 %i.ai, %4                       ; 3 uses
  %min.iters.check886 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check886, label %.lr.ph.split.us.preheader921, label %vector.ph887

vector.ph887:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec888 = and i64 %i.aj, -8                   ; 3 uses
  %broadcast.splatinsert889 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat890 = shufflevector <4 x i32> %broadcast.splatinsert889, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert891 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat892 = shufflevector <4 x i32> %broadcast.splatinsert891, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ak = sub i64 %i.f, %n.vec888
  %broadcast.splatinsert895 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat896 = shufflevector <4 x i32> %broadcast.splatinsert895, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.al = add <4 x i32> %broadcast.splat896, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body897

vector.body897:                                   ; preds = %vector.body897, %vector.ph887
  %index898 = phi i64 [ 0, %vector.ph887 ], [ %index.next902, %vector.body897 ] ; 2 uses
  %vec.ind899 = phi <4 x i32> [ %i.al, %vector.ph887 ], [ %vec.ind.next903, %vector.body897 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind899, splat (i32 -4)
  %i.am = sub i64 %i.f, %index898                 ; 5 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -12
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -28
  %reverse900 = shufflevector <4 x i32> %vec.ind899, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %reverse901 = shufflevector <4 x i32> %step.add, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i32> %reverse900, ptr %i.ao, align 4, !tbaa !11
  store <4 x i32> %reverse901, ptr %i.ap, align 4, !tbaa !11
  %i.aq = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %i.am ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -12
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -28
  store <4 x i32> %broadcast.splat892, ptr %i.ar, align 4, !tbaa !11
  store <4 x i32> %broadcast.splat892, ptr %i.as, align 4, !tbaa !11
  %i.at = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -12
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -28
  store <4 x i32> %reverse900, ptr %i.au, align 4, !tbaa !11
  store <4 x i32> %reverse901, ptr %i.av, align 4, !tbaa !11
  %i.aw = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %i.am ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  store <4 x i32> %broadcast.splat890, ptr %i.ax, align 4, !tbaa !11
  store <4 x i32> %broadcast.splat890, ptr %i.ay, align 4, !tbaa !11
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %i.am ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %broadcast.splat890, ptr %i.ba, align 4, !tbaa !11
  store <4 x i32> %broadcast.splat890, ptr %i.bb, align 4, !tbaa !11
  %index.next902 = add nuw i64 %index898, 8       ; 2 uses
  %vec.ind.next903 = add <4 x i32> %vec.ind899, splat (i32 -8)
  %i.bc = icmp eq i64 %index.next902, %n.vec888
  br i1 %i.bc, label %middle.block904, label %vector.body897, !llvm.loop !60

middle.block904:                                  ; preds = %vector.body897
  %cmp.n905 = icmp eq i64 %i.aj, %n.vec888
  br i1 %cmp.n905, label %._crit_edge, label %.lr.ph.split.us.preheader921

.lr.ph.split.us.preheader921:                     ; preds = %.lr.ph.split.us.preheader, %middle.block904
  %indvars.iv746.ph = phi i64 [ %i.f, %.lr.ph.split.us.preheader ], [ %i.ak, %middle.block904 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader921, %.lr.ph.split.us
  %indvars.iv746 = phi i64 [ %indvars.iv.next747, %.lr.ph.split.us ], [ %indvars.iv746.ph, %.lr.ph.split.us.preheader921 ] ; 8 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %indvars.iv746
  %i.be = trunc nsw i64 %indvars.iv746 to i32     ; 2 uses
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !11
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %indvars.iv746
  store i32 %i.c, ptr %i.bf, align 4, !tbaa !11
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %indvars.iv746
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !11
  %i.bh = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %indvars.iv746
  store i32 %i.e, ptr %i.bh, align 4, !tbaa !11
  %i.bi = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %indvars.iv746
  store i32 %i.e, ptr %i.bi, align 4, !tbaa !11
  %indvars.iv.next747 = add nsw i64 %indvars.iv746, -1
  %.not.us.not = icmp sgt i64 %indvars.iv746, %i.ah
  br i1 %.not.us.not, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !61

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader922, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader922 ] ; 9 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %indvars.iv
  %i.bk = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !11
  %i.bl = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %indvars.iv
  store i32 %i.c, ptr %i.bl, align 4, !tbaa !11
  %i.bm = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %indvars.iv
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !11
  %i.bn = icmp sgt i64 %indvars.iv, %i.m
  %spec.select862 = select i1 %i.bn, i32 %i.e, i32 %i.bk ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %indvars.iv
  store i32 %spec.select862, ptr %i.bo, align 4, !tbaa !11
  %i.bp = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %indvars.iv
  store i32 %spec.select862, ptr %i.bp, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.n
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block904, %bb.a
  %i.bq = load i32, ptr @m1, align 4, !tbaa !11   ; 5 uses
  %.not522644 = icmp slt i32 %.pre, %i.bq
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
  %i.br = icmp eq i32 %2, 2
  %i.bs = load ptr, ptr @row, align 8
  %i.bt = sext i32 %i.b to i64                    ; 7 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %.pre764.pre, i64 %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %i.bt
  %i.bw = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %i.bt
  %i.bx = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %i.bt
  %i.by = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %i.bt
  %i.bz = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %i.bt
  %i.ca = sext i32 %i.a to i64                    ; 2 uses
  %i.cb = sext i32 %.pre to i64
  %i.cc = sext i32 %i.bq to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph649, %bb.x
  %indvars.iv752 = phi i64 [ %i.cb, %.lr.ph649 ], [ %indvars.iv.next753, %bb.x ] ; 13 uses
  %.0406647 = phi i32 [ undef, %.lr.ph649 ], [ %.1407.lcssa, %bb.x ]
  %.0413646 = phi i32 [ undef, %.lr.ph649 ], [ %.1414.lcssa, %bb.x ]
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv752
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = sext i8 %i.ce to i64
  %i.cg = getelementptr inbounds [1024 x i8], ptr %.pre761, i64 %i.cf
  %i.ch = icmp slt i64 %indvars.iv752, %i.bt
  %or.cond539 = or i1 %i.br, %i.ch                ; 2 uses
  %i.ci = trunc i64 %indvars.iv752 to i32
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  %.0 = select i1 %or.cond539, i32 %i.b, i32 %i.cj ; 2 uses
  %.not533627 = icmp slt i32 %i.a, %.0
  br i1 %.not533627, label %._crit_edge640, label %.lr.ph639

.lr.ph639:                                        ; preds = %bb.b
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv752
  %i.cl = sext i32 %.0 to i64
  %i.cm = trunc nsw i64 %indvars.iv752 to i32     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph639, %bb.v
  %indvars.iv749 = phi i64 [ %i.ca, %.lr.ph639 ], [ %indvars.iv.next750, %bb.v ] ; 10 uses
  %.0386637 = phi i32 [ %.pre788, %.lr.ph639 ], [ %i.da, %bb.v ]
  %.0390636 = phi i32 [ %i.cj, %.lr.ph639 ], [ %i.cy, %bb.v ]
  %.0394635 = phi i32 [ %.pre788, %.lr.ph639 ], [ %.1395, %bb.v ] ; 3 uses
  %.0400634 = phi i32 [ %i.cm, %.lr.ph639 ], [ %.1401, %bb.v ] ; 4 uses
  %.0424633 = phi i32 [ %.pre788, %.lr.ph639 ], [ %.3427, %bb.v ] ; 3 uses
  %.0435632 = phi i32 [ %i.cm, %.lr.ph639 ], [ %.3438, %bb.v ] ; 4 uses
  %.0447631 = phi i32 [ 0, %.lr.ph639 ], [ %i.cv, %bb.v ]
  %.0454630 = phi i32 [ %.pre786, %.lr.ph639 ], [ %.1455, %bb.v ]
  %.0460629 = phi i32 [ 0, %.lr.ph639 ], [ %.4464, %bb.v ]
  %i.cn = sub nsw i32 %.0454630, %.pre762         ; 5 uses
  %i.co = sub nsw i32 %.0460629, %.pre763         ; 3 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cq = icmp eq i32 %i.cn, %i.co
  br i1 %i.cq, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.cr = icmp slt i32 %.0400634, %.0435632
  br i1 %i.cr, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cs = icmp eq i32 %.0400634, %.0435632
  %i.ct = tail call i32 @llvm.smax.i32(i32 %.0394635, i32 %.0424633)
  %spec.select580 = select i1 %i.cs, i32 %i.ct, i32 %.0394635
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %.1455 = phi i32 [ %i.cn, %bb.d ], [ %i.co, %bb.c ], [ %i.cn, %bb.f ], [ %i.cn, %bb.e ] ; 6 uses
  %.1401 = phi i32 [ %.0400634, %bb.d ], [ %.0435632, %bb.c ], [ %.0400634, %bb.f ], [ %.0435632, %bb.e ] ; 5 uses
  %.1395 = phi i32 [ %.0394635, %bb.d ], [ %.0424633, %bb.c ], [ %spec.select580, %bb.f ], [ %.0424633, %bb.e ] ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %.pre764.pre, i64 %indvars.iv749 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !11 ; 2 uses
  %i.cw = sub nsw i32 %i.cv, %.pre763             ; 5 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %.pre765.pre, i64 %indvars.iv749 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !11 ; 5 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %.pre766.pre, i64 %indvars.iv749 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !11 ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %.pre767.pre, i64 %indvars.iv749 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !11
  %i.dd = sub nsw i32 %i.dc, %.pre762             ; 3 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %.pre768.pre, i64 %indvars.iv749 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !11 ; 4 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %.pre769.pre, i64 %indvars.iv749 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !11 ; 3 uses
  %i.di = icmp slt i32 %i.dd, %i.cw
  br i1 %i.di, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = icmp eq i32 %i.dd, %i.cw
  br i1 %i.dj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@display:bb.a
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i8 %i.p, 67
  %i.u = icmp eq i8 %i.o, 84
  %or.cond5 = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i8 %i.p, 71
  %i.w = icmp eq i8 %i.o, 65
  %or.cond8 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 84
  %i.y = icmp eq i8 %i.o, 67
  %or.cond11 = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond11, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  br label %bb.j

.critedge:                                        ; preds = %bb.b, %.lr.ph121
  %.199 = phi ptr [ %.098109, %.lr.ph121 ], [ %i.g, %bb.b ] ; 2 uses
  %.180 = phi i32 [ %.079115, %.lr.ph121 ], [ %i.e, %bb.b ] ; 3 uses
  %i.z = icmp sgt i32 %.180, 0
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  store i8 32, ptr %.094.ptr119, align 1, !tbaa !16
  %i.aa = add nsw i32 %.081114, 1                 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  store i8 %i.ad, ptr %.090111, align 1, !tbaa !16
  %i.ae = add nsw i32 %.180, -1
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.af = add nsw i32 %.084113, 1                 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  store i8 %i.ai, ptr %.094.ptr119, align 1, !tbaa !16
  store i8 32, ptr %.090111, align 1, !tbaa !16
  %i.aj = add nsw i32 %.180, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %storemerge = phi i8 [ %spec.store.select, %bb.f ], [ 58, %bb.g ], [ 45, %bb.i ], [ 45, %bb.h ]
  %.2100 = phi ptr [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %.199, %bb.i ], [ %.199, %bb.h ]
  %.286 = phi i32 [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.af, %bb.i ], [ %.084113, %bb.h ] ; 4 uses
  %.283 = phi i32 [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %.081114, %bb.i ], [ %i.aa, %bb.h ] ; 4 uses
  %.3 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %.188 = getelementptr inbounds nuw i8, ptr %.087112, i64 1 ; 2 uses
  %.292 = getelementptr inbounds nuw i8, ptr %.090111, i64 1 ; 2 uses
  %.094.add = add nuw nsw i64 %.094.idx110, 1     ; 2 uses
  %.296.ptr = getelementptr inbounds nuw i8, ptr @ALINE, i64 %.094.add ; 3 uses
  store i8 %storemerge, ptr %.087112, align 1, !tbaa !16
  %.not = icmp slt i64 %.094.idx110, 49
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not102 = icmp slt i32 %.286, %2
  %.not103 = icmp slt i32 %.283, %3
  %or.cond106 = select i1 %.not102, i1 true, i1 %.not103
  br i1 %or.cond106, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i8 0, ptr %.188, align 1, !tbaa !16
  store i8 0, ptr %.292, align 1, !tbaa !16
  store i8 0, ptr %.296.ptr, align 1, !tbaa !16
  %i.ak = add nsw i32 %.077116, 1
  %i.al = mul nsw i32 %.077116, 50
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.al) ; 0 uses
  %.not104107 = icmp ult i64 %.094.idx110, 9
  br i1 %.not104107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.393108 = phi ptr [ %i.ao, %.lr.ph ], [ getelementptr inbounds nuw (i8, ptr @ALINE, i64 10), %bb.l ]
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.393108, i64 10 ; 3 uses
  %.not104 = icmp ugt ptr %i.ao, %.296.ptr
  br i1 %.not104, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.393.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @ALINE, i64 10), %bb.l ], [ %i.ao, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.296.ptr, i64 5
  %.not105 = icmp ugt ptr %.393.lcssa, %i.ap
  br i1 %.not105, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %.075117, ptr noundef nonnull @ALINE, ptr noundef nonnull @CLINE, i32 noundef %.074118, ptr noundef nonnull @BLINE) ; 0 uses
  %i.as = add nsw i32 %.286, %5
  %i.at = add nsw i32 %.283, %6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.397.idx = phi i64 [ 0, %bb.n ], [ %.094.add, %bb.k ] ; 2 uses
  %.4 = phi ptr [ @BLINE, %bb.n ], [ %.292, %bb.k ]
  %.289 = phi ptr [ @CLINE, %bb.n ], [ %.188, %bb.k ]
  %.178 = phi i32 [ %i.ak, %bb.n ], [ %.077116, %bb.k ]
  %.176 = phi i32 [ %i.as, %bb.n ], [ %.075117, %bb.k ]
  %.1 = phi i32 [ %i.at, %bb.n ], [ %.074118, %bb.k ]
  %.094.ptr = getelementptr inbounds nuw i8, ptr @ALINE, i64 %.397.idx
  %i.au = icmp slt i32 %.286, %2
  %i.av = icmp slt i32 %.283, %3
  %i.aw = select i1 %i.au, i1 true, i1 %i.av
  br i1 %i.aw, label %.lr.ph121, label %._crit_edge122, !llvm.loop !91

._crit_edge122:                                   ; preds = %bb.o, %bb.a
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @fatal(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.32, ptr noundef %0) #22 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @fatalf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #22 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.d = tail call i32 @putc(i32 noundef 10, ptr noundef %i.c) ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @ckopen(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fatalf(ptr noundef nonnull @.str.33, ptr noundef %0) ; 0 uses
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local double @dtime() local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @getrusage(i32 noundef 0, ptr noundef nonnull @rusage) #18 ; 0 uses
  %i.b = load i64, ptr @rusage, align 8, !tbaa !95
  %i.c = sitofp i64 %i.b to double
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @rusage, i64 8), align 8, !tbaa !96
  %i.e = sitofp i64 %i.d to double
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double f0x3EB0C6F7A0B5ED8D, double %i.c)
  ret double %i.f
}

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { cold nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!9, !9, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 int", !12, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"any p2 pointer", !12, i64 0}
!22 = !{!"p2 _ZTS3ONE", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS3ONE", !12, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"ONE", !10, i64 0, !24, i64 8}
!27 = !{!26, !10, i64 0}
!28 = !{!26, !24, i64 8}
!29 = !{!"p2 _ZTS4NODE", !21, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTS4NODE", !12, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"NODE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!34 = !{!33, !10, i64 0}
!35 = !{!33, !10, i64 4}
!36 = !{!33, !10, i64 8}
!37 = !{!33, !10, i64 12}
!38 = !{!33, !10, i64 16}
!39 = !{!33, !10, i64 20}
!40 = !{!33, !10, i64 24}
!41 = !{!33, !10, i64 28}
!42 = !{!33, !10, i64 32}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{null}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15, !43, !44}
!55 = distinct !{!55, !15, !44, !43}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15, !43, !44}
!60 = distinct !{!60, !15, !43, !44}
!61 = distinct !{!61, !15, !44, !43}
!62 = distinct !{!62, !15, !44, !43}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15, !43, !44}
!72 = distinct !{!72, !15, !44, !43}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15, !43, !44}
!79 = distinct !{!79, !15, !44, !43}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15, !43, !44}
!84 = distinct !{!84, !15, !44, !43}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = distinct !{!91, !15}
!92 = !{!"long", !9, i64 0}
!93 = !{!"timeval", !92, i64 0, !92, i64 8}
!94 = !{!"rusage", !93, i64 0, !93, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136}
!95 = !{!94, !92, i64 0}
!96 = !{!94, !92, i64 8}
end_hunk_1
