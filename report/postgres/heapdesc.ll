Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/heapdesc?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
begin_hunk_0_@heap_desc:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = add i32 %i.bf, -1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bj, 32
  br i1 %i.bk, label %bb.k, label %truncate_flags_desc.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = add i32 %i.bf, -2                       ; 2 uses
  store i32 %i.bl, ptr %i.be, align 8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bd, i64 %i.bm
  store i8 0, ptr %i.bn, align 1
  br label %truncate_flags_desc.exit

truncate_flags_desc.exit:                         ; preds = %bb.j, %bb.k
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext 93) #5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %i.bp) #5
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.br = load i32, ptr %i.bo, align 4
  tail call void @array_desc(ptr noundef nonnull %0, ptr noundef nonnull %i.bq, i64 noundef 4, i32 noundef %i.br, ptr noundef nonnull @oid_elem_desc, ptr noundef null) #5
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.bs = load i16, ptr %i.d, align 2
  %i.bt = zext i16 %i.bs to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %i.bt) #5
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.bu = load i32, ptr %i.d, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bw = load i16, ptr %i.bv, align 4
  %i.bx = zext i16 %i.bw to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.bu, i32 noundef %i.bx) #5
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bz = load i8, ptr %i.by, align 2
  tail call fastcc void @infobits_desc(ptr noundef %0, i8 noundef zeroext %i.bz, ptr noundef nonnull @.str.2)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %i.cc) #5
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.cd = load i16, ptr %i.d, align 4
  %i.ce = zext i16 %i.cd to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %i.ce) #5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.cn = load i8, ptr %i.cm, align 4, !range !4, !noundef !5
  %i.co = trunc nuw i8 %i.cn to i1
  tail call void @standby_desc_invalidations(ptr noundef %0, i32 noundef %i.cg, ptr noundef nonnull %i.ch, i32 noundef %i.cj, i32 noundef %i.cl, i1 noundef zeroext %i.co) #5
  br label %bb.o

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.c, %bb.e, %bb.l, %bb.n, %bb.m, %truncate_flags_desc.exit, %bb.d, %bb.b
  ret void
}

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @infobits_desc(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %2) #5
  %i.a = zext i8 %1 to i32                        ; 5 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.42) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = and i32 %i.a, 2
  %.not17 = icmp eq i32 %i.c, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.43) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = and i32 %i.a, 4
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.44) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.e = and i32 %i.a, 8
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.45) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.f = and i32 %i.a, 16
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.46) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = add i32 %i.i, -1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 32
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.o = add i32 %i.i, -2                         ; 2 uses
  store i32 %i.o, ptr %i.h, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.p
  store i8 0, ptr %i.q, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext 93) #5
  ret void
}

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @array_desc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @oid_elem_desc(ptr noundef, ptr noundef, ptr noundef) #3

declare void @standby_desc_invalidations(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @heap2_desc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load i8, ptr %i.g, align 8               ; 3 uses
  %i.i = and i8 %i.h, 112                         ; 2 uses
  %i.j = icmp eq i8 %i.i, 32
  %i.k = and i8 %i.h, 80
  %i.l = icmp eq i8 %i.k, 16
  %or.cond5 = or i1 %i.l, %i.j
  br i1 %or.cond5, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.m = load i16, ptr %i.f, align 2              ; 2 uses
  %i.n = and i16 %i.m, 8
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.0.copyload = load i32, ptr %i.o, align 2
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %.0.copyload) #5
  %.pre = load i16, ptr %i.f, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i16 [ %.pre, %bb.c ], [ %i.m, %bb.b ]
  %i.q = and i16 %i.p, 2
  %.not75 = icmp eq i16 %i.q, 0
  %i.r = select i1 %.not75, i32 70, i32 84
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %i.r) #5
  %i.s = load i16, ptr %i.f, align 2
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 256
  %.not76 = icmp eq i32 %i.u, 0
  br i1 %.not76, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %2 = lshr i32 %i.t, 8
  %spec.select = and i32 %2, 3
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %spec.select) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 135
  %i.x = load i8, ptr %i.w, align 1, !range !4, !noundef !5
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.ad

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.z = call ptr @XLogRecGetBlockData(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef nonnull %i.a) #5 ; 3 uses
  %i.aa = load i16, ptr %i.f, align 2
  %i.ab = zext i16 %i.aa to i32                   ; 4 uses
  %i.ac = and i32 %i.ab, 16
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.z, align 4             ; 2 uses
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ag = zext i16 %i.ad to i64
  %i.ah = mul nuw nsw i64 %i.ag, 12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.098 = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.g ]  ; 3 uses
  %.0 = phi ptr [ %i.af, %bb.h ], [ null, %bb.g ]
  %.0.i = phi ptr [ %i.ai, %bb.h ], [ %i.z, %bb.g ] ; 3 uses
  %i.aj = and i32 %i.ab, 32
  %.not45.i = icmp eq i32 %i.aj, 0
  br i1 %.not45.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i16, ptr %.0.i, align 2            ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.an = zext i16 %i.ak to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0104 = phi ptr [ %i.am, %bb.j ], [ null, %bb.i ]
  %.0101 = phi i32 [ %i.al, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.1.i = phi ptr [ %i.ap, %bb.j ], [ %.0.i, %bb.i ] ; 3 uses
  %i.aq = and i32 %i.ab, 64
  %.not46.i = icmp eq i32 %i.aq, 0
  br i1 %.not46.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i16, ptr %.1.i, align 2            ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i, i64 2 ; 2 uses
  %i.au = zext i16 %i.ar to i64
  %i.av = shl nuw nsw i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0103 = phi ptr [ %i.at, %bb.l ], [ null, %bb.k ]
  %.099 = phi i32 [ %i.as, %bb.l ], [ 0, %bb.k ]  ; 3 uses
  %.2.i = phi ptr [ %i.aw, %bb.l ], [ %.1.i, %bb.k ] ; 3 uses
  %i.ax = and i32 %i.ab, 128
  %.not47.i = icmp eq i32 %i.ax, 0
  br i1 %.not47.i, label %heap_xlog_deserialize_prune_and_freeze.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load i16, ptr %.2.i, align 2            ; 2 uses
  %i.az = zext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %.2.i, i64 2 ; 2 uses
  %i.bb = zext i16 %i.ay to i64
  %i.bc = shl nuw nsw i64 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  br label %heap_xlog_deserialize_prune_and_freeze.exit

heap_xlog_deserialize_prune_and_freeze.exit:      ; preds = %bb.m, %bb.n
  %.0102 = phi ptr [ %i.ba, %bb.n ], [ null, %bb.m ]
  %.0100 = phi i32 [ %i.az, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %.3.i = phi ptr [ %i.bd, %bb.n ], [ %.2.i, %bb.m ]
  store ptr %.3.i, ptr %i.b, align 8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %.098, i32 noundef %.0101, i32 noundef %.099, i32 noundef %.0100) #5
  %.not105 = icmp eq i32 %.098, 0
  br i1 %.not105, label %bb.p, label %bb.o

bb.o:                                             ; preds = %heap_xlog_deserialize_prune_and_freeze.exit
  call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.14) #5
  call void @array_desc(ptr noundef %0, ptr noundef %.0, i64 noundef 12, i32 noundef %.098, ptr noundef nonnull @plan_elem_desc, ptr noundef nonnull %i.b) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %heap_xlog_deserialize_prune_and_freeze.exit
  %.not106 = icmp eq i32 %.0101, 0
  br i1 %.not106, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.15) #5
  call void @array_desc(ptr noundef %0, ptr noundef %.0104, i64 noundef 4, i32 noundef %.0101, ptr noundef nonnull @redirect_elem_desc, ptr noundef null) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not107 = icmp eq i32 %.099, 0
  br i1 %.not107, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.16) #5
  call void @array_desc(ptr noundef %0, ptr noundef %.0103, i64 noundef 2, i32 noundef %.099, ptr noundef nonnull @offset_elem_desc, ptr noundef null) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not108 = icmp eq i32 %.0100, 0
  br i1 %.not108, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.17) #5
  call void @array_desc(ptr noundef %0, ptr noundef %.0102, i64 noundef 2, i32 noundef %.0100, ptr noundef nonnull @offset_elem_desc, ptr noundef null) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ad

bb.w:                                             ; preds = %bb.a
  switch i8 %i.i, label %bb.ad [
    i8 80, label %bb.x
    i8 96, label %bb.ab
    i8 112, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  %i.be = icmp sgt i8 %i.h, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = zext i16 %i.bg to i32
  %i.bi = load i8, ptr %i.f, align 2
  %i.bj = zext i8 %i.bi to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %i.bh, i32 noundef %i.bj) #5
  %i.bk = load i8, ptr %i.f, align 2
  %i.bl = and i8 %i.bk, 32
  %.not73 = icmp eq i8 %i.bl, 0
  br i1 %.not73, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef 3) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bm = load ptr, ptr %i.c, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 135
  %i.bo = load i8, ptr %i.bn, align 1, !range !4, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond7.not = and i1 %i.be, %i.bp
  br i1 %or.cond7.not, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.19) #5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.br = load i16, ptr %i.bf, align 2
  %i.bs = zext i16 %i.br to i32
  tail call void @array_desc(ptr noundef %0, ptr noundef nonnull %i.bq, i64 noundef 2, i32 noundef %i.bs, ptr noundef nonnull @offset_elem_desc, ptr noundef null) #5
  br label %bb.ad

bb.ab:                                            ; preds = %bb.w
  %i.bt = load i32, ptr %i.f, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = zext i16 %i.bv to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.bt, i32 noundef %i.bw) #5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.by = load i8, ptr %i.bx, align 2
  tail call fastcc void @infobits_desc(ptr noundef %0, i8 noundef zeroext %i.by, ptr noundef nonnull @.str.2)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %i.cb) #5
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.val = load i16, ptr %i.ci, align 4
  %i.cj = getelementptr i8, ptr %i.f, i64 30
  %.val78 = load i16, ptr %i.cj, align 2
  %i.ck = zext i16 %.val to i32
  %i.cl = shl nuw i32 %i.ck, 16
  %i.cm = zext i16 %.val78 to i32
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = getelementptr i8, ptr %i.f, i64 32
  %.val79 = load i16, ptr %i.co, align 4
  %i.cp = zext i16 %.val79 to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %i.cd, i32 noundef %i.cf, i32 noundef %i.ch, i32 noundef %i.cn, i32 noundef %i.cp) #5
end_hunk_0
