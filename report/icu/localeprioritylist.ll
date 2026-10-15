Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/localeprioritylist?download=true
inline.NumInlined: 56
inline.NumDeleted: 33
begin_hunk_0
$_ZN6icu_7810CharStringD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev = comdat any

@_ZN6icu_7818LocalePriorityListC1ENS_11StringPieceER10UErrorCode = unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN6icu_7818LocalePriorityListC2ENS_11StringPieceER10UErrorCode
@_ZN6icu_7818LocalePriorityListD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7818LocalePriorityListD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7818LocalePriorityListC2ENS_11StringPieceER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 17), (24, 32)) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %4 = alloca %"class.icu_78::CharString", align 8 ; 17 uses
  %5 = alloca %"class.icu_78::Locale", align 8    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  %i.f = load i32, ptr %3, align 4, !tbaa !16
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 336) #14 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !17
  store i32 7, ptr %3, align 4, !tbaa !16
  br label %bb.ar

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.j, i8 0, i64 328, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.h, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 20, ptr %i.l, align 8, !tbaa !21
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %1, ptr %i.a, align 8, !tbaa !23
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
  %i.y = load i8, ptr %.05.i, align 1, !tbaa !24
  %i.z = icmp eq i8 %i.y, 32
  br i1 %i.z, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.aa, %i.n
  br i1 %exitcond.not.i, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit, label %.lr.ph.i, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit: ; preds = %.lr.ph.i, %bb.e, %.backedge
  %.0.lcssa.i = phi ptr [ %i.u, %.backedge ], [ %.05.i, %.lr.ph.i ], [ %scevgep.i, %bb.e ] ; 11 uses
  store ptr %.0.lcssa.i, ptr %i.a, align 8, !tbaa !23
  %.not49 = icmp eq ptr %.0.lcssa.i, %i.n
  br i1 %.not49, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !24
  %i.ac = icmp eq i8 %i.ab, 44
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !23
  br label %.backedge.backedge

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp ult ptr %.0.lcssa.i, %i.n
  br i1 %i.ae, label %.lr.ph.preheader.i60, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit

.lr.ph.preheader.i60:                             ; preds = %bb.h
  %i.af = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ag = sub i64 %i.o, %i.af
  %scevgep.i61 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ag
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.i, %.lr.ph.preheader.i60
  %.01517.i = phi ptr [ %i.ai, %bb.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i60 ] ; 5 uses
  %i.ah = load i8, ptr %.01517.i, align 1, !tbaa !24
  switch i8 %i.ah, label %bb.i [
    i8 59, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
    i8 44, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
    i8 32, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
  ]

bb.i:                                             ; preds = %.lr.ph.i62
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i, i64 1 ; 2 uses
  %exitcond.not.i63 = icmp eq ptr %i.ai, %i.n
  br i1 %exitcond.not.i63, label %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit, label %.lr.ph.i62, !llvm.loop !39

_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit: ; preds = %.lr.ph.i62, %.lr.ph.i62, %.lr.ph.i62, %bb.i, %bb.h
  %.015.lcssa.i = phi ptr [ %.0.lcssa.i, %bb.h ], [ %scevgep.i61, %bb.i ], [ %.01517.i, %.lr.ph.i62 ], [ %.01517.i, %.lr.ph.i62 ], [ %.01517.i, %.lr.ph.i62 ]
  %i.aj = ptrtoint ptr %.015.lcssa.i to i64
  %i.ak = ptrtoint ptr %.0.lcssa.i to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread92, label %bb.j

.thread92:                                        ; preds = %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
  store i32 1, ptr %3, align 4, !tbaa !16
  br label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

bb.j:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_113findTagLengthEPKcS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.p, ptr %4, align 8, !tbaa !27
  store i32 40, ptr %i.q, align 8, !tbaa !41
  store i8 0, ptr %i.r, align 4, !tbaa !28
  store i32 0, ptr %i.s, align 8, !tbaa !43
  store i8 0, ptr %i.p, align 1, !tbaa !24
  %i.ao = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull %.0.lcssa.i, i32 noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit unwind label %bb.k ; 0 uses

common.resume:                                    ; preds = %bb.ao, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %.pn.pn, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %4) #14
  br label %common.resume

_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit:  ; preds = %bb.j
  %i.aq = load i32, ptr %3, align 4, !tbaa !16
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.l, label %.loopexit118

bb.l:                                             ; preds = %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.as = load ptr, ptr %4, align 8, !tbaa !27
  invoke void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.as, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = load i8, ptr %i.t, align 8, !tbaa !24
  %.not = icmp eq i8 %i.at, 0
  br i1 %.not, label %bb.af, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.o:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !23
  %sext = shl i64 %i.al, 32
  %i.aw = ashr exact i64 %sext, 32
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw ; 5 uses
  %i.ay = icmp ult ptr %i.ax, %i.n
  br i1 %i.ay, label %.lr.ph.preheader.i65, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70

.lr.ph.preheader.i65:                             ; preds = %bb.o
  %i.az = ptrtoaddr ptr %i.ax to i64
  %i.ba = sub i64 %i.o, %i.az
  %scevgep.i66 = getelementptr i8, ptr %i.ax, i64 %i.ba
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %bb.p, %.lr.ph.preheader.i65
  %.05.i68 = phi ptr [ %i.bd, %bb.p ], [ %i.ax, %.lr.ph.preheader.i65 ] ; 3 uses
  %i.bb = load i8, ptr %.05.i68, align 1, !tbaa !24
  %i.bc = icmp eq i8 %i.bb, 32
  br i1 %i.bc, label %bb.p, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70

bb.p:                                             ; preds = %.lr.ph.i67
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i68, i64 1 ; 2 uses
  %exitcond.not.i69 = icmp eq ptr %i.bd, %i.n
  br i1 %exitcond.not.i69, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70, label %.lr.ph.i67, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70: ; preds = %.lr.ph.i67, %bb.p, %bb.o
  %.0.lcssa.i64 = phi ptr [ %i.ax, %bb.o ], [ %.05.i68, %.lr.ph.i67 ], [ %scevgep.i66, %bb.p ] ; 6 uses
  store ptr %.0.lcssa.i64, ptr %i.a, align 8, !tbaa !23
  %.not52 = icmp eq ptr %.0.lcssa.i64, %i.n
  br i1 %.not52, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70
  %i.be = load i8, ptr %.0.lcssa.i64, align 1, !tbaa !24
  %i.bf = icmp eq i8 %i.be, 59
  br i1 %i.bf, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i64, i64 1 ; 5 uses
  %i.bh = icmp ult ptr %i.bg, %i.n
  br i1 %i.bh, label %.lr.ph.preheader.i72, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit77

.lr.ph.preheader.i72:                             ; preds = %bb.r
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %i.bj = sub i64 %i.o, %i.bi
  %scevgep.i73 = getelementptr i8, ptr %i.bg, i64 %i.bj
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.s, %.lr.ph.preheader.i72
  %.05.i75 = phi ptr [ %i.bm, %bb.s ], [ %i.bg, %.lr.ph.preheader.i72 ] ; 3 uses
  %i.bk = load i8, ptr %.05.i75, align 1, !tbaa !24
  %i.bl = icmp eq i8 %i.bk, 32
  br i1 %i.bl, label %bb.s, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit77

bb.s:                                             ; preds = %.lr.ph.i74
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i75, i64 1 ; 2 uses
  %exitcond.not.i76 = icmp eq ptr %i.bm, %i.n
  br i1 %exitcond.not.i76, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit77, label %.lr.ph.i74, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit77: ; preds = %.lr.ph.i74, %bb.s, %bb.r
  %.0.lcssa.i71 = phi ptr [ %i.bg, %bb.r ], [ %.05.i75, %.lr.ph.i74 ], [ %scevgep.i73, %bb.s ] ; 4 uses
  store ptr %.0.lcssa.i71, ptr %i.a, align 8, !tbaa !23
  %i.bn = icmp eq ptr %.0.lcssa.i71, %i.n
  br i1 %i.bn, label %bb.af, label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit77
  %i.bo = load i8, ptr %.0.lcssa.i71, align 1, !tbaa !24
  %.not53 = icmp eq i8 %i.bo, 113
  br i1 %.not53, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i71, i64 1 ; 5 uses
  %i.bq = icmp ult ptr %i.bp, %i.n
  br i1 %i.bq, label %.lr.ph.preheader.i79, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit84

.lr.ph.preheader.i79:                             ; preds = %bb.u
  %i.br = ptrtoaddr ptr %i.bp to i64
  %i.bs = sub i64 %i.o, %i.br
  %scevgep.i80 = getelementptr i8, ptr %i.bp, i64 %i.bs
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %bb.v, %.lr.ph.preheader.i79
  %.05.i82 = phi ptr [ %i.bv, %bb.v ], [ %i.bp, %.lr.ph.preheader.i79 ] ; 3 uses
  %i.bt = load i8, ptr %.05.i82, align 1, !tbaa !24
  %i.bu = icmp eq i8 %i.bt, 32
  br i1 %i.bu, label %bb.v, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit84

bb.v:                                             ; preds = %.lr.ph.i81
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i82, i64 1 ; 2 uses
  %exitcond.not.i83 = icmp eq ptr %i.bv, %i.n
  br i1 %exitcond.not.i83, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit84, label %.lr.ph.i81, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit84: ; preds = %.lr.ph.i81, %bb.v, %bb.u
  %.0.lcssa.i78 = phi ptr [ %i.bp, %bb.u ], [ %.05.i82, %.lr.ph.i81 ], [ %scevgep.i80, %bb.v ] ; 4 uses
  store ptr %.0.lcssa.i78, ptr %i.a, align 8, !tbaa !23
  %i.bw = icmp eq ptr %.0.lcssa.i78, %i.n
  br i1 %i.bw, label %bb.af, label %bb.w

bb.w:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit84
  %i.bx = load i8, ptr %.0.lcssa.i78, align 1, !tbaa !24
  %.not54 = icmp eq i8 %i.bx, 61
  br i1 %.not54, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i78, i64 1
  store ptr %i.by, ptr %i.a, align 8, !tbaa !23
  %i.bz = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111parseWeightERPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.n) ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.af, label %bb.z

bb.y:                                             ; preds = %bb.ad
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #14
  br label %bb.ao

bb.z:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !23  ; 5 uses
  %i.cd = icmp ult ptr %i.cc, %i.n
  br i1 %i.cd, label %.lr.ph.preheader.i86, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit91

.lr.ph.preheader.i86:                             ; preds = %bb.z
  %i.ce = ptrtoaddr ptr %i.cc to i64
  %i.cf = sub i64 %i.o, %i.ce
  %scevgep.i87 = getelementptr i8, ptr %i.cc, i64 %i.cf
  br label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %bb.aa, %.lr.ph.preheader.i86
  %.05.i89 = phi ptr [ %i.ci, %bb.aa ], [ %i.cc, %.lr.ph.preheader.i86 ] ; 3 uses
  %i.cg = load i8, ptr %.05.i89, align 1, !tbaa !24
  %i.ch = icmp eq i8 %i.cg, 32
  br i1 %i.ch, label %bb.aa, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit91

bb.aa:                                            ; preds = %.lr.ph.i88
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i89, i64 1 ; 2 uses
  %exitcond.not.i90 = icmp eq ptr %i.ci, %i.n
  br i1 %exitcond.not.i90, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit91, label %.lr.ph.i88, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit91: ; preds = %.lr.ph.i88, %bb.aa, %bb.z
  %.0.lcssa.i85 = phi ptr [ %i.cc, %bb.z ], [ %.05.i89, %.lr.ph.i88 ], [ %scevgep.i87, %bb.aa ] ; 2 uses
  store ptr %.0.lcssa.i85, ptr %i.a, align 8, !tbaa !23
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit91, %bb.q
  %6 = phi ptr [ %.0.lcssa.i85, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit91 ], [ %.0.lcssa.i64, %bb.q ] ; 4 uses
  %.0 = phi i32 [ %i.bz, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit91 ], [ 1000, %bb.q ] ; 2 uses
  %.not55 = icmp eq ptr %6, %i.n
  br i1 %.not55, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i8, ptr %6, align 1, !tbaa !24
  %.not56 = icmp eq i8 %i.cj, 44
  br i1 %.not56, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70, %bb.ac, %bb.ab
  %.not55121 = phi i1 [ true, %bb.ab ], [ false, %bb.ac ], [ true, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70 ]
  %.0120 = phi i32 [ %.0, %bb.ab ], [ %.0, %bb.ac ], [ 1000, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70 ]
  %7 = phi ptr [ %6, %bb.ab ], [ %6, %bb.ac ], [ %.0.lcssa.i64, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit70 ]
  %i.ck = invoke noundef zeroext i1 @_ZN6icu_7818LocalePriorityList3addERKNS_6LocaleEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %.0120, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ae unwind label %bb.y      ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not55121, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ac, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit77, %bb.t, %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit84, %bb.w, %bb.x, %bb.m
  store i32 1, ptr %3, align 4, !tbaa !16
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.loopexit118

bb.ag:                                            ; preds = %bb.ae
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.cl = load i8, ptr %i.r, align 4, !tbaa !28
  %.not.i.i.i.jt3 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.jt3, label %bb.am, label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 1
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !23
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.cn = load i8, ptr %i.r, align 4, !tbaa !28
  %.not.i.i.i.jt0 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.jt0, label %..backedge_crit_edge, label %bb.aj

.loopexit118:                                     ; preds = %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit, %bb.af
  %i.co = load i8, ptr %i.r, align 4, !tbaa !28
  %.not.i.i.i.jt1 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.jt1, label %bb.an, label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.cp = load ptr, ptr %4, align 8, !tbaa !27
  invoke void @uprv_free_78(ptr noundef %i.cp)
          to label %bb.am unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ah
  %i.cq = load ptr, ptr %4, align 8, !tbaa !27
  invoke void @uprv_free_78(ptr noundef %i.cq)
          to label %..backedge_crit_edge unwind label %.loopexit119

bb.ak:                                            ; preds = %.loopexit118
  %i.cr = load ptr, ptr %4, align 8, !tbaa !27
  invoke void @uprv_free_78(ptr noundef %i.cr)
          to label %bb.an unwind label %.loopexit.split-lp

.loopexit119:                                     ; preds = %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.ak, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp, %.loopexit119
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit119 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cs = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cs) #15
  unreachable

bb.am:                                            ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.loopexit

..backedge_crit_edge:                             ; preds = %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %..backedge_crit_edge, %bb.g
  %.be = phi ptr [ %.pre.pre, %..backedge_crit_edge ], [ %i.ad, %bb.g ]
  br label %.backedge, !llvm.loop !40

bb.an:                                            ; preds = %bb.ak, %.loopexit118
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

bb.ao:                                            ; preds = %bb.y, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.y ], [ %i.au, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %common.resume

.loopexit:                                        ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit, %bb.am
  %i.ct = load i32, ptr %3, align 4, !tbaa !16
  %i.cu = icmp slt i32 %i.ct, 1
  br i1 %i.cu, label %bb.ap, label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

bb.ap:                                            ; preds = %.loopexit
  %i.cv = load i32, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !30
  %i.cx = sub nsw i32 %i.cv, %i.cw
  %i.cy = icmp sgt i32 %i.cx, 1
  %i.cz = load i8, ptr %i.d, align 8, !range !31
  %i.da = trunc nuw i8 %i.cz to i1
  %or.cond.i = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond.i, label %bb.aq, label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

bb.aq:                                            ; preds = %bb.ap
  %i.db = load ptr, ptr %0, align 8, !tbaa !17
  %.val.i = load ptr, ptr %i.db, align 8, !tbaa !20
  call void @uprv_sortArray_78(ptr noundef %.val.i, i32 noundef %i.cv, i32 noundef 16, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_122compareLocaleAndWeightEPKvS2_S2_, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit

_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit: ; preds = %bb.an, %bb.aq, %bb.ap, %.loopexit, %.thread92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ar

bb.ar:                                            ; preds = %bb.a, %_ZN6icu_7818LocalePriorityList4sortER10UErrorCode.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -48000, -2147483648) i32 @_ZN6icu_7812_GLOBAL__N_111parseWeightERPKcS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
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
  %i.f = load i8, ptr %.05.i, align 1, !tbaa !24
  %i.g = icmp eq i8 %i.f, 32
  br i1 %i.g, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.h, %1
  br i1 %exitcond.not.i, label %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit, label %.lr.ph.i, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %.05.i, %.lr.ph.i ], [ %scevgep.i, %bb.b ] ; 5 uses
  store ptr %.0.lcssa.i, ptr %0, align 8, !tbaa !23
  %i.i = icmp eq ptr %.0.lcssa.i, %1
  br i1 %i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_110skipSpacesEPKcS2_.exit
  %i.j = load i8, ptr %.0.lcssa.i, align 1, !tbaa !24 ; 2 uses
  %i.k = add i8 %i.j, -50
  %or.cond = icmp ult i8 %i.k, -2
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i8 %i.j to i32
  %i.m = mul nuw nsw i32 %i.l, 1000
  %i.n = add nsw i32 %i.m, -48000                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !23
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.o, align 1, !tbaa !24
  %.not = icmp eq i8 %i.q, 46
  br i1 %.not, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !23
  %.not4142 = icmp eq ptr %i.r, %1
  br i1 %.not4142, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.s = phi ptr [ %i.ad, %bb.j ], [ %i.r, %.preheader ] ; 2 uses
  %.044 = phi i32 [ %.1, %bb.j ], [ 100, %.preheader ] ; 5 uses
  %.03243 = phi i32 [ %.2, %bb.j ], [ %i.n, %.preheader ] ; 4 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
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

end_hunk_0
