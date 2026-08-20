inline.NumInlined: 46
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4AAHDC2ER6LibRaw:bb.a
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !93
  br label %.split79.us

.split79.us:                                      ; preds = %.split79.us.loopexit88, %_ZN6LibRaw5COLOREii.exit.thread.us.preheader
  %.pre = phi ptr [ %.pre.pre, %.split79.us.loopexit88 ], [ %.pre118, %_ZN6LibRaw5COLOREii.exit.thread.us.preheader ] ; 3 uses
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split79.us
  %i.fb = load i32, ptr %i.k, align 4, !tbaa !79
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !87
  %i.fe = mul nuw nsw i64 %indvars.iv115, %i.ek
  %i.ff = mul i32 %i.fb, %indvars.iv107
  %i.fg = add i32 %i.ff, 4
  %i.fh = sext i32 %i.fg to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  br label %bb.j

.split:                                           ; preds = %bb.c, %_ZN6LibRaw5COLOREii.exit.thread
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %_ZN6LibRaw5COLOREii.exit.thread ], [ 0, %bb.c ] ; 5 uses
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !93  ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 544
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !95 ; 4 uses
  %.not.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit.thread, label %bb.d

bb.d:                                             ; preds = %.split
  %i.fl = icmp ult i32 %i.fk, 1000
  br i1 %i.fl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fm = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.fn = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.fi, i32 noundef %i.eu, i32 noundef %i.fm)
  br label %_ZN6LibRaw5COLOREii.exit

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 381670
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !97 ; 2 uses
  %.not8.i = icmp eq i16 %i.fp, 0
  br i1 %.not8.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 381828
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !98
  %.not.i.i = icmp eq i32 %i.fr, 0
  %i.fs = trunc nuw nsw i64 %indvars.iv97 to i32  ; 4 uses
  br i1 %.not.i.i, label %bb.h, label %_ZN6LibRaw3FCFEii.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ft = lshr i32 %i.fs, 1
  br label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.g, %bb.h
  %.sink124 = phi i32 [ %i.ft, %bb.h ], [ %i.fs, %bb.g ]
  %.sink = phi i32 [ %i.eu, %bb.h ], [ %i.ev, %bb.g ]
  %.sink.i.i = phi i32 [ %i.fs, %bb.h ], [ %i.eu, %bb.g ]
  %.sink11.i.i = phi i32 [ %i.eu, %bb.h ], [ %i.fs, %bb.g ]
  %i.fu = xor i32 %.sink124, -1
  %i.fv = add nsw i32 %.sink, %i.fu
  %i.fw = zext i16 %i.fp to i32
  %i.fx = add i32 %i.fv, %i.fw
  %i.fy = add nuw nsw i32 %.sink.i.i, 1
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = add nuw i32 %i.fz, %.sink11.i.i
  %i.gb = shl i32 %i.fx, 1
  %i.gc = and i32 %i.gb, 14
  %i.gd = and i32 %i.ga, 1
  %i.ge = or disjoint i32 %i.gd, %i.gc
  %i.gf = shl nuw nsw i32 %i.ge, 1
  %i.gg = lshr i32 %i.fk, %i.gf
  %i.gh = and i32 %i.gg, 3
  br label %_ZN6LibRaw5COLOREii.exit

bb.i:                                             ; preds = %bb.f
  %i.gi = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.gj = and i32 %i.gi, 1
  %i.gk = or disjoint i32 %i.gj, %i.ex
  %i.gl = shl nuw nsw i32 %i.gk, 1
  %i.gm = lshr i32 %i.fk, %i.gl
  %i.gn = and i32 %i.gm, 3
  br label %_ZN6LibRaw5COLOREii.exit

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.e, %_ZN6LibRaw3FCFEii.exit.i, %bb.i
  %.0.i = phi i32 [ %i.fn, %bb.e ], [ %i.gn, %bb.i ], [ %i.gh, %_ZN6LibRaw3FCFEii.exit.i ]
  %.0.i.fr = freeze i32 %.0.i                     ; 2 uses
  %i.go = icmp eq i32 %.0.i.fr, 3
  %spec.select69 = select i1 %i.go, i32 1, i32 %.0.i.fr
  br label %_ZN6LibRaw5COLOREii.exit.thread

_ZN6LibRaw5COLOREii.exit.thread:                  ; preds = %_ZN6LibRaw5COLOREii.exit, %.split
  %i.gp = phi i32 [ 6, %.split ], [ %spec.select69, %_ZN6LibRaw5COLOREii.exit ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv97
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !96
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, 48
  br i1 %exitcond100.not, label %.split79.us.loopexit88, label %.split, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.p, %.split79.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.gs = load i16, ptr %i.gr, align 4, !tbaa !14
  %i.gt = zext i16 %i.gs to i64
  %i.gu = icmp samesign ult i64 %indvars.iv.next116, %i.gt
  %indvars.iv.next108 = add nuw nsw i32 %indvars.iv107, 1
  br i1 %i.gu, label %bb.c, label %._crit_edge85, !llvm.loop !101

bb.j:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv109 = phi i64 [ %i.fh, %.lr.ph ], [ %indvars.iv.next110, %bb.p ] ; 3 uses
  %indvars.iv105 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next106, %bb.p ] ; 3 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.gw = urem i32 %i.gv, 48
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !96
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv105
  %i.ha = sext i32 %i.gz to i64                   ; 5 uses
  %i.hb = getelementptr inbounds [2 x i8], ptr %gep, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !86 ; 7 uses
  %.not65 = icmp eq i16 %i.hc, 0
  br i1 %.not65, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ha ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !86
  %i.hf = icmp ult i16 %i.he, %i.hc
  br i1 %i.hf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ha ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !86
  %i.hi = icmp ugt i16 %i.hh, %i.hc
  br i1 %i.hi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 %i.hc, ptr %i.hg, align 2, !tbaa !86
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hj = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.hk = getelementptr inbounds [6 x i8], ptr %i.hj, i64 %indvars.iv109
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.hk, i64 %i.ha
  store i16 %i.hc, ptr %i.hl, align 2, !tbaa !86
  %i.hm = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.hn = getelementptr inbounds [6 x i8], ptr %i.hm, i64 %indvars.iv109
  %i.ho = getelementptr inbounds [2 x i8], ptr %i.hn, i64 %i.ha
  store i16 %i.hc, ptr %i.ho, align 2, !tbaa !86
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next106, %i.ek
  br i1 %exitcond114.not, label %._crit_edge, label %bb.j, !llvm.loop !102
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN4AAHD9hide_hotsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !103, !align !104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !78
  %i.e = zext i16 %i.d to i32                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.g = load i16, ptr %i.f, align 4, !tbaa !14
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %._crit_edge364, label %.lr.ph363

.lr.ph363:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge364:                                   ; preds = %._crit_edge360, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph363, %._crit_edge360
  %indvars.iv = phi i32 [ 4, %.lr.ph363 ], [ %indvars.iv.next, %._crit_edge360 ] ; 3 uses
  %i.l = phi ptr [ %i.b, %.lr.ph363 ], [ %i.kn, %._crit_edge360 ] ; 5 uses
  %.0322361 = phi i32 [ 0, %.lr.ph363 ], [ %i.km, %._crit_edge360 ] ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 544
  %i.n = load i32, ptr %i.m, align 8, !tbaa !95   ; 4 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit340, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %i.n, 1000
  br i1 %i.o, label %_ZN6LibRaw5COLOREii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 381670
  %i.q = load i16, ptr %i.p, align 2, !tbaa !97   ; 2 uses
  %.not8.i = icmp eq i16 %i.q, 0
  br i1 %.not8.i, label %bb.e, label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 381828
  %i.s = load i32, ptr %i.r, align 4, !tbaa !98
  %.not.i.i = icmp ne i32 %i.s, 0                 ; 2 uses
  %i.t = zext i1 %.not.i.i to i32
  %.sink13.i.i.v = lshr i32 %.0322361, %i.t
  %i.u = zext i16 %i.q to i32
  %.sink13.i.i = add nsw i32 %i.u, -1
  %i.v = add nuw nsw i32 %.sink13.i.i, %.sink13.i.i.v
  %i.w = add nuw nsw i32 %.0322361, 1
  %i.x = lshr i32 %i.w, 1
  %i.y = select i1 %.not.i.i, i32 %i.x, i32 %.0322361
  %i.z = shl nuw nsw i32 %i.v, 1
  %i.aa = and i32 %i.z, 14
  %i.ab = and i32 %i.y, 1
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = shl nuw nsw i32 %i.ac, 1
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ae = shl nuw nsw i32 %.0322361, 2
  %i.af = and i32 %i.ae, 28
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZN6LibRaw3FCFEii.exit.i
  %.sink = phi i32 [ %i.af, %bb.e ], [ %i.ad, %_ZN6LibRaw3FCFEii.exit.i ]
  %i.ag = lshr i32 %i.n, %.sink                   ; 2 uses
  %i.ah = and i32 %i.ag, 1
  br label %bb.h

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.c
  %i.ai = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.l, i32 noundef %.0322361, i32 noundef 0) ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !93  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 544
  %.pre378 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !95 ; 3 uses
  %i.aj = and i32 %i.ai, 1                        ; 4 uses
  %.not.i332 = icmp eq i32 %.pre378, 0
  br i1 %.not.i332, label %_ZN6LibRaw5COLOREii.exit340, label %bb.f

bb.f:                                             ; preds = %_ZN6LibRaw5COLOREii.exit
  %i.ak = icmp ult i32 %.pre378, 1000
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %.pre, i32 noundef %.0322361, i32 noundef %i.aj)
  br label %_ZN6LibRaw5COLOREii.exit340

bb.h:                                             ; preds = %.thread, %bb.f
  %i.am = phi i32 [ %i.n, %.thread ], [ %.pre378, %bb.f ] ; 2 uses
  %i.an = phi ptr [ %i.l, %.thread ], [ %.pre, %bb.f ] ; 2 uses
  %.0.i403408 = phi i32 [ %i.ag, %.thread ], [ %i.ai, %bb.f ]
  %i.ao = phi i32 [ %i.ah, %.thread ], [ %i.aj, %bb.f ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 381670
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !97 ; 2 uses
  %.not8.i333 = icmp eq i16 %i.aq, 0
  br i1 %.not8.i333, label %bb.i, label %_ZN6LibRaw3FCFEii.exit.i335

_ZN6LibRaw3FCFEii.exit.i335:                      ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 381828
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !98
  %.not.i.i334 = icmp eq i32 %i.as, 0             ; 3 uses
  %i.at = xor i32 %i.ao, -1
  %i.au = lshr i32 %.0322361, 1
  %i.av = add nsw i32 %i.au, %i.at
  %.sink13.i.i336 = select i1 %.not.i.i334, i32 -1, i32 %i.av
  %.sink.i.i337 = select i1 %.not.i.i334, i32 %i.ao, i32 %.0322361
  %.sink11.i.i338 = select i1 %.not.i.i334, i32 %.0322361, i32 %.0.i403408
  %i.aw = zext i16 %i.aq to i32
  %i.ax = add nsw i32 %.sink13.i.i336, %i.aw
  %i.ay = add nuw nsw i32 %.sink.i.i337, 1
  %i.az = lshr i32 %i.ay, 1
  %i.ba = add i32 %i.az, %.sink11.i.i338
  %i.bb = shl nsw i32 %i.ax, 1
  %i.bc = and i32 %i.bb, 14
  %i.bd = and i32 %i.ba, 1
  %i.be = or disjoint i32 %i.bd, %i.bc
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = lshr i32 %i.am, %i.bf
  %i.bh = and i32 %i.bg, 3
  br label %_ZN6LibRaw5COLOREii.exit340

bb.i:                                             ; preds = %bb.h
  %i.bi = shl nuw nsw i32 %.0322361, 1
  %i.bj = and i32 %i.bi, 14
  %i.bk = or disjoint i32 %i.ao, %i.bj
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = lshr i32 %i.am, %i.bl
  %i.bn = and i32 %i.bm, 3
  br label %_ZN6LibRaw5COLOREii.exit340

_ZN6LibRaw5COLOREii.exit340:                      ; preds = %bb.b, %_ZN6LibRaw5COLOREii.exit, %bb.g, %_ZN6LibRaw3FCFEii.exit.i335, %bb.i
  %i.bo = phi i32 [ %i.aj, %bb.g ], [ %i.aj, %_ZN6LibRaw5COLOREii.exit ], [ %i.ao, %_ZN6LibRaw3FCFEii.exit.i335 ], [ %i.ao, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %.0.i339 = phi i32 [ %i.al, %bb.g ], [ 6, %_ZN6LibRaw5COLOREii.exit ], [ %i.bh, %_ZN6LibRaw3FCFEii.exit.i335 ], [ %i.bn, %bb.i ], [ 6, %bb.b ] ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, %i.e
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6LibRaw5COLOREii.exit340
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !79  ; 9 uses
  %i.br = sext i32 %.0.i339 to i64                ; 14 uses
  %i.bs = mul i32 %i.bq, %indvars.iv
  %i.bt = add i32 %i.bs, 4
  %i.bu = add i32 %i.bt, %i.bo
  %i.bv = sext i32 %i.bu to i64
  br label %bb.j

._crit_edge:                                      ; preds = %bb.ab, %_ZN6LibRaw5COLOREii.exit340
  %i.bw = xor i32 %i.bo, 1                        ; 2 uses
  %i.bx = icmp samesign ult i32 %i.bw, %i.e
  br i1 %i.bx, label %.lr.ph359, label %._crit_edge360

.lr.ph359:                                        ; preds = %._crit_edge
  %i.by = load i32, ptr %i.h, align 4, !tbaa !79  ; 9 uses
  %i.bz = sext i32 %.0.i339 to i64                ; 6 uses
  %i.ca = xor i32 %.0.i339, 2
  %i.cb = sext i32 %i.ca to i64                   ; 6 uses
  %i.cc = mul i32 %i.by, %indvars.iv
  %i.cd = add i32 %i.cc, 5
  %i.ce = sub i32 %i.cd, %i.bo
  %i.cf = sext i32 %i.ce to i64
  br label %bb.ac

bb.j:                                             ; preds = %.lr.ph, %bb.ab
  %i.cg = phi i32 [ %i.bq, %.lr.ph ], [ %i.kc, %bb.ab ] ; 17 uses
  %i.ch = phi i32 [ %i.bq, %.lr.ph ], [ %i.kd, %bb.ab ] ; 9 uses
  %i.ci = phi i32 [ %i.bq, %.lr.ph ], [ %i.ke, %bb.ab ] ; 9 uses
  %i.cj = phi i32 [ %i.bq, %.lr.ph ], [ %i.kf, %bb.ab ] ; 9 uses
  %i.ck = phi i32 [ %i.bq, %.lr.ph ], [ %i.kg, %bb.ab ] ; 9 uses
  %i.cl = phi i32 [ %i.bq, %.lr.ph ], [ %i.kh, %bb.ab ] ; 9 uses
  %i.cm = phi i32 [ %i.bq, %.lr.ph ], [ %i.ki, %bb.ab ] ; 17 uses
  %i.cn = phi i32 [ %i.bq, %.lr.ph ], [ %i.kj, %bb.ab ] ; 5 uses
  %indvars.iv370 = phi i64 [ %i.bv, %.lr.ph ], [ %indvars.iv.next371, %bb.ab ] ; 4 uses
  %.0319351 = phi i32 [ %i.bo, %.lr.ph ], [ %i.kk, %bb.ab ]
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.cp = getelementptr inbounds [6 x i8], ptr %i.co, i64 %indvars.iv370 ; 25 uses
  %i.cq = getelementptr [2 x i8], ptr %i.cp, i64 %i.br ; 8 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !86 ; 17 uses
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.br ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !86 ; 3 uses
  %i.cw = icmp ugt i16 %i.cr, %i.cv
  br i1 %i.cw, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 -12
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.br
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !86 ; 2 uses
  %i.da = icmp ugt i16 %i.cr, %i.cz
  br i1 %i.da, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.db = sub nsw i32 0, %i.cn                    ; 2 uses
  %i.dc = shl nsw i32 %i.db, 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [6 x i8], ptr %i.cp, i64 %i.dd
  %i.df = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.br
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !86
  %i.dh = icmp ugt i16 %i.cr, %i.dg
  br i1 %i.dh, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.di = shl nsw i32 %i.cn, 1
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [6 x i8], ptr %i.cp, i64 %i.dj
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.br
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !86
  %i.dn = icmp ugt i16 %i.cr, %i.dm
  br i1 %i.dn, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !86
  %i.dq = icmp ugt i16 %i.cr, %i.dp
  br i1 %i.dq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.dr = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !86
  %i.dt = icmp ugt i16 %i.cr, %i.ds
  br i1 %i.dt, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.du = sext i32 %i.db to i64
  %i.dv = getelementptr inbounds [6 x i8], ptr %i.cp, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !86
  %i.dy = icmp ugt i16 %i.cr, %i.dx
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dz = sext i32 %i.cn to i64
  %i.ea = getelementptr inbounds [6 x i8], ptr %i.cp, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !86
  %i.ed = icmp ugt i16 %i.cr, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ee = icmp ult i16 %i.cr, %i.cv
  br i1 %i.ee, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds i8, ptr %i.cp, i64 -12
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.br
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !86 ; 2 uses
  %i.ei = icmp ult i16 %i.cr, %i.eh
  br i1 %i.ei, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.ej = sub nsw i32 0, %i.cm                    ; 2 uses
  %i.ek = shl nsw i32 %i.ej, 1
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [6 x i8], ptr %i.cp, i64 %i.el
  %i.en = getelementptr inbounds [2 x i8], ptr %i.em, i64 %i.br
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !86
  %i.ep = icmp ult i16 %i.cr, %i.eo
  br i1 %i.ep, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.eq = shl nsw i32 %i.cm, 1
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [6 x i8], ptr %i.cp, i64 %i.er
  %i.et = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.br
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !86
  %i.ev = icmp ult i16 %i.cr, %i.eu
  br i1 %i.ev, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !86
  %i.ey = icmp ult i16 %i.cr, %i.ex
  br i1 %i.ey, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ez = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !86
  %i.fb = icmp ult i16 %i.cr, %i.fa
  br i1 %i.fb, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.fc = sext i32 %i.ej to i64
  %i.fd = getelementptr inbounds [6 x i8], ptr %i.cp, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !86
  %i.fg = icmp ult i16 %i.cr, %i.ff
  br i1 %i.fg, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fh = sext i32 %i.cm to i64
  %i.fi = getelementptr inbounds [6 x i8], ptr %i.cp, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !86
  %i.fl = icmp ult i16 %i.cr, %i.fk
  br i1 %i.fl, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.q, %bb.y
  %i.fm = phi i16 [ %i.eh, %bb.y ], [ %i.cz, %bb.q ]
  %i.fn = shl i32 %i.cl, 1
  %i.fo = sub nuw nsw i32 -2, %i.fn
  %i.fp = sext i32 %i.fo to i64
  %gep = getelementptr [6 x i8], ptr %i.cq, i64 %i.fp
  %i.fq = load i16, ptr %gep, align 2, !tbaa !86
  %i.fr = zext i16 %i.fq to i32
  %i.fs = mul nsw i32 %i.ck, -2
  %i.ft = sext i32 %i.fs to i64
end_hunk_0
begin_hunk_1_@_ZN4AAHD14make_ahd_glineEi:bb.a
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !86
  %i.da = zext i16 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.cr, 1
  %i.dc = add nuw nsw i32 %i.db, %i.co
  %i.dd = add nuw nsw i32 %i.dc, %i.da
  %i.de = sub nsw i32 %i.ck, %i.dd
  %i.df = add nsw i32 %i.de, %i.cw
  %i.dg = sdiv i32 %i.df, 4
  %i.dh = add nsw i32 %i.dg, %i.cr                ; 5 uses
  %..1 = tail call i16 @llvm.umin.i16(i16 %i.ci, i16 %i.cu)
  %i.di = zext i16 %..1 to i32                    ; 2 uses
  %i.dj = tail call i16 @llvm.umax.i16(i16 %i.ci, i16 %i.cu)
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = lshr i32 %i.di, 3
  %i.dm = sub nsw i32 %i.di, %i.dl                ; 3 uses
  %i.dn = lshr i32 %i.dk, 3
  %i.do = add nuw nsw i32 %i.dn, %i.dk            ; 3 uses
  %i.dp = icmp slt i32 %i.dh, %i.dm
  br i1 %i.dp, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = icmp sgt i32 %i.dh, %i.do
  br i1 %i.dq, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dr = sub nsw i32 %i.dh, %i.do
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dr to float
  %i.dt = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ds)
  %i.du = fptosi float %i.dt to i32
  %i.dv = add nsw i32 %i.do, %i.du
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.dw = sub nsw i32 %i.dm, %i.dh
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.dw to float
  %i.dy = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.dx)
  %i.dz = fptosi float %i.dy to i32
  %i.ea = sub nsw i32 %i.dm, %i.dz
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0.1 = phi i32 [ %i.ea, %bb.l ], [ %i.dv, %bb.k ], [ %i.dh, %bb.j ] ; 2 uses
  %i.eb = load i16, ptr %i.bn, align 2, !tbaa !86 ; 2 uses
  %i.ec = zext i16 %i.eb to i32
  %i.ed = icmp sgt i32 %.0.1, %i.ec
  br i1 %i.ed, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load i16, ptr %i.bo, align 2, !tbaa !86
  %i.ef = zext i16 %i.ee to i32
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %.0.1, i32 %i.ef)
  %i.eg = trunc nuw i32 %spec.select.1 to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.1 = phi i16 [ %i.eg, %bb.n ], [ %i.eb, %bb.m ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 %.1.1, ptr %i.eh, align 2, !tbaa !86
  %i.ei = add nuw nsw i32 %.06790.1, 2            ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 2
  %i.ej = icmp samesign ult i32 %i.ei, %i.e
  br i1 %i.ej, label %bb.i, label %.split, !llvm.loop !123

bb.p:                                             ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ %i.bu, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %.06790 = phi i32 [ %i.bi, %.lr.ph.preheader ], [ %i.gl, %bb.v ]
  %i.ek = getelementptr inbounds [6 x i8], ptr %i.bv, i64 %indvars.iv ; 6 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.em = load i16, ptr %i.el, align 2, !tbaa !86 ; 3 uses
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 1
  %i.ep = getelementptr inbounds i8, ptr %i.ek, i64 -12
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %i.bm
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !86
  %i.es = zext i16 %i.er to i32
  %i.et = getelementptr inbounds [2 x i8], ptr %i.ek, i64 %i.bm
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !86
  %i.ev = zext i16 %i.eu to i32                   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !86 ; 3 uses
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.bm
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !86
  %i.fd = zext i16 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.ev, 1
  %i.ff = add nuw nsw i32 %i.fe, %i.es
  %i.fg = add nuw nsw i32 %i.ff, %i.fd
  %i.fh = sub nsw i32 %i.eo, %i.fg
  %i.fi = add nsw i32 %i.fh, %i.ez
  %i.fj = sdiv i32 %i.fi, 4
  %i.fk = add nsw i32 %i.fj, %i.ev                ; 5 uses
  %. = tail call i16 @llvm.umin.i16(i16 %i.em, i16 %i.ex)
  %i.fl = zext i16 %. to i32                      ; 2 uses
  %i.fm = tail call i16 @llvm.umax.i16(i16 %i.em, i16 %i.ex)
  %i.fn = zext i16 %i.fm to i32                   ; 2 uses
  %i.fo = lshr i32 %i.fl, 3
  %i.fp = sub nsw i32 %i.fl, %i.fo                ; 3 uses
  %i.fq = lshr i32 %i.fn, 3
  %i.fr = add nuw nsw i32 %i.fq, %i.fn            ; 3 uses
  %i.fs = icmp slt i32 %i.fk, %i.fp
  br i1 %i.fs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ft = sub nsw i32 %i.fp, %i.fk
  %i.fu = sitofp reassoc nsz arcp contract afn i32 %i.ft to float
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fu)
  %i.fw = fptosi float %i.fv to i32
  %i.fx = sub nsw i32 %i.fp, %i.fw
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.fy = icmp sgt i32 %i.fk, %i.fr
  br i1 %i.fy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fz = sub nsw i32 %i.fk, %i.fr
  %i.ga = sitofp reassoc nsz arcp contract afn i32 %i.fz to float
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ga)
  %i.gc = fptosi float %i.gb to i32
  %i.gd = add nsw i32 %i.fr, %i.gc
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.0 = phi i32 [ %i.fx, %bb.q ], [ %i.gd, %bb.s ], [ %i.fk, %bb.r ] ; 2 uses
  %i.ge = load i16, ptr %i.bn, align 2, !tbaa !86 ; 2 uses
  %i.gf = zext i16 %i.ge to i32
  %i.gg = icmp sgt i32 %.0, %i.gf
  br i1 %i.gg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gh = load i16, ptr %i.bo, align 2, !tbaa !86
  %i.gi = zext i16 %i.gh to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0, i32 %i.gi)
  %i.gj = trunc nuw i32 %spec.select to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1 = phi i16 [ %i.gj, %bb.u ], [ %i.ge, %bb.t ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i16 %.1, ptr %i.gk, align 2, !tbaa !86
  %i.gl = add nuw nsw i32 %.06790, 2              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 2
  %i.gm = icmp samesign ult i32 %i.gl, %i.e
  br i1 %i.gm, label %bb.p, label %._crit_edge, !llvm.loop !123
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4AAHD15illustrate_dirsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !103, !align !104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i16, ptr %i.e, align 2, !tbaa !78   ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN4AAHD16illustrate_dlineEi.exit, %.lr.ph, %bb.a
  ret void

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN4AAHD16illustrate_dlineEi.exit
  %.pr = load i16, ptr %i.e, align 2, !tbaa !78
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.r = phi i16 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.s = phi i16 [ %i.aw, %.lr.ph.splitthread-pre-split ], [ %i.d, %.lr.ph ]
  %.03 = phi i32 [ %i.ax, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %.not29.i = icmp eq i16 %i.r, 0
  br i1 %.not29.i, label %_ZN4AAHD16illustrate_dlineEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %i.t = add nuw nsw i32 %.03, 4
  %i.u = mul nsw i32 %i.i, %i.t
  %invariant.op.i = add i32 %i.u, 4
  %wide.trip.count.i = zext i16 %i.r to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.v = trunc i64 %indvars.iv.i to i32
  %.reass.i = add nuw i32 %invariant.op.i, %i.v
  %i.w = sext i32 %.reass.i to i64                ; 3 uses
  %i.x = getelementptr inbounds [6 x i8], ptr %i.g, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i16 0, ptr %i.y, align 2, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i16 0, ptr %i.z, align 2, !tbaa !86
  store i16 0, ptr %i.x, align 2, !tbaa !86
  %i.aa = getelementptr inbounds [6 x i8], ptr %i.k, i64 %i.w ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i16 0, ptr %i.ab, align 2, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i16 0, ptr %i.ac, align 2, !tbaa !86
  store i16 0, ptr %i.aa, align 2, !tbaa !86
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 %i.w
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !105 ; 2 uses
  %i.af = and i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ah = and i8 %i.ae, 4
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = load i16, ptr %i.n, align 8, !tbaa !86
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = mul nuw nsw i32 %i.aj, %i.ag
  %i.al = lshr i32 %i.ak, 2
  %i.am = lshr i32 %i.aj, 2
  %i.an = add nuw nsw i32 %i.al, %i.am
  %i.ao = trunc nuw nsw i32 %i.an to i16
  store i16 %i.ao, ptr %i.aa, align 2, !tbaa !86
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = load i16, ptr %i.o, align 4, !tbaa !86
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = mul nuw nsw i32 %i.aq, %i.ag
  %i.as = lshr i32 %i.ar, 2
  %i.at = lshr i32 %i.aq, 2
  %i.au = add nuw nsw i32 %i.as, %i.at
  %i.av = trunc nuw nsw i32 %i.au to i16
  store i16 %i.av, ptr %i.y, align 2, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN4AAHD16illustrate_dlineEi.exit.loopexit, label %bb.b, !llvm.loop !124

_ZN4AAHD16illustrate_dlineEi.exit.loopexit:       ; preds = %bb.e
  %.pre = load i16, ptr %i.c, align 4, !tbaa !14
  br label %_ZN4AAHD16illustrate_dlineEi.exit

_ZN4AAHD16illustrate_dlineEi.exit:                ; preds = %_ZN4AAHD16illustrate_dlineEi.exit.loopexit, %.lr.ph.split
  %i.aw = phi i16 [ %.pre, %_ZN4AAHD16illustrate_dlineEi.exit.loopexit ], [ %i.s, %.lr.ph.split ] ; 2 uses
  %i.ax = add nuw nsw i32 %.03, 1                 ; 2 uses
  %i.ay = zext i16 %i.aw to i32
  %i.az = icmp samesign ult i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4AAHD16illustrate_dlineEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !103, !align !104
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !78   ; 2 uses
  %.not29 = icmp eq i16 %i.d, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = add nsw i32 %1, 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !79
  %i.j = mul nsw i32 %i.i, %i.e
  %invariant.op = add i32 %i.j, 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %wide.trip.count = zext i16 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.q = trunc i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.q
  %i.r = sext i32 %.reass to i64                  ; 3 uses
  %i.s = getelementptr inbounds [6 x i8], ptr %i.g, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i16 0, ptr %i.t, align 2, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.u, align 2, !tbaa !86
  store i16 0, ptr %i.s, align 2, !tbaa !86
  %i.v = getelementptr inbounds [6 x i8], ptr %i.l, i64 %i.r ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i16 0, ptr %i.w, align 2, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 0, ptr %i.x, align 2, !tbaa !86
  store i16 0, ptr %i.v, align 2, !tbaa !86
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105   ; 2 uses
  %i.aa = and i8 %i.z, 1
  %i.ab = zext nneg i8 %i.aa to i32               ; 2 uses
  %i.ac = and i8 %i.z, 4
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i16, ptr %i.o, align 8, !tbaa !86
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = mul nuw nsw i32 %i.ae, %i.ab
  %i.ag = lshr i32 %i.af, 2
  %i.ah = lshr i32 %i.ae, 2
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  %i.aj = trunc nuw nsw i32 %i.ai to i16
  store i16 %i.aj, ptr %i.v, align 2, !tbaa !86
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = load i16, ptr %i.p, align 4, !tbaa !86
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = mul nuw nsw i32 %i.al, %i.ab
  %i.an = lshr i32 %i.am, 2
  %i.ao = lshr i32 %i.al, 2
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  %i.aq = trunc nuw nsw i32 %i.ap to i16
  store i16 %i.aq, ptr %i.t, align 2, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !124
}

; Function Attrs: mustprogress uwtable
define void @_ZN4AAHD14make_ahd_rb_hvEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !103, !align !104 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !78   ; 2 uses
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !95   ; 4 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit54, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.g, 1000
  br i1 %i.h, label %_ZN6LibRaw5COLOREii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 381670
  %i.j = load i16, ptr %i.i, align 2, !tbaa !97   ; 2 uses
  %.not8.i = icmp eq i16 %i.j, 0
  br i1 %.not8.i, label %bb.d, label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 381828
  %i.l = load i32, ptr %i.k, align 4, !tbaa !98
  %.not.i.i = icmp ne i32 %i.l, 0                 ; 2 uses
  %i.m = zext i1 %.not.i.i to i32
  %.sink13.i.i.v = ashr i32 %1, %i.m
  %i.n = zext i16 %i.j to i32
  %.sink13.i.i = add nuw nsw i32 %i.n, 7
  %i.o = add i32 %.sink13.i.i, %.sink13.i.i.v
  %i.p = add nsw i32 %1, 1
  %i.q = lshr i32 %i.p, 1
  %i.r = select i1 %.not.i.i, i32 %i.q, i32 %1
  %i.s = shl i32 %i.o, 1
  %i.t = and i32 %i.s, 14
  %i.u = and i32 %i.r, 1
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = shl nuw nsw i32 %i.v, 1
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.x = shl i32 %1, 2
  %i.y = and i32 %i.x, 28
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZN6LibRaw3FCFEii.exit.i
  %.sink = phi i32 [ %i.y, %bb.d ], [ %i.w, %_ZN6LibRaw3FCFEii.exit.i ]
  %i.z = lshr i32 %i.g, %.sink                    ; 2 uses
  %i.aa = and i32 %i.z, 1
  br label %bb.g

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.b
  %i.ab = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.b, i32 noundef %1, i32 noundef 0) ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !93  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 544
  %.pre60 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !95 ; 3 uses
  %i.ac = and i32 %i.ab, 1                        ; 4 uses
  %.not.i46 = icmp eq i32 %.pre60, 0
  br i1 %.not.i46, label %_ZN6LibRaw5COLOREii.exit54, label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw5COLOREii.exit
  %i.ad = icmp ult i32 %.pre60, 1000
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %.pre, i32 noundef %1, i32 noundef %i.ac)
  br label %_ZN6LibRaw5COLOREii.exit54

bb.g:                                             ; preds = %.thread, %bb.e
  %i.af = phi i32 [ %i.g, %.thread ], [ %.pre60, %bb.e ] ; 2 uses
  %i.ag = phi ptr [ %i.b, %.thread ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i7177 = phi i32 [ %i.z, %.thread ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ah = phi i32 [ %i.aa, %.thread ], [ %i.ac, %bb.e ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 381670
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !97 ; 2 uses
  %.not8.i47 = icmp eq i16 %i.aj, 0
  br i1 %.not8.i47, label %bb.h, label %_ZN6LibRaw3FCFEii.exit.i49

_ZN6LibRaw3FCFEii.exit.i49:                       ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 381828
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98
  %.not.i.i48 = icmp eq i32 %i.al, 0              ; 3 uses
  %i.am = add i32 %1, 7
  %i.an = xor i32 %i.ah, -1
  %i.ao = lshr i32 %1, 1
  %i.ap = add nsw i32 %i.ao, %i.an
  %.sink13.i.i50 = select i1 %.not.i.i48, i32 %i.am, i32 %i.ap
  %.sink.i.i51 = select i1 %.not.i.i48, i32 %i.ah, i32 %1
  %.sink11.i.i52 = select i1 %.not.i.i48, i32 %1, i32 %.0.i7177
  %i.aq = zext i16 %i.aj to i32
  %i.ar = add i32 %.sink13.i.i50, %i.aq
  %i.as = add nsw i32 %.sink.i.i51, 1
  %i.at = lshr i32 %i.as, 1
  %i.au = add i32 %i.at, %.sink11.i.i52
  %i.av = shl i32 %i.ar, 1
  %i.aw = and i32 %i.av, 14
  %i.ax = and i32 %i.au, 1
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = lshr i32 %i.af, %i.az
  %i.bb = and i32 %i.ba, 3
  br label %_ZN6LibRaw5COLOREii.exit54

bb.h:                                             ; preds = %bb.g
  %i.bc = shl i32 %1, 1
  %i.bd = and i32 %i.bc, 14
  %i.be = or disjoint i32 %i.ah, %i.bd
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = lshr i32 %i.af, %i.bf
  %i.bh = and i32 %i.bg, 3
  br label %_ZN6LibRaw5COLOREii.exit54

_ZN6LibRaw5COLOREii.exit54:                       ; preds = %bb.a, %_ZN6LibRaw5COLOREii.exit, %bb.f, %_ZN6LibRaw3FCFEii.exit.i49, %bb.h
  %i.bi = phi i32 [ %i.ac, %bb.f ], [ %i.ac, %_ZN6LibRaw5COLOREii.exit ], [ %i.ah, %_ZN6LibRaw3FCFEii.exit.i49 ], [ %i.ah, %bb.h ], [ 0, %bb.a ]
  %.0.i72 = phi i32 [ %i.ab, %bb.f ], [ %i.ab, %_ZN6LibRaw5COLOREii.exit ], [ %.0.i7177, %_ZN6LibRaw3FCFEii.exit.i49 ], [ %.0.i7177, %bb.h ], [ 6, %bb.a ]
  %.0.i53 = phi i32 [ %i.ae, %bb.f ], [ 6, %_ZN6LibRaw5COLOREii.exit ], [ %i.bb, %_ZN6LibRaw3FCFEii.exit.i49 ], [ %i.bh, %bb.h ], [ 6, %bb.a ] ; 2 uses
  %i.bj = xor i32 %i.bi, 1
  %i.bk = icmp samesign ult i32 %i.bj, %i.e
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6LibRaw5COLOREii.exit54
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !79 ; 3 uses
  %i.bn = add nsw i32 %1, 4
  %i.bo = mul nsw i32 %i.bm, %i.bn
  %i.bp = add i32 %i.bo, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bt = and i32 %.0.i72, 1
  %i.bu = xor i32 %i.bt, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = zext i16 %i.d to i64
  %.pre61 = load ptr, ptr %i.bq, align 8, !tbaa !80
  %i.bx = sext i32 %.0.i53 to i64                 ; 5 uses
  %i.by = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bx
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !80
  %i.cc = xor i32 %.0.i53, 2
  %i.cd = sub nsw i32 0, %i.bm
  %i.ce = sext i32 %i.cd to i64
  %i.cf = sext i32 %i.cc to i64                   ; 5 uses
  %i.cg = sext i32 %i.bm to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.cf
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.cf
  br label %bb.i

end_hunk_1
