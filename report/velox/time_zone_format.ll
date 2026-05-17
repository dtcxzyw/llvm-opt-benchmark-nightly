inline.NumInlined: 498
inline.NumDeleted: 172
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa:bb.a
  %i.v = add nsw i64 %i.s, %i.u                   ; 3 uses
  %i.w = and i64 %i.v, 3
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit

bb.f:                                             ; preds = %bb.e
  %i.y = srem i64 %i.v, 100
  %.not.i.i = icmp ne i64 %i.y, 0
  %i.z = srem i64 %i.v, 400
  %i.aa = icmp eq i64 %i.z, 0
  %or.cond.i = or i1 %.not.i.i, %i.aa
  %i.ab = select i1 %or.cond.i, i64 366, i64 365
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi i64 [ 365, %bb.e ], [ %i.ab, %bb.f ]
  %i.ad = add nsw i64 %i.ac, %i.m
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ae = add nsw i64 %i.k, -400
  %i.af = add nsw i64 %i.m, 146097
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit, %bb.g, %bb.b, %bb.c
  %.182 = phi i64 [ %i.p, %bb.c ], [ %i.k, %bb.b ], [ %i.s, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit ], [ %i.ae, %bb.g ] ; 4 uses
  %.072 = phi i64 [ %i.q, %bb.c ], [ %i.m, %bb.b ], [ %i.ad, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit ], [ %i.af, %bb.g ] ; 5 uses
  %i.ag = icmp samesign ugt i64 %.072, 365
  br i1 %i.ag, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp sgt i8 %1, 2
  %i.ai = zext i1 %i.ah to i64                    ; 2 uses
  %i.aj = add nsw i64 %.182, %i.ai
  %i.ak = srem i64 %i.aj, 400                     ; 2 uses
  %i.al = trunc nsw i64 %i.ak to i32              ; 2 uses
  %i.am = icmp slt i64 %i.ak, 0
  %i.an = add nsw i32 %i.al, 400
  %i.ao = select i1 %i.am, i32 %i.an, i32 %i.al   ; 4 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp sgt i32 %i.ao, 300
  %i.ar = or i1 %i.ap, %i.aq
  %i.as = select i1 %i.ar, i64 36525, i64 36524   ; 2 uses
  %.not149 = icmp samesign ugt i64 %.072, %i.as
  br i1 %.not149, label %.lr.ph, label %.preheader130.preheader

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %i.at = phi i64 [ %i.ba, %.lr.ph ], [ %i.as, %bb.i ]
  %.173152 = phi i64 [ %i.au, %.lr.ph ], [ %.072, %bb.i ]
  %.283151 = phi i64 [ %i.av, %.lr.ph ], [ %.182, %bb.i ]
  %.092150 = phi i32 [ %spec.select, %.lr.ph ], [ %i.ao, %bb.i ] ; 2 uses
  %i.au = sub nuw nsw i64 %.173152, %i.at         ; 3 uses
  %i.av = add nsw i64 %.283151, 100               ; 2 uses
  %i.aw = icmp sgt i32 %.092150, 299
  %spec.select.v = select i1 %i.aw, i32 -300, i32 100
  %spec.select = add nsw i32 %spec.select.v, %.092150 ; 4 uses
  %i.ax = icmp eq i32 %spec.select, 0
  %i.ay = icmp sgt i32 %spec.select, 300
  %i.az = or i1 %i.ax, %i.ay
  %i.ba = select i1 %i.az, i64 36525, i64 36524   ; 2 uses
  %.not = icmp samesign ugt i64 %i.au, %i.ba
  br i1 %.not, label %.lr.ph, label %.preheader130.preheader

.preheader130.preheader:                          ; preds = %.lr.ph, %bb.i
  %.395.ph = phi i32 [ %i.ao, %bb.i ], [ %spec.select, %.lr.ph ]
  %.485.ph = phi i64 [ %.182, %bb.i ], [ %i.av, %.lr.ph ]
  %.375.ph = phi i64 [ %.072, %bb.i ], [ %i.au, %.lr.ph ]
  br label %.preheader130

.preheader130:                                    ; preds = %.preheader130.preheader, %bb.k
  %.395 = phi i32 [ %spec.select113, %bb.k ], [ %.395.ph, %.preheader130.preheader ] ; 5 uses
  %.485 = phi i64 [ %i.bj, %bb.k ], [ %.485.ph, %.preheader130.preheader ] ; 2 uses
  %.375 = phi i64 [ %i.bi, %bb.k ], [ %.375.ph, %.preheader130.preheader ] ; 3 uses
  %i.bb = icmp eq i32 %.395, 0
  %i.bc = icmp sgt i32 %.395, 300
  %or.cond.i118 = or i1 %i.bb, %i.bc
  br i1 %or.cond.i118, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit, label %bb.j

bb.j:                                             ; preds = %.preheader130
  %i.bd = add nsw i32 %.395, -1
  %i.be = srem i32 %i.bd, 100
  %i.bf = icmp slt i32 %i.be, 96
  %i.bg = select i1 %i.bf, i64 1461, i64 1460
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit: ; preds = %.preheader130, %bb.j
  %i.bh = phi i64 [ %i.bg, %bb.j ], [ 1461, %.preheader130 ] ; 2 uses
  %.not110 = icmp samesign ugt i64 %.375, %i.bh
  br i1 %.not110, label %bb.k, label %.preheader129

bb.k:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit
  %i.bi = sub nuw nsw i64 %.375, %i.bh
  %i.bj = add nsw i64 %.485, 4
  %i.bk = icmp sgt i32 %.395, 395
  %spec.select113.v = select i1 %i.bk, i32 -396, i32 4
  %spec.select113 = add nsw i32 %spec.select113.v, %.395
  br label %.preheader130

.preheader129:                                    ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122
  %.687 = phi i64 [ %i.bu, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122 ], [ %.485, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit ] ; 3 uses
  %.5 = phi i64 [ %i.bt, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122 ], [ %.375, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit ] ; 3 uses
  %i.bl = add i64 %.687, %i.ai                    ; 3 uses
  %i.bm = and i64 %i.bl, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.l, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122

bb.l:                                             ; preds = %.preheader129
  %i.bo = srem i64 %i.bl, 100
  %.not.i.i119 = icmp ne i64 %i.bo, 0
  %i.bp = srem i64 %i.bl, 400
  %i.bq = icmp eq i64 %i.bp, 0
  %or.cond.i120 = or i1 %.not.i.i119, %i.bq
  %i.br = select i1 %or.cond.i120, i64 366, i64 365
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122: ; preds = %.preheader129, %bb.l
  %i.bs = phi i64 [ 365, %.preheader129 ], [ %i.br, %bb.l ] ; 2 uses
  %.not111 = icmp sgt i64 %.5, %i.bs
  %i.bt = sub nsw i64 %.5, %i.bs
  %i.bu = add nsw i64 %.687, 1
  br i1 %.not111, label %.preheader129, label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122, %bb.h
  %.889 = phi i64 [ %.182, %bb.h ], [ %.687, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122 ] ; 2 uses
  %.7 = phi i64 [ %.072, %bb.h ], [ %.5, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122 ] ; 3 uses
  %i.bv = icmp sgt i64 %.7, 28
  br i1 %i.bv, label %.preheader, label %.thread

.preheader:                                       ; preds = %.loopexit, %bb.o
  %.990 = phi i64 [ %spec.select115, %bb.o ], [ %.889, %.loopexit ] ; 5 uses
  %.8 = phi i64 [ %i.cj, %bb.o ], [ %.7, %.loopexit ] ; 3 uses
  %.0 = phi i8 [ %spec.select116, %bb.o ], [ %1, %.loopexit ] ; 4 uses
  %i.bw = sext i8 %.0 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.k_days_per_month, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = icmp eq i8 %.0, 2
  %i.ca = and i64 %.990, 3
  %i.cb = icmp eq i64 %i.ca, 0
  %or.cond.i123 = and i1 %i.cb, %i.bz
  br i1 %or.cond.i123, label %bb.m, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit

bb.m:                                             ; preds = %.preheader
  %i.cc = srem i64 %.990, 100
  %.not.i.i124 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i124, label %bb.n, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = srem i64 %.990, 400
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit: ; preds = %.preheader, %bb.m, %bb.n
  %i.cg = phi i32 [ 0, %.preheader ], [ %i.cf, %bb.n ], [ 1, %bb.m ]
  %i.ch = add nsw i32 %i.cg, %i.by
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %.not112 = icmp sgt i64 %.8, %i.ci
  br i1 %.not112, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit
  %i.cj = sub nsw i64 %.8, %i.ci
  %i.ck = add i8 %.0, 1                           ; 2 uses
  %i.cl = icmp sgt i8 %i.ck, 12                   ; 2 uses
  %i.cm = zext i1 %i.cl to i64
  %spec.select115 = add nsw i64 %.990, %i.cm
  %spec.select116 = select i1 %i.cl, i8 1, i8 %i.ck
  br label %.preheader

.thread:                                          ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit, %.loopexit
  %.12 = phi i64 [ %.889, %.loopexit ], [ %.990, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.10 = phi i64 [ %.7, %.loopexit ], [ %.8, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.3 = phi i8 [ %1, %.loopexit ], [ %.0, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %i.cn = sub nsw i64 %0, %i.a
  %i.co = add i64 %i.cn, %.12
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.co, 0
  %.sroa.7.8.insert.ext = zext i8 %6 to i64
  %.sroa.7.8.insert.shift = shl nuw nsw i64 %.sroa.7.8.insert.ext, 32
  %.sroa.6.8.insert.ext = zext i8 %5 to i64
  %.sroa.6.8.insert.shift = shl nuw nsw i64 %.sroa.6.8.insert.ext, 24
  %.sroa.6.8.insert.insert = or disjoint i64 %.sroa.7.8.insert.shift, %.sroa.6.8.insert.shift
  %.sroa.5.8.insert.ext = zext i8 %4 to i64
  %.sroa.5.8.insert.shift = shl nuw nsw i64 %.sroa.5.8.insert.ext, 16
  %.sroa.5.8.insert.insert = or disjoint i64 %.sroa.6.8.insert.insert, %.sroa.5.8.insert.shift
  %.sroa.4.8.insert.ext = shl i64 %.10, 8
  %.sroa.4.8.insert.shift = and i64 %.sroa.4.8.insert.ext, 65280
  %.sroa.4.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.5.8.insert.insert
  %.sroa.2.8.insert.ext = zext i8 %.3 to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.insert, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i64 noundef %3, i8 noundef signext %4, i8 noundef signext %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = srem i64 %0, 400                         ; 2 uses
  %i.b = srem i64 %3, 400                         ; 2 uses
  %i.c = sub nsw i64 %0, %i.a
  %.neg = sub i64 %i.b, %3
  %i.d = add i64 %.neg, %i.c                      ; 5 uses
  %6 = insertelement <2 x i8> poison, i8 %1, i64 0
  %7 = insertelement <2 x i8> %6, i8 %4, i64 1    ; 2 uses
  %8 = sext <2 x i8> %7 to <2 x i16>
  %i.e = icmp slt i8 %1, 3
  %i.f = sext i1 %i.e to i64
  %i.g = add nsw i64 %i.a, %i.f                   ; 4 uses
  %i.h = add nsw i64 %i.g, 65137
  %i.i = icmp slt i64 %i.g, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 %i.g
  %.lhs.trunc = trunc nuw i64 %i.j to i16
  %i.k = sdiv i16 %.lhs.trunc, 400
  %.sext = sext i16 %i.k to i64                   ; 2 uses
  %.neg.i = mul nsw i64 %.sext, -400
  %i.l = add nsw i64 %.neg.i, %i.g                ; 2 uses
  %9 = icmp sgt <2 x i8> %7, splat (i8 2)
  %i.m = sext i8 %2 to i64
  %.lhs.trunc33 = trunc i64 %i.l to i16
  %i.n = icmp slt i8 %4, 3
  %i.o = sext i1 %i.n to i64
  %i.p = add nsw i64 %i.b, %i.o                   ; 4 uses
  %i.q = add nsw i64 %i.p, 65137
  %i.r = icmp slt i64 %i.p, 0
  %i.s = select i1 %i.r, i64 %i.q, i64 %i.p
  %.lhs.trunc36 = trunc nuw i64 %i.s to i16
  %i.t = sdiv i16 %.lhs.trunc36, 400
  %.sext37 = sext i16 %i.t to i64                 ; 2 uses
  %.neg.i29 = mul nsw i64 %.sext37, -400
  %i.u = add nsw i64 %.neg.i29, %i.p              ; 2 uses
  %10 = select <2 x i1> %9, <2 x i16> splat (i16 -3), <2 x i16> splat (i16 9)
  %11 = add nsw <2 x i16> %10, %8
  %12 = mul nsw <2 x i16> %11, splat (i16 153)
  %13 = add nsw <2 x i16> %12, splat (i16 2)
  %i.v = sext i8 %5 to i64
  %.lhs.trunc38 = trunc i64 %i.u to i16
  %14 = shufflevector <2 x i16> %13, <2 x i16> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = insertelement <6 x i16> %14, i16 %.lhs.trunc33, i64 2
  %16 = insertelement <6 x i16> %15, i16 %.lhs.trunc38, i64 4
  %17 = shufflevector <6 x i16> %16, <6 x i16> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 2, i32 4, i32 4>
  %18 = sdiv <6 x i16> %17, <i16 5, i16 -5, i16 4, i16 -100, i16 -4, i16 100>
  %reass.add = sub nsw i64 %i.l, %i.u
  %reass.mul = mul nsw i64 %reass.add, 365
  %reass.add51 = sub nsw i64 %.sext, %.sext37
  %reass.mul52 = mul nsw i64 %reass.add51, 146097
  %.neg48 = sub nsw i64 %i.m, %i.v
  %19 = sext <6 x i16> %18 to <6 x i64>
  %20 = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %19)
  %i.w = add i64 %20, %reass.mul52
  %i.x = add nsw i64 %reass.mul, %.neg48
  %i.y = add i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp sgt i64 %i.d, 0
  %i.aa = icmp slt i64 %i.y, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = add nsw i64 %i.y, 292194
  %i.ac = add nsw i64 %i.d, -800
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ad = icmp slt i64 %i.d, 0
  %i.ae = icmp sgt i64 %i.y, 0
  %or.cond3 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = add nsw i64 %i.y, -292194
  %i.ag = add nsw i64 %i.d, 800
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.025 = phi i64 [ %i.ac, %bb.b ], [ %i.ag, %bb.d ], [ %i.d, %bb.c ]
  %.0 = phi i64 [ %i.ab, %bb.b ], [ %i.af, %bb.d ], [ %i.y, %bb.c ]
  %i.ah = sdiv i64 %.025, 400
  %i.ai = mul nsw i64 %i.ah, 146097
  %i.aj = add nsw i64 %i.ai, %.0
  ret i64 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 %0, i64 %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub nsw i64 0, %2
  %.sroa.22.8.extract.trunc.i = trunc i64 %1 to i8
  %.sroa.5.8.extract.shift.i = lshr i64 %1, 16
  %.sroa.5.8.extract.trunc.i = trunc i64 %.sroa.5.8.extract.shift.i to i8
  %.sroa.6.8.extract.shift.i = lshr i64 %1, 24
  %.sroa.6.8.extract.trunc.i = trunc i64 %.sroa.6.8.extract.shift.i to i8
  %.sroa.7.8.extract.shift.i = lshr i64 %1, 32
  %.sroa.7.8.extract.trunc.i = trunc i64 %.sroa.7.8.extract.shift.i to i8
  %i.b = shl i64 %1, 48
  %i.c = ashr i64 %i.b, 56
  %i.d = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %0, i8 noundef signext %.sroa.22.8.extract.trunc.i, i64 noundef %i.c, i64 noundef %i.a, i8 noundef signext %.sroa.5.8.extract.trunc.i, i8 noundef signext %.sroa.6.8.extract.trunc.i, i8 noundef signext %.sroa.7.8.extract.trunc.i) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.22.8.extract.trunc.i34 = trunc i64 %1 to i8
  %.sroa.5.8.extract.shift.i35 = lshr i64 %1, 16
  %.sroa.5.8.extract.trunc.i36 = trunc i64 %.sroa.5.8.extract.shift.i35 to i8
  %.sroa.6.8.extract.shift.i37 = lshr i64 %1, 24
  %.sroa.6.8.extract.trunc.i38 = trunc i64 %.sroa.6.8.extract.shift.i37 to i8
  %.sroa.7.8.extract.shift.i39 = lshr i64 %1, 32
  %.sroa.7.8.extract.trunc.i40 = trunc i64 %.sroa.7.8.extract.shift.i39 to i8
  %i.e = shl i64 %1, 48
  %i.f = ashr i64 %i.e, 56
  %i.g = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %0, i8 noundef signext %.sroa.22.8.extract.trunc.i34, i64 noundef %i.f, i64 noundef 9223372036854775807, i8 noundef signext %.sroa.5.8.extract.trunc.i36, i8 noundef signext %.sroa.6.8.extract.trunc.i38, i8 noundef signext %.sroa.7.8.extract.trunc.i40) #19 ; 2 uses
  %.fca.1.extract.i41 = extractvalue { i64, i64 } %i.g, 1 ; 5 uses
  %.fca.0.extract1 = extractvalue { i64, i64 } %i.g, 0
  %.sroa.22.8.extract.trunc.i44 = trunc i64 %.fca.1.extract.i41 to i8
  %.sroa.5.8.extract.shift.i45 = lshr i64 %.fca.1.extract.i41, 16
  %.sroa.5.8.extract.trunc.i46 = trunc i64 %.sroa.5.8.extract.shift.i45 to i8
  %.sroa.6.8.extract.shift.i47 = lshr i64 %.fca.1.extract.i41, 24
  %.sroa.6.8.extract.trunc.i48 = trunc i64 %.sroa.6.8.extract.shift.i47 to i8
  %.sroa.7.8.extract.shift.i49 = lshr i64 %.fca.1.extract.i41, 32
  %.sroa.7.8.extract.trunc.i50 = trunc i64 %.sroa.7.8.extract.shift.i49 to i8
  %i.h = shl i64 %.fca.1.extract.i41, 48
  %i.i = ashr i64 %i.h, 56
  %i.j = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.fca.0.extract1, i8 noundef signext %.sroa.22.8.extract.trunc.i44, i64 noundef %i.i, i64 noundef 1, i8 noundef signext %.sroa.5.8.extract.trunc.i46, i8 noundef signext %.sroa.6.8.extract.trunc.i48, i8 noundef signext %.sroa.7.8.extract.trunc.i50) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, i64 } [ %i.j, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.3.0.in.in = extractvalue { i64, i64 } %.pn, 1
  %.sroa.3.0.in = and i64 %.sroa.3.0.in.in, 65535
  %.fca.1.insert = insertvalue { i64, i64 } %.pn, i64 %.sroa.3.0.in, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @strptime(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #20
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !72

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  store i8 %i.v, ptr %i.t, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !14
  store i8 %i.w, ptr %i.m, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !11
  %i.x = load ptr, ptr %0, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !14
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEEl(i64 %0, i64 %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp eq i64 %2, -9223372036854775808
  %sext.i34 = shl i64 %1, 56
  %i.a = ashr exact i64 %sext.i34, 56             ; 2 uses
  %i.b = shl i64 %1, 48
  %i.c = ashr i64 %i.b, 56                        ; 2 uses
  %i.d = shl i64 %1, 40
  %i.e = ashr i64 %i.d, 56                        ; 2 uses
  %i.f = shl i64 %1, 32
  %i.g = ashr i64 %i.f, 56                        ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i64 %2, -60
  %i.i = add nsw i64 %i.g, %i.h
  %i.j = shl i64 %1, 24
  %i.k = ashr i64 %i.j, 56
  %i.l = srem i64 %2, 60
  %i.m = sub nsw i64 %i.k, %i.l
  %i.n = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %0, i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.i, i64 noundef %i.m) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = add nsw i64 %i.g, 153722867280912930
  %i.p = shl i64 %1, 24
  %i.q = ashr i64 %i.p, 56
  %i.r = add nsw i64 %i.q, 7
  %i.s = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %0, i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.o, i64 noundef %i.r) #19 ; 2 uses
  %.fca.1.extract.i35 = extractvalue { i64, i64 } %i.s, 1 ; 5 uses
  %.fca.0.extract1 = extractvalue { i64, i64 } %i.s, 0
  %sext.i38 = shl i64 %.fca.1.extract.i35, 56
  %i.t = ashr exact i64 %sext.i38, 56
  %i.u = shl i64 %.fca.1.extract.i35, 48
  %i.v = ashr i64 %i.u, 56
  %i.w = shl i64 %.fca.1.extract.i35, 40
  %i.x = ashr i64 %i.w, 56
  %i.y = shl i64 %.fca.1.extract.i35, 32
  %i.z = ashr i64 %i.y, 56
  %.sroa.25.8.insert.ext.i36 = shl i64 %.fca.1.extract.i35, 24
  %i.aa = ashr i64 %.sroa.25.8.insert.ext.i36, 56
  %i.ab = add nsw i64 %i.aa, 1
  %i.ac = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %.fca.0.extract1, i64 noundef %i.t, i64 noundef %i.v, i64 noundef %i.x, i64 noundef %i.z, i64 noundef %i.ab) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, i64 } [ %i.ac, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.sroa.3.0.in = extractvalue { i64, i64 } %.pn, 1
  %.sroa.3.8.insert.ext = and i64 %.sroa.3.0.in, 1099511627775
  %.fca.1.insert = insertvalue { i64, i64 } %.pn, i64 %.sroa.3.8.insert.ext, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v6i64(<6 x i64>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS2_9time_zone15absolute_lookupE: argument 0"}
!17 = distinct !{!17, !"_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS2_9time_zone15absolute_lookupE"}
!18 = !{!19, !5, i64 9}
!19 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail10civil_timeINS3_10second_tagEEE", !20, i64 0}
!20 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail6fieldsE", !13, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12}
!21 = !{!19, !5, i64 8}
!22 = !{!23, !4, i64 16}
!23 = !{!"_ZTS2tm", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !13, i64 40, !9, i64 48}
!24 = !{!19, !13, i64 0}
!25 = !{!23, !4, i64 20}
!26 = !{!27, !27, i64 0}
!27 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail7weekdayE", !5, i64 0}
!28 = !{!23, !4, i64 24}
!29 = !{!23, !4, i64 28}
!30 = !{!31, !32, i64 20}
!31 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz9time_zone15absolute_lookupE", !19, i64 0, !4, i64 16, !32, i64 20, !9, i64 24}
!32 = !{!"bool", !5, i64 0}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!23, !4, i64 32}
!36 = !{!12, !9, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = distinct !{!42, !38}
!43 = !{!13, !13, i64 0}
!44 = !{!19, !5, i64 10}
!45 = !{!19, !5, i64 11}
!46 = !{!19, !5, i64 12}
!47 = !{!31, !4, i64 16}
!48 = !{!31, !9, i64 24}
!49 = !{!50, !13, i64 0}
!50 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE", !13, i64 0}
!51 = distinct !{!51, !38}
!52 = !{!53, !13, i64 0}
!53 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail10civil_timeINS3_7day_tagEEE", !20, i64 0}
!54 = !{!53, !5, i64 8}
!55 = !{!53, !5, i64 9}
!56 = distinct !{!56, !38}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = distinct !{!61, !38}
!62 = distinct !{!62, !38}
!63 = !{!23, !4, i64 8}
!64 = distinct !{!64, !38}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTSN4absl12lts_2024011613time_internal4cctz9time_zone4ImplE", !10, i64 0}
!67 = !{!23, !4, i64 0}
!68 = !{!23, !4, i64 12}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38}
!71 = !{!23, !4, i64 4}
!72 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
