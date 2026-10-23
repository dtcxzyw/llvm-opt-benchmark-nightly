Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/measunit_extra?download=true
inline.NumInlined: 412
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_16Parser4fromENS_11StringPieceER10UErrorCode:bb.a
  tail call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull @.str.32)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !28
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_119gUnitExtrasInitOnceE acquire, align 4
  %.not11.i = icmp eq i32 %i.e, 2
  br i1 %.not11.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_119gUnitExtrasInitOnceE)
  %.not12.i = icmp eq i8 %i.f, 0
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_114initUnitExtrasER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %3), !inline_history !0
  %i.g = load i32, ptr %3, align 4, !tbaa !21
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_119gUnitExtrasInitOnceE, i64 4), align 4, !tbaa !25
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_119gUnitExtrasInitOnceE)
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_119gUnitExtrasInitOnceE, i64 4), align 4, !tbaa !25 ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread: ; preds = %bb.f
  store i32 %i.h, ptr %3, align 4, !tbaa !21
  br label %bb.g

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %bb.e, %bb.f
  %.pr = load i32, ptr %3, align 4, !tbaa !21
  %i.j = icmp slt i32 %.pr, 1
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread, %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit
  store i32 0, ptr %0, align 8, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull @.str.32)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !28
  br label %bb.i

bb.h:                                             ; preds = %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit
  store i32 0, ptr %0, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_129gSerializedUnitExtrasStemTrieE, align 8, !tbaa !26
  store ptr null, ptr %i.n, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.sink12 = phi ptr [ %i.o, %bb.h ], [ @.str.65, %bb.g ], [ @.str.65, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink12, ptr %i.p, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink12, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 40, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.v, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.w, align 8, !tbaa !18
  store i8 0, ptr %i.t, align 1, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.x, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.y, align 1, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_16Parser5parseER10UErrorCode(ptr dead_on_unwind noalias writable align 8 initializes((0, 4), (8, 12)) %0, ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.icu_78::SingleUnitImpl", align 8 ; 6 uses
  store i32 0, ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %i.d, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.e, align 4, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load i32, ptr %2, align 4, !tbaa !21
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not156 = icmp eq i32 %i.j, 0
  %or.cond158 = select i1 %i.h, i1 true, i1 %.not156
  br i1 %or.cond158, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.val177 = load i32, ptr %1, align 8, !tbaa !102 ; 2 uses
  %i.k = icmp slt i32 %.val177, %i.j
  br i1 %i.k, label %.lr.ph, label %.critedge.sink.split

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ad, %.lr.ph
  %.val179 = phi i32 [ %.val177, %.lr.ph ], [ %.val, %bb.ad ]
  %i.o = icmp eq i32 %.val179, 0
  %i.p = invoke fastcc { i64, i32 } @_ZN6icu_7812_GLOBAL__N_16Parser9nextTokenER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.fca.0.extract27.i = extractvalue { i64, i32 } %i.p, 0 ; 2 uses
  %i.q = load i32, ptr %2, align 4, !tbaa !21, !noalias !147
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.noexc
  %.fca.1.extract28.i = extractvalue { i64, i32 } %i.p, 1 ; 2 uses
  %i.s = icmp eq i32 %.fca.1.extract28.i, 7
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_16Parser12processAliasERKNS0_5TokenER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(122) %1, i64 %.fca.0.extract27.i, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.d
  %i.t = invoke fastcc { i64, i32 } @_ZN6icu_7812_GLOBAL__N_16Parser9nextTokenER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc36:                                         ; preds = %.noexc35
  %.fca.0.extract20.i = extractvalue { i64, i32 } %i.t, 0
  %.fca.1.extract21.i = extractvalue { i64, i32 } %i.t, 1
  %i.u = load i32, ptr %2, align 4, !tbaa !21, !noalias !147
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.noexc36, %bb.c
  %.sroa.14.0.i = phi i32 [ %.fca.1.extract21.i, %.noexc36 ], [ %.fca.1.extract28.i, %bb.c ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %.fca.0.extract20.i, %.noexc36 ], [ %.fca.0.extract27.i, %bb.c ] ; 2 uses
  store i8 0, ptr %i.l, align 1, !tbaa !104, !noalias !147
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %.sroa.14.0.i, 3
  br i1 %i.w, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.m, align 8, !tbaa !103, !noalias !147
  store i8 1, ptr %i.l, align 1, !tbaa !104, !noalias !147
  %i.x = invoke fastcc { i64, i32 } @_ZN6icu_7812_GLOBAL__N_16Parser9nextTokenER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc37:                                         ; preds = %bb.g
  %.fca.0.extract13.i = extractvalue { i64, i32 } %i.x, 0
  %.fca.1.extract14.i = extractvalue { i64, i32 } %i.x, 1
  %i.y = load i32, ptr %2, align 4, !tbaa !21, !noalias !147
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.n, label %.critedge

bb.h:                                             ; preds = %bb.e
  %.not58.i = icmp eq i32 %.sroa.14.0.i, 2
  br i1 %.not58.i, label %bb.i, label %.critedge.sink.split

bb.i:                                             ; preds = %bb.h
  %i.aa = trunc i64 %.sroa.0.0.i to i32
  switch i32 %i.aa, label %bb.m [
    i32 128, label %bb.j
    i32 129, label %bb.k
    i32 130, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.m, align 8, !tbaa !103, !noalias !147
  store i8 1, ptr %i.l, align 1, !tbaa !104, !noalias !147
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.m, align 8, !tbaa !103, !range !148, !noalias !147, !noundef !105
  %i.ac = trunc nuw i8 %i.ab to i1
  %spec.select.i = select i1 %i.ac, i32 -1, i32 1
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.m, align 8, !tbaa !103, !range !148, !noalias !147, !noundef !105
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.0127 = phi i1 [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.l ]
  %.sroa.7.0.i = phi i32 [ 1, %bb.i ], [ -1, %bb.j ], [ %spec.select.i, %bb.k ], [ 1, %bb.l ]
  %i.af = invoke fastcc { i64, i32 } @_ZN6icu_7812_GLOBAL__N_16Parser9nextTokenER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc38:                                         ; preds = %bb.m
  %.fca.0.extract6.i = extractvalue { i64, i32 } %i.af, 0
  %.fca.1.extract7.i = extractvalue { i64, i32 } %i.af, 1
  %i.ag = load i32, ptr %2, align 4, !tbaa !21, !noalias !147
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.noexc38, %.noexc37, %bb.f
  %.1128 = phi i1 [ false, %.noexc37 ], [ false, %bb.f ], [ %.0127, %.noexc38 ] ; 2 uses
  %.sroa.7.1.i = phi i32 [ -1, %.noexc37 ], [ 1, %bb.f ], [ %.sroa.7.0.i, %.noexc38 ]
  %.sroa.14.1.i = phi i32 [ %.fca.1.extract14.i, %.noexc37 ], [ %.sroa.14.0.i, %bb.f ], [ %.fca.1.extract7.i, %.noexc38 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.fca.0.extract13.i, %.noexc37 ], [ %.sroa.0.0.i, %bb.f ], [ %.fca.0.extract6.i, %.noexc38 ] ; 2 uses
  %i.ai = icmp eq i32 %.sroa.14.1.i, 6
  br i1 %i.ai, label %bb.o, label %.preheader.i

bb.o:                                             ; preds = %bb.n
  %i.aj = load i8, ptr %i.l, align 1, !tbaa !104, !range !148, !noalias !147, !noundef !105
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6icu_7812_GLOBAL__N_16Parser24nextSingleUnitOrConstantERbR10UErrorCode.exit.thread, label %.critedge.sink.split

.preheader.i:                                     ; preds = %bb.n, %.noexc40
  %.sroa.087.0.i = phi i64 [ %.sroa.087.1.ph.i, %.noexc40 ], [ 133143986175, %bb.n ] ; 3 uses
  %.sroa.7.2.i = phi i32 [ %.sroa.7.3.ph.i, %.noexc40 ], [ %.sroa.7.1.i, %bb.n ] ; 4 uses
  %.sroa.14.2.i = phi i32 [ %.fca.1.extract.i, %.noexc40 ], [ %.sroa.14.1.i, %bb.n ]
  %.sroa.0.2.i = phi i64 [ %.fca.0.extract.i, %.noexc40 ], [ %.sroa.0.1.i, %bb.n ] ; 4 uses
  %.0.i = phi i32 [ %.1.ph.i, %.noexc40 ], [ 0, %bb.n ] ; 3 uses
  switch i32 %.sroa.14.2.i, label %.critedge.sink.split [
    i32 4, label %bb.p
    i32 1, label %bb.r
    i32 5, label %_ZN6icu_7812_GLOBAL__N_16Parser24nextSingleUnitOrConstantERbR10UErrorCode.exit
    i32 7, label %bb.t
  ]

bb.p:                                             ; preds = %.preheader.i
  %i.al = icmp sgt i32 %.0.i, 0
  br i1 %i.al, label %.critedge.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = trunc i64 %.sroa.0.2.i to i8
  %i.an = sext i8 %i.am to i32
  %i.ao = mul nsw i32 %.sroa.7.2.i, %i.an
  br label %.noexc39

bb.r:                                             ; preds = %.preheader.i
  %i.ap = icmp sgt i32 %.0.i, 1
  br i1 %i.ap, label %.critedge.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = shl i64 %.sroa.0.2.i, 32
  %.sroa.087.4.insert.ext.i = add i64 %i.aq, -274877906944
  br label %.noexc39

bb.t:                                             ; preds = %.preheader.i
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_16Parser12processAliasERKNS0_5TokenER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(122) %1, i64 %.sroa.0.2.i, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.t, %bb.s, %bb.q
  %.sroa.087.1.ph.i = phi i64 [ %.sroa.087.0.i, %bb.q ], [ %.sroa.087.4.insert.ext.i, %bb.s ], [ %.sroa.087.0.i, %bb.t ]
  %.sroa.7.3.ph.i = phi i32 [ %i.ao, %bb.q ], [ %.sroa.7.2.i, %bb.s ], [ %.sroa.7.2.i, %bb.t ]
  %.1.ph.i = phi i32 [ 1, %bb.q ], [ 2, %bb.s ], [ %.0.i, %bb.t ]
  %.val.i = load i32, ptr %1, align 8, !tbaa !102, !noalias !147
  %.val62.i = load i32, ptr %i.i, align 8, !tbaa !106, !noalias !147
  %i.ar = icmp slt i32 %.val.i, %.val62.i
  br i1 %i.ar, label %bb.u, label %.critedge.sink.split

bb.u:                                             ; preds = %.noexc39
  %i.as = invoke fastcc { i64, i32 } @_ZN6icu_7812_GLOBAL__N_16Parser9nextTokenER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.u
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.as, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.as, 1
  %i.at = load i32, ptr %2, align 4, !tbaa !21, !noalias !147
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %.preheader.i, label %.critedge, !llvm.loop !145

_ZN6icu_7812_GLOBAL__N_16Parser24nextSingleUnitOrConstantERbR10UErrorCode.exit: ; preds = %.preheader.i
  %.pre = load i32, ptr %2, align 4, !tbaa !21
  %i.av = icmp slt i32 %.pre, 1
  br i1 %i.av, label %bb.w, label %.critedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.t, %bb.m, %bb.g, %.noexc35, %bb.d, %bb.b
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN6icu_7812_GLOBAL__N_16Parser24nextSingleUnitOrConstantERbR10UErrorCode.exit.thread: ; preds = %bb.o
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !92
  %.not29 = icmp eq i64 %i.aw, 0
  br i1 %.not29, label %bb.v, label %.critedge.sink.split

bb.v:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_16Parser24nextSingleUnitOrConstantERbR10UErrorCode.exit.thread
  store i64 %.sroa.0.1.i, ptr %i.n, align 8, !tbaa !92
  br label %.sink.split, !llvm.loop !146

bb.w:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_16Parser24nextSingleUnitOrConstantERbR10UErrorCode.exit
  %i.ax = add i64 %.sroa.0.2.i, 4294966784
  %.sroa.087.0.insert.ext.i = and i64 %i.ax, 4294967295
  %.sroa.087.0.insert.mask.i = and i64 %.sroa.087.0.i, -4294967296
  %.sroa.087.0.insert.insert.i = or disjoint i64 %.sroa.087.0.insert.ext.i, %.sroa.087.0.insert.mask.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %.sroa.087.0.insert.insert.i, ptr %3, align 8
  store i32 %.sroa.7.2.i, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ay = invoke noundef zeroext i1 @_ZN6icu_7815MeasureUnitImpl16appendSingleUnitERKNS_14SingleUnitImplER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.az = load i32, ptr %2, align 4, !tbaa !21
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.z, label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  %.not = xor i1 %.1128, true
  %or.cond = or i1 %i.ay, %.not
  br i1 %or.cond, label %bb.aa, label %.critedge.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.be = select i1 %.1128, i32 2, i32 1          ; 2 uses
  %i.bf = icmp eq i32 %i.bc, 2
  br i1 %i.bf, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = load i32, ptr %0, align 8, !tbaa !91
  %.not28 = icmp eq i32 %i.bg, %i.be
  br i1 %.not28, label %bb.ad, label %.critedge.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.v
  %.sink = phi i32 [ 1, %bb.v ], [ %i.be, %bb.ab ]
  store i32 %.sink, ptr %0, align 8, !tbaa !91
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ac, %bb.aa
  %.val = load i32, ptr %1, align 8, !tbaa !102   ; 2 uses
  %.val30 = load i32, ptr %i.i, align 8, !tbaa !106
  %i.bh = icmp slt i32 %.val, %.val30
  br i1 %i.bh, label %bb.b, label %._crit_edge

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.y ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7815MeasureUnitImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #17
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %bb.ad
  %.pre199 = load i32, ptr %i.a, align 8, !tbaa !38
  %i.bi = icmp eq i32 %.pre199, 0
  br i1 %i.bi, label %.critedge.sink.split, label %.critedge

.critedge.sink.split:                             ; preds = %bb.ac, %bb.z, %_ZN6icu_7812_GLOBAL__N_16Parser24nextSingleUnitOrConstantERbR10UErrorCode.exit.thread, %bb.o, %bb.l, %bb.h, %.noexc39, %.preheader.i, %bb.r, %bb.p, %._crit_edge, %.preheader
  store i32 1, ptr %2, align 4, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %.noexc37, %.noexc36, %.noexc, %.noexc38, %bb.x, %_ZN6icu_7812_GLOBAL__N_16Parser24nextSingleUnitOrConstantERbR10UErrorCode.exit, %.noexc40, %.critedge.sink.split, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_16ParserD2Ev(ptr noundef nonnull align 8 dead_on_return(122) dereferenceable(122) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  invoke void @uprv_free_78(ptr noundef %i.d)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.g) #17
  ret void
}

declare noundef ptr @_ZNK6icu_7811MeasureUnit13getIdentifierEv(ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815MeasureUnitImpl23forMeasureUnitMaybeCopyERKNS_11MeasureUnitER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::MeasureUnitImpl") align 8 %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::(anonymous namespace)::Parser", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6icu_7815MeasureUnitImpl4copyER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::MeasureUnitImpl") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.c = tail call noundef ptr @_ZNK6icu_7811MeasureUnit13getIdentifierEv(ptr noundef nonnull align 8 dereferenceable(19) %1)
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %i.c)
  %i.d = load ptr, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i32, ptr %i.e, align 8
  call fastcc void @_ZN6icu_7812_GLOBAL__N_16Parser4fromENS_11StringPieceER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %3, ptr %i.d, i32 %i.f, ptr noundef nonnull align 4 dereferenceable(4) %2)
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_16Parser5parseER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(122) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.h = load i8, ptr %i.g, align 4, !tbaa !16
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_16ParserD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  invoke void @uprv_free_78(ptr noundef %i.j)
          to label %_ZN6icu_7812_GLOBAL__N_16ParserD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #18
  unreachable

_ZN6icu_7812_GLOBAL__N_16ParserD2Ev.exit:         ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.m) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6icu_7812_GLOBAL__N_16ParserD2Ev(ptr noundef nonnull align 8 dead_on_return(122) dereferenceable(122) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_16ParserD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7815MeasureUnitImpl33extractIndividualUnitsWithIndicesER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::MaybeStackVector.1") align 8 initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  store i32 0, ptr %0, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.c, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 8, ptr %i.e, align 8, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.f, align 4, !tbaa !113
  %i.g = load i32, ptr %1, align 8, !tbaa !91
  %.not = icmp eq i32 %i.g, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !55
  %i.h = load i32, ptr %2, align 4, !tbaa !21
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZN6icu_7816MaybeStackVectorINS_24MeasureUnitImplWithIndexELi8EE28emplaceBackAndCheckErrorCodeIJiRKNS_15MeasureUnitImplER10UErrorCodeEEEPS1_S8_DpOT_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZN6icu_7810MemoryPoolINS_24MeasureUnitImplWithIndexELi8EE6createIJRiRKNS_15MeasureUnitImplER10UErrorCodeEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.k = load i32, ptr %2, align 4, !tbaa !21
  %i.l = icmp slt i32 %i.k, 1
  %i.m = icmp eq ptr %i.j, null
  %or.cond.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i, label %bb.d, label %_ZN6icu_7816MaybeStackVectorINS_24MeasureUnitImplWithIndexELi8EE28emplaceBackAndCheckErrorCodeIJiRKNS_15MeasureUnitImplER10UErrorCodeEEEPS1_S8_DpOT_.exit

bb.d:                                             ; preds = %.noexc
  store i32 7, ptr %2, align 4, !tbaa !21
  br label %_ZN6icu_7816MaybeStackVectorINS_24MeasureUnitImplWithIndexELi8EE28emplaceBackAndCheckErrorCodeIJiRKNS_15MeasureUnitImplER10UErrorCodeEEEPS1_S8_DpOT_.exit

_ZN6icu_7816MaybeStackVectorINS_24MeasureUnitImplWithIndexELi8EE28emplaceBackAndCheckErrorCodeIJiRKNS_15MeasureUnitImplER10UErrorCodeEEEPS1_S8_DpOT_.exit: ; preds = %bb.d, %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %2, align 4, !tbaa !21
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph.split.preheader, label %.split

bb.g:                                             ; preds = %.lr.ph.split.preheader
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.j

.lr.ph.split.preheader:                           ; preds = %.lr.ph, %bb.h
end_hunk_0
