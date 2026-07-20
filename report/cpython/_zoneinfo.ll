inline.NumInlined: 123
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@parse_tz_delta:bb.a
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4, !tbaa !6
  %i.d = call fastcc i32 @parse_transition_time(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.f = add i32 %i.e, -25
  %or.cond = icmp ult i32 %i.f, -49
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %i.e to i64
  %.neg = mul nsw i64 %i.g, -3600
  %i.h = load i32, ptr %i.b, align 4, !tbaa !6
  %i.i = mul i32 %i.h, 60
  %i.j = sext i32 %i.i to i64
  %i.k = load i32, ptr %i.c, align 4, !tbaa !6
  %i.l = sext i32 %i.k to i64
  %i.m = add nsw i64 %i.l, %i.j
  %.neg5 = sub nsw i64 %.neg, %i.m
  store i64 %.neg5, ptr %1, align 8, !tbaa !110
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_transition_time(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134    ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !23    ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp eq i8 %i.b, 45
  %spec.select = select i1 %i.c, i32 -1, i32 1
  %i.d = getelementptr i8, ptr %i.a, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.b ]  ; 5 uses
  %.1 = phi i32 [ 1, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  store i32 0, ptr %1, align 4, !tbaa !6
  %i.e = load i8, ptr %.0, align 1, !tbaa !23
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  %i.i = and i32 %i.h, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %parse_digits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %.0, align 1, !tbaa !23
  %i.k = sext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48                    ; 3 uses
  store i32 %i.l, ptr %1, align 4, !tbaa !6
  %i.m = getelementptr i8, ptr %.0, i64 1         ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6
  %i.r = and i32 %i.q, 4
  %.not.i.1 = icmp eq i32 %i.r, 0
  br i1 %.not.i.1, label %parse_digits.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = mul nsw i32 %i.l, 10                     ; 2 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !6
  %i.t = load i8, ptr %i.m, align 1, !tbaa !23
  %i.u = sext i8 %i.t to i32
  %i.v = add nsw i32 %i.s, -48
  %i.w = add nsw i32 %i.v, %i.u                   ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !6
  %i.x = getelementptr i8, ptr %.0, i64 2         ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = and i32 %i.ab, 4
  %.not.i.2 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.2, label %parse_digits.exit.thread, label %parse_digits.exit.thread.loopexit

parse_digits.exit.thread.loopexit:                ; preds = %bb.e
  %i.ad = mul nsw i32 %i.w, 10                    ; 2 uses
  store i32 %i.ad, ptr %1, align 4, !tbaa !6
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !23
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.ad, -48
  %i.ah = add nsw i32 %i.ag, %i.af
  %i.ai = getelementptr i8, ptr %.0, i64 3
  br label %parse_digits.exit.thread

parse_digits.exit.thread:                         ; preds = %bb.d, %bb.e, %parse_digits.exit.thread.loopexit
  %i.aj = phi i32 [ %i.ah, %parse_digits.exit.thread.loopexit ], [ %i.w, %bb.e ], [ %i.l, %bb.d ]
  %.332 = phi ptr [ %i.ai, %parse_digits.exit.thread.loopexit ], [ %i.x, %bb.e ], [ %i.m, %bb.d ] ; 8 uses
  %i.ak = mul nsw i32 %i.aj, %.1
  store i32 %i.ak, ptr %1, align 4, !tbaa !6
  %i.al = load i8, ptr %.332, align 1, !tbaa !23
  %i.am = icmp eq i8 %i.al, 58
  br i1 %i.am, label %bb.f, label %bb.j

bb.f:                                             ; preds = %parse_digits.exit.thread
  %i.an = getelementptr i8, ptr %.332, i64 1      ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6
  %i.as = and i32 %i.ar, 4
  %.not.i17 = icmp eq i32 %i.as, 0
  br i1 %.not.i17, label %parse_digits.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i8, ptr %i.an, align 1, !tbaa !23
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  store i32 %i.av, ptr %2, align 4, !tbaa !6
  %i.aw = getelementptr i8, ptr %.332, i64 2      ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !23
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !6
  %i.bb = and i32 %i.ba, 4
  %.not.i17.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.i17.1, label %parse_digits.exit, label %parse_digits.exit19.thread

parse_digits.exit19.thread:                       ; preds = %bb.g
  %i.bc = mul nsw i32 %i.av, 10                   ; 2 uses
  store i32 %i.bc, ptr %2, align 4, !tbaa !6
  %i.bd = load i8, ptr %i.aw, align 1, !tbaa !23
  %i.be = sext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.bc, -48
  %i.bg = add nsw i32 %i.bf, %i.be
  %i.bh = getelementptr i8, ptr %.332, i64 3      ; 2 uses
  %i.bi = mul nsw i32 %i.bg, %.1
  store i32 %i.bi, ptr %2, align 4, !tbaa !6
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !23
  %i.bk = icmp eq i8 %i.bj, 58
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %parse_digits.exit19.thread
  %i.bl = getelementptr i8, ptr %.332, i64 4      ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !6
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !6
  %i.bq = and i32 %i.bp, 4
  %.not.i22 = icmp eq i32 %i.bq, 0
  br i1 %.not.i22, label %parse_digits.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !23
  %i.bs = sext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  store i32 %i.bt, ptr %3, align 4, !tbaa !6
  %i.bu = getelementptr i8, ptr %.332, i64 5      ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !23
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !6
  %i.bz = and i32 %i.by, 4
  %.not.i22.1 = icmp eq i32 %i.bz, 0
  br i1 %.not.i22.1, label %parse_digits.exit, label %parse_digits.exit24.thread

parse_digits.exit24.thread:                       ; preds = %bb.i
  %i.ca = mul nsw i32 %i.bt, 10                   ; 2 uses
  store i32 %i.ca, ptr %3, align 4, !tbaa !6
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !23
  %i.cc = sext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.ca, -48
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = getelementptr i8, ptr %.332, i64 6
  %i.cg = mul nsw i32 %i.ce, %.1
  store i32 %i.cg, ptr %3, align 4, !tbaa !6
  br label %bb.j

bb.j:                                             ; preds = %parse_digits.exit19.thread, %parse_digits.exit24.thread, %parse_digits.exit.thread
  %.129 = phi ptr [ %i.cf, %parse_digits.exit24.thread ], [ %i.bh, %parse_digits.exit19.thread ], [ %.332, %parse_digits.exit.thread ]
  store ptr %.129, ptr %0, align 8, !tbaa !134
  br label %parse_digits.exit

parse_digits.exit:                                ; preds = %bb.h, %bb.i, %bb.f, %bb.g, %bb.c, %bb.j
  %.011 = phi i32 [ 0, %bb.j ], [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.h ]
  ret i32 %.011
}

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_ttinfo(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 200
  %i.d = load i8, ptr %i.c, align 8, !tbaa !127
  %.not26 = icmp eq i8 %i.d, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 96
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 56
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.g = call fastcc i32 @get_local_timestamp(ptr noundef %2, ptr noundef %i.a)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %find_tzrule_ttinfo.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %2, i64 35
  %i.i = load i8, ptr %i.h, align 1, !tbaa !119   ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 64
  %i.k = zext i8 %i.i to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70   ; 3 uses
  %i.n = getelementptr i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109  ; 3 uses
  %.not25 = icmp eq i64 %i.o, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !110 ; 7 uses
  br i1 %.not25, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.m, align 8, !tbaa !110
  %i.q = icmp slt i64 %.pre, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %1, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111
  br label %find_tzrule_ttinfo.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr [8 x i8], ptr %i.m, i64 %i.o
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !110
  %i.w = icmp sgt i64 %.pre, %i.v
  br i1 %i.w, label %.critedge, label %.lr.ph.i

.critedge:                                        ; preds = %bb.f, %bb.i
  %i.x = getelementptr i8, ptr %1, i64 96         ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 184
  %i.z = load i8, ptr %i.y, align 8, !tbaa !78
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.j, label %find_tzrule_ttinfo.exit

bb.j:                                             ; preds = %.critedge
  %i.aa = getelementptr i8, ptr %2, i64 25
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = getelementptr i8, ptr %2, i64 26
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !23
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !79 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !112
  %i.al = tail call i64 %i.ak(ptr noundef nonnull %i.aj, i32 noundef range(i32 0, 65536) %i.ah) #9, !inline_history !138
  %i.am = getelementptr i8, ptr %1, i64 176
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !112
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull %i.an, i32 noundef range(i32 0, 65536) %i.ah) #9, !inline_history !138
  %i.aq = getelementptr i8, ptr %1, i64 160
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !116 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  %i.at = zext i1 %i.as to i8
  %i.au = icmp eq i8 %i.i, %i.at                  ; 2 uses
  %i.av = sext i32 %i.ar to i64                   ; 2 uses
  %i.aw = select i1 %i.au, i64 0, i64 %i.av
  %.023.i = add i64 %i.aw, %i.al                  ; 3 uses
  %i.ax = select i1 %i.au, i64 %i.av, i64 0
  %.0.i = sub i64 %i.ap, %i.ax                    ; 3 uses
  %i.ay = icmp slt i64 %.023.i, %.0.i
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = icmp sge i64 %.pre, %.023.i
  %i.ba = icmp slt i64 %.pre, %.0.i
  %i.bb = and i1 %i.az, %i.ba
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bc = icmp slt i64 %.pre, %.0.i
  %i.bd = icmp sge i64 %.pre, %.023.i
  %i.be = or i1 %i.bc, %i.bd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.in.i = phi i1 [ %i.bb, %bb.k ], [ %i.be, %bb.l ]
  %.015.idx.i = select i1 %.0.in.i, i64 32, i64 0
  %.015.i = getelementptr i8, ptr %i.x, i64 %.015.idx.i
  br label %find_tzrule_ttinfo.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.013.i = phi i64 [ %.1.i28, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %.01012.i = phi i64 [ %.111.i, %.lr.ph.i ], [ %i.o, %bb.i ] ; 2 uses
  %i.bf = add i64 %.01012.i, %.013.i
  %i.bg = lshr i64 %i.bf, 1                       ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.m, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !110
  %i.bj = icmp sgt i64 %i.bi, %.pre               ; 2 uses
  %i.bk = add nuw i64 %i.bg, 1
  %.111.i = select i1 %i.bj, i64 %i.bg, i64 %.01012.i ; 3 uses
  %.1.i28 = select i1 %i.bj, i64 %.013.i, i64 %i.bk ; 2 uses
  %i.bl = icmp ult i64 %.1.i28, %.111.i
  br i1 %i.bl, label %.lr.ph.i, label %_bisect.exit, !llvm.loop !118

_bisect.exit:                                     ; preds = %.lr.ph.i
  %i.bm = getelementptr i8, ptr %1, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !77
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.111.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  br label %find_tzrule_ttinfo.exit

find_tzrule_ttinfo.exit:                          ; preds = %bb.m, %.critedge, %bb.h, %_bisect.exit, %bb.e
  %.1 = phi ptr [ null, %bb.e ], [ %i.s, %bb.h ], [ %i.bq, %_bisect.exit ], [ %.015.i, %bb.m ], [ %i.x, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.n

bb.n:                                             ; preds = %find_tzrule_ttinfo.exit, %bb.d, %bb.c
  %.2 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %.1, %find_tzrule_ttinfo.exit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @get_local_timestamp(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @PyDateTimeAPI, align 8, !tbaa !22
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !67
  %.not = icmp eq ptr %.val, %i.c
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 25
  %i.f = load i8, ptr %i.e, align 1, !tbaa !23
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr i8, ptr %0, i64 26
  %i.j = load i8, ptr %i.i, align 2, !tbaa !23
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 27
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23    ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 4, !tbaa !23
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr i8, ptr %0, i64 29
  %i.s = load i8, ptr %i.r, align 1, !tbaa !23
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr i8, ptr %0, i64 30
  %i.v = load i8, ptr %i.u, align 2, !tbaa !23
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr i8, ptr %0, i64 31
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  %i.z = zext i8 %i.y to i64
  %i.aa = zext i8 %i.n to i64
  %i.ab = getelementptr [4 x i8], ptr @DAYS_BEFORE_MONTH, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !6  ; 4 uses
  %i.ad = icmp ugt i8 %i.n, 2
  br i1 %i.ad, label %bb.c, label %ymd_to_ord.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = and i32 %i.k, 3
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %is_leap_year.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = trunc nuw i32 %i.l to i16         ; 2 uses
  %i.ag = urem i16 %.lhs.trunc, 100
  %.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i, label %is_leap_year.exit.i, label %is_leap_year.exit.thread13.i

end_hunk_0
