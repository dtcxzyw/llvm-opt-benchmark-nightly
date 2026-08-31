Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_dcraw?download=true
inline.NumInlined: 216
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6LibRaw11ljpeg_startEP5jheadi:_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %i.js = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.jr, i64 noundef 16)
          to label %bb.au unwind label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %.loopexit
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !124
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 381848
  store i32 1, ptr %i.ju, align 8, !tbaa !83
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit121

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit121: ; preds = %bb.j, %bb.h, %bb.g, %bb.e, %bb.d, %bb.y, %bb.z, %bb.v, %bb.w, %bb.x, %bb.a, %bb.b, %bb.au
  %.0 = phi i32 [ 1, %bb.au ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.mux, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 65536) #19
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %.not.1 = icmp eq ptr %i.d, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %.not.2 = icmp eq ptr %i.f, null
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not.3 = icmp eq ptr %i.h, null
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.h)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.j)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483647, 33554432) i32 @_ZN6LibRaw10ljpeg_diffEPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.a, align 16, !tbaa !125
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 2, !tbaa !86
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.c, ptr noundef nonnull %i.d) ; 4 uses
  %i.f = icmp eq i32 %i.e, 16
  br i1 %i.f, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118
  %i.i = add i32 %i.h, -16842752
  %or.cond = icmp ult i32 %i.i, -16842751
  br i1 %or.cond, label %bb.e, label %.split

.split:                                           ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.e, %bb.c ], [ 16, %bb.d ]
  %i.j = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.sink, ptr noundef null) ; 2 uses
  %i.k = add nsw i32 %i.e, -1
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.j, %i.l
  %i.n = icmp eq i32 %i.m, 0
  %notmask = shl nsw i32 -1, %i.e
  %.neg = add nsw i32 %notmask, 1
  %i.o = select i1 %i.n, i32 %.neg, i32 0
  %.0 = add nsw i32 %i.o, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split
  %.011 = phi i32 [ %.0, %.split ], [ -32768, %bb.d ]
  ret i32 %.011
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6LibRaw9ljpeg_rowEiP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6LibRaw18ljpeg_row_unrolledEiP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, ptr noundef nonnull %2)
  br label %._crit_edge138

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107  ; 2 uses
  %.not72 = icmp eq i32 %i.e, 0
  br i1 %.not72, label %.preheader121, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !116
  %i.h = mul nsw i32 %i.g, %1
  %i.i = srem i32 %i.h, %i.e
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.preheader122, label %.preheader121

.preheader122:                                    ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !114
  %i.m = add nsw i32 %i.l, -1
  %i.n = shl nuw i32 1, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %i.q = shufflevector <4 x i32> %i.p, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.q, ptr %i.o, align 4, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.n, ptr %i.r, align 4, !tbaa !101
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.n, ptr %i.s, align 4, !tbaa !101
  %.not73 = icmp eq i32 %1, 0
  br i1 %.not73, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader122
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef -2, i32 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.ag, %bb.f ]
  %i.z = shl i32 %.0, 8
  %i.aa = and i32 %i.z, 16776960
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !80  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) ; 2 uses
  %i.ag = add nsw i32 %i.af, %i.aa                ; 2 uses
  %i.ah = icmp ne i32 %i.af, -1
  %i.ai = and i32 %i.ag, 65520
  %i.aj = icmp ne i32 %i.ai, 65488
  %i.ak = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.f, label %.loopexit, !llvm.loop !127

.loopexit:                                        ; preds = %bb.f, %.preheader122
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 381584
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !78
  store i32 0, ptr %i.am, align 8, !tbaa !79
  br label %.preheader121

.preheader121:                                    ; preds = %.loopexit, %bb.d, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 632
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !124 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !116 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !117 ; 3 uses
  %i.av = mul nsw i32 %i.au, %i.as                ; 3 uses
  %3 = trunc i32 %1 to i1
  %4 = select i1 %3, i32 %i.av, i32 0
  %5 = sext i32 %4 to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %5 ; 3 uses
  %i.ax = icmp sgt i32 %i.as, 0
  br i1 %i.ax, label %.preheader.lr.ph, label %._crit_edge138

.preheader.lr.ph:                                 ; preds = %.preheader121
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 381848 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bd = icmp ne i32 %1, 0
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.bi = icmp sgt i32 %i.au, 0
  br i1 %i.bi, label %.preheader.preheader, label %._crit_edge138

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bj = trunc i32 %1 to i1
  %6 = select i1 %i.bj, i32 %i.av, i32 0
  %7 = zext nneg i32 %6 to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %7
  %i.bl = trunc i32 %1 to i1
  %8 = select i1 %i.bl, i32 0, i32 %i.av
  %9 = zext nneg i32 %8 to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.bn = phi i32 [ %i.iw, %._crit_edge ], [ %i.as, %.preheader.preheader ]
  %i.bo = phi i32 [ %i.ix, %._crit_edge ], [ %i.au, %.preheader.preheader ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.6.2, %._crit_edge ], [ %i.bm, %.preheader.preheader ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %._crit_edge ], [ %i.bk, %.preheader.preheader ] ; 2 uses
  %.062137 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.068136 = phi i32 [ %i.iy, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph134, label %._crit_edge

.lr.ph134:                                        ; preds = %.preheader
  %.not77 = icmp eq i32 %.068136, 0
  %i.bq = icmp ne i32 %.068136, 0
  %or.cond = and i1 %i.bd, %i.bq
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph134, %bb.an
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %.lr.ph134 ], [ %i.is, %bb.an ] ; 10 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph134 ], [ %i.ir, %bb.an ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph134 ], [ %indvars.iv.next, %bb.an ] ; 6 uses
  %.1133 = phi i32 [ %.062137, %.lr.ph134 ], [ %.2, %bb.an ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !92 ; 3 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.bt, align 16, !tbaa !125
  tail call void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bu = load i16, ptr %i.bs, align 2, !tbaa !86 ; 2 uses
  %i.bv = zext i16 %i.bu to i32                   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bx = add i16 %i.bu, -26
  %or.cond119 = icmp ult i16 %i.bx, -25
  br i1 %or.cond119, label %_ZN6LibRaw10getbithuffEiPt.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !8  ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !78 ; 3 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.preheader.i86

.preheader.i86:                                   ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !71
  %.not25.i87 = icmp eq i32 %i.cd, 0
  br i1 %.not25.i87, label %.lr.ph.i92, label %.critedge.i88

.lr.ph.i92:                                       ; preds = %.preheader.i86
  %i.ce = icmp samesign ult i32 %i.ca, %i.bv
  br i1 %i.ce, label %.lr.ph, label %.critedge.loopexit.i93

.lr.ph:                                           ; preds = %.lr.ph.i92, %bb.m
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !80 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !81
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef i32 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf), !inline_history !100 ; 3 uses
  %.not21.i97 = icmp eq i32 %i.cj, -1
  br i1 %.not21.i97, label %..critedge.loopexit_crit_edge.i100, label %bb.k

..critedge.loopexit_crit_edge.i100:               ; preds = %.lr.ph
  %.pre.pre.i101 = load ptr, ptr %i.az, align 8, !tbaa !8
  br label %.critedge.loopexit.i93

bb.k:                                             ; preds = %.lr.ph
  %i.ck = load i32, ptr %i.bb, align 8, !tbaa !83
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = icmp eq i32 %i.cj, 255
  %or.cond.i98 = and i1 %i.cm, %i.cl
  br i1 %or.cond.i98, label %bb.l, label %.critedge24.i99

bb.l:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.ba, align 8, !tbaa !80 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn), !inline_history !100
  %i.cs = icmp ne i32 %i.cr, 0                    ; 2 uses
  %i.ct = zext i1 %i.cs to i32
  %i.cu = load ptr, ptr %i.az, align 8, !tbaa !8  ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !71
  br i1 %i.cs, label %.critedge.loopexit.i93, label %bb.m

.critedge24.i99:                                  ; preds = %bb.k
  %i.cw = load ptr, ptr %i.az, align 8, !tbaa !8  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 0, ptr %i.cx, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %.critedge24.i99, %bb.l
  %i.cy = phi ptr [ %i.cw, %.critedge24.i99 ], [ %i.cu, %bb.l ] ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !79
  %i.da = shl i32 %i.cz, 8
  %i.db = and i32 %i.cj, 255
  %i.dc = or disjoint i32 %i.da, %i.db
  store i32 %i.dc, ptr %i.cy, align 8, !tbaa !79
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !78
  %i.df = add nsw i32 %i.de, 8                    ; 2 uses
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !78
  %i.dg = icmp slt i32 %i.df, %i.bv
  br i1 %i.dg, label %.lr.ph, label %.critedge.loopexit.i93, !llvm.loop !84

.critedge.loopexit.i93:                           ; preds = %bb.m, %bb.l, %.lr.ph.i92, %..critedge.loopexit_crit_edge.i100
  %.pre.i94 = phi ptr [ %.pre.pre.i101, %..critedge.loopexit_crit_edge.i100 ], [ %i.by, %.lr.ph.i92 ], [ %i.cy, %bb.m ], [ %i.cu, %bb.l ] ; 2 uses
  %.phi.trans.insert.i95 = getelementptr inbounds nuw i8, ptr %.pre.i94, i64 4
  %.pre29.i96 = load i32, ptr %.phi.trans.insert.i95, align 4, !tbaa !78
  br label %.critedge.i88

.critedge.i88:                                    ; preds = %.critedge.loopexit.i93, %.preheader.i86
  %i.dh = phi i32 [ %.pre29.i96, %.critedge.loopexit.i93 ], [ %i.ca, %.preheader.i86 ] ; 3 uses
  %i.di = phi ptr [ %.pre.i94, %.critedge.loopexit.i93 ], [ %i.by, %.preheader.i86 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = icmp eq i32 %i.dh, 0
  br i1 %i.dk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge.i88
  %i.dl = load i32, ptr %i.di, align 8, !tbaa !79
  %i.dm = sub nsw i32 32, %i.dh
  %i.dn = shl i32 %i.dl, %i.dm
  %i.do = sub nuw nsw i32 32, %i.bv
  %i.dp = lshr i32 %i.dn, %i.do
  %i.dq = zext nneg i32 %i.dp to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge.i88
  %i.dr = phi i64 [ %i.dq, %bb.n ], [ 0, %.critedge.i88 ]
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !86 ; 2 uses
  %i.du = lshr i16 %i.dt, 8
  %i.dv = zext nneg i16 %i.du to i32
  %i.dw = and i16 %i.dt, 255                      ; 3 uses
  %i.dx = zext nneg i16 %i.dw to i32              ; 2 uses
  %.sink.i90 = sub nsw i32 %i.dh, %i.dv           ; 2 uses
  store i32 %.sink.i90, ptr %i.dj, align 4, !tbaa !78
  %i.dy = icmp slt i32 %.sink.i90, 0
  br i1 %i.dy, label %bb.p, label %_ZN6LibRaw10getbithuffEiPt.exit102

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %_ZN6LibRaw10getbithuffEiPt.exit102

_ZN6LibRaw10getbithuffEiPt.exit102:               ; preds = %bb.o, %bb.p
  %i.dz = icmp eq i16 %i.dw, 16
  br i1 %i.dz, label %bb.q, label %.split.i

bb.q:                                             ; preds = %_ZN6LibRaw10getbithuffEiPt.exit102
  %i.ea = load i32, ptr %i.bc, align 4, !tbaa !118
  %i.eb = add i32 %i.ea, -16842752
  %or.cond.i = icmp ult i32 %i.eb, -16842751
  br i1 %or.cond.i, label %_ZN6LibRaw10ljpeg_diffEPt.exit, label %.split.i.thread.thread114

.split.i:                                         ; preds = %_ZN6LibRaw10getbithuffEiPt.exit102
  %i.ec = add nsw i16 %i.dw, -26
  %or.cond120 = icmp ult i16 %i.ec, -25
  br i1 %or.cond120, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.split.i.thread.thread114

.split.i.thread.thread114:                        ; preds = %.split.i, %bb.q
  %.016.i91104107118 = phi i32 [ %i.dx, %.split.i ], [ 16, %bb.q ] ; 7 uses
  %i.ed = load ptr, ptr %i.az, align 8, !tbaa !8  ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !78 ; 3 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.split.i.thread.thread114
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !71
  %.not25.i = icmp eq i32 %i.ei, 0
  br i1 %.not25.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ej = icmp samesign ult i32 %i.ef, %.016.i91104107118
  br i1 %i.ej, label %.lr.ph128, label %.critedge.loopexit.i

.lr.ph128:                                        ; preds = %.lr.ph.i, %bb.t
  %i.ek = load ptr, ptr %i.ba, align 8, !tbaa !80 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !81
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = tail call noundef i32 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ek), !inline_history !100 ; 3 uses
  %.not21.i = icmp eq i32 %i.eo, -1
  br i1 %.not21.i, label %..critedge.loopexit_crit_edge.i, label %bb.r

..critedge.loopexit_crit_edge.i:                  ; preds = %.lr.ph128
  %.pre.pre.i = load ptr, ptr %i.az, align 8, !tbaa !8
  br label %.critedge.loopexit.i

bb.r:                                             ; preds = %.lr.ph128
  %i.ep = load i32, ptr %i.bb, align 8, !tbaa !83
  %i.eq = icmp ne i32 %i.ep, 0
end_hunk_0
begin_hunk_1_@_ZN6LibRaw9ljpeg_rowEiP5jhead:bb.a
  %i.gq = load i16, ptr %.sroa.6.1, align 2, !tbaa !86
  %i.gr = zext i16 %i.gq to i32
  br label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  %i.gs = load i32, ptr %i.at, align 8, !tbaa !117
  %i.gt = sub nsw i32 0, %i.gs
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %.sroa.6.1, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !86
  %i.gx = zext i16 %i.gw to i32
  br label %bb.ai

bb.ad:                                            ; preds = %bb.aa
  %i.gy = load i16, ptr %.sroa.6.1, align 2, !tbaa !86
  %i.gz = zext i16 %i.gy to i32
  %i.ha = add nuw nsw i32 %.063, %i.gz
  %i.hb = load i32, ptr %i.at, align 8, !tbaa !117
  %i.hc = sub nsw i32 0, %i.hb
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [2 x i8], ptr %.sroa.6.1, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !86
  %i.hg = zext i16 %i.hf to i32
  %i.hh = sub nsw i32 %i.ha, %i.hg
  br label %bb.ai

bb.ae:                                            ; preds = %bb.aa
  %i.hi = load i16, ptr %.sroa.6.1, align 2, !tbaa !86
  %i.hj = zext i16 %i.hi to i32
  %i.hk = load i32, ptr %i.at, align 8, !tbaa !117
  %i.hl = sub nsw i32 0, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [2 x i8], ptr %.sroa.6.1, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !86
  %i.hp = zext i16 %i.ho to i32
  %i.hq = sub nsw i32 %i.hj, %i.hp
  %i.hr = ashr i32 %i.hq, 1
  %i.hs = add nsw i32 %i.hr, %.063
  br label %bb.ai

bb.af:                                            ; preds = %bb.aa
  %i.ht = load i16, ptr %.sroa.6.1, align 2, !tbaa !86
  %i.hu = zext i16 %i.ht to i32
  %i.hv = load i32, ptr %i.at, align 8, !tbaa !117
  %i.hw = sub nsw i32 0, %i.hv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [2 x i8], ptr %.sroa.6.1, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !86
  %i.ia = zext i16 %i.hz to i32
  %i.ib = sub nsw i32 %.063, %i.ia
  %i.ic = ashr i32 %i.ib, 1
  %i.id = add nsw i32 %i.ic, %i.hu
  br label %bb.ai

bb.ag:                                            ; preds = %bb.aa
  %i.ie = load i16, ptr %.sroa.6.1, align 2, !tbaa !86
  %i.if = zext i16 %i.ie to i32
  %i.ig = add nuw nsw i32 %.063, %i.if
  %i.ih = lshr i32 %i.ig, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa
  br label %bb.ai

bb.ai:                                            ; preds = %.thread, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.z
  %.164 = phi i32 [ 0, %bb.ah ], [ %.063, %bb.aa ], [ %i.gr, %bb.ab ], [ %i.gx, %bb.ac ], [ %i.hh, %bb.ad ], [ %i.hs, %bb.ae ], [ %i.id, %bb.af ], [ %i.ih, %bb.ag ], [ %.063, %bb.z ], [ %i.gn, %.thread ]
  %i.ii = add nsw i32 %.164, %.011.i              ; 2 uses
  %i.ij = trunc i32 %i.ii to i16
  store i16 %i.ij, ptr %.sroa.0.1, align 2, !tbaa !86
  %i.ik = and i32 %i.ii, 65535
  %i.il = load i32, ptr %i.bg, align 4, !tbaa !114
  %i.im = lshr i32 %i.ik, %i.il
  %.not78 = icmp eq i32 %i.im, 0
  br i1 %.not78, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.in = load i32, ptr %i.bh, align 4, !tbaa !128
  %i.io = and i32 %i.in, 512
  %.not79 = icmp eq i32 %i.io, 0
  br i1 %.not79, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !112
  %.pre151 = sext i32 %.pre to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %.pre-phi = phi i64 [ %i.gd, %bb.aj ], [ %.pre151, %bb.ak ], [ %i.gd, %bb.ai ]
  %.not80 = icmp sgt i64 %indvars.iv, %.pre-phi
  br i1 %.not80, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ip = load i16, ptr %.sroa.0.1, align 2, !tbaa !86
  %i.iq = zext i16 %i.ip to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.2 = phi i32 [ %i.iq, %bb.am ], [ %.1133, %bb.al ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.it = load i32, ptr %i.at, align 8, !tbaa !117 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = icmp slt i64 %indvars.iv.next, %i.iu
  br i1 %i.iv, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %bb.an
  %.pre150 = load i32, ptr %i.ar, align 4, !tbaa !116
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.iw = phi i32 [ %.pre150, %._crit_edge.loopexit ], [ %i.bn, %.preheader ] ; 2 uses
  %i.ix = phi i32 [ %i.it, %._crit_edge.loopexit ], [ %i.bo, %.preheader ]
  %.sroa.6.2 = phi ptr [ %i.is, %._crit_edge.loopexit ], [ %.sroa.6.0, %.preheader ]
  %.sroa.0.2 = phi ptr [ %i.ir, %._crit_edge.loopexit ], [ %.sroa.0.0, %.preheader ]
  %.1.lcssa = phi i32 [ %.2, %._crit_edge.loopexit ], [ %.062137, %.preheader ]
  %i.iy = add nuw nsw i32 %.068136, 1             ; 2 uses
  %i.iz = icmp slt i32 %i.iy, %i.iw
  br i1 %i.iz, label %.preheader, label %._crit_edge138, !llvm.loop !130

._crit_edge138:                                   ; preds = %._crit_edge, %.preheader121, %.preheader.lr.ph, %bb.b
  %.069 = phi ptr [ %i.c, %bb.b ], [ %i.aw, %.preheader121 ], [ %i.aw, %.preheader.lr.ph ], [ %i.aw, %._crit_edge ]
  ret ptr %.069
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6LibRaw18ljpeg_row_unrolledEiP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !107  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader261, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !116
  %i.e = mul nsw i32 %i.d, %1
  %i.f = srem i32 %i.e, %i.b
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.preheader263, label %.preheader261

.preheader263:                                    ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !114
  %i.j = add nsw i32 %i.i, -1
  %i.k = shl nuw i32 1, %i.j                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %i.n = shufflevector <4 x i32> %i.m, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.n, ptr %i.l, align 4, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.k, ptr %i.o, align 4, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.k, ptr %i.p, align 4, !tbaa !101
  %.not86 = icmp eq i32 %1, 0
  br i1 %.not86, label %.loopexit262, label %bb.c

bb.c:                                             ; preds = %.preheader263
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef -2, i32 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.ad, %bb.d ]
  %i.w = shl i32 %.0, 8
  %i.x = and i32 %i.w, 16776960
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) ; 2 uses
  %i.ad = add nsw i32 %i.ac, %i.x                 ; 2 uses
  %i.ae = icmp ne i32 %i.ac, -1
  %i.af = and i32 %i.ad, 65520
  %i.ag = icmp ne i32 %i.af, 65488
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.d, label %.loopexit262, !llvm.loop !132

.loopexit262:                                     ; preds = %bb.d, %.preheader263
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 381584
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 0, ptr %i.ak, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !78
  store i32 0, ptr %i.aj, align 8, !tbaa !79
  br label %.preheader261

.preheader261:                                    ; preds = %.loopexit262, %bb.b, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 632
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !124 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !116
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !117 ; 3 uses
  %i.as = mul nsw i32 %i.ar, %i.ap                ; 3 uses
  %3 = trunc i32 %1 to i1
  %4 = select i1 %3, i32 %i.as, i32 0
  %5 = sext i32 %4 to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.an, i64 %5 ; 2 uses
  %i.au = trunc i32 %1 to i1
  %6 = select i1 %i.au, i32 0, i32 %i.as
  %7 = sext i32 %6 to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.an, i64 %7 ; 2 uses
  %i.aw = icmp sgt i32 %i.ar, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader261
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.bb = phi ptr [ %i.av, %.lr.ph ], [ %i.cb, %bb.j ]
  %i.bc = phi ptr [ %i.at, %.lr.ph ], [ %i.ca, %bb.j ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !92 ; 3 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.bf, align 16, !tbaa !125
  tail call void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bg = load i16, ptr %i.be, align 2, !tbaa !86
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bj = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.bh, ptr noundef nonnull readonly %i.bi) ; 4 uses
  %i.bk = icmp eq i32 %i.bj, 16
  br i1 %i.bk, label %bb.h, label %.split.i

bb.h:                                             ; preds = %bb.g
  %i.bl = load i32, ptr %i.ay, align 4, !tbaa !118
  %i.bm = add i32 %i.bl, -16842752
  %or.cond.i = icmp ult i32 %i.bm, -16842751
  br i1 %or.cond.i, label %_ZN6LibRaw10ljpeg_diffEPt.exit, label %.split.i

.split.i:                                         ; preds = %bb.h, %bb.g
  %i.bn = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.bj, ptr noundef null) ; 2 uses
  %i.bo = add nsw i32 %i.bj, -1
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = and i32 %i.bn, %i.bp
  %i.br = icmp eq i32 %i.bq, 0
  %notmask.i = shl nsw i32 -1, %i.bj
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.bs = select i1 %i.br, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.bs, %i.bn
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit

_ZN6LibRaw10ljpeg_diffEPt.exit:                   ; preds = %bb.h, %.split.i
  %.011.i = phi i32 [ %.0.i, %.split.i ], [ -32768, %bb.h ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !101
  %i.bv = add nsw i32 %i.bu, %.011.i              ; 3 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !101
  %i.bw = trunc i32 %i.bv to i16
  store i16 %i.bw, ptr %i.bc, align 2, !tbaa !86
  %i.bx = and i32 %i.bv, 65535
  %i.by = load i32, ptr %i.ba, align 4, !tbaa !114
  %i.bz = lshr i32 %i.bx, %i.by
  %.not91 = icmp eq i32 %i.bz, 0
  br i1 %.not91, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6LibRaw10ljpeg_diffEPt.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !117 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.e, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.j, %.preheader261
  %i.cf = phi i32 [ %i.ar, %.preheader261 ], [ %i.cc, %bb.j ] ; 6 uses
  %.sroa.12.0 = phi ptr [ %i.av, %.preheader261 ], [ %i.cb, %bb.j ]
  %.lcssa = phi ptr [ %i.at, %.preheader261 ], [ %i.ca, %bb.j ] ; 3 uses
  %.not87 = icmp eq i32 %1, 0
  br i1 %.not87, label %.preheader254, label %bb.ac

.preheader254:                                    ; preds = %._crit_edge
  %i.cg = load i32, ptr %i.ao, align 4, !tbaa !116 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader254
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 381848 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.co = icmp sgt i32 %i.cf, 0
  br i1 %i.co, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge306
  %i.cp = phi i32 [ %i.hr, %._crit_edge306 ], [ %i.cg, %.preheader.lr.ph ]
  %i.cq = phi i32 [ %i.hs, %._crit_edge306 ], [ %i.cf, %.preheader.lr.ph ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %._crit_edge306 ], [ %.lcssa, %.preheader.lr.ph ] ; 2 uses
  %.082307 = phi i32 [ %i.ht, %._crit_edge306 ], [ 1, %.preheader.lr.ph ]
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph305, label %._crit_edge306

.lr.ph305:                                        ; preds = %.preheader, %bb.ab
  %.sroa.0.1 = phi ptr [ %i.ho, %bb.ab ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %bb.ab ], [ 0, %.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv328
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !92 ; 3 uses
  %.not.i92 = icmp eq ptr %i.ct, null
  br i1 %.not.i92, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph305
  %i.cu = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.cu, align 16, !tbaa !125
  tail call void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.l:                                             ; preds = %.lr.ph305
  %i.cv = load i16, ptr %i.ct, align 2, !tbaa !86 ; 2 uses
  %i.cw = zext i16 %i.cv to i32                   ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cy = add i16 %i.cv, -26
  %or.cond = icmp ult i16 %i.cy, -25
  br i1 %or.cond, label %_ZN6LibRaw10getbithuffEiPt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !8  ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !78 ; 3 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.preheader.i122

.preheader.i122:                                  ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !71
  %.not25.i123 = icmp eq i32 %i.de, 0
  br i1 %.not25.i123, label %.lr.ph.i128, label %.critedge.i124

.lr.ph.i128:                                      ; preds = %.preheader.i122
  %i.df = icmp samesign ult i32 %i.db, %i.cw
  br i1 %i.df, label %.lr.ph296, label %.critedge.loopexit.i129

.lr.ph296:                                        ; preds = %.lr.ph.i128, %bb.p
  %i.dg = load ptr, ptr %i.ck, align 8, !tbaa !80 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !81
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg), !inline_history !100 ; 3 uses
  %.not21.i133 = icmp eq i32 %i.dk, -1
  br i1 %.not21.i133, label %..critedge.loopexit_crit_edge.i136, label %bb.n

..critedge.loopexit_crit_edge.i136:               ; preds = %.lr.ph296
  %.pre.pre.i137 = load ptr, ptr %i.cj, align 8, !tbaa !8
  br label %.critedge.loopexit.i129

bb.n:                                             ; preds = %.lr.ph296
  %i.dl = load i32, ptr %i.cl, align 8, !tbaa !83
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = icmp eq i32 %i.dk, 255
  %or.cond.i134 = and i1 %i.dn, %i.dm
  br i1 %or.cond.i134, label %bb.o, label %.critedge24.i135

bb.o:                                             ; preds = %bb.n
  %i.do = load ptr, ptr %i.ck, align 8, !tbaa !80 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !81
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef i32 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do), !inline_history !100
  %i.dt = icmp ne i32 %i.ds, 0                    ; 2 uses
  %i.du = zext i1 %i.dt to i32
  %i.dv = load ptr, ptr %i.cj, align 8, !tbaa !8  ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 %i.du, ptr %i.dw, align 8, !tbaa !71
  br i1 %i.dt, label %.critedge.loopexit.i129, label %bb.p

.critedge24.i135:                                 ; preds = %bb.n
  %i.dx = load ptr, ptr %i.cj, align 8, !tbaa !8  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i32 0, ptr %i.dy, align 8, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %.critedge24.i135, %bb.o
  %i.dz = phi ptr [ %i.dx, %.critedge24.i135 ], [ %i.dv, %bb.o ] ; 4 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !79
  %i.eb = shl i32 %i.ea, 8
  %i.ec = and i32 %i.dk, 255
  %i.ed = or disjoint i32 %i.eb, %i.ec
  store i32 %i.ed, ptr %i.dz, align 8, !tbaa !79
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !78
  %i.eg = add nsw i32 %i.ef, 8                    ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !78
  %i.eh = icmp slt i32 %i.eg, %i.cw
  br i1 %i.eh, label %.lr.ph296, label %.critedge.loopexit.i129, !llvm.loop !84

end_hunk_1
begin_hunk_2_@_ZN6LibRaw18ljpeg_row_unrolledEiP5jhead:bb.a
  %.pre.pre.i188 = load ptr, ptr %i.ib, align 8, !tbaa !8
  br label %.critedge.loopexit.i180

bb.bf:                                            ; preds = %.lr.ph276
  %i.qv = load i32, ptr %i.id, align 8, !tbaa !83
  %i.qw = icmp ne i32 %i.qv, 0
  %i.qx = icmp eq i32 %i.qu, 255
  %or.cond.i185 = and i1 %i.qx, %i.qw
  br i1 %or.cond.i185, label %bb.bg, label %.critedge24.i186

bb.bg:                                            ; preds = %bb.bf
  %i.qy = load ptr, ptr %i.ic, align 8, !tbaa !80 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !81
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 56
  %i.rb = load ptr, ptr %i.ra, align 8
  %i.rc = tail call noundef i32 %i.rb(ptr noundef nonnull align 8 dereferenceable(8) %i.qy), !inline_history !100
  %i.rd = icmp ne i32 %i.rc, 0                    ; 2 uses
  %i.re = zext i1 %i.rd to i32
  %i.rf = load ptr, ptr %i.ib, align 8, !tbaa !8  ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i32 %i.re, ptr %i.rg, align 8, !tbaa !71
  br i1 %i.rd, label %.critedge.loopexit.i180, label %bb.bh

.critedge24.i186:                                 ; preds = %bb.bf
  %i.rh = load ptr, ptr %i.ib, align 8, !tbaa !8  ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i32 0, ptr %i.ri, align 8, !tbaa !71
  br label %bb.bh

bb.bh:                                            ; preds = %.critedge24.i186, %bb.bg
  %i.rj = phi ptr [ %i.rh, %.critedge24.i186 ], [ %i.rf, %bb.bg ] ; 4 uses
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !79
  %i.rl = shl i32 %i.rk, 8
  %i.rm = and i32 %i.qu, 255
  %i.rn = or disjoint i32 %i.rl, %i.rm
  store i32 %i.rn, ptr %i.rj, align 8, !tbaa !79
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !78
  %i.rq = add nsw i32 %i.rp, 8                    ; 2 uses
  store i32 %i.rq, ptr %i.ro, align 4, !tbaa !78
  %i.rr = icmp slt i32 %i.rq, %.016.i195222225248
  br i1 %i.rr, label %.lr.ph276, label %.critedge.loopexit.i180, !llvm.loop !84

.critedge.loopexit.i180:                          ; preds = %bb.bh, %bb.bg, %.lr.ph.i179, %..critedge.loopexit_crit_edge.i187
  %.pre.i181 = phi ptr [ %.pre.pre.i188, %..critedge.loopexit_crit_edge.i187 ], [ %i.qj, %.lr.ph.i179 ], [ %i.rj, %bb.bh ], [ %i.rf, %bb.bg ] ; 2 uses
  %.phi.trans.insert.i182 = getelementptr inbounds nuw i8, ptr %.pre.i181, i64 4
  %.pre29.i183 = load i32, ptr %.phi.trans.insert.i182, align 4, !tbaa !78
  br label %.critedge.i175

.critedge.i175:                                   ; preds = %.critedge.loopexit.i180, %.preheader.i173
  %i.rs = phi i32 [ %.pre29.i183, %.critedge.loopexit.i180 ], [ %i.ql, %.preheader.i173 ] ; 3 uses
  %i.rt = phi ptr [ %.pre.i181, %.critedge.loopexit.i180 ], [ %i.qj, %.preheader.i173 ] ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  %i.rv = icmp eq i32 %i.rs, 0
  br i1 %i.rv, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i175
  %i.rw = load i32, ptr %i.rt, align 8, !tbaa !79
  %i.rx = sub nsw i32 32, %i.rs
  %i.ry = shl i32 %i.rw, %i.rx
  %i.rz = sub nuw nsw i32 32, %.016.i195222225248
  %i.sa = lshr i32 %i.ry, %i.rz
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.critedge.i175
  %i.sb = phi i32 [ %i.sa, %bb.bi ], [ 0, %.critedge.i175 ] ; 2 uses
  %.sink.i177 = sub nsw i32 %i.rs, %.016.i195222225248 ; 2 uses
  store i32 %.sink.i177, ptr %i.ru, align 4, !tbaa !78
  %i.sc = icmp slt i32 %.sink.i177, 0
  br i1 %i.sc, label %bb.bk, label %_ZN6LibRaw10getbithuffEiPt.exit189

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %_ZN6LibRaw10getbithuffEiPt.exit189

_ZN6LibRaw10getbithuffEiPt.exit189:               ; preds = %bb.ax, %bb.aw, %.split.i111, %.split.i111.thread.thread244, %bb.bj, %bb.bk
  %.016.i195222226 = phi i32 [ 0, %bb.aw ], [ %.016.i195222225248, %bb.bj ], [ %i.qd, %.split.i111 ], [ %.016.i195222225248, %.split.i111.thread.thread244 ], [ %.016.i195222225248, %bb.bk ], [ 0, %bb.ax ] ; 2 uses
  %.016.i178 = phi i32 [ 0, %bb.aw ], [ %i.sb, %bb.bj ], [ 0, %.split.i111 ], [ 0, %.split.i111.thread.thread244 ], [ %i.sb, %bb.bk ], [ 0, %bb.ax ] ; 2 uses
  %i.sd = add nsw i32 %.016.i195222226, -1
  %i.se = shl nuw i32 1, %i.sd
  %i.sf = and i32 %i.se, %.016.i178
  %i.sg = icmp eq i32 %i.sf, 0
  %notmask.i113 = shl nsw i32 -1, %.016.i195222226
  %.neg.i114 = add nsw i32 %notmask.i113, 1
  %i.sh = select i1 %i.sg, i32 %.neg.i114, i32 0
  %.0.i115 = add nsw i32 %i.sh, %.016.i178
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit118

_ZN6LibRaw10ljpeg_diffEPt.exit118:                ; preds = %bb.be, %_ZN6LibRaw10getbithuffEiPt.exit189
  %.011.i116 = phi i32 [ %.0.i115, %_ZN6LibRaw10getbithuffEiPt.exit189 ], [ -32768, %bb.be ]
  %i.si = load i32, ptr %i.aq, align 8, !tbaa !117 ; 2 uses
  %i.sj = sub nsw i32 0, %i.si
  %i.sk = sext i32 %i.sj to i64                   ; 5 uses
  %i.sl = getelementptr inbounds [2 x i8], ptr %.sroa.0.7, i64 %i.sk
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !86
  %i.sn = zext i16 %i.sm to i32                   ; 5 uses
  %i.so = load i32, ptr %i.hv, align 8, !tbaa !120
  switch i32 %i.so, label %bb.br [
    i32 1, label %bb.bs
    i32 2, label %bb.bl
    i32 3, label %bb.bm
    i32 4, label %bb.bn
    i32 5, label %bb.bo
    i32 6, label %bb.bp
    i32 7, label %bb.bq
  ]

bb.bl:                                            ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit118
  %i.sp = load i16, ptr %.sroa.12.5, align 2, !tbaa !86
  %i.sq = zext i16 %i.sp to i32
  br label %bb.bs

bb.bm:                                            ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit118
  %i.sr = getelementptr inbounds [2 x i8], ptr %.sroa.12.5, i64 %i.sk
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !86
  %i.st = zext i16 %i.ss to i32
  br label %bb.bs

bb.bn:                                            ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit118
  %i.su = load i16, ptr %.sroa.12.5, align 2, !tbaa !86
  %i.sv = zext i16 %i.su to i32
  %i.sw = add nuw nsw i32 %i.sv, %i.sn
  %i.sx = getelementptr inbounds [2 x i8], ptr %.sroa.12.5, i64 %i.sk
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !86
  %i.sz = zext i16 %i.sy to i32
  %i.ta = sub nsw i32 %i.sw, %i.sz
  br label %bb.bs

bb.bo:                                            ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit118
  %i.tb = load i16, ptr %.sroa.12.5, align 2, !tbaa !86
  %i.tc = zext i16 %i.tb to i32
  %i.td = getelementptr inbounds [2 x i8], ptr %.sroa.12.5, i64 %i.sk
  %i.te = load i16, ptr %i.td, align 2, !tbaa !86
  %i.tf = zext i16 %i.te to i32
  %i.tg = sub nsw i32 %i.tc, %i.tf
  %i.th = ashr i32 %i.tg, 1
  %i.ti = add nsw i32 %i.th, %i.sn
  br label %bb.bs

bb.bp:                                            ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit118
  %i.tj = load i16, ptr %.sroa.12.5, align 2, !tbaa !86
  %i.tk = zext i16 %i.tj to i32
  %i.tl = getelementptr inbounds [2 x i8], ptr %.sroa.12.5, i64 %i.sk
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !86
  %i.tn = zext i16 %i.tm to i32
  %i.to = sub nsw i32 %i.sn, %i.tn
  %i.tp = ashr i32 %i.to, 1
  %i.tq = add nsw i32 %i.tp, %i.tk
  br label %bb.bs

bb.bq:                                            ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit118
  %i.tr = load i16, ptr %.sroa.12.5, align 2, !tbaa !86
  %i.ts = zext i16 %i.tr to i32
  %i.tt = add nuw nsw i32 %i.ts, %i.sn
  %i.tu = lshr i32 %i.tt, 1
  br label %bb.bs

bb.br:                                            ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit118
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %_ZN6LibRaw10ljpeg_diffEPt.exit118
  %.080 = phi i32 [ 0, %bb.br ], [ %i.sn, %_ZN6LibRaw10ljpeg_diffEPt.exit118 ], [ %i.sq, %bb.bl ], [ %i.st, %bb.bm ], [ %i.ta, %bb.bn ], [ %i.ti, %bb.bo ], [ %i.tq, %bb.bp ], [ %i.tu, %bb.bq ]
  %i.tv = add nsw i32 %.080, %.011.i116           ; 2 uses
  %i.tw = trunc i32 %i.tv to i16
  store i16 %i.tw, ptr %.sroa.0.7, align 2, !tbaa !86
  %i.tx = and i32 %i.tv, 65535
  %i.ty = load i32, ptr %i.if, align 4, !tbaa !114
  %i.tz = lshr i32 %i.tx, %i.ty
  %.not89 = icmp eq i32 %i.tz, 0
  br i1 %.not89, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.pre = load i32, ptr %i.aq, align 8, !tbaa !117
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ua = phi i32 [ %.pre, %bb.bt ], [ %i.si, %bb.bs ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 2 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.12.5, i64 2 ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %i.ud = sext i32 %i.ua to i64
  %i.ue = icmp slt i64 %indvars.iv.next323, %i.ud
  br i1 %i.ue, label %.lr.ph281, label %._crit_edge282.loopexit, !llvm.loop !138

._crit_edge282.loopexit:                          ; preds = %bb.bu
  %.pre340 = load i32, ptr %i.ao, align 4, !tbaa !116
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %.preheader258
  %i.uf = phi i32 [ %.pre340, %._crit_edge282.loopexit ], [ %i.nu, %.preheader258 ] ; 2 uses
  %i.ug = phi i32 [ %i.ua, %._crit_edge282.loopexit ], [ %i.nv, %.preheader258 ]
  %.sroa.12.6 = phi ptr [ %i.uc, %._crit_edge282.loopexit ], [ %.sroa.12.4, %.preheader258 ]
  %.sroa.0.8 = phi ptr [ %i.ub, %._crit_edge282.loopexit ], [ %.sroa.0.6, %.preheader258 ]
  %i.uh = add nuw nsw i32 %.284283, 1             ; 2 uses
  %i.ui = icmp slt i32 %i.uh, %i.uf
  br i1 %i.ui, label %.preheader258, label %.loopexit, !llvm.loop !139

.loopexit:                                        ; preds = %._crit_edge282, %._crit_edge294, %._crit_edge306, %.preheader255.lr.ph, %.preheader258.lr.ph, %.preheader.lr.ph, %.preheader259, %.preheader256, %.preheader254
  %i.uj = trunc i32 %1 to i1
  %8 = select i1 %i.uj, i32 %i.as, i32 0
  %9 = sext i32 %8 to i64
  %i.uk = getelementptr inbounds [2 x i8], ptr %i.an, i64 %9
  ret ptr %i.uk
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw22lossless_jpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.jhead, align 8              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load <4 x i32>, ptr %i.c, align 4
  %.fr = freeze <4 x i32> %i.d                    ; 3 uses
  %i.e = icmp slt <4 x i32> %.fr, splat (i32 1)
  %i.f = bitcast <4 x i1> %i.e to i4
  %.not113 = icmp eq i4 %i.f, 0
  br i1 %.not113, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.g, align 16, !tbaa !125
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 381738 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !86
  %.not67 = icmp eq i16 %i.i, 0
  br i1 %.not67, label %.lr.ph92, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 381740
  %i.k = load i16, ptr %i.j, align 4, !tbaa !86
  %.not68 = icmp eq i16 %i.k, 0
  br i1 %.not68, label %bb.f, label %.lr.ph92

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.l, align 16, !tbaa !125
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

.lr.ph92:                                         ; preds = %bb.d, %bb.e
  %i.m = extractelement <4 x i32> %.fr, i64 2
  %i.n = extractelement <4 x i32> %.fr, i64 3
  %i.o = mul i32 %i.n, %i.m                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = icmp sgt i32 %i.o, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381740
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 193784
  br i1 %i.r, label %.lr.ph92.split.us, label %.lr.ph92.split

.lr.ph92.split.us:                                ; preds = %.lr.ph92, %._crit_edge.us
  %.04790.us = phi i32 [ %spec.select78.us, %._crit_edge.us ], [ 0, %.lr.ph92 ]
  %.04889.us = phi i32 [ %spec.select77.us, %._crit_edge.us ], [ 0, %.lr.ph92 ]
  %.05588.us = phi i32 [ %i.cb, %._crit_edge.us ], [ 0, %.lr.ph92 ] ; 6 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.g unwind label %.loopexit.split.us

bb.g:                                             ; preds = %.lr.ph92.split.us
  %i.x = invoke noundef ptr @_ZN6LibRaw9ljpeg_rowEiP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.05588.us, ptr noundef nonnull %1)
          to label %bb.h unwind label %.loopexit.split.us

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.p, align 4, !tbaa !128
  %i.z = and i32 %i.y, 1
  %.not70.us = icmp eq i32 %i.z, 0
  br i1 %.not70.us, label %.lr.ph.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = and i32 %.05588.us, 1
  %.not71.us = icmp eq i32 %i.aa, 0
  br i1 %.not71.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i16, ptr %i.q, align 4, !tbaa !140
  %i.ac = zext i16 %i.ab to i32
  %i.ad = lshr i32 %.05588.us, 1
  %i.ae = xor i32 %i.ad, -1
  %i.af = add nsw i32 %i.ac, %i.ae
  br label %.lr.ph.us

bb.k:                                             ; preds = %bb.i
  %i.ag = lshr exact i32 %.05588.us, 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.k, %bb.j, %bb.h
  %.149.us = phi i32 [ %.04889.us, %bb.h ], [ %i.af, %bb.j ], [ %i.ag, %bb.k ]
  %i.ah = mul nuw nsw i32 %.05588.us, %i.o
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.us, %bb.v
  %.086.us = phi ptr [ %i.x, %.lr.ph.us ], [ %i.ai, %bb.v ] ; 2 uses
  %.185.us = phi i32 [ %.04790.us, %.lr.ph.us ], [ %spec.select78.us, %bb.v ]
  %.25084.us = phi i32 [ %.149.us, %.lr.ph.us ], [ %spec.select77.us, %bb.v ]
  %.05483.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ca, %bb.v ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.086.us, i64 2
  %i.aj = load i16, ptr %.086.us, align 2, !tbaa !86
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !86
  %i.an = load i16, ptr %i.h, align 2, !tbaa !86  ; 2 uses
  %.not72.us = icmp eq i16 %i.an, 0
  br i1 %.not72.us, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = add nuw nsw i32 %.05483.us, %i.ah       ; 2 uses
  %i.ap = load i16, ptr %i.t, align 4, !tbaa !86
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = load i16, ptr %i.u, align 8, !tbaa !97
  %i.as = zext i16 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, %i.aq            ; 2 uses
  %i.au = udiv i32 %i.ao, %i.at                   ; 2 uses
  %i.av = zext i16 %i.an to i32                   ; 2 uses
  %.not73.us = icmp slt i32 %i.au, %i.av
  %spec.select.us = select i1 %.not73.us, i64 1, i64 2
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %spec.select.us
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !86 ; 2 uses
  %.not74.us = icmp eq i16 %i.ax, 0
  br i1 %.not74.us, label %.split.us.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %spec.select76.us = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.av) ; 2 uses
  %i.ay = mul nuw nsw i32 %spec.select76.us, %i.at
  %i.az = sub nsw i32 %i.ao, %i.ay                ; 2 uses
  %i.ba = zext i16 %i.ax to i32                   ; 2 uses
  %i.bb = sdiv i32 %i.az, %i.ba
  %i.bc = srem i32 %i.az, %i.ba
  %i.bd = mul nuw nsw i32 %spec.select76.us, %i.aq
  %i.be = add nsw i32 %i.bc, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.351.us = phi i32 [ %i.bb, %bb.n ], [ %.25084.us, %bb.l ] ; 3 uses
  %.2.us = phi i32 [ %i.be, %bb.n ], [ %.185.us, %bb.l ] ; 4 uses
  %i.bf = load i16, ptr %i.v, align 2, !tbaa !98  ; 4 uses
  %i.bg = icmp eq i16 %i.bf, 3984
  br i1 %i.bg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bh = add nsw i32 %.2.us, -2
  %i.bi = icmp slt i32 %.2.us, 2
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = add nsw i32 %.351.us, -1
  %i.bk = add nsw i32 %.2.us, 3982
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.452.us = phi i32 [ %i.bj, %bb.q ], [ %.351.us, %bb.p ], [ %.351.us, %bb.o ] ; 4 uses
  %.3.us = phi i32 [ %i.bk, %bb.q ], [ %i.bh, %bb.p ], [ %.2.us, %bb.o ] ; 3 uses
  %i.bl = load i16, ptr %i.u, align 8, !tbaa !97
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = icmp sgt i32 %.452.us, %i.bm
  br i1 %i.bn, label %.split.us.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = icmp ult i32 %.452.us, %i.bm
  br i1 %i.bo, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bp = zext i16 %i.bf to i32                   ; 2 uses
  %i.bq = icmp ult i32 %.3.us, %i.bp
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.bs = mul nuw nsw i32 %.452.us, %i.bp
  %i.bt = add nuw nsw i32 %i.bs, %.3.us
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bu
  store i16 %i.am, ptr %i.bv, align 2, !tbaa !86
  %.pre = load i16, ptr %i.v, align 2, !tbaa !98
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bw = phi i16 [ %.pre, %bb.u ], [ %i.bf, %bb.t ], [ %i.bf, %bb.s ]
  %i.bx = add nsw i32 %.3.us, 1                   ; 2 uses
  %i.by = zext i16 %i.bw to i32
  %.not75.us = icmp sge i32 %i.bx, %i.by          ; 2 uses
  %i.bz = zext i1 %.not75.us to i32
  %spec.select77.us = add nsw i32 %.452.us, %i.bz ; 2 uses
  %spec.select78.us = select i1 %.not75.us, i32 0, i32 %i.bx ; 2 uses
  %i.ca = add nuw nsw i32 %.05483.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.o
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.l, !llvm.loop !141

._crit_edge.us:                                   ; preds = %bb.v
  %i.cb = add nuw nsw i32 %.05588.us, 1           ; 2 uses
  %i.cc = load i32, ptr %i.b, align 8, !tbaa !115
  %i.cd = icmp slt i32 %i.cb, %i.cc
end_hunk_2
