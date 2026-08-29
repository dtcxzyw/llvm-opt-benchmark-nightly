Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ucnv_u32?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL44T_UConverter_toUnicode_UTF32_BE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %.174 = phi ptr [ %i.d, %bb.b ], [ %.073, %bb.c ] ; 7 uses
  %.172 = phi ptr [ %i.f, %bb.b ], [ %.071, %bb.c ] ; 7 uses
  %.069 = phi i32 [ %i.v, %bb.b ], [ 0, %bb.c ]   ; 3 uses
  %.067 = phi i32 [ %i.r, %bb.b ], [ 0, %bb.c ]   ; 3 uses
  %.1 = phi i32 [ 0, %bb.b ], [ %.0, %bb.c ]      ; 4 uses
  %i.z = icmp samesign ult i32 %.067, 4
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.aa = zext nneg i32 %.067 to i64              ; 5 uses
  %i.ab = icmp ult ptr %.178, %i.h
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.ac = shl i32 %.069, 8
  %i.ad = load i8, ptr %.178, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.178, i64 1 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %i.aa, 1     ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aa
  store i8 %i.ad, ptr %i.ah, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e
  %i.ai = icmp ult ptr %i.ag, %i.h
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.1
  %i.aj = shl i32 %i.af, 8
  %i.ak = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.178, i64 2 ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.aa, 2   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next
  store i8 %i.ak, ptr %i.ao, align 1
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.f
  %i.ap = icmp ult ptr %i.an, %i.h
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.2
  %i.aq = shl i32 %i.am, 8
  %i.ar = load i8, ptr %i.an, align 1             ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.178, i64 3 ; 4 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.aa, 3   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.1
  store i8 %i.ar, ptr %i.av, align 1
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 4
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.g
  %i.aw = icmp ult ptr %i.au, %i.h
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.3
  %i.ax = shl i32 %i.at, 8
  %i.ay = load i8, ptr %i.au, align 1             ; 2 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.178, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.2
  store i8 %i.ay, ptr %i.bc, align 1
  br label %._crit_edge

bb.i:                                             ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.17095.lcssa = phi i32 [ %.069, %.lr.ph.preheader ], [ %i.af, %.lr.ph.1 ], [ %i.am, %.lr.ph.2 ], [ %i.at, %.lr.ph.3 ]
  %.27994.lcssa = phi ptr [ %.178, %.lr.ph.preheader ], [ %i.ag, %.lr.ph.1 ], [ %i.an, %.lr.ph.2 ], [ %i.au, %.lr.ph.3 ]
  %i.bd = add i32 %.17095.lcssa, 1
  %i.be = load ptr, ptr %i.k, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  store i32 %i.bd, ptr %i.bf, align 8
  %i.bg = trunc i64 %indvars.iv.lcssa to i8
  %i.bh = load ptr, ptr %i.k, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store i8 %i.bg, ptr %i.bi, align 8
  br label %bb.q

._crit_edge:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.d
  %.279.lcssa = phi ptr [ %.178, %bb.d ], [ %i.ag, %bb.e ], [ %i.an, %bb.f ], [ %i.au, %bb.g ], [ %i.bb, %bb.h ] ; 3 uses
  %.170.lcssa = phi i32 [ %.069, %bb.d ], [ %i.af, %bb.e ], [ %i.am, %bb.f ], [ %i.at, %bb.g ], [ %i.ba, %bb.h ] ; 6 uses
  %.168.lcssa = phi i32 [ %.067, %bb.d ], [ 4, %bb.h ], [ 4, %bb.g ], [ 4, %bb.f ], [ 4, %bb.e ] ; 2 uses
  %i.bj = icmp ugt i32 %.170.lcssa, 1114111
  %i.bk = and i32 %.170.lcssa, 2095104
  %i.bl = icmp eq i32 %i.bk, 55296
  %or.cond89 = or i1 %i.bj, %i.bl
  br i1 %or.cond89, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bm = icmp samesign ult i32 %.170.lcssa, 65536
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = trunc nuw i32 %.170.lcssa to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %.174, i64 2
  store i16 %i.bn, ptr %.174, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.172, i64 4
  store i32 %.1, ptr %.172, align 4
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bq = lshr i32 %.170.lcssa, 10
  %i.br = trunc nuw nsw i32 %i.bq to i16
  %i.bs = add nuw nsw i16 %i.br, -10304
  %i.bt = getelementptr inbounds nuw i8, ptr %.174, i64 2 ; 3 uses
  store i16 %i.bs, ptr %.174, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.172, i64 4 ; 2 uses
  store i32 %.1, ptr %.172, align 4
  %i.bv = trunc i32 %.170.lcssa to i16
  %i.bw = and i16 %i.bv, 1023
  %i.bx = or disjoint i16 %i.bw, -9216            ; 2 uses
  %i.by = icmp ult ptr %i.bt, %i.j
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.174, i64 4
  store i16 %i.bx, ptr %i.bt, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.172, i64 8
  store i32 %.1, ptr %i.bu, align 4
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.k, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  store i16 %i.bx, ptr %i.cc, align 8
  %i.cd = load ptr, ptr %i.k, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 93
  store i8 1, ptr %i.ce, align 1
  store i32 15, ptr %1, align 4
  br label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %i.cf = trunc nuw nsw i32 %.168.lcssa to i8
  %i.cg = load ptr, ptr %i.k, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store i8 %i.cf, ptr %i.ch, align 8
  store i32 12, ptr %1, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.k, %bb.m
  %.275 = phi ptr [ %i.bo, %bb.k ], [ %i.bz, %bb.m ]
  %.2 = phi ptr [ %i.bp, %bb.k ], [ %i.ca, %bb.m ]
  %i.ci = add i32 %.168.lcssa, %.1
  br label %bb.c, !llvm.loop !7

bb.q:                                             ; preds = %bb.c, %bb.n, %bb.o, %bb.i
  %.380 = phi ptr [ %.27994.lcssa, %bb.i ], [ %.279.lcssa, %bb.o ], [ %.077, %bb.c ], [ %.279.lcssa, %bb.n ] ; 2 uses
  %.376 = phi ptr [ %.174, %bb.i ], [ %.174, %bb.o ], [ %.073, %bb.c ], [ %i.bt, %bb.n ] ; 2 uses
  %.3 = phi ptr [ %.172, %bb.i ], [ %.172, %bb.o ], [ %.071, %bb.c ], [ %i.bu, %bb.n ]
  %i.cj = icmp uge ptr %.380, %i.h
  %.not = icmp ult ptr %.376, %i.j
  %or.cond90 = select i1 %i.cj, i1 true, i1 %.not
  br i1 %or.cond90, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = load i32, ptr %1, align 4
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 15, ptr %1, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  store ptr %.376, ptr %i.c, align 8
  store ptr %.380, ptr %i.a, align 8
  store ptr %.3, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL33T_UConverter_fromUnicode_UTF32_BEP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @ucnv_fromUWriteBytes_78(ptr noundef nonnull %i.h, ptr noundef nonnull @_ZZL33T_UConverter_fromUnicode_UTF32_BEP25UConverterFromUnicodeArgsP10UErrorCodeE3bom, i32 noundef 4, ptr noundef nonnull %i.l, ptr noundef %i.f, ptr noundef nonnull %i.m, i32 noundef -1, ptr noundef %1) #6
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 0, ptr %i.o, align 8
  %.pre = load ptr, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 84 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not73 = icmp eq i32 %i.t, 0
  br i1 %.not73, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.s, align 4
  br label %bb.h

.loopexit:                                        ; preds = %bb.v, %bb.w, %bb.d
  %.065 = phi ptr [ %i.b, %bb.d ], [ %.267, %bb.w ], [ %.267, %bb.v ] ; 4 uses
  %.063 = phi ptr [ %i.r, %bb.d ], [ %i.cg, %bb.w ], [ %.4.2, %bb.v ] ; 5 uses
  %i.u = icmp ult ptr %.065, %i.d
  %i.v = icmp ult ptr %.063, %i.f
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.f, label %bb.x

bb.f:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %.065, i64 2 ; 3 uses
  %i.y = load i16, ptr %.065, align 2
  %i.z = zext i16 %i.y to i32                     ; 5 uses
  %i.aa = and i32 %i.z, 63488
  %i.ab = icmp eq i32 %i.aa, 55296
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.z, 56320
  %i.ad = icmp eq i32 %i.ac, 55296
  br i1 %i.ad, label %bb.h, label %.sink.split.sink.split

bb.h:                                             ; preds = %bb.g, %bb.e
  %.166 = phi ptr [ %i.b, %bb.e ], [ %i.x, %bb.g ] ; 6 uses
  %.164 = phi ptr [ %i.r, %bb.e ], [ %.063, %bb.g ] ; 4 uses
  %.062 = phi i32 [ %i.t, %bb.e ], [ %i.z, %bb.g ] ; 3 uses
  %i.ae = icmp ult ptr %.166, %i.d
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load i16, ptr %.166, align 2
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = and i32 %i.ag, 64512
  %i.ai = icmp eq i32 %i.ah, 56320
  br i1 %i.ai, label %bb.j, label %.sink.split.sink.split

bb.j:                                             ; preds = %bb.i
  %i.aj = shl i32 %.062, 10
  %i.ak = add i32 %i.aj, -56613888
  %i.al = add i32 %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %.166, i64 2
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 84
  store i32 %.062, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aq = load i8, ptr %i.ap, align 2
  %.not74 = icmp eq i8 %i.aq, 0
  br i1 %.not74, label %bb.x, label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.f
  %.267 = phi ptr [ %i.am, %bb.j ], [ %i.x, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %.164, %bb.j ], [ %.063, %bb.f ] ; 4 uses
  %.1 = phi i32 [ %i.al, %bb.j ], [ %i.z, %bb.f ] ; 3 uses
  %i.ar = lshr i32 %.1, 16
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 31                        ; 2 uses
  %i.au = lshr i32 %.1, 8
  %i.av = trunc i32 %i.au to i8                   ; 2 uses
  %i.aw = trunc i32 %.1 to i8                     ; 2 uses
  %i.ax = icmp ult ptr %.2, %i.f
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 0, ptr %.2, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 91 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = add i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 1
  %i.be = sext i8 %i.bc to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.be
  store i8 0, ptr %i.bf, align 1
  store i32 15, ptr %1, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.4 = phi ptr [ %i.ay, %bb.m ], [ %.2, %bb.n ]  ; 4 uses
  %i.bg = icmp ult ptr %.4, %i.f
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 91 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1             ; 2 uses
  %i.bl = add i8 %i.bk, 1
  store i8 %i.bl, ptr %i.bj, align 1
  %i.bm = sext i8 %i.bk to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm
  store i8 %i.at, ptr %i.bn, align 1
  store i32 15, ptr %1, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 %i.at, ptr %.4, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4.1 = phi ptr [ %i.bo, %bb.q ], [ %.4, %bb.p ] ; 4 uses
  %i.bp = icmp ult ptr %.4.1, %i.f
  br i1 %i.bp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 91 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = add i8 %i.bt, 1
  store i8 %i.bu, ptr %i.bs, align 1
  %i.bv = sext i8 %i.bt to i64
  %i.bw = getelementptr inbounds i8, ptr %i.br, i64 %i.bv
  store i8 %i.av, ptr %i.bw, align 1
  store i32 15, ptr %1, align 4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %.4.1, i64 1
  store i8 %i.av, ptr %.4.1, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4.2 = phi ptr [ %i.bx, %bb.t ], [ %.4.1, %bb.s ] ; 4 uses
  %i.by = icmp ult ptr %.4.2, %i.f
  br i1 %i.by, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 91 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.cd = add i8 %i.cc, 1
  store i8 %i.cd, ptr %i.cb, align 1
  %i.ce = sext i8 %i.cc to i64
  %i.cf = getelementptr inbounds i8, ptr %i.ca, i64 %i.ce
  store i8 %i.aw, ptr %i.cf, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %.4.2, i64 1
  store i8 %i.aw, ptr %.4.2, align 1
  br label %.loopexit

.sink.split.sink.split:                           ; preds = %bb.g, %bb.i
  %.062.sink = phi i32 [ %.062, %bb.i ], [ %i.z, %bb.g ]
  %.368.ph.ph = phi ptr [ %.166, %bb.i ], [ %i.x, %bb.g ]
  %.5.ph.ph = phi ptr [ %.164, %bb.i ], [ %.063, %bb.g ]
  %i.ch = load ptr, ptr %i.g, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 84
  store i32 %.062.sink, ptr %i.ci, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.k
  %.368.ph = phi ptr [ %.166, %bb.k ], [ %.368.ph.ph, %.sink.split.sink.split ]
  %.5.ph = phi ptr [ %.164, %bb.k ], [ %.5.ph.ph, %.sink.split.sink.split ]
  store i32 12, ptr %1, align 4
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.k, %.loopexit
  %.368 = phi ptr [ %.166, %bb.k ], [ %.065, %.loopexit ], [ %.368.ph, %.sink.split ] ; 2 uses
  %.5 = phi ptr [ %.164, %bb.k ], [ %.063, %.loopexit ], [ %.5.ph, %.sink.split ] ; 2 uses
  %i.cj = icmp uge ptr %.368, %i.d
  %.not75 = icmp ult ptr %.5, %i.f
  %or.cond = select i1 %i.cj, i1 true, i1 %.not75
  br i1 %or.cond, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = load i32, ptr %1, align 4
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 15, ptr %1, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  store ptr %.5, ptr %i.q, align 8
  store ptr %.368, ptr %i.a, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL46T_UConverter_fromUnicode_UTF32_BE_OFFSET_LOGICP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @ucnv_fromUWriteBytes_78(ptr noundef nonnull %i.h, ptr noundef nonnull @_ZZL46T_UConverter_fromUnicode_UTF32_BE_OFFSET_LOGICP25UConverterFromUnicodeArgsP10UErrorCodeE3bom, i32 noundef 4, ptr noundef nonnull %i.l, ptr noundef %i.f, ptr noundef nonnull %i.m, i32 noundef -1, ptr noundef %1) #6
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 0, ptr %i.o, align 8
  %.pre = load ptr, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 84 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %.not88 = icmp eq i32 %i.v, 0
  br i1 %.not88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.u, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.y
  %.080 = phi ptr [ %.282, %bb.y ], [ %i.b, %bb.d ] ; 4 uses
  %.074 = phi ptr [ %.478.3, %bb.y ], [ %i.r, %bb.d ] ; 5 uses
  %.071 = phi ptr [ %.4.3, %bb.y ], [ %i.t, %bb.d ] ; 4 uses
  %.068 = phi i32 [ %i.cr, %bb.y ], [ 0, %bb.d ]  ; 2 uses
  %i.w = icmp ult ptr %.080, %i.d
  %i.x = icmp ult ptr %.074, %i.f
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.080, i64 2 ; 3 uses
  %i.aa = load i16, ptr %.080, align 2
  %i.ab = zext i16 %i.aa to i32                   ; 5 uses
  %i.ac = and i32 %i.ab, 63488
  %i.ad = icmp eq i32 %i.ac, 55296
  br i1 %i.ad, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %i.ab, 56320
  %i.af = icmp eq i32 %i.ae, 55296
  br i1 %i.af, label %bb.i, label %.sink.split.sink.split

bb.i:                                             ; preds = %bb.h, %bb.e
  %.181 = phi ptr [ %i.b, %bb.e ], [ %i.z, %bb.h ] ; 6 uses
  %.175 = phi ptr [ %i.r, %bb.e ], [ %.074, %bb.h ] ; 4 uses
  %.172 = phi ptr [ %i.t, %bb.e ], [ %.071, %bb.h ] ; 4 uses
  %.069 = phi i32 [ %i.v, %bb.e ], [ %i.ab, %bb.h ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.e ], [ %.068, %bb.h ]
  %i.ag = icmp ult ptr %.181, %i.d
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = load i16, ptr %.181, align 2
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = and i32 %i.ai, 64512
  %i.ak = icmp eq i32 %i.aj, 56320
  br i1 %i.ak, label %bb.k, label %.sink.split.sink.split

bb.k:                                             ; preds = %bb.j
  %i.al = shl i32 %.069, 10
  %i.am = add i32 %i.al, -56613888
  %i.an = add i32 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %.181, i64 2
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 84
  store i32 %.069, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.as = load i8, ptr %i.ar, align 2
  %.not89 = icmp eq i8 %i.as, 0
  br i1 %.not89, label %bb.z, label %.sink.split

bb.m:                                             ; preds = %bb.k, %bb.g
  %.282 = phi ptr [ %i.ao, %bb.k ], [ %i.z, %bb.g ]
  %.276 = phi ptr [ %.175, %bb.k ], [ %.074, %bb.g ] ; 4 uses
  %.273 = phi ptr [ %.172, %bb.k ], [ %.071, %bb.g ] ; 3 uses
  %.170 = phi i32 [ %i.an, %bb.k ], [ %i.ab, %bb.g ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.k ], [ %.068, %bb.g ]  ; 5 uses
  %i.at = lshr i32 %.170, 16
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 31                        ; 2 uses
  %i.aw = lshr i32 %.170, 8
  %i.ax = trunc i32 %i.aw to i8                   ; 2 uses
  %i.ay = trunc i32 %.170 to i8                   ; 2 uses
  %i.az = icmp ult ptr %.276, %i.f
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.276, i64 1
  store i8 0, ptr %.276, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.273, i64 4
  store i32 %.2, ptr %.273, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 91 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %i.bg = add i8 %i.bf, 1
  store i8 %i.bg, ptr %i.be, align 1
  %i.bh = sext i8 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  store i8 0, ptr %i.bi, align 1
  store i32 15, ptr %1, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.478 = phi ptr [ %i.ba, %bb.n ], [ %.276, %bb.o ] ; 4 uses
  %.4 = phi ptr [ %i.bb, %bb.n ], [ %.273, %bb.o ] ; 3 uses
  %i.bj = icmp ult ptr %.478, %i.f
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 91 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1
  %i.bp = sext i8 %i.bn to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  store i8 %i.av, ptr %i.bq, align 1
  store i32 15, ptr %1, align 4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.478, i64 1
  store i8 %i.av, ptr %.478, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.4, i64 4
  store i32 %.2, ptr %.4, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.478.1 = phi ptr [ %i.br, %bb.r ], [ %.478, %bb.q ] ; 4 uses
  %.4.1 = phi ptr [ %i.bs, %bb.r ], [ %.4, %bb.q ] ; 3 uses
  %i.bt = icmp ult ptr %.478.1, %i.f
  br i1 %i.bt, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 91 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1             ; 2 uses
  %i.by = add i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1
  %i.bz = sext i8 %i.bx to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 %i.bz
  store i8 %i.ax, ptr %i.ca, align 1
  store i32 15, ptr %1, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.478.1, i64 1
  store i8 %i.ax, ptr %.478.1, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.4.1, i64 4
  store i32 %.2, ptr %.4.1, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.478.2 = phi ptr [ %i.cb, %bb.u ], [ %.478.1, %bb.t ] ; 4 uses
  %.4.2 = phi ptr [ %i.cc, %bb.u ], [ %.4.1, %bb.t ] ; 3 uses
  %i.cd = icmp ult ptr %.478.2, %i.f
  br i1 %i.cd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 91 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1             ; 2 uses
  %i.ci = add i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cg, align 1
  %i.cj = sext i8 %i.ch to i64
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.cj
  store i8 %i.ay, ptr %i.ck, align 1
  store i32 15, ptr %1, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %.478.2, i64 1
  store i8 %i.ay, ptr %.478.2, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.4.2, i64 4
  store i32 %.2, ptr %.4.2, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.478.3 = phi ptr [ %i.cl, %bb.x ], [ %.478.2, %bb.w ]
  %.4.3 = phi ptr [ %i.cm, %bb.x ], [ %.4.2, %bb.w ]
  %i.cn = add nsw i32 %.2, 1
  %i.co = and i32 %.170, 2031616
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = add nsw i32 %i.cn, %i.cq
  br label %bb.f, !llvm.loop !8

.sink.split.sink.split:                           ; preds = %bb.h, %bb.j
end_hunk_0
begin_hunk_1_@_ZL44T_UConverter_toUnicode_UTF32_LE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.aa = zext nneg i32 %.068 to i64              ; 5 uses
  %i.ab = icmp ult ptr %.179, %i.h
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.ac = load i8, ptr %.179, align 1             ; 2 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %.068, 3
  %i.af = shl nuw i32 %i.ad, %i.ae
  %i.ag = or i32 %i.af, %.070                     ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.179, i64 1 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %i.aa, 1     ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aa
  store i8 %i.ac, ptr %i.ai, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e
  %i.aj = icmp ult ptr %i.ah, %i.h
  br i1 %i.aj, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.1
  %i.ak = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %indvars.iv.tr.1 = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.am = shl nuw nsw i32 %indvars.iv.tr.1, 3
  %i.an = shl nuw i32 %i.al, %i.am
  %i.ao = or i32 %i.an, %i.ag                     ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.179, i64 2 ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %i.aa, 2   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next
  store i8 %i.ak, ptr %i.aq, align 1
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.f
  %i.ar = icmp ult ptr %i.ap, %i.h
  br i1 %i.ar, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.2
  %i.as = load i8, ptr %i.ap, align 1             ; 2 uses
  %i.at = zext i8 %i.as to i32
  %indvars.iv.tr.2 = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.au = shl nuw nsw i32 %indvars.iv.tr.2, 3
  %i.av = shl nuw i32 %i.at, %i.au
  %i.aw = or i32 %i.av, %i.ao                     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.179, i64 3 ; 4 uses
  %indvars.iv.next.2 = add nuw nsw i64 %i.aa, 3   ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.1
  store i8 %i.as, ptr %i.ay, align 1
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 4
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.g
  %i.az = icmp ult ptr %i.ax, %i.h
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.3
  %i.ba = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  %indvars.iv.tr.3 = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.bc = shl nuw nsw i32 %indvars.iv.tr.3, 3
  %i.bd = shl nuw i32 %i.bb, %i.bc
  %i.be = or i32 %i.bd, %i.aw
  %i.bf = getelementptr inbounds nuw i8, ptr %.179, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.2
  store i8 %i.ba, ptr %i.bg, align 1
  br label %._crit_edge

bb.i:                                             ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.17196.lcssa = phi i32 [ %.070, %.lr.ph.preheader ], [ %i.ag, %.lr.ph.1 ], [ %i.ao, %.lr.ph.2 ], [ %i.aw, %.lr.ph.3 ]
  %.28095.lcssa = phi ptr [ %.179, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.1 ], [ %i.ap, %.lr.ph.2 ], [ %i.ax, %.lr.ph.3 ]
  %i.bh = add i32 %.17196.lcssa, 1
  %i.bi = load ptr, ptr %i.k, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store i32 %i.bh, ptr %i.bj, align 8
  %i.bk = trunc i64 %indvars.iv.lcssa to i8
  %i.bl = load ptr, ptr %i.k, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store i8 %i.bk, ptr %i.bm, align 8
  br label %bb.q

._crit_edge:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.d
  %.280.lcssa = phi ptr [ %.179, %bb.d ], [ %i.ah, %bb.e ], [ %i.ap, %bb.f ], [ %i.ax, %bb.g ], [ %i.bf, %bb.h ] ; 3 uses
  %.171.lcssa = phi i32 [ %.070, %bb.d ], [ %i.ag, %bb.e ], [ %i.ao, %bb.f ], [ %i.aw, %bb.g ], [ %i.be, %bb.h ] ; 6 uses
  %.169.lcssa = phi i32 [ %.068, %bb.d ], [ 4, %bb.h ], [ 4, %bb.g ], [ 4, %bb.f ], [ 4, %bb.e ] ; 2 uses
  %i.bn = icmp ugt i32 %.171.lcssa, 1114111
  %i.bo = and i32 %.171.lcssa, 2095104
  %i.bp = icmp eq i32 %i.bo, 55296
  %or.cond90 = or i1 %i.bn, %i.bp
  br i1 %or.cond90, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bq = icmp samesign ult i32 %.171.lcssa, 65536
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = trunc nuw i32 %.171.lcssa to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %.175, i64 2
  store i16 %i.br, ptr %.175, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %.173, i64 4
  store i32 %.1, ptr %.173, align 4
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bu = lshr i32 %.171.lcssa, 10
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  %i.bw = add nuw nsw i16 %i.bv, -10304
  %i.bx = getelementptr inbounds nuw i8, ptr %.175, i64 2 ; 3 uses
  store i16 %i.bw, ptr %.175, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %.173, i64 4 ; 2 uses
  store i32 %.1, ptr %.173, align 4
  %i.bz = trunc i32 %.171.lcssa to i16
  %i.ca = and i16 %i.bz, 1023
  %i.cb = or disjoint i16 %i.ca, -9216            ; 2 uses
  %i.cc = icmp ult ptr %i.bx, %i.j
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %.175, i64 4
  store i16 %i.cb, ptr %i.bx, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.173, i64 8
  store i32 %.1, ptr %i.by, align 4
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cf = load ptr, ptr %i.k, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  store i16 %i.cb, ptr %i.cg, align 8
  %i.ch = load ptr, ptr %i.k, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 93
  store i8 1, ptr %i.ci, align 1
  store i32 15, ptr %1, align 4
  br label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %i.cj = trunc nuw nsw i32 %.169.lcssa to i8
  %i.ck = load ptr, ptr %i.k, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  store i8 %i.cj, ptr %i.cl, align 8
  store i32 12, ptr %1, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.k, %bb.m
  %.276 = phi ptr [ %i.bs, %bb.k ], [ %i.cd, %bb.m ]
  %.2 = phi ptr [ %i.bt, %bb.k ], [ %i.ce, %bb.m ]
  %i.cm = add i32 %.169.lcssa, %.1
  br label %bb.c, !llvm.loop !10

bb.q:                                             ; preds = %bb.c, %bb.n, %bb.o, %bb.i
  %.381 = phi ptr [ %.28095.lcssa, %bb.i ], [ %.280.lcssa, %bb.o ], [ %.078, %bb.c ], [ %.280.lcssa, %bb.n ] ; 2 uses
  %.377 = phi ptr [ %.175, %bb.i ], [ %.175, %bb.o ], [ %.074, %bb.c ], [ %i.bx, %bb.n ] ; 2 uses
  %.3 = phi ptr [ %.173, %bb.i ], [ %.173, %bb.o ], [ %.072, %bb.c ], [ %i.by, %bb.n ]
  %i.cn = icmp uge ptr %.381, %i.h
  %.not = icmp ult ptr %.377, %i.j
  %or.cond91 = select i1 %i.cn, i1 true, i1 %.not
  br i1 %or.cond91, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr %1, align 4
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 15, ptr %1, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  store ptr %.377, ptr %i.c, align 8
  store ptr %.381, ptr %i.a, align 8
  store ptr %.3, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL33T_UConverter_fromUnicode_UTF32_LEP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @ucnv_fromUWriteBytes_78(ptr noundef nonnull %i.h, ptr noundef nonnull @_ZZL33T_UConverter_fromUnicode_UTF32_LEP25UConverterFromUnicodeArgsP10UErrorCodeE3bom, i32 noundef 4, ptr noundef nonnull %i.l, ptr noundef %i.f, ptr noundef nonnull %i.m, i32 noundef -1, ptr noundef %1) #6
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 0, ptr %i.o, align 8
  %.pre = load ptr, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 84 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not73 = icmp eq i32 %i.t, 0
  br i1 %.not73, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.s, align 4
  br label %bb.h

.loopexit:                                        ; preds = %bb.v, %bb.w, %bb.d
  %.065 = phi ptr [ %i.b, %bb.d ], [ %.267, %bb.w ], [ %.267, %bb.v ] ; 4 uses
  %.063 = phi ptr [ %i.r, %bb.d ], [ %i.cd, %bb.w ], [ %.4.2, %bb.v ] ; 5 uses
  %i.u = icmp ult ptr %.065, %i.d
  %i.v = icmp ult ptr %.063, %i.f
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.f, label %bb.x

bb.f:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %.065, i64 2 ; 3 uses
  %i.y = load i16, ptr %.065, align 2
  %i.z = zext i16 %i.y to i32                     ; 5 uses
  %i.aa = and i32 %i.z, 63488
  %i.ab = icmp eq i32 %i.aa, 55296
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.z, 56320
  %i.ad = icmp eq i32 %i.ac, 55296
  br i1 %i.ad, label %bb.h, label %.sink.split.sink.split

bb.h:                                             ; preds = %bb.g, %bb.e
  %.166 = phi ptr [ %i.b, %bb.e ], [ %i.x, %bb.g ] ; 6 uses
  %.164 = phi ptr [ %i.r, %bb.e ], [ %.063, %bb.g ] ; 4 uses
  %.062 = phi i32 [ %i.t, %bb.e ], [ %i.z, %bb.g ] ; 3 uses
  %i.ae = icmp ult ptr %.166, %i.d
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load i16, ptr %.166, align 2
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = and i32 %i.ag, 64512
  %i.ai = icmp eq i32 %i.ah, 56320
  br i1 %i.ai, label %bb.j, label %.sink.split.sink.split

bb.j:                                             ; preds = %bb.i
  %i.aj = shl i32 %.062, 10
  %i.ak = add i32 %i.aj, -56613888
  %i.al = add i32 %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %.166, i64 2
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 84
  store i32 %.062, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aq = load i8, ptr %i.ap, align 2
  %.not74 = icmp eq i8 %i.aq, 0
  br i1 %.not74, label %bb.x, label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.f
  %.267 = phi ptr [ %i.am, %bb.j ], [ %i.x, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %.164, %bb.j ], [ %.063, %bb.f ] ; 4 uses
  %.1 = phi i32 [ %i.al, %bb.j ], [ %i.z, %bb.f ] ; 3 uses
  %i.ar = lshr i32 %.1, 16
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 31                        ; 2 uses
  %i.au = icmp ult ptr %.2, %i.f
  %.sroa.0.0.extract.trunc81 = trunc i32 %.1 to i8 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %.sroa.0.0.extract.trunc81, ptr %.2, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 91 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1
  %i.bb = sext i8 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %i.bb
  store i8 %.sroa.0.0.extract.trunc81, ptr %i.bc, align 1
  store i32 15, ptr %1, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.4 = phi ptr [ %i.av, %bb.m ], [ %.2, %bb.n ]  ; 4 uses
  %i.bd = icmp ult ptr %.4, %i.f
  %.sroa.0.1.extract.shift8391 = lshr i32 %.1, 8
  %.sroa.0.1.extract.trunc84 = trunc i32 %.sroa.0.1.extract.shift8391 to i8 ; 2 uses
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 91 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %i.bi = add i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 1
  %i.bj = sext i8 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bf, i64 %i.bj
  store i8 %.sroa.0.1.extract.trunc84, ptr %i.bk, align 1
  store i32 15, ptr %1, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 %.sroa.0.1.extract.trunc84, ptr %.4, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4.1 = phi ptr [ %i.bl, %bb.q ], [ %.4, %bb.p ] ; 4 uses
  %i.bm = icmp ult ptr %.4.1, %i.f
  br i1 %i.bm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 91 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %i.br = add i8 %i.bq, 1
  store i8 %i.br, ptr %i.bp, align 1
  %i.bs = sext i8 %i.bq to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs
  store i8 %i.at, ptr %i.bt, align 1
  store i32 15, ptr %1, align 4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %.4.1, i64 1
  store i8 %i.at, ptr %.4.1, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4.2 = phi ptr [ %i.bu, %bb.t ], [ %.4.1, %bb.s ] ; 4 uses
  %i.bv = icmp ult ptr %.4.2, %i.f
  br i1 %i.bv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 91 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  %i.ca = add i8 %i.bz, 1
  store i8 %i.ca, ptr %i.by, align 1
  %i.cb = sext i8 %i.bz to i64
  %i.cc = getelementptr inbounds i8, ptr %i.bx, i64 %i.cb
  store i8 0, ptr %i.cc, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %.4.2, i64 1
  store i8 0, ptr %.4.2, align 1
  br label %.loopexit

.sink.split.sink.split:                           ; preds = %bb.g, %bb.i
  %.062.sink = phi i32 [ %.062, %bb.i ], [ %i.z, %bb.g ]
  %.368.ph.ph = phi ptr [ %.166, %bb.i ], [ %i.x, %bb.g ]
  %.5.ph.ph = phi ptr [ %.164, %bb.i ], [ %.063, %bb.g ]
  %i.ce = load ptr, ptr %i.g, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 84
  store i32 %.062.sink, ptr %i.cf, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.k
  %.368.ph = phi ptr [ %.166, %bb.k ], [ %.368.ph.ph, %.sink.split.sink.split ]
  %.5.ph = phi ptr [ %.164, %bb.k ], [ %.5.ph.ph, %.sink.split.sink.split ]
  store i32 12, ptr %1, align 4
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.k, %.loopexit
  %.368 = phi ptr [ %.166, %bb.k ], [ %.065, %.loopexit ], [ %.368.ph, %.sink.split ] ; 2 uses
  %.5 = phi ptr [ %.164, %bb.k ], [ %.063, %.loopexit ], [ %.5.ph, %.sink.split ] ; 2 uses
  %i.cg = icmp uge ptr %.368, %i.d
  %.not75 = icmp ult ptr %.5, %i.f
  %or.cond = select i1 %i.cg, i1 true, i1 %.not75
  br i1 %or.cond, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = load i32, ptr %1, align 4
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 15, ptr %1, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  store ptr %.5, ptr %i.q, align 8
  store ptr %.368, ptr %i.a, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL46T_UConverter_fromUnicode_UTF32_LE_OFFSET_LOGICP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @ucnv_fromUWriteBytes_78(ptr noundef nonnull %i.h, ptr noundef nonnull @_ZZL46T_UConverter_fromUnicode_UTF32_LE_OFFSET_LOGICP25UConverterFromUnicodeArgsP10UErrorCodeE3bom, i32 noundef 4, ptr noundef nonnull %i.l, ptr noundef %i.f, ptr noundef nonnull %i.m, i32 noundef -1, ptr noundef %1) #6
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 0, ptr %i.o, align 8
  %.pre = load ptr, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 84 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %.not88 = icmp eq i32 %i.v, 0
  br i1 %.not88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.u, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.y
  %.080 = phi ptr [ %.282, %bb.y ], [ %i.b, %bb.d ] ; 4 uses
  %.074 = phi ptr [ %.478.3, %bb.y ], [ %i.r, %bb.d ] ; 5 uses
  %.071 = phi ptr [ %.4.3, %bb.y ], [ %i.t, %bb.d ] ; 4 uses
  %.0 = phi i32 [ %i.co, %bb.y ], [ 0, %bb.d ]    ; 2 uses
  %i.w = icmp ult ptr %.080, %i.d
  %i.x = icmp ult ptr %.074, %i.f
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.080, i64 2 ; 3 uses
  %i.aa = load i16, ptr %.080, align 2
  %i.ab = zext i16 %i.aa to i32                   ; 5 uses
  %i.ac = and i32 %i.ab, 63488
  %i.ad = icmp eq i32 %i.ac, 55296
  br i1 %i.ad, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %i.ab, 56320
  %i.af = icmp eq i32 %i.ae, 55296
  br i1 %i.af, label %bb.i, label %.sink.split.sink.split

bb.i:                                             ; preds = %bb.h, %bb.e
  %.181 = phi ptr [ %i.b, %bb.e ], [ %i.z, %bb.h ] ; 6 uses
  %.175 = phi ptr [ %i.r, %bb.e ], [ %.074, %bb.h ] ; 4 uses
  %.172 = phi ptr [ %i.t, %bb.e ], [ %.071, %bb.h ] ; 4 uses
  %.069 = phi i32 [ %i.v, %bb.e ], [ %i.ab, %bb.h ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.e ], [ %.0, %bb.h ]
  %i.ag = icmp ult ptr %.181, %i.d
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = load i16, ptr %.181, align 2
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = and i32 %i.ai, 64512
  %i.ak = icmp eq i32 %i.aj, 56320
  br i1 %i.ak, label %bb.k, label %.sink.split.sink.split

bb.k:                                             ; preds = %bb.j
  %i.al = shl i32 %.069, 10
  %i.am = add i32 %i.al, -56613888
  %i.an = add i32 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %.181, i64 2
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 84
  store i32 %.069, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.as = load i8, ptr %i.ar, align 2
  %.not89 = icmp eq i8 %i.as, 0
  br i1 %.not89, label %bb.z, label %.sink.split

bb.m:                                             ; preds = %bb.k, %bb.g
  %.282 = phi ptr [ %i.ao, %bb.k ], [ %i.z, %bb.g ]
  %.276 = phi ptr [ %.175, %bb.k ], [ %.074, %bb.g ] ; 4 uses
  %.273 = phi ptr [ %.172, %bb.k ], [ %.071, %bb.g ] ; 3 uses
  %.170 = phi i32 [ %i.an, %bb.k ], [ %i.ab, %bb.g ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.k ], [ %.0, %bb.g ]    ; 5 uses
  %i.at = lshr i32 %.170, 16
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 31                        ; 2 uses
  %i.aw = icmp ult ptr %.276, %i.f
  %.sroa.0.0.extract.trunc97 = trunc i32 %.170 to i8 ; 2 uses
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.276, i64 1
  store i8 %.sroa.0.0.extract.trunc97, ptr %.276, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.273, i64 4
  store i32 %.2, ptr %.273, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 91 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = add i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 1
  %i.be = sext i8 %i.bc to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.be
  store i8 %.sroa.0.0.extract.trunc97, ptr %i.bf, align 1
  store i32 15, ptr %1, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.478 = phi ptr [ %i.ax, %bb.n ], [ %.276, %bb.o ] ; 4 uses
  %.4 = phi ptr [ %i.ay, %bb.n ], [ %.273, %bb.o ] ; 3 uses
  %i.bg = icmp ult ptr %.478, %i.f
  %.sroa.0.1.extract.shift99108 = lshr i32 %.170, 8
  %.sroa.0.1.extract.trunc100 = trunc i32 %.sroa.0.1.extract.shift99108 to i8 ; 2 uses
  br i1 %i.bg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 91 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1             ; 2 uses
  %i.bl = add i8 %i.bk, 1
  store i8 %i.bl, ptr %i.bj, align 1
  %i.bm = sext i8 %i.bk to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm
  store i8 %.sroa.0.1.extract.trunc100, ptr %i.bn, align 1
  store i32 15, ptr %1, align 4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %.478, i64 1
  store i8 %.sroa.0.1.extract.trunc100, ptr %.478, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.4, i64 4
  store i32 %.2, ptr %.4, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.478.1 = phi ptr [ %i.bo, %bb.r ], [ %.478, %bb.q ] ; 4 uses
  %.4.1 = phi ptr [ %i.bp, %bb.r ], [ %.4, %bb.q ] ; 3 uses
  %i.bq = icmp ult ptr %.478.1, %i.f
  br i1 %i.bq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 91 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  %i.bv = add i8 %i.bu, 1
  store i8 %i.bv, ptr %i.bt, align 1
  %i.bw = sext i8 %i.bu to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  store i8 %i.av, ptr %i.bx, align 1
  store i32 15, ptr %1, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %.478.1, i64 1
  store i8 %i.av, ptr %.478.1, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.4.1, i64 4
  store i32 %.2, ptr %.4.1, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.478.2 = phi ptr [ %i.by, %bb.u ], [ %.478.1, %bb.t ] ; 4 uses
  %.4.2 = phi ptr [ %i.bz, %bb.u ], [ %.4.1, %bb.t ] ; 3 uses
  %i.ca = icmp ult ptr %.478.2, %i.f
  br i1 %i.ca, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 91 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1             ; 2 uses
  %i.cf = add i8 %i.ce, 1
  store i8 %i.cf, ptr %i.cd, align 1
  %i.cg = sext i8 %i.ce to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 %i.cg
  store i8 0, ptr %i.ch, align 1
  store i32 15, ptr %1, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.478.2, i64 1
  store i8 0, ptr %.478.2, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.4.2, i64 4
  store i32 %.2, ptr %.4.2, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.478.3 = phi ptr [ %i.ci, %bb.x ], [ %.478.2, %bb.w ]
  %.4.3 = phi ptr [ %i.cj, %bb.x ], [ %.4.2, %bb.w ]
  %i.ck = add nsw i32 %.2, 1
  %i.cl = and i32 %.170, 2031616
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = add nsw i32 %i.ck, %i.cn
  br label %bb.f, !llvm.loop !11

.sink.split.sink.split:                           ; preds = %bb.h, %bb.j
end_hunk_1
begin_hunk_2_@_ZL26_UTF32ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp ult ptr %i.d, %i.f
  br i1 %i.k, label %.outer.split.us.lr.ph.lr.ph, label %.loopexit

.outer.split.us.lr.ph.lr.ph:                      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.m = icmp eq ptr %i.h, null                   ; 2 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer.outer, %.outer.split.us.lr.ph.lr.ph
  %.088.ph.ph175 = phi i32 [ %i.j, %.outer.split.us.lr.ph.lr.ph ], [ %.2, %.outer.outer ] ; 9 uses
  %.091.ph.ph174 = phi ptr [ %i.d, %.outer.split.us.lr.ph.lr.ph ], [ %.192, %.outer.outer ] ; 12 uses
  br i1 %i.o, label %.critedge, label %.outer.split.us.split.preheader

.outer.split.us.jt8:                              ; preds = %.outer.outer.jt8, %.outer
  %.0.ph.ph176222 = phi i32 [ 0, %.outer ], [ %.1.jt8, %.outer.outer.jt8 ] ; 2 uses
  %.091.ph167.jt8 = phi ptr [ %i.an, %.outer ], [ %.192.jt8, %.outer.outer.jt8 ] ; 2 uses
  %i.p = load i32, ptr %1, align 4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %.split122.us

.outer.split.us.jt5:                              ; preds = %.outer.outer.jt5
  %i.r = load i32, ptr %1, align 4
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.critedge, label %.split.us

.outer.split.us.jt9:                              ; preds = %.outer.outer.jt9
  %i.t = load i32, ptr %1, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.critedge, label %.split125.us

.outer.split.us.split.preheader:                  ; preds = %.outer.split.us
  switch i32 %.088.ph.ph175, label %.outer.outer [
    i32 0, label %bb.b
    i32 1, label %.split.us
    i32 2, label %.split.us
    i32 3, label %.split.us
    i32 5, label %.split.us
    i32 6, label %.split.us
    i32 7, label %.split.us
    i32 8, label %.split122.us.loopexit
    i32 9, label %.split125.us
  ]

bb.b:                                             ; preds = %.outer.split.us.split.preheader
  %i.v = load i8, ptr %.091.ph.ph174, align 1
  switch i8 %i.v, label %.split122.us.loopexit [
    i8 0, label %.loopexit102.split.us.loopexit
    i8 -1, label %.outer.outer.jt5
  ]

.split.us:                                        ; preds = %.outer.split.us.jt5, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader, %.outer.split.us.split.preheader
  %.091.ph167226 = phi ptr [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ], [ %i.bg, %.outer.split.us.jt5 ] ; 3 uses
  %.088.ph168225 = phi i32 [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ], [ %.189.jt5, %.outer.split.us.jt5 ] ; 4 uses
  %i.w = load i8, ptr %.091.ph167226, align 1
  %i.x = zext nneg i32 %.088.ph168225 to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.w, %i.z
  br i1 %i.aa, label %bb.c, label %bb.f

.split122.us.loopexit:                            ; preds = %.outer.split.us.split.preheader, %bb.b
  br label %.split122.us

.split122.us:                                     ; preds = %.split122.us.loopexit, %.outer.split.us.jt8
  %.091.ph167229 = phi ptr [ %.091.ph167.jt8, %.outer.split.us.jt8 ], [ %.091.ph.ph174, %.split122.us.loopexit ]
  %.0.ph.ph176224 = phi i32 [ %.0.ph.ph176222, %.outer.split.us.jt8 ], [ 0, %.split122.us.loopexit ]
  store ptr %.091.ph167229, ptr %i.c, align 8
  br i1 %i.m, label %bb.h, label %bb.i

.split125.us:                                     ; preds = %.outer.split.us.split.preheader, %.outer.split.us.jt9
  %.091.ph167227 = phi ptr [ %.192.jt9, %.outer.split.us.jt9 ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ]
  %.0.ph.ph176221 = phi i32 [ %.1.jt9, %.outer.split.us.jt9 ], [ 0, %.outer.split.us.split.preheader ]
  store ptr %.091.ph167227, ptr %i.c, align 8
  br i1 %i.m, label %bb.k, label %bb.l

.loopexit102.split.us.loopexit:                   ; preds = %bb.b
  br label %.outer.outer.jt5

bb.c:                                             ; preds = %.split.us
  %i.ab = add nuw nsw i32 %.088.ph168225, 1       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.091.ph167226, i64 1 ; 5 uses
  switch i32 %i.ab, label %.outer.outer [
    i32 4, label %bb.d
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.c, align 8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32
  br label %.outer.outer.jt8

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  br label %.outer.outer.jt9

bb.f:                                             ; preds = %.split.us
  %i.an = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ao = ptrtoint ptr %.091.ph167226 to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = and i32 %.088.ph168225, 3               ; 2 uses
  %i.at = icmp eq i32 %i.as, %i.ar
  br i1 %i.at, label %.outer, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load i8, ptr %i.l, align 2
  %i.av = and i32 %.088.ph168225, 4
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.aw ; 2 uses
  store ptr %i.ax, ptr %i.c, align 8
  %i.ay = sub nsw i32 %i.as, %i.ar
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.az
  store ptr %i.ba, ptr %i.e, align 8
  store i8 0, ptr %i.l, align 2
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  store ptr %i.f, ptr %i.e, align 8
  store i8 %i.au, ptr %i.l, align 2
  br label %.outer

.outer:                                           ; preds = %bb.f, %bb.g
  %i.bb = icmp ult ptr %i.an, %i.f
  br i1 %i.bb, label %.outer.split.us.jt8, label %.critedge

bb.h:                                             ; preds = %.split122.us
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.j

bb.i:                                             ; preds = %.split122.us
  tail call void @_ZL44T_UConverter_toUnicode_UTF32_BE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = load ptr, ptr %i.c, align 8
  br label %.outer.outer.jt8

bb.k:                                             ; preds = %.split125.us
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.l:                                             ; preds = %.split125.us
  tail call void @_ZL44T_UConverter_toUnicode_UTF32_LE_OFFSET_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = load ptr, ptr %i.c, align 8
  br label %.outer.outer.jt9

.outer.outer:                                     ; preds = %.outer.split.us.split.preheader, %bb.c
  %.192 = phi ptr [ %i.ac, %bb.c ], [ %.091.ph.ph174, %.outer.split.us.split.preheader ] ; 3 uses
  %.2 = phi i32 [ %i.ab, %bb.c ], [ %.088.ph.ph175, %.outer.split.us.split.preheader ] ; 2 uses
  %i.be = icmp ult ptr %.192, %i.f
  br i1 %i.be, label %.outer.split.us, label %.critedge, !llvm.loop !12

.outer.outer.jt8:                                 ; preds = %bb.j, %bb.d
  %.192.jt8 = phi ptr [ %i.ac, %bb.d ], [ %i.bc, %bb.j ] ; 3 uses
  %.1.jt8 = phi i32 [ %i.ah, %bb.d ], [ %.0.ph.ph176224, %bb.j ] ; 2 uses
  %i.bf = icmp ult ptr %.192.jt8, %i.f
  br i1 %i.bf, label %.outer.split.us.jt8, label %.critedge, !llvm.loop !12

.outer.outer.jt5:                                 ; preds = %.loopexit102.split.us.loopexit, %bb.b
  %.189.jt5 = phi i32 [ 1, %.loopexit102.split.us.loopexit ], [ 5, %bb.b ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.091.ph.ph174, i64 1 ; 4 uses
  %i.bh = icmp ult ptr %i.bg, %i.f
  br i1 %i.bh, label %.outer.split.us.jt5, label %.critedge, !llvm.loop !12

.outer.outer.jt9:                                 ; preds = %bb.e, %bb.m
  %.192.jt9 = phi ptr [ %i.bd, %bb.m ], [ %i.ac, %bb.e ] ; 4 uses
  %.1.jt9 = phi i32 [ %.0.ph.ph176221, %bb.m ], [ %i.am, %bb.e ] ; 3 uses
  %i.bi = icmp ult ptr %.192.jt9, %i.f
  br i1 %i.bi, label %.outer.split.us.jt9, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %.outer.outer, %.outer.outer.jt5, %.outer.split.us, %.outer.split.us.jt5, %.outer.outer.jt9, %.outer.outer.jt8, %.outer, %.outer.split.us.jt9, %.outer.split.us.jt8
  %.us-phi = phi i32 [ %.1.jt9, %.outer.outer.jt9 ], [ 0, %.outer ], [ %.0.ph.ph176222, %.outer.split.us.jt8 ], [ %.1.jt8, %.outer.outer.jt8 ], [ %.1.jt9, %.outer.split.us.jt9 ], [ 0, %.outer.split.us.jt5 ], [ 0, %.outer.split.us ], [ 0, %.outer.outer.jt5 ], [ 0, %.outer.outer ] ; 3 uses
  %.us-phi116 = phi ptr [ %.192.jt9, %.outer.outer.jt9 ], [ %i.an, %.outer ], [ %.091.ph167.jt8, %.outer.split.us.jt8 ], [ %.192.jt8, %.outer.outer.jt8 ], [ %.192.jt9, %.outer.split.us.jt9 ], [ %.192, %.outer.outer ], [ %i.bg, %.outer.outer.jt5 ], [ %.091.ph.ph174, %.outer.split.us ], [ %i.bg, %.outer.split.us.jt5 ] ; 4 uses
  %.us-phi117 = phi i32 [ 9, %.outer.outer.jt9 ], [ 8, %.outer ], [ 8, %.outer.split.us.jt8 ], [ 8, %.outer.outer.jt8 ], [ 9, %.outer.split.us.jt9 ], [ %.2, %.outer.outer ], [ %.189.jt5, %.outer.outer.jt5 ], [ %.088.ph.ph175, %.outer.split.us ], [ %.189.jt5, %.outer.split.us.jt5 ] ; 4 uses
  %i.bj = icmp ne ptr %i.h, null
  %i.bk = icmp ne i32 %.us-phi, 0
  %or.cond = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.critedge
  %i.bl = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.bm = icmp ult ptr %i.h, %i.bl
  br i1 %i.bm, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.bn = ptrtoaddr ptr %i.bl to i64
  %i.bo = ptrtoaddr ptr %i.h to i64
  %i.bp = xor i64 %i.bo, -1
  %i.bq = add i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 28
  br i1 %min.iters.check, label %.lr.ph.preheader259, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.us-phi, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bv ; 3 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load258 = load <4 x i32>, ptr %i.bw, align 4
  %i.bx = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.by = add nsw <4 x i32> %wide.load258, %broadcast.splat
  store <4 x i32> %i.bx, ptr %next.gep, align 4
  store <4 x i32> %i.by, ptr %i.bw, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader259

.lr.ph.preheader259:                              ; preds = %.lr.ph.preheader, %middle.block
  %.090180.ph = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader259, %.lr.ph
  %.090180 = phi ptr [ %i.ca, %.lr.ph ], [ %.090180.ph, %.lr.ph.preheader259 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.090180, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.090180, align 4
  %i.cc = add nsw i32 %i.cb, %.us-phi
  store i32 %i.cc, ptr %.090180, align 4
  %i.cd = icmp ult ptr %i.ca, %i.bl
  br i1 %i.cd, label %.lr.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a, %bb.n, %.critedge
  %.us-phi117235 = phi i32 [ %i.j, %bb.a ], [ %.us-phi117, %.critedge ], [ %.us-phi117, %bb.n ], [ %.us-phi117, %middle.block ], [ %.us-phi117, %.lr.ph ] ; 6 uses
  %.us-phi116234 = phi ptr [ %i.d, %bb.a ], [ %.us-phi116, %.critedge ], [ %.us-phi116, %bb.n ], [ %.us-phi116, %middle.block ], [ %.us-phi116, %.lr.ph ] ; 3 uses
  store ptr %.us-phi116234, ptr %i.c, align 8
  %i.ce = icmp eq ptr %.us-phi116234, %i.f
  br i1 %i.ce, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cg = load i8, ptr %i.cf, align 2
  %.not100 = icmp eq i8 %i.cg, 0
  br i1 %.not100, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.us-phi117235, label %bb.s [
    i32 0, label %bb.t
    i32 8, label %bb.q
    i32 9, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_LEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ch = and i32 %.us-phi117235, 4
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZL8utf32BOM, i64 %i.ci ; 2 uses
  store ptr %i.cj, ptr %i.c, align 8
  %i.ck = and i32 %.us-phi117235, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  store ptr %i.cm, ptr %i.e, align 8
  tail call void @_ZL31T_UConverter_toUnicode_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  store ptr %.us-phi116234, ptr %i.c, align 8
  store ptr %i.f, ptr %i.e, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.o, %.loopexit
  %.3 = phi i32 [ 8, %bb.s ], [ %.us-phi117235, %bb.p ], [ 8, %bb.q ], [ 9, %bb.r ], [ %.us-phi117235, %bb.o ], [ %.us-phi117235, %.loopexit ]
  store i32 %.3, ptr %i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 1114112) i32 @_ZL18_UTF32GetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4
  switch i32 %i.d, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit [
    i32 8, label %bb.b
    i32 9, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp slt i32 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %sext.i = shl i64 %i.k, 32
  %i.o = ashr exact i64 %sext.i, 32               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.o, i1 false)
  %i.p = trunc i64 %i.k to i8
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i8 %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.o
  store ptr %i.s, ptr %i.e, align 8
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.f, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw i32 %i.u, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = or disjoint i32 %i.z, %i.v              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.aa            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.ak, ptr %i.e, align 8
  %i.al = icmp ugt i32 %i.aa, 1114111
  %i.am = and i32 %i.aj, 2095104
  %i.an = icmp eq i32 %i.am, 55296
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond.i, label %bb.f, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.ap = load i32, ptr %i.f, align 1
  store i32 %i.ap, ptr %i.ao, align 1
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i8 4, ptr %i.ar, align 8
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i5 = icmp ult ptr %i.at, %i.av
  br i1 %.not.i5, label %bb.h, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp slt i32 %i.az, 4
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %sext.i10 = shl i64 %i.ay, 32
  %i.bc = ashr exact i64 %sext.i10, 32            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.at, i64 %i.bc, i1 false)
  %i.bd = trunc i64 %i.ay to i8
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i8 %i.bd, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.at, i64 %i.bc
  store ptr %i.bg, ptr %i.as, align 8
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

bb.j:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.at, align 1            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.bi, ptr %i.as, align 8
  %i.bj = icmp ugt i32 %i.bh, 1114111
  %i.bk = and i32 %i.bh, 2095104
  %i.bl = icmp eq i32 %i.bk, 55296
  %or.cond.i9 = or i1 %i.bj, %i.bl
  br i1 %or.cond.i9, label %bb.k, label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.bn = load i32, ptr %i.at, align 1
  store i32 %i.bn, ptr %i.bm, align 1
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i8 4, ptr %i.bp, align 8
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split

_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split: ; preds = %bb.g, %bb.i, %bb.k, %bb.b, %bb.d, %bb.f
  %.sink.i7.sink = phi i32 [ 8, %bb.b ], [ 12, %bb.f ], [ 11, %bb.d ], [ 12, %bb.k ], [ 11, %bb.i ], [ 8, %bb.g ]
  store i32 %.sink.i7.sink, ptr %1, align 4
  br label %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split, %bb.j, %bb.e, %bb.a
  %.0 = phi i32 [ %i.bh, %bb.j ], [ -9, %bb.a ], [ %i.aj, %bb.e ], [ 65535, %_ZL34T_UConverter_getNextUChar_UTF32_BEP23UConverterToUnicodeArgsP10UErrorCode.exit.sink.split ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !6, !15, !14}
end_hunk_2
