Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rulebasedcollator?download=true
inline.NumInlined: 395
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode:bb.a
  br i1 %.not.i34, label %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit38.backedge, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i35

_ZN6icu_789UVector6410addElementElR10UErrorCode.exit38.backedge: ; preds = %.noexc37, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i32
  br label %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit38

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i35: ; preds = %.noexc37
  %.pre.i36 = load i32, ptr %i.cf, align 8, !tbaa !216
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i32

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i32: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i35, %bb.m
  %i.co = phi i32 [ %.pre.i36, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i35 ], [ %i.cj, %bb.m ] ; 2 uses
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !217
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  store i64 %i.ci, ptr %i.cr, align 8, !tbaa !122
  %i.cs = add nsw i32 %i.co, 1
  store i32 %i.cs, ptr %i.cf, align 8, !tbaa !216
  br label %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit38.backedge

bb.n:                                             ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i33, %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit38
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7825FCDUTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(521) dereferenceable(521) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @_ZN6icu_7825FCDUTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(521) dereferenceable(521) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.o, %bb.a
  ret void

bb.q:                                             ; preds = %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.be, %bb.i ], [ %i.ct, %bb.n ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7817RuleBasedCollator32internalGetShortDefinitionStringEPKcPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [158 x i8], align 16              ; 8 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 52 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 9 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %8 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %9 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %10 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !33
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.bo

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not52 = icmp eq i32 %3, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %3, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !33
  br label %bb.bo

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.g, label %_ZNK6icu_7817RuleBasedCollator19internalGetLocaleIDE18ULocDataLocaleTypeR10UErrorCode.exit

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !63
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %_ZNK6icu_7817RuleBasedCollator19internalGetLocaleIDE18ULocDataLocaleTypeR10UErrorCode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i) ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !63
  %i.l = icmp eq i8 %i.k, 0
  %i.m = select i1 %i.l, ptr @.str.1, ptr %i.j
  br label %_ZNK6icu_7817RuleBasedCollator19internalGetLocaleIDE18ULocDataLocaleTypeR10UErrorCode.exit

_ZNK6icu_7817RuleBasedCollator19internalGetLocaleIDE18ULocDataLocaleTypeR10UErrorCode.exit: ; preds = %bb.h, %bb.g, %bb.f
  %.050 = phi ptr [ %1, %bb.f ], [ %i.m, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.n = call i32 @ucol_getFunctionalEquivalent_78(ptr noundef nonnull %i.a, i32 noundef 157, ptr noundef nonnull @.str.4, ptr noundef %.050, ptr noundef null, ptr noundef nonnull %4)
  %i.o = load i32, ptr %4, align 4, !tbaa !33
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.i, label %bb.bn

bb.i:                                             ; preds = %_ZNK6icu_7817RuleBasedCollator19internalGetLocaleIDE18ULocDataLocaleTypeR10UErrorCode.exit
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 40, ptr %i.t, align 8, !tbaa !219
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i8 0, ptr %i.u, align 4, !tbaa !166
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 13 uses
  store i32 0, ptr %i.v, align 8, !tbaa !221
  store i8 0, ptr %i.s, align 1, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = and i32 %i.x, 2
  %.not54.not = icmp eq i32 %i.y, 0
  br i1 %.not54.not, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !92
  %i.ad = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 65, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc72 unwind label %bb.k   ; 0 uses

.noexc72:                                         ; preds = %bb.j
  %i.ae = and i32 %i.ac, 12
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = select i1 %i.af, i64 21, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr @.str.5, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !63
  %i.aj = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc72._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit_crit_edge unwind label %bb.k ; 0 uses

.noexc72._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit_crit_edge: ; preds = %.noexc72
  %.pre = load i32, ptr %i.w, align 8, !tbaa !28
  br label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit

bb.k:                                             ; preds = %.noexc99, %.noexc98, %bb.w, %.noexc92, %.noexc91, %bb.t, %.noexc85, %.noexc84, %bb.q, %.noexc78, %.noexc77, %bb.n, %.noexc72, %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit: ; preds = %.noexc72._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit_crit_edge, %bb.i
  %i.al = phi i32 [ %.pre, %.noexc72._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit_crit_edge ], [ %i.x, %bb.i ] ; 3 uses
  %i.am = and i32 %i.al, 4
  %.not55 = icmp eq i32 %i.am, 0
  br i1 %.not55, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit
  %i.an = load i32, ptr %4, align 4, !tbaa !33
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.m, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !92
  %i.at = and i32 %i.as, 768                      ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %i.av = icmp eq i32 %i.at, 512
  %i.aw = select i1 %i.av, i64 24, i64 25
  %i.ax = select i1 %i.au, i64 16, i64 %i.aw
  %i.ay = load i32, ptr %i.v, align 8, !tbaa !221
  %.not.i76 = icmp eq i32 %i.ay, 0
  br i1 %.not.i76, label %.noexc77, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc77 unwind label %bb.k   ; 0 uses

.noexc77:                                         ; preds = %bb.n, %bb.m
  %i.ba = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 67, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc78 unwind label %bb.k   ; 0 uses

.noexc78:                                         ; preds = %.noexc77
  %i.bb = getelementptr inbounds nuw i8, ptr @.str.5, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !63
  %i.bd = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc78._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80_crit_edge unwind label %bb.k ; 0 uses

.noexc78._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80_crit_edge: ; preds = %.noexc78
  %.pre230 = load i32, ptr %i.w, align 8, !tbaa !28
  br label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80

_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80: ; preds = %.noexc78._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80_crit_edge, %bb.l, %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit
  %i.be = phi i32 [ %.pre230, %.noexc78._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80_crit_edge ], [ %i.al, %bb.l ], [ %i.al, %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit ] ; 3 uses
  %i.bf = and i32 %i.be, 128
  %.not56 = icmp eq i32 %i.bf, 0
  br i1 %.not56, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87, label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80
  %i.bg = load i32, ptr %4, align 4, !tbaa !33
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %bb.p, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !92
  %11 = and i32 %i.bl, 2
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i64 16, i64 17
  %i.bm = load i32, ptr %i.v, align 8, !tbaa !221
  %.not.i83 = icmp eq i32 %i.bm, 0
  br i1 %.not.i83, label %.noexc84, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc84 unwind label %bb.k   ; 0 uses

.noexc84:                                         ; preds = %bb.q, %bb.p
  %i.bo = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 68, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc85 unwind label %bb.k   ; 0 uses

.noexc85:                                         ; preds = %.noexc84
  %i.bp = getelementptr inbounds nuw i8, ptr @.str.5, i64 %13
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !63
  %i.br = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc85._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87_crit_edge unwind label %bb.k ; 0 uses

.noexc85._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87_crit_edge: ; preds = %.noexc85
  %.pre231 = load i32, ptr %i.w, align 8, !tbaa !28
  br label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87

_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87: ; preds = %.noexc85._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87_crit_edge, %bb.o, %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80
  %i.bs = phi i32 [ %.pre231, %.noexc85._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87_crit_edge ], [ %i.be, %bb.o ], [ %i.be, %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit80 ] ; 3 uses
  %i.bt = and i32 %i.bs, 8
  %.not57 = icmp eq i32 %i.bt, 0
  br i1 %.not57, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87
  %i.bu = load i32, ptr %4, align 4, !tbaa !33
  %i.bv = icmp slt i32 %i.bu, 1
  br i1 %i.bv, label %bb.s, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !92
  %14 = and i32 %i.bz, 1024
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i64 16, i64 17
  %i.ca = load i32, ptr %i.v, align 8, !tbaa !221
  %.not.i90 = icmp eq i32 %i.ca, 0
  br i1 %.not.i90, label %.noexc91, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc91 unwind label %bb.k   ; 0 uses

.noexc91:                                         ; preds = %bb.t, %bb.s
  %i.cc = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 69, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc92 unwind label %bb.k   ; 0 uses

.noexc92:                                         ; preds = %.noexc91
  %i.cd = getelementptr inbounds nuw i8, ptr @.str.5, i64 %16
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !63
  %i.cf = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc92._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94_crit_edge unwind label %bb.k ; 0 uses

.noexc92._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94_crit_edge: ; preds = %.noexc92
  %.pre232 = load i32, ptr %i.w, align 8, !tbaa !28
  br label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94

_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94: ; preds = %.noexc92._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94_crit_edge, %bb.r, %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87
  %i.cg = phi i32 [ %.pre232, %.noexc92._ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94_crit_edge ], [ %i.bs, %bb.r ], [ %i.bs, %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit87 ]
  %i.ch = and i32 %i.cg, 1
  %.not58 = icmp eq i32 %i.ch, 0
  br i1 %.not58, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit101, label %bb.u

bb.u:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94
  %i.ci = load i32, ptr %4, align 4, !tbaa !33
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %bb.v, label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit101

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !92
  %17 = and i32 %i.cn, 2048
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i64 16, i64 17
  %i.co = load i32, ptr %i.v, align 8, !tbaa !221
  %.not.i97 = icmp eq i32 %i.co, 0
  br i1 %.not.i97, label %.noexc98, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc98 unwind label %bb.k   ; 0 uses

.noexc98:                                         ; preds = %bb.w, %bb.v
  %i.cq = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 70, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc99 unwind label %bb.k   ; 0 uses

.noexc99:                                         ; preds = %.noexc98
  %i.cr = getelementptr inbounds nuw i8, ptr @.str.5, i64 %19
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !63
  %i.ct = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit101 unwind label %bb.k ; 0 uses

_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit101: ; preds = %bb.u, %.noexc99, %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %6, ptr noundef nonnull %i.a, i64 9, ptr nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit101
  %i.cu = load ptr, ptr %6, align 8, !tbaa !165
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !221 ; 3 uses
  %i.cx = load i32, ptr %4, align 4, !tbaa !33
  %i.cy = icmp sgt i32 %i.cx, 0
  %i.cz = icmp eq i32 %i.cw, 0
  %or.cond.i = or i1 %i.cz, %i.cy
  br i1 %or.cond.i, label %.loopexit228, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = load i32, ptr %i.v, align 8, !tbaa !221
  %.not.i102 = icmp eq i32 %i.da, 0
  br i1 %.not.i102, label %.noexc103, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc103 unwind label %.loopexit.split-lp224 ; 0 uses

.noexc103:                                        ; preds = %bb.z, %bb.y
  %i.dc = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 75, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc104 unwind label %.loopexit.split-lp224 ; 0 uses

.noexc104:                                        ; preds = %.noexc103
  %i.dd = icmp sgt i32 %i.cw, 0
  br i1 %i.dd, label %.lr.ph.preheader.i, label %.loopexit228

.lr.ph.preheader.i:                               ; preds = %.noexc104
  %wide.trip.count.i = zext nneg i32 %i.cw to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc106, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc106 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !63
  %i.dg = invoke signext i8 @uprv_toupper_78(i8 noundef signext %i.df)
          to label %.noexc105 unwind label %.loopexit223

.noexc105:                                        ; preds = %.lr.ph.i
  %i.dh = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.dg, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc106 unwind label %.loopexit223 ; 0 uses

.noexc106:                                        ; preds = %.noexc105
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit228, label %.lr.ph.i, !llvm.loop !218

.loopexit228:                                     ; preds = %.noexc106, %.noexc104, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  store ptr %i.di, ptr %7, align 8, !tbaa !165
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 40, ptr %i.dj, align 8, !tbaa !219
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i8 0, ptr %i.dk, align 4, !tbaa !166
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !221
  store i8 0, ptr %i.di, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 13 ; 2 uses
  store ptr %i.dm, ptr %8, align 8, !tbaa !165
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 40, ptr %i.dn, align 8, !tbaa !219
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i8 0, ptr %i.do, align 4, !tbaa !166
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !221
  store i8 0, ptr %i.dm, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 13 ; 2 uses
  store ptr %i.dq, ptr %9, align 8, !tbaa !165
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 40, ptr %i.dr, align 8, !tbaa !219
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i8 0, ptr %i.ds, align 4, !tbaa !166
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store i32 0, ptr %i.dt, align 8, !tbaa !221
  store i8 0, ptr %i.dq, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 13 ; 2 uses
  store ptr %i.du, ptr %10, align 8, !tbaa !165
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 40, ptr %i.dv, align 8, !tbaa !219
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i8 0, ptr %i.dw, align 4, !tbaa !166
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store i32 0, ptr %i.dx, align 8, !tbaa !221
  store i8 0, ptr %i.du, align 1, !tbaa !63
  %i.dy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  invoke void @_Z21ulocimp_getSubtags_78St17basic_string_viewIcSt11char_traitsIcEEPN6icu_7810CharStringES5_S5_S5_PPKcR10UErrorCode(i64 %i.dy, ptr nonnull %i.a, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %.loopexit228
  %i.dz = load i32, ptr %i.dl, align 8, !tbaa !221 ; 3 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i32, ptr %4, align 4, !tbaa !33    ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %_ZN6icu_7812_GLOBAL__N_112appendSubtagERNS_10CharStringEcPKciR10UErrorCode.exit118, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load i32, ptr %i.v, align 8, !tbaa !221
  %.not.i108 = icmp eq i32 %i.ed, 0
  br i1 %.not.i108, label %.noexc114, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc114:                                        ; preds = %bb.ad, %bb.ac
  %i.ef = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 76, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.lr.ph.i110.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.i110.preheader:                            ; preds = %.noexc114
  %i.eg = invoke signext i8 @uprv_toupper_78(i8 noundef signext 114)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc116:                                        ; preds = %.lr.ph.i110.preheader
  %i.eh = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.eg, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc117:                                        ; preds = %.noexc116
  %i.ei = invoke signext i8 @uprv_toupper_78(i8 noundef signext 111)
          to label %.noexc116.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc116.1:                                      ; preds = %.noexc117
  %i.ej = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.ei, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc117.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc117.1:                                      ; preds = %.noexc116.1
  %i.ek = invoke signext i8 @uprv_toupper_78(i8 noundef signext 111)
          to label %.noexc116.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc116.2:                                      ; preds = %.noexc117.1
  %i.el = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.ek, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc117.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc117.2:                                      ; preds = %.noexc116.2
  %i.em = invoke signext i8 @uprv_toupper_78(i8 noundef signext 116)
          to label %.noexc116.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc116.3:                                      ; preds = %.noexc117.2
  %i.en = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.em, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7812_GLOBAL__N_112appendSubtagERNS_10CharStringEcPKciR10UErrorCode.exit118thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.ae:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115appendAttributeERNS_10CharStringEc18UColAttributeValueR10UErrorCode.exit101
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit223:                                     ; preds = %.lr.ph.i, %.noexc105
  %lpad.loopexit225 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp224:                            ; preds = %bb.z, %.noexc103
  %lpad.loopexit.split-lp226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit:                                        ; preds = %.lr.ph.i176, %.noexc182
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc169, %.lr.ph.i163
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i143, %.noexc149
  %lpad.loopexit215 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc116.3, %.noexc117.2, %.noexc116.2, %.noexc117.1, %.noexc116.1, %.noexc117, %.noexc116, %.lr.ph.i110.preheader
  %lpad.loopexit217 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i123, %.noexc129
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit228, %bb.aw, %bb.ad, %.noexc114, %bb.ah, %.noexc127, %bb.ak, %.noexc135, %.noexc136, %bb.an, %.noexc147, %bb.aq, %.noexc155, %.noexc156, %bb.at, %.noexc167, %bb.av, %.noexc180
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp
end_hunk_0
