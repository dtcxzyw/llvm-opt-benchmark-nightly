Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rbt_rule?download=true
inline.NumInlined: 37
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::ConstChar16Ptr" = type { ptr }

$__clang_call_terminate = comdat any

$_ZTIN6icu_787UMemoryE = comdat any

$_ZTSN6icu_787UMemoryE = comdat any

@_ZTVN6icu_7819TransliterationRuleE = constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6icu_7819TransliterationRuleE, ptr @_ZN6icu_7819TransliterationRuleD1Ev, ptr @_ZN6icu_7819TransliterationRuleD0Ev, ptr @_ZNK6icu_7819TransliterationRule16getContextLengthEv, ptr @_ZNK6icu_7819TransliterationRule5masksERKS0_, ptr @_ZNK6icu_7819TransliterationRule6toRuleERNS_13UnicodeStringEa] }, align 8
@_ZL10FORWARD_OP = internal constant [4 x i16] [i16 32, i16 62, i16 32, i16 0], align 2
@_ZTIN6icu_7819TransliterationRuleE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7819TransliterationRuleE, ptr @_ZTIN6icu_787UMemoryE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7819TransliterationRuleE = constant [31 x i8] c"N6icu_7819TransliterationRuleE\00", align 1
@_ZTIN6icu_787UMemoryE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6icu_787UMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_787UMemoryE = linkonce_odr constant [18 x i8] c"N6icu_787UMemoryE\00", comdat, align 1
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8

@_ZN6icu_7819TransliterationRuleC1ERKNS_13UnicodeStringEiiS3_iiPPNS_14UnicodeFunctorEiaaPKNS_23TransliterationRuleDataER10UErrorCode = unnamed_addr alias void (ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, i8, i8, ptr, ptr), ptr @_ZN6icu_7819TransliterationRuleC2ERKNS_13UnicodeStringEiiS3_iiPPNS_14UnicodeFunctorEiaaPKNS_23TransliterationRuleDataER10UErrorCode
@_ZN6icu_7819TransliterationRuleC1ERS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7819TransliterationRuleC2ERS0_
@_ZN6icu_7819TransliterationRuleD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7819TransliterationRuleD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7819TransliterationRuleC2ERKNS_13UnicodeStringEiiS3_iiPPNS_14UnicodeFunctorEiaaPKNS_23TransliterationRuleDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8), (40, 50), (104, 112), (128, 136)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i8 noundef signext %9, i8 noundef signext %10, ptr noundef %11, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7819TransliterationRuleE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i16 2, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store ptr %11, ptr %i.d, align 8, !tbaa !22
  %i.e = load i32, ptr %12, align 4, !tbaa !34
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i16, ptr %i.h, align 8, !tbaa !10   ; 2 uses
  %i.j = icmp slt i16 %i.i, 0
  %i.k = ashr i16 %i.i, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l
  %i.p = icmp sgt i32 %2, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %12, align 4, !tbaa !34
  br label %bb.al

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ %2, %bb.c ]    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %.sink, ptr %i.q, align 4, !tbaa !23
  %i.r = icmp slt i32 %3, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i16, ptr %i.s, align 8, !tbaa !10   ; 2 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = select i1 %i.u, i32 %i.y, i32 %i.w
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp samesign ult i32 %3, %.sink
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = select i1 %i.ad, i32 %i.ah, i32 %i.af
  %i.aj = icmp sgt i32 %3, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %12, align 4, !tbaa !34
  br label %bb.al

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sink74 = phi i32 [ %i.z, %bb.f ], [ %3, %bb.h ]
  %i.ak = sub nsw i32 %.sink74, %.sink
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !24
  %i.am = icmp slt i32 %5, 0
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !10 ; 2 uses
  %i.ap = icmp slt i16 %i.ao, 0
  %i.aq = ashr i16 %i.ao, 5
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = select i1 %i.ap, i32 %i.at, i32 %i.ar   ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = icmp sgt i32 %5, %i.au
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %12, align 4, !tbaa !34
  br label %bb.al

bb.m:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i32 [ %5, %bb.k ], [ %i.au, %bb.j ]
  store ptr %7, ptr %i.c, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %8, ptr %i.aw, align 8, !tbaa !25
  %i.ax = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.n unwind label %bb.ae      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.not52 = icmp ne i8 %9, 0
  %spec.select = zext i1 %.not52 to i8            ; 2 uses
  %.not53 = icmp eq i8 %10, 0
  %i.az = or disjoint i8 %spec.select, 2
  %spec.select59 = select i1 %.not53, i8 %spec.select, i8 %i.az
  store i8 %spec.select59, ptr %i.ay, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.be = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 112) #11 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !22
  invoke void @_ZN6icu_7813StringMatcherC1ERKNS_13UnicodeStringEiiiRKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(108) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef 0, i32 noundef %i.bg, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(1168) %i.bh)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !27
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  store ptr null, ptr %i.ba, align 8, !tbaa !27
  store i32 7, ptr %12, align 4, !tbaa !34
  br label %bb.al

bb.s:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.t:                                             ; preds = %bb.q, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !24 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bn = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 112) #11 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = load i32, ptr %i.bb, align 4, !tbaa !23 ; 2 uses
  %i.bq = load i32, ptr %i.bk, align 8, !tbaa !24
  %i.br = add nsw i32 %i.bq, %i.bp
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !22
  invoke void @_ZN6icu_7813StringMatcherC1ERKNS_13UnicodeStringEiiiRKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(108) %i.bn, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.bp, i32 noundef %i.br, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(1168) %i.bs)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !28
  %.pre = load i32, ptr %i.bk, align 8, !tbaa !24
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  store ptr null, ptr %i.bj, align 8, !tbaa !28
  store i32 7, ptr %12, align 4, !tbaa !34
  br label %bb.al

bb.y:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.z:                                             ; preds = %bb.t, %bb.w
  %i.bu = phi i32 [ %i.bl, %bb.t ], [ %.pre, %bb.w ]
  %i.bv = load i16, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.bw = icmp slt i16 %i.bv, 0
  %i.bx = ashr i16 %i.bv, 5
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = select i1 %i.bw, i32 %i.ca, i32 %i.by
  %i.cc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.cd = add i32 %i.cc, %i.bu
  %i.ce = sub i32 %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr null, ptr %i.cf, align 8, !tbaa !29
  %i.cg = icmp sgt i32 %i.ce, 0
  br i1 %i.cg, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.ch = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 112) #11 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.ck = load i32, ptr %i.bk, align 8, !tbaa !24
  %i.cl = load i16, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.cm = icmp slt i16 %i.cl, 0
  %i.cn = ashr i16 %i.cl, 5
  %i.co = sext i16 %i.cn to i32
  %i.cp = load i32, ptr %i.bz, align 4
  %i.cq = select i1 %i.cm, i32 %i.cp, i32 %i.co
  %i.cr = add nsw i32 %i.ck, %i.cj
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !22
  invoke void @_ZN6icu_7813StringMatcherC1ERKNS_13UnicodeStringEiiiRKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(108) %i.ch, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.cr, i32 noundef %i.cq, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(1168) %i.cs)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !29
  br label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  store ptr null, ptr %i.cf, align 8, !tbaa !29
  store i32 7, ptr %12, align 4, !tbaa !34
  br label %bb.al

bb.ae:                                            ; preds = %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ac, %bb.z
  %i.cv = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 96) #11 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = add nsw i32 %.0, %6
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !22
  invoke void @_ZN6icu_7814StringReplacerC1ERKNS_13UnicodeStringEiPKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(96) %i.cv, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.cx, ptr noundef %i.cy)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cv, ptr %i.cz, align 8, !tbaa !30
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.da, align 8, !tbaa !30
  store i32 7, ptr %12, align 4, !tbaa !34
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.al:                                            ; preds = %bb.ai, %bb.ad, %bb.aj, %bb.a, %bb.x, %bb.r, %bb.l, %bb.i, %bb.d
  ret void

.sink.split:                                      ; preds = %bb.s, %bb.y, %bb.ak, %bb.af
  %.sink75 = phi ptr [ %i.ch, %bb.af ], [ %i.cv, %bb.ak ], [ %i.bn, %bb.y ], [ %i.be, %bb.s ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cu, %bb.af ], [ %i.db, %bb.ak ], [ %i.bt, %bb.y ], [ %i.bi, %bb.s ]
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %.sink75) #11
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.ae ], [ %.pn.pn.ph, %.sink.split ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #11
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813StringMatcherC1ERKNS_13UnicodeStringEiiiRKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(1168)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6icu_7814StringReplacerC1ERKNS_13UnicodeStringEiPKNS_23TransliterationRuleDataE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7819TransliterationRuleC2ERS0_(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7819TransliterationRuleE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.h = load <2 x i32>, ptr %i.g, align 4, !tbaa !31
  store <2 x i32> %i.h, ptr %i.f, align 4, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.k = load i8, ptr %i.j, align 4, !tbaa !26
  store i8 %i.k, ptr %i.i, align 4, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  store ptr %i.n, ptr %i.l, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = zext nneg i32 %i.r to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.u) #12
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.v, ptr %i.o, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = load i32, ptr %i.q, align 8, !tbaa !25
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.x, i64 %i.aa, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.n, %bb.l, %bb.i, %bb.f, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.d) #11
  resume { ptr, i32 } %i.ab

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(108) %i.ad)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 3 uses
  %.not21 = icmp eq ptr %i.aj, null
  br i1 %.not21, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(108) %i.aj)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  store ptr %i.an, ptr %i.b, align 8, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 3 uses
  %.not22 = icmp eq ptr %i.ap, null
  br i1 %.not22, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(108) %i.ap)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  store ptr %i.at, ptr %i.c, align 8, !tbaa !29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !30 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %bb.o unwind label %bb.d

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !30
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7819TransliterationRuleD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7819TransliterationRuleE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  invoke void @uprv_free_78(ptr noundef %i.b)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(108) %i.d) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(108) %i.j) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
end_hunk_0
