inline.NumInlined: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@f_prep:bb.a
  %i.ab = or disjoint i8 %i.aa, %i.x
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = getelementptr i8, ptr %i.v, i64 -2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = and i8 %i.af, 15
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @SHIFT1, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = sub nsw i64 %i.f, %indvars.iv           ; 2 uses
  %i.am = zext i8 %i.ak to i64
  %.not35 = icmp samesign ugt i64 %i.al, %i.am
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.an = trunc nuw i64 %i.al to i8
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not.not = icmp sgt i64 %indvars.iv.next, %i.g
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  %i.ao = load i32, ptr @SHORT, align 4, !tbaa !4
  %.not = icmp eq i32 %i.ao, 0
  %spec.select = select i1 %.not, i32 15, i32 255 ; 5 uses
  %i.ap = icmp sgt i32 %i.a, 0
  br i1 %i.ap, label %.lr.ph41.preheader, label %._crit_edge42

.lr.ph41.preheader:                               ; preds = %._crit_edge
  %i.aq = zext i32 %i.b to i64                    ; 2 uses
  %i.ar = zext nneg i32 %i.a to i64               ; 2 uses
  %xtraiter = and i64 %i.ar, 3                    ; 3 uses
  %i.as = icmp ult i32 %i.a, 4
  br i1 %i.as, label %.lr.ph41.epil.preheader, label %.lr.ph41.preheader.new

.lr.ph41.preheader.new:                           ; preds = %.lr.ph41.preheader
  %unroll_iter = and i64 %i.ar, 2147483644
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41, %.lr.ph41.preheader.new
  %indvars.iv48 = phi i64 [ %i.aq, %.lr.ph41.preheader.new ], [ %indvars.iv.next49.3, %.lr.ph41 ] ; 5 uses
  %.139 = phi i32 [ 0, %.lr.ph41.preheader.new ], [ %i.cf, %.lr.ph41 ]
  %niter = phi i64 [ 0, %.lr.ph41.preheader.new ], [ %niter.next.3, %.lr.ph41 ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @tr, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = zext i8 %i.ax to i32
  %i.az = and i32 %spec.select, %i.ay
  %i.ba = shl i32 %.139, 8
  %i.bb = shl nuw nsw i32 %i.az, 4
  %i.bc = add i32 %i.ba, %i.bb
  %i.bd = getelementptr i8, ptr %1, i64 %indvars.iv48
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @tr, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %spec.select, %i.bj
  %i.bl = add i32 %i.bk, %i.bc
  %i.bm = getelementptr i8, ptr %1, i64 %indvars.iv48
  %i.bn = getelementptr i8, ptr %i.bm, i64 -2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @tr, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i32
  %i.bt = and i32 %spec.select, %i.bs
  %i.bu = shl i32 %i.bl, 8
  %i.bv = shl nuw nsw i32 %i.bt, 4
  %i.bw = add i32 %i.bu, %i.bv
  %i.bx = getelementptr i8, ptr %1, i64 %indvars.iv48
  %i.by = getelementptr i8, ptr %i.bx, i64 -3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @tr, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = zext i8 %i.cc to i32
  %i.ce = and i32 %spec.select, %i.cd
  %i.cf = add i32 %i.ce, %i.bw                    ; 3 uses
  %indvars.iv.next49.3 = add nsw i64 %indvars.iv48, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge42.loopexit.unr-lcssa, label %.lr.ph41, !llvm.loop !33

._crit_edge42.loopexit.unr-lcssa:                 ; preds = %.lr.ph41
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge42.loopexit, label %.lr.ph41.epil.preheader

.lr.ph41.epil.preheader:                          ; preds = %._crit_edge42.loopexit.unr-lcssa, %.lr.ph41.preheader
  %indvars.iv48.epil.init = phi i64 [ %i.aq, %.lr.ph41.preheader ], [ %indvars.iv.next49.3, %._crit_edge42.loopexit.unr-lcssa ]
  %.139.epil.init = phi i32 [ 0, %.lr.ph41.preheader ], [ %i.cf, %._crit_edge42.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %.lr.ph41.epil

.lr.ph41.epil:                                    ; preds = %.lr.ph41.epil, %.lr.ph41.epil.preheader
  %indvars.iv48.epil = phi i64 [ %indvars.iv48.epil.init, %.lr.ph41.epil.preheader ], [ %indvars.iv.next49.epil, %.lr.ph41.epil ] ; 2 uses
  %.139.epil = phi i32 [ %.139.epil.init, %.lr.ph41.epil.preheader ], [ %i.co, %.lr.ph41.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph41.epil.preheader ], [ %epil.iter.next, %.lr.ph41.epil ]
  %i.cg = shl i32 %.139.epil, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.epil
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @tr, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = zext i8 %i.cl to i32
  %i.cn = and i32 %spec.select, %i.cm
  %i.co = add i32 %i.cn, %i.cg                    ; 2 uses
  %indvars.iv.next49.epil = add nsw i64 %indvars.iv48.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge42.loopexit, label %.lr.ph41.epil, !llvm.loop !34

._crit_edge42.loopexit:                           ; preds = %.lr.ph41.epil, %._crit_edge42.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.cf, %._crit_edge42.loopexit.unr-lcssa ], [ %i.co, %.lr.ph41.epil ]
  %i.cp = and i32 %.lcssa, 8191
  %i.cq = zext nneg i32 %i.cp to i64
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge42.loopexit, %._crit_edge
  %.1.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cq, %._crit_edge42.loopexit ]
  %i.cr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 4 uses
  store ptr %i.cr, ptr @qt, align 8, !tbaa !11
  store i32 %0, ptr %i.cr, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @HASH, i64 %.1.lcssa ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !11 ; 2 uses
  store ptr %i.ct, ptr @pt, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !16
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @prepf(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.c ]     ; 6 uses
  %i.a = zext nneg i32 %.0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @buf, i64 %i.a ; 2 uses
  %i.c = tail call i64 @read(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 8192) #16
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i32 %.0, %i.d                ; 2 uses
  %i.g = icmp sgt i32 %i.f, 260000
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !36

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.2, ptr noundef nonnull @Progname, i32 noundef 260000) #17 ; 0 uses
  tail call void @exit(i32 noundef 2) #18
  unreachable

bb.e:                                             ; preds = %bb.b
  store i8 10, ptr %i.b, align 1, !tbaa !8
  %i.j = icmp sgt i32 %.0, 0
  br i1 %i.j, label %.lr.ph, label %.preheader93.preheader

.lr.ph:                                           ; preds = %bb.e, %bb.o
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %bb.o ], [ 1, %bb.e ] ; 3 uses
  %.06399 = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.e ]
  %.06498 = phi ptr [ %i.w, %bb.o ], [ @pat_spool, %bb.e ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @patt, i64 %indvars.iv124
  store ptr %.06498, ptr %i.k, align 8, !tbaa !17
  %i.l = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not81 = icmp eq i32 %i.l, 0
  br i1 %.not81, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.06498, i64 1
  store i8 -128, ptr %.06498, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.165 = phi ptr [ %i.m, %bb.f ], [ %.06498, %.lr.ph ] ; 3 uses
  %i.n = load i32, ptr @WHOLELINE, align 4, !tbaa !4
  %.not82 = icmp eq i32 %i.n, 0
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.165, i64 1
  store i8 10, ptr %.165, align 1, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.266 = phi ptr [ %.165, %bb.g ], [ %i.o, %bb.h ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %.06399, %bb.i ] ; 2 uses
  %.367 = phi ptr [ %i.r, %bb.j ], [ %.266, %bb.i ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.p = getelementptr inbounds i8, ptr @buf, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  store i8 %i.q, ptr %.367, align 1, !tbaa !8
  %.not83 = icmp eq i8 %i.q, 10
  %i.r = getelementptr inbounds nuw i8, ptr %.367, i64 1 ; 2 uses
  br i1 %.not83, label %bb.k, label %bb.j, !llvm.loop !37

bb.k:                                             ; preds = %bb.j
  %i.s = trunc nsw i64 %indvars.iv.next to i32
  %i.t = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not84 = icmp eq i32 %i.t, 0
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 -128, ptr %.367, align 1, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.468 = phi ptr [ %i.r, %bb.l ], [ %.367, %bb.k ] ; 3 uses
  %i.u = load i32, ptr @WHOLELINE, align 4, !tbaa !4
  %.not85 = icmp eq i32 %i.u, 0
  br i1 %.not85, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %.468, i64 1
  store i8 10, ptr %.468, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.569 = phi ptr [ %i.v, %bb.n ], [ %.468, %bb.m ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.569, i64 1 ; 2 uses
  store i8 0, ptr %.569, align 1, !tbaa !8
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.x = icmp sgt i32 %.0, %i.s
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.o
  %i.y = trunc nuw i64 %indvars.iv.next125 to i32
  %i.z = icmp samesign ugt i64 %indvars.iv124, 29999
  br i1 %i.z, label %bb.p, label %.preheader93.preheader

.preheader93.preheader:                           ; preds = %bb.e, %._crit_edge
  %.064.lcssa165 = phi ptr [ %i.w, %._crit_edge ], [ @pat_spool, %bb.e ]
  %.070.lcssa164 = phi i32 [ %i.y, %._crit_edge ], [ 1, %bb.e ] ; 3 uses
  store i8 19, ptr %.064.lcssa165, align 1, !tbaa !8
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr @tr, align 16, !tbaa !8
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 16), align 16, !tbaa !8
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 32), align 16, !tbaa !8
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 48), align 16, !tbaa !8
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 64), align 16, !tbaa !8
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 80), align 16, !tbaa !8
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 96), align 16, !tbaa !8
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 112), align 16, !tbaa !8
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 128), align 16, !tbaa !8
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 144), align 16, !tbaa !8
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 160), align 16, !tbaa !8
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 176), align 16, !tbaa !8
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 192), align 16, !tbaa !8
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 208), align 16, !tbaa !8
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 224), align 16, !tbaa !8
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 240), align 16, !tbaa !8
  %i.aa = load i32, ptr @NOUPPER, align 4, !tbaa !4
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %.loopexit91, label %.preheader90.preheader

bb.p:                                             ; preds = %._crit_edge
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.3, ptr noundef nonnull @Progname, i32 noundef 30000) #17 ; 0 uses
  tail call void @exit(i32 noundef 2) #18
  unreachable

.preheader90.preheader:                           ; preds = %.preheader93.preheader
  store <16 x i8> <i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 65), align 1, !tbaa !8
  store <8 x i8> <i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 81), align 1, !tbaa !8
  store i8 121, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 89), align 1, !tbaa !8
  store i8 122, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 90), align 2, !tbaa !8
  br label %.loopexit91

.loopexit91:                                      ; preds = %.preheader90.preheader, %.preheader93.preheader
  %i.ad = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not76 = icmp eq i32 %i.ad, 0
  br i1 %.not76, label %vector.body179, label %.preheader89

.preheader89:                                     ; preds = %.loopexit91
  %i.ae = tail call ptr @__ctype_b_loc() #19      ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.preheader89
  %indvars.iv134 = phi i64 [ 0, %.preheader89 ], [ %indvars.iv.next135.1, %bb.u ] ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv134
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !41
  %i.ai = and i16 %i.ah, 8
  %.not80 = icmp eq i16 %i.ai, 0
  br i1 %.not80, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr @tr, i64 %indvars.iv134
  store i8 -128, ptr %i.aj, align 2, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next135 = or disjoint i64 %indvars.iv134, 1 ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next135
  %i.am = load i16, ptr %i.al, align 2, !tbaa !41
  %i.an = and i16 %i.am, 8
  %.not80.1 = icmp eq i16 %i.an, 0
  br i1 %.not80.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr @tr, i64 %indvars.iv.next135
  store i8 -128, ptr %i.ao, align 1, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %exitcond137.not.1 = icmp eq i64 %indvars.iv.next135.1, 128
  br i1 %exitcond137.not.1, label %vector.body179, label %bb.q, !llvm.loop !43

vector.body179:                                   ; preds = %.loopexit91, %bb.u
  %wide.load = load <16 x i8>, ptr @tr, align 16, !tbaa !8
  %wide.load181 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 16), align 16, !tbaa !8
  %i.ap = and <16 x i8> %wide.load, splat (i8 15)
  %i.aq = and <16 x i8> %wide.load181, splat (i8 15)
  store <16 x i8> %i.ap, ptr @tr1, align 16, !tbaa !8
  store <16 x i8> %i.aq, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 16), align 16, !tbaa !8
  %wide.load.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 32), align 16, !tbaa !8
  %wide.load181.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 48), align 16, !tbaa !8
  %i.ar = and <16 x i8> %wide.load.1, splat (i8 15)
  %i.as = and <16 x i8> %wide.load181.1, splat (i8 15)
  store <16 x i8> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 32), align 16, !tbaa !8
  store <16 x i8> %i.as, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 48), align 16, !tbaa !8
  %wide.load.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 64), align 16, !tbaa !8
  %wide.load181.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 80), align 16, !tbaa !8
  %i.at = and <16 x i8> %wide.load.2, splat (i8 15)
  %i.au = and <16 x i8> %wide.load181.2, splat (i8 15)
  store <16 x i8> %i.at, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 64), align 16, !tbaa !8
  store <16 x i8> %i.au, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 80), align 16, !tbaa !8
  %wide.load.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 96), align 16, !tbaa !8
  %wide.load181.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 112), align 16, !tbaa !8
  %i.av = and <16 x i8> %wide.load.3, splat (i8 15)
  %i.aw = and <16 x i8> %wide.load181.3, splat (i8 15)
  store <16 x i8> %i.av, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 96), align 16, !tbaa !8
  store <16 x i8> %i.aw, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 112), align 16, !tbaa !8
  %wide.load.4 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 128), align 16, !tbaa !8
  %wide.load181.4 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 144), align 16, !tbaa !8
  %i.ax = and <16 x i8> %wide.load.4, splat (i8 15)
  %i.ay = and <16 x i8> %wide.load181.4, splat (i8 15)
  store <16 x i8> %i.ax, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 128), align 16, !tbaa !8
  store <16 x i8> %i.ay, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 144), align 16, !tbaa !8
  %wide.load.5 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 160), align 16, !tbaa !8
  %wide.load181.5 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 176), align 16, !tbaa !8
  %i.az = and <16 x i8> %wide.load.5, splat (i8 15)
  %i.ba = and <16 x i8> %wide.load181.5, splat (i8 15)
  store <16 x i8> %i.az, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 160), align 16, !tbaa !8
  store <16 x i8> %i.ba, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 176), align 16, !tbaa !8
  %wide.load.6 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 192), align 16, !tbaa !8
  %wide.load181.6 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 208), align 16, !tbaa !8
  %i.bb = and <16 x i8> %wide.load.6, splat (i8 15)
  %i.bc = and <16 x i8> %wide.load181.6, splat (i8 15)
  store <16 x i8> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 192), align 16, !tbaa !8
  store <16 x i8> %i.bc, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 208), align 16, !tbaa !8
  %wide.load.7 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 224), align 16, !tbaa !8
  %wide.load181.7 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 240), align 16, !tbaa !8
  %i.bd = and <16 x i8> %wide.load.7, splat (i8 15)
  %i.be = and <16 x i8> %wide.load181.7, splat (i8 15)
  store <16 x i8> %i.bd, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 224), align 16, !tbaa !8
  store <16 x i8> %i.be, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 240), align 16, !tbaa !8
  store i32 256, ptr @p_size, align 4, !tbaa !4
  %.not77.not106 = icmp samesign ugt i32 %.070.lcssa164, 1 ; 2 uses
  br i1 %.not77.not106, label %.lr.ph109.preheader, label %._crit_edge110.thread

.lr.ph109.preheader:                              ; preds = %vector.body179
  %wide.trip.count = zext nneg i32 %.070.lcssa164 to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.w
  %indvars.iv142 = phi i64 [ 1, %.lr.ph109.preheader ], [ %indvars.iv.next143, %bb.w ] ; 3 uses
  %i.bf = phi i32 [ 256, %.lr.ph109.preheader ], [ %i.bn, %bb.w ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @patt, i64 %indvars.iv142
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #20 ; 2 uses
  %i.bj = trunc i64 %i.bi to i32                  ; 4 uses
  %i.bk = trunc i64 %i.bi to i8
  %i.bl = getelementptr inbounds nuw i8, ptr @pat_len, i64 %indvars.iv142
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !8
  %.not79 = icmp ne i32 %i.bj, 0
  %i.bm = icmp sgt i32 %i.bf, %i.bj
  %or.cond87 = select i1 %.not79, i1 %i.bm, i1 false
  br i1 %or.cond87, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph109
  store i32 %i.bj, ptr @p_size, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph109, %bb.v
  %i.bn = phi i32 [ %i.bf, %.lr.ph109 ], [ %i.bj, %bb.v ] ; 5 uses
end_hunk_0
