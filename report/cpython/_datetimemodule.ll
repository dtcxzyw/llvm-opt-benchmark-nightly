Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_datetimemodule?download=true
inline.NumInlined: 580
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@datetime_date_fromordinal_impl:bb.a
  %i.r = add nuw nsw i32 %i.q, %i.o
  %i.s = add nuw nsw i32 %i.r, %.sext.i           ; 5 uses
  %i.t = icmp eq i16 %i.j, 1460
  %i.u = icmp eq i32 %i.e, 146096
  %or.cond.i = or i1 %i.u, %i.t
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i32 %i.s, -1
  br label %ord_to_ymd.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp samesign ugt i16 %i.j, 1094
  %i.x = icmp samesign ult i32 %i.h, 35064
  %i.y = icmp samesign ugt i32 %i.e, 109571
  %i.z = select i1 %i.x, i1 true, i1 %i.y
  %i.aa = add nuw nsw i32 %.sext46.i, 50
  %i.ab = lshr i32 %i.aa, 5                       ; 3 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = icmp samesign ugt i16 %i.l, 45
  %i.ag = select i1 %i.af, i1 %i.w, i1 false
  %i.ah = select i1 %i.ag, i1 %i.z, i1 false
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add i32 %i.ae, %i.ai                    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, %.sext46.i
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i32 %i.ab, -1                   ; 3 uses
  %i.am = icmp eq i32 %i.al, 2
  %i.an = and i32 %i.s, 3
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond.i.i = and i1 %i.am, %i.ao
  br i1 %or.cond.i.i, label %bb.g, label %is_leap.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.ap = urem i32 %i.s, 100
  %.not.i.i.i = icmp ne i32 %i.ap, 0
  %i.aq = urem i32 %i.s, 400
  %.not.i.i = icmp eq i32 %i.aq, 0
  %or.cond8.i.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond8.i.i, label %days_in_month.exit.i, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %bb.g, %bb.f
  %i.ar = zext nneg i32 %i.al to i64
  %i.as = getelementptr [4 x i8], ptr @_days_in_month, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  br label %days_in_month.exit.i

days_in_month.exit.i:                             ; preds = %is_leap.exit.thread.i.i, %bb.g
  %.0.i.i = phi i32 [ %i.at, %is_leap.exit.thread.i.i ], [ 29, %bb.g ]
  %i.au = sub i32 %i.aj, %.0.i.i
  br label %bb.h

bb.h:                                             ; preds = %days_in_month.exit.i, %bb.e
  %.08 = phi i32 [ %i.al, %days_in_month.exit.i ], [ %i.ab, %bb.e ]
  %.0.i = phi i32 [ %i.au, %days_in_month.exit.i ], [ %i.aj, %bb.e ]
  %i.av = add nuw nsw i32 %.sext46.i, 1
  %i.aw = sub i32 %i.av, %.0.i
  br label %ord_to_ymd.exit

ord_to_ymd.exit:                                  ; preds = %bb.d, %bb.h
  %.09 = phi i32 [ %i.v, %bb.d ], [ %i.s, %bb.h ] ; 3 uses
  %.1 = phi i32 [ 12, %bb.d ], [ %.08, %bb.h ]    ; 3 uses
  %storemerge.i = phi i32 [ 31, %bb.d ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ax = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ord_to_ymd.exit
  %i.ay = tail call ptr @new_date_ex(i32 noundef %.09, i32 noundef %.1, i32 noundef %storemerge.i, ptr noundef nonnull %0), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.j:                                             ; preds = %ord_to_ymd.exit
  %i.az = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = tail call ptr @new_datetime_ex2(i32 noundef %.09, i32 noundef %.1, i32 noundef %storemerge.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull %0), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %.09, i32 noundef %.1, i32 noundef %storemerge.i) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.l, %bb.k, %bb.i, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.ay, %bb.i ], [ %i.ba, %bb.k ], [ %i.bb, %bb.l ]
  ret ptr %.0
}

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -7, 1) i32 @parse_isoformat_date(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #5 {
.lr.ph.i:
  %i.a = load i8, ptr %0, align 1, !tbaa !35
  %i.b = sext i8 %i.a to i32
  %i.c = add nsw i32 %i.b, -48                    ; 2 uses
  %i.d = icmp ult i32 %i.c, 10
  br i1 %i.d, label %.lr.ph.i.1, label %parse_digits.exit.thread

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.e = getelementptr i8, ptr %0, i64 1
  %i.f = load i32, ptr %2, align 4, !tbaa !7
  %i.g = mul i32 %i.f, 10
  %i.h = add i32 %i.g, %i.c                       ; 2 uses
  store i32 %i.h, ptr %2, align 4, !tbaa !7
  %i.i = load i8, ptr %i.e, align 1, !tbaa !35
  %i.j = sext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ult i32 %i.k, 10
  br i1 %i.l, label %.lr.ph.i.2, label %parse_digits.exit.thread

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.m = getelementptr i8, ptr %0, i64 2
  %i.n = mul i32 %i.h, 10
  %i.o = add i32 %i.n, %i.k                       ; 2 uses
  store i32 %i.o, ptr %2, align 4, !tbaa !7
  %i.p = load i8, ptr %i.m, align 1, !tbaa !35
  %i.q = sext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %.lr.ph.i.3, label %parse_digits.exit.thread

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.t = getelementptr i8, ptr %0, i64 3
  %i.u = mul i32 %i.o, 10
  %i.v = add i32 %i.u, %i.r                       ; 2 uses
  store i32 %i.v, ptr %2, align 4, !tbaa !7
  %i.w = load i8, ptr %i.t, align 1, !tbaa !35
  %i.x = sext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %parse_digits.exit, label %parse_digits.exit.thread

parse_digits.exit:                                ; preds = %.lr.ph.i.3
  %i.aa = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.ab = mul i32 %i.v, 10
  %i.ac = add i32 %i.ab, %i.y                     ; 2 uses
  store i32 %i.ac, ptr %2, align 4, !tbaa !7
  %i.ad = icmp eq ptr %i.aa, null
  br i1 %i.ad, label %parse_digits.exit.thread, label %bb.a

bb.a:                                             ; preds = %parse_digits.exit
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.af = icmp eq i8 %i.ae, 45                    ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 5
  %spec.select = select i1 %i.af, ptr %i.ag, ptr %i.aa ; 6 uses
  %i.ah = load i8, ptr %spec.select, align 1, !tbaa !35 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 87
  br i1 %i.ai, label %.lr.ph.i41, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %bb.a
  %i.aj = sext i8 %i.ah to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %.lr.ph.i51.1, label %parse_digits.exit.thread

.lr.ph.i41:                                       ; preds = %bb.a
  %i.am = getelementptr i8, ptr %spec.select, i64 1
  %scevgep = getelementptr i8, ptr %spec.select, i64 3 ; 4 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 10
  br i1 %i.aq, label %.lr.ph.i41.1, label %parse_digits.exit.thread

.lr.ph.i41.1:                                     ; preds = %.lr.ph.i41
  %i.ar = getelementptr i8, ptr %spec.select, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = sext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %parse_digits.exit45, label %parse_digits.exit.thread

parse_digits.exit45:                              ; preds = %.lr.ph.i41.1
  %i.aw = mul nuw nsw i32 %i.ap, 10
  %i.ax = add nuw nsw i32 %i.au, %i.aw
  %i.ay = icmp eq ptr %scevgep, null
  br i1 %i.ay, label %parse_digits.exit.thread, label %bb.b

bb.b:                                             ; preds = %parse_digits.exit45
  %i.az = ptrtoint ptr %scevgep to i64
  %i.ba = ptrtoint ptr %0 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.bb, %1
  br i1 %i.bc, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.af, label %bb.d, label %.lr.ph.i46

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr i8, ptr %0, i64 9
  %i.be = load i8, ptr %scevgep, align 1, !tbaa !35
  %.not39 = icmp eq i8 %i.be, 45
  br i1 %.not39, label %.lr.ph.i46, label %parse_digits.exit.thread

.lr.ph.i46:                                       ; preds = %bb.c, %bb.d
  %.1 = phi ptr [ %i.bd, %bb.d ], [ %scevgep, %bb.c ] ; 2 uses
  %i.bf = load i8, ptr %.1, align 1, !tbaa !35
  %i.bg = sext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 9
  %scevgep93 = getelementptr i8, ptr %.1, i64 1
  %i.bj = icmp eq ptr %scevgep93, null
  %or.cond = or i1 %i.bi, %i.bj
  br i1 %or.cond, label %parse_digits.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i46, %bb.b
  %.0 = phi i32 [ %i.bh, %.lr.ph.i46 ], [ 1, %bb.b ]
  %i.bk = tail call fastcc i32 @iso_to_ymd(i32 noundef %i.ac, i32 noundef %i.ax, i32 noundef %.0, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not40 = icmp eq i32 %i.bk, 0
  %i.bl = add nsw i32 %i.bk, -3
  %.032 = select i1 %.not40, i32 0, i32 %i.bl
  br label %parse_digits.exit.thread

.lr.ph.i51.1:                                     ; preds = %.lr.ph.i51.preheader
  %i.bm = getelementptr i8, ptr %spec.select, i64 1
  %i.bn = load i32, ptr %3, align 4, !tbaa !7
  %i.bo = mul i32 %i.bn, 10
  %i.bp = add i32 %i.bo, %i.ak                    ; 2 uses
  store i32 %i.bp, ptr %3, align 4, !tbaa !7
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !35
  %i.br = sext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %parse_digits.exit55, label %parse_digits.exit.thread

parse_digits.exit55:                              ; preds = %.lr.ph.i51.1
  %i.bu = getelementptr i8, ptr %spec.select, i64 2 ; 3 uses
  %i.bv = mul i32 %i.bp, 10
  %i.bw = add i32 %i.bv, %i.bs
  store i32 %i.bw, ptr %3, align 4, !tbaa !7
  %i.bx = icmp eq ptr %i.bu, null
  br i1 %i.bx, label %parse_digits.exit.thread, label %bb.f

bb.f:                                             ; preds = %parse_digits.exit55
  br i1 %i.af, label %bb.g, label %.lr.ph.i56

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr i8, ptr %0, i64 8
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !35
  %.not = icmp eq i8 %i.bz, 45
  br i1 %.not, label %.lr.ph.i56, label %parse_digits.exit.thread

.lr.ph.i56:                                       ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.by, %bb.g ], [ %i.bu, %bb.f ] ; 3 uses
  %i.ca = load i8, ptr %.2, align 1, !tbaa !35
  %i.cb = sext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %.lr.ph.i56.1, label %parse_digits.exit.thread

.lr.ph.i56.1:                                     ; preds = %.lr.ph.i56
  %i.ce = getelementptr i8, ptr %.2, i64 1
  %i.cf = load i32, ptr %4, align 4, !tbaa !7
  %i.cg = mul i32 %i.cf, 10
  %i.ch = add i32 %i.cg, %i.cc                    ; 2 uses
  store i32 %i.ch, ptr %4, align 4, !tbaa !7
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !35
  %i.cj = sext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -48                  ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 10
  br i1 %i.cl, label %bb.h, label %parse_digits.exit.thread

bb.h:                                             ; preds = %.lr.ph.i56.1
  %i.cm = getelementptr i8, ptr %.2, i64 2
  %i.cn = mul i32 %i.ch, 10
  %i.co = add i32 %i.cn, %i.ck
  store i32 %i.co, ptr %4, align 4, !tbaa !7
  %i.cp = icmp eq ptr %i.cm, null
  %i.cq = sext i1 %i.cp to i32
  br label %parse_digits.exit.thread

parse_digits.exit.thread:                         ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i51.preheader, %.lr.ph.i51.1, %.lr.ph.i41, %.lr.ph.i41.1, %.lr.ph.i56, %.lr.ph.i56.1, %bb.h, %.lr.ph.i46, %bb.e, %parse_digits.exit45, %bb.d, %parse_digits.exit55, %bb.g, %parse_digits.exit
  %.3 = phi i32 [ -1, %parse_digits.exit ], [ -4, %.lr.ph.i46 ], [ -2, %bb.g ], [ -1, %parse_digits.exit55 ], [ -1, %.lr.ph.i51.preheader ], [ %.032, %bb.e ], [ -3, %parse_digits.exit45 ], [ -2, %bb.d ], [ -1, %.lr.ph.i ], [ -3, %.lr.ph.i41 ], [ -1, %.lr.ph.i56.1 ], [ -1, %.lr.ph.i56 ], [ %i.cq, %bb.h ], [ -3, %.lr.ph.i41.1 ], [ -1, %.lr.ph.i51.1 ], [ -1, %.lr.ph.i.3 ], [ -1, %.lr.ph.i.2 ], [ -1, %.lr.ph.i.1 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -4, 1) i32 @iso_to_ymd(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, -10000
  %or.cond = icmp ult i32 %i.a, -9999
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -53
  %or.cond3 = icmp ult i32 %i.b, -52
  br i1 %or.cond3, label %bb.c, label %is_leap.exit.thread34

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 53
  br i1 %i.c, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %0, -1                       ; 3 uses
  %i.e = mul nuw nsw i32 %i.d, 365
  %i.f = lshr i32 %i.d, 2
  %.neg.i.i.i38.lhs.trunc = trunc nuw nsw i32 %i.d to i16 ; 2 uses
  %.neg.i.i.i3839 = udiv i16 %.neg.i.i.i38.lhs.trunc, 100
  %.neg.i.i.i38.zext = zext nneg i16 %.neg.i.i.i3839 to i32
  %i.g = udiv i16 %.neg.i.i.i38.lhs.trunc, 400
  %.zext41 = zext nneg i16 %i.g to i32
  %i.h = add nuw nsw i32 %i.e, 7
  %i.i = add nuw nsw i32 %i.h, %i.f
  %i.j = sub nsw i32 %i.i, %.neg.i.i.i38.zext
  %i.k = add nsw i32 %i.j, %.zext41
  %i.l = srem i32 %i.k, 7
  switch i32 %i.l, label %.thread [
    i32 3, label %is_leap.exit.thread34
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %0, 3
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc49 = trunc nuw nsw i32 %0 to i16     ; 2 uses
  %i.o = urem i16 %.lhs.trunc49, 100
  %.not.i = icmp ne i16 %i.o, 0
  %i.p = urem i16 %.lhs.trunc49, 400
  %.not = icmp eq i16 %i.p, 0
  %or.cond53 = or i1 %.not.i, %.not
  br i1 %or.cond53, label %is_leap.exit.thread34, label %.thread

is_leap.exit.thread34:                            ; preds = %bb.d, %bb.f, %bb.b
  %i.q = add i32 %2, -8
  %or.cond5 = icmp ult i32 %i.q, -7
  br i1 %or.cond5, label %.thread, label %bb.g

bb.g:                                             ; preds = %is_leap.exit.thread34
  %i.r = add nsw i32 %0, -1                       ; 3 uses
  %i.s = mul nuw nsw i32 %i.r, 365
  %i.t = lshr i32 %i.r, 2
  %i.u = add nuw nsw i32 %i.t, %i.s
  %.neg.i.i.i3245.lhs.trunc = trunc nuw nsw i32 %i.r to i16 ; 2 uses
  %.neg.i.i.i324546 = udiv i16 %.neg.i.i.i3245.lhs.trunc, 100
  %.neg.i.i.i3245.zext = zext nneg i16 %.neg.i.i.i324546 to i32
  %i.v = sub nsw i32 %i.u, %.neg.i.i.i3245.zext
  %i.w = udiv i16 %.neg.i.i.i3245.lhs.trunc, 400
  %.zext48 = zext nneg i16 %i.w to i32
  %i.x = add nsw i32 %i.v, %.zext48               ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  %i.z = add nsw i32 %i.x, 7
  %i.aa = srem i32 %i.z, 7                        ; 2 uses
  %i.ab = sub nsw i32 %i.y, %i.aa                 ; 2 uses
  %i.ac = icmp sgt i32 %i.aa, 3
  %i.ad = add nsw i32 %i.ab, 7
  %spec.select.i = select i1 %i.ac, i32 %i.ad, i32 %i.ab
  %i.ae = mul nuw nsw i32 %1, 7
  %i.af = add nsw i32 %i.ae, -8
  %i.ag = add nsw i32 %i.af, %2
  %i.ah = add nsw i32 %i.ag, %spec.select.i
  tail call fastcc void @ord_to_ymd(i32 noundef %i.ah, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %is_leap.exit.thread34, %bb.a, %bb.g
  %.1 = phi i32 [ -3, %is_leap.exit.thread34 ], [ -4, %bb.a ], [ 0, %bb.g ], [ -2, %bb.c ], [ -2, %bb.f ], [ -2, %bb.d ], [ -2, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @datetime_date_fromisocalendar_impl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !7
  store i32 %3, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = call fastcc i32 @iso_to_ymd(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  switch i32 %i.d, label %bb.e [
    i32 -4, label %bb.b
    i32 -2, label %bb.c
    i32 -3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %i.f) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.110, i32 noundef %2) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.k = load i32, ptr %i.b, align 4, !tbaa !7
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.111, i32 noundef %i.k) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.e:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.a, align 4, !tbaa !7    ; 3 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.p = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @new_date_ex(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull %0), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @new_datetime_ex2(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull %0), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.i:                                             ; preds = %bb.g
  %i.t = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.q, %bb.f ], [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.0
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyImport_Import(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #9

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wrap_strftime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = alloca [28 x i8], align 16               ; 5 uses
  %i.e = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.84) #16 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_XDECREF.exit226, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyUnicodeWriter_Create(i64 noundef 0) #16 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread239, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !60  ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = getelementptr i8, ptr %1, i64 56         ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.bw, %bb.c
  %.0143.ph.ph = phi ptr [ %.2145, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0137.ph.ph = phi ptr [ %.2139, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0131.ph.ph = phi ptr [ %.2133, %bb.bw ], [ null, %bb.c ] ; 24 uses
  %.0125.ph.ph = phi ptr [ %.2127, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0112.ph.ph = phi i64 [ %.1116, %bb.bw ], [ 0, %bb.c ] ; 2 uses
  br label %.outer

.outer.loopexit:                                  ; preds = %normalize_century.exit, %bb.bg, %bb.bm
  br label %.outer
end_hunk_0
