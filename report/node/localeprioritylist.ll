Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/localeprioritylist?download=true
inline.NumInlined: 55
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray.0", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray.0" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>
%"class.icu_78::Locale" = type { %"class.icu_78::UObject", %"union.icu_78::Locale::Payload" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::Locale::Payload" = type { %"struct.icu_78::Locale::Heap" }
%"struct.icu_78::Locale::Heap" = type { i8, [12 x i8], [6 x i8], [4 x i8], ptr }

@_ZN6icu_7818LocalePriorityListC1ENS_11StringPieceER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN6icu_7818LocalePriorityListC2ENS_11StringPieceER10UErrorCode
@_ZN6icu_7818LocalePriorityListD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7818LocalePriorityListD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7818LocalePriorityListC2ENS_11StringPieceER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 17), (24, 32)) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  %4 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %5 = alloca %"class.icu_78::Locale", align 8    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  %i.f = load i32, ptr %3, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 336) #11 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  store i32 7, ptr %3, align 4
  br label %bb.aj

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.j, i8 0, i64 328, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 20, ptr %i.l, align 8
  store ptr %i.h, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %1, ptr %i.a, align 8
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m ; 19 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.d
  %i.u = phi ptr [ %1, %bb.d ], [ %.be, %.backedge.backedge ] ; 5 uses
  %i.v = icmp ult ptr %i.u, %i.n
  br i1 %i.v, label %.lr.ph.preheader.i, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit

.lr.ph.preheader.i:                               ; preds = %.backedge
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = sub i64 %i.o, %i.w
  %scevgep.i = getelementptr i8, ptr %i.u, i64 %i.x
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.05.i = phi ptr [ %i.aa, %bb.e ], [ %i.u, %.lr.ph.preheader.i ] ; 3 uses
  %i.y = load i8, ptr %.05.i, align 1
  %i.z = icmp eq i8 %i.y, 32
  br i1 %i.z, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.aa, %i.n
  br i1 %exitcond.not.i, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit, label %.lr.ph.i, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit: ; preds = %.lr.ph.i, %bb.e, %.backedge
  %.0.lcssa.i = phi ptr [ %i.u, %.backedge ], [ %.05.i, %.lr.ph.i ], [ %scevgep.i, %bb.e ] ; 11 uses
  store ptr %.0.lcssa.i, ptr %i.a, align 8
  %.not39 = icmp eq ptr %.0.lcssa.i, %i.n
  br i1 %.not39, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit
  %i.ab = load i8, ptr %.0.lcssa.i, align 1
  %i.ac = icmp eq i8 %i.ab, 44
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8
  br label %.backedge.backedge

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp ult ptr %.0.lcssa.i, %i.n
  br i1 %i.ae, label %.lr.ph.preheader.i47, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit

.lr.ph.preheader.i47:                             ; preds = %bb.h
  %i.af = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ag = sub i64 %i.o, %i.af
  %scevgep.i48 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ag
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.i, %.lr.ph.preheader.i47
  %.01517.i = phi ptr [ %i.ai, %bb.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i47 ] ; 5 uses
  %i.ah = load i8, ptr %.01517.i, align 1
  switch i8 %i.ah, label %bb.i [
    i8 59, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
    i8 44, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
    i8 32, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
  ]

bb.i:                                             ; preds = %.lr.ph.i49
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i, i64 1 ; 2 uses
  %exitcond.not.i50 = icmp eq ptr %i.ai, %i.n
  br i1 %exitcond.not.i50, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit, label %.lr.ph.i49, !llvm.loop !8

_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit: ; preds = %.lr.ph.i49, %.lr.ph.i49, %.lr.ph.i49, %bb.i, %bb.h
  %.015.lcssa.i = phi ptr [ %.0.lcssa.i, %bb.h ], [ %scevgep.i48, %bb.i ], [ %.01517.i, %.lr.ph.i49 ], [ %.01517.i, %.lr.ph.i49 ], [ %.01517.i, %.lr.ph.i49 ]
  %i.aj = ptrtoint ptr %.015.lcssa.i to i64
  %i.ak = ptrtoint ptr %.0.lcssa.i to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread80, label %bb.j

.thread80:                                        ; preds = %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
  store i32 1, ptr %3, align 4
  br label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

bb.j:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr %i.p, ptr %4, align 8
  store i32 40, ptr %i.q, align 8
  store i8 0, ptr %i.r, align 4
  store i32 0, ptr %i.s, align 8
  store i8 0, ptr %i.p, align 1
  %i.ao = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull %.0.lcssa.i, i32 noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %3) #11 ; 0 uses
  %i.ap = load i32, ptr %3, align 4
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %.loopexit105

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ar = load ptr, ptr %4, align 8
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.ar, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %i.as = load i8, ptr %i.t, align 8
  %.not = icmp eq i8 %i.as, 0
  br i1 %.not, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.a, align 8
  %sext = shl i64 %i.al, 32
  %i.au = ashr exact i64 %sext, 32
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au ; 5 uses
  %i.aw = icmp ult ptr %i.av, %i.n
  br i1 %i.aw, label %.lr.ph.preheader.i52, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit57

.lr.ph.preheader.i52:                             ; preds = %bb.l
  %i.ax = ptrtoaddr ptr %i.av to i64
  %i.ay = sub i64 %i.o, %i.ax
  %scevgep.i53 = getelementptr i8, ptr %i.av, i64 %i.ay
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.m, %.lr.ph.preheader.i52
  %.05.i55 = phi ptr [ %i.bb, %bb.m ], [ %i.av, %.lr.ph.preheader.i52 ] ; 3 uses
  %i.az = load i8, ptr %.05.i55, align 1
  %i.ba = icmp eq i8 %i.az, 32
  br i1 %i.ba, label %bb.m, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit57

bb.m:                                             ; preds = %.lr.ph.i54
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i55, i64 1 ; 2 uses
  %exitcond.not.i56 = icmp eq ptr %i.bb, %i.n
  br i1 %exitcond.not.i56, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit57, label %.lr.ph.i54, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit57: ; preds = %.lr.ph.i54, %bb.m, %bb.l
  %.0.lcssa.i51 = phi ptr [ %i.av, %bb.l ], [ %.05.i55, %.lr.ph.i54 ], [ %scevgep.i53, %bb.m ] ; 5 uses
  store ptr %.0.lcssa.i51, ptr %i.a, align 8
  %.not42 = icmp eq ptr %.0.lcssa.i51, %i.n
  br i1 %.not42, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit57
  %i.bc = load i8, ptr %.0.lcssa.i51, align 1
  %i.bd = icmp eq i8 %i.bc, 59
  br i1 %i.bd, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i51, i64 1 ; 5 uses
  %i.bf = icmp ult ptr %i.be, %i.n
  br i1 %i.bf, label %.lr.ph.preheader.i59, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit64

.lr.ph.preheader.i59:                             ; preds = %bb.o
  %i.bg = ptrtoaddr ptr %i.be to i64
  %i.bh = sub i64 %i.o, %i.bg
  %scevgep.i60 = getelementptr i8, ptr %i.be, i64 %i.bh
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.p, %.lr.ph.preheader.i59
  %.05.i62 = phi ptr [ %i.bk, %bb.p ], [ %i.be, %.lr.ph.preheader.i59 ] ; 3 uses
  %i.bi = load i8, ptr %.05.i62, align 1
  %i.bj = icmp eq i8 %i.bi, 32
  br i1 %i.bj, label %bb.p, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit64

bb.p:                                             ; preds = %.lr.ph.i61
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i62, i64 1 ; 2 uses
  %exitcond.not.i63 = icmp eq ptr %i.bk, %i.n
  br i1 %exitcond.not.i63, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit64, label %.lr.ph.i61, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit64: ; preds = %.lr.ph.i61, %bb.p, %bb.o
  %.0.lcssa.i58 = phi ptr [ %i.be, %bb.o ], [ %.05.i62, %.lr.ph.i61 ], [ %scevgep.i60, %bb.p ] ; 4 uses
  store ptr %.0.lcssa.i58, ptr %i.a, align 8
  %i.bl = icmp eq ptr %.0.lcssa.i58, %i.n
  br i1 %i.bl, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit64
  %i.bm = load i8, ptr %.0.lcssa.i58, align 1
  %.not43 = icmp eq i8 %i.bm, 113
  br i1 %.not43, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i58, i64 1 ; 5 uses
  %i.bo = icmp ult ptr %i.bn, %i.n
  br i1 %i.bo, label %.lr.ph.preheader.i66, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit71

.lr.ph.preheader.i66:                             ; preds = %bb.r
  %i.bp = ptrtoaddr ptr %i.bn to i64
  %i.bq = sub i64 %i.o, %i.bp
  %scevgep.i67 = getelementptr i8, ptr %i.bn, i64 %i.bq
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.s, %.lr.ph.preheader.i66
  %.05.i69 = phi ptr [ %i.bt, %bb.s ], [ %i.bn, %.lr.ph.preheader.i66 ] ; 3 uses
  %i.br = load i8, ptr %.05.i69, align 1
  %i.bs = icmp eq i8 %i.br, 32
  br i1 %i.bs, label %bb.s, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit71

bb.s:                                             ; preds = %.lr.ph.i68
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i69, i64 1 ; 2 uses
  %exitcond.not.i70 = icmp eq ptr %i.bt, %i.n
  br i1 %exitcond.not.i70, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit71, label %.lr.ph.i68, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit71: ; preds = %.lr.ph.i68, %bb.s, %bb.r
  %.0.lcssa.i65 = phi ptr [ %i.bn, %bb.r ], [ %.05.i69, %.lr.ph.i68 ], [ %scevgep.i67, %bb.s ] ; 4 uses
  store ptr %.0.lcssa.i65, ptr %i.a, align 8
  %i.bu = icmp eq ptr %.0.lcssa.i65, %i.n
  br i1 %i.bu, label %bb.z, label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit71
  %i.bv = load i8, ptr %.0.lcssa.i65, align 1
  %.not44 = icmp eq i8 %i.bv, 61
  br i1 %.not44, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i65, i64 1
  store ptr %i.bw, ptr %i.a, align 8
  %i.bx = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111parseWeightERPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.n) ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ca = icmp ult ptr %i.bz, %i.n
  br i1 %i.ca, label %.lr.ph.preheader.i73, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit78

.lr.ph.preheader.i73:                             ; preds = %bb.v
  %i.cb = ptrtoaddr ptr %i.bz to i64
  %i.cc = sub i64 %i.o, %i.cb
  %scevgep.i74 = getelementptr i8, ptr %i.bz, i64 %i.cc
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.w, %.lr.ph.preheader.i73
  %.05.i76 = phi ptr [ %i.cf, %bb.w ], [ %i.bz, %.lr.ph.preheader.i73 ] ; 3 uses
  %i.cd = load i8, ptr %.05.i76, align 1
  %i.ce = icmp eq i8 %i.cd, 32
  br i1 %i.ce, label %bb.w, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit78

bb.w:                                             ; preds = %.lr.ph.i75
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i76, i64 1 ; 2 uses
  %exitcond.not.i77 = icmp eq ptr %i.cf, %i.n
  br i1 %exitcond.not.i77, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit78, label %.lr.ph.i75, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit78: ; preds = %.lr.ph.i75, %bb.w, %bb.v
  %.0.lcssa.i72 = phi ptr [ %i.bz, %bb.v ], [ %.05.i76, %.lr.ph.i75 ], [ %scevgep.i74, %bb.w ] ; 2 uses
  store ptr %.0.lcssa.i72, ptr %i.a, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit78, %bb.n
  %6 = phi ptr [ %.0.lcssa.i72, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit78 ], [ %.0.lcssa.i51, %bb.n ] ; 3 uses
  %.0 = phi i32 [ %i.bx, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit78 ], [ 1000, %bb.n ] ; 2 uses
  %.not45 = icmp eq ptr %6, %i.n
  br i1 %.not45, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = load i8, ptr %6, align 1
  %.not46 = icmp eq i8 %i.cg, 44
  br i1 %.not46, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit64, %bb.q, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit71, %bb.t, %bb.u, %bb.k
  store i32 1, ptr %3, align 4
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.loopexit105

bb.aa:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit57, %bb.x
  %.0107 = phi i32 [ %.0, %bb.x ], [ 1000, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit57 ]
  %i.ch = call noundef zeroext i1 @_ZN6icu_7818LocalePriorityList3addERKNS_6LocaleEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %.0107, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ci = load i8, ptr %i.r, align 4
  %.not.i.i.i.jt3 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.jt3, label %bb.af, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.cj = call noundef zeroext i1 @_ZN6icu_7818LocalePriorityList3addERKNS_6LocaleEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 1
  store ptr %i.ck, ptr %i.a, align 8
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.cl = load i8, ptr %i.r, align 4
  %.not.i.i.i.jt0 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.jt0, label %..backedge_crit_edge, label %bb.ad

.loopexit105:                                     ; preds = %bb.j, %bb.z
  %i.cm = load i8, ptr %i.r, align 4
  %.not.i.i.i.jt1 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.jt1, label %bb.ag, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.cn) #11
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.co) #11
  br label %..backedge_crit_edge

bb.ae:                                            ; preds = %.loopexit105
  %i.cp = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.cp) #11
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.loopexit

..backedge_crit_edge:                             ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.pre.pre = load ptr, ptr %i.a, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %..backedge_crit_edge, %bb.g
  %.be = phi ptr [ %.pre.pre, %..backedge_crit_edge ], [ %i.ad, %bb.g ]
  br label %.backedge, !llvm.loop !9

bb.ag:                                            ; preds = %bb.ae, %.loopexit105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

.loopexit:                                        ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit, %bb.af
  %i.cq = load i32, ptr %3, align 4
  %i.cr = icmp slt i32 %i.cq, 1
  br i1 %i.cr, label %bb.ah, label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

bb.ah:                                            ; preds = %.loopexit
  %i.cs = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ct = load i32, ptr %i.c, align 4
  %i.cu = sub nsw i32 %i.cs, %i.ct
  %i.cv = icmp sgt i32 %i.cu, 1
  %i.cw = load i8, ptr %i.d, align 8, !range !7
  %i.cx = trunc nuw i8 %i.cw to i1
  %or.cond.i = select i1 %i.cv, i1 %i.cx, i1 false
  br i1 %or.cond.i, label %bb.ai, label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cy = load ptr, ptr %0, align 8
  %.val.i = load ptr, ptr %i.cy, align 8
  call void @uprv_sortArray_78(ptr noundef %.val.i, i32 noundef %i.cs, i32 noundef 16, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_122compareLocaleAndWeightEPKvS2_S2_, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  br label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit: ; preds = %bb.ag, %bb.ai, %bb.ah, %.loopexit, %.thread80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -48000, -2147483648) i32 @_ZN6icu_7812_GLOBAL__N_111parseWeightERPKcS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = icmp ult ptr %i.a, %1
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.05.i = phi ptr [ %i.h, %bb.b ], [ %i.a, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.05.i, align 1
  %i.g = icmp eq i8 %i.f, 32
  br i1 %i.g, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.h, %1
  br i1 %exitcond.not.i, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit, label %.lr.ph.i, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %.05.i, %.lr.ph.i ], [ %scevgep.i, %bb.b ] ; 5 uses
  store ptr %.0.lcssa.i, ptr %0, align 8
  %i.i = icmp eq ptr %.0.lcssa.i, %1
  br i1 %i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit
  %i.j = load i8, ptr %.0.lcssa.i, align 1        ; 2 uses
  %i.k = add i8 %i.j, -50
  %or.cond = icmp ult i8 %i.k, -2
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i8 %i.j to i32
  %i.m = mul nuw nsw i32 %i.l, 1000
  %i.n = add nsw i32 %i.m, -48000                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 3 uses
  store ptr %i.o, ptr %0, align 8
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.o, align 1
  %.not = icmp eq i8 %i.q, 46
  br i1 %.not, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2 ; 3 uses
  store ptr %i.r, ptr %0, align 8
  %.not4142 = icmp eq ptr %i.r, %1
  br i1 %.not4142, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.s = phi ptr [ %i.ad, %bb.j ], [ %i.r, %.preheader ] ; 2 uses
  %.044 = phi i32 [ %.1, %bb.j ], [ 100, %.preheader ] ; 5 uses
  %.03243 = phi i32 [ %.2, %bb.j ], [ %i.n, %.preheader ] ; 4 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = add i8 %i.t, -48                         ; 3 uses
  %or.cond5 = icmp ult i8 %i.u, 10
  br i1 %or.cond5, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %i.v = icmp sgt i32 %.044, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i8 %i.u to i32
  %i.x = mul nuw nsw i32 %.044, %i.w
  %i.y = add nsw i32 %i.x, %.03243
  %i.z = udiv i32 %.044, 10
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp eq i32 %.044, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp samesign ugt i8 %i.u, 4
  %i.ac = zext i1 %i.ab to i32
  %spec.select = add nsw i32 %.03243, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.2 = phi i32 [ %i.y, %bb.g ], [ %spec.select, %bb.i ], [ %.03243, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %i.z, %bb.g ], [ -1, %bb.i ], [ %.044, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  store ptr %i.ad, ptr %0, align 8
  %.not41 = icmp eq ptr %i.ad, %1
  br i1 %.not41, label %.critedge, label %.lr.ph, !llvm.loop !10

.critedge:                                        ; preds = %bb.j, %.lr.ph, %.preheader
  %.032.lcssa = phi i32 [ %i.n, %.preheader ], [ %.03243, %.lr.ph ], [ %.2, %bb.j ] ; 2 uses
  %i.ae = icmp slt i32 %.032.lcssa, 1001
  %i.af = select i1 %i.ae, i32 %.032.lcssa, i32 -1
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.e, %bb.d, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit, %bb.c
  %.135 = phi i32 [ -1, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit ], [ -1, %bb.c ], [ %i.af, %.critedge ], [ %i.n, %bb.e ], [ %i.n, %bb.d ]
  ret i32 %.135
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
