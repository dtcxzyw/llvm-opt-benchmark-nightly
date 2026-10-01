Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dng?download=true
inline.NumInlined: 107
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN6LibRaw16adobe_copy_pixelEjjPPt:bb.a
  %i.bb = zext i16 %i.ba to i32
  %i.bc = mul nuw i32 %1, %i.bb
  %i.bd = add nuw i32 %i.bc, %2
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.be
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.next
  store i16 %i.az, ptr %i.bg, align 2, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod40 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.pre33, i64 %indvars.iv.epil.init
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !77
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !77
  %i.bm = load i16, ptr %i.ab, align 2, !tbaa !76
  %i.bn = zext i16 %i.bm to i32
  %i.bo = mul nuw i32 %1, %i.bn
  %i.bp = add nuw i32 %i.bo, %2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  store i16 %i.bl, ptr %i.bs, align 2, !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.h, %..loopexit_crit_edge, %bb.e, %bb.f, %._crit_edge
  %.sink = phi ptr [ %.pre31, %bb.e ], [ %.pre, %._crit_edge ], [ %.pre31, %bb.f ], [ %.pre32, %..loopexit_crit_edge ], [ %.pre33, %bb.h ], [ %.pre33, %.loopexit.loopexit.unr-lcssa ], [ %.pre33, %.epil.preheader ]
  %i.bt = zext i32 %i.b to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.sink, i64 %i.bt
  %spec.select.idx = select i1 %or.cond, i64 0, i64 -2
  %spec.select = getelementptr inbounds i8, ptr %i.bu, i64 %spec.select.idx
  store ptr %spec.select, ptr %3, align 8, !tbaa !89
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw21lossless_dng_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.jhead, align 8              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5556 ; 22 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !80   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384256
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 19)
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !81
  %i.j = and i32 %i.i, 255
  store i32 %i.j, ptr %i.a, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 38 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !75
  %.not233 = icmp eq i16 %i.l, 0
  br i1 %.not233, label %._crit_edge229, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381856 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381832 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 85 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 62 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 381852 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph228, %bb.bi
  %.073225 = phi i32 [ 0, %.lr.ph228 ], [ %.174, %bb.bi ] ; 6 uses
  %.075223 = phi i32 [ 0, %.lr.ph228 ], [ %.176, %bb.bi ] ; 7 uses
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.af = load i32, ptr %i.m, align 8, !tbaa !85
  %i.ag = icmp ult i32 %i.af, 2147483647
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  %i.ai = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.aj, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge229, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !98  ; 3 uses
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !99
  %.not81 = icmp eq i32 %i.aq, 0
  br i1 %.not81, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.r, align 4, !tbaa !86
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.thread136, label %.thread

.thread136:                                       ; preds = %bb.f
  %i.at = load i32, ptr %i.p, align 8, !tbaa !100
  %i.au = mul i32 %i.at, %i.ap
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.av = load i32, ptr %i.p, align 8, !tbaa !100
  %i.aw = mul i32 %i.av, %i.ap
  %i.ax = load i32, ptr %i.q, align 8, !tbaa !73
  %i.ay = icmp eq i32 %i.ax, 2
  %i.az = zext i1 %i.ay to i32
  %spec.select = lshr i32 %i.aw, %i.az
  br label %.thread

.thread:                                          ; preds = %bb.f, %.thread136, %bb.g
  %.172 = phi i32 [ %i.au, %.thread136 ], [ %spec.select, %bb.g ], [ %i.ap, %bb.f ] ; 4 uses
  %i.ba = load i32, ptr %1, align 8, !tbaa !101
  switch i32 %i.ba, label %.loopexit145 [
    i32 193, label %bb.h
    i32 195, label %.preheader149
  ]

.preheader149:                                    ; preds = %.thread
  %i.bb = load i32, ptr %i.s, align 8, !tbaa !102
  %.not234 = icmp eq i32 %i.bb, 0
  br i1 %.not234, label %.loopexit145, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader149
  %.not235 = icmp eq i32 %.172, 0
  br label %bb.ai

bb.h:                                             ; preds = %.thread
  store i32 16384, ptr %i.y, align 8, !tbaa !81
  %i.bc = invoke noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null)
          to label %.preheader144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader144:                                    ; preds = %bb.h
  %i.bd = load i32, ptr %i.s, align 8, !tbaa !102
  %i.be = icmp ugt i32 %i.bd, 7
  br i1 %i.be, label %.lr.ph222, label %.loopexit145

.lr.ph222:                                        ; preds = %.preheader144, %._crit_edge
  %.069221 = phi i32 [ %i.akp, %._crit_edge ], [ 0, %.preheader144 ] ; 2 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader140 unwind label %.loopexit.split-lp.loopexit

.preheader140:                                    ; preds = %.lr.ph222
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !98
  %i.bg = icmp ugt i32 %i.bf, 7
  br i1 %i.bg, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader140
  %i.bh = shl i32 %.069221, 1
  %i.bi = add i32 %i.bh, %.075223
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph220, %.split212.us
  %.066219 = phi i32 [ 0, %.lr.ph220 ], [ %i.akl, %.split212.us ] ; 3 uses
  invoke void @_ZN6LibRaw10ljpeg_idctEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.x, align 4, !tbaa !87  ; 2 uses
  %i.bk = udiv i32 %.066219, %i.bj
  %i.bl = urem i32 %.066219, %i.bj
  %i.bm = add i32 %i.bl, %.073225                 ; 39 uses
  %i.bn = add i32 %i.bi, %i.bk                    ; 4 uses
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !73
  %.fr237 = freeze i32 %i.bo                      ; 11 uses
  %.not498 = icmp eq i32 %.fr237, 2               ; 2 uses
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !74  ; 17 uses
  %.not23.i = icmp eq ptr %i.bp, null
  %i.bq = zext i32 %.fr237 to i64                 ; 104 uses
  br i1 %.not23.i, label %.split190.us, label %.split190

.split190.us:                                     ; preds = %bb.j
  %i.br = icmp sgt i32 %.fr237, 0
  br i1 %i.br, label %.split190.us.split.us, label %.split212.us

.split190.us.split.us:                            ; preds = %.split190.us
  %i.bs = add i32 %i.bm, 1                        ; 2 uses
  %i.bt = add nuw nsw i32 %i.bm, 1                ; 2 uses
  %i.bu = add i32 %i.bm, 2                        ; 2 uses
  %i.bv = add i32 %i.bm, 2                        ; 2 uses
  %i.bw = add i32 %i.bm, 3                        ; 2 uses
  %i.bx = add i32 %i.bm, 3                        ; 2 uses
  %i.by = add i32 %i.bm, 4                        ; 2 uses
  %i.bz = add i32 %i.bm, 4                        ; 2 uses
  %i.ca = add i32 %i.bm, 5                        ; 2 uses
  %i.cb = add i32 %i.bm, 5                        ; 2 uses
  %i.cc = add i32 %i.bm, 6                        ; 2 uses
  %i.cd = add i32 %i.bm, 6                        ; 2 uses
  %i.ce = add i32 %i.bm, 7                        ; 2 uses
  %i.cf = add i32 %i.bm, 7                        ; 2 uses
  br i1 %.not498, label %.preheader.us.us, label %.preheader.us.us.us.preheader

.preheader.us.us.us.preheader:                    ; preds = %.split190.us.split.us
  %i.cg = add nsw i64 %i.bq, -1                   ; 8 uses
  %xtraiter873 = and i64 %i.bq, 1
  %i.ch = icmp eq i64 %i.cg, 0
  %unroll_iter876 = and i64 %i.bq, 2147483646
  %lcmp.mod874.not = icmp eq i64 %xtraiter873, 0
  %lcmp.mod875 = trunc i32 %.fr237 to i1
  %.idx862 = shl nuw nsw i64 %i.bq, 2
  %xtraiter882 = and i64 %i.bq, 1
  %i.ci = icmp eq i64 %i.cg, 0
  %unroll_iter885 = and i64 %i.bq, 2147483646
  %lcmp.mod883.not = icmp eq i64 %xtraiter882, 0
  %lcmp.mod884 = trunc i32 %.fr237 to i1
  %.idx863 = shl nuw nsw i64 %i.bq, 2
  %xtraiter888 = and i64 %i.bq, 1
  %i.cj = icmp eq i64 %i.cg, 0
  %unroll_iter891 = and i64 %i.bq, 2147483646
  %lcmp.mod889.not = icmp eq i64 %xtraiter888, 0
  %lcmp.mod890 = trunc i32 %.fr237 to i1
  %.idx864 = shl nuw nsw i64 %i.bq, 2
  %xtraiter894 = and i64 %i.bq, 1
  %i.ck = icmp eq i64 %i.cg, 0
  %unroll_iter897 = and i64 %i.bq, 2147483646
  %lcmp.mod895.not = icmp eq i64 %xtraiter894, 0
  %lcmp.mod896 = trunc i32 %.fr237 to i1
  %.idx865 = shl nuw nsw i64 %i.bq, 2
  %xtraiter900 = and i64 %i.bq, 1
  %i.cl = icmp eq i64 %i.cg, 0
  %unroll_iter903 = and i64 %i.bq, 2147483646
  %lcmp.mod901.not = icmp eq i64 %xtraiter900, 0
  %lcmp.mod902 = trunc i32 %.fr237 to i1
  %.idx866 = shl nuw nsw i64 %i.bq, 2
  %xtraiter906 = and i64 %i.bq, 1
  %i.cm = icmp eq i64 %i.cg, 0
  %unroll_iter909 = and i64 %i.bq, 2147483646
  %lcmp.mod907.not = icmp eq i64 %xtraiter906, 0
  %lcmp.mod908 = trunc i32 %.fr237 to i1
  %.idx867 = shl nuw nsw i64 %i.bq, 2
  %xtraiter912 = and i64 %i.bq, 1
  %i.cn = icmp eq i64 %i.cg, 0
  %unroll_iter915 = and i64 %i.bq, 2147483646
  %lcmp.mod913.not = icmp eq i64 %xtraiter912, 0
  %lcmp.mod914 = trunc i32 %.fr237 to i1
  %xtraiter918 = and i64 %i.bq, 1
  %i.co = icmp eq i64 %i.cg, 0
  %unroll_iter921 = and i64 %i.bq, 2147483646
  %lcmp.mod919.not = icmp eq i64 %xtraiter918, 0
  %lcmp.mod920 = trunc i32 %.fr237 to i1
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7
  %.058189.us.us.us = phi i32 [ %i.qc, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7 ], [ 0, %.preheader.us.us.us.preheader ] ; 3 uses
  %.0128188.us.us.us = phi ptr [ %i.qb, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7 ], [ %i.z, %.preheader.us.us.us.preheader ] ; 5 uses
  %i.cp = add i32 %i.bn, %.058189.us.us.us        ; 32 uses
  %i.cq = load i16, ptr %i.k, align 8, !tbaa !75
  %i.cr = zext i16 %i.cq to i32
  %i.cs = icmp ult i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.k, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread

bb.k:                                             ; preds = %.preheader.us.us.us
  %i.ct = load i16, ptr %i.t, align 2, !tbaa !76
  %i.cu = zext i16 %i.ct to i32
  %i.cv = icmp ult i32 %i.bm, %i.cu
  br i1 %i.cv, label %.lr.ph.i.us.us.us.us.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread

.lr.ph.i.us.us.us.us.us:                          ; preds = %bb.k
  %i.cw = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  br i1 %i.ch, label %.epil.preheader872, label %.lr.ph.i.us.us.us.us.us.new

.lr.ph.i.us.us.us.us.us.new:                      ; preds = %.lr.ph.i.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.new
  %indvars.iv.i.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.1879, %.lr.ph.i.us.us.us.us.us.new ], [ 0, %.lr.ph.i.us.us.us.us.us ] ; 4 uses
  %niter877 = phi i64 [ %niter877.next.1, %.lr.ph.i.us.us.us.us.us.new ], [ 0, %.lr.ph.i.us.us.us.us.us ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.i.us.us.us.us.us
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !77
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !77
  %i.dc = load i16, ptr %i.t, align 2, !tbaa !76
  %i.dd = zext i16 %i.dc to i32
  %i.de = mul nuw i32 %i.cp, %i.dd
  %i.df = add nuw i32 %i.de, %i.bm
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dg
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.i.us.us.us.us.us
  store i16 %i.db, ptr %i.di, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !77
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !77
  %i.do = load i16, ptr %i.t, align 2, !tbaa !76
  %i.dp = zext i16 %i.do to i32
  %i.dq = mul nuw i32 %i.cp, %i.dp
  %i.dr = add nuw i32 %i.dq, %i.bm
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ds
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv.next.i.us.us.us.us.us
  store i16 %i.dn, ptr %i.du, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.1879 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us, 2 ; 2 uses
  %niter877.next.1 = add i64 %niter877, 2         ; 2 uses
  %niter877.ncmp.1 = icmp eq i64 %niter877.next.1, %unroll_iter876
  br i1 %niter877.ncmp.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.new
  br i1 %lcmp.mod874.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us, label %.epil.preheader872

.epil.preheader872:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa, %.lr.ph.i.us.us.us.us.us
  %indvars.iv.i.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us ], [ %indvars.iv.next.i.us.us.us.us.us.1879, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod875)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.epil.init
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !77
  %i.dx = zext i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !77
  %i.ea = load i16, ptr %i.t, align 2, !tbaa !76
  %i.eb = zext i16 %i.ea to i32
  %i.ec = mul nuw i32 %i.cp, %i.eb
  %i.ed = add nuw i32 %i.ec, %i.bm
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %indvars.iv.i.us.us.us.us.us.epil.init
  store i16 %i.dz, ptr %i.eg, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa, %.epil.preheader872
  %.pre327 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre334 = zext i16 %.pre327 to i32
  %i.eh = icmp samesign ult i32 %i.cp, %.pre334
  br i1 %i.eh, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread: ; preds = %bb.k, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us
  %i.ei = phi i32 [ %i.bt, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us ], [ %i.bs, %bb.k ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %i.bq ; 9 uses
  %i.ek = load i16, ptr %i.t, align 2, !tbaa !76
  %i.el = zext i16 %i.ek to i32
  %i.em = icmp ult i32 %i.ei, %i.el
  br i1 %i.em, label %.lr.ph.i.us.us.us.us.us.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503

.lr.ph.i.us.us.us.us.us.1:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread
  %i.en = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  br i1 %i.ci, label %.epil.preheader881, label %.lr.ph.i.us.us.us.us.us.1.new

.lr.ph.i.us.us.us.us.us.1.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.1, %.lr.ph.i.us.us.us.us.us.1.new
  %indvars.iv.i.us.us.us.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.1.1, %.lr.ph.i.us.us.us.us.us.1.new ], [ 0, %.lr.ph.i.us.us.us.us.us.1 ] ; 4 uses
  %niter886 = phi i64 [ %niter886.next.1, %.lr.ph.i.us.us.us.us.us.1.new ], [ 0, %.lr.ph.i.us.us.us.us.us.1 ]
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %indvars.iv.i.us.us.us.us.us.1
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !77
  %i.eq = zext i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !77
  %i.et = load i16, ptr %i.t, align 2, !tbaa !76
  %i.eu = zext i16 %i.et to i32
  %i.ev = mul nuw i32 %i.cp, %i.eu
  %i.ew = add nuw i32 %i.ev, %i.ei
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv.i.us.us.us.us.us.1
  store i16 %i.es, ptr %i.ez, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.1, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %indvars.iv.next.i.us.us.us.us.us.1
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !77
  %i.fc = zext i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !77
  %i.ff = load i16, ptr %i.t, align 2, !tbaa !76
  %i.fg = zext i16 %i.ff to i32
  %i.fh = mul nuw i32 %i.cp, %i.fg
  %i.fi = add nuw i32 %i.fh, %i.ei
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fj
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %indvars.iv.next.i.us.us.us.us.us.1
  store i16 %i.fe, ptr %i.fl, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.1.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.1, 2 ; 2 uses
  %niter886.next.1 = add i64 %niter886, 2         ; 2 uses
  %niter886.ncmp.1 = icmp eq i64 %niter886.next.1, %unroll_iter885
  br i1 %niter886.ncmp.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.1.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread: ; preds = %.preheader.us.us.us, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us
  %2 = getelementptr inbounds nuw i8, ptr %.0128188.us.us.us, i64 %.idx862
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.1.new
  br i1 %lcmp.mod883.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1, label %.epil.preheader881

.epil.preheader881:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa, %.lr.ph.i.us.us.us.us.us.1
  %indvars.iv.i.us.us.us.us.us.1.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.1 ], [ %indvars.iv.next.i.us.us.us.us.us.1.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod884)
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %indvars.iv.i.us.us.us.us.us.1.epil.init
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !77
  %i.fo = zext i16 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !77
  %i.fr = load i16, ptr %i.t, align 2, !tbaa !76
  %i.fs = zext i16 %i.fr to i32
  %i.ft = mul nuw i32 %i.cp, %i.fs
  %i.fu = add nuw i32 %i.ft, %i.ei
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %indvars.iv.i.us.us.us.us.us.1.epil.init
  store i16 %i.fq, ptr %i.fx, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa, %.epil.preheader881
  %.pre328 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre335 = zext i16 %.pre328 to i32
  %i.fy = icmp samesign ult i32 %i.cp, %.pre335
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.bq
  br i1 %i.fy, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1
  %i.fz = phi i32 [ %i.bv, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1 ], [ %i.bu, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread ] ; 4 uses
  %i.ga = load i16, ptr %i.t, align 2, !tbaa !76
  %i.gb = zext i16 %i.ga to i32
  %i.gc = icmp ult i32 %i.fz, %i.gb
  br i1 %i.gc, label %.lr.ph.i.us.us.us.us.us.2, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503
  %4 = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx863
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a

.lr.ph.i.us.us.us.us.us.2:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503
  %i.gd = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  br i1 %i.cj, label %.epil.preheader887, label %.lr.ph.i.us.us.us.us.us.2.new

.lr.ph.i.us.us.us.us.us.2.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.2
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.bq
  %6 = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.bq
  br label %.lr.ph.i.us.us.us.us.us.2.new.a

.lr.ph.i.us.us.us.us.us.2.new.a:                  ; preds = %.lr.ph.i.us.us.us.us.us.2.new.a, %.lr.ph.i.us.us.us.us.us.2.new
  %indvars.iv.i.us.us.us.us.us.2 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.2.new ], [ %indvars.iv.next.i.us.us.us.us.us.2.1, %.lr.ph.i.us.us.us.us.us.2.new.a ] ; 4 uses
  %niter892 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.2.new ], [ %niter892.next.1, %.lr.ph.i.us.us.us.us.us.2.new.a ]
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.i.us.us.us.us.us.2
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !77
  %i.gg = zext i16 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !77
  %i.gj = load i16, ptr %i.t, align 2, !tbaa !76
  %i.gk = zext i16 %i.gj to i32
  %i.gl = mul nuw i32 %i.cp, %i.gk
  %i.gm = add nuw i32 %i.gl, %i.fz
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %indvars.iv.i.us.us.us.us.us.2
  store i16 %i.gi, ptr %i.gp, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.2, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i.us.us.us.us.us.2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !77
  %i.gs = zext i16 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.gs
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !77
  %i.gv = load i16, ptr %i.t, align 2, !tbaa !76
  %i.gw = zext i16 %i.gv to i32
  %i.gx = mul nuw i32 %i.cp, %i.gw
  %i.gy = add nuw i32 %i.gx, %i.fz
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %indvars.iv.next.i.us.us.us.us.us.2
  store i16 %i.gu, ptr %i.hb, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.2.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.2, 2 ; 2 uses
  %niter892.next.1 = add i64 %niter892, 2         ; 2 uses
  %niter892.ncmp.1 = icmp eq i64 %niter892.next.1, %unroll_iter891
  br i1 %niter892.ncmp.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.2.new.a, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread
  %.ph505 = phi ptr [ %2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread ], [ %3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1 ]
  %7 = getelementptr inbounds nuw [2 x i8], ptr %.ph505, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.2.new.a
  br i1 %lcmp.mod889.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2, label %.epil.preheader887

.epil.preheader887:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa, %.lr.ph.i.us.us.us.us.us.2
  %indvars.iv.i.us.us.us.us.us.2.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.2 ], [ %indvars.iv.next.i.us.us.us.us.us.2.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod890)
  %8 = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.bq
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv.i.us.us.us.us.us.2.epil.init
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !77
  %i.he = zext i16 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !77
  %i.hh = load i16, ptr %i.t, align 2, !tbaa !76
  %i.hi = zext i16 %i.hh to i32
  %i.hj = mul nuw i32 %i.cp, %i.hi
  %i.hk = add nuw i32 %i.hj, %i.fz
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.hl
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv.i.us.us.us.us.us.2.epil.init
  store i16 %i.hg, ptr %i.hn, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa, %.epil.preheader887
  %.pre329 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre337 = zext i16 %.pre329 to i32
  %i.ho = icmp samesign ult i32 %i.cp, %.pre337
  %9 = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx864 ; 2 uses
  br i1 %i.ho, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2
  %i.hp = phi i32 [ %i.bw, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507 ], [ %i.bx, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2 ] ; 4 uses
  %10 = phi ptr [ %4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507 ], [ %9, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2 ] ; 5 uses
  %i.hq = load i16, ptr %i.t, align 2, !tbaa !76
  %i.hr = zext i16 %i.hq to i32
  %i.hs = icmp ult i32 %i.hp, %i.hr
  br i1 %i.hs, label %.lr.ph.i.us.us.us.us.us.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511

.lr.ph.i.us.us.us.us.us.3:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a
  %i.ht = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  br i1 %i.ck, label %.epil.preheader893, label %.lr.ph.i.us.us.us.us.us.3.new

.lr.ph.i.us.us.us.us.us.3.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.3, %.lr.ph.i.us.us.us.us.us.3.new
  %indvars.iv.i.us.us.us.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.3.1, %.lr.ph.i.us.us.us.us.us.3.new ], [ 0, %.lr.ph.i.us.us.us.us.us.3 ] ; 4 uses
  %niter898 = phi i64 [ %niter898.next.1, %.lr.ph.i.us.us.us.us.us.3.new ], [ 0, %.lr.ph.i.us.us.us.us.us.3 ]
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %indvars.iv.i.us.us.us.us.us.3
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !77
  %i.hw = zext i16 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !77
  %i.hz = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ia = zext i16 %i.hz to i32
  %i.ib = mul nuw i32 %i.cp, %i.ia
  %i.ic = add nuw i32 %i.ib, %i.hp
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.id
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %indvars.iv.i.us.us.us.us.us.3
  store i16 %i.hy, ptr %i.if, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.3 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.3, 1 ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %indvars.iv.next.i.us.us.us.us.us.3
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !77
  %i.ii = zext i16 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !77
  %i.il = load i16, ptr %i.t, align 2, !tbaa !76
  %i.im = zext i16 %i.il to i32
  %i.in = mul nuw i32 %i.cp, %i.im
  %i.io = add nuw i32 %i.in, %i.hp
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.ip
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %indvars.iv.next.i.us.us.us.us.us.3
  store i16 %i.ik, ptr %i.ir, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.3.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.3, 2 ; 2 uses
  %niter898.next.1 = add i64 %niter898, 2         ; 2 uses
  %niter898.ncmp.1 = icmp eq i64 %niter898.next.1, %unroll_iter897
  br i1 %niter898.ncmp.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.3.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.3.new
  br i1 %lcmp.mod895.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3, label %.epil.preheader893

.epil.preheader893:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa, %.lr.ph.i.us.us.us.us.us.3
  %indvars.iv.i.us.us.us.us.us.3.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.3 ], [ %indvars.iv.next.i.us.us.us.us.us.3.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod896)
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %indvars.iv.i.us.us.us.us.us.3.epil.init
  %i.it = load i16, ptr %i.is, align 2, !tbaa !77
  %i.iu = zext i16 %i.it to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !77
  %i.ix = load i16, ptr %i.t, align 2, !tbaa !76
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw i32 %i.cp, %i.iy
  %i.ja = add nuw i32 %i.iz, %i.hp
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %indvars.iv.i.us.us.us.us.us.3.epil.init
  store i16 %i.iw, ptr %i.jd, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa, %.epil.preheader893
  %.pre330 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre339 = zext i16 %.pre330 to i32
  %i.je = icmp samesign ult i32 %i.cp, %.pre339
  br i1 %i.je, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3
  %i.jf = phi i32 [ %i.bz, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3 ], [ %i.by, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a ] ; 4 uses
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.bq ; 9 uses
  %i.jh = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ji = zext i16 %i.jh to i32
  %i.jj = icmp ult i32 %i.jf, %i.ji
  br i1 %i.jj, label %.lr.ph.i.us.us.us.us.us.4, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515

.lr.ph.i.us.us.us.us.us.4:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511
  %i.jk = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  br i1 %i.cl, label %.epil.preheader899, label %.lr.ph.i.us.us.us.us.us.4.new

.lr.ph.i.us.us.us.us.us.4.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.4, %.lr.ph.i.us.us.us.us.us.4.new
  %indvars.iv.i.us.us.us.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.4.1, %.lr.ph.i.us.us.us.us.us.4.new ], [ 0, %.lr.ph.i.us.us.us.us.us.4 ] ; 4 uses
  %niter904 = phi i64 [ %niter904.next.1, %.lr.ph.i.us.us.us.us.us.4.new ], [ 0, %.lr.ph.i.us.us.us.us.us.4 ]
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %indvars.iv.i.us.us.us.us.us.4
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !77
  %i.jn = zext i16 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !77
  %i.jq = load i16, ptr %i.t, align 2, !tbaa !76
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw i32 %i.cp, %i.jr
  %i.jt = add nuw i32 %i.js, %i.jf
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ju
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv.i.us.us.us.us.us.4
  store i16 %i.jp, ptr %i.jw, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.4 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.4, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %indvars.iv.next.i.us.us.us.us.us.4
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !77
  %i.jz = zext i16 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !77
  %i.kc = load i16, ptr %i.t, align 2, !tbaa !76
  %i.kd = zext i16 %i.kc to i32
  %i.ke = mul nuw i32 %i.cp, %i.kd
  %i.kf = add nuw i32 %i.ke, %i.jf
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %indvars.iv.next.i.us.us.us.us.us.4
  store i16 %i.kb, ptr %i.ki, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.4.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.4, 2 ; 2 uses
  %niter904.next.1 = add i64 %niter904, 2         ; 2 uses
  %niter904.ncmp.1 = icmp eq i64 %niter904.next.1, %unroll_iter903
  br i1 %niter904.ncmp.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.4.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3
  %11 = phi ptr [ %10, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3 ], [ %7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread ], [ %9, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2 ]
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx865
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.4.new
  br i1 %lcmp.mod901.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4, label %.epil.preheader899

.epil.preheader899:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa, %.lr.ph.i.us.us.us.us.us.4
  %indvars.iv.i.us.us.us.us.us.4.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.4 ], [ %indvars.iv.next.i.us.us.us.us.us.4.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod902)
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %indvars.iv.i.us.us.us.us.us.4.epil.init
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !77
  %i.kl = zext i16 %i.kk to i64
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.kl
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !77
  %i.ko = load i16, ptr %i.t, align 2, !tbaa !76
  %i.kp = zext i16 %i.ko to i32
  %i.kq = mul nuw i32 %i.cp, %i.kp
  %i.kr = add nuw i32 %i.kq, %i.jf
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ks
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %indvars.iv.i.us.us.us.us.us.4.epil.init
  store i16 %i.kn, ptr %i.ku, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa, %.epil.preheader899
  %.pre331 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre341 = zext i16 %.pre331 to i32
  %i.kv = icmp samesign ult i32 %i.cp, %.pre341
  %13 = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %i.bq
  br i1 %i.kv, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4
  %i.kw = phi i32 [ %i.cb, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4 ], [ %i.ca, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511 ] ; 4 uses
  %i.kx = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ky = zext i16 %i.kx to i32
  %i.kz = icmp ult i32 %i.kw, %i.ky
  br i1 %i.kz, label %.lr.ph.i.us.us.us.us.us.5, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515
  %14 = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.idx866
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a

.lr.ph.i.us.us.us.us.us.5:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515
  %i.la = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  br i1 %i.cm, label %.epil.preheader905, label %.lr.ph.i.us.us.us.us.us.5.new

.lr.ph.i.us.us.us.us.us.5.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.5
  %15 = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %i.bq
  %16 = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %i.bq
  br label %.lr.ph.i.us.us.us.us.us.5.new.a

.lr.ph.i.us.us.us.us.us.5.new.a:                  ; preds = %.lr.ph.i.us.us.us.us.us.5.new.a, %.lr.ph.i.us.us.us.us.us.5.new
  %indvars.iv.i.us.us.us.us.us.5 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.5.new ], [ %indvars.iv.next.i.us.us.us.us.us.5.1, %.lr.ph.i.us.us.us.us.us.5.new.a ] ; 4 uses
  %niter910 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.5.new ], [ %niter910.next.1, %.lr.ph.i.us.us.us.us.us.5.new.a ]
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %indvars.iv.i.us.us.us.us.us.5
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !77
  %i.ld = zext i16 %i.lc to i64
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !77
  %i.lg = load i16, ptr %i.t, align 2, !tbaa !76
  %i.lh = zext i16 %i.lg to i32
  %i.li = mul nuw i32 %i.cp, %i.lh
  %i.lj = add nuw i32 %i.li, %i.kw
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %indvars.iv.i.us.us.us.us.us.5
  store i16 %i.lf, ptr %i.lm, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.5 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.5, 1 ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %16, i64 %indvars.iv.next.i.us.us.us.us.us.5
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !77
  %i.lp = zext i16 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !77
  %i.ls = load i16, ptr %i.t, align 2, !tbaa !76
  %i.lt = zext i16 %i.ls to i32
  %i.lu = mul nuw i32 %i.cp, %i.lt
  %i.lv = add nuw i32 %i.lu, %i.kw
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %indvars.iv.next.i.us.us.us.us.us.5
  store i16 %i.lr, ptr %i.ly, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.5.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.5, 2 ; 2 uses
  %niter910.next.1 = add i64 %niter910, 2         ; 2 uses
  %niter910.ncmp.1 = icmp eq i64 %niter910.next.1, %unroll_iter909
  br i1 %niter910.ncmp.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.5.new.a, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread
  %.ph517 = phi ptr [ %12, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread ], [ %13, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4 ]
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.ph517, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.5.new.a
  br i1 %lcmp.mod907.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5, label %.epil.preheader905

.epil.preheader905:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa, %.lr.ph.i.us.us.us.us.us.5
  %indvars.iv.i.us.us.us.us.us.5.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.5 ], [ %indvars.iv.next.i.us.us.us.us.us.5.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod908)
  %17 = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %i.bq
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %17, i64 %indvars.iv.i.us.us.us.us.us.5.epil.init
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !77
  %i.mc = zext i16 %i.mb to i64
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2, !tbaa !77
  %i.mf = load i16, ptr %i.t, align 2, !tbaa !76
  %i.mg = zext i16 %i.mf to i32
  %i.mh = mul nuw i32 %i.cp, %i.mg
  %i.mi = add nuw i32 %i.mh, %i.kw
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.mj
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %indvars.iv.i.us.us.us.us.us.5.epil.init
  store i16 %i.me, ptr %i.ml, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa, %.epil.preheader905
  %.pre332 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre343 = zext i16 %.pre332 to i32
  %i.mm = icmp samesign ult i32 %i.cp, %.pre343
  %18 = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.idx867 ; 2 uses
  br i1 %i.mm, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5
  %i.mn = phi i32 [ %i.cc, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519 ], [ %i.cd, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5 ] ; 4 uses
  %19 = phi ptr [ %14, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519 ], [ %18, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5 ] ; 8 uses
  %i.mo = load i16, ptr %i.t, align 2, !tbaa !76
  %i.mp = zext i16 %i.mo to i32
  %i.mq = icmp ult i32 %i.mn, %i.mp
  br i1 %i.mq, label %.lr.ph.i.us.us.us.us.us.6, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %i.bq
  br label %bb.l

.lr.ph.i.us.us.us.us.us.6:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a
  %i.ms = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  br i1 %i.cn, label %.epil.preheader911, label %.lr.ph.i.us.us.us.us.us.6.new

.lr.ph.i.us.us.us.us.us.6.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.6, %.lr.ph.i.us.us.us.us.us.6.new
  %indvars.iv.i.us.us.us.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.6.1, %.lr.ph.i.us.us.us.us.us.6.new ], [ 0, %.lr.ph.i.us.us.us.us.us.6 ] ; 4 uses
  %niter916 = phi i64 [ %niter916.next.1, %.lr.ph.i.us.us.us.us.us.6.new ], [ 0, %.lr.ph.i.us.us.us.us.us.6 ]
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %indvars.iv.i.us.us.us.us.us.6
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !77
  %i.mv = zext i16 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !77
  %i.my = load i16, ptr %i.t, align 2, !tbaa !76
  %i.mz = zext i16 %i.my to i32
  %i.na = mul nuw i32 %i.cp, %i.mz
  %i.nb = add nuw i32 %i.na, %i.mn
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.nc
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nd, i64 %indvars.iv.i.us.us.us.us.us.6
  store i16 %i.mx, ptr %i.ne, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.6 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.6, 1 ; 2 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %indvars.iv.next.i.us.us.us.us.us.6
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !77
  %i.nh = zext i16 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !77
  %i.nk = load i16, ptr %i.t, align 2, !tbaa !76
  %i.nl = zext i16 %i.nk to i32
  %i.nm = mul nuw i32 %i.cp, %i.nl
  %i.nn = add nuw i32 %i.nm, %i.mn
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.no
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %indvars.iv.next.i.us.us.us.us.us.6
  store i16 %i.nj, ptr %i.nq, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.6.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.6, 2 ; 2 uses
  %niter916.next.1 = add i64 %niter916, 2         ; 2 uses
  %niter916.ncmp.1 = icmp eq i64 %niter916.next.1, %unroll_iter915
  br i1 %niter916.ncmp.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.6.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread
  %i.nr = phi ptr [ %i.lz, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread ], [ %18, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5 ]
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.nr, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.6.new
  br i1 %lcmp.mod913.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6, label %.epil.preheader911

.epil.preheader911:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa, %.lr.ph.i.us.us.us.us.us.6
  %indvars.iv.i.us.us.us.us.us.6.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.6 ], [ %indvars.iv.next.i.us.us.us.us.us.6.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod914)
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %indvars.iv.i.us.us.us.us.us.6.epil.init
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !77
  %i.nv = zext i16 %i.nu to i64
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.nv
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !77
  %i.ny = load i16, ptr %i.t, align 2, !tbaa !76
  %i.nz = zext i16 %i.ny to i32
  %i.oa = mul nuw i32 %i.cp, %i.nz
  %i.ob = add nuw i32 %i.oa, %i.mn
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.oc
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.od, i64 %indvars.iv.i.us.us.us.us.us.6.epil.init
  store i16 %i.nx, ptr %i.oe, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa, %.epil.preheader911
  %.pre333 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre345 = zext i16 %.pre333 to i32
  %i.of = icmp samesign ult i32 %i.cp, %.pre345
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %i.bq ; 2 uses
  br i1 %i.of, label %bb.l, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7

bb.l:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6
  %i.oh = phi i32 [ %i.ce, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523 ], [ %i.cf, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6 ] ; 4 uses
  %i.oi = phi ptr [ %i.mr, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523 ], [ %i.og, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6 ] ; 3 uses
  %i.oj = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ok = zext i16 %i.oj to i32
  %i.ol = icmp ult i32 %i.oh, %i.ok
  br i1 %i.ol, label %.lr.ph.i.us.us.us.us.us.7, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7

.lr.ph.i.us.us.us.us.us.7:                        ; preds = %bb.l
  %i.om = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  br i1 %i.co, label %.epil.preheader917, label %.lr.ph.i.us.us.us.us.us.7.new

.lr.ph.i.us.us.us.us.us.7.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.7
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %i.bq
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %i.bq
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.us.us.us.us.us.7.new
  %indvars.iv.i.us.us.us.us.us.7 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.7.new ], [ %indvars.iv.next.i.us.us.us.us.us.7.1, %bb.m ] ; 4 uses
  %niter922 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.7.new ], [ %niter922.next.1, %bb.m ]
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %indvars.iv.i.us.us.us.us.us.7
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !77
  %i.or = zext i16 %i.oq to i64
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.or
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !77
  %i.ou = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ov = zext i16 %i.ou to i32
  %i.ow = mul nuw i32 %i.cp, %i.ov
  %i.ox = add nuw i32 %i.ow, %i.oh
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.oy
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %indvars.iv.i.us.us.us.us.us.7
  store i16 %i.ot, ptr %i.pa, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.7 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.7, 1 ; 2 uses
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.oo, i64 %indvars.iv.next.i.us.us.us.us.us.7
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !77
  %i.pd = zext i16 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !77
  %i.pg = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ph = zext i16 %i.pg to i32
  %i.pi = mul nuw i32 %i.cp, %i.ph
  %i.pj = add nuw i32 %i.pi, %i.oh
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.pk
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %indvars.iv.next.i.us.us.us.us.us.7
  store i16 %i.pf, ptr %i.pm, align 2, !tbaa !77
  %indvars.iv.next.i.us.us.us.us.us.7.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.7, 2 ; 2 uses
  %niter922.next.1 = add i64 %niter922, 2         ; 2 uses
  %niter922.ncmp.1 = icmp eq i64 %niter922.next.1, %unroll_iter921
  br i1 %niter922.ncmp.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa, label %bb.m, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa: ; preds = %bb.m
  br i1 %lcmp.mod919.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7, label %.epil.preheader917

.epil.preheader917:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa, %.lr.ph.i.us.us.us.us.us.7
  %indvars.iv.i.us.us.us.us.us.7.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.7 ], [ %indvars.iv.next.i.us.us.us.us.us.7.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod920)
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %i.bq
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv.i.us.us.us.us.us.7.epil.init
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !77
  %i.pq = zext i16 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.pq
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !77
  %i.pt = load i16, ptr %i.t, align 2, !tbaa !76
  %i.pu = zext i16 %i.pt to i32
  %i.pv = mul nuw i32 %i.cp, %i.pu
  %i.pw = add nuw i32 %i.pv, %i.oh
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.px
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %indvars.iv.i.us.us.us.us.us.7.epil.init
  store i16 %i.ps, ptr %i.pz, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7: ; preds = %.epil.preheader917, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread, %bb.l, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6
  %i.qa = phi ptr [ %i.ns, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread ], [ %i.og, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6 ], [ %i.oi, %bb.l ], [ %i.oi, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa ], [ %i.oi, %.epil.preheader917 ]
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.qa, i64 %i.bq
  %i.qc = add nuw nsw i32 %.058189.us.us.us, 2
  %i.qd = icmp samesign ult i32 %.058189.us.us.us, 14
  br i1 %i.qd, label %.preheader.us.us.us, label %.split212.us, !llvm.loop !90

.preheader.us.us:                                 ; preds = %.split190.us.split.us, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7
  %.058189.us.us = phi i32 [ %i.zy, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7 ], [ 0, %.split190.us.split.us ] ; 3 uses
  %.0128188.us.us = phi ptr [ %spec.select.idx.i.sroa.sel.idx.us.us207.us.7.sroa.sel.idx.sroa.sel, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7 ], [ %i.z, %.split190.us.split.us ] ; 2 uses
  %i.qe = add i32 %i.bn, %.058189.us.us           ; 24 uses
  %i.qf = load i32, ptr %i.a, align 4             ; 5 uses
  %.not.i.us.us202.us = icmp eq i32 %i.qf, 0      ; 5 uses
  %spec.select231.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us, i64 0, i64 2
  %spec.select231.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.0128188.us.us, i64 %spec.select231.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %i.qg = load i16, ptr %i.k, align 8, !tbaa !75
  %i.qh = zext i16 %i.qg to i32
  %i.qi = icmp ult i32 %i.qe, %i.qh
  br i1 %i.qi, label %bb.n, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535: ; preds = %.preheader.us.us
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %spec.select231.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx537.sroa.sel.idx = select i1 %.not.i.us.us202.us, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx537.sroa.sel = getelementptr inbounds i8, ptr %i.qj, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx537.sroa.sel.idx
  %.not.i.us.us202.us.1539 = icmp eq i32 %i.qf, 0 ; 2 uses
  %spec.select231.1540 = select i1 %.not.i.us.us202.us.1539, i64 0, i64 2
  %spec.select137.us.us205.us.1541 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx537.sroa.sel, i64 %spec.select231.1540
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread

bb.n:                                             ; preds = %.preheader.us.us
  %i.qk = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ql = zext i16 %i.qk to i32
  %i.qm = icmp ult i32 %i.bm, %i.ql
  br i1 %i.qm, label %.lr.ph.i.us.us.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread: ; preds = %bb.n
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %spec.select231.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx526.sroa.sel.idx = select i1 %.not.i.us.us202.us, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx526.sroa.sel = getelementptr inbounds i8, ptr %i.qn, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx526.sroa.sel.idx
  %.not.i.us.us202.us.1528 = icmp eq i32 %i.qf, 0 ; 2 uses
  %spec.select231.1529 = select i1 %.not.i.us.us202.us.1528, i64 0, i64 2
  %spec.select137.us.us205.us.1530 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx526.sroa.sel, i64 %spec.select231.1529
  br label %bb.o

.lr.ph.i.us.us.us:                                ; preds = %bb.n
  %i.qo = load ptr, ptr %i.u, align 8, !tbaa !78  ; 2 uses
  %i.qp = load i16, ptr %spec.select231.sroa.sel.idx.sroa.sel, align 2, !tbaa !77
  %i.qq = zext i16 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.qq
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !77
  %i.qt = load i16, ptr %i.t, align 2, !tbaa !76
  %i.qu = zext i16 %i.qt to i32
  %i.qv = mul nuw i32 %i.qe, %i.qu
  %i.qw = add nuw i32 %i.qv, %i.bm
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.qx
  store i16 %i.qs, ptr %i.qy, align 2, !tbaa !77
  %spec.select231.sroa.sel.idx.sroa.sel.sroa.sel.v = select i1 %.not.i.us.us202.us, i64 2, i64 4
  %spec.select231.sroa.sel.idx.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.0128188.us.us, i64 %spec.select231.sroa.sel.idx.sroa.sel.sroa.sel.v
  %i.qz = load i16, ptr %spec.select231.sroa.sel.idx.sroa.sel.sroa.sel, align 2, !tbaa !77
  %i.ra = zext i16 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ra
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !77
  %i.rd = load i16, ptr %i.t, align 2, !tbaa !76
  %i.re = zext i16 %i.rd to i32
  %i.rf = mul nuw i32 %i.qe, %i.re
  %i.rg = add nuw i32 %i.rf, %i.bm
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 2
  store i16 %i.rc, ptr %i.rj, align 2, !tbaa !77
  %.pre313 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre314 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre347 = zext i16 %.pre314 to i32
  %i.rk = icmp samesign ult i32 %i.qe, %.pre347
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %spec.select231.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.rl, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx.sroa.sel.idx
  %.not.i.us.us202.us.1 = icmp eq i32 %.pre313, 0 ; 3 uses
  %spec.select231.1 = select i1 %.not.i.us.us202.us.1, i64 0, i64 2
  %spec.select137.us.us205.us.1 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx.sroa.sel, i64 %spec.select231.1 ; 2 uses
  br i1 %i.rk, label %bb.o, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread

bb.o:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread, %.lr.ph.i.us.us.us
  %spec.select137.us.us205.us.1533 = phi ptr [ %spec.select137.us.us205.us.1530, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread ], [ %spec.select137.us.us205.us.1, %.lr.ph.i.us.us.us ] ; 4 uses
  %.not.i.us.us202.us.1532 = phi i1 [ %.not.i.us.us202.us.1528, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread ], [ %.not.i.us.us202.us.1, %.lr.ph.i.us.us.us ] ; 2 uses
  %i.rm = phi i32 [ %i.bs, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread ], [ %i.bt, %.lr.ph.i.us.us.us ] ; 3 uses
  %i.rn = phi i32 [ %i.qf, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread ], [ %.pre313, %.lr.ph.i.us.us.us ] ; 2 uses
  %i.ro = load i16, ptr %i.t, align 2, !tbaa !76
  %i.rp = zext i16 %i.ro to i32
  %i.rq = icmp ult i32 %i.rm, %i.rp
  br i1 %i.rq, label %.lr.ph.i.us.us.us.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553: ; preds = %bb.o
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.1533, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx557.sroa.sel.idx = select i1 %.not.i.us.us202.us.1532, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx557.sroa.sel = getelementptr inbounds i8, ptr %i.rr, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx557.sroa.sel.idx
  %.not.i.us.us202.us.2559 = icmp eq i32 %i.rn, 0 ; 2 uses
  %spec.select231.2560 = select i1 %.not.i.us.us202.us.2559, i64 0, i64 2
  %spec.select137.us.us205.us.2561 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx557.sroa.sel, i64 %spec.select231.2560
  br label %bb.p

.lr.ph.i.us.us.us.1:                              ; preds = %bb.o
  %i.rs = load ptr, ptr %i.u, align 8, !tbaa !78  ; 2 uses
  %i.rt = load i16, ptr %spec.select137.us.us205.us.1533, align 2, !tbaa !77
  %i.ru = zext i16 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ru
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !77
  %i.rx = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ry = zext i16 %i.rx to i32
  %i.rz = mul nuw i32 %i.qe, %i.ry
  %i.sa = add nuw i32 %i.rz, %i.rm
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.sb
  store i16 %i.rw, ptr %i.sc, align 2, !tbaa !77
  %i.sd = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.1533, i64 2
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !77
  %i.sf = zext i16 %i.se to i64
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.sf
  %i.sh = load i16, ptr %i.sg, align 2, !tbaa !77
  %i.si = load i16, ptr %i.t, align 2, !tbaa !76
  %i.sj = zext i16 %i.si to i32
  %i.sk = mul nuw i32 %i.qe, %i.sj
  %i.sl = add nuw i32 %i.sk, %i.rm
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 2
  store i16 %i.sh, ptr %i.so, align 2, !tbaa !77
  %.pre315 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre316 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre349 = zext i16 %.pre316 to i32
  %i.sp = icmp samesign ult i32 %i.qe, %.pre349
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.1533, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us.1532, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.sq, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx.sroa.sel.idx
  %.not.i.us.us202.us.2 = icmp eq i32 %.pre315, 0 ; 3 uses
  %spec.select231.2 = select i1 %.not.i.us.us202.us.2, i64 0, i64 2
  %spec.select137.us.us205.us.2 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx.sroa.sel, i64 %spec.select231.2 ; 2 uses
  br i1 %i.sp, label %bb.p, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread: ; preds = %.lr.ph.i.us.us.us, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535
  %spec.select137.us.us205.us.1534.ph = phi ptr [ %spec.select137.us.us205.us.1541, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535 ], [ %spec.select137.us.us205.us.1, %.lr.ph.i.us.us.us ]
  %.not.i.us.us202.us.1531.ph = phi i1 [ %.not.i.us.us202.us.1539, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535 ], [ %.not.i.us.us202.us.1, %.lr.ph.i.us.us.us ]
  %.ph542 = phi i32 [ %i.qf, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535 ], [ %.pre313, %.lr.ph.i.us.us.us ] ; 2 uses
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.1534.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx546.sroa.sel.idx = select i1 %.not.i.us.us202.us.1531.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx546.sroa.sel = getelementptr inbounds i8, ptr %i.sr, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx546.sroa.sel.idx
  %.not.i.us.us202.us.2548 = icmp eq i32 %.ph542, 0 ; 2 uses
  %spec.select231.2549 = select i1 %.not.i.us.us202.us.2548, i64 0, i64 2
  %spec.select137.us.us205.us.2550 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx546.sroa.sel, i64 %spec.select231.2549
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.2.thread

bb.p:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553, %.lr.ph.i.us.us.us.1
  %spec.select137.us.us205.us.2563 = phi ptr [ %spec.select137.us.us205.us.2561, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553 ], [ %spec.select137.us.us205.us.2, %.lr.ph.i.us.us.us.1 ] ; 4 uses
  %.not.i.us.us202.us.2562 = phi i1 [ %.not.i.us.us202.us.2559, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553 ], [ %.not.i.us.us202.us.2, %.lr.ph.i.us.us.us.1 ] ; 2 uses
  %i.ss = phi i32 [ %i.bu, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553 ], [ %i.bv, %.lr.ph.i.us.us.us.1 ] ; 3 uses
  %i.st = phi i32 [ %i.rn, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553 ], [ %.pre315, %.lr.ph.i.us.us.us.1 ] ; 2 uses
  %i.su = load i16, ptr %i.t, align 2, !tbaa !76
  %i.sv = zext i16 %i.su to i32
  %i.sw = icmp ult i32 %i.ss, %i.sv
  br i1 %i.sw, label %.lr.ph.i.us.us.us.2, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.2.thread575

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.2.thread575: ; preds = %bb.p
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.2563, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.2.sroa.sel.idx579.sroa.sel.idx = select i1 %.not.i.us.us202.us.2562, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.2.sroa.sel.idx579.sroa.sel = getelementptr inbounds i8, ptr %i.sx, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.2.sroa.sel.idx579.sroa.sel.idx
  %.not.i.us.us202.us.3581 = icmp eq i32 %i.st, 0 ; 2 uses
  %spec.select231.3582 = select i1 %.not.i.us.us202.us.3581, i64 0, i64 2
  %spec.select137.us.us205.us.3583 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.2.sroa.sel.idx579.sroa.sel, i64 %spec.select231.3582
  br label %bb.q

.lr.ph.i.us.us.us.2:                              ; preds = %bb.p
  %i.sy = load ptr, ptr %i.u, align 8, !tbaa !78  ; 2 uses
  %i.sz = load i16, ptr %spec.select137.us.us205.us.2563, align 2, !tbaa !77
  %i.ta = zext i16 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ta
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !77
  %i.td = load i16, ptr %i.t, align 2, !tbaa !76
  %i.te = zext i16 %i.td to i32
  %i.tf = mul nuw i32 %i.qe, %i.te
  %i.tg = add nuw i32 %i.tf, %i.ss
  %i.th = zext i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.th
  store i16 %i.tc, ptr %i.ti, align 2, !tbaa !77
  %i.tj = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.2563, i64 2
end_hunk_0
begin_hunk_1_@_ZN6LibRaw21lossless_dng_load_rawEv:bb.a
bb.s:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619, %.lr.ph.i.us.us.us.4
  %spec.select137.us.us205.us.5629 = phi ptr [ %spec.select137.us.us205.us.5627, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619 ], [ %spec.select137.us.us205.us.5, %.lr.ph.i.us.us.us.4 ] ; 4 uses
  %.not.i.us.us202.us.5628 = phi i1 [ %.not.i.us.us202.us.5625, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619 ], [ %.not.i.us.us202.us.5, %.lr.ph.i.us.us.us.4 ] ; 2 uses
  %i.wk = phi i32 [ %i.ca, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619 ], [ %i.cb, %.lr.ph.i.us.us.us.4 ] ; 3 uses
  %i.wl = phi i32 [ %i.vf, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619 ], [ %.pre321, %.lr.ph.i.us.us.us.4 ] ; 2 uses
  %i.wm = load i16, ptr %i.t, align 2, !tbaa !76
  %i.wn = zext i16 %i.wm to i32
  %i.wo = icmp ult i32 %i.wk, %i.wn
  br i1 %i.wo, label %.lr.ph.i.us.us.us.5, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641: ; preds = %bb.s
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.5629, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx645.sroa.sel.idx = select i1 %.not.i.us.us202.us.5628, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx645.sroa.sel = getelementptr inbounds i8, ptr %i.wp, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx645.sroa.sel.idx
  %.not.i.us.us202.us.6647 = icmp eq i32 %i.wl, 0 ; 2 uses
  %spec.select231.6648 = select i1 %.not.i.us.us202.us.6647, i64 0, i64 2
  %spec.select137.us.us205.us.6649 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx645.sroa.sel, i64 %spec.select231.6648
  br label %bb.t

.lr.ph.i.us.us.us.5:                              ; preds = %bb.s
  %i.wq = load ptr, ptr %i.u, align 8, !tbaa !78  ; 2 uses
  %i.wr = load i16, ptr %spec.select137.us.us205.us.5629, align 2, !tbaa !77
  %i.ws = zext i16 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ws
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !77
  %i.wv = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ww = zext i16 %i.wv to i32
  %i.wx = mul nuw i32 %i.qe, %i.ww
  %i.wy = add nuw i32 %i.wx, %i.wk
  %i.wz = zext i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.wz
  store i16 %i.wu, ptr %i.xa, align 2, !tbaa !77
  %i.xb = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.5629, i64 2
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !77
  %i.xd = zext i16 %i.xc to i64
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.xd
  %i.xf = load i16, ptr %i.xe, align 2, !tbaa !77
  %i.xg = load i16, ptr %i.t, align 2, !tbaa !76
  %i.xh = zext i16 %i.xg to i32
  %i.xi = mul nuw i32 %i.qe, %i.xh
  %i.xj = add nuw i32 %i.xi, %i.wk
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.xk
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 2
  store i16 %i.xf, ptr %i.xm, align 2, !tbaa !77
  %.pre323 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre324 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre357 = zext i16 %.pre324 to i32
  %i.xn = icmp samesign ult i32 %i.qe, %.pre357
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.5629, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us.5628, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.xo, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx.sroa.sel.idx
  %.not.i.us.us202.us.6 = icmp eq i32 %.pre323, 0 ; 3 uses
  %spec.select231.6 = select i1 %.not.i.us.us202.us.6, i64 0, i64 2
  %spec.select137.us.us205.us.6 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx.sroa.sel, i64 %spec.select231.6 ; 2 uses
  br i1 %i.xn, label %bb.t, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread: ; preds = %.lr.ph.i.us.us.us.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread
  %spec.select137.us.us205.us.5618.ph = phi ptr [ %spec.select137.us.us205.us.5616, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread ], [ %spec.select137.us.us205.us.5, %.lr.ph.i.us.us.us.4 ]
  %.not.i.us.us202.us.5617.ph = phi i1 [ %.not.i.us.us202.us.5614, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread ], [ %.not.i.us.us202.us.5, %.lr.ph.i.us.us.us.4 ]
  %.ph630 = phi i32 [ %.ph608, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread ], [ %.pre321, %.lr.ph.i.us.us.us.4 ] ; 2 uses
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.5618.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx634.sroa.sel.idx = select i1 %.not.i.us.us202.us.5617.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx634.sroa.sel = getelementptr inbounds i8, ptr %i.xp, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx634.sroa.sel.idx
  %.not.i.us.us202.us.6636 = icmp eq i32 %.ph630, 0 ; 2 uses
  %spec.select231.6637 = select i1 %.not.i.us.us202.us.6636, i64 0, i64 2
  %spec.select137.us.us205.us.6638 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx634.sroa.sel, i64 %spec.select231.6637
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread

bb.t:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641, %.lr.ph.i.us.us.us.5
  %spec.select137.us.us205.us.6651 = phi ptr [ %spec.select137.us.us205.us.6649, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641 ], [ %spec.select137.us.us205.us.6, %.lr.ph.i.us.us.us.5 ] ; 4 uses
  %.not.i.us.us202.us.6650 = phi i1 [ %.not.i.us.us202.us.6647, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641 ], [ %.not.i.us.us202.us.6, %.lr.ph.i.us.us.us.5 ] ; 2 uses
  %i.xq = phi i32 [ %i.cc, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641 ], [ %i.cd, %.lr.ph.i.us.us.us.5 ] ; 3 uses
  %i.xr = phi i32 [ %i.wl, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641 ], [ %.pre323, %.lr.ph.i.us.us.us.5 ]
  %i.xs = load i16, ptr %i.t, align 2, !tbaa !76
  %i.xt = zext i16 %i.xs to i32
  %i.xu = icmp ult i32 %i.xq, %i.xt
  br i1 %i.xu, label %.lr.ph.i.us.us.us.6, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663: ; preds = %bb.t
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.6651, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx667.sroa.sel.idx = select i1 %.not.i.us.us202.us.6650, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx667.sroa.sel = getelementptr inbounds i8, ptr %i.xv, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx667.sroa.sel.idx
  %.not.i.us.us202.us.7669 = icmp eq i32 %i.xr, 0 ; 2 uses
  %spec.select231.7670 = select i1 %.not.i.us.us202.us.7669, i64 0, i64 2
  %spec.select137.us.us205.us.7671 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx667.sroa.sel, i64 %spec.select231.7670
  br label %bb.u

.lr.ph.i.us.us.us.6:                              ; preds = %bb.t
  %i.xw = load ptr, ptr %i.u, align 8, !tbaa !78  ; 2 uses
  %i.xx = load i16, ptr %spec.select137.us.us205.us.6651, align 2, !tbaa !77
  %i.xy = zext i16 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.xy
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !77
  %i.yb = load i16, ptr %i.t, align 2, !tbaa !76
  %i.yc = zext i16 %i.yb to i32
  %i.yd = mul nuw i32 %i.qe, %i.yc
  %i.ye = add nuw i32 %i.yd, %i.xq
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.yf
  store i16 %i.ya, ptr %i.yg, align 2, !tbaa !77
  %i.yh = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.6651, i64 2
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !77
  %i.yj = zext i16 %i.yi to i64
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.yj
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !77
  %i.ym = load i16, ptr %i.t, align 2, !tbaa !76
  %i.yn = zext i16 %i.ym to i32
  %i.yo = mul nuw i32 %i.qe, %i.yn
  %i.yp = add nuw i32 %i.yo, %i.xq
  %i.yq = zext i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 2
  store i16 %i.yl, ptr %i.ys, align 2, !tbaa !77
  %.pre325 = load i32, ptr %i.a, align 4
  %.pre326 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre359 = zext i16 %.pre326 to i32
  %i.yt = icmp samesign ult i32 %i.qe, %.pre359
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.6651, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us.6650, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.yu, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx.sroa.sel.idx
  %.not.i.us.us202.us.7 = icmp eq i32 %.pre325, 0 ; 3 uses
  %spec.select231.7 = select i1 %.not.i.us.us202.us.7, i64 0, i64 2
  %spec.select137.us.us205.us.7 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx.sroa.sel, i64 %spec.select231.7 ; 2 uses
  br i1 %i.yt, label %bb.u, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread: ; preds = %.lr.ph.i.us.us.us.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread
  %spec.select137.us.us205.us.6640.ph = phi ptr [ %spec.select137.us.us205.us.6638, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread ], [ %spec.select137.us.us205.us.6, %.lr.ph.i.us.us.us.5 ]
  %.not.i.us.us202.us.6639.ph = phi i1 [ %.not.i.us.us202.us.6636, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread ], [ %.not.i.us.us202.us.6, %.lr.ph.i.us.us.us.5 ]
  %.ph652 = phi i32 [ %.ph630, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread ], [ %.pre323, %.lr.ph.i.us.us.us.5 ]
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.6640.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx656.sroa.sel.idx = select i1 %.not.i.us.us202.us.6639.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx656.sroa.sel = getelementptr inbounds i8, ptr %i.yv, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx656.sroa.sel.idx
  %.not.i.us.us202.us.7658 = icmp eq i32 %.ph652, 0 ; 2 uses
  %spec.select231.7659 = select i1 %.not.i.us.us202.us.7658, i64 0, i64 2
  %spec.select137.us.us205.us.7660 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx656.sroa.sel, i64 %spec.select231.7659
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7

bb.u:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663, %.lr.ph.i.us.us.us.6
  %spec.select137.us.us205.us.7673 = phi ptr [ %spec.select137.us.us205.us.7671, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663 ], [ %spec.select137.us.us205.us.7, %.lr.ph.i.us.us.us.6 ] ; 4 uses
  %.not.i.us.us202.us.7672 = phi i1 [ %.not.i.us.us202.us.7669, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663 ], [ %.not.i.us.us202.us.7, %.lr.ph.i.us.us.us.6 ] ; 2 uses
  %i.yw = phi i32 [ %i.ce, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663 ], [ %i.cf, %.lr.ph.i.us.us.us.6 ] ; 3 uses
  %i.yx = load i16, ptr %i.t, align 2, !tbaa !76
  %i.yy = zext i16 %i.yx to i32
  %i.yz = icmp ult i32 %i.yw, %i.yy
  br i1 %i.yz, label %.lr.ph.i.us.us.us.7, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7

.lr.ph.i.us.us.us.7:                              ; preds = %bb.u
  %i.za = load ptr, ptr %i.u, align 8, !tbaa !78  ; 2 uses
  %i.zb = load i16, ptr %spec.select137.us.us205.us.7673, align 2, !tbaa !77
  %i.zc = zext i16 %i.zb to i64
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.zc
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !77
  %i.zf = load i16, ptr %i.t, align 2, !tbaa !76
  %i.zg = zext i16 %i.zf to i32
  %i.zh = mul nuw i32 %i.qe, %i.zg
  %i.zi = add nuw i32 %i.zh, %i.yw
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %i.zj
  store i16 %i.ze, ptr %i.zk, align 2, !tbaa !77
  %i.zl = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.7673, i64 2
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !77
  %i.zn = zext i16 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.zn
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !77
  %i.zq = load i16, ptr %i.t, align 2, !tbaa !76
  %i.zr = zext i16 %i.zq to i32
  %i.zs = mul nuw i32 %i.qe, %i.zr
  %i.zt = add nuw i32 %i.zs, %i.yw
  %i.zu = zext i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 2
  store i16 %i.zp, ptr %i.zw, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7: ; preds = %.lr.ph.i.us.us.us.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread, %bb.u, %.lr.ph.i.us.us.us.6
  %spec.select137.us.us205.us.7662 = phi ptr [ %spec.select137.us.us205.us.7660, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread ], [ %spec.select137.us.us205.us.7, %.lr.ph.i.us.us.us.6 ], [ %spec.select137.us.us205.us.7673, %bb.u ], [ %spec.select137.us.us205.us.7673, %.lr.ph.i.us.us.us.7 ]
  %.not.i.us.us202.us.7661 = phi i1 [ %.not.i.us.us202.us.7658, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread ], [ %.not.i.us.us202.us.7, %.lr.ph.i.us.us.us.6 ], [ %.not.i.us.us202.us.7672, %bb.u ], [ %.not.i.us.us202.us.7672, %.lr.ph.i.us.us.us.7 ]
  %i.zx = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.7662, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.7.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us.7661, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.7.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.zx, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.7.sroa.sel.idx.sroa.sel.idx
  %i.zy = add nuw nsw i32 %.058189.us.us, 2
  %i.zz = icmp samesign ult i32 %.058189.us.us, 14
  br i1 %i.zz, label %.preheader.us.us, label %.split212.us, !llvm.loop !90

.split190:                                        ; preds = %bb.j
  %i.aaa = add i32 %i.bm, 1                       ; 2 uses
  %i.aab = add nuw nsw i32 %i.bm, 1               ; 2 uses
  %i.aac = add i32 %i.bm, 2                       ; 2 uses
  %i.aad = add i32 %i.bm, 2                       ; 2 uses
  %i.aae = add i32 %i.bm, 3                       ; 2 uses
  %i.aaf = add i32 %i.bm, 3                       ; 2 uses
  %i.aag = add i32 %i.bm, 4                       ; 2 uses
  %i.aah = add i32 %i.bm, 4                       ; 2 uses
  %i.aai = add i32 %i.bm, 5                       ; 2 uses
  %i.aaj = add i32 %i.bm, 5                       ; 2 uses
  %i.aak = add i32 %i.bm, 6                       ; 2 uses
  %i.aal = add i32 %i.bm, 6                       ; 2 uses
  %i.aam = add i32 %i.bm, 7                       ; 2 uses
  %i.aan = add i32 %i.bm, 7                       ; 2 uses
  br i1 %.not498, label %.preheader, label %.preheader.us213.preheader

.preheader.us213.preheader:                       ; preds = %.split190
  %.idx = shl nuw nsw i64 %i.bq, 2
  %.idx857 = shl nuw nsw i64 %i.bq, 2
  %.idx858 = shl nuw nsw i64 %i.bq, 2
  %.idx859 = shl nuw nsw i64 %i.bq, 2
  %.idx860 = shl nuw nsw i64 %i.bq, 2
  %.idx861 = shl nuw nsw i64 %i.bq, 2
  br label %.preheader.us213

.preheader.us213:                                 ; preds = %.preheader.us213.preheader, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7
  %.058189.us214 = phi i32 [ %i.afa, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7 ], [ 0, %.preheader.us213.preheader ] ; 3 uses
  %.0128188.us215 = phi ptr [ %i.aez, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7 ], [ %i.z, %.preheader.us213.preheader ] ; 3 uses
  %i.aao = add i32 %i.bn, %.058189.us214          ; 16 uses
  %i.aap = load i16, ptr %i.k, align 8, !tbaa !75
  %i.aaq = zext i16 %i.aap to i32
  %i.aar = icmp ult i32 %i.aao, %i.aaq
  br i1 %i.aar, label %bb.v, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread

bb.v:                                             ; preds = %.preheader.us213
  %i.aas = load i16, ptr %i.t, align 2, !tbaa !76
  %i.aat = zext i16 %i.aas to i32                 ; 2 uses
  %i.aau = icmp ult i32 %i.bm, %i.aat
  br i1 %i.aau, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us: ; preds = %bb.v
  %i.aav = load i16, ptr %.0128188.us215, align 2, !tbaa !77
  %i.aaw = zext i16 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aaw
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !77
  %i.aaz = mul nuw i32 %i.aao, %i.aat
  %i.aba = add nuw i32 %i.aaz, %i.bm
  %i.abb = zext i32 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.abb
  store i16 %i.aay, ptr %i.abc, align 2, !tbaa !77
  %.pre306 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre361 = zext i16 %.pre306 to i32
  %i.abd = icmp samesign ult i32 %i.aao, %.pre361
  br i1 %i.abd, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread: ; preds = %bb.v, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us
  %i.abe = phi i32 [ %i.aab, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us ], [ %i.aaa, %bb.v ] ; 2 uses
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us215, i64 %i.bq ; 5 uses
  %i.abg = load i16, ptr %i.t, align 2, !tbaa !76
  %i.abh = zext i16 %i.abg to i32                 ; 2 uses
  %i.abi = icmp ult i32 %i.abe, %i.abh
  br i1 %i.abi, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread
  %20 = getelementptr inbounds nuw [2 x i8], ptr %i.abf, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread: ; preds = %.preheader.us213, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us
  %21 = getelementptr inbounds nuw i8, ptr %.0128188.us215, i64 %.idx
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread
  %i.abj = load i16, ptr %i.abf, align 2, !tbaa !77
  %i.abk = zext i16 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.abk
  %i.abm = load i16, ptr %i.abl, align 2, !tbaa !77
  %i.abn = mul nuw i32 %i.aao, %i.abh
  %i.abo = add nuw i32 %i.abn, %i.abe
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.abp
  store i16 %i.abm, ptr %i.abq, align 2, !tbaa !77
  %.pre307 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre363 = zext i16 %.pre307 to i32
  %i.abr = icmp samesign ult i32 %i.aao, %.pre363
  %22 = getelementptr inbounds nuw [2 x i8], ptr %i.abf, i64 %i.bq ; 2 uses
  br i1 %i.abr, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1
  %i.abs = phi i32 [ %i.aac, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679 ], [ %i.aad, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1 ] ; 2 uses
  %23 = phi ptr [ %20, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679 ], [ %22, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1 ]
  %i.abt = load i16, ptr %i.t, align 2, !tbaa !76
  %i.abu = zext i16 %i.abt to i32                 ; 2 uses
  %i.abv = icmp ult i32 %i.abs, %i.abu
  br i1 %i.abv, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a
  %24 = getelementptr inbounds nuw i8, ptr %i.abf, i64 %.idx857
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread
  %.ph681 = phi ptr [ %21, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread ], [ %22, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1 ]
  %25 = getelementptr inbounds nuw [2 x i8], ptr %.ph681, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a
  %i.abw = load i16, ptr %23, align 2, !tbaa !77
  %i.abx = zext i16 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.abx
  %i.abz = load i16, ptr %i.aby, align 2, !tbaa !77
  %i.aca = mul nuw i32 %i.aao, %i.abu
  %i.acb = add nuw i32 %i.aca, %i.abs
  %i.acc = zext i32 %i.acb to i64
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.acc
  store i16 %i.abz, ptr %i.acd, align 2, !tbaa !77
  %.pre308 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre365 = zext i16 %.pre308 to i32
  %i.ace = icmp samesign ult i32 %i.aao, %.pre365
  %26 = getelementptr inbounds nuw i8, ptr %i.abf, i64 %.idx858 ; 2 uses
  br i1 %i.ace, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2
  %i.acf = phi i32 [ %i.aae, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683 ], [ %i.aaf, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2 ] ; 2 uses
  %27 = phi ptr [ %24, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683 ], [ %26, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2 ] ; 3 uses
  %i.acg = load i16, ptr %i.t, align 2, !tbaa !76
  %i.ach = zext i16 %i.acg to i32                 ; 2 uses
  %i.aci = icmp ult i32 %i.acf, %i.ach
  br i1 %i.aci, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a
  %i.acj = load i16, ptr %27, align 2, !tbaa !77
  %i.ack = zext i16 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ack
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !77
  %i.acn = mul nuw i32 %i.aao, %i.ach
  %i.aco = add nuw i32 %i.acn, %i.acf
  %i.acp = zext i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.acp
  store i16 %i.acm, ptr %i.acq, align 2, !tbaa !77
  %.pre309 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre367 = zext i16 %.pre309 to i32
  %i.acr = icmp samesign ult i32 %i.aao, %.pre367
  br i1 %i.acr, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3
  %i.acs = phi i32 [ %i.aah, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3 ], [ %i.aag, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a ] ; 2 uses
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %27, i64 %i.bq ; 5 uses
  %i.acu = load i16, ptr %i.t, align 2, !tbaa !76
  %i.acv = zext i16 %i.acu to i32                 ; 2 uses
  %i.acw = icmp ult i32 %i.acs, %i.acv
  br i1 %i.acw, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687
  %28 = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3
  %29 = phi ptr [ %27, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3 ], [ %25, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread ], [ %26, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2 ]
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 %.idx859
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687
  %i.acx = load i16, ptr %i.act, align 2, !tbaa !77
  %i.acy = zext i16 %i.acx to i64
  %i.acz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.acy
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !77
  %i.adb = mul nuw i32 %i.aao, %i.acv
  %i.adc = add nuw i32 %i.adb, %i.acs
  %i.add = zext i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.add
  store i16 %i.ada, ptr %i.ade, align 2, !tbaa !77
  %.pre310 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre369 = zext i16 %.pre310 to i32
  %i.adf = icmp samesign ult i32 %i.aao, %.pre369
  %31 = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.bq ; 2 uses
  br i1 %i.adf, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4
  %i.adg = phi i32 [ %i.aai, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691 ], [ %i.aaj, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4 ] ; 2 uses
  %32 = phi ptr [ %28, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691 ], [ %31, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4 ]
  %i.adh = load i16, ptr %i.t, align 2, !tbaa !76
  %i.adi = zext i16 %i.adh to i32                 ; 2 uses
  %i.adj = icmp ult i32 %i.adg, %i.adi
  br i1 %i.adj, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a
  %33 = getelementptr inbounds nuw i8, ptr %i.act, i64 %.idx860
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread
  %.ph693 = phi ptr [ %30, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread ], [ %31, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4 ]
  %i.adk = getelementptr inbounds nuw [2 x i8], ptr %.ph693, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a
  %i.adl = load i16, ptr %32, align 2, !tbaa !77
  %i.adm = zext i16 %i.adl to i64
  %i.adn = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.adm
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !77
  %i.adp = mul nuw i32 %i.aao, %i.adi
  %i.adq = add nuw i32 %i.adp, %i.adg
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.adr
  store i16 %i.ado, ptr %i.ads, align 2, !tbaa !77
  %.pre311 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre371 = zext i16 %.pre311 to i32
  %i.adt = icmp samesign ult i32 %i.aao, %.pre371
  %34 = getelementptr inbounds nuw i8, ptr %i.act, i64 %.idx861 ; 2 uses
  br i1 %i.adt, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5
  %i.adu = phi i32 [ %i.aak, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695 ], [ %i.aal, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5 ] ; 2 uses
  %35 = phi ptr [ %33, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695 ], [ %34, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5 ] ; 3 uses
  %i.adv = load i16, ptr %i.t, align 2, !tbaa !76
  %i.adw = zext i16 %i.adv to i32                 ; 2 uses
  %i.adx = icmp ult i32 %i.adu, %i.adw
  br i1 %i.adx, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %35, i64 %i.bq
  br label %bb.w

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread
  %i.adz = phi ptr [ %i.adk, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread ], [ %34, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5 ]
  %i.aea = getelementptr inbounds nuw [2 x i8], ptr %i.adz, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a
  %i.aeb = load i16, ptr %35, align 2, !tbaa !77
  %i.aec = zext i16 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aec
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !77
  %i.aef = mul nuw i32 %i.aao, %i.adw
  %i.aeg = add nuw i32 %i.aef, %i.adu
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.aeh
  store i16 %i.aee, ptr %i.aei, align 2, !tbaa !77
  %.pre312 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre373 = zext i16 %.pre312 to i32
  %i.aej = icmp samesign ult i32 %i.aao, %.pre373
  %i.aek = getelementptr inbounds nuw [2 x i8], ptr %35, i64 %i.bq ; 2 uses
  br i1 %i.aej, label %bb.w, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7

bb.w:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6
  %i.ael = phi i32 [ %i.aam, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699 ], [ %i.aan, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6 ] ; 2 uses
  %i.aem = phi ptr [ %i.ady, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699 ], [ %i.aek, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6 ] ; 3 uses
  %i.aen = load i16, ptr %i.t, align 2, !tbaa !76
  %i.aeo = zext i16 %i.aen to i32                 ; 2 uses
  %i.aep = icmp ult i32 %i.ael, %i.aeo
  br i1 %i.aep, label %bb.x, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7

bb.x:                                             ; preds = %bb.w
  %i.aeq = load i16, ptr %i.aem, align 2, !tbaa !77
  %i.aer = zext i16 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aer
  %i.aet = load i16, ptr %i.aes, align 2, !tbaa !77
  %i.aeu = mul nuw i32 %i.aao, %i.aeo
  %i.aev = add nuw i32 %i.aeu, %i.ael
  %i.aew = zext i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.aew
  store i16 %i.aet, ptr %i.aex, align 2, !tbaa !77
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread, %bb.x, %bb.w, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6
  %i.aey = phi ptr [ %i.aea, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread ], [ %i.aem, %bb.x ], [ %i.aem, %bb.w ], [ %i.aek, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6 ]
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.aey, i64 %i.bq
  %i.afa = add nuw nsw i32 %.058189.us214, 2
  %i.afb = icmp samesign ult i32 %.058189.us214, 14
  br i1 %i.afb, label %.preheader.us213, label %.split212.us, !llvm.loop !90

.preheader:                                       ; preds = %.split190, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7
  %.058189 = phi i32 [ %i.akh, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7 ], [ 0, %.split190 ] ; 3 uses
  %.0128188 = phi ptr [ %spec.select.idx.i.sroa.sel.idx.7.sroa.sel.idx.sroa.sel, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7 ], [ %i.z, %.split190 ]
  %i.afc = add i32 %i.bn, %.058189                ; 16 uses
  %i.afd = load i32, ptr %i.a, align 4            ; 5 uses
  %.not.i = icmp eq i32 %i.afd, 0                 ; 4 uses
  %spec.select232.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 2
  %spec.select232.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.0128188, i64 %spec.select232.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %i.afe = load i16, ptr %i.k, align 8, !tbaa !75
  %i.aff = zext i16 %i.afe to i32
  %i.afg = icmp ult i32 %i.afc, %i.aff
  br i1 %i.afg, label %bb.y, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711: ; preds = %.preheader
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %spec.select232.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx713.sroa.sel.idx = select i1 %.not.i, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx713.sroa.sel = getelementptr inbounds i8, ptr %i.afh, i64 %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx713.sroa.sel.idx
  %.not.i.1715 = icmp eq i32 %i.afd, 0            ; 2 uses
  %spec.select232.1716 = select i1 %.not.i.1715, i64 0, i64 2
  %spec.select137.1717 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx713.sroa.sel, i64 %spec.select232.1716
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread

bb.y:                                             ; preds = %.preheader
  %i.afi = load i16, ptr %i.t, align 2, !tbaa !76
  %i.afj = zext i16 %i.afi to i32                 ; 2 uses
  %i.afk = icmp ult i32 %i.bm, %i.afj
  br i1 %i.afk, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread:   ; preds = %bb.y
  %i.afl = getelementptr inbounds nuw [2 x i8], ptr %spec.select232.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx702.sroa.sel.idx = select i1 %.not.i, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx702.sroa.sel = getelementptr inbounds i8, ptr %i.afl, i64 %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx702.sroa.sel.idx
  %.not.i.1704 = icmp eq i32 %i.afd, 0            ; 2 uses
  %spec.select232.1705 = select i1 %.not.i.1704, i64 0, i64 2
  %spec.select137.1706 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx702.sroa.sel, i64 %spec.select232.1705
  br label %bb.z

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit:          ; preds = %bb.y
  %i.afm = load i16, ptr %spec.select232.sroa.sel.idx.sroa.sel, align 2, !tbaa !77
  %i.afn = zext i16 %i.afm to i64
  %i.afo = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.afn
  %i.afp = load i16, ptr %i.afo, align 2, !tbaa !77
  %i.afq = mul nuw i32 %i.afc, %i.afj
  %i.afr = add nuw i32 %i.afq, %i.bm
  %i.afs = zext i32 %i.afr to i64
  %i.aft = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.afs
  store i16 %i.afp, ptr %i.aft, align 2, !tbaa !77
  %.pre = load i32, ptr %i.a, align 4             ; 3 uses
  %.pre293 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre375 = zext i16 %.pre293 to i32
  %i.afu = icmp samesign ult i32 %i.afc, %.pre375
  %i.afv = getelementptr inbounds nuw [2 x i8], ptr %spec.select232.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.afv, i64 %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.not.i.1 = icmp eq i32 %.pre, 0                ; 3 uses
  %spec.select232.1 = select i1 %.not.i.1, i64 0, i64 2
  %spec.select137.1 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %spec.select232.1 ; 2 uses
  br i1 %i.afu, label %bb.z, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread

bb.z:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit
  %spec.select137.1709 = phi ptr [ %spec.select137.1706, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread ], [ %spec.select137.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 3 uses
  %.not.i.1708 = phi i1 [ %.not.i.1704, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread ], [ %.not.i.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 2 uses
  %i.afw = phi i32 [ %i.aaa, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread ], [ %i.aab, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 2 uses
  %i.afx = phi i32 [ %i.afd, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread ], [ %.pre, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 2 uses
  %i.afy = load i16, ptr %i.t, align 2, !tbaa !76
  %i.afz = zext i16 %i.afy to i32                 ; 2 uses
  %i.aga = icmp ult i32 %i.afw, %i.afz
  br i1 %i.aga, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729: ; preds = %bb.z
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.1709, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx733.sroa.sel.idx = select i1 %.not.i.1708, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx733.sroa.sel = getelementptr inbounds i8, ptr %i.agb, i64 %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx733.sroa.sel.idx
  %.not.i.2735 = icmp eq i32 %i.afx, 0            ; 2 uses
  %spec.select232.2736 = select i1 %.not.i.2735, i64 0, i64 2
  %spec.select137.2737 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx733.sroa.sel, i64 %spec.select232.2736
  br label %bb.aa

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711
  %spec.select137.1710.ph = phi ptr [ %spec.select137.1717, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711 ], [ %spec.select137.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ]
  %.not.i.1707.ph = phi i1 [ %.not.i.1715, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711 ], [ %.not.i.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ]
  %.ph718 = phi i32 [ %i.afd, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711 ], [ %.pre, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 2 uses
  %i.agc = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.1710.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx722.sroa.sel.idx = select i1 %.not.i.1707.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx722.sroa.sel = getelementptr inbounds i8, ptr %i.agc, i64 %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx722.sroa.sel.idx
  %.not.i.2724 = icmp eq i32 %.ph718, 0           ; 2 uses
  %spec.select232.2725 = select i1 %.not.i.2724, i64 0, i64 2
  %spec.select137.2726 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx722.sroa.sel, i64 %spec.select232.2725
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1:        ; preds = %bb.z
  %i.agd = load i16, ptr %spec.select137.1709, align 2, !tbaa !77
  %i.age = zext i16 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.age
  %i.agg = load i16, ptr %i.agf, align 2, !tbaa !77
  %i.agh = mul nuw i32 %i.afc, %i.afz
  %i.agi = add nuw i32 %i.agh, %i.afw
  %i.agj = zext i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.agj
  store i16 %i.agg, ptr %i.agk, align 2, !tbaa !77
  %.pre294 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre295 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre377 = zext i16 %.pre295 to i32
  %i.agl = icmp samesign ult i32 %i.afc, %.pre377
  %i.agm = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.1709, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.1708, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.agm, i64 %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx.sroa.sel.idx
  %.not.i.2 = icmp eq i32 %.pre294, 0             ; 3 uses
  %spec.select232.2 = select i1 %.not.i.2, i64 0, i64 2
  %spec.select137.2 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx.sroa.sel, i64 %spec.select232.2 ; 2 uses
  br i1 %i.agl, label %bb.aa, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread

bb.aa:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1
  %spec.select137.2739 = phi ptr [ %spec.select137.2737, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729 ], [ %spec.select137.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 3 uses
  %.not.i.2738 = phi i1 [ %.not.i.2735, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729 ], [ %.not.i.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 2 uses
  %i.agn = phi i32 [ %i.aac, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729 ], [ %i.aad, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 2 uses
  %i.ago = phi i32 [ %i.afx, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729 ], [ %.pre294, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 2 uses
  %i.agp = load i16, ptr %i.t, align 2, !tbaa !76
  %i.agq = zext i16 %i.agp to i32                 ; 2 uses
  %i.agr = icmp ult i32 %i.agn, %i.agq
  br i1 %i.agr, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751: ; preds = %bb.aa
  %i.ags = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.2739, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx755.sroa.sel.idx = select i1 %.not.i.2738, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx755.sroa.sel = getelementptr inbounds i8, ptr %i.ags, i64 %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx755.sroa.sel.idx
  %.not.i.3757 = icmp eq i32 %i.ago, 0            ; 2 uses
  %spec.select232.3758 = select i1 %.not.i.3757, i64 0, i64 2
  %spec.select137.3759 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx755.sroa.sel, i64 %spec.select232.3758
  br label %bb.ab

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread
  %spec.select137.2728.ph = phi ptr [ %spec.select137.2726, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread ], [ %spec.select137.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ]
  %.not.i.2727.ph = phi i1 [ %.not.i.2724, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread ], [ %.not.i.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ]
  %.ph740 = phi i32 [ %.ph718, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread ], [ %.pre294, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 2 uses
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.2728.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx744.sroa.sel.idx = select i1 %.not.i.2727.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx744.sroa.sel = getelementptr inbounds i8, ptr %i.agt, i64 %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx744.sroa.sel.idx
  %.not.i.3746 = icmp eq i32 %.ph740, 0           ; 2 uses
  %spec.select232.3747 = select i1 %.not.i.3746, i64 0, i64 2
  %spec.select137.3748 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx744.sroa.sel, i64 %spec.select232.3747
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2:        ; preds = %bb.aa
  %i.agu = load i16, ptr %spec.select137.2739, align 2, !tbaa !77
  %i.agv = zext i16 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.agv
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !77
  %i.agy = mul nuw i32 %i.afc, %i.agq
  %i.agz = add nuw i32 %i.agy, %i.agn
  %i.aha = zext i32 %i.agz to i64
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.aha
  store i16 %i.agx, ptr %i.ahb, align 2, !tbaa !77
  %.pre296 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre297 = load i16, ptr %i.k, align 8, !tbaa !75
  %.pre379 = zext i16 %.pre297 to i32
  %i.ahc = icmp samesign ult i32 %i.afc, %.pre379
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.2739, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.2738, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.ahd, i64 %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx.sroa.sel.idx
  %.not.i.3 = icmp eq i32 %.pre296, 0             ; 3 uses
  %spec.select232.3 = select i1 %.not.i.3, i64 0, i64 2
  %spec.select137.3 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx.sroa.sel, i64 %spec.select232.3 ; 2 uses
  br i1 %i.ahc, label %bb.ab, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread

bb.ab:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2
  %spec.select137.3761 = phi ptr [ %spec.select137.3759, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751 ], [ %spec.select137.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2 ] ; 3 uses
  %.not.i.3760 = phi i1 [ %.not.i.3757, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751 ], [ %.not.i.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2 ] ; 2 uses
  %i.ahe = phi i32 [ %i.aae, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751 ], [ %i.aaf, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2 ] ; 2 uses
  %i.ahf = phi i32 [ %i.ago, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751 ], [ %.pre296, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2 ] ; 2 uses
  %i.ahg = load i16, ptr %i.t, align 2, !tbaa !76
end_hunk_1
