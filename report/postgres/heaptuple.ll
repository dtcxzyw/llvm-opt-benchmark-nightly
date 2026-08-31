Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/heaptuple?download=true
inline.NumInlined: 132
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@nocachegetattr:bb.a
bb.an:                                            ; preds = %.split.i, %bb.ai
  %i.ii = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.ij = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef range(i32 -32768, 32768) %i.hx) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.6, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #12
  unreachable

bb.ao:                                            ; preds = %bb.ah
  %i.ik = ptrtoint ptr %i.ht to i64
  br label %fetch_att.exit

fetch_att.exit:                                   ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ao
  %.0.i126 = phi i64 [ %i.ic, %bb.aj ], [ %i.ie, %bb.ak ], [ %i.ig, %bb.al ], [ %i.ih, %bb.am ], [ %i.ik, %bb.ao ]
  ret i64 %.0.i126
}

; Function Attrs: nounwind uwtable
define dso_local i64 @heap_getsysattr(ptr noundef %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #0 {
bb.a:
  store i8 0, ptr %3, align 1
  switch i32 %1, label %bb.g [
    i32 -1, label %bb.b
    i32 -2, label %bb.c
    i32 -4, label %bb.d
    i32 -3, label %bb.e
    i32 -5, label %bb.e
    i32 -6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = ptrtoint ptr %i.a to i64
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.val = load i32, ptr %i.d, align 4
  %i.e = zext i32 %.val to i64
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val8 = load i32, ptr %i.h, align 4
  %i.i = zext i32 %.val8 to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val9 = load i32, ptr %i.l, align 4
  %i.m = zext i32 %.val9 to i64
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.q = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %1) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 669, ptr noundef nonnull @__func__.heap_getsysattr) #12
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.e, %bb.c ], [ %i.i, %bb.d ], [ %i.m, %bb.e ], [ %i.p, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @heap_copytuple(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 24
  %i.g = tail call ptr @palloc(i64 noundef %i.f) #12 ; 6 uses
  %i.h = load i32, ptr %0, align 8
  store i32 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.i, ptr noundef nonnull align 4 dereferenceable(6) %i.j, i64 6, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = load i32, ptr %0, align 8
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 4 %i.p, i64 %i.r, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @heap_copytuple_with_tuple(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.d, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8
  store i32 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.f, ptr noundef nonnull align 4 dereferenceable(6) %i.g, i64 6, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.i, ptr %i.j, align 4
  %i.k = load i32, ptr %0, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr @palloc(i64 noundef %i.l) #12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = load i32, ptr %0, align 8
  %i.q = zext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %i.o, i64 %i.q, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @minimal_expand_tuple(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call fastcc void @expand_tuple(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %1)
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_tuple(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %.val152 = load ptr, ptr %i.d, align 8          ; 4 uses
  %i.e = getelementptr i8, ptr %.val152, i64 20   ; 3 uses
  %.val152.val = load i16, ptr %i.e, align 4
  %i.f = trunc i16 %.val152.val to i1             ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val152, i64 18
  %i.h = load i16, ptr %i.g, align 2              ; 3 uses
  %i.i = and i16 %i.h, 2047                       ; 2 uses
  %i.j = zext nneg i16 %i.i to i32                ; 10 uses
  %i.k = load i32, ptr %3, align 8                ; 12 uses
  %i.l = load i32, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.val152, i64 22 ; 2 uses
  %i.n = load i8, ptr %i.m, align 2
  %i.o = zext i8 %i.n to i32
  %i.p = sub i32 %i.l, %i.o
  %i.q = zext i32 %i.p to i64                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.lhs.trunc = add nuw nsw i16 %i.i, 7
  %i.r = lshr i16 %.lhs.trunc, 3
  %narrow = select i1 %i.f, i16 %i.r, i16 0       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread159, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 8 uses
  %.not146 = icmp eq ptr %i.v, null
  br i1 %.not146, label %.thread159, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.w = icmp sgt i32 %i.k, %i.j
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.x = and i16 %i.h, 2047                       ; 2 uses
  %i.y = zext nneg i16 %i.x to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 8, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = zext nneg i16 %i.x to i32
  br i1 %i.ab, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.y, 1 ; 2 uses
  %exitcond.peel.not = icmp eq i64 %indvars.iv.next.peel, %wide.trip.count
  br i1 %exitcond.peel.not, label %.thread159, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next.peel, %bb.c ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 8, !range !4, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %._crit_edge.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread159, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.preheader, %.preheader
  %.0136.lcssa = phi i32 [ %i.j, %.preheader ], [ %i.ac, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit ] ; 2 uses
  %.0133.lcssa = phi i1 [ %i.f, %.preheader ], [ %i.f, %.lr.ph.preheader ], [ true, %._crit_edge.loopexit ] ; 2 uses
  %i.ah = icmp slt i32 %.0136.lcssa, %i.k
  br i1 %i.ah, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = sext i32 %.0136.lcssa to i64
  %wide.trip.count191 = sext i32 %i.k to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph178, %bb.o
  %indvars.iv189 = phi i64 [ %i.aj, %.lr.ph178 ], [ %indvars.iv.next190, %bb.o ] ; 3 uses
  %.0131176 = phi i64 [ %i.q, %.lr.ph178 ], [ %.1, %bb.o ] ; 4 uses
  %.1134175 = phi i1 [ %.0133.lcssa, %.lr.ph178 ], [ %.2135, %bb.o ]
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.v, i64 %indvars.iv189 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !4, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv189 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.ao, align 2            ; 3 uses
  %i.aq = icmp eq i16 %i.ap, -1
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = inttoptr i64 %i.as to ptr               ; 3 uses
  %.val = load i8, ptr %i.at, align 1             ; 3 uses
  %i.au = trunc i8 %.val to i1
  br i1 %i.au, label %.thread, label %.thread156

.thread156:                                       ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = add i64 %.0131176, -1
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = sub nsw i64 0, %i.ax
  %i.bb = and i64 %i.az, %i.ba
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64                    ; 2 uses
  %i.bf = add i64 %.0131176, -1
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = sub nsw i64 0, %i.be
  %i.bi = and i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = icmp sgt i16 %i.ap, 0
  br i1 %i.bj, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bk = zext nneg i16 %i.ap to i64
  br label %VARSIZE_ANY.exit

.thread:                                          ; preds = %bb.g, %.thread156
  %.ph = phi i64 [ %i.bb, %.thread156 ], [ %.0131176, %bb.g ] ; 3 uses
  %i.bl = zext i8 %.val to i32                    ; 2 uses
  %i.bm = icmp eq i8 %.val, 1
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.bn = getelementptr i8, ptr %i.at, i64 1
  %.val.i = load i8, ptr %i.bn, align 1           ; 2 uses
  %i.bo = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.bo, 3
  %i.bp = icmp eq i8 %.val.i, 18
  %i.bq = select i1 %i.bp, i64 18, i64 2
  %i.br = select i1 %or.cond.i.i.i, i64 10, i64 %i.bq
  br label %VARSIZE_ANY.exit

bb.k:                                             ; preds = %.thread
  %i.bs = and i32 %i.bl, 1
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = lshr i32 %i.bl, 1
  %i.bu = zext nneg i32 %i.bt to i64
  br label %VARSIZE_ANY.exit

bb.m:                                             ; preds = %bb.k
  %i.bv = load i32, ptr %i.at, align 4
  %i.bw = lshr i32 %i.bv, 2
  %i.bx = zext nneg i32 %i.bw to i64
  br label %VARSIZE_ANY.exit

bb.n:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ca) #13
  %i.cc = add i64 %i.cb, 1
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.m, %bb.l, %bb.j, %bb.n, %bb.i
  %i.cd = phi i64 [ %i.bi, %bb.i ], [ %i.bi, %bb.n ], [ %.ph, %bb.j ], [ %.ph, %bb.l ], [ %.ph, %bb.m ]
  %.pn = phi i64 [ %i.bk, %bb.i ], [ %i.cc, %bb.n ], [ %i.br, %bb.j ], [ %i.bu, %bb.l ], [ %i.bx, %bb.m ]
  %i.ce = add i64 %.pn, %i.cd
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %VARSIZE_ANY.exit
  %.2135 = phi i1 [ %.1134175, %VARSIZE_ANY.exit ], [ true, %bb.e ] ; 2 uses
  %.1 = phi i64 [ %i.ce, %VARSIZE_ANY.exit ], [ %.0131176, %bb.e ] ; 2 uses
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge179, label %bb.e, !llvm.loop !16

._crit_edge179:                                   ; preds = %bb.o, %._crit_edge
  %.1134.lcssa = phi i1 [ %.0133.lcssa, %._crit_edge ], [ %.2135, %bb.o ]
  %.0131.lcssa = phi i64 [ %i.q, %._crit_edge ], [ %.1, %bb.o ] ; 2 uses
  br i1 %.1134.lcssa, label %.thread159, label %bb.p

.thread159:                                       ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %._crit_edge179
  %.2166 = phi i64 [ %.0131.lcssa, %._crit_edge179 ], [ %i.q, %bb.b ], [ %i.q, %bb.a ], [ %i.q, %bb.c ], [ %i.q, %bb.d ]
  %.0139164 = phi ptr [ %i.v, %._crit_edge179 ], [ null, %bb.b ], [ null, %bb.a ], [ %i.v, %bb.c ], [ %i.v, %bb.d ]
  %i.cf = add i32 %i.k, 7                         ; 2 uses
  %i.cg = sdiv i32 %i.cf, 8
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp sgt i32 %i.cf, 7
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge179, %.thread159
  %.2165 = phi i64 [ %.2166, %.thread159 ], [ %.0131.lcssa, %._crit_edge179 ] ; 2 uses
  %.0139163 = phi ptr [ %.0139164, %.thread159 ], [ %i.v, %._crit_edge179 ] ; 2 uses
  %.0132 = phi i1 [ %i.ci, %.thread159 ], [ false, %._crit_edge179 ] ; 3 uses
  %.0130 = phi i64 [ %i.ch, %.thread159 ], [ 0, %._crit_edge179 ] ; 2 uses
  %.not147 = icmp eq ptr %0, null
  br i1 %.not147, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = add nsw i64 %.0130, 30
  %i.ck = and i64 %i.cj, -8                       ; 3 uses
  %i.cl = add i64 %i.ck, %.2165                   ; 2 uses
  %i.cm = add i64 %i.cl, 24
  %i.cn = tail call ptr @palloc0(i64 noundef %i.cm) #12 ; 11 uses
  store ptr %i.cn, ptr %0, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = trunc i64 %i.cl to i32                  ; 2 uses
  %i.cr = load ptr, ptr %0, align 8
  store i32 %i.cq, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = load ptr, ptr %0, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 %i.ct, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.cx, ptr noundef nonnull align 4 dereferenceable(6) %i.cy, i64 6, i1 false)
  %i.cz = load i16, ptr %i.e, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 44 ; 2 uses
  store i16 %i.cz, ptr %i.da, align 4
  %i.db = trunc i64 %i.ck to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 46
  store i8 %i.db, ptr %i.dc, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 42 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = and i16 %i.de, -2048
  %i.dg = trunc i32 %i.k to i16
  %i.dh = or i16 %i.df, %i.dg
  store i16 %i.dh, ptr %i.dd, align 2
  %i.di = shl i32 %i.cq, 2
  store i32 %i.di, ptr %i.co, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  store i32 %i.dn, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 36
  store i16 -1, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cn, i64 38
  store i16 -1, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i16 0, ptr %i.dr, align 8
  %.pre = load ptr, ptr %0, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  br i1 %.0132, label %bb.r, label %._crit_edge199

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 23 ; 2 uses
  store ptr %i.du, ptr %i.a, align 8
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %bb.q, %bb.r
  %i.dv = phi ptr [ %i.du, %bb.r ], [ null, %bb.q ]
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 %i.ck ; 2 uses
  store ptr %i.dw, ptr %i.c, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.dx = add nsw i64 %.0130, 22
  %i.dy = and i64 %i.dx, -8                       ; 3 uses
  %i.dz = add i64 %i.dy, %.2165                   ; 2 uses
  %i.ea = tail call ptr @palloc0(i64 noundef %i.dz) #12 ; 2 uses
  store ptr %i.ea, ptr %1, align 8
  %i.eb = trunc i64 %i.dz to i32
  store i32 %i.eb, ptr %i.ea, align 4
  %i.ec = trunc i64 %i.dy to i8
  %i.ed = add i8 %i.ec, 8
  %i.ee = load ptr, ptr %1, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 14
  store i8 %i.ed, ptr %i.ef, align 2
  %i.eg = load i16, ptr %i.e, align 4
  %i.eh = load ptr, ptr %1, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i16 %i.eg, ptr %i.ei, align 4
  %i.ej = load ptr, ptr %1, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 10 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = and i16 %i.el, -2048
  %i.en = trunc i32 %i.k to i16
  %i.eo = or i16 %i.em, %i.en
  store i16 %i.eo, ptr %i.ek, align 2
  %.pre201 = load ptr, ptr %1, align 8            ; 3 uses
  br i1 %.0132, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %.pre201, i64 15 ; 2 uses
  store ptr %i.ep, ptr %i.a, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eq = phi ptr [ %i.ep, %bb.t ], [ null, %bb.s ]
  %i.er = getelementptr inbounds i8, ptr %.pre201, i64 %i.dy ; 2 uses
  store ptr %i.er, ptr %i.c, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %.pre201, i64 12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge199
  %i.et = phi ptr [ %i.dw, %._crit_edge199 ], [ %i.er, %bb.u ] ; 3 uses
  %i.eu = phi ptr [ %i.dv, %._crit_edge199 ], [ %i.eq, %bb.u ] ; 4 uses
  %.0 = phi ptr [ %i.da, %._crit_edge199 ], [ %i.es, %bb.u ] ; 9 uses
  br i1 %.0132, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %.not167 = icmp eq i16 %narrow, 0
  br i1 %.not167, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %.val152, i64 23
  %i.ew = zext nneg i16 %narrow to i64            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr nonnull align 1 %i.ev, i64 %i.ew, i1 false)
  %i.ex = getelementptr i8, ptr %i.eu, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 -1
  store ptr %i.ey, ptr %i.a, align 8
  %.pre205 = add nuw nsw i32 %i.j, 7
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.ez = add nuw nsw i32 %i.j, 7                 ; 3 uses
  %i.fa = lshr i32 %i.ez, 3
  %i.fb = zext nneg i32 %i.fa to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eu, i8 -1, i64 %i.fb, i1 false)
  %i.fc = getelementptr i8, ptr %i.eu, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -1     ; 2 uses
  store ptr %i.fd, ptr %i.a, align 8
  %i.fe = and i32 %i.j, 7                         ; 2 uses
  %.not149 = icmp eq i32 %i.fe, 0
  br i1 %.not149, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = shl nuw nsw i32 255, %i.fe
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = xor i8 %i.fg, -1
  store i8 %i.fh, ptr %i.fd, align 1
  %.pre202.pre = load ptr, ptr %i.c, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.pre-phi = phi i32 [ %i.ez, %bb.y ], [ %i.ez, %bb.z ], [ %.pre205, %bb.x ]
  %.pre202 = phi ptr [ %i.et, %bb.y ], [ %.pre202.pre, %bb.z ], [ %i.et, %bb.x ]
  %i.fi = and i32 %.pre-phi, 7
  %i.fj = shl nuw nsw i32 1, %i.fi                ; 2 uses
  store i32 %i.fj, ptr %i.b, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.promoted = phi i32 [ %i.fj, %bb.aa ], [ 0, %bb.v ] ; 3 uses
  %i.fk = phi ptr [ %.pre202, %bb.aa ], [ %i.et, %bb.v ] ; 2 uses
  %i.fl = load ptr, ptr %i.d, align 8
  %i.fm = load i8, ptr %i.m, align 2
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr align 1 %i.fo, i64 %i.q, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.q
  store ptr %i.fp, ptr %i.c, align 8
  %i.fq = icmp sgt i32 %i.k, %i.j
  br i1 %i.fq, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.ab
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.not150 = icmp eq ptr %.0139163, null
  br i1 %.not150, label %.lr.ph184.split.us, label %.lr.ph184.split.preheader

.lr.ph184.split.preheader:                        ; preds = %.lr.ph184
  %i.fs = and i16 %i.h, 2047
  %i.ft = zext nneg i16 %i.fs to i64
  %wide.trip.count196 = zext nneg i32 %i.k to i64
  br label %.lr.ph184.split

.lr.ph184.split.us:                               ; preds = %.lr.ph184
  %.promoted187 = load ptr, ptr %i.a, align 8     ; 3 uses
  %i.fu = sub i32 %i.k, %i.j
  %.neg = add nuw nsw i32 %i.j, 1
  %xtraiter = and i32 %i.fu, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph184.split.us
  %.not78.i.us.prol = icmp eq i32 %.promoted, 128
  br i1 %.not78.i.us.prol, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.prol.preheader
  %i.fv = shl nuw nsw i32 %.promoted, 1
  br label %fill_val.exit.us.prol

bb.ad:                                            ; preds = %.prol.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %.promoted187, i64 1 ; 2 uses
  store i8 0, ptr %i.fw, align 1
  br label %fill_val.exit.us.prol

fill_val.exit.us.prol:                            ; preds = %bb.ad, %bb.ac
  %i.fx = phi ptr [ %i.fw, %bb.ad ], [ %.promoted187, %bb.ac ]
  %storemerge.i.us.prol = phi i32 [ 1, %bb.ad ], [ %i.fv, %bb.ac ]
  %i.fy = load i16, ptr %.0, align 2
  %i.fz = or i16 %i.fy, 1
  store i16 %i.fz, ptr %.0, align 2
  %i.ga = add nuw nsw i32 %i.j, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %fill_val.exit.us.prol, %.lr.ph184.split.us
  %.unr = phi ptr [ %.promoted187, %.lr.ph184.split.us ], [ %i.fx, %fill_val.exit.us.prol ]
  %storemerge.i.us186.unr = phi i32 [ %.promoted, %.lr.ph184.split.us ], [ %storemerge.i.us.prol, %fill_val.exit.us.prol ]
  %.1138182.us.unr = phi i32 [ %i.j, %.lr.ph184.split.us ], [ %i.ga, %fill_val.exit.us.prol ]
  %i.gb = icmp eq i32 %i.k, %.neg
  br i1 %i.gb, label %._crit_edge185, label %.lr.ph184.split.us.new

.lr.ph184.split.us.new:                           ; preds = %.prol.loopexit, %fill_val.exit.us.1
  %i.gc = phi ptr [ %i.gk, %fill_val.exit.us.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %storemerge.i.us186 = phi i32 [ %storemerge.i.us.1, %fill_val.exit.us.1 ], [ %storemerge.i.us186.unr, %.prol.loopexit ] ; 2 uses
  %.1138182.us = phi i32 [ %i.gn, %fill_val.exit.us.1 ], [ %.1138182.us.unr, %.prol.loopexit ]
  %.not78.i.us = icmp eq i32 %storemerge.i.us186, 128
  br i1 %.not78.i.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph184.split.us.new
  %i.gd = shl i32 %storemerge.i.us186, 1
  br label %fill_val.exit.us

bb.af:                                            ; preds = %.lr.ph184.split.us.new
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  store i8 0, ptr %i.ge, align 1
  br label %fill_val.exit.us

fill_val.exit.us:                                 ; preds = %bb.af, %bb.ae
  %i.gf = phi ptr [ %i.ge, %bb.af ], [ %i.gc, %bb.ae ] ; 2 uses
  %storemerge.i.us = phi i32 [ 1, %bb.af ], [ %i.gd, %bb.ae ] ; 2 uses
  %i.gg = load i16, ptr %.0, align 2
  %i.gh = or i16 %i.gg, 1
  store i16 %i.gh, ptr %.0, align 2
  %.not78.i.us.1 = icmp eq i32 %storemerge.i.us, 128
  br i1 %.not78.i.us.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %fill_val.exit.us
  %i.gi = shl i32 %storemerge.i.us, 1
  br label %fill_val.exit.us.1

bb.ah:                                            ; preds = %fill_val.exit.us
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  store i8 0, ptr %i.gj, align 1
  br label %fill_val.exit.us.1

fill_val.exit.us.1:                               ; preds = %bb.ah, %bb.ag
  %i.gk = phi ptr [ %i.gj, %bb.ah ], [ %i.gf, %bb.ag ]
  %storemerge.i.us.1 = phi i32 [ 1, %bb.ah ], [ %i.gi, %bb.ag ]
  %i.gl = load i16, ptr %.0, align 2
  %i.gm = or i16 %i.gl, 1
  store i16 %i.gm, ptr %.0, align 2
  %i.gn = add nuw nsw i32 %.1138182.us, 2         ; 2 uses
  %exitcond198.not.1 = icmp eq i32 %i.gn, %i.k
  br i1 %exitcond198.not.1, label %._crit_edge185, label %.lr.ph184.split.us.new, !llvm.loop !17

.lr.ph184.split:                                  ; preds = %.lr.ph184.split.preheader, %bb.am
  %indvars.iv193 = phi i64 [ %i.ft, %.lr.ph184.split.preheader ], [ %indvars.iv.next194, %bb.am ] ; 3 uses
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %.0139163, i64 %indvars.iv193 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 8, !range !4, !noundef !5
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph184.split
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv193
  %i.gs = load ptr, ptr %i.a, align 8
  %.not151 = icmp eq ptr %i.gs, null
  %. = select i1 %.not151, ptr null, ptr %i.a
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gu = load i64, ptr %i.gt, align 8
  call fastcc void @fill_val(ptr noundef nonnull %i.gr, ptr noundef %., ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %.0, i64 noundef %i.gu, i1 noundef zeroext false)
  br label %bb.am

bb.aj:                                            ; preds = %.lr.ph184.split
  %i.gv = load i32, ptr %i.b, align 4             ; 2 uses
  %.not78.i = icmp eq i32 %i.gv, 128
  br i1 %.not78.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gw = shl i32 %i.gv, 1
  br label %fill_val.exit

bb.al:                                            ; preds = %bb.aj
  %i.gx = load ptr, ptr %i.a, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1 ; 2 uses
  store ptr %i.gy, ptr %i.a, align 8
  store i8 0, ptr %i.gy, align 1
  br label %fill_val.exit

fill_val.exit:                                    ; preds = %bb.ak, %bb.al
  %storemerge.i = phi i32 [ 1, %bb.al ], [ %i.gw, %bb.ak ]
  store i32 %storemerge.i, ptr %i.b, align 4
  %i.gz = load i16, ptr %.0, align 2
  %i.ha = or i16 %i.gz, 1
  store i16 %i.ha, ptr %.0, align 2
  br label %bb.am

bb.am:                                            ; preds = %fill_val.exit, %bb.ai
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %._crit_edge185, label %.lr.ph184.split, !llvm.loop !17

._crit_edge185:                                   ; preds = %bb.am, %.prol.loopexit, %fill_val.exit.us.1, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @heap_expand_tuple(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call fastcc void @expand_tuple(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %0, ptr noundef %1)
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_0
