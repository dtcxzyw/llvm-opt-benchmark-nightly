Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/nfrule?download=true
inline.NumInlined: 386
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::ConstChar16Ptr" = type { ptr }
%"class.icu_78::LocalPointer" = type { %"class.icu_78::LocalPointerBase" }
%"class.icu_78::LocalPointerBase" = type { ptr }
%"class.icu_78::ParsePosition" = type { %"class.icu_78::UObject", i32, i32 }
%"class.icu_78::Formattable" = type { %"class.icu_78::UObject", %union.anon, ptr, ptr, i32, %"class.icu_78::UnicodeString" }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32 }
%"class.icu_78::FieldPosition" = type <{ %"class.icu_78::UObject", i32, i32, i32, [4 x i8] }>

$_ZN6icu_7812LocalPointerINS_6NFRuleEE12adoptInsteadEPS1_ = comdat any

$_ZN6icu_7813UnicodeString5setToERKS0_ii = comdat any

$_ZN6icu_7810NFRuleList3addEPNS_6NFRuleE = comdat any

$_ZN6icu_7812LocalPointerINS_6NFRuleEED2Ev = comdat any

$_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi = comdat any

@_ZN6icu_78L7gMinusXE = internal constant [3 x i16] [i16 45, i16 120, i16 0], align 2, !guid !5
@_ZN6icu_78L4gNaNE = internal constant [4 x i16] [i16 78, i16 97, i16 78, i16 0], align 2, !guid !6
@_ZN6icu_78L4gInfE = internal constant [4 x i16] [i16 73, i16 110, i16 102, i16 0], align 2, !guid !7
@_ZN6icu_78L22gDollarOpenParenthesisE = internal constant [3 x i16] [i16 36, i16 40, i16 0], align 2, !guid !8
@_ZN6icu_78L24gClosedParenthesisDollarE = internal constant [3 x i16] [i16 41, i16 36, i16 0], align 2, !guid !9
@.str = private unnamed_addr constant [9 x i16] [i16 99, i16 97, i16 114, i16 100, i16 105, i16 110, i16 97, i16 108, i16 0], align 2, !guid !10
@.str.1 = private unnamed_addr constant [8 x i16] [i16 111, i16 114, i16 100, i16 105, i16 110, i16 97, i16 108, i16 0], align 2, !guid !11
@_ZN6icu_78L22gGreaterGreaterGreaterE = internal constant [4 x i16] [i16 62, i16 62, i16 62, i16 0], align 2, !guid !12
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8, !guid !13
@_ZTVN6icu_7813ParsePositionE = external constant { [5 x ptr] }, align 8, !guid !14
@_ZTVN6icu_7813FieldPositionE = external constant { [5 x ptr] }, align 8, !guid !15

@_ZN6icu_786NFRuleC1EPKNS_21RuleBasedNumberFormatERKNS_13UnicodeStringER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6icu_786NFRuleC2EPKNS_21RuleBasedNumberFormatERKNS_13UnicodeStringER10UErrorCode
@_ZN6icu_786NFRuleD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_786NFRuleD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786NFRuleC2EPKNS_21RuleBasedNumberFormatERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 !guid !19 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %2) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i16, ptr %i.h, align 8
  %i.j = icmp ugt i16 %i.i, 31
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_786NFRule19parseRuleDescriptorERNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786NFRule19parseRuleDescriptorERNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 !guid !24 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 24 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 58, i32 noundef 0, i32 noundef %i.h) #8 ; 3 uses
  %.not = icmp eq i32 %i.i, -1
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i16 2, ptr %i.j, align 8
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #8
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 11 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.i) #8 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = sext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.u, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.v = load i16, ptr %i.a, align 8              ; 3 uses
  %i.w = icmp slt i16 %i.v, 0
  %i.x = ashr i16 %i.v, 5
  %i.y = sext i16 %i.x to i32
  %i.z = load i32, ptr %i.f, align 4
  %i.aa = select i1 %i.w, i32 %i.z, i32 %i.y      ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  %i.ad = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  br i1 %i.ac, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp ugt i32 %i.aa, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.e:                                             ; preds = %bb.d
  %i.af = and i16 %i.v, 2
  %.not.i.i.i = icmp eq i16 %i.af, 0
  %i.ag = load ptr, ptr %i.t, align 8
  %i.ah = select i1 %.not.i.i.i, ptr %i.ag, ptr %i.s
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i32
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.d, %bb.e
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ 65535, %bb.d ]
  %i.al = call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %.0.i.i) #8
  %.not147 = icmp eq i8 %i.al, 0
  br i1 %.not147, label %.critedge, label %bb.c, !llvm.loop !20

.critedge:                                        ; preds = %bb.c, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.am = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.ad, ptr noundef null, i32 noundef 0, i32 noundef 0) #8 ; 0 uses
  %i.an = load i16, ptr %i.j, align 8             ; 4 uses
  %i.ao = icmp slt i16 %i.an, 0
  %i.ap = ashr i16 %i.an, 5
  %i.aq = sext i16 %i.ap to i32
  %i.ar = load i32, ptr %i.o, align 4
  %i.as = select i1 %i.ao, i32 %i.ar, i32 %i.aq   ; 10 uses
  %.not213 = icmp eq i32 %i.as, 0
  br i1 %.not213, label %_ZNK6icu_7813UnicodeString6charAtEi.exit163.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit163

_ZNK6icu_7813UnicodeString6charAtEi.exit163:      ; preds = %.critedge
  %i.at = and i16 %i.an, 2
  %.not.i.i.i159 = icmp eq i16 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = select i1 %.not.i.i.i159, ptr %i.aw, ptr %i.au
  %i.ay = load i16, ptr %i.ax, align 2            ; 2 uses
  %i.az = and i16 %i.an, 2
  %.not.i.i.i162 = icmp eq i16 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = select i1 %.not.i.i.i162, ptr %i.bc, ptr %i.ba
  %i.be = sext i32 %i.as to i64
  %i.bf = getelementptr [2 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -2
  %i.bh = load i16, ptr %i.bg, align 2            ; 2 uses
  %i.bi = add i16 %i.ay, -48
  %or.cond = icmp ult i16 %i.bi, 10
  %i.bj = icmp ne i16 %i.bh, 120                  ; 2 uses
  %or.cond8 = and i1 %or.cond, %i.bj
  br i1 %or.cond8, label %.preheader217, label %_ZNK6icu_7813UnicodeString6charAtEi.exit163.thread

.preheader217:                                    ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit163
  %i.bk = icmp sgt i32 %i.as, 0
  br i1 %i.bk, label %.lr.ph, label %.thread200

.lr.ph:                                           ; preds = %.preheader217
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %bb.f

.thread200:                                       ; preds = %bb.k, %.preheader217
  %.1138.lcssa = phi i32 [ 0, %.preheader217 ], [ %i.as, %bb.k ]
  %.0132.lcssa = phi i64 [ 0, %.preheader217 ], [ %.2134, %bb.k ]
  %.0128.lcssa = phi i16 [ 32, %.preheader217 ], [ %.0.i.i164196, %bb.k ]
  call void @_ZN6icu_786NFRule12setBaseValueElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %.0132.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv260 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next261, %bb.k ] ; 4 uses
  %.0132234 = phi i64 [ 0, %.lr.ph ], [ %.2134, %bb.k ] ; 6 uses
  %i.bn = load i16, ptr %i.j, align 8             ; 3 uses
  %i.bo = icmp slt i16 %i.bn, 0
  %i.bp = ashr i16 %i.bn, 5
  %i.bq = sext i16 %i.bp to i32
  %i.br = load i32, ptr %i.o, align 4
  %i.bs = select i1 %i.bo, i32 %i.br, i32 %i.bq
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %indvars.iv260, %i.bt
  br i1 %i.bu, label %_ZNK6icu_7813UnicodeString6charAtEi.exit166, label %.thread197

_ZNK6icu_7813UnicodeString6charAtEi.exit166:      ; preds = %bb.f
  %i.bv = and i16 %i.bn, 2
  %.not.i.i.i165 = icmp eq i16 %i.bv, 0
  %i.bw = load ptr, ptr %i.bm, align 8
  %i.bx = select i1 %.not.i.i.i165, ptr %i.bw, ptr %i.bl
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv260
  %i.bz = load i16, ptr %i.by, align 2            ; 7 uses
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = add i16 %i.bz, -48
  %or.cond11 = icmp ult i16 %i.cb, 10
  br i1 %or.cond11, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit166
  %i.cc = add nsw i32 %i.ca, -48
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = icmp sgt i64 %.0132234, 0
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cf = xor i64 %i.cd, 9223372036854775806
  %i.cg = udiv i64 %i.cf, 10
  %i.ch = icmp samesign ugt i64 %.0132234, %i.cg
  br i1 %i.ch, label %.critedge156, label %.thread

bb.i:                                             ; preds = %bb.g
  %i.ci = icmp slt i64 %.0132234, -922337203685477580
  br i1 %i.ci, label %.critedge156, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.cj = mul nsw i64 %.0132234, 10
  %i.ck = add nsw i64 %i.cj, %i.cd
  br label %bb.k

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit166
  switch i16 %i.bz, label %.thread197 [
    i16 62, label %bb.l
    i16 47, label %bb.l
  ]

.thread197:                                       ; preds = %bb.f, %bb.j
  %.0.i.i164195199 = phi i16 [ %i.bz, %bb.j ], [ -1, %bb.f ] ; 2 uses
  %i.cl = phi i32 [ %i.ca, %bb.j ], [ 65535, %bb.f ]
  %i.cm = call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %i.cl) #8
  %i.cn = icmp ne i8 %i.cm, 0
  %i.co = and i16 %.0.i.i164195199, -3
  %i.cp = icmp eq i16 %i.co, 44
  %or.cond20 = or i1 %i.cp, %i.cn
  br i1 %or.cond20, label %bb.k, label %.critedge156

bb.k:                                             ; preds = %.thread, %.thread197
  %.0.i.i164196 = phi i16 [ %i.bz, %.thread ], [ %.0.i.i164195199, %.thread197 ]
  %.2134 = phi i64 [ %i.ck, %.thread ], [ %.0132234, %.thread197 ] ; 2 uses
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count
  br i1 %exitcond.not, label %.thread200, label %bb.f, !llvm.loop !21

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.cq = trunc nuw nsw i64 %indvars.iv260 to i32 ; 2 uses
  call void @_ZN6icu_786NFRule12setBaseValueElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %.0132234, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.cr = icmp eq i16 %i.bz, 47
  br i1 %i.cr, label %.preheader216, label %bb.t

.preheader216:                                    ; preds = %bb.l
  %.2139237 = add nuw nsw i32 %i.cq, 1            ; 3 uses
  %i.cs = icmp slt i32 %.2139237, %i.as
  br i1 %i.cs, label %.lr.ph241, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader216
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ct, align 8
  br label %bb.r

.lr.ph241:                                        ; preds = %.preheader216
  %6 = zext i32 %.2139237 to i64
  br label %.lr.ph241.a

.lr.ph241.a:                                      ; preds = %.lr.ph241, %bb.q
  %indvars.iv268 = phi i64 [ %6, %.lr.ph241 ], [ %indvars.iv.next269, %bb.q ] ; 4 uses
  %.3135238 = phi i64 [ 0, %.lr.ph241 ], [ %.5, %bb.q ] ; 6 uses
  %i.cu = load i16, ptr %i.j, align 8             ; 3 uses
  %i.cv = icmp slt i16 %i.cu, 0
  %i.cw = ashr i16 %i.cu, 5
  %i.cx = sext i16 %i.cw to i32
  %i.cy = load i32, ptr %i.o, align 4
  %i.cz = select i1 %i.cv, i32 %i.cy, i32 %i.cx
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp samesign ult i64 %indvars.iv268, %i.da
  br i1 %i.db, label %_ZNK6icu_7813UnicodeString6charAtEi.exit169, label %.thread207

_ZNK6icu_7813UnicodeString6charAtEi.exit169:      ; preds = %.lr.ph241.a
  %i.dc = and i16 %i.cu, 2
  %.not.i.i.i168 = icmp eq i16 %i.dc, 0
  %i.dd = load ptr, ptr %i.bm, align 8
  %i.de = select i1 %.not.i.i.i168, ptr %i.dd, ptr %i.bl
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %indvars.iv268
  %i.dg = load i16, ptr %i.df, align 2            ; 5 uses
  %i.dh = zext i16 %i.dg to i32                   ; 2 uses
  %i.di = add i16 %i.dg, -48
  %or.cond23 = icmp ult i16 %i.di, 10
  br i1 %or.cond23, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit169
  %i.dj = add nsw i32 %i.dh, -48
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = icmp sgt i64 %.3135238, 0
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dm = xor i64 %i.dk, 9223372036854775806
  %i.dn = udiv i64 %i.dm, 10
  %i.do = icmp samesign ugt i64 %.3135238, %i.dn
  br i1 %i.do, label %.critedge156, label %.thread206

bb.o:                                             ; preds = %bb.m
  %i.dp = icmp slt i64 %.3135238, -922337203685477580
  br i1 %i.dp, label %.critedge156, label %.thread206

.thread206:                                       ; preds = %bb.n, %bb.o
  %i.dq = mul nsw i64 %.3135238, 10
  %i.dr = add nsw i64 %i.dq, %i.dk
  br label %bb.q

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit169
  %i.ds = icmp eq i16 %i.dg, 62
  br i1 %i.ds, label %._crit_edge.split.loop.exit312, label %.thread207

.thread207:                                       ; preds = %.lr.ph241.a, %bb.p
  %.0.i.i167205209 = phi i16 [ %i.dg, %bb.p ], [ -1, %.lr.ph241.a ] ; 2 uses
  %i.dt = phi i32 [ %i.dh, %bb.p ], [ 65535, %.lr.ph241.a ]
  %i.du = call noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef %i.dt) #8
  %i.dv = icmp ne i8 %i.du, 0
  %i.dw = and i16 %.0.i.i167205209, -3
  %i.dx = icmp eq i16 %i.dw, 44
  %or.cond29 = or i1 %i.dx, %i.dv
  br i1 %or.cond29, label %bb.q, label %.critedge156

bb.q:                                             ; preds = %.thread206, %.thread207
  %.0.i.i167204 = phi i16 [ %i.dg, %.thread206 ], [ %.0.i.i167205209, %.thread207 ]
  %.5 = phi i64 [ %i.dr, %.thread206 ], [ %.3135238, %.thread207 ] ; 2 uses
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %7 = trunc nuw i64 %indvars.iv.next269 to i32
  %8 = icmp sgt i32 %i.as, %7
  br i1 %8, label %.lr.ph241.a, label %._crit_edge, !llvm.loop !22

._crit_edge.split.loop.exit312:                   ; preds = %bb.p
  %i.dy = trunc nuw nsw i64 %indvars.iv268 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %._crit_edge.split.loop.exit312
  %.3135.lcssa.ph = phi i64 [ %.3135238, %._crit_edge.split.loop.exit312 ], [ %.5, %bb.q ]
  %.2139.lcssa.ph = phi i32 [ %i.dy, %._crit_edge.split.loop.exit312 ], [ %i.as, %bb.q ] ; 2 uses
  %.3131.ph = phi i16 [ 62, %._crit_edge.split.loop.exit312 ], [ %.0.i.i167204, %bb.q ] ; 2 uses
  %i.dz = trunc i64 %.3135.lcssa.ph to i32        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.dz, ptr %i.ea, align 8
  %i.eb = icmp eq i32 %i.dz, 0
  br i1 %i.eb, label %bb.r, label %.thread210

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ec = phi ptr [ %i.ct, %._crit_edge.thread ], [ %i.ea, %._crit_edge ] ; 2 uses
  %.3131302 = phi i16 [ 47, %._crit_edge.thread ], [ %.3131.ph, %._crit_edge ] ; 2 uses
  %.2139.lcssa299 = phi i32 [ %.2139237, %._crit_edge.thread ], [ %.2139.lcssa.ph, %._crit_edge ] ; 2 uses
  store i32 9, ptr %2, align 4
  %.pr = load i32, ptr %i.ec, align 8
  %i.ed = icmp eq i32 %.pr, 0
  br i1 %i.ed, label %_ZNK6icu_786NFRule16expectedExponentEv.exit, label %.thread210

.thread210:                                       ; preds = %._crit_edge, %bb.r
  %i.ee = phi ptr [ %i.ea, %._crit_edge ], [ %i.ec, %bb.r ] ; 2 uses
  %.3131300 = phi i16 [ %.3131.ph, %._crit_edge ], [ %.3131302, %bb.r ] ; 2 uses
  %.2139.lcssa297 = phi i32 [ %.2139.lcssa.ph, %._crit_edge ], [ %.2139.lcssa299, %bb.r ] ; 2 uses
  %i.ef = load i64, ptr %0, align 8               ; 2 uses
  %i.eg = icmp slt i64 %i.ef, 1
  br i1 %i.eg, label %_ZNK6icu_786NFRule16expectedExponentEv.exit, label %bb.s

bb.s:                                             ; preds = %.thread210
  %i.eh = uitofp nneg i64 %i.ef to double
  %i.ei = call double @uprv_log_78(double noundef %i.eh) #8
  %i.ej = load i32, ptr %i.ee, align 8
  %i.ek = sitofp i32 %i.ej to double
  %i.el = call double @uprv_log_78(double noundef %i.ek) #8
  %i.em = fdiv double %i.ei, %i.el
  %i.en = fptosi double %i.em to i16              ; 2 uses
  %i.eo = load i32, ptr %i.ee, align 8
  %i.ep = add i16 %i.en, 1                        ; 2 uses
  %i.eq = call noundef i64 @_ZN6icu_7810util64_powEjt(i32 noundef %i.eo, i16 noundef zeroext %i.ep) #8
  %i.er = load i64, ptr %0, align 8
  %.not.i = icmp sgt i64 %i.eq, %i.er
  %spec.select.i = select i1 %.not.i, i16 %i.en, i16 %i.ep
  br label %_ZNK6icu_786NFRule16expectedExponentEv.exit

_ZNK6icu_786NFRule16expectedExponentEv.exit:      ; preds = %bb.r, %.thread210, %bb.s
  %.3131301 = phi i16 [ %.3131300, %bb.s ], [ %.3131300, %.thread210 ], [ %.3131302, %bb.r ]
  %.2139.lcssa298 = phi i32 [ %.2139.lcssa297, %bb.s ], [ %.2139.lcssa297, %.thread210 ], [ %.2139.lcssa299, %bb.r ]
  %.05.i = phi i16 [ %spec.select.i, %bb.s ], [ 0, %.thread210 ], [ 0, %bb.r ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %.05.i, ptr %i.es, align 4
  br label %bb.t

bb.t:                                             ; preds = %.thread200, %_ZNK6icu_786NFRule16expectedExponentEv.exit, %bb.l
  %.3140 = phi i32 [ %.2139.lcssa298, %_ZNK6icu_786NFRule16expectedExponentEv.exit ], [ %i.cq, %bb.l ], [ %.1138.lcssa, %.thread200 ] ; 2 uses
  %.4 = phi i16 [ %.3131301, %_ZNK6icu_786NFRule16expectedExponentEv.exit ], [ %i.bz, %bb.l ], [ %.0128.lcssa, %.thread200 ]
  %i.et = icmp eq i16 %.4, 62
  br i1 %i.et, label %.preheader, label %.critedge157

.preheader:                                       ; preds = %bb.t
  %i.eu = load i16, ptr %i.j, align 8             ; 3 uses
  %i.ev = icmp slt i16 %i.eu, 0
  %i.ew = ashr i16 %i.eu, 5
  %i.ex = sext i16 %i.ew to i32
  %i.ey = load i32, ptr %i.o, align 4
  %i.ez = select i1 %i.ev, i32 %i.ey, i32 %i.ex   ; 3 uses
  %i.fa = icmp slt i32 %.3140, %i.ez
  br i1 %i.fa, label %.lr.ph250, label %.critedge157

.lr.ph250:                                        ; preds = %.preheader
  %i.fb = and i16 %i.eu, 2
  %.not.i.i.i171 = icmp eq i16 %i.fb, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = select i1 %.not.i.i.i171, ptr %i.fe, ptr %i.fc
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.fh = sext i32 %.3140 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph250, %bb.w
  %indvars.iv273 = phi i64 [ %i.fh, %.lr.ph250 ], [ %indvars.iv.next274, %bb.w ] ; 3 uses
  %i.fi = trunc nsw i64 %indvars.iv273 to i32
  %i.fj = icmp ugt i32 %i.ez, %i.fi
  br i1 %i.fj, label %_ZNK6icu_7813UnicodeString6charAtEi.exit172, label %.critedge156

_ZNK6icu_7813UnicodeString6charAtEi.exit172:      ; preds = %bb.u
  %i.fk = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv273
  %i.fl = load i16, ptr %i.fk, align 2
  %i.fm = icmp eq i16 %i.fl, 62
  br i1 %i.fm, label %bb.v, label %.critedge156

bb.v:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit172
  %i.fn = load i16, ptr %i.fg, align 4            ; 2 uses
  %i.fo = icmp sgt i16 %i.fn, 0
  br i1 %i.fo, label %bb.w, label %.critedge156

bb.w:                                             ; preds = %bb.v
  %i.fp = add nsw i16 %i.fn, -1
  store i16 %i.fp, ptr %i.fg, align 4
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next274 to i32
  %exitcond276.not = icmp eq i32 %i.ez, %lftr.wideiv
  br i1 %exitcond276.not, label %.critedge157, label %bb.u, !llvm.loop !23

_ZNK6icu_7813UnicodeString6charAtEi.exit163.thread: ; preds = %.critedge, %_ZNK6icu_7813UnicodeString6charAtEi.exit163
  %i.fq = phi i1 [ %i.bj, %_ZNK6icu_7813UnicodeString6charAtEi.exit163 ], [ true, %.critedge ] ; 2 uses
  %.0.i.i161293 = phi i16 [ %i.bh, %_ZNK6icu_7813UnicodeString6charAtEi.exit163 ], [ -1, %.critedge ]
  %.0.i.i158287292 = phi i16 [ %i.ay, %_ZNK6icu_7813UnicodeString6charAtEi.exit163 ], [ -1, %.critedge ] ; 2 uses
  %i.fr = call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0, i32 noundef %i.as, ptr noundef nonnull @_ZN6icu_78L7gMinusXE, i32 noundef 0, i32 noundef 2) #8
  %i.fs = icmp eq i8 %i.fr, 0
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L7gMinusXE) #8, !srcloc !17
  br i1 %i.fs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit163.thread
  store i64 -1, ptr %0, align 8
  br label %.critedge157

bb.y:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit163.thread
  %i.ft = icmp eq i32 %i.as, 3
  br i1 %i.ft, label %bb.z, label %.critedge157

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp ne i16 %.0.i.i158287292, 48
  %or.cond32.not = or i1 %i.fu, %i.fq
  br i1 %or.cond32.not, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 -3, ptr %0, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 0, ptr %i.fw, align 4
  %i.fx = load i16, ptr %i.j, align 8             ; 3 uses
  %i.fy = icmp slt i16 %i.fx, 0
  %i.fz = ashr i16 %i.fx, 5
  %i.ga = sext i16 %i.fz to i32
  %i.gb = load i32, ptr %i.o, align 4
  %i.gc = select i1 %i.fy, i32 %i.gb, i32 %i.ga
  %i.gd = icmp ugt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ab, label %_ZNK6icu_7813UnicodeString6charAtEi.exit175

bb.ab:                                            ; preds = %bb.aa
  %i.ge = and i16 %i.fx, 2
  %.not.i.i.i174 = icmp eq i16 %i.ge, 0
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %.sroa.sel = select i1 %.not.i.i.i174, ptr %.sroa.gep, ptr %i.o
  %i.gh = load i16, ptr %.sroa.sel, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit175

_ZNK6icu_7813UnicodeString6charAtEi.exit175:      ; preds = %bb.aa, %bb.ab
  %.0.i.i173 = phi i16 [ %i.gh, %bb.ab ], [ -1, %bb.aa ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %.0.i.i173, ptr %i.gi, align 2
  br label %.critedge157

bb.ac:                                            ; preds = %bb.z
  %.not277 = xor i1 %i.fq, true
  %i.gj = icmp eq i16 %.0.i.i158287292, 120       ; 2 uses
  %or.cond35 = and i1 %i.gj, %.not277
  br i1 %or.cond35, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store i64 -2, ptr %0, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 0, ptr %i.gl, align 4
  %i.gm = load i16, ptr %i.j, align 8             ; 3 uses
  %i.gn = icmp slt i16 %i.gm, 0
  %i.go = ashr i16 %i.gm, 5
  %i.gp = sext i16 %i.go to i32
  %i.gq = load i32, ptr %i.o, align 4
  %i.gr = select i1 %i.gn, i32 %i.gq, i32 %i.gp
  %i.gs = icmp ugt i32 %i.gr, 1
  br i1 %i.gs, label %bb.ae, label %_ZNK6icu_7813UnicodeString6charAtEi.exit178

bb.ae:                                            ; preds = %bb.ad
  %i.gt = and i16 %i.gm, 2
  %.not.i.i.i177 = icmp eq i16 %i.gt, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  %.sroa.gep187 = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %.sroa.sel189 = select i1 %.not.i.i.i177, ptr %.sroa.gep187, ptr %i.o
  %i.gw = load i16, ptr %.sroa.sel189, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit178

_ZNK6icu_7813UnicodeString6charAtEi.exit178:      ; preds = %bb.ad, %bb.ae
  %.0.i.i176 = phi i16 [ %i.gw, %bb.ae ], [ -1, %bb.ad ]
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %.0.i.i176, ptr %i.gx, align 2
  br label %.critedge157

bb.af:                                            ; preds = %bb.ac
  %i.gy = icmp eq i16 %.0.i.i161293, 48
end_hunk_0
