Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/entconv?download=true
inline.NumInlined: 11
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@cli_utf16toascii:bb.a
  %i.fi = and i64 %i.fh, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fi, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25.ph
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  %i.fm = shl i8 %i.fl, 4                         ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.ph ; 2 uses
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25.ph
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !8
  %i.fq = add i8 %i.fp, %i.fm
  store i8 %i.fq, ptr %i.fn, align 1, !tbaa !8
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.ph, 2
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv25.unr = phi i64 [ %indvars.iv25.ph, %.lr.ph.preheader ], [ %indvars.iv.next26.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.fr = icmp eq i64 %indvars.iv.ph, %i.fh
  br i1 %i.fr, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.1, %.lr.ph ], [ %indvars.iv25.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !8
  %i.fv = shl i8 %i.fu, 4                         ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv ; 2 uses
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !8
  %i.fz = add i8 %i.fy, %i.fv
  store i8 %i.fz, ptr %i.fw, align 1, !tbaa !8
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 2 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !8
  %i.gd = shl i8 %i.gc, 4                         ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  store i8 %i.gd, ptr %i.gf, align 1, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next26
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !8
  %i.gi = add i8 %i.gh, %i.gd
  store i8 %i.gi, ptr %i.gf, align 1, !tbaa !8
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c, %bb.b
  %.019 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %middle.block ], [ %i.e, %vec.epilog.middle.block ], [ %i.e, %.lr.ph ], [ %i.e, %.lr.ph.prol.loopexit ]
  ret ptr %.019
}

; Function Attrs: nounwind uwtable
define ptr @cli_utf16_to_utf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i64 %1, 3
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = add nuw i64 %i.b, 2                      ; 2 uses
  %i.d = icmp ult i64 %1, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @cli_safer_strdup(ptr noundef nonnull @.str.17) #16
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %1, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.18, i64 noundef %1) #16
  %i.g = add nsw i64 %1, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.092 = phi i64 [ %i.g, %bb.d ], [ %1, %bb.c ]  ; 3 uses
  %i.h = tail call ptr @cli_max_malloc(i64 noundef %i.c) #16 ; 8 uses
  %.not99 = icmp eq ptr %i.h, null
  br i1 %.not99, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %i.i, label %.thread [
    i8 -1, label %bb.g
    i8 -2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, -2
  br i1 %i.l, label %bb.i, label %.thread

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.thread
  %.sink115 = phi i32 [ 6, %.thread ], [ 6, %bb.h ], [ 7, %bb.g ]
  %.088 = phi i64 [ 0, %.thread ], [ 2, %bb.h ], [ 2, %bb.g ] ; 2 uses
  %i.p = icmp ult i64 %.088, %.092
  br i1 %i.p, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.i
  %i.q = icmp eq i32 %2, 1
  %spec.select104 = select i1 %i.q, i32 %.sink115, i32 %2
  %i.r = icmp eq i32 %spec.select104, 6
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.s
  %.087106 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.s ] ; 10 uses
  %.189105 = phi i64 [ %.088, %.lr.ph ], [ %i.cc, %bb.s ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.189105 ; 2 uses
  %i.t = load i16, ptr %i.s, align 1, !tbaa !8    ; 2 uses
  %rev = tail call i16 @llvm.bswap.i16(i16 %i.t)
  %spec.select = select i1 %i.r, i16 %rev, i16 %i.t ; 12 uses
  %i.u = icmp ult i16 %spec.select, 128
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = trunc nuw nsw i16 %spec.select to i8
  %i.w = add nuw i64 %.087106, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %.087106
  store i8 %i.v, ptr %i.x, align 1, !tbaa !8
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.y = icmp ult i16 %spec.select, 2048
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = lshr i16 %spec.select, 6
  %i.aa = trunc nuw nsw i16 %i.z to i8
  %i.ab = or disjoint i8 %i.aa, -64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %.087106 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !8
  %i.ad = trunc i16 %spec.select to i8
  %i.ae = and i8 %i.ad, 63
  %i.af = or disjoint i8 %i.ae, -128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !8
  %i.ah = add nuw i64 %.087106, 2
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ai = add i16 %spec.select, 8192
  %or.cond = icmp ult i16 %i.ai, -2048
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = lshr i16 %spec.select, 12
  %i.ak = trunc nuw nsw i16 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, -32
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %.087106 ; 3 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !8
  %i.an = lshr i16 %spec.select, 6
  %i.ao = trunc i16 %i.an to i8
  %i.ap = and i8 %i.ao, 63
  %i.aq = or disjoint i8 %i.ap, -128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !8
  %i.as = trunc i16 %spec.select to i8
  %i.at = and i8 %i.as, 63
  %i.au = or disjoint i8 %i.at, -128
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !8
  %i.aw = add nuw i64 %.087106, 3
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ax = icmp samesign ult i16 %spec.select, -9216
  %i.ay = add i64 %.189105, 3
  %i.az = icmp ult i64 %i.ay, %.092
  %or.cond102 = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond102, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = add nsw i16 %spec.select, 10304         ; 2 uses
  %i.bb = getelementptr i8, ptr %i.s, i64 2
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !8  ; 2 uses
  %i.bd = add i16 %i.bc, 1024
  %i.be = lshr i16 %i.ba, 8
  %i.bf = trunc nuw nsw i16 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, -16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 %.087106 ; 4 uses
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !8
  %i.bi = trunc i16 %i.ba to i8
  %3 = lshr i8 %i.bi, 2
  %i.bj = or disjoint i8 %3, -128
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !8
  %i.bl = shl i16 %spec.select, 4
  %i.bm = and i16 %i.bl, 48
  %i.bn = lshr i16 %i.bd, 6
  %i.bo = or i16 %i.bm, %i.bn
  %i.bp = trunc i16 %i.bo to i8
  %i.bq = or i8 %i.bp, -128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !8
  %i.bs = trunc i16 %i.bc to i8
  %i.bt = and i8 %i.bs, 63
  %i.bu = or disjoint i8 %i.bt, -128
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !8
  %i.bw = add nuw i64 %.087106, 4
  %i.bx = add i64 %.189105, 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19) #16
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 %.087106 ; 3 uses
  store i8 -17, ptr %i.by, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 -65, ptr %i.bz, align 1, !tbaa !8
  %i.ca = add nuw i64 %.087106, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 -67, ptr %i.cb, align 1, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %bb.q, %bb.r, %bb.o, %bb.k
  %.290 = phi i64 [ %.189105, %bb.k ], [ %.189105, %bb.m ], [ %.189105, %bb.o ], [ %i.bx, %bb.q ], [ %.189105, %bb.r ]
  %.1 = phi i64 [ %i.w, %bb.k ], [ %i.ah, %bb.m ], [ %i.aw, %bb.o ], [ %i.bw, %bb.q ], [ %i.ca, %bb.r ] ; 3 uses
  %i.cc = add i64 %.290, 2                        ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %.092
  %i.ce = icmp ult i64 %.1, %i.c
  %cond.fr = freeze i1 %i.ce                      ; 2 uses
  %i.cf = and i1 %i.cd, %cond.fr
  br i1 %i.cf, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s
  %i.cg = add nuw i64 %i.b, 1
  %spec.select116 = select i1 %cond.fr, i64 %.1, i64 %i.cg
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.i
  %i.ch = phi i64 [ %spec.select116, %._crit_edge ], [ 0, %bb.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ch
  store i8 0, ptr %i.ci, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.e, %._crit_edge.thread, %bb.b
  %.093 = phi ptr [ %i.e, %bb.b ], [ %i.h, %._crit_edge.thread ], [ null, %bb.e ]
  ret ptr %.093
}

declare ptr @cli_safer_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @cli_isutf8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not47 = icmp eq i32 %1, 0
  br i1 %.not47, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.02942 = phi i32 [ %i.al, %.loopexit ], [ 0, %bb.a ] ; 8 uses
  %i.a = zext i32 %.02942 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8     ; 7 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = and i8 %i.c, 64
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i8 %i.c, 32
  %i.h = icmp eq i8 %i.g, 0                       ; 2 uses
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i8 %i.c, 16
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = and i8 %i.c, 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = and i8 %i.c, 4
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = and i8 %i.c, 2
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %exitcond.not.1 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.g ]
  %exitcond.not.2 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.g ]
  %exitcond.not.3 = phi i1 [ true, %bb.f ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ]
  %.0 = phi i32 [ 4, %bb.f ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 5, %bb.g ]
  %i.q = add i32 %.0, %.02942                     ; 5 uses
  %i.r = add nuw i32 %.02942, 1                   ; 2 uses
  %.not = icmp ult i32 %i.r, %1
  br i1 %.not, label %bb.u, label %.critedge

bb.i:                                             ; preds = %bb.u
  br i1 %i.h, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add nuw i32 %.02942, 2                   ; 2 uses
  %.not.1 = icmp ult i32 %i.s, %1
  br i1 %.not.1, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %or.cond.1 = icmp slt i8 %i.v, -64
  br i1 %or.cond.1, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  br i1 %exitcond.not.1, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nuw i32 %.02942, 3                   ; 2 uses
  %.not.2 = icmp ult i32 %i.w, %1
  br i1 %.not.2, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %or.cond.2 = icmp slt i8 %i.z, -64
  br i1 %or.cond.2, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  br i1 %exitcond.not.2, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = add nuw i32 %.02942, 4                  ; 2 uses
  %.not.3 = icmp ult i32 %i.aa, %1
  br i1 %.not.3, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %or.cond.3 = icmp slt i8 %i.ad, -64
  br i1 %or.cond.3, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  br i1 %exitcond.not.3, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = add nuw i32 %.02942, 5                  ; 2 uses
  %.not.4 = icmp ult i32 %i.ae, %1
  br i1 %.not.4, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %or.cond.4 = icmp slt i8 %i.ah, -64
  br i1 %or.cond.4, label %.loopexit, label %.critedge

bb.u:                                             ; preds = %bb.h
  %i.ai = zext i32 %i.r to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %or.cond = icmp slt i8 %i.ak, -64
  br i1 %or.cond, label %bb.i, label %.critedge

.loopexit:                                        ; preds = %bb.i, %bb.l, %bb.o, %bb.r, %bb.t, %.lr.ph
  %.3 = phi i32 [ %.02942, %.lr.ph ], [ %i.q, %bb.t ], [ %i.q, %bb.r ], [ %i.q, %bb.o ], [ %i.q, %bb.l ], [ %i.q, %bb.i ]
  %i.al = add i32 %.3, 1                          ; 2 uses
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %bb.b, %.loopexit, %bb.g, %bb.h, %bb.u, %bb.j, %bb.k, %bb.m, %bb.n, %bb.p, %bb.q, %bb.s, %bb.t, %bb.a
  %.333 = phi i32 [ 1, %bb.a ], [ 0, %bb.h ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.u ], [ 0, %bb.b ], [ 0, %bb.g ], [ 1, %.loopexit ]
  ret i32 %.333
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #5

declare ptr @cli_max_realloc_or_free(ptr noundef, i64 noundef) local_unnamed_addr #2

end_hunk_0
