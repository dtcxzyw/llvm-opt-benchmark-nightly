Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/solver?download=true
inline.NumInlined: 528
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL6Solver12write_dimacsEPKci:bb.a
  %i.bj = call noundef zeroext i1 @_ZN7CaDiCaL4File3putEi(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i32 noundef %.sroa.speculated) ; 0 uses
  %i.bk = load ptr, ptr %i.aj, align 8, !tbaa !229
  %i.bl = call i32 @putc(i32 noundef 32, ptr noundef %i.bk)
  %.not33 = icmp eq i32 %i.bl, -1
  br i1 %.not33, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.o

bb.o:                                             ; preds = %_ZN7CaDiCaL4File3putEPKc.exit
  %i.bm = load i64, ptr %i.ak, align 8, !tbaa !230
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.ak, align 8, !tbaa !230
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %bb.o, %_ZN7CaDiCaL4File3putEPKc.exit
  %i.bo = load i64, ptr %i.ae, align 8, !tbaa !227
  %i.bp = call noundef zeroext i1 @_ZN7CaDiCaL4File3putEl(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 noundef %i.bo) ; 0 uses
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !229
  %i.br = call i32 @putc(i32 noundef 10, ptr noundef %i.bq)
  %.not34 = icmp eq i32 %i.br, -1
  br i1 %.not34, label %_ZN7CaDiCaL4File3putEc.exit31, label %bb.p

bb.p:                                             ; preds = %_ZN7CaDiCaL4File3putEc.exit
  %i.bs = load i64, ptr %i.ak, align 8, !tbaa !230
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.ak, align 8, !tbaa !230
  br label %_ZN7CaDiCaL4File3putEc.exit31

_ZN7CaDiCaL4File3putEc.exit31:                    ; preds = %bb.p, %_ZN7CaDiCaL4File3putEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7CaDiCaL12ClauseWriterE, i64 16), ptr %4, align 8, !tbaa !208
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ah, ptr %i.bu, align 8, !tbaa !232
  %i.bv = call noundef zeroext i1 @_ZNK7CaDiCaL6Solver16traverse_clausesERNS_14ClauseIteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.bv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN7CaDiCaL4File3putEc.exit31
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5608
  %i.by = call noundef ptr (ptr, ptr, ...) @_ZN7CaDiCaL6Format4initEPKcz(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull @.str.105, ptr noundef %1)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN7CaDiCaL4File3putEc.exit31
  %.0 = phi ptr [ null, %_ZN7CaDiCaL4File3putEc.exit31 ], [ %i.by, %bb.q ]
  call void @_ZN7CaDiCaL4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ah) #23
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 5608
  %i.cb = call noundef ptr (ptr, ptr, ...) @_ZN7CaDiCaL6Format4initEPKcz(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull @.str.106, ptr noundef %1)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1 = phi ptr [ %.0, %bb.r ], [ %i.cb, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret ptr %.1
}

declare noundef i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7CaDiCaL4File3putEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 5 uses
  switch i32 %1, label %.lr.ph.preheader [
    i32 0, label %bb.b
    i32 -2147483648, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229
  %i.d = tail call i32 @putc(i32 noundef 48, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !230
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !230
  br label %_ZN7CaDiCaL4File3putEc.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.k = tail call i32 @putc(i32 noundef 45, ptr noundef %i.j)
  %.not9.not.i = icmp eq i32 %i.k, -1
  br i1 %.not9.not.i, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.i, align 8, !tbaa !230
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.i, align 8, !tbaa !230
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.o = tail call i32 @putc(i32 noundef 50, ptr noundef %i.n)
  %.not9.not.i.1 = icmp eq i32 %i.o, -1
  br i1 %.not9.not.i.1, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.i, align 8, !tbaa !230
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.i, align 8, !tbaa !230
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.s = tail call i32 @putc(i32 noundef 49, ptr noundef %i.r)
  %.not9.not.i.2 = icmp eq i32 %i.s, -1
  br i1 %.not9.not.i.2, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.i, align 8, !tbaa !230
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.i, align 8, !tbaa !230
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.w = tail call i32 @putc(i32 noundef 52, ptr noundef %i.v)
  %.not9.not.i.3 = icmp eq i32 %i.w, -1
  br i1 %.not9.not.i.3, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.i, align 8, !tbaa !230
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.i, align 8, !tbaa !230
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.aa = tail call i32 @putc(i32 noundef 55, ptr noundef %i.z)
  %.not9.not.i.4 = icmp eq i32 %i.aa, -1
  br i1 %.not9.not.i.4, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !230
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ae = tail call i32 @putc(i32 noundef 52, ptr noundef %i.ad)
  %.not9.not.i.5 = icmp eq i32 %i.ae, -1
  br i1 %.not9.not.i.5, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !230
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ai = tail call i32 @putc(i32 noundef 56, ptr noundef %i.ah)
  %.not9.not.i.6 = icmp eq i32 %i.ai, -1
  br i1 %.not9.not.i.6, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !230
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.am = tail call i32 @putc(i32 noundef 51, ptr noundef %i.al)
  %.not9.not.i.7 = icmp eq i32 %i.am, -1
  br i1 %.not9.not.i.7, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !230
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.aq = tail call i32 @putc(i32 noundef 54, ptr noundef %i.ap)
  %.not9.not.i.8 = icmp eq i32 %i.aq, -1
  br i1 %.not9.not.i.8, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !230
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.i, align 8, !tbaa !230
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.au = tail call i32 @putc(i32 noundef 52, ptr noundef %i.at)
  %.not9.not.i.9 = icmp eq i32 %i.au, -1
  br i1 %.not9.not.i.9, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i64, ptr %i.i, align 8, !tbaa !230
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !230
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ay = tail call i32 @putc(i32 noundef 56, ptr noundef %i.ax)
  %.not9.not.i.10 = icmp eq i32 %i.ay, -1
  br i1 %.not9.not.i.10, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.i, align 8, !tbaa !230
  br label %_ZN7CaDiCaL4File3putEc.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 0, ptr %i.bb, align 1, !tbaa !194
  %i.bc = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 10, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.024 = phi i32 [ %i.bc, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ] ; 3 uses
  %i.bd = urem i32 %.024, 10
  %i.be = trunc nuw nsw i32 %i.bd to i8
  %i.bf = or disjoint i8 %i.be, 48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !194
  %i.bh = udiv i32 %.024, 10
  %.not14 = icmp samesign ult i32 %.024, 10
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !279

._crit_edge:                                      ; preds = %.lr.ph
  %i.bi = icmp slt i32 %1, 0
  br i1 %i.bi, label %bb.p, label %._crit_edge.thread

bb.p:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !229
  %i.bl = tail call i32 @putc(i32 noundef 45, ptr noundef %i.bk)
  %.not21 = icmp eq i32 %i.bl, -1
  br i1 %.not21, label %_ZN7CaDiCaL4File3putEc.exit15, label %_ZN7CaDiCaL4File3putEc.exit15.thread

_ZN7CaDiCaL4File3putEc.exit15.thread:             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !230
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !230
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN7CaDiCaL4File3putEc.exit15.thread, %._crit_edge
  %2 = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next ; 2 uses
  %3 = load i8, ptr %2, align 1, !tbaa !194       ; 2 uses
  %.not10.i = icmp eq i8 %3, 0
  br i1 %.not10.i, label %_ZN7CaDiCaL4File3putEc.exit15, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i
  %i.br = phi i8 [ %3, %.lr.ph.i ], [ %i.by, %bb.r ]
  %.0611.i16 = phi ptr [ %2, %.lr.ph.i ], [ %i.bx, %bb.r ]
  %i.bs = sext i8 %i.br to i32
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !229
  %i.bu = tail call i32 @putc(i32 noundef %i.bs, ptr noundef %i.bt)
  %.not9.not.i17.not.not = icmp ne i32 %i.bu, -1  ; 3 uses
  br i1 %.not9.not.i17.not.not, label %bb.r, label %_ZN7CaDiCaL4File3putEc.exit15

bb.r:                                             ; preds = %bb.q
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !230
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !230
  %i.bx = getelementptr inbounds nuw i8, ptr %.0611.i16, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !194 ; 2 uses
  %.not.i18 = icmp eq i8 %i.by, 0
  br i1 %.not.i18, label %_ZN7CaDiCaL4File3putEc.exit15, label %bb.q, !llvm.loop !1

_ZN7CaDiCaL4File3putEc.exit15:                    ; preds = %bb.r, %bb.q, %._crit_edge.thread, %bb.p
  %.012 = phi i1 [ false, %bb.p ], [ true, %._crit_edge.thread ], [ %.not9.not.i17.not.not, %bb.q ], [ %.not9.not.i17.not.not, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.c, %bb.b, %_ZN7CaDiCaL4File3putEc.exit15
  %.1 = phi i1 [ true, %bb.c ], [ %.012, %_ZN7CaDiCaL4File3putEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.o ], [ false, %bb.e ], [ false, %bb.n ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.m ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7CaDiCaL4File3putEl(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  switch i64 %1, label %.lr.ph.preheader [
    i64 0, label %bb.b
    i64 -9223372036854775808, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229
  %i.d = tail call i32 @putc(i32 noundef 48, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !230
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !230
  br label %_ZN7CaDiCaL4File3putEc.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 40 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.k = tail call i32 @putc(i32 noundef 45, ptr noundef %i.j)
  %.not9.not.i = icmp eq i32 %i.k, -1
  br i1 %.not9.not.i, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.i, align 8, !tbaa !230
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.i, align 8, !tbaa !230
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.o = tail call i32 @putc(i32 noundef 57, ptr noundef %i.n)
  %.not9.not.i.1 = icmp eq i32 %i.o, -1
  br i1 %.not9.not.i.1, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.i, align 8, !tbaa !230
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.i, align 8, !tbaa !230
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.s = tail call i32 @putc(i32 noundef 50, ptr noundef %i.r)
  %.not9.not.i.2 = icmp eq i32 %i.s, -1
  br i1 %.not9.not.i.2, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.i, align 8, !tbaa !230
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.i, align 8, !tbaa !230
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.w = tail call i32 @putc(i32 noundef 50, ptr noundef %i.v)
  %.not9.not.i.3 = icmp eq i32 %i.w, -1
  br i1 %.not9.not.i.3, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.i, align 8, !tbaa !230
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.i, align 8, !tbaa !230
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.aa = tail call i32 @putc(i32 noundef 51, ptr noundef %i.z)
  %.not9.not.i.4 = icmp eq i32 %i.aa, -1
  br i1 %.not9.not.i.4, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !230
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ae = tail call i32 @putc(i32 noundef 51, ptr noundef %i.ad)
  %.not9.not.i.5 = icmp eq i32 %i.ae, -1
  br i1 %.not9.not.i.5, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !230
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ai = tail call i32 @putc(i32 noundef 55, ptr noundef %i.ah)
  %.not9.not.i.6 = icmp eq i32 %i.ai, -1
  br i1 %.not9.not.i.6, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !230
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.am = tail call i32 @putc(i32 noundef 50, ptr noundef %i.al)
  %.not9.not.i.7 = icmp eq i32 %i.am, -1
  br i1 %.not9.not.i.7, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !230
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.aq = tail call i32 @putc(i32 noundef 48, ptr noundef %i.ap)
  %.not9.not.i.8 = icmp eq i32 %i.aq, -1
  br i1 %.not9.not.i.8, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !230
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.i, align 8, !tbaa !230
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.au = tail call i32 @putc(i32 noundef 51, ptr noundef %i.at)
  %.not9.not.i.9 = icmp eq i32 %i.au, -1
  br i1 %.not9.not.i.9, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i64, ptr %i.i, align 8, !tbaa !230
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !230
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ay = tail call i32 @putc(i32 noundef 54, ptr noundef %i.ax)
  %.not9.not.i.10 = icmp eq i32 %i.ay, -1
  br i1 %.not9.not.i.10, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.i, align 8, !tbaa !230
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.bc = tail call i32 @putc(i32 noundef 56, ptr noundef %i.bb)
  %.not9.not.i.11 = icmp eq i32 %i.bc, -1
  br i1 %.not9.not.i.11, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %i.i, align 8, !tbaa !230
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.i, align 8, !tbaa !230
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.bg = tail call i32 @putc(i32 noundef 53, ptr noundef %i.bf)
  %.not9.not.i.12 = icmp eq i32 %i.bg, -1
  br i1 %.not9.not.i.12, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !230
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.i, align 8, !tbaa !230
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.bk = tail call i32 @putc(i32 noundef 52, ptr noundef %i.bj)
  %.not9.not.i.13 = icmp eq i32 %i.bk, -1
  br i1 %.not9.not.i.13, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !230
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.i, align 8, !tbaa !230
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.bo = tail call i32 @putc(i32 noundef 55, ptr noundef %i.bn)
  %.not9.not.i.14 = icmp eq i32 %i.bo, -1
  br i1 %.not9.not.i.14, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !230
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.i, align 8, !tbaa !230
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.bs = tail call i32 @putc(i32 noundef 55, ptr noundef %i.br)
  %.not9.not.i.15 = icmp eq i32 %i.bs, -1
  br i1 %.not9.not.i.15, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !230
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.i, align 8, !tbaa !230
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.bw = tail call i32 @putc(i32 noundef 53, ptr noundef %i.bv)
  %.not9.not.i.16 = icmp eq i32 %i.bw, -1
  br i1 %.not9.not.i.16, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !230
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.i, align 8, !tbaa !230
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ca = tail call i32 @putc(i32 noundef 56, ptr noundef %i.bz)
  %.not9.not.i.17 = icmp eq i32 %i.ca, -1
  br i1 %.not9.not.i.17, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load i64, ptr %i.i, align 8, !tbaa !230
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.i, align 8, !tbaa !230
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ce = tail call i32 @putc(i32 noundef 48, ptr noundef %i.cd)
  %.not9.not.i.18 = icmp eq i32 %i.ce, -1
  br i1 %.not9.not.i.18, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !230
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.i, align 8, !tbaa !230
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.ci = tail call i32 @putc(i32 noundef 56, ptr noundef %i.ch)
  %.not9.not.i.19 = icmp eq i32 %i.ci, -1
  br i1 %.not9.not.i.19, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !230
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.i, align 8, !tbaa !230
  br label %_ZN7CaDiCaL4File3putEc.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %i.cl, align 4, !tbaa !194
  %i.cm = icmp slt i64 %1, 0
  %i.cn = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 20, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.026 = phi i64 [ %i.cn, %.lr.ph.preheader ], [ %i.cs, %.lr.ph ] ; 3 uses
  %i.co = urem i64 %.026, 10
  %i.cp = trunc nuw nsw i64 %i.co to i8
  %i.cq = or disjoint i8 %i.cp, 48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !194
  %i.cs = udiv i64 %.026, 10
  %.not16 = icmp samesign ult i64 %.026, 10
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !llvm.loop !280

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.cm, label %bb.y, label %._crit_edge.thread

bb.y:                                             ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !229
  %i.cv = tail call i32 @putc(i32 noundef 45, ptr noundef %i.cu)
  %.not23 = icmp eq i32 %i.cv, -1
  br i1 %.not23, label %_ZN7CaDiCaL4File3putEc.exit17, label %_ZN7CaDiCaL4File3putEc.exit17.thread

_ZN7CaDiCaL4File3putEc.exit17.thread:             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !230
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !230
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN7CaDiCaL4File3putEc.exit17.thread, %._crit_edge
  %2 = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next ; 2 uses
  %3 = load i8, ptr %2, align 1, !tbaa !194       ; 2 uses
  %.not10.i = icmp eq i8 %3, 0
  br i1 %.not10.i, label %_ZN7CaDiCaL4File3putEc.exit17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph.i
  %i.db = phi i8 [ %3, %.lr.ph.i ], [ %i.di, %bb.aa ]
  %.0611.i18 = phi ptr [ %2, %.lr.ph.i ], [ %i.dh, %bb.aa ]
  %i.dc = sext i8 %i.db to i32
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !229
  %i.de = tail call i32 @putc(i32 noundef %i.dc, ptr noundef %i.dd)
  %.not9.not.i19.not.not = icmp ne i32 %i.de, -1  ; 3 uses
  br i1 %.not9.not.i19.not.not, label %bb.aa, label %_ZN7CaDiCaL4File3putEc.exit17

bb.aa:                                            ; preds = %bb.z
  %i.df = load i64, ptr %i.da, align 8, !tbaa !230
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !230
  %i.dh = getelementptr inbounds nuw i8, ptr %.0611.i18, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !194 ; 2 uses
  %.not.i20 = icmp eq i8 %i.di, 0
  br i1 %.not.i20, label %_ZN7CaDiCaL4File3putEc.exit17, label %bb.z, !llvm.loop !1

_ZN7CaDiCaL4File3putEc.exit17:                    ; preds = %bb.aa, %bb.z, %._crit_edge.thread, %bb.y
  %.014 = phi i1 [ false, %bb.y ], [ true, %._crit_edge.thread ], [ %.not9.not.i19.not.not, %bb.z ], [ %.not9.not.i19.not.not, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.c, %bb.b, %_ZN7CaDiCaL4File3putEc.exit17
  %.1 = phi i1 [ true, %bb.c ], [ %.014, %_ZN7CaDiCaL4File3putEc.exit17 ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.x ], [ false, %bb.e ], [ false, %bb.w ], [ false, %bb.f ], [ false, %bb.q ], [ false, %bb.g ], [ false, %bb.v ], [ false, %bb.h ], [ false, %bb.o ], [ false, %bb.i ], [ false, %bb.u ], [ false, %bb.j ], [ false, %bb.r ], [ false, %bb.k ], [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.s ], [ false, %bb.n ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7CaDiCaL6Solver15write_extensionEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CaDiCaL::WitnessWriter", align 8 ; 6 uses
  tail call void @_ZN7CaDiCaL37require_solver_pointer_to_be_non_zeroEPKvPKcS3_(ptr noundef nonnull %0, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver15write_extensionEPKc, ptr noundef nonnull @.str.16)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver15write_extensionEPKc, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.18, i64 31, i64 1, ptr %i.e) #27 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.g = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.f) ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver15write_extensionEPKc, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite11 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 31, i64 1, ptr %i.n) #27 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.p = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.o) ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.r = tail call i32 @fflush(ptr noundef %i.q)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !11
  %i.u = and i32 %i.t, 110
  %.not12 = icmp eq i32 %i.u, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7CaDiCaL6Solver15write_extensionEPKc, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 23, i64 1, ptr %i.x) #27 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.z = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.y) ; 0 uses
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ab = tail call i32 @fflush(ptr noundef %i.aa) ; 0 uses
  tail call void @abort() #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = tail call noundef ptr @_ZN7CaDiCaL4File5writeEPNS_8InternalEPKc(ptr noundef nonnull %i.k, ptr noundef %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7CaDiCaL13WitnessWriterE, i64 16), ptr %2, align 8, !tbaa !208
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !235
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !236
  %.not14 = icmp eq ptr %i.ac, null
  br i1 %.not14, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = call noundef zeroext i1 @_ZNK7CaDiCaL6Solver27traverse_witnesses_backwardERNS_15WitnessIteratorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 5608
  %i.ai = call noundef ptr (ptr, ptr, ...) @_ZN7CaDiCaL6Format4initEPKcz(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull @.str.105, ptr noundef %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ %i.ai, %bb.i ]
  call void @_ZN7CaDiCaL4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ac) #23
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #25
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 5608
  %i.al = tail call noundef ptr (ptr, ptr, ...) @_ZN7CaDiCaL6Format4initEPKcz(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull @.str.107, ptr noundef %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi ptr [ %.0, %bb.j ], [ %i.al, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7CaDiCaL6Solver4copyERS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CaDiCaL::ClauseCopier", align 8 ; 5 uses
  %3 = alloca %"struct.CaDiCaL::WitnessCopier", align 8 ; 5 uses
  tail call void @_ZN7CaDiCaL37require_solver_pointer_to_be_non_zeroEPKvPKcS3_(ptr noundef nonnull %0, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK7CaDiCaL6Solver4copyERS0_, ptr noundef nonnull @.str.16)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK7CaDiCaL6Solver4copyERS0_, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.18, i64 31, i64 1, ptr %i.e) #27 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.g = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.f) ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not8 = icmp eq ptr %i.k, null
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK7CaDiCaL6Solver4copyERS0_, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite9 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 31, i64 1, ptr %i.n) #27 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.p = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.o) ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.r = tail call i32 @fflush(ptr noundef %i.q)  ; 0 uses
  tail call void @abort() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !11   ; 2 uses
  %i.u = and i32 %i.t, 110
  %.not10 = icmp eq i32 %i.u, 0
  br i1 %.not10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK7CaDiCaL6Solver4copyERS0_, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite11 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 23, i64 1, ptr %i.x) #27 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.z = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.y) ; 0 uses
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ab = tail call i32 @fflush(ptr noundef %i.aa) ; 0 uses
  tail call void @abort() #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not12 = icmp eq i32 %i.t, 8
  br i1 %.not12, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK7CaDiCaL6Solver4copyERS0_, ptr noundef nonnull @.str.16) #26 ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !170
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 46, i64 1, ptr %i.ae) #27 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ag = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.af) ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.ai = tail call i32 @fflush(ptr noundef %i.ah) ; 0 uses
  tail call void @abort() #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !11
  %i.al = and i32 %i.ak, 2
  %.not14 = icmp eq i32 %i.al, 0
  br i1 %.not14, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !170
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK7CaDiCaL6Solver4copyERS0_, ptr noundef nonnull @.str.16) #26 ; 0 uses
end_hunk_0
