Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dng?download=true
inline.NumInlined: 65
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6LibRaw16adobe_copy_pixelEjjPPt:bb.a
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.pre33, i64 %indvars.iv.epil
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !81
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %i.ck = load i16, ptr %i.ab, align 2, !tbaa !80
  %i.cl = zext i16 %i.ck to i32
  %i.cm = mul nuw i32 %1, %i.cl
  %i.cn = add nuw i32 %i.cm, %2
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.co
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv.epil
  store i16 %i.cj, ptr %i.cq, align 2, !tbaa !81
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !103

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %bb.h, %..loopexit_crit_edge, %bb.e, %bb.f, %._crit_edge
  %.sink = phi ptr [ %.pre31, %bb.e ], [ %.pre, %._crit_edge ], [ %.pre31, %bb.f ], [ %.pre32, %..loopexit_crit_edge ], [ %.pre33, %bb.h ], [ %.pre33, %bb.j ], [ %.pre33, %.loopexit.loopexit.unr-lcssa ]
  %i.cr = zext i32 %i.b to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.sink, i64 %i.cr
  %spec.select.idx = select i1 %or.cond, i64 0, i64 -2
  %spec.select = getelementptr inbounds i8, ptr %i.cs, i64 %spec.select.idx
  store ptr %spec.select, ptr %3, align 8, !tbaa !104
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5556 ; 22 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384256
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 19)
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !86
  %i.j = and i32 %i.i, 255
  store i32 %i.j, ptr %i.a, align 4, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 40 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !79
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
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 107 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 82 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 381852 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph228, %bb.bz
  %.073225 = phi i32 [ 0, %.lr.ph228 ], [ %.174, %bb.bz ] ; 8 uses
  %.075223 = phi i32 [ 0, %.lr.ph228 ], [ %.176, %bb.bz ] ; 9 uses
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !87  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa), !call_target !123
  %i.af = load i32, ptr %i.m, align 8, !tbaa !95
  %i.ag = icmp ult i32 %i.af, 2147483647
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !87  ; 2 uses
  %i.ai = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.aj, i32 noundef 0), !call_target !99 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge229, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !125 ; 3 uses
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !126
  %.not81 = icmp eq i32 %i.aq, 0
  br i1 %.not81, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.r, align 4, !tbaa !100
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.thread136, label %.thread

.thread136:                                       ; preds = %bb.f
  %i.at = load i32, ptr %i.p, align 8, !tbaa !127
  %i.au = mul i32 %i.at, %i.ap
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.av = load i32, ptr %i.p, align 8, !tbaa !127
  %i.aw = mul i32 %i.av, %i.ap
  %i.ax = load i32, ptr %i.q, align 8, !tbaa !77
  %i.ay = icmp eq i32 %i.ax, 2
  %i.az = zext i1 %i.ay to i32
  %spec.select = lshr i32 %i.aw, %i.az
  br label %.thread

.thread:                                          ; preds = %bb.f, %.thread136, %bb.g
  %.172 = phi i32 [ %i.au, %.thread136 ], [ %spec.select, %bb.g ], [ %i.ap, %bb.f ] ; 4 uses
  %i.ba = load i32, ptr %1, align 8, !tbaa !128
  switch i32 %i.ba, label %.loopexit145 [
    i32 193, label %bb.h
    i32 195, label %.preheader149
  ]

.preheader149:                                    ; preds = %.thread
  %i.bb = load i32, ptr %i.s, align 8, !tbaa !129
  %.not234 = icmp eq i32 %i.bb, 0
  br i1 %.not234, label %.loopexit145, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader149
  %.not235 = icmp eq i32 %.172, 0
  br label %bb.aq

bb.h:                                             ; preds = %.thread
  store i32 16384, ptr %i.y, align 8, !tbaa !86
  %i.bc = invoke noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null)
          to label %.preheader144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader144:                                    ; preds = %bb.h
  %i.bd = load i32, ptr %i.s, align 8, !tbaa !129
  %i.be = icmp ugt i32 %i.bd, 7
  br i1 %i.be, label %.lr.ph222, label %.loopexit145

.lr.ph222:                                        ; preds = %.preheader144, %._crit_edge
  %.069221 = phi i32 [ %i.asa, %._crit_edge ], [ 0, %.preheader144 ] ; 2 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader140 unwind label %.loopexit.split-lp.loopexit

.preheader140:                                    ; preds = %.lr.ph222
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !125
  %i.bg = icmp ugt i32 %i.bf, 7
  br i1 %i.bg, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader140
  %i.bh = shl i32 %.069221, 1
  %i.bi = add i32 %i.bh, %.075223
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph220, %.split212.us
  %.066219 = phi i32 [ 0, %.lr.ph220 ], [ %i.arw, %.split212.us ] ; 3 uses
  invoke void @_ZN6LibRaw10ljpeg_idctEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.x, align 4, !tbaa !101 ; 2 uses
  %i.bk = udiv i32 %.066219, %i.bj
  %i.bl = urem i32 %.066219, %i.bj
  %i.bm = add i32 %i.bl, %.073225                 ; 41 uses
  %i.bn = add i32 %i.bi, %i.bk                    ; 4 uses
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !77
  %.fr237 = freeze i32 %i.bo                      ; 11 uses
  %.not498 = icmp eq i32 %.fr237, 2               ; 2 uses
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !78  ; 17 uses
  %.not23.i = icmp eq ptr %i.bp, null
  %i.bq = zext i32 %.fr237 to i64                 ; 109 uses
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
  %xtraiter881 = and i64 %i.bq, 3                 ; 3 uses
  %i.cg = icmp ult i32 %.fr237, 4
  %unroll_iter885 = and i64 %i.bq, 2147483644
  %lcmp.mod883.not = icmp eq i64 %xtraiter881, 0
  %lcmp.mod884 = icmp ne i64 %xtraiter881, 0
  %.idx862 = shl nuw nsw i64 %i.bq, 2
  %xtraiter897 = and i64 %i.bq, 3                 ; 3 uses
  %i.ch = icmp ult i32 %.fr237, 4
  %unroll_iter901 = and i64 %i.bq, 2147483644
  %lcmp.mod899.not = icmp eq i64 %xtraiter897, 0
  %lcmp.mod900 = icmp ne i64 %xtraiter897, 0
  %.idx863 = shl nuw nsw i64 %i.bq, 2
  %xtraiter904 = and i64 %i.bq, 3                 ; 3 uses
  %i.ci = icmp ult i32 %.fr237, 4
  %unroll_iter908 = and i64 %i.bq, 2147483644
  %lcmp.mod906.not = icmp eq i64 %xtraiter904, 0
  %lcmp.mod907 = icmp ne i64 %xtraiter904, 0
  %.idx864 = shl nuw nsw i64 %i.bq, 2
  %xtraiter911 = and i64 %i.bq, 3                 ; 3 uses
  %i.cj = icmp ult i32 %.fr237, 4
  %unroll_iter915 = and i64 %i.bq, 2147483644
  %lcmp.mod913.not = icmp eq i64 %xtraiter911, 0
  %lcmp.mod914 = icmp ne i64 %xtraiter911, 0
  %.idx865 = shl nuw nsw i64 %i.bq, 2
  %xtraiter918 = and i64 %i.bq, 3                 ; 3 uses
  %i.ck = icmp ult i32 %.fr237, 4
  %unroll_iter922 = and i64 %i.bq, 2147483644
  %lcmp.mod920.not = icmp eq i64 %xtraiter918, 0
  %lcmp.mod921 = icmp ne i64 %xtraiter918, 0
  %.idx866 = shl nuw nsw i64 %i.bq, 2
  %xtraiter925 = and i64 %i.bq, 3                 ; 3 uses
  %i.cl = icmp ult i32 %.fr237, 4
  %unroll_iter929 = and i64 %i.bq, 2147483644
  %lcmp.mod927.not = icmp eq i64 %xtraiter925, 0
  %lcmp.mod928 = icmp ne i64 %xtraiter925, 0
  %.idx867 = shl nuw nsw i64 %i.bq, 2
  %xtraiter932 = and i64 %i.bq, 3                 ; 3 uses
  %i.cm = icmp ult i32 %.fr237, 4
  %unroll_iter936 = and i64 %i.bq, 2147483644
  %lcmp.mod934.not = icmp eq i64 %xtraiter932, 0
  %lcmp.mod935 = icmp ne i64 %xtraiter932, 0
  %xtraiter939 = and i64 %i.bq, 3                 ; 3 uses
  %i.cn = icmp ult i32 %.fr237, 4
  %unroll_iter943 = and i64 %i.bq, 2147483644
  %lcmp.mod941.not = icmp eq i64 %xtraiter939, 0
  %lcmp.mod942 = icmp ne i64 %xtraiter939, 0
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7
  %.058189.us.us.us = phi i32 [ %i.xn, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7 ], [ 0, %.preheader.us.us.us.preheader ] ; 3 uses
  %.0128188.us.us.us = phi ptr [ %i.xm, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7 ], [ %i.z, %.preheader.us.us.us.preheader ] ; 7 uses
  %i.co = add i32 %i.bn, %.058189.us.us.us        ; 48 uses
  %i.cp = load i16, ptr %i.k, align 8, !tbaa !79
  %i.cq = zext i16 %i.cp to i32
  %i.cr = icmp ult i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.k, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread

bb.k:                                             ; preds = %.preheader.us.us.us
  %i.cs = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ct = zext i16 %i.cs to i32
  %i.cu = icmp ult i32 %i.bm, %i.ct
  br i1 %i.cu, label %.lr.ph.i.us.us.us.us.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread

.lr.ph.i.us.us.us.us.us:                          ; preds = %bb.k
  %i.cv = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.cg, label %.epil.preheader880, label %.lr.ph.i.us.us.us.us.us.new

.lr.ph.i.us.us.us.us.us.new:                      ; preds = %.lr.ph.i.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.new
  %indvars.iv.i.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.3894, %.lr.ph.i.us.us.us.us.us.new ], [ 0, %.lr.ph.i.us.us.us.us.us ] ; 6 uses
  %niter886 = phi i64 [ %niter886.next.3, %.lr.ph.i.us.us.us.us.us.new ], [ 0, %.lr.ph.i.us.us.us.us.us ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.i.us.us.us.us.us
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !81
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !81
  %i.db = load i16, ptr %i.t, align 2, !tbaa !80
  %i.dc = zext i16 %i.db to i32
  %i.dd = mul nuw i32 %i.co, %i.dc
  %i.de = add nuw i32 %i.dd, %i.bm
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.df
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.i.us.us.us.us.us
  store i16 %i.da, ptr %i.dh, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !81
  %i.dk = zext i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !81
  %i.dn = load i16, ptr %i.t, align 2, !tbaa !80
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nuw i32 %i.co, %i.do
  %i.dq = add nuw i32 %i.dp, %i.bm
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %indvars.iv.next.i.us.us.us.us.us
  store i16 %i.dm, ptr %i.dt, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.1888 = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.1888
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !81
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !81
  %i.dz = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ea = zext i16 %i.dz to i32
  %i.eb = mul nuw i32 %i.co, %i.ea
  %i.ec = add nuw i32 %i.eb, %i.bm
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %indvars.iv.next.i.us.us.us.us.us.1888
  store i16 %i.dy, ptr %i.ef, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.2891 = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.2891
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !81
  %i.ei = zext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !81
  %i.el = load i16, ptr %i.t, align 2, !tbaa !80
  %i.em = zext i16 %i.el to i32
  %i.en = mul nuw i32 %i.co, %i.em
  %i.eo = add nuw i32 %i.en, %i.bm
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ep
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv.next.i.us.us.us.us.us.2891
  store i16 %i.ek, ptr %i.er, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.3894 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us, 4 ; 2 uses
  %niter886.next.3 = add i64 %niter886, 4         ; 2 uses
  %niter886.ncmp.3 = icmp eq i64 %niter886.next.3, %unroll_iter885
  br i1 %niter886.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.new
  br i1 %lcmp.mod883.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us, label %.epil.preheader880

.epil.preheader880:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa, %.lr.ph.i.us.us.us.us.us
  %indvars.iv.i.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us ], [ %indvars.iv.next.i.us.us.us.us.us.3894, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod884)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader880
  %indvars.iv.i.us.us.us.us.us.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.epil.init, %.epil.preheader880 ], [ %indvars.iv.next.i.us.us.us.us.us.epil, %bb.l ] ; 3 uses
  %epil.iter882 = phi i64 [ 0, %.epil.preheader880 ], [ %epil.iter882.next, %bb.l ]
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.epil
  %i.et = load i16, ptr %i.es, align 2, !tbaa !81
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !81
  %i.ex = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ey = zext i16 %i.ex to i32
  %i.ez = mul nuw i32 %i.co, %i.ey
  %i.fa = add nuw i32 %i.ez, %i.bm
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.fb
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv.i.us.us.us.us.us.epil
  store i16 %i.ew, ptr %i.fd, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.epil, 1
  %epil.iter882.next = add i64 %epil.iter882, 1   ; 2 uses
  %epil.iter882.cmp.not = icmp eq i64 %epil.iter882.next, %xtraiter881
  br i1 %epil.iter882.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us, label %bb.l, !llvm.loop !105

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us: ; preds = %bb.l, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa
  %.pre327 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre334 = zext i16 %.pre327 to i32
  %i.fe = icmp samesign ult i32 %i.co, %.pre334
  br i1 %i.fe, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread: ; preds = %bb.k, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us
  %i.ff = phi i32 [ %i.bt, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us ], [ %i.bs, %bb.k ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %i.bq ; 13 uses
  %i.fh = load i16, ptr %i.t, align 2, !tbaa !80
  %i.fi = zext i16 %i.fh to i32
  %i.fj = icmp ult i32 %i.ff, %i.fi
  br i1 %i.fj, label %.lr.ph.i.us.us.us.us.us.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503

.lr.ph.i.us.us.us.us.us.1:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread
  %i.fk = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.ch, label %.epil.preheader896, label %.lr.ph.i.us.us.us.us.us.1.new

.lr.ph.i.us.us.us.us.us.1.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.1, %.lr.ph.i.us.us.us.us.us.1.new
  %indvars.iv.i.us.us.us.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.1.3, %.lr.ph.i.us.us.us.us.us.1.new ], [ 0, %.lr.ph.i.us.us.us.us.us.1 ] ; 6 uses
  %niter902 = phi i64 [ %niter902.next.3, %.lr.ph.i.us.us.us.us.us.1.new ], [ 0, %.lr.ph.i.us.us.us.us.us.1 ]
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.i.us.us.us.us.us.1
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !81
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !81
  %i.fq = load i16, ptr %i.t, align 2, !tbaa !80
  %i.fr = zext i16 %i.fq to i32
  %i.fs = mul nuw i32 %i.co, %i.fr
  %i.ft = add nuw i32 %i.fs, %i.ff
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fu
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.i.us.us.us.us.us.1
  store i16 %i.fp, ptr %i.fw, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.1, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us.us.us.us.us.1
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !81
  %i.fz = zext i16 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !81
  %i.gc = load i16, ptr %i.t, align 2, !tbaa !80
  %i.gd = zext i16 %i.gc to i32
  %i.ge = mul nuw i32 %i.co, %i.gd
  %i.gf = add nuw i32 %i.ge, %i.ff
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gg
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %indvars.iv.next.i.us.us.us.us.us.1
  store i16 %i.gb, ptr %i.gi, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.1.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.1, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us.us.us.us.us.1.1
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !81
  %i.gl = zext i16 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !81
  %i.go = load i16, ptr %i.t, align 2, !tbaa !80
  %i.gp = zext i16 %i.go to i32
  %i.gq = mul nuw i32 %i.co, %i.gp
  %i.gr = add nuw i32 %i.gq, %i.ff
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gs
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %indvars.iv.next.i.us.us.us.us.us.1.1
  store i16 %i.gn, ptr %i.gu, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.1.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.1, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.next.i.us.us.us.us.us.1.2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !81
  %i.gx = zext i16 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !81
  %i.ha = load i16, ptr %i.t, align 2, !tbaa !80
  %i.hb = zext i16 %i.ha to i32
  %i.hc = mul nuw i32 %i.co, %i.hb
  %i.hd = add nuw i32 %i.hc, %i.ff
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.he
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv.next.i.us.us.us.us.us.1.2
  store i16 %i.gz, ptr %i.hg, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.1.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.1, 4 ; 2 uses
  %niter902.next.3 = add i64 %niter902, 4         ; 2 uses
  %niter902.ncmp.3 = icmp eq i64 %niter902.next.3, %unroll_iter901
  br i1 %niter902.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.1.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread: ; preds = %.preheader.us.us.us, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us
  %2 = getelementptr inbounds nuw i8, ptr %.0128188.us.us.us, i64 %.idx862
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.1.new
  br i1 %lcmp.mod899.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1, label %.epil.preheader896

.epil.preheader896:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa, %.lr.ph.i.us.us.us.us.us.1
  %indvars.iv.i.us.us.us.us.us.1.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.1 ], [ %indvars.iv.next.i.us.us.us.us.us.1.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod900)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader896
  %indvars.iv.i.us.us.us.us.us.1.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.1.epil.init, %.epil.preheader896 ], [ %indvars.iv.next.i.us.us.us.us.us.1.epil, %bb.m ] ; 3 uses
  %epil.iter898 = phi i64 [ 0, %.epil.preheader896 ], [ %epil.iter898.next, %bb.m ]
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.i.us.us.us.us.us.1.epil
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !81
  %i.hj = zext i16 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !81
  %i.hm = load i16, ptr %i.t, align 2, !tbaa !80
  %i.hn = zext i16 %i.hm to i32
  %i.ho = mul nuw i32 %i.co, %i.hn
  %i.hp = add nuw i32 %i.ho, %i.ff
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.hq
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %indvars.iv.i.us.us.us.us.us.1.epil
  store i16 %i.hl, ptr %i.hs, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.1.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.1.epil, 1
  %epil.iter898.next = add i64 %epil.iter898, 1   ; 2 uses
  %epil.iter898.cmp.not = icmp eq i64 %epil.iter898.next, %xtraiter897
  br i1 %epil.iter898.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1, label %bb.m, !llvm.loop !106

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1: ; preds = %bb.m, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.unr-lcssa
  %.pre328 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre335 = zext i16 %.pre328 to i32
  %i.ht = icmp samesign ult i32 %i.co, %.pre335
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.bq
  br i1 %i.ht, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1
  %i.hu = phi i32 [ %i.bv, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1 ], [ %i.bu, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread ] ; 6 uses
  %i.hv = load i16, ptr %i.t, align 2, !tbaa !80
  %i.hw = zext i16 %i.hv to i32
  %i.hx = icmp ult i32 %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph.i.us.us.us.us.us.2, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503
  %4 = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx863
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a

.lr.ph.i.us.us.us.us.us.2:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread503
  %i.hy = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.ci, label %.epil.preheader903, label %.lr.ph.i.us.us.us.us.us.2.new

.lr.ph.i.us.us.us.us.us.2.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.2
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.bq
  %6 = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.bq
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.bq
  %8 = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.bq
  br label %.lr.ph.i.us.us.us.us.us.2.new.a

.lr.ph.i.us.us.us.us.us.2.new.a:                  ; preds = %.lr.ph.i.us.us.us.us.us.2.new.a, %.lr.ph.i.us.us.us.us.us.2.new
  %indvars.iv.i.us.us.us.us.us.2 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.2.new ], [ %indvars.iv.next.i.us.us.us.us.us.2.3, %.lr.ph.i.us.us.us.us.us.2.new.a ] ; 6 uses
  %niter909 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.2.new ], [ %niter909.next.3, %.lr.ph.i.us.us.us.us.us.2.new.a ]
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.i.us.us.us.us.us.2
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !81
  %i.ib = zext i16 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !81
  %i.ie = load i16, ptr %i.t, align 2, !tbaa !80
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nuw i32 %i.co, %i.if
  %i.ih = add nuw i32 %i.ig, %i.hu
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ii
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %indvars.iv.i.us.us.us.us.us.2
  store i16 %i.id, ptr %i.ik, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.2, 1 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i.us.us.us.us.us.2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !81
  %i.in = zext i16 %i.im to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !81
  %i.iq = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ir = zext i16 %i.iq to i32
  %i.is = mul nuw i32 %i.co, %i.ir
  %i.it = add nuw i32 %i.is, %i.hu
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.iu
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %indvars.iv.next.i.us.us.us.us.us.2
  store i16 %i.ip, ptr %i.iw, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.2.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.2, 2 ; 2 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.next.i.us.us.us.us.us.2.1
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !81
  %i.iz = zext i16 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !81
  %i.jc = load i16, ptr %i.t, align 2, !tbaa !80
  %i.jd = zext i16 %i.jc to i32
  %i.je = mul nuw i32 %i.co, %i.jd
  %i.jf = add nuw i32 %i.je, %i.hu
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.jg
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %indvars.iv.next.i.us.us.us.us.us.2.1
  store i16 %i.jb, ptr %i.ji, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.2.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.2, 3 ; 2 uses
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv.next.i.us.us.us.us.us.2.2
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !81
  %i.jl = zext i16 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !81
  %i.jo = load i16, ptr %i.t, align 2, !tbaa !80
  %i.jp = zext i16 %i.jo to i32
  %i.jq = mul nuw i32 %i.co, %i.jp
  %i.jr = add nuw i32 %i.jq, %i.hu
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.js
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %indvars.iv.next.i.us.us.us.us.us.2.2
  store i16 %i.jn, ptr %i.ju, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.2.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.2, 4 ; 2 uses
  %niter909.next.3 = add i64 %niter909, 4         ; 2 uses
  %niter909.ncmp.3 = icmp eq i64 %niter909.next.3, %unroll_iter908
  br i1 %niter909.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.2.new.a, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread
  %.ph505 = phi ptr [ %2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1.thread ], [ %3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.1 ]
  %9 = getelementptr inbounds nuw [2 x i8], ptr %.ph505, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.2.new.a
  br i1 %lcmp.mod906.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2, label %.epil.preheader903

.epil.preheader903:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa, %.lr.ph.i.us.us.us.us.us.2
  %indvars.iv.i.us.us.us.us.us.2.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.2 ], [ %indvars.iv.next.i.us.us.us.us.us.2.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod907)
  %10 = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.bq
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader903
  %indvars.iv.i.us.us.us.us.us.2.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.2.epil.init, %.epil.preheader903 ], [ %indvars.iv.next.i.us.us.us.us.us.2.epil, %bb.n ] ; 3 uses
  %epil.iter905 = phi i64 [ 0, %.epil.preheader903 ], [ %epil.iter905.next, %bb.n ]
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %indvars.iv.i.us.us.us.us.us.2.epil
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !81
  %i.jx = zext i16 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !81
  %i.ka = load i16, ptr %i.t, align 2, !tbaa !80
  %i.kb = zext i16 %i.ka to i32
  %i.kc = mul nuw i32 %i.co, %i.kb
  %i.kd = add nuw i32 %i.kc, %i.hu
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %indvars.iv.i.us.us.us.us.us.2.epil
  store i16 %i.jz, ptr %i.kg, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.2.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.2.epil, 1
  %epil.iter905.next = add i64 %epil.iter905, 1   ; 2 uses
  %epil.iter905.cmp.not = icmp eq i64 %epil.iter905.next, %xtraiter904
  br i1 %epil.iter905.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2, label %bb.n, !llvm.loop !107

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2: ; preds = %bb.n, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.unr-lcssa
  %.pre329 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre337 = zext i16 %.pre329 to i32
  %i.kh = icmp samesign ult i32 %i.co, %.pre337
  %11 = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx864 ; 2 uses
  br i1 %i.kh, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2
  %i.ki = phi i32 [ %i.bw, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507 ], [ %i.bx, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2 ] ; 6 uses
  %12 = phi ptr [ %4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507 ], [ %11, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2 ] ; 7 uses
  %i.kj = load i16, ptr %i.t, align 2, !tbaa !80
  %i.kk = zext i16 %i.kj to i32
  %i.kl = icmp ult i32 %i.ki, %i.kk
  br i1 %i.kl, label %.lr.ph.i.us.us.us.us.us.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511

.lr.ph.i.us.us.us.us.us.3:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a
  %i.km = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.cj, label %.epil.preheader910, label %.lr.ph.i.us.us.us.us.us.3.new

.lr.ph.i.us.us.us.us.us.3.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.3, %.lr.ph.i.us.us.us.us.us.3.new
  %indvars.iv.i.us.us.us.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.3.3, %.lr.ph.i.us.us.us.us.us.3.new ], [ 0, %.lr.ph.i.us.us.us.us.us.3 ] ; 6 uses
  %niter916 = phi i64 [ %niter916.next.3, %.lr.ph.i.us.us.us.us.us.3.new ], [ 0, %.lr.ph.i.us.us.us.us.us.3 ]
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %12, i64 %indvars.iv.i.us.us.us.us.us.3
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !81
  %i.kp = zext i16 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.kp
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !81
  %i.ks = load i16, ptr %i.t, align 2, !tbaa !80
  %i.kt = zext i16 %i.ks to i32
  %i.ku = mul nuw i32 %i.co, %i.kt
  %i.kv = add nuw i32 %i.ku, %i.ki
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kw
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %indvars.iv.i.us.us.us.us.us.3
  store i16 %i.kr, ptr %i.ky, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.3 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.3, 1 ; 2 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %12, i64 %indvars.iv.next.i.us.us.us.us.us.3
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !81
  %i.lb = zext i16 %i.la to i64
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !81
  %i.le = load i16, ptr %i.t, align 2, !tbaa !80
  %i.lf = zext i16 %i.le to i32
  %i.lg = mul nuw i32 %i.co, %i.lf
  %i.lh = add nuw i32 %i.lg, %i.ki
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.li
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %indvars.iv.next.i.us.us.us.us.us.3
  store i16 %i.ld, ptr %i.lk, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.3.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.3, 2 ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %12, i64 %indvars.iv.next.i.us.us.us.us.us.3.1
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !81
  %i.ln = zext i16 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !81
  %i.lq = load i16, ptr %i.t, align 2, !tbaa !80
  %i.lr = zext i16 %i.lq to i32
  %i.ls = mul nuw i32 %i.co, %i.lr
  %i.lt = add nuw i32 %i.ls, %i.ki
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %indvars.iv.next.i.us.us.us.us.us.3.1
  store i16 %i.lp, ptr %i.lw, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.3.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.3, 3 ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %12, i64 %indvars.iv.next.i.us.us.us.us.us.3.2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !81
  %i.lz = zext i16 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.lz
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !81
  %i.mc = load i16, ptr %i.t, align 2, !tbaa !80
  %i.md = zext i16 %i.mc to i32
  %i.me = mul nuw i32 %i.co, %i.md
  %i.mf = add nuw i32 %i.me, %i.ki
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.mg
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %indvars.iv.next.i.us.us.us.us.us.3.2
  store i16 %i.mb, ptr %i.mi, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.3.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.3, 4 ; 2 uses
  %niter916.next.3 = add i64 %niter916, 4         ; 2 uses
  %niter916.ncmp.3 = icmp eq i64 %niter916.next.3, %unroll_iter915
  br i1 %niter916.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.3.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.3.new
  br i1 %lcmp.mod913.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3, label %.epil.preheader910

.epil.preheader910:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa, %.lr.ph.i.us.us.us.us.us.3
  %indvars.iv.i.us.us.us.us.us.3.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.3 ], [ %indvars.iv.next.i.us.us.us.us.us.3.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod914)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader910
  %indvars.iv.i.us.us.us.us.us.3.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.3.epil.init, %.epil.preheader910 ], [ %indvars.iv.next.i.us.us.us.us.us.3.epil, %bb.o ] ; 3 uses
  %epil.iter912 = phi i64 [ 0, %.epil.preheader910 ], [ %epil.iter912.next, %bb.o ]
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %12, i64 %indvars.iv.i.us.us.us.us.us.3.epil
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !81
  %i.ml = zext i16 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ml
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !81
  %i.mo = load i16, ptr %i.t, align 2, !tbaa !80
  %i.mp = zext i16 %i.mo to i32
  %i.mq = mul nuw i32 %i.co, %i.mp
  %i.mr = add nuw i32 %i.mq, %i.ki
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.ms
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mt, i64 %indvars.iv.i.us.us.us.us.us.3.epil
  store i16 %i.mn, ptr %i.mu, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.3.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.3.epil, 1
  %epil.iter912.next = add i64 %epil.iter912, 1   ; 2 uses
  %epil.iter912.cmp.not = icmp eq i64 %epil.iter912.next, %xtraiter911
  br i1 %epil.iter912.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3, label %bb.o, !llvm.loop !108

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3: ; preds = %bb.o, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.unr-lcssa
  %.pre330 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre339 = zext i16 %.pre330 to i32
  %i.mv = icmp samesign ult i32 %i.co, %.pre339
  br i1 %i.mv, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3
  %i.mw = phi i32 [ %i.bz, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3 ], [ %i.by, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread507.a ] ; 6 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %12, i64 %i.bq ; 13 uses
  %i.my = load i16, ptr %i.t, align 2, !tbaa !80
  %i.mz = zext i16 %i.my to i32
  %i.na = icmp ult i32 %i.mw, %i.mz
  br i1 %i.na, label %.lr.ph.i.us.us.us.us.us.4, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515

.lr.ph.i.us.us.us.us.us.4:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511
  %i.nb = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.ck, label %.epil.preheader917, label %.lr.ph.i.us.us.us.us.us.4.new

.lr.ph.i.us.us.us.us.us.4.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.4, %.lr.ph.i.us.us.us.us.us.4.new
  %indvars.iv.i.us.us.us.us.us.4 = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.4.3, %.lr.ph.i.us.us.us.us.us.4.new ], [ 0, %.lr.ph.i.us.us.us.us.us.4 ] ; 6 uses
  %niter923 = phi i64 [ %niter923.next.3, %.lr.ph.i.us.us.us.us.us.4.new ], [ 0, %.lr.ph.i.us.us.us.us.us.4 ]
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv.i.us.us.us.us.us.4
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !81
  %i.ne = zext i16 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ne
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !81
  %i.nh = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ni = zext i16 %i.nh to i32
  %i.nj = mul nuw i32 %i.co, %i.ni
  %i.nk = add nuw i32 %i.nj, %i.mw
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.nl
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %i.nm, i64 %indvars.iv.i.us.us.us.us.us.4
  store i16 %i.ng, ptr %i.nn, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.4 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.4, 1 ; 2 uses
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv.next.i.us.us.us.us.us.4
  %i.np = load i16, ptr %i.no, align 2, !tbaa !81
  %i.nq = zext i16 %i.np to i64
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.nq
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !81
  %i.nt = load i16, ptr %i.t, align 2, !tbaa !80
  %i.nu = zext i16 %i.nt to i32
  %i.nv = mul nuw i32 %i.co, %i.nu
  %i.nw = add nuw i32 %i.nv, %i.mw
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.nx
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %indvars.iv.next.i.us.us.us.us.us.4
  store i16 %i.ns, ptr %i.nz, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.4.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.4, 2 ; 2 uses
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv.next.i.us.us.us.us.us.4.1
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !81
  %i.oc = zext i16 %i.ob to i64
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.oc
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !81
  %i.of = load i16, ptr %i.t, align 2, !tbaa !80
  %i.og = zext i16 %i.of to i32
  %i.oh = mul nuw i32 %i.co, %i.og
  %i.oi = add nuw i32 %i.oh, %i.mw
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.oj
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.ok, i64 %indvars.iv.next.i.us.us.us.us.us.4.1
  store i16 %i.oe, ptr %i.ol, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.4.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.4, 3 ; 2 uses
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv.next.i.us.us.us.us.us.4.2
  %i.on = load i16, ptr %i.om, align 2, !tbaa !81
  %i.oo = zext i16 %i.on to i64
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.oo
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !81
  %i.or = load i16, ptr %i.t, align 2, !tbaa !80
  %i.os = zext i16 %i.or to i32
  %i.ot = mul nuw i32 %i.co, %i.os
  %i.ou = add nuw i32 %i.ot, %i.mw
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.ov
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.ow, i64 %indvars.iv.next.i.us.us.us.us.us.4.2
  store i16 %i.oq, ptr %i.ox, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.4.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.4, 4 ; 2 uses
  %niter923.next.3 = add i64 %niter923, 4         ; 2 uses
  %niter923.ncmp.3 = icmp eq i64 %niter923.next.3, %unroll_iter922
  br i1 %niter923.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.4.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3
  %13 = phi ptr [ %12, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3 ], [ %9, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2.thread ], [ %11, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.2 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 %.idx865
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.4.new
  br i1 %lcmp.mod920.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4, label %.epil.preheader917

.epil.preheader917:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa, %.lr.ph.i.us.us.us.us.us.4
  %indvars.iv.i.us.us.us.us.us.4.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.4 ], [ %indvars.iv.next.i.us.us.us.us.us.4.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod921)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader917
  %indvars.iv.i.us.us.us.us.us.4.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.4.epil.init, %.epil.preheader917 ], [ %indvars.iv.next.i.us.us.us.us.us.4.epil, %bb.p ] ; 3 uses
  %epil.iter919 = phi i64 [ 0, %.epil.preheader917 ], [ %epil.iter919.next, %bb.p ]
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv.i.us.us.us.us.us.4.epil
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !81
  %i.pa = zext i16 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.pa
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !81
  %i.pd = load i16, ptr %i.t, align 2, !tbaa !80
  %i.pe = zext i16 %i.pd to i32
  %i.pf = mul nuw i32 %i.co, %i.pe
  %i.pg = add nuw i32 %i.pf, %i.mw
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.ph
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.pi, i64 %indvars.iv.i.us.us.us.us.us.4.epil
  store i16 %i.pc, ptr %i.pj, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.4.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.4.epil, 1
  %epil.iter919.next = add i64 %epil.iter919, 1   ; 2 uses
  %epil.iter919.cmp.not = icmp eq i64 %epil.iter919.next, %xtraiter918
  br i1 %epil.iter919.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4, label %bb.p, !llvm.loop !109

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4: ; preds = %bb.p, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.unr-lcssa
  %.pre331 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre341 = zext i16 %.pre331 to i32
  %i.pk = icmp samesign ult i32 %i.co, %.pre341
  %15 = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %i.bq
  br i1 %i.pk, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4
  %i.pl = phi i32 [ %i.cb, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4 ], [ %i.ca, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.3.thread511 ] ; 6 uses
  %i.pm = load i16, ptr %i.t, align 2, !tbaa !80
  %i.pn = zext i16 %i.pm to i32
  %i.po = icmp ult i32 %i.pl, %i.pn
  br i1 %i.po, label %.lr.ph.i.us.us.us.us.us.5, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515
  %16 = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx866
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a

.lr.ph.i.us.us.us.us.us.5:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread515
  %i.pp = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.cl, label %.epil.preheader924, label %.lr.ph.i.us.us.us.us.us.5.new

.lr.ph.i.us.us.us.us.us.5.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.5
  %17 = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %i.bq
  %18 = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %i.bq
  %19 = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %i.bq
  %20 = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %i.bq
  br label %.lr.ph.i.us.us.us.us.us.5.new.a

.lr.ph.i.us.us.us.us.us.5.new.a:                  ; preds = %.lr.ph.i.us.us.us.us.us.5.new.a, %.lr.ph.i.us.us.us.us.us.5.new
  %indvars.iv.i.us.us.us.us.us.5 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.5.new ], [ %indvars.iv.next.i.us.us.us.us.us.5.3, %.lr.ph.i.us.us.us.us.us.5.new.a ] ; 6 uses
  %niter930 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.5.new ], [ %niter930.next.3, %.lr.ph.i.us.us.us.us.us.5.new.a ]
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %17, i64 %indvars.iv.i.us.us.us.us.us.5
  %i.pr = load i16, ptr %i.pq, align 2, !tbaa !81
  %i.ps = zext i16 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ps
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !81
  %i.pv = load i16, ptr %i.t, align 2, !tbaa !80
  %i.pw = zext i16 %i.pv to i32
  %i.px = mul nuw i32 %i.co, %i.pw
  %i.py = add nuw i32 %i.px, %i.pl
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.pz
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.qa, i64 %indvars.iv.i.us.us.us.us.us.5
  store i16 %i.pu, ptr %i.qb, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.5 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.5, 1 ; 2 uses
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %18, i64 %indvars.iv.next.i.us.us.us.us.us.5
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !81
  %i.qe = zext i16 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.qe
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !81
  %i.qh = load i16, ptr %i.t, align 2, !tbaa !80
  %i.qi = zext i16 %i.qh to i32
  %i.qj = mul nuw i32 %i.co, %i.qi
  %i.qk = add nuw i32 %i.qj, %i.pl
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.ql
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %indvars.iv.next.i.us.us.us.us.us.5
  store i16 %i.qg, ptr %i.qn, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.5.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.5, 2 ; 2 uses
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %indvars.iv.next.i.us.us.us.us.us.5.1
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !81
  %i.qq = zext i16 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.qq
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !81
  %i.qt = load i16, ptr %i.t, align 2, !tbaa !80
  %i.qu = zext i16 %i.qt to i32
  %i.qv = mul nuw i32 %i.co, %i.qu
  %i.qw = add nuw i32 %i.qv, %i.pl
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.qx
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.qy, i64 %indvars.iv.next.i.us.us.us.us.us.5.1
  store i16 %i.qs, ptr %i.qz, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.5.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.5, 3 ; 2 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %20, i64 %indvars.iv.next.i.us.us.us.us.us.5.2
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !81
  %i.rc = zext i16 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.rc
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !81
  %i.rf = load i16, ptr %i.t, align 2, !tbaa !80
  %i.rg = zext i16 %i.rf to i32
  %i.rh = mul nuw i32 %i.co, %i.rg
  %i.ri = add nuw i32 %i.rh, %i.pl
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.rj
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %indvars.iv.next.i.us.us.us.us.us.5.2
  store i16 %i.re, ptr %i.rl, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.5.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.5, 4 ; 2 uses
  %niter930.next.3 = add i64 %niter930, 4         ; 2 uses
  %niter930.ncmp.3 = icmp eq i64 %niter930.next.3, %unroll_iter929
  br i1 %niter930.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.5.new.a, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread
  %.ph517 = phi ptr [ %14, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4.thread ], [ %15, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.4 ]
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %.ph517, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.5.new.a
  br i1 %lcmp.mod927.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5, label %.epil.preheader924

.epil.preheader924:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa, %.lr.ph.i.us.us.us.us.us.5
  %indvars.iv.i.us.us.us.us.us.5.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.5 ], [ %indvars.iv.next.i.us.us.us.us.us.5.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod928)
  %21 = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %i.bq
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader924
  %indvars.iv.i.us.us.us.us.us.5.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.5.epil.init, %.epil.preheader924 ], [ %indvars.iv.next.i.us.us.us.us.us.5.epil, %bb.q ] ; 3 uses
  %epil.iter926 = phi i64 [ 0, %.epil.preheader924 ], [ %epil.iter926.next, %bb.q ]
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %indvars.iv.i.us.us.us.us.us.5.epil
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !81
  %i.rp = zext i16 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.rp
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !81
  %i.rs = load i16, ptr %i.t, align 2, !tbaa !80
  %i.rt = zext i16 %i.rs to i32
  %i.ru = mul nuw i32 %i.co, %i.rt
  %i.rv = add nuw i32 %i.ru, %i.pl
  %i.rw = zext i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.rw
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %indvars.iv.i.us.us.us.us.us.5.epil
  store i16 %i.rr, ptr %i.ry, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.5.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.5.epil, 1
  %epil.iter926.next = add i64 %epil.iter926, 1   ; 2 uses
  %epil.iter926.cmp.not = icmp eq i64 %epil.iter926.next, %xtraiter925
  br i1 %epil.iter926.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5, label %bb.q, !llvm.loop !110

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5: ; preds = %bb.q, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.unr-lcssa
  %.pre332 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre343 = zext i16 %.pre332 to i32
  %i.rz = icmp samesign ult i32 %i.co, %.pre343
  %22 = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx867 ; 2 uses
  br i1 %i.rz, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5
  %i.sa = phi i32 [ %i.cc, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519 ], [ %i.cd, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5 ] ; 6 uses
  %23 = phi ptr [ %16, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519 ], [ %22, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5 ] ; 12 uses
  %i.sb = load i16, ptr %i.t, align 2, !tbaa !80
  %i.sc = zext i16 %i.sb to i32
  %i.sd = icmp ult i32 %i.sa, %i.sc
  br i1 %i.sd, label %.lr.ph.i.us.us.us.us.us.6, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %i.bq
  br label %bb.s

.lr.ph.i.us.us.us.us.us.6:                        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread519.a
  %i.sf = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.cm, label %.epil.preheader931, label %.lr.ph.i.us.us.us.us.us.6.new

.lr.ph.i.us.us.us.us.us.6.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.6, %.lr.ph.i.us.us.us.us.us.6.new
  %indvars.iv.i.us.us.us.us.us.6 = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.6.3, %.lr.ph.i.us.us.us.us.us.6.new ], [ 0, %.lr.ph.i.us.us.us.us.us.6 ] ; 6 uses
  %niter937 = phi i64 [ %niter937.next.3, %.lr.ph.i.us.us.us.us.us.6.new ], [ 0, %.lr.ph.i.us.us.us.us.us.6 ]
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.i.us.us.us.us.us.6
  %i.sh = load i16, ptr %i.sg, align 2, !tbaa !81
  %i.si = zext i16 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.si
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !81
  %i.sl = load i16, ptr %i.t, align 2, !tbaa !80
  %i.sm = zext i16 %i.sl to i32
  %i.sn = mul nuw i32 %i.co, %i.sm
  %i.so = add nuw i32 %i.sn, %i.sa
  %i.sp = zext i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.sp
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.sq, i64 %indvars.iv.i.us.us.us.us.us.6
  store i16 %i.sk, ptr %i.sr, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.6 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.6, 1 ; 2 uses
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.next.i.us.us.us.us.us.6
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !81
  %i.su = zext i16 %i.st to i64
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.su
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !81
  %i.sx = load i16, ptr %i.t, align 2, !tbaa !80
  %i.sy = zext i16 %i.sx to i32
  %i.sz = mul nuw i32 %i.co, %i.sy
  %i.ta = add nuw i32 %i.sz, %i.sa
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.tb
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.tc, i64 %indvars.iv.next.i.us.us.us.us.us.6
  store i16 %i.sw, ptr %i.td, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.6.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.6, 2 ; 2 uses
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.next.i.us.us.us.us.us.6.1
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !81
  %i.tg = zext i16 %i.tf to i64
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.tg
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !81
  %i.tj = load i16, ptr %i.t, align 2, !tbaa !80
  %i.tk = zext i16 %i.tj to i32
  %i.tl = mul nuw i32 %i.co, %i.tk
  %i.tm = add nuw i32 %i.tl, %i.sa
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.tn
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %indvars.iv.next.i.us.us.us.us.us.6.1
  store i16 %i.ti, ptr %i.tp, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.6.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.6, 3 ; 2 uses
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.next.i.us.us.us.us.us.6.2
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !81
  %i.ts = zext i16 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ts
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !81
  %i.tv = load i16, ptr %i.t, align 2, !tbaa !80
  %i.tw = zext i16 %i.tv to i32
  %i.tx = mul nuw i32 %i.co, %i.tw
  %i.ty = add nuw i32 %i.tx, %i.sa
  %i.tz = zext i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.tz
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.ua, i64 %indvars.iv.next.i.us.us.us.us.us.6.2
  store i16 %i.tu, ptr %i.ub, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.6.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.6, 4 ; 2 uses
  %niter937.next.3 = add i64 %niter937, 4         ; 2 uses
  %niter937.ncmp.3 = icmp eq i64 %niter937.next.3, %unroll_iter936
  br i1 %niter937.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.6.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread
  %i.uc = phi ptr [ %i.rm, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread ], [ %22, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5 ]
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %i.uc, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.6.new
  br i1 %lcmp.mod934.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6, label %.epil.preheader931

.epil.preheader931:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa, %.lr.ph.i.us.us.us.us.us.6
  %indvars.iv.i.us.us.us.us.us.6.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.6 ], [ %indvars.iv.next.i.us.us.us.us.us.6.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod935)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader931
  %indvars.iv.i.us.us.us.us.us.6.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.6.epil.init, %.epil.preheader931 ], [ %indvars.iv.next.i.us.us.us.us.us.6.epil, %bb.r ] ; 3 uses
  %epil.iter933 = phi i64 [ 0, %.epil.preheader931 ], [ %epil.iter933.next, %bb.r ]
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.i.us.us.us.us.us.6.epil
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !81
  %i.ug = zext i16 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ug
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !81
  %i.uj = load i16, ptr %i.t, align 2, !tbaa !80
  %i.uk = zext i16 %i.uj to i32
  %i.ul = mul nuw i32 %i.co, %i.uk
  %i.um = add nuw i32 %i.ul, %i.sa
  %i.un = zext i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.un
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.uo, i64 %indvars.iv.i.us.us.us.us.us.6.epil
  store i16 %i.ui, ptr %i.up, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.6.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.6.epil, 1
  %epil.iter933.next = add i64 %epil.iter933, 1   ; 2 uses
  %epil.iter933.cmp.not = icmp eq i64 %epil.iter933.next, %xtraiter932
  br i1 %epil.iter933.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6, label %bb.r, !llvm.loop !111

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6: ; preds = %bb.r, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.unr-lcssa
  %.pre333 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre345 = zext i16 %.pre333 to i32
  %i.uq = icmp samesign ult i32 %i.co, %.pre345
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %i.bq ; 2 uses
  br i1 %i.uq, label %bb.s, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7

bb.s:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6
  %i.us = phi i32 [ %i.ce, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523 ], [ %i.cf, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6 ] ; 6 uses
  %i.ut = phi ptr [ %i.se, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread523 ], [ %i.ur, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6 ] ; 3 uses
  %i.uu = load i16, ptr %i.t, align 2, !tbaa !80
  %i.uv = zext i16 %i.uu to i32
  %i.uw = icmp ult i32 %i.us, %i.uv
  br i1 %i.uw, label %.lr.ph.i.us.us.us.us.us.7, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7

.lr.ph.i.us.us.us.us.us.7:                        ; preds = %bb.s
  %i.ux = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.cn, label %.epil.preheader938, label %.lr.ph.i.us.us.us.us.us.7.new

.lr.ph.i.us.us.us.us.us.7.new:                    ; preds = %.lr.ph.i.us.us.us.us.us.7
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %i.bq
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %i.bq
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %i.bq
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %i.bq
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.us.us.us.us.us.7.new
  %indvars.iv.i.us.us.us.us.us.7 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.7.new ], [ %indvars.iv.next.i.us.us.us.us.us.7.3, %bb.t ] ; 6 uses
  %niter944 = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.7.new ], [ %niter944.next.3, %bb.t ]
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %indvars.iv.i.us.us.us.us.us.7
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !81
  %i.ve = zext i16 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ve
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !81
  %i.vh = load i16, ptr %i.t, align 2, !tbaa !80
  %i.vi = zext i16 %i.vh to i32
  %i.vj = mul nuw i32 %i.co, %i.vi
  %i.vk = add nuw i32 %i.vj, %i.us
  %i.vl = zext i32 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.vl
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.vm, i64 %indvars.iv.i.us.us.us.us.us.7
  store i16 %i.vg, ptr %i.vn, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.7 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.7, 1 ; 2 uses
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.uz, i64 %indvars.iv.next.i.us.us.us.us.us.7
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !81
  %i.vq = zext i16 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.vq
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !81
  %i.vt = load i16, ptr %i.t, align 2, !tbaa !80
  %i.vu = zext i16 %i.vt to i32
  %i.vv = mul nuw i32 %i.co, %i.vu
  %i.vw = add nuw i32 %i.vv, %i.us
  %i.vx = zext i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.vx
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.vy, i64 %indvars.iv.next.i.us.us.us.us.us.7
  store i16 %i.vs, ptr %i.vz, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.7.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.7, 2 ; 2 uses
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %indvars.iv.next.i.us.us.us.us.us.7.1
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !81
  %i.wc = zext i16 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.wc
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !81
  %i.wf = load i16, ptr %i.t, align 2, !tbaa !80
  %i.wg = zext i16 %i.wf to i32
  %i.wh = mul nuw i32 %i.co, %i.wg
  %i.wi = add nuw i32 %i.wh, %i.us
  %i.wj = zext i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.wj
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %i.wk, i64 %indvars.iv.next.i.us.us.us.us.us.7.1
  store i16 %i.we, ptr %i.wl, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.7.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.7, 3 ; 2 uses
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %indvars.iv.next.i.us.us.us.us.us.7.2
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !81
  %i.wo = zext i16 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.wo
  %i.wq = load i16, ptr %i.wp, align 2, !tbaa !81
  %i.wr = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ws = zext i16 %i.wr to i32
  %i.wt = mul nuw i32 %i.co, %i.ws
  %i.wu = add nuw i32 %i.wt, %i.us
  %i.wv = zext i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.wv
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.ww, i64 %indvars.iv.next.i.us.us.us.us.us.7.2
  store i16 %i.wq, ptr %i.wx, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.7.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.7, 4 ; 2 uses
  %niter944.next.3 = add i64 %niter944, 4         ; 2 uses
  %niter944.ncmp.3 = icmp eq i64 %niter944.next.3, %unroll_iter943
  br i1 %niter944.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa, label %bb.t, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa: ; preds = %bb.t
  br i1 %lcmp.mod941.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7, label %.epil.preheader938

.epil.preheader938:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa, %.lr.ph.i.us.us.us.us.us.7
  %indvars.iv.i.us.us.us.us.us.7.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.7 ], [ %indvars.iv.next.i.us.us.us.us.us.7.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod942)
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %i.bq
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader938
  %indvars.iv.i.us.us.us.us.us.7.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.7.epil.init, %.epil.preheader938 ], [ %indvars.iv.next.i.us.us.us.us.us.7.epil, %bb.u ] ; 3 uses
  %epil.iter940 = phi i64 [ 0, %.epil.preheader938 ], [ %epil.iter940.next, %bb.u ]
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %indvars.iv.i.us.us.us.us.us.7.epil
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !81
  %i.xb = zext i16 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.xb
  %i.xd = load i16, ptr %i.xc, align 2, !tbaa !81
  %i.xe = load i16, ptr %i.t, align 2, !tbaa !80
  %i.xf = zext i16 %i.xe to i32
  %i.xg = mul nuw i32 %i.co, %i.xf
  %i.xh = add nuw i32 %i.xg, %i.us
  %i.xi = zext i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.xi
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.xj, i64 %indvars.iv.i.us.us.us.us.us.7.epil
  store i16 %i.xd, ptr %i.xk, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.7.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.7.epil, 1
  %epil.iter940.next = add i64 %epil.iter940, 1   ; 2 uses
  %epil.iter940.cmp.not = icmp eq i64 %epil.iter940.next, %xtraiter939
  br i1 %epil.iter940.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7, label %bb.u, !llvm.loop !112

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa, %bb.u, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread, %bb.s, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6
  %i.xl = phi ptr [ %i.ud, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6.thread ], [ %i.ur, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.6 ], [ %i.ut, %bb.s ], [ %i.ut, %bb.u ], [ %i.ut, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7.loopexit.unr-lcssa ]
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.xl, i64 %i.bq
  %i.xn = add nuw nsw i32 %.058189.us.us.us, 2
  %i.xo = icmp samesign ult i32 %.058189.us.us.us, 14
  br i1 %i.xo, label %.preheader.us.us.us, label %.split212.us, !llvm.loop !113

.preheader.us.us:                                 ; preds = %.split190.us.split.us, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7
  %.058189.us.us = phi i32 [ %i.ahj, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7 ], [ 0, %.split190.us.split.us ] ; 3 uses
  %.0128188.us.us = phi ptr [ %spec.select.idx.i.sroa.sel.idx.us.us207.us.7.sroa.sel.idx.sroa.sel, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7 ], [ %i.z, %.split190.us.split.us ] ; 2 uses
  %i.xp = add i32 %i.bn, %.058189.us.us           ; 24 uses
  %i.xq = load i32, ptr %i.a, align 4             ; 5 uses
  %.not.i.us.us202.us = icmp eq i32 %i.xq, 0      ; 5 uses
  %spec.select231.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us, i64 0, i64 2
  %spec.select231.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.0128188.us.us, i64 %spec.select231.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %i.xr = load i16, ptr %i.k, align 8, !tbaa !79
  %i.xs = zext i16 %i.xr to i32
  %i.xt = icmp ult i32 %i.xp, %i.xs
  br i1 %i.xt, label %bb.v, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535: ; preds = %.preheader.us.us
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %spec.select231.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx537.sroa.sel.idx = select i1 %.not.i.us.us202.us, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx537.sroa.sel = getelementptr inbounds i8, ptr %i.xu, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx537.sroa.sel.idx
  %.not.i.us.us202.us.1539 = icmp eq i32 %i.xq, 0 ; 2 uses
  %spec.select231.1540 = select i1 %.not.i.us.us202.us.1539, i64 0, i64 2
  %spec.select137.us.us205.us.1541 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx537.sroa.sel, i64 %spec.select231.1540
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread

bb.v:                                             ; preds = %.preheader.us.us
  %i.xv = load i16, ptr %i.t, align 2, !tbaa !80
  %i.xw = zext i16 %i.xv to i32
  %i.xx = icmp ult i32 %i.bm, %i.xw
  br i1 %i.xx, label %.lr.ph.i.us.us.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread: ; preds = %bb.v
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr %spec.select231.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx526.sroa.sel.idx = select i1 %.not.i.us.us202.us, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx526.sroa.sel = getelementptr inbounds i8, ptr %i.xy, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx526.sroa.sel.idx
  %.not.i.us.us202.us.1528 = icmp eq i32 %i.xq, 0 ; 2 uses
  %spec.select231.1529 = select i1 %.not.i.us.us202.us.1528, i64 0, i64 2
  %spec.select137.us.us205.us.1530 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx526.sroa.sel, i64 %spec.select231.1529
  br label %bb.w

.lr.ph.i.us.us.us:                                ; preds = %bb.v
  %i.xz = load ptr, ptr %i.u, align 8, !tbaa !82  ; 2 uses
  %i.ya = load i16, ptr %spec.select231.sroa.sel.idx.sroa.sel, align 2, !tbaa !81
  %i.yb = zext i16 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.yb
  %i.yd = load i16, ptr %i.yc, align 2, !tbaa !81
  %i.ye = load i16, ptr %i.t, align 2, !tbaa !80
  %i.yf = zext i16 %i.ye to i32
  %i.yg = mul nuw i32 %i.xp, %i.yf
  %i.yh = add nuw i32 %i.yg, %i.bm
  %i.yi = zext i32 %i.yh to i64
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %i.yi
  store i16 %i.yd, ptr %i.yj, align 2, !tbaa !81
  %spec.select231.sroa.sel.idx.sroa.sel.sroa.sel.v = select i1 %.not.i.us.us202.us, i64 2, i64 4
  %spec.select231.sroa.sel.idx.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.0128188.us.us, i64 %spec.select231.sroa.sel.idx.sroa.sel.sroa.sel.v
  %i.yk = load i16, ptr %spec.select231.sroa.sel.idx.sroa.sel.sroa.sel, align 2, !tbaa !81
  %i.yl = zext i16 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.yl
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !81
  %i.yo = load i16, ptr %i.t, align 2, !tbaa !80
  %i.yp = zext i16 %i.yo to i32
  %i.yq = mul nuw i32 %i.xp, %i.yp
  %i.yr = add nuw i32 %i.yq, %i.bm
  %i.ys = zext i32 %i.yr to i64
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 2
  store i16 %i.yn, ptr %i.yu, align 2, !tbaa !81
  %.pre313 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre314 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre347 = zext i16 %.pre314 to i32
  %i.yv = icmp samesign ult i32 %i.xp, %.pre347
  %i.yw = getelementptr inbounds nuw [2 x i8], ptr %spec.select231.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.yw, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx.sroa.sel.idx
  %.not.i.us.us202.us.1 = icmp eq i32 %.pre313, 0 ; 3 uses
  %spec.select231.1 = select i1 %.not.i.us.us202.us.1, i64 0, i64 2
  %spec.select137.us.us205.us.1 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.sroa.sel.idx.sroa.sel, i64 %spec.select231.1 ; 2 uses
  br i1 %i.yv, label %bb.w, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread

bb.w:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread, %.lr.ph.i.us.us.us
  %spec.select137.us.us205.us.1533 = phi ptr [ %spec.select137.us.us205.us.1530, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread ], [ %spec.select137.us.us205.us.1, %.lr.ph.i.us.us.us ] ; 4 uses
  %.not.i.us.us202.us.1532 = phi i1 [ %.not.i.us.us202.us.1528, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread ], [ %.not.i.us.us202.us.1, %.lr.ph.i.us.us.us ] ; 2 uses
  %i.yx = phi i32 [ %i.bs, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread ], [ %i.bt, %.lr.ph.i.us.us.us ] ; 3 uses
  %i.yy = phi i32 [ %i.xq, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread ], [ %.pre313, %.lr.ph.i.us.us.us ] ; 2 uses
  %i.yz = load i16, ptr %i.t, align 2, !tbaa !80
  %i.za = zext i16 %i.yz to i32
  %i.zb = icmp ult i32 %i.yx, %i.za
  br i1 %i.zb, label %.lr.ph.i.us.us.us.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553: ; preds = %bb.w
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.1533, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx557.sroa.sel.idx = select i1 %.not.i.us.us202.us.1532, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx557.sroa.sel = getelementptr inbounds i8, ptr %i.zc, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx557.sroa.sel.idx
  %.not.i.us.us202.us.2559 = icmp eq i32 %i.yy, 0 ; 2 uses
  %spec.select231.2560 = select i1 %.not.i.us.us202.us.2559, i64 0, i64 2
  %spec.select137.us.us205.us.2561 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx557.sroa.sel, i64 %spec.select231.2560
  br label %bb.x

.lr.ph.i.us.us.us.1:                              ; preds = %bb.w
  %i.zd = load ptr, ptr %i.u, align 8, !tbaa !82  ; 2 uses
  %i.ze = load i16, ptr %spec.select137.us.us205.us.1533, align 2, !tbaa !81
  %i.zf = zext i16 %i.ze to i64
  %i.zg = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.zf
  %i.zh = load i16, ptr %i.zg, align 2, !tbaa !81
  %i.zi = load i16, ptr %i.t, align 2, !tbaa !80
  %i.zj = zext i16 %i.zi to i32
  %i.zk = mul nuw i32 %i.xp, %i.zj
  %i.zl = add nuw i32 %i.zk, %i.yx
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.zm
  store i16 %i.zh, ptr %i.zn, align 2, !tbaa !81
  %i.zo = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.1533, i64 2
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !81
  %i.zq = zext i16 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.zq
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !81
  %i.zt = load i16, ptr %i.t, align 2, !tbaa !80
  %i.zu = zext i16 %i.zt to i32
  %i.zv = mul nuw i32 %i.xp, %i.zu
  %i.zw = add nuw i32 %i.zv, %i.yx
  %i.zx = zext i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 2
  store i16 %i.zs, ptr %i.zz, align 2, !tbaa !81
  %.pre315 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre316 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre349 = zext i16 %.pre316 to i32
  %i.aaa = icmp samesign ult i32 %i.xp, %.pre349
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.1533, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us.1532, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.aab, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx.sroa.sel.idx
  %.not.i.us.us202.us.2 = icmp eq i32 %.pre315, 0 ; 3 uses
  %spec.select231.2 = select i1 %.not.i.us.us202.us.2, i64 0, i64 2
  %spec.select137.us.us205.us.2 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx.sroa.sel, i64 %spec.select231.2 ; 2 uses
  br i1 %i.aaa, label %bb.x, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread: ; preds = %.lr.ph.i.us.us.us, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535
  %spec.select137.us.us205.us.1534.ph = phi ptr [ %spec.select137.us.us205.us.1541, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535 ], [ %spec.select137.us.us205.us.1, %.lr.ph.i.us.us.us ]
  %.not.i.us.us202.us.1531.ph = phi i1 [ %.not.i.us.us202.us.1539, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535 ], [ %.not.i.us.us202.us.1, %.lr.ph.i.us.us.us ]
  %.ph542 = phi i32 [ %i.xq, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.thread535 ], [ %.pre313, %.lr.ph.i.us.us.us ] ; 2 uses
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.1534.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx546.sroa.sel.idx = select i1 %.not.i.us.us202.us.1531.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx546.sroa.sel = getelementptr inbounds i8, ptr %i.aac, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx546.sroa.sel.idx
  %.not.i.us.us202.us.2548 = icmp eq i32 %.ph542, 0 ; 2 uses
  %spec.select231.2549 = select i1 %.not.i.us.us202.us.2548, i64 0, i64 2
  %spec.select137.us.us205.us.2550 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.1.sroa.sel.idx546.sroa.sel, i64 %spec.select231.2549
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.2.thread

bb.x:                                             ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553, %.lr.ph.i.us.us.us.1
  %spec.select137.us.us205.us.2563 = phi ptr [ %spec.select137.us.us205.us.2561, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553 ], [ %spec.select137.us.us205.us.2, %.lr.ph.i.us.us.us.1 ] ; 4 uses
  %.not.i.us.us202.us.2562 = phi i1 [ %.not.i.us.us202.us.2559, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553 ], [ %.not.i.us.us202.us.2, %.lr.ph.i.us.us.us.1 ] ; 2 uses
  %i.aad = phi i32 [ %i.bu, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553 ], [ %i.bv, %.lr.ph.i.us.us.us.1 ] ; 3 uses
  %i.aae = phi i32 [ %i.yy, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.1.thread553 ], [ %.pre315, %.lr.ph.i.us.us.us.1 ] ; 2 uses
  %i.aaf = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aag = zext i16 %i.aaf to i32
  %i.aah = icmp ult i32 %i.aad, %i.aag
  br i1 %i.aah, label %.lr.ph.i.us.us.us.2, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.2.thread575

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.2.thread575: ; preds = %bb.x
  %i.aai = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.2563, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.2.sroa.sel.idx579.sroa.sel.idx = select i1 %.not.i.us.us202.us.2562, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.2.sroa.sel.idx579.sroa.sel = getelementptr inbounds i8, ptr %i.aai, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.2.sroa.sel.idx579.sroa.sel.idx
  %.not.i.us.us202.us.3581 = icmp eq i32 %i.aae, 0 ; 2 uses
  %spec.select231.3582 = select i1 %.not.i.us.us202.us.3581, i64 0, i64 2
  %spec.select137.us.us205.us.3583 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.2.sroa.sel.idx579.sroa.sel, i64 %spec.select231.3582
  br label %bb.y

.lr.ph.i.us.us.us.2:                              ; preds = %bb.x
  %i.aaj = load ptr, ptr %i.u, align 8, !tbaa !82 ; 2 uses
  %i.aak = load i16, ptr %spec.select137.us.us205.us.2563, align 2, !tbaa !81
  %i.aal = zext i16 %i.aak to i64
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aal
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !81
end_hunk_0
begin_hunk_1_@_ZN6LibRaw21lossless_dng_load_rawEv:bb.a
bb.aa:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619, %.lr.ph.i.us.us.us.4
  %spec.select137.us.us205.us.5629 = phi ptr [ %spec.select137.us.us205.us.5627, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619 ], [ %spec.select137.us.us205.us.5, %.lr.ph.i.us.us.us.4 ] ; 4 uses
  %.not.i.us.us202.us.5628 = phi i1 [ %.not.i.us.us202.us.5625, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619 ], [ %.not.i.us.us202.us.5, %.lr.ph.i.us.us.us.4 ] ; 2 uses
  %i.adv = phi i32 [ %i.ca, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619 ], [ %i.cb, %.lr.ph.i.us.us.us.4 ] ; 3 uses
  %i.adw = phi i32 [ %i.acq, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread619 ], [ %.pre321, %.lr.ph.i.us.us.us.4 ] ; 2 uses
  %i.adx = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ady = zext i16 %i.adx to i32
  %i.adz = icmp ult i32 %i.adv, %i.ady
  br i1 %i.adz, label %.lr.ph.i.us.us.us.5, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641: ; preds = %bb.aa
  %i.aea = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.5629, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx645.sroa.sel.idx = select i1 %.not.i.us.us202.us.5628, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx645.sroa.sel = getelementptr inbounds i8, ptr %i.aea, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx645.sroa.sel.idx
  %.not.i.us.us202.us.6647 = icmp eq i32 %i.adw, 0 ; 2 uses
  %spec.select231.6648 = select i1 %.not.i.us.us202.us.6647, i64 0, i64 2
  %spec.select137.us.us205.us.6649 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx645.sroa.sel, i64 %spec.select231.6648
  br label %bb.ab

.lr.ph.i.us.us.us.5:                              ; preds = %bb.aa
  %i.aeb = load ptr, ptr %i.u, align 8, !tbaa !82 ; 2 uses
  %i.aec = load i16, ptr %spec.select137.us.us205.us.5629, align 2, !tbaa !81
  %i.aed = zext i16 %i.aec to i64
  %i.aee = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aed
  %i.aef = load i16, ptr %i.aee, align 2, !tbaa !81
  %i.aeg = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aeh = zext i16 %i.aeg to i32
  %i.aei = mul nuw i32 %i.xp, %i.aeh
  %i.aej = add nuw i32 %i.aei, %i.adv
  %i.aek = zext i32 %i.aej to i64
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %i.aek
  store i16 %i.aef, ptr %i.ael, align 2, !tbaa !81
  %i.aem = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.5629, i64 2
  %i.aen = load i16, ptr %i.aem, align 2, !tbaa !81
  %i.aeo = zext i16 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aeo
  %i.aeq = load i16, ptr %i.aep, align 2, !tbaa !81
  %i.aer = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aes = zext i16 %i.aer to i32
  %i.aet = mul nuw i32 %i.xp, %i.aes
  %i.aeu = add nuw i32 %i.aet, %i.adv
  %i.aev = zext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %i.aev
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 2
  store i16 %i.aeq, ptr %i.aex, align 2, !tbaa !81
  %.pre323 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre324 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre357 = zext i16 %.pre324 to i32
  %i.aey = icmp samesign ult i32 %i.xp, %.pre357
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.5629, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us.5628, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.aez, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx.sroa.sel.idx
  %.not.i.us.us202.us.6 = icmp eq i32 %.pre323, 0 ; 3 uses
  %spec.select231.6 = select i1 %.not.i.us.us202.us.6, i64 0, i64 2
  %spec.select137.us.us205.us.6 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx.sroa.sel, i64 %spec.select231.6 ; 2 uses
  br i1 %i.aey, label %bb.ab, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread: ; preds = %.lr.ph.i.us.us.us.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread
  %spec.select137.us.us205.us.5618.ph = phi ptr [ %spec.select137.us.us205.us.5616, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread ], [ %spec.select137.us.us205.us.5, %.lr.ph.i.us.us.us.4 ]
  %.not.i.us.us202.us.5617.ph = phi i1 [ %.not.i.us.us202.us.5614, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread ], [ %.not.i.us.us202.us.5, %.lr.ph.i.us.us.us.4 ]
  %.ph630 = phi i32 [ %.ph608, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.4.thread ], [ %.pre321, %.lr.ph.i.us.us.us.4 ] ; 2 uses
  %i.afa = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.5618.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx634.sroa.sel.idx = select i1 %.not.i.us.us202.us.5617.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx634.sroa.sel = getelementptr inbounds i8, ptr %i.afa, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx634.sroa.sel.idx
  %.not.i.us.us202.us.6636 = icmp eq i32 %.ph630, 0 ; 2 uses
  %spec.select231.6637 = select i1 %.not.i.us.us202.us.6636, i64 0, i64 2
  %spec.select137.us.us205.us.6638 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.5.sroa.sel.idx634.sroa.sel, i64 %spec.select231.6637
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread

bb.ab:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641, %.lr.ph.i.us.us.us.5
  %spec.select137.us.us205.us.6651 = phi ptr [ %spec.select137.us.us205.us.6649, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641 ], [ %spec.select137.us.us205.us.6, %.lr.ph.i.us.us.us.5 ] ; 4 uses
  %.not.i.us.us202.us.6650 = phi i1 [ %.not.i.us.us202.us.6647, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641 ], [ %.not.i.us.us202.us.6, %.lr.ph.i.us.us.us.5 ] ; 2 uses
  %i.afb = phi i32 [ %i.cc, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641 ], [ %i.cd, %.lr.ph.i.us.us.us.5 ] ; 3 uses
  %i.afc = phi i32 [ %i.adw, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread641 ], [ %.pre323, %.lr.ph.i.us.us.us.5 ]
  %i.afd = load i16, ptr %i.t, align 2, !tbaa !80
  %i.afe = zext i16 %i.afd to i32
  %i.aff = icmp ult i32 %i.afb, %i.afe
  br i1 %i.aff, label %.lr.ph.i.us.us.us.6, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663: ; preds = %bb.ab
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.6651, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx667.sroa.sel.idx = select i1 %.not.i.us.us202.us.6650, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx667.sroa.sel = getelementptr inbounds i8, ptr %i.afg, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx667.sroa.sel.idx
  %.not.i.us.us202.us.7669 = icmp eq i32 %i.afc, 0 ; 2 uses
  %spec.select231.7670 = select i1 %.not.i.us.us202.us.7669, i64 0, i64 2
  %spec.select137.us.us205.us.7671 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx667.sroa.sel, i64 %spec.select231.7670
  br label %bb.ac

.lr.ph.i.us.us.us.6:                              ; preds = %bb.ab
  %i.afh = load ptr, ptr %i.u, align 8, !tbaa !82 ; 2 uses
  %i.afi = load i16, ptr %spec.select137.us.us205.us.6651, align 2, !tbaa !81
  %i.afj = zext i16 %i.afi to i64
  %i.afk = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.afj
  %i.afl = load i16, ptr %i.afk, align 2, !tbaa !81
  %i.afm = load i16, ptr %i.t, align 2, !tbaa !80
  %i.afn = zext i16 %i.afm to i32
  %i.afo = mul nuw i32 %i.xp, %i.afn
  %i.afp = add nuw i32 %i.afo, %i.afb
  %i.afq = zext i32 %i.afp to i64
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.afq
  store i16 %i.afl, ptr %i.afr, align 2, !tbaa !81
  %i.afs = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.6651, i64 2
  %i.aft = load i16, ptr %i.afs, align 2, !tbaa !81
  %i.afu = zext i16 %i.aft to i64
  %i.afv = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.afu
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !81
  %i.afx = load i16, ptr %i.t, align 2, !tbaa !80
  %i.afy = zext i16 %i.afx to i32
  %i.afz = mul nuw i32 %i.xp, %i.afy
  %i.aga = add nuw i32 %i.afz, %i.afb
  %i.agb = zext i32 %i.aga to i64
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 2
  store i16 %i.afw, ptr %i.agd, align 2, !tbaa !81
  %.pre325 = load i32, ptr %i.a, align 4
  %.pre326 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre359 = zext i16 %.pre326 to i32
  %i.age = icmp samesign ult i32 %i.xp, %.pre359
  %i.agf = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.6651, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us.6650, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.agf, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx.sroa.sel.idx
  %.not.i.us.us202.us.7 = icmp eq i32 %.pre325, 0 ; 3 uses
  %spec.select231.7 = select i1 %.not.i.us.us202.us.7, i64 0, i64 2
  %spec.select137.us.us205.us.7 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx.sroa.sel, i64 %spec.select231.7 ; 2 uses
  br i1 %i.age, label %bb.ac, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread: ; preds = %.lr.ph.i.us.us.us.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread
  %spec.select137.us.us205.us.6640.ph = phi ptr [ %spec.select137.us.us205.us.6638, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread ], [ %spec.select137.us.us205.us.6, %.lr.ph.i.us.us.us.5 ]
  %.not.i.us.us202.us.6639.ph = phi i1 [ %.not.i.us.us202.us.6636, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread ], [ %.not.i.us.us202.us.6, %.lr.ph.i.us.us.us.5 ]
  %.ph652 = phi i32 [ %.ph630, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.5.thread ], [ %.pre323, %.lr.ph.i.us.us.us.5 ]
  %i.agg = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.6640.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx656.sroa.sel.idx = select i1 %.not.i.us.us202.us.6639.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx656.sroa.sel = getelementptr inbounds i8, ptr %i.agg, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx656.sroa.sel.idx
  %.not.i.us.us202.us.7658 = icmp eq i32 %.ph652, 0 ; 2 uses
  %spec.select231.7659 = select i1 %.not.i.us.us202.us.7658, i64 0, i64 2
  %spec.select137.us.us205.us.7660 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.us.us207.us.6.sroa.sel.idx656.sroa.sel, i64 %spec.select231.7659
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7

bb.ac:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663, %.lr.ph.i.us.us.us.6
  %spec.select137.us.us205.us.7673 = phi ptr [ %spec.select137.us.us205.us.7671, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663 ], [ %spec.select137.us.us205.us.7, %.lr.ph.i.us.us.us.6 ] ; 4 uses
  %.not.i.us.us202.us.7672 = phi i1 [ %.not.i.us.us202.us.7669, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663 ], [ %.not.i.us.us202.us.7, %.lr.ph.i.us.us.us.6 ] ; 2 uses
  %i.agh = phi i32 [ %i.ce, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread663 ], [ %i.cf, %.lr.ph.i.us.us.us.6 ] ; 3 uses
  %i.agi = load i16, ptr %i.t, align 2, !tbaa !80
  %i.agj = zext i16 %i.agi to i32
  %i.agk = icmp ult i32 %i.agh, %i.agj
  br i1 %i.agk, label %.lr.ph.i.us.us.us.7, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7

.lr.ph.i.us.us.us.7:                              ; preds = %bb.ac
  %i.agl = load ptr, ptr %i.u, align 8, !tbaa !82 ; 2 uses
  %i.agm = load i16, ptr %spec.select137.us.us205.us.7673, align 2, !tbaa !81
  %i.agn = zext i16 %i.agm to i64
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.agn
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !81
  %i.agq = load i16, ptr %i.t, align 2, !tbaa !80
  %i.agr = zext i16 %i.agq to i32
  %i.ags = mul nuw i32 %i.xp, %i.agr
  %i.agt = add nuw i32 %i.ags, %i.agh
  %i.agu = zext i32 %i.agt to i64
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.agl, i64 %i.agu
  store i16 %i.agp, ptr %i.agv, align 2, !tbaa !81
  %i.agw = getelementptr inbounds nuw i8, ptr %spec.select137.us.us205.us.7673, i64 2
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !81
  %i.agy = zext i16 %i.agx to i64
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.agy
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !81
  %i.ahb = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ahc = zext i16 %i.ahb to i32
  %i.ahd = mul nuw i32 %i.xp, %i.ahc
  %i.ahe = add nuw i32 %i.ahd, %i.agh
  %i.ahf = zext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.agl, i64 %i.ahf
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 2
  store i16 %i.aha, ptr %i.ahh, align 2, !tbaa !81
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7: ; preds = %.lr.ph.i.us.us.us.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread, %bb.ac, %.lr.ph.i.us.us.us.6
  %spec.select137.us.us205.us.7662 = phi ptr [ %spec.select137.us.us205.us.7660, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread ], [ %spec.select137.us.us205.us.7, %.lr.ph.i.us.us.us.6 ], [ %spec.select137.us.us205.us.7673, %bb.ac ], [ %spec.select137.us.us205.us.7673, %.lr.ph.i.us.us.us.7 ]
  %.not.i.us.us202.us.7661 = phi i1 [ %.not.i.us.us202.us.7658, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.6.thread ], [ %.not.i.us.us202.us.7, %.lr.ph.i.us.us.us.6 ], [ %.not.i.us.us202.us.7672, %bb.ac ], [ %.not.i.us.us202.us.7672, %.lr.ph.i.us.us.us.7 ]
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.us.us205.us.7662, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.7.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.us.us202.us.7661, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.us.us207.us.7.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.ahi, i64 %spec.select.idx.i.sroa.sel.idx.us.us207.us.7.sroa.sel.idx.sroa.sel.idx
  %i.ahj = add nuw nsw i32 %.058189.us.us, 2
  %i.ahk = icmp samesign ult i32 %.058189.us.us, 14
  br i1 %i.ahk, label %.preheader.us.us, label %.split212.us, !llvm.loop !113

.split190:                                        ; preds = %bb.j
  %i.ahl = add i32 %i.bm, 1                       ; 2 uses
  %i.ahm = add nuw nsw i32 %i.bm, 1               ; 2 uses
  %i.ahn = add i32 %i.bm, 2                       ; 2 uses
  %i.aho = add i32 %i.bm, 2                       ; 2 uses
  %i.ahp = add i32 %i.bm, 3                       ; 2 uses
  %i.ahq = add i32 %i.bm, 3                       ; 2 uses
  %i.ahr = add i32 %i.bm, 4                       ; 2 uses
  %i.ahs = add i32 %i.bm, 4                       ; 2 uses
  %i.aht = add i32 %i.bm, 5                       ; 2 uses
  %i.ahu = add i32 %i.bm, 5                       ; 2 uses
  %i.ahv = add i32 %i.bm, 6                       ; 2 uses
  %i.ahw = add i32 %i.bm, 6                       ; 2 uses
  %i.ahx = add i32 %i.bm, 7                       ; 2 uses
  %i.ahy = add i32 %i.bm, 7                       ; 2 uses
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
  %.058189.us214 = phi i32 [ %i.aml, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7 ], [ 0, %.preheader.us213.preheader ] ; 3 uses
  %.0128188.us215 = phi ptr [ %i.amk, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7 ], [ %i.z, %.preheader.us213.preheader ] ; 3 uses
  %i.ahz = add i32 %i.bn, %.058189.us214          ; 16 uses
  %i.aia = load i16, ptr %i.k, align 8, !tbaa !79
  %i.aib = zext i16 %i.aia to i32
  %i.aic = icmp ult i32 %i.ahz, %i.aib
  br i1 %i.aic, label %bb.ad, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread

bb.ad:                                            ; preds = %.preheader.us213
  %i.aid = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aie = zext i16 %i.aid to i32                 ; 2 uses
  %i.aif = icmp ult i32 %i.bm, %i.aie
  br i1 %i.aif, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us: ; preds = %bb.ad
  %i.aig = load i16, ptr %.0128188.us215, align 2, !tbaa !81
  %i.aih = zext i16 %i.aig to i64
  %i.aii = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aih
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !81
  %i.aik = mul nuw i32 %i.ahz, %i.aie
  %i.ail = add nuw i32 %i.aik, %i.bm
  %i.aim = zext i32 %i.ail to i64
  %i.ain = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.aim
  store i16 %i.aij, ptr %i.ain, align 2, !tbaa !81
  %.pre306 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre361 = zext i16 %.pre306 to i32
  %i.aio = icmp samesign ult i32 %i.ahz, %.pre361
  br i1 %i.aio, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread: ; preds = %bb.ad, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us
  %i.aip = phi i32 [ %i.ahm, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us ], [ %i.ahl, %bb.ad ] ; 2 uses
  %i.aiq = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us215, i64 %i.bq ; 5 uses
  %i.air = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ais = zext i16 %i.air to i32                 ; 2 uses
  %i.ait = icmp ult i32 %i.aip, %i.ais
  br i1 %i.ait, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread
  %24 = getelementptr inbounds nuw [2 x i8], ptr %i.aiq, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread: ; preds = %.preheader.us213, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us
  %25 = getelementptr inbounds nuw i8, ptr %.0128188.us215, i64 %.idx
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.thread
  %i.aiu = load i16, ptr %i.aiq, align 2, !tbaa !81
  %i.aiv = zext i16 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aiv
  %i.aix = load i16, ptr %i.aiw, align 2, !tbaa !81
  %i.aiy = mul nuw i32 %i.ahz, %i.ais
  %i.aiz = add nuw i32 %i.aiy, %i.aip
  %i.aja = zext i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.aja
  store i16 %i.aix, ptr %i.ajb, align 2, !tbaa !81
  %.pre307 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre363 = zext i16 %.pre307 to i32
  %i.ajc = icmp samesign ult i32 %i.ahz, %.pre363
  %26 = getelementptr inbounds nuw [2 x i8], ptr %i.aiq, i64 %i.bq ; 2 uses
  br i1 %i.ajc, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1
  %i.ajd = phi i32 [ %i.ahn, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679 ], [ %i.aho, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1 ] ; 2 uses
  %27 = phi ptr [ %24, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679 ], [ %26, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1 ]
  %i.aje = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ajf = zext i16 %i.aje to i32                 ; 2 uses
  %i.ajg = icmp ult i32 %i.ajd, %i.ajf
  br i1 %i.ajg, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a
  %28 = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %.idx857
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread
  %.ph681 = phi ptr [ %25, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread ], [ %26, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1 ]
  %29 = getelementptr inbounds nuw [2 x i8], ptr %.ph681, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.1.thread679.a
  %i.ajh = load i16, ptr %27, align 2, !tbaa !81
  %i.aji = zext i16 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aji
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !81
  %i.ajl = mul nuw i32 %i.ahz, %i.ajf
  %i.ajm = add nuw i32 %i.ajl, %i.ajd
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.ajn
  store i16 %i.ajk, ptr %i.ajo, align 2, !tbaa !81
  %.pre308 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre365 = zext i16 %.pre308 to i32
  %i.ajp = icmp samesign ult i32 %i.ahz, %.pre365
  %30 = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %.idx858 ; 2 uses
  br i1 %i.ajp, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2
  %i.ajq = phi i32 [ %i.ahp, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683 ], [ %i.ahq, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2 ] ; 2 uses
  %31 = phi ptr [ %28, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683 ], [ %30, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2 ] ; 3 uses
  %i.ajr = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ajs = zext i16 %i.ajr to i32                 ; 2 uses
  %i.ajt = icmp ult i32 %i.ajq, %i.ajs
  br i1 %i.ajt, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a
  %i.aju = load i16, ptr %31, align 2, !tbaa !81
  %i.ajv = zext i16 %i.aju to i64
  %i.ajw = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ajv
  %i.ajx = load i16, ptr %i.ajw, align 2, !tbaa !81
  %i.ajy = mul nuw i32 %i.ahz, %i.ajs
  %i.ajz = add nuw i32 %i.ajy, %i.ajq
  %i.aka = zext i32 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.aka
  store i16 %i.ajx, ptr %i.akb, align 2, !tbaa !81
  %.pre309 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre367 = zext i16 %.pre309 to i32
  %i.akc = icmp samesign ult i32 %i.ahz, %.pre367
  br i1 %i.akc, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3
  %i.akd = phi i32 [ %i.ahs, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3 ], [ %i.ahr, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread683.a ] ; 2 uses
  %i.ake = getelementptr inbounds nuw [2 x i8], ptr %31, i64 %i.bq ; 5 uses
  %i.akf = load i16, ptr %i.t, align 2, !tbaa !80
  %i.akg = zext i16 %i.akf to i32                 ; 2 uses
  %i.akh = icmp ult i32 %i.akd, %i.akg
  br i1 %i.akh, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687
  %32 = getelementptr inbounds nuw [2 x i8], ptr %i.ake, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3
  %33 = phi ptr [ %31, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3 ], [ %29, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2.thread ], [ %30, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.2 ]
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 %.idx859
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.3.thread687
  %i.aki = load i16, ptr %i.ake, align 2, !tbaa !81
  %i.akj = zext i16 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.akj
  %i.akl = load i16, ptr %i.akk, align 2, !tbaa !81
  %i.akm = mul nuw i32 %i.ahz, %i.akg
  %i.akn = add nuw i32 %i.akm, %i.akd
  %i.ako = zext i32 %i.akn to i64
  %i.akp = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.ako
  store i16 %i.akl, ptr %i.akp, align 2, !tbaa !81
  %.pre310 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre369 = zext i16 %.pre310 to i32
  %i.akq = icmp samesign ult i32 %i.ahz, %.pre369
  %35 = getelementptr inbounds nuw [2 x i8], ptr %i.ake, i64 %i.bq ; 2 uses
  br i1 %i.akq, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4
  %i.akr = phi i32 [ %i.aht, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691 ], [ %i.ahu, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4 ] ; 2 uses
  %36 = phi ptr [ %32, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691 ], [ %35, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4 ]
  %i.aks = load i16, ptr %i.t, align 2, !tbaa !80
  %i.akt = zext i16 %i.aks to i32                 ; 2 uses
  %i.aku = icmp ult i32 %i.akr, %i.akt
  br i1 %i.aku, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a
  %37 = getelementptr inbounds nuw i8, ptr %i.ake, i64 %.idx860
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread
  %.ph693 = phi ptr [ %34, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread ], [ %35, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4 ]
  %i.akv = getelementptr inbounds nuw [2 x i8], ptr %.ph693, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.4.thread691.a
  %i.akw = load i16, ptr %36, align 2, !tbaa !81
  %i.akx = zext i16 %i.akw to i64
  %i.aky = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.akx
  %i.akz = load i16, ptr %i.aky, align 2, !tbaa !81
  %i.ala = mul nuw i32 %i.ahz, %i.akt
  %i.alb = add nuw i32 %i.ala, %i.akr
  %i.alc = zext i32 %i.alb to i64
  %i.ald = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.alc
  store i16 %i.akz, ptr %i.ald, align 2, !tbaa !81
  %.pre311 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre371 = zext i16 %.pre311 to i32
  %i.ale = icmp samesign ult i32 %i.ahz, %.pre371
  %38 = getelementptr inbounds nuw i8, ptr %i.ake, i64 %.idx861 ; 2 uses
  br i1 %i.ale, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5
  %i.alf = phi i32 [ %i.ahv, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695 ], [ %i.ahw, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5 ] ; 2 uses
  %39 = phi ptr [ %37, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695 ], [ %38, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5 ] ; 3 uses
  %i.alg = load i16, ptr %i.t, align 2, !tbaa !80
  %i.alh = zext i16 %i.alg to i32                 ; 2 uses
  %i.ali = icmp ult i32 %i.alf, %i.alh
  br i1 %i.ali, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %39, i64 %i.bq
  br label %bb.ae

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread
  %i.alk = phi ptr [ %i.akv, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread ], [ %38, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5 ]
  %i.all = getelementptr inbounds nuw [2 x i8], ptr %i.alk, i64 %i.bq
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.5.thread695.a
  %i.alm = load i16, ptr %39, align 2, !tbaa !81
  %i.aln = zext i16 %i.alm to i64
  %i.alo = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aln
  %i.alp = load i16, ptr %i.alo, align 2, !tbaa !81
  %i.alq = mul nuw i32 %i.ahz, %i.alh
  %i.alr = add nuw i32 %i.alq, %i.alf
  %i.als = zext i32 %i.alr to i64
  %i.alt = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.als
  store i16 %i.alp, ptr %i.alt, align 2, !tbaa !81
  %.pre312 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre373 = zext i16 %.pre312 to i32
  %i.alu = icmp samesign ult i32 %i.ahz, %.pre373
  %i.alv = getelementptr inbounds nuw [2 x i8], ptr %39, i64 %i.bq ; 2 uses
  br i1 %i.alu, label %bb.ae, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7

bb.ae:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6
  %i.alw = phi i32 [ %i.ahx, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699 ], [ %i.ahy, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6 ] ; 2 uses
  %i.alx = phi ptr [ %i.alj, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread699 ], [ %i.alv, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6 ] ; 3 uses
  %i.aly = load i16, ptr %i.t, align 2, !tbaa !80
  %i.alz = zext i16 %i.aly to i32                 ; 2 uses
  %i.ama = icmp ult i32 %i.alw, %i.alz
  br i1 %i.ama, label %bb.af, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7

bb.af:                                            ; preds = %bb.ae
  %i.amb = load i16, ptr %i.alx, align 2, !tbaa !81
  %i.amc = zext i16 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.amc
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !81
  %i.amf = mul nuw i32 %i.ahz, %i.alz
  %i.amg = add nuw i32 %i.amf, %i.alw
  %i.amh = zext i32 %i.amg to i64
  %i.ami = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.amh
  store i16 %i.ame, ptr %i.ami, align 2, !tbaa !81
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread, %bb.af, %bb.ae, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6
  %i.amj = phi ptr [ %i.all, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6.thread ], [ %i.alx, %bb.af ], [ %i.alx, %bb.ae ], [ %i.alv, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.6 ]
  %i.amk = getelementptr inbounds nuw [2 x i8], ptr %i.amj, i64 %i.bq
  %i.aml = add nuw nsw i32 %.058189.us214, 2
  %i.amm = icmp samesign ult i32 %.058189.us214, 14
  br i1 %i.amm, label %.preheader.us213, label %.split212.us, !llvm.loop !113

.preheader:                                       ; preds = %.split190, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7
  %.058189 = phi i32 [ %i.ars, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7 ], [ 0, %.split190 ] ; 3 uses
  %.0128188 = phi ptr [ %spec.select.idx.i.sroa.sel.idx.7.sroa.sel.idx.sroa.sel, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7 ], [ %i.z, %.split190 ]
  %i.amn = add i32 %i.bn, %.058189                ; 16 uses
  %i.amo = load i32, ptr %i.a, align 4            ; 5 uses
  %.not.i = icmp eq i32 %i.amo, 0                 ; 4 uses
  %spec.select232.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 2
  %spec.select232.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.0128188, i64 %spec.select232.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %i.amp = load i16, ptr %i.k, align 8, !tbaa !79
  %i.amq = zext i16 %i.amp to i32
  %i.amr = icmp ult i32 %i.amn, %i.amq
  br i1 %i.amr, label %bb.ag, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711: ; preds = %.preheader
  %i.ams = getelementptr inbounds nuw [2 x i8], ptr %spec.select232.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx713.sroa.sel.idx = select i1 %.not.i, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx713.sroa.sel = getelementptr inbounds i8, ptr %i.ams, i64 %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx713.sroa.sel.idx
  %.not.i.1715 = icmp eq i32 %i.amo, 0            ; 2 uses
  %spec.select232.1716 = select i1 %.not.i.1715, i64 0, i64 2
  %spec.select137.1717 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx713.sroa.sel, i64 %spec.select232.1716
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread

bb.ag:                                            ; preds = %.preheader
  %i.amt = load i16, ptr %i.t, align 2, !tbaa !80
  %i.amu = zext i16 %i.amt to i32                 ; 2 uses
  %i.amv = icmp ult i32 %i.bm, %i.amu
  br i1 %i.amv, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread:   ; preds = %bb.ag
  %i.amw = getelementptr inbounds nuw [2 x i8], ptr %spec.select232.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx702.sroa.sel.idx = select i1 %.not.i, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx702.sroa.sel = getelementptr inbounds i8, ptr %i.amw, i64 %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx702.sroa.sel.idx
  %.not.i.1704 = icmp eq i32 %i.amo, 0            ; 2 uses
  %spec.select232.1705 = select i1 %.not.i.1704, i64 0, i64 2
  %spec.select137.1706 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx702.sroa.sel, i64 %spec.select232.1705
  br label %bb.ah

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit:          ; preds = %bb.ag
  %i.amx = load i16, ptr %spec.select232.sroa.sel.idx.sroa.sel, align 2, !tbaa !81
  %i.amy = zext i16 %i.amx to i64
  %i.amz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.amy
  %i.ana = load i16, ptr %i.amz, align 2, !tbaa !81
  %i.anb = mul nuw i32 %i.amn, %i.amu
  %i.anc = add nuw i32 %i.anb, %i.bm
  %i.and = zext i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.and
  store i16 %i.ana, ptr %i.ane, align 2, !tbaa !81
  %.pre = load i32, ptr %i.a, align 4             ; 3 uses
  %.pre293 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre375 = zext i16 %.pre293 to i32
  %i.anf = icmp samesign ult i32 %i.amn, %.pre375
  %i.ang = getelementptr inbounds nuw [2 x i8], ptr %spec.select232.sroa.sel.idx.sroa.sel, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.ang, i64 %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.not.i.1 = icmp eq i32 %.pre, 0                ; 3 uses
  %spec.select232.1 = select i1 %.not.i.1, i64 0, i64 2
  %spec.select137.1 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %spec.select232.1 ; 2 uses
  br i1 %i.anf, label %bb.ah, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread

bb.ah:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit
  %spec.select137.1709 = phi ptr [ %spec.select137.1706, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread ], [ %spec.select137.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 3 uses
  %.not.i.1708 = phi i1 [ %.not.i.1704, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread ], [ %.not.i.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 2 uses
  %i.anh = phi i32 [ %i.ahl, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread ], [ %i.ahm, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 2 uses
  %i.ani = phi i32 [ %i.amo, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread ], [ %.pre, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 2 uses
  %i.anj = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ank = zext i16 %i.anj to i32                 ; 2 uses
  %i.anl = icmp ult i32 %i.anh, %i.ank
  br i1 %i.anl, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729: ; preds = %bb.ah
  %i.anm = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.1709, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx733.sroa.sel.idx = select i1 %.not.i.1708, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx733.sroa.sel = getelementptr inbounds i8, ptr %i.anm, i64 %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx733.sroa.sel.idx
  %.not.i.2735 = icmp eq i32 %i.ani, 0            ; 2 uses
  %spec.select232.2736 = select i1 %.not.i.2735, i64 0, i64 2
  %spec.select137.2737 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx733.sroa.sel, i64 %spec.select232.2736
  br label %bb.ai

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711
  %spec.select137.1710.ph = phi ptr [ %spec.select137.1717, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711 ], [ %spec.select137.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ]
  %.not.i.1707.ph = phi i1 [ %.not.i.1715, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711 ], [ %.not.i.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ]
  %.ph718 = phi i32 [ %i.amo, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.thread711 ], [ %.pre, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit ] ; 2 uses
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.1710.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx722.sroa.sel.idx = select i1 %.not.i.1707.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx722.sroa.sel = getelementptr inbounds i8, ptr %i.ann, i64 %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx722.sroa.sel.idx
  %.not.i.2724 = icmp eq i32 %.ph718, 0           ; 2 uses
  %spec.select232.2725 = select i1 %.not.i.2724, i64 0, i64 2
  %spec.select137.2726 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx722.sroa.sel, i64 %spec.select232.2725
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1:        ; preds = %bb.ah
  %i.ano = load i16, ptr %spec.select137.1709, align 2, !tbaa !81
  %i.anp = zext i16 %i.ano to i64
  %i.anq = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.anp
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !81
  %i.ans = mul nuw i32 %i.amn, %i.ank
  %i.ant = add nuw i32 %i.ans, %i.anh
  %i.anu = zext i32 %i.ant to i64
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.anu
  store i16 %i.anr, ptr %i.anv, align 2, !tbaa !81
  %.pre294 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre295 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre377 = zext i16 %.pre295 to i32
  %i.anw = icmp samesign ult i32 %i.amn, %.pre377
  %i.anx = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.1709, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.1708, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.anx, i64 %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx.sroa.sel.idx
  %.not.i.2 = icmp eq i32 %.pre294, 0             ; 3 uses
  %spec.select232.2 = select i1 %.not.i.2, i64 0, i64 2
  %spec.select137.2 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.1.sroa.sel.idx.sroa.sel, i64 %spec.select232.2 ; 2 uses
  br i1 %i.anw, label %bb.ai, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread

bb.ai:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1
  %spec.select137.2739 = phi ptr [ %spec.select137.2737, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729 ], [ %spec.select137.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 3 uses
  %.not.i.2738 = phi i1 [ %.not.i.2735, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729 ], [ %.not.i.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 2 uses
  %i.any = phi i32 [ %i.ahn, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729 ], [ %i.aho, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 2 uses
  %i.anz = phi i32 [ %i.ani, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread729 ], [ %.pre294, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 2 uses
  %i.aoa = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aob = zext i16 %i.aoa to i32                 ; 2 uses
  %i.aoc = icmp ult i32 %i.any, %i.aob
  br i1 %i.aoc, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751: ; preds = %bb.ai
  %i.aod = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.2739, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx755.sroa.sel.idx = select i1 %.not.i.2738, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx755.sroa.sel = getelementptr inbounds i8, ptr %i.aod, i64 %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx755.sroa.sel.idx
  %.not.i.3757 = icmp eq i32 %i.anz, 0            ; 2 uses
  %spec.select232.3758 = select i1 %.not.i.3757, i64 0, i64 2
  %spec.select137.3759 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx755.sroa.sel, i64 %spec.select232.3758
  br label %bb.aj

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread
  %spec.select137.2728.ph = phi ptr [ %spec.select137.2726, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread ], [ %spec.select137.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ]
  %.not.i.2727.ph = phi i1 [ %.not.i.2724, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread ], [ %.not.i.2, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ]
  %.ph740 = phi i32 [ %.ph718, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1.thread ], [ %.pre294, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.1 ] ; 2 uses
  %i.aoe = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.2728.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx744.sroa.sel.idx = select i1 %.not.i.2727.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx744.sroa.sel = getelementptr inbounds i8, ptr %i.aoe, i64 %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx744.sroa.sel.idx
  %.not.i.3746 = icmp eq i32 %.ph740, 0           ; 2 uses
  %spec.select232.3747 = select i1 %.not.i.3746, i64 0, i64 2
  %spec.select137.3748 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx744.sroa.sel, i64 %spec.select232.3747
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2:        ; preds = %bb.ai
  %i.aof = load i16, ptr %spec.select137.2739, align 2, !tbaa !81
  %i.aog = zext i16 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aog
  %i.aoi = load i16, ptr %i.aoh, align 2, !tbaa !81
  %i.aoj = mul nuw i32 %i.amn, %i.aob
  %i.aok = add nuw i32 %i.aoj, %i.any
  %i.aol = zext i32 %i.aok to i64
  %i.aom = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.aol
  store i16 %i.aoi, ptr %i.aom, align 2, !tbaa !81
  %.pre296 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre297 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre379 = zext i16 %.pre297 to i32
  %i.aon = icmp samesign ult i32 %i.amn, %.pre379
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.2739, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.2738, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.aoo, i64 %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx.sroa.sel.idx
  %.not.i.3 = icmp eq i32 %.pre296, 0             ; 3 uses
  %spec.select232.3 = select i1 %.not.i.3, i64 0, i64 2
  %spec.select137.3 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.2.sroa.sel.idx.sroa.sel, i64 %spec.select232.3 ; 2 uses
  br i1 %i.aon, label %bb.aj, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread

bb.aj:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2
  %spec.select137.3761 = phi ptr [ %spec.select137.3759, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751 ], [ %spec.select137.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2 ] ; 3 uses
  %.not.i.3760 = phi i1 [ %.not.i.3757, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751 ], [ %.not.i.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2 ] ; 2 uses
  %i.aop = phi i32 [ %i.ahp, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751 ], [ %i.ahq, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2 ] ; 2 uses
  %i.aoq = phi i32 [ %i.anz, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2.thread751 ], [ %.pre296, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.2 ] ; 2 uses
  %i.aor = load i16, ptr %i.t, align 2, !tbaa !80
end_hunk_1
