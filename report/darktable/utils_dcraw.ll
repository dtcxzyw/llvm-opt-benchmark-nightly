Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/utils_dcraw?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN6LibRaw13remove_zeroesEv:bb.a
  %i.bq = or disjoint i32 %i.at, %i.bk
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = lshr i32 %i.s, %i.br
  %i.bt = and i32 %i.bs, 3
  %i.bu = icmp eq i32 %i.bt, %i.am
  br i1 %i.bu, label %bb.i, label %.split.us.split.1

bb.i:                                             ; preds = %bb.h
  %i.bv = add nuw nsw i32 %i.au, %i.bm
  %i.bw = zext nneg i32 %i.bv to i64
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bw
  %i.bx = load i16, ptr %gep, align 2, !tbaa !78  ; 2 uses
  %.not59.us = icmp eq i16 %i.bx, 0
  br i1 %.not59.us, label %.split.us.split.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = add i32 %.04570, 1
  %i.bz = zext i16 %i.bx to i32
  %i.ca = add i32 %.04669, %i.bz
  br label %.split.us.split.1

.split.us.split.1:                                ; preds = %bb.j, %bb.i, %bb.h, %.split.us.split.preheader
  %.248.us = phi i32 [ %i.ca, %bb.j ], [ %.04669, %bb.i ], [ %.04669, %bb.h ], [ %.04669, %.split.us.split.preheader ] ; 4 uses
  %.2.us = phi i32 [ %i.by, %bb.j ], [ %.04570, %bb.i ], [ %.04570, %bb.h ], [ %.04570, %.split.us.split.preheader ] ; 4 uses
  br i1 %i.aw, label %bb.k, label %.split.us.split.2

bb.k:                                             ; preds = %.split.us.split.1
  %i.cb = or disjoint i32 %i.ax, %i.bk
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = lshr i32 %i.s, %i.cc
  %i.ce = and i32 %i.cd, 3
  %i.cf = icmp eq i32 %i.ce, %i.am
  br i1 %i.cf, label %bb.l, label %.split.us.split.2

bb.l:                                             ; preds = %bb.k
  %i.cg = add nuw nsw i32 %i.ay, %i.bm
  %i.ch = zext nneg i32 %i.cg to i64
  %gep100 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep99, i64 %i.ch
  %i.ci = load i16, ptr %gep100, align 2, !tbaa !78 ; 2 uses
  %.not59.us.1 = icmp eq i16 %i.ci, 0
  br i1 %.not59.us.1, label %.split.us.split.2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = add i32 %.2.us, 1
  %i.ck = zext i16 %i.ci to i32
  %i.cl = add i32 %.248.us, %i.ck
  br label %.split.us.split.2

.split.us.split.2:                                ; preds = %bb.m, %bb.l, %bb.k, %.split.us.split.1
  %.248.us.1 = phi i32 [ %i.cl, %bb.m ], [ %.248.us, %bb.l ], [ %.248.us, %bb.k ], [ %.248.us, %.split.us.split.1 ] ; 4 uses
  %.2.us.1 = phi i32 [ %i.cj, %bb.m ], [ %.2.us, %bb.l ], [ %.2.us, %bb.k ], [ %.2.us, %.split.us.split.1 ] ; 4 uses
  br i1 %i.az, label %bb.n, label %.split.us.split.3

bb.n:                                             ; preds = %.split.us.split.2
  %i.cm = or disjoint i32 %i.ai, %i.bk
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = lshr i32 %i.s, %i.cn
  %i.cp = and i32 %i.co, 3
  %i.cq = icmp eq i32 %i.cp, %i.am
  br i1 %i.cq, label %bb.o, label %.split.us.split.3

bb.o:                                             ; preds = %bb.n
  %i.cr = add nuw nsw i32 %i.ae, %i.bm
  %i.cs = zext nneg i32 %i.cr to i64
  %gep102 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep101, i64 %i.cs
  %i.ct = load i16, ptr %gep102, align 2, !tbaa !78 ; 2 uses
  %.not59.us.2 = icmp eq i16 %i.ct, 0
  br i1 %.not59.us.2, label %.split.us.split.3, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = add i32 %.2.us.1, 1
  %i.cv = zext i16 %i.ct to i32
  %i.cw = add i32 %.248.us.1, %i.cv
  br label %.split.us.split.3

.split.us.split.3:                                ; preds = %bb.p, %bb.o, %bb.n, %.split.us.split.2
  %.248.us.2 = phi i32 [ %i.cw, %bb.p ], [ %.248.us.1, %bb.o ], [ %.248.us.1, %bb.n ], [ %.248.us.1, %.split.us.split.2 ] ; 4 uses
  %.2.us.2 = phi i32 [ %i.cu, %bb.p ], [ %.2.us.1, %bb.o ], [ %.2.us.1, %bb.n ], [ %.2.us.1, %.split.us.split.2 ] ; 4 uses
  br i1 %i.bb, label %bb.q, label %.split.us.split.4

bb.q:                                             ; preds = %.split.us.split.3
  %i.cx = or disjoint i32 %i.bc, %i.bk
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = lshr i32 %i.s, %i.cy
  %i.da = and i32 %i.cz, 3
  %i.db = icmp eq i32 %i.da, %i.am
  br i1 %i.db, label %bb.r, label %.split.us.split.4

bb.r:                                             ; preds = %bb.q
  %i.dc = add nuw nsw i32 %i.bd, %i.bm
  %i.dd = zext nneg i32 %i.dc to i64
  %gep104 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep103, i64 %i.dd
  %i.de = load i16, ptr %gep104, align 2, !tbaa !78 ; 2 uses
  %.not59.us.3 = icmp eq i16 %i.de, 0
  br i1 %.not59.us.3, label %.split.us.split.4, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = add i32 %.2.us.2, 1
  %i.dg = zext i16 %i.de to i32
  %i.dh = add i32 %.248.us.2, %i.dg
  br label %.split.us.split.4

.split.us.split.4:                                ; preds = %bb.s, %bb.r, %bb.q, %.split.us.split.3
  %.248.us.3 = phi i32 [ %i.dh, %bb.s ], [ %.248.us.2, %bb.r ], [ %.248.us.2, %bb.q ], [ %.248.us.2, %.split.us.split.3 ] ; 4 uses
  %.2.us.3 = phi i32 [ %i.df, %bb.s ], [ %.2.us.2, %bb.r ], [ %.2.us.2, %bb.q ], [ %.2.us.2, %.split.us.split.3 ] ; 4 uses
  br i1 %i.bf, label %bb.t, label %.split65.us

bb.t:                                             ; preds = %.split.us.split.4
  %i.di = or disjoint i32 %i.bg, %i.bk
  %i.dj = shl nuw nsw i32 %i.di, 1
  %i.dk = lshr i32 %i.s, %i.dj
  %i.dl = and i32 %i.dk, 3
  %i.dm = icmp eq i32 %i.dl, %i.am
  br i1 %i.dm, label %bb.u, label %.split65.us

bb.u:                                             ; preds = %bb.t
  %i.dn = add nuw nsw i32 %i.bh, %i.bm
  %i.do = zext nneg i32 %i.dn to i64
  %gep106 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep105, i64 %i.do
  %i.dp = load i16, ptr %gep106, align 2, !tbaa !78 ; 2 uses
  %.not59.us.4 = icmp eq i16 %i.dp, 0
  br i1 %.not59.us.4, label %.split65.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = add i32 %.2.us.3, 1
  %i.dr = zext i16 %i.dp to i32
  %i.ds = add i32 %.248.us.3, %i.dr
  br label %.split65.us

.split65.us:                                      ; preds = %.split.us.split.4, %bb.t, %bb.u, %bb.v, %.split.us, %bb.g
  %.us-phi = phi i32 [ %.04669, %bb.g ], [ %.04669, %.split.us ], [ %i.ds, %bb.v ], [ %.248.us.3, %bb.u ], [ %.248.us.3, %bb.t ], [ %.248.us.3, %.split.us.split.4 ] ; 2 uses
  %.us-phi66 = phi i32 [ %.04570, %bb.g ], [ %.04570, %.split.us ], [ %i.dq, %bb.v ], [ %.2.us.3, %bb.u ], [ %.2.us.3, %bb.t ], [ %.2.us.3, %.split.us.split.4 ] ; 3 uses
  %i.dt = add nsw i32 %.04471, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.dt, %indvars.iv79
  br i1 %exitcond.not, label %bb.w, label %bb.g, !llvm.loop !117

bb.w:                                             ; preds = %.split65.us
  %.not57 = icmp eq i32 %.us-phi66, 0
  br i1 %.not57, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = udiv i32 %.us-phi, %.us-phi66
  %i.dv = trunc i32 %i.du to i16
  store i16 %i.dv, ptr %i.ao, align 2, !tbaa !78
  %.pre81 = load i16, ptr %i.j, align 2, !tbaa !88
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %bb.x, %bb.w
  %i.dw = phi i16 [ %i.w, %bb.e ], [ %.pre81, %bb.x ], [ %i.w, %bb.w ] ; 4 uses
  %i.dx = add nuw nsw i32 %.04972, 1              ; 2 uses
  %i.dy = zext i16 %i.dw to i32                   ; 2 uses
  %i.dz = icmp samesign ult i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !118

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre82 = load i16, ptr %i.h, align 4, !tbaa !87
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ea = phi i16 [ %.pre82, %._crit_edge.loopexit ], [ %i.n, %.preheader ] ; 2 uses
  %i.eb = phi i16 [ %i.dw, %._crit_edge.loopexit ], [ %i.o, %.preheader ]
  %i.ec = phi i16 [ %i.dw, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.ed = add nuw nsw i32 %.05073, 1              ; 2 uses
  %i.ee = zext i16 %i.ea to i32
  %i.ef = icmp samesign ult i32 %i.ed, %i.ee
  %indvars.iv.next80 = add nuw nsw i32 %indvars.iv79, 1
  br i1 %i.ef, label %.preheader, label %._crit_edge74, !llvm.loop !119

._crit_edge74:                                    ; preds = %._crit_edge, %bb.d
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !120 ; 2 uses
  %.not54 = icmp eq ptr %i.eg, null
  br i1 %.not54, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge74
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !121
  %i.ej = tail call noundef i32 %i.eg(ptr noundef %i.ei, i32 noundef 32, i32 noundef 1, i32 noundef 2)
  %.not55 = icmp eq i32 %i.ej, 0
  br i1 %.not55, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = tail call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.ek, align 16, !tbaa !86
  tail call void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #20
  unreachable

bb.ab:                                            ; preds = %bb.z, %._crit_edge74
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw18crop_masked_pixelsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) initializes((153876, 153908)) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83   ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.thread70.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack = load i64, ptr %i.f, align 8, !tbaa !128 ; 10 uses
  %.elt41 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack42 = load i64, ptr %.elt41, align 8, !tbaa !128
  %i.g = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw14canon_load_rawEv to i64)
  %i.h = icmp eq i64 %.unpack42, 0                ; 6 uses
  %i.i = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw22lossless_jpeg_load_rawEv to i64)
  %i.j = or i1 %i.g, %i.i
  %i.k = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw10crxLoadRawEv to i64)
  %or.cond72 = or i1 %i.k, %i.j
  %or.cond62 = and i1 %i.h, %or.cond72
  br i1 %or.cond62, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !83
  %i.n = add nsw i32 %i.m, 2                      ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.n, ptr %i.o, align 8, !tbaa !83
  %i.p = add nsw i32 %i.d, -2
  br label %.tail.thread

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw18canon_600_load_rawEv to i64)
  %i.r = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw13sony_load_rawEv to i64)
  %i.s = or i1 %i.q, %i.r
  %or.cond64 = and i1 %i.s, %i.h
  br i1 %or.cond64, label %.tail.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw18eight_bit_load_rawEv to i64)
  %i.u = and i1 %i.t, %i.h
  br i1 %i.u, label %sub_0, label %bb.f

sub_0:                                            ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.w = load i8, ptr %i.v, align 4
  %.not86.a = icmp eq i8 %i.w, 68
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 269
  %1 = load i8, ptr %i.x, align 1
  %.not87 = icmp eq i8 %1, 67
  %or.cond = select i1 %.not86.a, i1 %.not87, i1 false
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.y = load i8, ptr %2, align 2
  %i.z = icmp eq i8 %i.y, 50
  %or.cond107 = select i1 %or.cond, i1 %i.z, i1 false
  br i1 %or.cond107, label %.thread70.thread, label %.tail.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw18kodak_262_load_rawEv to i64)
  %i.ab = and i1 %i.aa, %i.h
  br i1 %i.ab, label %.tail.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.ad = and i1 %i.ac, %i.h
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !129
  %i.ag = and i32 %i.af, 32
  %.not46 = icmp eq i32 %i.ag, 0
  br i1 %.not46, label %.thread70.thread, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %bb.d, %bb.f, %bb.h, %bb.c
  %3 = phi i32 [ %i.d, %bb.d ], [ %i.d, %sub_0 ], [ %i.d, %bb.f ], [ %i.d, %bb.h ], [ %i.p, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !74
  %i.aj = zext i16 %i.ai to i32                   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !83
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i16, ptr %i.al, align 4, !tbaa !87
  %i.an = zext i16 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, %i.aj            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !75
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = add nsw i32 %3, %i.at
  store i32 %i.au, ptr %i.c, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !88
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !83
  %i.bb = add nsw i32 %i.ay, %i.ba
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !130
  %i.be = zext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !83
  %i.bh = add nsw i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %.tail.thread, %bb.g
  %4 = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw14nokia_load_rawEv to i64)
  %5 = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw17broadcom_load_rawEv to i64)
  %6 = or i1 %4, %5
  %or.cond113 = and i1 %6, %i.h
  br i1 %or.cond113, label %.thread70.thread.sink.split, label %.thread70.thread

.thread70.thread.sink.split:                      ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !74
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !88
  %i.bo = zext i16 %i.bn to i32
  store i32 %i.bo, ptr %i.c, align 8, !tbaa !83
  br label %.thread70.thread

.thread70.thread:                                 ; preds = %bb.i, %.thread70.thread.sink.split, %sub_0, %bb.h, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 153876 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false)
  %i.bq = load i16, ptr %i.a, align 8, !tbaa !131
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load i16, ptr %i.bs, align 2
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = load i32, ptr %i.bt, align 8
  %i.bz = load ptr, ptr %i.bu, align 8
  %i.ca = load i32, ptr %i.bv, align 8
  br label %bb.j

bb.j:                                             ; preds = %.thread70.thread, %._crit_edge81
  %indvars.iv89 = phi i64 [ 0, %.thread70.thread ], [ %indvars.iv.next90, %._crit_edge81 ] ; 2 uses
  %.084 = phi i32 [ 0, %.thread70.thread ], [ %.1.lcssa, %._crit_edge81 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv89 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !83
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 0) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !83 ; 2 uses
  %.76 = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.br)
  %i.cf = icmp slt i32 %spec.select, %.76
  br i1 %i.cf, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 12 ; 2 uses
  %.pre = load i32, ptr %i.ch, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.ci = phi i32 [ %i.ce, %.lr.ph80 ], [ %i.dm, %._crit_edge ]
  %i.cj = phi i32 [ %.pre, %.lr.ph80 ], [ %i.dn, %._crit_edge ] ; 2 uses
  %.178 = phi i32 [ %.084, %.lr.ph80 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.03277 = phi i32 [ %spec.select, %.lr.ph80 ], [ %i.do, %._crit_edge ] ; 3 uses
  %i.ck = load i32, ptr %i.cg, align 8, !tbaa !83
  %spec.select65 = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 0) ; 2 uses
  %.6673 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.bx)
  %i.cl = icmp slt i32 %spec.select65, %.6673
  br i1 %i.cl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.cm = shl nuw nsw i32 %.03277, 1
  %i.cn = and i32 %i.cm, 14
  %i.co = mul i32 %i.ca, %.03277
  %i.cp = lshr i32 %i.co, 1
  %i.cq = zext nneg i32 %spec.select65 to i64
  %i.cr = zext nneg i32 %i.cp to i64
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cr
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.cq, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.275 = phi i32 [ %.178, %.lr.ph ], [ %i.di, %bb.l ]
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ct = and i32 %i.cs, 1
  %i.cu = or disjoint i32 %i.ct, %i.cn
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = lshr i32 %i.by, %i.cv
  %i.cx = and i32 %i.cw, 3
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cy = load i16, ptr %gep, align 2, !tbaa !78  ; 2 uses
  %i.cz = zext i16 %i.cy to i32
  %i.da = zext nneg i32 %i.cx to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.da ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !83
  %i.dd = add i32 %i.dc, %i.cz
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !83
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !83
  %.not59 = icmp eq i16 %i.cy, 0
  %i.dh = zext i1 %.not59 to i32
  %i.di = add i32 %.275, %i.dh                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.ch, align 8, !tbaa !83 ; 2 uses
  %.66 = tail call i32 @llvm.smin.i32(i32 %i.dj, i32 %i.bx)
  %i.dk = trunc nuw i64 %indvars.iv.next to i32
  %i.dl = icmp sgt i32 %.66, %i.dk
  br i1 %i.dl, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !125

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre96 = load i32, ptr %i.cd, align 4, !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.dm = phi i32 [ %i.ci, %bb.k ], [ %.pre96, %._crit_edge.loopexit ] ; 2 uses
  %i.dn = phi i32 [ %i.cj, %bb.k ], [ %i.dj, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.178, %bb.k ], [ %i.di, %._crit_edge.loopexit ] ; 2 uses
  %i.do = add nuw nsw i32 %.03277, 1              ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.br)
  %i.dp = icmp slt i32 %i.do, %.
  br i1 %i.dp, label %bb.k, label %._crit_edge81, !llvm.loop !126

._crit_edge81:                                    ; preds = %._crit_edge, %bb.j
  %.1.lcssa = phi i32 [ %.084, %bb.j ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next90, 8
  br i1 %exitcond.not, label %bb.m, label %bb.j, !llvm.loop !127

bb.m:                                             ; preds = %._crit_edge81
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack53 = load i64, ptr %i.dq, align 8, !tbaa !128
  %.elt54 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack55 = load i64, ptr %.elt54, align 8, !tbaa !128
  %i.dr = icmp eq i64 %.unpack53, ptrtoint (ptr @_ZN6LibRaw18canon_600_load_rawEv to i64)
  %i.ds = icmp eq i64 %.unpack55, 0
  %i.dt = and i1 %i.dr, %i.ds
  br i1 %i.dt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !88
  %i.dw = load i16, ptr %i.bs, align 2, !tbaa !130
  %i.dx = icmp ult i16 %i.dv, %i.dw
  br i1 %i.dx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dy = load <4 x i32>, ptr %i.bp, align 4, !tbaa !83
  %i.dz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 153892
  %i.eb = load <4 x i32>, ptr %i.ea, align 4, !tbaa !83
  %i.ec = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eb)
  %spec.select67 = tail call i32 @llvm.umax.i32(i32 %i.ec, i32 1)
  %i.ed = udiv i32 %i.dz, %spec.select67
  %i.ee = add i32 %i.ed, -4
  br label %.sink.split

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 153892
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !83 ; 2 uses
  %i.eh = icmp ult i32 %.1.lcssa, %i.eg
  br i1 %i.eh, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 153896
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !83 ; 2 uses
  %.not56 = icmp eq i32 %i.ej, 0
  br i1 %.not56, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 153900
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !83 ; 2 uses
  %.not57 = icmp eq i32 %i.el, 0
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 153904
  %i.en = load i32, ptr %i.em, align 8, !tbaa !83 ; 2 uses
  %.not58 = icmp eq i32 %i.en, 0
  br i1 %.not58, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.ep = load <4 x i32>, ptr %i.bp, align 4, !tbaa !83
  %i.eq = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %i.er = insertelement <4 x i32> %i.eq, i32 %i.ej, i64 1
  %i.es = insertelement <4 x i32> %i.er, i32 %i.el, i64 2
  %i.et = insertelement <4 x i32> %i.es, i32 %i.en, i64 3
  %i.eu = udiv <4 x i32> %i.ep, %i.et
  store <4 x i32> %i.eu, ptr %i.eo, align 8, !tbaa !83
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 136696
  store i32 0, ptr %i.ev, align 8, !tbaa !83
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.ew, align 4, !tbaa !83
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.ex, align 8, !tbaa !83
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %.preheader
  %.sink = phi i32 [ 0, %.preheader ], [ %i.ee, %bb.o ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 %.sink, ptr %i.ey, align 8, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.p, %bb.q, %bb.r, %bb.s
  ret void
}

declare void @_ZN6LibRaw14canon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw22lossless_jpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw10crxLoadRawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw18canon_600_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw13sony_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw18eight_bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw18kodak_262_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw15packed_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13

declare void @_ZN6LibRaw14nokia_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #13
end_hunk_0
