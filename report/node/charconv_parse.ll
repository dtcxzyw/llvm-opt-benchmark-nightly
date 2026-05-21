inline.NumInlined: 38
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::strings_internal::ParsedFloat" = type { i64, i32, i32, i32, ptr, ptr, ptr }

$_ZN4absl16strings_internal10ParseFloatILi10EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE = comdat any

$_ZN4absl16strings_internal10ParseFloatILi16EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE = comdat any

@.str = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"max_digits <= std::numeric_limits<T>::digits10\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/charconv_parse.cc\00", align 1
@__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb = private unnamed_addr constant [124 x i8] c"int absl::(anonymous namespace)::ConsumeDigits(const char *, const char *, int, T *, bool *) [base = 10, T = unsigned long]\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"accumulator * base >= accumulator\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"accumulator + digit >= accumulator\00", align 1
@__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS3_iPT0_Pb = private unnamed_addr constant [114 x i8] c"int absl::(anonymous namespace)::ConsumeDigits(const char *, const char *, int, T *, bool *) [base = 10, T = int]\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"max_digits * 4 <= std::numeric_limits<T>::digits\00", align 1
@__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb = private unnamed_addr constant [124 x i8] c"int absl::(anonymous namespace)::ConsumeDigits(const char *, const char *, int, T *, bool *) [base = 16, T = unsigned long]\00", align 1
@_ZN4absl12_GLOBAL__N_111kAsciiToIntE = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal10ParseFloatILi10EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE(ptr dead_on_unwind noalias writable sret(%"struct.absl::strings_internal::ParsedFloat") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = icmp eq ptr %1, %2
  br i1 %i.f, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_118ParseInfinityOrNanEPKcS2_PNS_16strings_internal11ParsedFloatE(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0)
  br i1 %i.g, label %bb.x, label %.preheader111

.preheader111:                                    ; preds = %bb.b
  %i.h = icmp ult ptr %1, %2
  br i1 %i.h, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader111
  %i.i = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %1, i64 %i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0112 = phi ptr [ %i.l, %bb.c ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.j = load i8, ptr %.0112, align 1
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.0112, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.l, %2
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !5

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.0112, %.lr.ph ], [ %scevgep, %bb.c ] ; 2 uses
  %.pre = ptrtoint ptr %.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader111
  %.0.lcssa120.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.a, %.preheader111 ]
  %.0.lcssa = phi ptr [ %.0.lcssa.ph, %.critedge.loopexit ], [ %1, %.preheader111 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1
  %i.m = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb(ptr noundef %.0.lcssa, ptr noundef %2, i32 noundef 19, ptr noundef %i.c, ptr noundef %i.d) ; 5 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.n ; 5 uses
  %i.p = icmp sgt i32 %i.m, 49999999
  br i1 %i.p, label %bb.w, label %bb.d

bb.d:                                             ; preds = %.critedge
  %4 = icmp sgt i32 %i.m, 19
  %i.q = sub nsw i32 19, %i.m
  %.089 = select i1 %4, i32 0, i32 %i.q           ; 2 uses
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.m, i32 19)
  %.083 = add nsw i32 %i.r, -19                   ; 4 uses
  %i.s = icmp ult ptr %i.o, %2
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.o, align 1
  %i.u = icmp eq i8 %i.t, 46
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 5 uses
  %i.w = load i64, ptr %i.c, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f
  %i.y = icmp ult ptr %i.v, %2
  br i1 %i.y, label %.lr.ph116.preheader, label %.critedge3

.lr.ph116.preheader:                              ; preds = %.preheader
  %i.z = sub i64 %i.b, %.0.lcssa120.pre-phi
  %scevgep121 = getelementptr i8, ptr %.0.lcssa, i64 %i.z
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.g
  %.1115 = phi ptr [ %i.ac, %bb.g ], [ %i.v, %.lr.ph116.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.1115, align 1
  %i.ab = icmp eq i8 %i.aa, 48
  br i1 %i.ab, label %bb.g, label %.critedge3

bb.g:                                             ; preds = %.lr.ph116
  %i.ac = getelementptr inbounds nuw i8, ptr %.1115, i64 1 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %2
  br i1 %i.ad, label %.lr.ph116, label %.critedge3, !llvm.loop !7

.critedge3:                                       ; preds = %.lr.ph116, %bb.g, %.preheader
  %.1.lcssa = phi ptr [ %i.v, %.preheader ], [ %scevgep121, %bb.g ], [ %.1115, %.lr.ph116 ] ; 2 uses
  %i.ae = ptrtoint ptr %.1.lcssa to i64
  %i.af = ptrtoint ptr %i.v to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 50000000
  %i.aj = sub nsw i32 %.083, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.w

bb.h:                                             ; preds = %.critedge3, %bb.f
  %.285 = phi i32 [ %i.aj, %.critedge3 ], [ %.083, %bb.f ]
  %.2 = phi ptr [ %.1.lcssa, %.critedge3 ], [ %i.v, %bb.f ] ; 2 uses
  %i.ak = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb(ptr noundef nonnull %.2, ptr noundef nonnull %2, i32 noundef %.089, ptr noundef %i.c, ptr noundef %i.d) ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %.2, i64 %i.al
  %i.an = icmp slt i32 %i.ak, 50000000
  %.089. = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.089)
  %.386 = sub nsw i32 %.285, %.089.
  br i1 %i.an, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  %.588 = phi i32 [ %.386, %bb.h ], [ %.083, %bb.e ], [ %.083, %bb.d ]
  %.3 = phi ptr [ %i.am, %bb.h ], [ %i.o, %bb.e ], [ %i.o, %bb.d ] ; 9 uses
  %i.ao = icmp eq ptr %1, %.3
  br i1 %i.ao, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = ptrtoint ptr %.3 to i64
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i8, ptr %1, align 1
  %i.at = icmp eq i8 %i.as, 46
  br i1 %i.at, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %1, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.3, ptr %i.aw, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = load i64, ptr %i.c, align 8
  store i64 %i.ax, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.ay, align 4
  %i.az = and i32 %3, 3                           ; 2 uses
  %i.ba = icmp ne i32 %i.az, 2
  %i.bb = icmp ult ptr %.3, %2
  %or.cond = and i1 %i.ba, %i.bb
  br i1 %or.cond, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %.3, align 1
  %i.bd = and i8 %i.bc, -33
  %i.be = icmp eq i8 %i.bd, 69
  br i1 %i.be, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %bb.q, label %.critedge104

bb.q:                                             ; preds = %bb.p
  %i.bh = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 45
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.critedge104

bb.s:                                             ; preds = %bb.q
  %i.bk = icmp eq i8 %i.bh, 43
  %i.bl = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %spec.select = select i1 %i.bk, ptr %i.bl, ptr %i.bf
  br label %.critedge104

.critedge104:                                     ; preds = %bb.s, %bb.p, %bb.r
  %.080.not = phi i1 [ false, %bb.r ], [ true, %bb.p ], [ true, %bb.s ]
  %.4 = phi ptr [ %i.bj, %bb.r ], [ %i.bf, %bb.p ], [ %spec.select, %bb.s ] ; 2 uses
  %i.bm = tail call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS3_iPT0_Pb(ptr noundef nonnull %.4, ptr noundef nonnull %2, ptr noundef nonnull %i.ay) ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.4, i64 %i.bn ; 2 uses
  %.not110 = icmp eq i32 %i.bm, 0                 ; 2 uses
  %brmerge = or i1 %.080.not, %.not110
  br i1 %brmerge, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge104
  %i.bp = load i32, ptr %i.ay, align 4
  %i.bq = sub nsw i32 0, %i.bp
  store i32 %i.bq, ptr %i.ay, align 4
  br label %bb.v

bb.u:                                             ; preds = %.critedge104
  br i1 %.not110, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.o, %bb.n, %bb.u
  %i.br = icmp eq i32 %i.az, 1
  br i1 %i.br, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.t, %.thread, %bb.u
  %.6109 = phi ptr [ %.3, %.thread ], [ %i.bo, %bb.u ], [ %i.bo, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.bs, align 8
  %i.bt = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.bt, 0
  %i.bu = load i32, ptr %i.ay, align 4
  %i.bv = add nsw i32 %i.bu, %.588
  %.sink = select i1 %.not, i32 0, i32 %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6109, ptr %i.bx, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread, %bb.k, %bb.i, %.critedge, %.critedge3, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %bb.w
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_118ParseInfinityOrNanEPKcS2_PNS_16strings_internal11ParsedFloatE(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 3
  br i1 %i.d, label %.critedge40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1
  switch i8 %i.e, label %.critedge40 [
    i8 105, label %bb.c
    i8 73, label %bb.c
    i8 110, label %bb.h
    i8 78, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef nonnull %i.f, ptr noundef nonnull @.str, i64 noundef 2) #6
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %bb.d, label %.critedge40

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.h, align 8
  %i.i = icmp samesign ugt i64 %i.c, 7
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1, i64 noundef 5) #6
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.m, ptr %i.n, align 8
  br label %.critedge40

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.o, ptr %i.p, align 8
  br label %.critedge40

bb.h:                                             ; preds = %bb.b, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.2, i64 noundef 2) #6
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.i, label %.critedge40

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = icmp ult ptr %i.t, %1
  br i1 %i.v, label %bb.j, label %.critedge40

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.t, align 1
  %i.x = icmp eq i8 %i.w, 40
  br i1 %i.x, label %bb.k, label %.critedge40

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = icmp ult ptr %i.y, %1
  br i1 %i.z, label %.lr.ph, label %.critedge40

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.042 = phi ptr [ %i.ah, %bb.l ], [ %i.y, %bb.k ] ; 4 uses
  %i.aa = load i8, ptr %.042, align 1             ; 4 uses
  %i.ab = icmp eq i8 %i.aa, 95
  %i.ac = add i8 %i.aa, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  %or.cond12.i = or i1 %i.ab, %or.cond.i
  %i.ad = and i8 %i.aa, -33
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = or i1 %or.cond12.i, %i.af
  br i1 %i.ag, label %bb.l, label %.critedge
end_hunk_0
begin_hunk_1_@_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb:bb.a
  %scevgep86 = getelementptr i8, ptr %.1.lcssa, i64 %i.aa ; 2 uses
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %bb.i
  %.076 = phi i1 [ %spec.select, %bb.i ], [ false, %.lr.ph77.preheader ] ; 2 uses
  %.275 = phi ptr [ %i.af, %bb.i ], [ %.1.lcssa, %.lr.ph77.preheader ] ; 3 uses
  %i.ab = load i8, ptr %.275, align 1             ; 2 uses
  %i.ac = add i8 %i.ab, -48
  %i.ad = icmp ult i8 %i.ac, 10
  br i1 %i.ad, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %.lr.ph77
  %i.ae = icmp ne i8 %i.ab, 48
  %spec.select = or i1 %.076, %i.ae               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.275, i64 1 ; 2 uses
  %exitcond87.not = icmp eq ptr %i.af, %scevgep86
  br i1 %exitcond87.not, label %.critedge4, label %.lr.ph77, !llvm.loop !13

.critedge4:                                       ; preds = %.lr.ph77, %bb.i
  %.2.lcssa = phi ptr [ %scevgep86, %bb.i ], [ %.275, %.lr.ph77 ] ; 2 uses
  %.0.lcssa = phi i1 [ %spec.select, %bb.i ], [ %.076, %.lr.ph77 ]
  br i1 %.0.lcssa, label %bb.j, label %.critedge4.thread

bb.j:                                             ; preds = %.critedge4
  store i8 1, ptr %4, align 1
  br label %.critedge4.thread

.critedge4.thread:                                ; preds = %.critedge2, %bb.j, %.critedge4
  %.2.lcssa97 = phi ptr [ %.2.lcssa, %.critedge4 ], [ %.2.lcssa, %bb.j ], [ %.1.lcssa, %.critedge2 ]
  store i64 %.045.lcssa, ptr %3, align 8
  %i.ag = ptrtoint ptr %.2.lcssa97 to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = trunc i64 %i.ah to i32
  ret i32 %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS3_iPT0_Pb(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = load i32, ptr %2, align 4
  %.fr = freeze i32 %i.c                          ; 3 uses
  %.not = icmp ne i32 %.fr, 0
  %.not503 = icmp eq ptr %1, %0
  %or.cond4 = or i1 %.not, %.not503
  br i1 %or.cond4, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.d = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.b
  %.0445 = phi ptr [ %i.g, %bb.b ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %i.e = load i8, ptr %.0445, align 1
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split
  %i.g = getelementptr inbounds nuw i8, ptr %.0445, i64 1 ; 2 uses
  %.not50 = icmp eq ptr %1, %i.g
  br i1 %.not50, label %.critedge, label %.lr.ph.split, !llvm.loop !14

.critedge:                                        ; preds = %.lr.ph.split, %bb.b, %bb.a
  %.044.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep, %bb.b ], [ %.0445, %.lr.ph.split ] ; 6 uses
  %i.h = ptrtoint ptr %.044.lcssa to i64          ; 3 uses
  %i.i = sub i64 %i.b, %i.h
  %i.j = icmp sgt i64 %i.i, 9
  %i.k = getelementptr inbounds nuw i8, ptr %.044.lcssa, i64 9
  %i.l = select i1 %i.j, ptr %i.k, ptr %1         ; 3 uses
  %i.m = icmp ult ptr %.044.lcssa, %i.l
  br i1 %i.m, label %.lr.ph15.preheader, label %.critedge2

.lr.ph15.preheader:                               ; preds = %.critedge
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.n, %i.h
  %scevgep26 = getelementptr i8, ptr %.044.lcssa, i64 %i.o
  br label %.lr.ph15

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %bb.e
  %.114 = phi ptr [ %i.w, %bb.e ], [ %.044.lcssa, %.lr.ph15.preheader ] ; 3 uses
  %.04513 = phi i32 [ %i.v, %bb.e ], [ %.fr, %.lr.ph15.preheader ] ; 3 uses
  %i.p = load i8, ptr %.114, align 1              ; 2 uses
  %i.q = add i8 %i.p, -48
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.c, label %.critedge2.loopexit

bb.c:                                             ; preds = %.lr.ph15
  %i.s = mul nsw i32 %.04513, 10                  ; 2 uses
  %.not51 = icmp slt i32 %i.s, %.04513
  br i1 %.not51, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS3_iPT0_Pb) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = zext nneg i8 %i.p to i32
  %i.u = add i32 %i.s, -48
  %i.v = add i32 %i.u, %i.t                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.114, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.w, %i.l
  br i1 %exitcond.not, label %.critedge2.loopexit, label %.lr.ph15, !llvm.loop !15

.critedge2.loopexit:                              ; preds = %bb.e, %.lr.ph15
  %.045.lcssa.ph = phi i32 [ %.04513, %.lr.ph15 ], [ %i.v, %bb.e ]
  %.1.lcssa.ph = phi ptr [ %.114, %.lr.ph15 ], [ %scevgep26, %bb.e ] ; 2 uses
  %.pre = ptrtoint ptr %.1.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.1.lcssa27.pre-phi = phi i64 [ %.pre, %.critedge2.loopexit ], [ %i.h, %.critedge ] ; 2 uses
  %.045.lcssa = phi i32 [ %.045.lcssa.ph, %.critedge2.loopexit ], [ %.fr, %.critedge ]
  %.1.lcssa = phi ptr [ %.1.lcssa.ph, %.critedge2.loopexit ], [ %.044.lcssa, %.critedge ] ; 3 uses
  %i.x = icmp ult ptr %.1.lcssa, %1
  br i1 %i.x, label %.lr.ph22.preheader, label %.critedge4

.lr.ph22.preheader:                               ; preds = %.critedge2
  %i.y = sub i64 %i.b, %.1.lcssa27.pre-phi
  %scevgep28 = getelementptr i8, ptr %.1.lcssa, i64 %i.y ; 2 uses
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.f
  %.221 = phi ptr [ %i.ac, %bb.f ], [ %.1.lcssa, %.lr.ph22.preheader ] ; 3 uses
  %i.z = load i8, ptr %.221, align 1
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.f, label %.critedge4.loopexit

bb.f:                                             ; preds = %.lr.ph22
  %i.ac = getelementptr inbounds nuw i8, ptr %.221, i64 1 ; 2 uses
  %exitcond29.not = icmp eq ptr %i.ac, %scevgep28
  br i1 %exitcond29.not, label %.critedge4.loopexit, label %.lr.ph22, !llvm.loop !16

.critedge4.loopexit:                              ; preds = %.lr.ph22, %bb.f
  %.2.lcssa.ph = phi ptr [ %scevgep28, %bb.f ], [ %.221, %.lr.ph22 ]
  %.pre30 = ptrtoint ptr %.2.lcssa.ph to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.pre-phi = phi i64 [ %.pre30, %.critedge4.loopexit ], [ %.1.lcssa27.pre-phi, %.critedge2 ]
  store i32 %.045.lcssa, ptr %2, align 4
  %i.ad = sub i64 %.pre-phi, %i.a
  %i.ae = trunc i64 %i.ad to i32
  ret i32 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal10ParseFloatILi16EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE(ptr dead_on_unwind noalias writable sret(%"struct.absl::strings_internal::ParsedFloat") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = icmp eq ptr %1, %2
  br i1 %i.f, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_118ParseInfinityOrNanEPKcS2_PNS_16strings_internal11ParsedFloatE(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0)
  br i1 %i.g, label %bb.x, label %.preheader109

.preheader109:                                    ; preds = %bb.b
  %i.h = icmp ult ptr %1, %2
  br i1 %i.h, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader109
  %i.i = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %1, i64 %i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0110 = phi ptr [ %i.l, %bb.c ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.j = load i8, ptr %.0110, align 1
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.0110, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.l, %2
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !17

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.0110, %.lr.ph ], [ %scevgep, %bb.c ] ; 2 uses
  %.pre120 = ptrtoint ptr %.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader109
  %.0.lcssa118.pre-phi = phi i64 [ %.pre120, %.critedge.loopexit ], [ %i.a, %.preheader109 ]
  %.0.lcssa = phi ptr [ %.0.lcssa.ph, %.critedge.loopexit ], [ %1, %.preheader109 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1
  %i.m = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb(ptr noundef %.0.lcssa, ptr noundef %2, i32 noundef 15, ptr noundef %i.c, ptr noundef %i.d) ; 5 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.n ; 5 uses
  %i.p = icmp sgt i32 %i.m, 12499999
  br i1 %i.p, label %bb.w, label %bb.d

bb.d:                                             ; preds = %.critedge
  %4 = icmp sgt i32 %i.m, 15
  %i.q = sub nsw i32 15, %i.m
  %.087 = select i1 %4, i32 0, i32 %i.q           ; 2 uses
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.m, i32 15)
  %.081 = add nsw i32 %i.r, -15                   ; 4 uses
  %i.s = icmp ult ptr %i.o, %2
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.o, align 1
  %i.u = icmp eq i8 %i.t, 46
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 5 uses
  %i.w = load i64, ptr %i.c, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f
  %i.y = icmp ult ptr %i.v, %2
  br i1 %i.y, label %.lr.ph114.preheader, label %.critedge3

.lr.ph114.preheader:                              ; preds = %.preheader
  %i.z = sub i64 %i.b, %.0.lcssa118.pre-phi
  %scevgep119 = getelementptr i8, ptr %.0.lcssa, i64 %i.z
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.g
  %.1113 = phi ptr [ %i.ac, %bb.g ], [ %i.v, %.lr.ph114.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.1113, align 1
  %i.ab = icmp eq i8 %i.aa, 48
  br i1 %i.ab, label %bb.g, label %.critedge3

bb.g:                                             ; preds = %.lr.ph114
  %i.ac = getelementptr inbounds nuw i8, ptr %.1113, i64 1 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %2
  br i1 %i.ad, label %.lr.ph114, label %.critedge3, !llvm.loop !18

.critedge3:                                       ; preds = %.lr.ph114, %bb.g, %.preheader
  %.1.lcssa = phi ptr [ %i.v, %.preheader ], [ %scevgep119, %bb.g ], [ %.1113, %.lr.ph114 ] ; 2 uses
  %i.ae = ptrtoint ptr %.1.lcssa to i64
  %i.af = ptrtoint ptr %i.v to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 12500000
  %i.aj = sub nsw i32 %.081, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.w

bb.h:                                             ; preds = %.critedge3, %bb.f
  %.283 = phi i32 [ %i.aj, %.critedge3 ], [ %.081, %bb.f ]
  %.2 = phi ptr [ %.1.lcssa, %.critedge3 ], [ %i.v, %bb.f ] ; 2 uses
  %i.ak = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb(ptr noundef nonnull %.2, ptr noundef nonnull %2, i32 noundef %.087, ptr noundef %i.c, ptr noundef %i.d) ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %.2, i64 %i.al
  %i.an = icmp slt i32 %i.ak, 12500000
  %.087. = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.087)
  %.384 = sub nsw i32 %.283, %.087.
  br i1 %i.an, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  %.586 = phi i32 [ %.384, %bb.h ], [ %.081, %bb.e ], [ %.081, %bb.d ]
  %.3 = phi ptr [ %i.am, %bb.h ], [ %i.o, %bb.e ], [ %i.o, %bb.d ] ; 8 uses
  %i.ao = icmp eq ptr %1, %.3
  br i1 %i.ao, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = ptrtoint ptr %.3 to i64
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i8, ptr %1, align 1
  %i.at = icmp eq i8 %i.as, 46
  br i1 %i.at, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.av = trunc nuw i8 %i.au to i1
  %.pre = load i64, ptr %i.c, align 8             ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = or i64 %.pre, 1                         ; 2 uses
  store i64 %i.aw, ptr %i.c, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = phi i64 [ %i.aw, %bb.m ], [ %.pre, %bb.l ]
  store i64 %i.ax, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.ay, align 4
  %i.az = and i32 %3, 3                           ; 2 uses
  %i.ba = icmp ne i32 %i.az, 2
  %i.bb = icmp ult ptr %.3, %2
  %or.cond = and i1 %i.ba, %i.bb
  br i1 %or.cond, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %.3, align 1
  %i.bd = and i8 %i.bc, -33
  %i.be = icmp eq i8 %i.bd, 80
  br i1 %i.be, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %bb.q, label %.critedge102

bb.q:                                             ; preds = %bb.p
  %i.bh = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 45
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.critedge102

bb.s:                                             ; preds = %bb.q
  %i.bk = icmp eq i8 %i.bh, 43
  %i.bl = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %spec.select = select i1 %i.bk, ptr %i.bl, ptr %i.bf
  br label %.critedge102

.critedge102:                                     ; preds = %bb.s, %bb.p, %bb.r
  %.078.not = phi i1 [ false, %bb.r ], [ true, %bb.p ], [ true, %bb.s ]
  %.4 = phi ptr [ %i.bj, %bb.r ], [ %i.bf, %bb.p ], [ %spec.select, %bb.s ] ; 2 uses
  %i.bm = tail call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EiEEiPKcS3_iPT0_Pb(ptr noundef nonnull %.4, ptr noundef nonnull %2, ptr noundef nonnull %i.ay) ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.4, i64 %i.bn ; 2 uses
  %.not108 = icmp eq i32 %i.bm, 0                 ; 2 uses
  %brmerge = or i1 %.078.not, %.not108
  br i1 %brmerge, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge102
  %i.bp = load i32, ptr %i.ay, align 4
  %i.bq = sub nsw i32 0, %i.bp
  store i32 %i.bq, ptr %i.ay, align 4
  br label %bb.v

bb.u:                                             ; preds = %.critedge102
  br i1 %.not108, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.o, %bb.n, %bb.u
  %i.br = icmp eq i32 %i.az, 1
  br i1 %i.br, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.t, %.thread, %bb.u
  %.6107 = phi ptr [ %.3, %.thread ], [ %i.bo, %bb.u ], [ %i.bo, %bb.t ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.bs, align 8
  %i.bt = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.bt, 0
  %i.bu = load i32, ptr %i.ay, align 4
  %i.bv = shl nsw i32 %.586, 2
  %i.bw = add nsw i32 %i.bu, %i.bv
  %.sink = select i1 %.not, i32 0, i32 %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.6107, ptr %i.by, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread, %bb.k, %bb.i, %.critedge, %.critedge3, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %bb.w
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, ptr noundef nonnull captures(none) %3, ptr noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = shl nsw i32 %2, 2
  %i.d = icmp samesign ult i32 %i.c, 65
  br i1 %i.d, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8
  %.fr = freeze i64 %i.e                          ; 3 uses
  %.not = icmp ne i64 %.fr, 0
  %.not4956 = icmp eq ptr %1, %0
  %or.cond57 = or i1 %.not, %.not4956
  br i1 %or.cond57, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  %i.f = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.f
  br label %.lr.ph.split

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef 254, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb) #7
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.c
  %.04458 = phi ptr [ %i.i, %bb.c ], [ %0, %.lr.ph.split.preheader ] ; 3 uses
  %i.g = load i8, ptr %.04458, align 1
  %i.h = icmp eq i8 %i.g, 48
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph.split
  %i.i = getelementptr inbounds nuw i8, ptr %.04458, i64 1 ; 2 uses
  %.not49 = icmp eq ptr %1, %i.i
  br i1 %.not49, label %.critedge, label %.lr.ph.split, !llvm.loop !19

.critedge:                                        ; preds = %.lr.ph.split, %bb.c, %.preheader
  %.044.lcssa = phi ptr [ %0, %.preheader ], [ %scevgep, %bb.c ], [ %.04458, %.lr.ph.split ] ; 6 uses
  %i.j = ptrtoint ptr %.044.lcssa to i64          ; 3 uses
  %i.k = sub i64 %i.b, %i.j
  %i.l = zext nneg i32 %2 to i64                  ; 2 uses
  %i.m = icmp sgt i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.044.lcssa, i64 %i.l
  %i.o = select i1 %i.m, ptr %i.n, ptr %1         ; 3 uses
  %i.p = icmp ult ptr %.044.lcssa, %i.o
  br i1 %i.p, label %.lr.ph68.preheader, label %.critedge2

.lr.ph68.preheader:                               ; preds = %.critedge
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.q, %i.j
  %scevgep83 = getelementptr i8, ptr %.044.lcssa, i64 %i.r
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %bb.h
  %.167 = phi ptr [ %i.aa, %bb.h ], [ %.044.lcssa, %.lr.ph68.preheader ] ; 3 uses
  %.04566 = phi i64 [ %i.z, %bb.h ], [ %.fr, %.lr.ph68.preheader ] ; 3 uses
  %i.s = load i8, ptr %.167, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12_GLOBAL__N_111kAsciiToIntE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.d, label %.critedge2.loopexit

bb.d:                                             ; preds = %.lr.ph68
  %i.x = shl i64 %.04566, 4                       ; 3 uses
  %.not50 = icmp ult i64 %i.x, %.04566
  br i1 %.not50, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb) #7
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add i64 %i.x, %i.y                       ; 3 uses
  %.not51 = icmp ult i64 %i.z, %i.x
  br i1 %.not51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb) #7
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.167, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.aa, %i.o
  br i1 %exitcond.not, label %.critedge2.loopexit, label %.lr.ph68, !llvm.loop !20

.critedge2.loopexit:                              ; preds = %bb.h, %.lr.ph68
  %.045.lcssa.ph = phi i64 [ %.04566, %.lr.ph68 ], [ %i.z, %bb.h ]
  %.1.lcssa.ph = phi ptr [ %.167, %.lr.ph68 ], [ %scevgep83, %bb.h ] ; 2 uses
  %.pre = ptrtoint ptr %.1.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.1.lcssa84.pre-phi = phi i64 [ %.pre, %.critedge2.loopexit ], [ %i.j, %.critedge ]
  %.045.lcssa = phi i64 [ %.045.lcssa.ph, %.critedge2.loopexit ], [ %.fr, %.critedge ]
  %.1.lcssa = phi ptr [ %.1.lcssa.ph, %.critedge2.loopexit ], [ %.044.lcssa, %.critedge ] ; 4 uses
  %i.ab = icmp ult ptr %.1.lcssa, %1
  br i1 %i.ab, label %.lr.ph76.preheader, label %.critedge4.thread

.lr.ph76.preheader:                               ; preds = %.critedge2
  %i.ac = sub i64 %i.b, %.1.lcssa84.pre-phi
  %scevgep85 = getelementptr i8, ptr %.1.lcssa, i64 %i.ac ; 2 uses
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.i
  %.075 = phi i1 [ %spec.select, %bb.i ], [ false, %.lr.ph76.preheader ] ; 2 uses
  %.274 = phi ptr [ %i.aj, %bb.i ], [ %.1.lcssa, %.lr.ph76.preheader ] ; 3 uses
  %i.ad = load i8, ptr %.274, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12_GLOBAL__N_111kAsciiToIntE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %.lr.ph76
  %i.ai = icmp ne i8 %i.ad, 48
  %spec.select = or i1 %.075, %i.ai               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.274, i64 1 ; 2 uses
  %exitcond86.not = icmp eq ptr %i.aj, %scevgep85
  br i1 %exitcond86.not, label %.critedge4, label %.lr.ph76, !llvm.loop !21

.critedge4:                                       ; preds = %.lr.ph76, %bb.i
  %.2.lcssa = phi ptr [ %scevgep85, %bb.i ], [ %.274, %.lr.ph76 ] ; 2 uses
  %.0.lcssa = phi i1 [ %spec.select, %bb.i ], [ %.075, %.lr.ph76 ]
  br i1 %.0.lcssa, label %bb.j, label %.critedge4.thread

bb.j:                                             ; preds = %.critedge4
  store i8 1, ptr %4, align 1
  br label %.critedge4.thread

.critedge4.thread:                                ; preds = %.critedge2, %bb.j, %.critedge4
  %.2.lcssa96 = phi ptr [ %.2.lcssa, %.critedge4 ], [ %.2.lcssa, %bb.j ], [ %.1.lcssa, %.critedge2 ]
  store i64 %.045.lcssa, ptr %3, align 8
  %i.ak = ptrtoint ptr %.2.lcssa96 to i64
  %i.al = sub i64 %i.ak, %i.a
  %i.am = trunc i64 %i.al to i32
  ret i32 %i.am
}

declare noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
end_hunk_1
