Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_realize-4a354b9ff5239a8d.typst_realize.d3c69a4675098945-cgu.0?download=true
inline.NumInlined: 1838
inline.NumDeleted: 1082
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvCsibhcYuwTAtB_13typst_realize12visit_styled:bb.a
  %i.bp = icmp eq ptr %.sroa.08.0, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model8document1__NtB9_12DocumentElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.bp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = icmp eq ptr %.sroa.08.0, @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.bq, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.br = load ptr, ptr %.sroa.061.0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.bs = load i64, ptr %i.ad, align 8, !noundef !11 ; 2 uses
  %i.bt = load i64, ptr %0, align 8, !range !17, !noundef !11
  switch i64 %i.bt, label %bb.an [
    i64 1, label %bb.al
    i64 0, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.preheader
  ]

bb.h:                                             ; preds = %bb.f
  %i.bu = icmp eq ptr %.sroa.08.0, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.bu, label %bb.j, label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit

bb.i:                                             ; preds = %bb.f
  %i.bv = load i64, ptr %0, align 8, !range !17, !noundef !11
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.aj, label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit

bb.j:                                             ; preds = %bb.h
  %i.bx = load i64, ptr %0, align 8, !range !17, !noundef !11
  switch i64 %i.bx, label %bb.k [
    i64 0, label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit
    i64 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.by = icmp eq i64 %i.bg, 0
  %.sroa.015.0.in.v = select i1 %i.by, i64 48, i64 112
  %.sroa.015.0.in = getelementptr inbounds nuw i8, ptr %.sroa.06.0412, i64 %.sroa.015.0.in.v
  %.sroa.015.0 = load i64, ptr %.sroa.015.0.in, align 8, !range !14, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.n, i8 0, i64 15, i1 false)
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  store i8 -128, ptr %.sroa.4127.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 54)
          to label %bb.ag unwind label %bb.af

bb.l:                                             ; preds = %bb.j
  %i.bz = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7target_1__NtB9_10TargetElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0)
          to label %.noexc171 unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc171:                                        ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.m

bb.m:                                             ; preds = %.noexc171
  call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !1992, !noalias !1993, !nonnull !11, !noundef !11 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !1992, !noalias !1993, !nonnull !11, !align !13, !noundef !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !invariant.load !11, !noalias !1994, !nonnull !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1994
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !11, !noalias !1994, !nonnull !11
  invoke void %i.cg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull %i.ca) #32
          to label %.noexc172 unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !6

.noexc172:                                        ; preds = %bb.m
  %i.ch = load i128, ptr %i.i, align 16, !noalias !1994, !noundef !11
  %i.ci = icmp eq i128 %i.ch, -83898901240135865293456503230200938719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1994
  br i1 %i.ci, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit, label %bb.n, !prof !21

bb.n:                                             ; preds = %.noexc172
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7target_1__NtB9_10TargetElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bz) #30
          to label %.noexc173 unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc173:                                        ; preds = %bb.n
  unreachable

.thread280.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ct, %bb.cb
  %lpad.loopexit.split-lp758 = landingpad { ptr, i32 }
          cleanup
  br label %.thread280

.thread280.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.m, %bb.ab, %bb.aj, %bb.l, %bb.al, %bb.z
  %lpad.loopexit323 = landingpad { ptr, i32 }
          cleanup
  br label %.thread280

.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ag, %bb.ah, %bb.as, %bb.bh, %bb.bc, %bb.bi, %bb.n, %bb.bv, %.split._crit_edge.i, %bb.cj, %bb.cn, %bb.cv, %bb.cw, %bb.b
  %i.cj = phi ptr [ %i.fw, %.split._crit_edge.i ], [ %i.fw, %bb.cj ], [ %i.fw, %bb.bv ], [ %i.aa, %bb.n ], [ %i.fw, %bb.bi ], [ %i.aa, %bb.bc ], [ %i.fw, %bb.bh ], [ %i.fw, %bb.cv ], [ %i.aa, %bb.b ], [ %i.aa, %bb.as ], [ %i.fw, %bb.cn ], [ %i.fw, %bb.cw ], [ %i.aa, %bb.ah ], [ %i.aa, %bb.ag ]
  %.sroa.056.1.ph.ph.ph.ph = phi i8 [ %.sroa.056.4, %.split._crit_edge.i ], [ %.sroa.056.4, %bb.cj ], [ 0, %bb.bv ], [ 1, %bb.n ], [ 1, %bb.bi ], [ 1, %bb.bc ], [ 1, %bb.bh ], [ %.sroa.056.4, %bb.cv ], [ 1, %bb.b ], [ 1, %bb.as ], [ %.sroa.056.4, %bb.cn ], [ %.sroa.056.4, %bb.cw ], [ 1, %bb.ah ], [ 1, %bb.ag ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread280

.thread280:                                       ; preds = %.thread280.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit
  %i.ck = phi ptr [ %i.cj, %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.fw, %.thread280.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.056.1.ph = phi i8 [ %.sroa.056.1.ph.ph.ph.ph, %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.056.4, %.thread280.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit323, %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp758, %.thread280.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cl = trunc nuw i8 %.sroa.056.1.ph to i1
  br label %.thread259

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.noexc172
  %.val.i = load i8, ptr %i.ca, align 1, !range !22, !noalias !1995, !noundef !11
  switch i8 %.val.i, label %default.unreachable550 [
    i8 0, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit.thread
    i8 1, label %bb.o
    i8 2, label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit
  ]

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %.noexc171, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit
  store i8 1, ptr %i.au, align 8
  br label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit

bb.o:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit
  %i.cm = load ptr, ptr %i.aj, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.co = load i64, ptr %i.bo, align 16, !range !23, !noundef !11 ; 3 uses
  %i.cp = icmp ne i64 %i.co, 4
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nsw i64 %i.co, -3
  %i.cr = icmp samesign ugt i64 %i.co, 2
  %i.cs = select i1 %i.cr, i64 %i.cq, i64 1
  switch i64 %i.cs, label %.loopexit322 [
    i64 0, label %.sink.split
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.p
  %.sink757 = phi i64 [ 112, %bb.p ], [ 48, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.0412, i64 %.sink757
  %i.cu = load i64, ptr %i.ct, align 16, !range !14, !noundef !11
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  %.sroa.013.0 = phi i64 [ 1, %bb.o ], [ %i.cu, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.q, i8 0, i64 15, i1 false)
  store i8 -128, ptr %.sroa.4109.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 44)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #31
          to label %.thread259 unwind label %bb.ae

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  %i.cw = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %.sroa.013.0)
          to label %bb.v unwind label %bb.u, !noalias !1998 ; 2 uses

bb.t:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !1998
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.r) #31
          to label %.thread259 unwind label %bb.t, !noalias !1996

bb.v:                                             ; preds = %bb.s
  %i.cz = extractvalue { i64, i64 } %i.cw, 1      ; 2 uses
  %i.da = extractvalue { i64, i64 } %i.cw, 0      ; 2 uses
  store i8 1, ptr %i.ak, align 8, !alias.scope !1996
  store i64 %i.da, ptr %i.s, align 8, !alias.scope !1996
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !1996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.r, i64 16, i1 false), !alias.scope !1998
  store ptr inttoptr (i64 16 to ptr), ptr %i.an, align 8, !alias.scope !1996
  store i64 0, ptr %i.ao, align 8, !alias.scope !1996
  store ptr inttoptr (i64 16 to ptr), ptr %i.ap, align 8, !alias.scope !1996
  store i64 0, ptr %i.aq, align 8, !alias.scope !1996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  %i.db = load ptr, ptr %i.cn, align 8, !alias.scope !1999, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 128
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !1999, !noundef !11 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !1999 ; 2 uses
  %.not.not.i = icmp eq ptr %i.dd, null
  br i1 %.not.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2000
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  %i.dg = load i8, ptr %i.ar, align 1, !alias.scope !2001, !noalias !1999, !noundef !11
  %.not.i214 = icmp sgt i8 %i.dg, -1
  %.val.i215 = load ptr, ptr %i.am, align 8, !alias.scope !2001, !noalias !1999 ; 5 uses
  %.val21.i = load i64, ptr %i.as, align 8, !alias.scope !2001, !noalias !1999
  br i1 %.not.i214, label %4, label %bb.aa

4:                                                ; preds = %bb.w
  %.not.i.i.i216 = icmp eq ptr %.val.i215, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i216, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %4
  %i.dh = getelementptr inbounds i8, ptr %.val.i215, i64 -16
  %i.di = atomicrmw add ptr %i.dh, i64 1 monotonic, align 8, !noalias !2002
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %bb.y, label %bb.aa, !prof !12

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val.i215) #30
          to label %.noexc217 unwind label %.body218

.noexc217:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.s, i64 72, i1 false), !noalias !1999
  invoke void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink4warn(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.db, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.e)
          to label %.noexc174 unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc174:                                        ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2000
  br label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit

bb.aa:                                            ; preds = %bb.w, %4, %bb.x
  %.sroa.06.0.i = phi ptr [ %.val.i215, %bb.x ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i215, %bb.w ]
  store i64 %i.da, ptr %i.at, align 8, !noalias !2000
  store i64 %i.cz, ptr %.sroa.4243.0..sroa_idx, align 8, !noalias !2000
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5244.0..sroa_idx, align 8, !noalias !2000
  store i64 0, ptr %.sroa.6245.0..sroa_idx, align 8, !noalias !2000
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.7246.0..sroa_idx, align 8, !noalias !2000
  store i64 0, ptr %.sroa.8247.0..sroa_idx, align 8, !noalias !2000
  store ptr %.sroa.06.0.i, ptr %.sroa.9248.0..sroa_idx, align 8, !noalias !2000
  store i64 %.val21.i, ptr %.sroa.9248.sroa.4.0..sroa.9248.0..sroa_idx.sroa_idx, align 8, !noalias !2000
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !2000
  store i64 3, ptr %i.h, align 8, !noalias !2000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.s, i64 72, i1 false), !noalias !1999
  invoke void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink4warn(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.db, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.g)
          to label %bb.ab unwind label %bb.ad, !noalias !2000

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !2000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2000
  store i64 8317987319222330741, ptr %i.d, align 8, !noalias !2000
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2000
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2000
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !noalias !2000
  %i.dk = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128CsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d) #32, !noalias !2000 ; 2 uses
  %i.dl = extractvalue { i64, i64 } %i.dk, 0
  %i.dm = extractvalue { i64, i64 } %i.dk, 1
  %i.dn = zext i64 %i.dl to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = shl nuw i128 %i.do, 64
  %i.dq = or disjoint i128 %i.dp, %i.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2000
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !invariant.load !11, !noalias !2000, !nonnull !11
  %i.dt = invoke noundef zeroext i1 %i.ds(ptr noundef nonnull %i.dd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.f, i128 noundef %i.dq)
          to label %.noexc175 unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1951 ; 0 uses

.noexc175:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2000
  br label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit

bb.ac:                                            ; preds = %.body218, %bb.ad
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2000
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(80) %i.h) #31
          to label %.thread259 unwind label %bb.ac, !noalias !2000

.body218:                                         ; preds = %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.s) #31
          to label %.thread259 unwind label %bb.ac, !noalias !1999

bb.ae:                                            ; preds = %bb.db, %bb.ay, %bb.ao, %bb.af, %bb.r
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.af:                                            ; preds = %bb.k
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #31
          to label %.thread259 unwind label %bb.ae

bb.ag:                                            ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.p, i64 noundef %.sroa.015.0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.o)
          to label %bb.ah unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dz = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.ai unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah, %bb.at, %bb.bd
  %.pn.pn = phi { ptr, i64 } [ %i.ey, %bb.at ], [ %i.fq, %bb.bd ], [ %i.dz, %bb.ah ] ; 2 uses
  %.sroa.0.0 = extractvalue { ptr, i64 } %.pn.pn, 0
  br label %bb.be

bb.aj:                                            ; preds = %bb.i
  %i.ea = load ptr, ptr %i.av, align 8, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.eb = load ptr, ptr %.sroa.0102.0, align 8, !nonnull !11, !noundef !11
  %i.ec = load i64, ptr %i.ay, align 8, !noundef !11
  store ptr %i.eb, ptr %i.t, align 8
  store i64 %i.ec, ptr %i.aw, align 8
  store ptr null, ptr %i.ax, align 8
  invoke void @_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library5model8documentNtB5_12DocumentInfo15populate_locale(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.ea, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.ak unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit

_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit: ; preds = %.lr.ph.i.i.i.peel, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_5model8document12DocumentElemKh1_ECsibhcYuwTAtB_13typst_realize.exit, %.noexc175, %.noexc174, %bb.i, %bb.ak, %bb.j, %bb.h, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit.thread, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.04.1 = phi i1 [ %.sroa.04.0.ph415, %.noexc175 ], [ %.sroa.04.0.ph415, %bb.ak ], [ %.sroa.04.0.ph415, %bb.i ], [ %.sroa.04.0.ph415, %bb.j ], [ true, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit.thread ], [ %.sroa.04.0.ph415, %bb.h ], [ %.sroa.04.0.ph415, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtB8_7target_10TargetElemKh0_ECsibhcYuwTAtB_13typst_realize.exit ], [ %.sroa.04.0.ph415, %.noexc174 ], [ %.sroa.04.0.ph415, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_5model8document12DocumentElemKh1_ECsibhcYuwTAtB_13typst_realize.exit ], [ %.sroa.04.0.ph415, %.lr.ph.i.i.i.peel ] ; 2 uses
  %i.ed = icmp eq ptr %i.ba, %i.ai
  br i1 %i.ed, label %.outer325._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit
  %.sroa.04.0.ph415 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.sroa.04.1, %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit ] ; 10 uses
  %.sroa.06.0.ph414 = phi ptr [ %i.ah, %.lr.ph.lr.ph ], [ %i.ba, %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit ]
  br label %bb.c

bb.al:                                            ; preds = %bb.g
  %i.ee = load ptr, ptr %i.av, align 8, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.br, ptr %i.j, align 8
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  invoke void @_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library5model8documentNtB5_12DocumentInfo8populate(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.am unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.preheader

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.preheader: ; preds = %bb.g, %bb.am
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.backedge, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.preheader
  %.sroa.12.0.i = phi i64 [ %i.bs, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.preheader ], [ %.sroa.12.1.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.backedge ] ; 3 uses
  %.sroa.08.0.i20.i.i = phi ptr [ %i.br, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.preheader ], [ %.sroa.08.0.i19.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.backedge ] ; 4 uses
  %.sroa.08.025.i15.i.i = phi ptr [ inttoptr (i64 16 to ptr), %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.preheader ], [ %.sroa.08.025.i14.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.backedge ] ; 2 uses
  %i.ef = phi ptr [ inttoptr (i64 16 to ptr), %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.preheader ], [ %i.ej, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.backedge ] ; 2 uses
  %i.eg = icmp eq ptr %.sroa.08.025.i15.i.i, %i.ef
  br i1 %i.eg, label %.lr.ph.i.i.i.peel, label %.loopexit.i.i

.lr.ph.i.i.i.peel:                                ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i
  %.not.i.i.i.peel = icmp eq ptr %.sroa.08.0.i20.i.i, null
  %i.eh = icmp eq i64 %.sroa.12.0.i, 0
  %or.cond926 = select i1 %.not.i.i.i.peel, i1 true, i1 %i.eh
  br i1 %or.cond926, label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit, label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i.i.i.peel
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.12.0.i, 7
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i20.i.i, i64 %.idx.i.i.i
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.12.1.i = phi i64 [ undef, %.loopexit.loopexit.i.i ], [ %.sroa.12.0.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i ]
  %.sroa.08.0.i19.i.i = phi ptr [ null, %.loopexit.loopexit.i.i ], [ %.sroa.08.0.i20.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i ]
  %.sroa.08.025.i14.i.i = phi ptr [ %.sroa.08.0.i20.i.i, %.loopexit.loopexit.i.i ], [ %.sroa.08.025.i15.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.ei, %.loopexit.loopexit.i.i ], [ %i.ef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i ] ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %.lcssa.i.i.i, i64 -128
  %i.ek = getelementptr inbounds i8, ptr %.lcssa.i.i.i, i64 -112
  %i.el = load i64, ptr %i.ek, align 16, !range !23, !noalias !2003, !noundef !11 ; 2 uses
  %i.em = icmp ne i64 %i.el, 4
  call void @llvm.assume(i1 %i.em)
  %.not.i5.i.i = icmp eq i64 %i.el, 3
  br i1 %.not.i5.i.i, label %.split.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.backedge

.split.i.i:                                       ; preds = %.loopexit.i.i
  %i.en = getelementptr i8, ptr %.lcssa.i.i.i, i64 -88
  %.val4.i.i.i = load ptr, ptr %i.en, align 8, !noalias !2003, !nonnull !11, !align !13, !noundef !11
  %i.eo = getelementptr i8, ptr %.lcssa.i.i.i, i64 -72
  %.val5.i.i.i = load i8, ptr %i.eo, align 8, !noalias !2003
  %i.ep = icmp eq ptr %.val4.i.i.i, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model8document1__NtB9_12DocumentElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %i.eq = icmp eq i8 %.val5.i.i.i, 1
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_5model8document12DocumentElemKh1_ECsibhcYuwTAtB_13typst_realize.exit, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.backedge

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i.backedge: ; preds = %.split.i.i, %.loopexit.i.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_5model8document12DocumentElemKh1_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0CsibhcYuwTAtB_13typst_realize.exit.i.i

bb.an:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.er = icmp eq i64 %i.bg, 0
  %.sroa.09.0.in.v = select i1 %i.er, i64 48, i64 112
  %.sroa.09.0.in = getelementptr inbounds nuw i8, ptr %.sroa.06.0412, i64 %.sroa.09.0.in.v
  %.sroa.09.0 = load i64, ptr %.sroa.09.0.in, align 8, !range !14, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.x, i8 0, i64 15, i1 false)
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 15
  store i8 -128, ptr %.sroa.472.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 55)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x) #31
          to label %.thread259 unwind label %bb.ae

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.et = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %.sroa.09.0)
          to label %bb.as unwind label %bb.ar, !noalias !2004 ; 2 uses

bb.aq:                                            ; preds = %bb.ar
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2004
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.y) #31
          to label %.thread259 unwind label %bb.aq, !noalias !2005

bb.as:                                            ; preds = %bb.ap
  %i.ew = extractvalue { i64, i64 } %i.et, 1
  %i.ex = extractvalue { i64, i64 } %i.et, 0
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 %i.ex, ptr %i.z, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ew, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 0, ptr %.sroa.6229.0..sroa_idx, align 8
  %.sroa.8230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i8 0, ptr %.sroa.8230.0..sroa_idx, align 8
  %i.ey = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.z)
          to label %bb.at unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ai

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_5model8document12DocumentElemKh1_ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.split.i.i
  %i.ez = load i64, ptr %0, align 8, !range !17
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn.exit, label %bb.au

bb.au:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_5model8document12DocumentElemKh1_ECsibhcYuwTAtB_13typst_realize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.fb = load i64, ptr %i.bo, align 16, !range !23, !noundef !11 ; 3 uses
  %i.fc = icmp ne i64 %i.fb, 4
  call void @llvm.assume(i1 %i.fc)
  %i.fd = add nsw i64 %i.fb, -3
  %i.fe = icmp samesign ugt i64 %i.fb, 2
  %i.ff = select i1 %i.fe, i64 %i.fd, i64 1
  switch i64 %i.ff, label %.loopexit322 [
    i64 0, label %bb.av
    i64 1, label %bb.aw
    i64 2, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.06.0412, i64 48
  %i.fh = load i64, ptr %i.fg, align 8, !range !14, !noundef !11
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.06.0412, i64 112
  %i.fj = load i64, ptr %i.fi, align 16, !range !14, !noundef !11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.aw, %bb.av
  %.sroa.011.0 = phi i64 [ %i.fh, %bb.av ], [ %i.fj, %bb.aw ], [ 1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.u, i8 0, i64 15, i1 false)
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  store i8 -128, ptr %.sroa.489.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 66)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #31
          to label %.thread259 unwind label %bb.ae

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fl = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %.sroa.011.0)
          to label %bb.bc unwind label %bb.bb, !noalias !2006 ; 2 uses

bb.ba:                                            ; preds = %bb.bb
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2006
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.v) #31
          to label %.thread259 unwind label %bb.ba, !noalias !2007

bb.bc:                                            ; preds = %bb.az
  %i.fo = extractvalue { i64, i64 } %i.fl, 1
  %i.fp = extractvalue { i64, i64 } %i.fl, 0
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7237.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.fp, ptr %i.w, align 8
  %.sroa.2232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.fo, ptr %.sroa.2232.0..sroa_idx, align 8
  %.sroa.3233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.3233.0..sroa_idx, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.4234.0..sroa_idx, align 8
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5235.0..sroa_idx, align 8
  %.sroa.6236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 0, ptr %.sroa.6236.0..sroa_idx, align 8
  %.sroa.8238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i8 0, ptr %.sroa.8238.0..sroa_idx, align 8
  %i.fq = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.w)
          to label %bb.bd unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

bb.be:                                            ; preds = %.loopexit760, %bb.ai
  %i.fr = phi ptr [ %i.fw, %.loopexit760 ], [ %i.aa, %bb.ai ]
  %.sroa.056.2 = phi i1 [ %i.kt, %.loopexit760 ], [ true, %bb.ai ]
  %.pn157.pn = phi { ptr, i64 } [ %.pn157, %.loopexit760 ], [ %.pn.pn, %bb.ai ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.4, %.loopexit760 ], [ %.sroa.0.0, %bb.ai ] ; 2 uses
  %.sroa.11.2 = extractvalue { ptr, i64 } %.pn157.pn, 1 ; 2 uses
  %i.fs = icmp ne ptr %i.fr, null
  %or.cond = select i1 %i.fs, i1 %.sroa.056.2, i1 false
  br i1 %or.cond, label %bb.cz, label %bb.cy

bb.bf:                                            ; preds = %bb.d, %bb.c
  %i.ft = icmp eq ptr %i.ba, %i.ai
  br i1 %i.ft, label %.outer325._crit_edge, label %bb.c

bb.bg:                                            ; preds = %bb.bm, %.outer325._crit_edge
  %i.fu = phi ptr [ %i.gx, %bb.bm ], [ %i.ac, %.outer325._crit_edge ]
  %i.fv = phi i64 [ %i.gw, %bb.bm ], [ %i.ag, %.outer325._crit_edge ] ; 3 uses
  %i.fw = phi ptr [ %i.gv, %bb.bm ], [ %i.aa, %.outer325._crit_edge ] ; 14 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  %i.ga = load ptr, ptr %i.fz, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.gd = load ptr, ptr %i.ga, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = and i64 %i.ge, 7
  %i.gg = sub nsw i64 0, %i.gf
  %i.gh = getelementptr i8, ptr %i.gc, i64 %i.gg  ; 3 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gd to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = icmp ult ptr %i.gh, %i.gd
  %i.gm = icmp ult i64 %i.gk, 24
  %or.cond.i = or i1 %i.gl, %i.gm
  br i1 %or.cond.i, label %bb.bh, label %.noexc166

.noexc166:                                        ; preds = %bb.bg
  %i.gn = getelementptr i8, ptr %i.gh, i64 -24    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  store ptr %i.gn, ptr %i.gb, align 8
  br label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 112
  %i.gp = invoke noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.go, i64 noundef 8, i64 noundef 24) #33
          to label %.noexc167 unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc167:                                        ; preds = %bb.bh
  %.not5.i = icmp eq ptr %i.gp, null
  br i1 %.not5.i, label %bb.bi, label %bb.bn, !prof !12

bb.bi:                                            ; preds = %.noexc167
  invoke void @_RNvCsaPYV88GQHqL_7bumpalo3oom() #27
          to label %.noexc168 unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc168:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %.outer325._crit_edge
  br i1 %.not, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.gq = getelementptr i8, ptr %i.ac, i64 8
  %.val170 = load i64, ptr %i.gq, align 8         ; 3 uses
  %.not.i.i189 = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i189, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gr = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.gs = atomicrmw add ptr %i.gr, i64 1 monotonic, align 8
  %i.gt = icmp slt i64 %i.gs, 0
  br i1 %i.gt, label %.noexc190, label %bb.bm, !prof !12

.noexc190:                                        ; preds = %bb.bl
  call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val, i64 noundef %.val170) #30
  unreachable

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bj
  %.sroa.5.0 = phi i64 [ %i.ag, %bb.bj ], [ %.val170, %bb.bl ], [ %.val170, %bb.bk ]
  %.sroa.018.0 = phi ptr [ %i.aa, %bb.bj ], [ %.val, %bb.bl ], [ inttoptr (i64 16 to ptr), %bb.bk ]
  %i.gu = call { ptr, i64 } @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB2_6Styles7outside(ptr noundef nonnull %.sroa.018.0, i64 noundef %.sroa.5.0) ; 2 uses
  %i.gv = extractvalue { ptr, i64 } %i.gu, 0      ; 2 uses
  %i.gw = extractvalue { ptr, i64 } %i.gu, 1      ; 3 uses
  store ptr %i.gv, ptr %2, align 8
  store i64 %i.gw, ptr %i.ab, align 8
  %i.gx = inttoptr i64 %i.gw to ptr
  br label %bb.bg

bb.bn:                                            ; preds = %.noexc167, %.noexc166
  %.sroa.0.0.i = phi ptr [ %i.gn, %.noexc166 ], [ %i.gp, %.noexc167 ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !2008
  %.not150 = icmp eq ptr %i.fw, null
  br i1 %.not150, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gy = load ptr, ptr %i.fx, align 8, !nonnull !11, !align !13, !noundef !11 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 56 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.fw, ptr %i.c, align 8, !noalias !2009
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.fv, ptr %i.ha, align 8, !noalias !2009
  %i.hb = load i64, ptr %i.gz, align 8, !noalias !2009, !noundef !11
  %.not.i191 = icmp eq i64 %i.hb, 0
  br i1 %.not.i191, label %bb.bp, label %bb.bq, !prof !21

bb.bp:                                            ; preds = %bb.bo
  store i64 -1, ptr %i.gz, align 8, !noalias !2009
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 80 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !noalias !2009, !noundef !11 ; 5 uses
  %i.hf = icmp ult i64 %i.he, 576460752303423488
  call void @llvm.assume(i1 %i.hf)
  %i.hg = load i64, ptr %i.hc, align 8, !range !16, !noalias !2009, !noundef !11
  %i.hh = icmp samesign ult i64 %i.he, %i.hg
  br i1 %i.hh, label %bb.bw, label %bb.bv

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #30
          to label %bb.bs unwind label %bb.bt, !noalias !2009

bb.br:                                            ; preds = %bb.bt
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2009
  unreachable

bb.bs:                                            ; preds = %bb.bq
  unreachable

bb.bt:                                            ; preds = %bb.bq
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.br, !noalias !2009, !inline_history !5

bb.bu:                                            ; preds = %bb.bn, %bb.bw, %bb.bv
  %.sroa.056.4 = phi i8 [ 0, %bb.bw ], [ 0, %bb.bv ], [ 1, %bb.bn ] ; 7 uses
  %.sroa.022.0 = phi ptr [ %i.hp, %bb.bw ], [ %i.hk, %bb.bv ], [ %i.fu, %bb.bn ] ; 6 uses
  br i1 %.sroa.04.0.ph.lcssa410, label %bb.cd, label %bb.bx

bb.bv:                                            ; preds = %bb.bp
  store i64 0, ptr %i.gz, align 8, !noalias !2009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hk = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsauuqoTeRoFb_11typed_arenaINtB2_5ArenaNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE15alloc_slow_pathCsibhcYuwTAtB_13typst_realize(ptr noundef nonnull align 8 %i.gz, ptr noundef nonnull %i.fw, i64 noundef %i.fv)
          to label %bb.bu unwind label %.thread280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bp
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 72 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !2010, !noalias !2009
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.he ; 2 uses
  store ptr %i.fw, ptr %i.hl, align 8, !noalias !2009
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i64 %i.fv, ptr %i.hm, align 8, !noalias !2009
  %i.hn = add nuw nsw i64 %i.he, 1
  store i64 %i.hn, ptr %i.hd, align 8, !alias.scope !2010, !noalias !2009
  %i.ho = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !2009, !nonnull !11, !noundef !11
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.he
  %.pre10.i = load i64, ptr %i.gz, align 8, !noalias !2009
  %i.hq = add i64 %.pre10.i, 1
  store i64 %i.hq, ptr %i.gz, align 8, !noalias !2009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bu

bb.bx:                                            ; preds = %bb.ck, %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %i.hr = load ptr, ptr %.sroa.022.0, align 8, !alias.scope !2011, !nonnull !11, !noundef !11 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !2011, !noundef !11 ; 2 uses
  %.idx423 = shl nuw nsw i64 %i.ht, 7
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx423 ; 3 uses
  %i.hv = icmp eq i64 %i.ht, 0
  br i1 %i.hv, label %.loopexit315, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.bx, %.outer320
  %.sroa.01.0.i.ph419 = phi ptr [ %i.ij, %.outer320 ], [ null, %bb.bx ]
  %.sroa.0249.0.ph418 = phi ptr [ %i.hx, %.outer320 ], [ %i.hr, %bb.bx ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.preheader.lr.ph
  %i.hw = phi ptr [ %.sroa.0249.0.ph418, %.lr.ph.i.preheader.lr.ph ], [ %i.hx, %.lr.ph.i.backedge ] ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 128 ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hz = load i64, ptr %i.hy, align 16, !range !23, !alias.scope !2012, !noalias !2013, !noundef !11 ; 3 uses
  %i.ia = icmp ne i64 %i.hz, 4
  call void @llvm.assume(i1 %i.ia), !noalias !2011
  %i.ib = add nsw i64 %i.hz, -3
  %i.ic = icmp samesign ugt i64 %i.hz, 2
  %i.id = select i1 %i.ic, i64 %i.ib, i64 1
  switch i64 %i.id, label %bb.by [
    i64 0, label %bb.ca
    i64 1, label %bb.bz
    i64 2, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERB1K_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB1O_7content7element7ElementENCNvMB1M_NtB1M_6Styles4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2K_B3v_QNCNvCsibhcYuwTAtB_13typst_realize18finish_interrupted0E0E0B5D_.exit.i
  ]

bb.by:                                            ; preds = %.lr.ph.i
  unreachable

bb.bz:                                            ; preds = %.lr.ph.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.if = load i64, ptr %i.ie, align 16, !range !25, !alias.scope !2012, !noalias !2013, !noundef !11
  %i.ig = icmp ult i64 %i.if, 2
  br i1 %i.ig, label %bb.ca, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERB1K_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB1O_7content7element7ElementENCNvMB1M_NtB1M_6Styles4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2K_B3v_QNCNvCsibhcYuwTAtB_13typst_realize18finish_interrupted0E0E0B5D_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERB1K_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB1O_7content7element7ElementENCNvMB1M_NtB1M_6Styles4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2K_B3v_QNCNvCsibhcYuwTAtB_13typst_realize18finish_interrupted0E0E0B5D_.exit.i: ; preds = %bb.bz, %.lr.ph.i
  %i.ih = icmp eq ptr %i.hx, %i.hu
  br i1 %i.ih, label %.loopexit315, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERB1K_uINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB1O_7content7element7ElementENCNvMB1M_NtB1M_6Styles4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2K_B3v_QNCNvCsibhcYuwTAtB_13typst_realize18finish_interrupted0E0E0B5D_.exit.i, %bb.cc
  br label %.lr.ph.i

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i
  %.sink1.i.i = phi i64 [ 40, %.lr.ph.i ], [ 104, %bb.bz ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sink1.i.i
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !2012, !noalias !2013, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2014
  store ptr %i.ij, ptr %i.b, align 8, !noalias !2014
  %i.ik = icmp eq ptr %.sroa.01.0.i.ph419, %i.ij
  br i1 %i.ik, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.il = invoke fastcc { ptr, i64 } @_RINvCsibhcYuwTAtB_13typst_realize21finish_grouping_whileNCNvB2_18finish_interrupteds_0EB2_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc199 unwind label %.thread280.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1980 ; 2 uses

.noexc199:                                        ; preds = %bb.cb
  %i.im = extractvalue { ptr, i64 } %i.il, 0      ; 2 uses
  %.not11.i = icmp eq ptr %i.im, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2014
  br i1 %.not11.i, label %.outer320, label %.loopexit760

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2014
  %i.in = icmp eq ptr %i.hx, %i.hu
  br i1 %i.in, label %.loopexit315, label %.lr.ph.i.backedge

.outer320:                                        ; preds = %.noexc199
  %i.io = icmp eq ptr %i.hx, %i.hu
  br i1 %i.io, label %.loopexit315, label %.lr.ph.i.preheader.lr.ph

bb.cd:                                            ; preds = %bb.bu
  %i.ip = load ptr, ptr %.sroa.022.0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !noundef !11 ; 2 uses
  %.not15.i = icmp eq i64 %i.ir, 0
  br i1 %.not15.i, label %.split._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.cd, %.backedge.i
  %.sroa.0.016.i = phi i64 [ %i.is, %.backedge.i ], [ %i.ir, %bb.cd ] ; 2 uses
  %i.is = add nsw i64 %.sroa.0.016.i, -1          ; 3 uses
  %i.it = getelementptr inbounds nuw [128 x i8], ptr %i.ip, i64 %i.is ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i64, ptr %i.iu, align 16, !range !23, !noundef !11 ; 3 uses
  %i.iw = icmp ne i64 %i.iv, 4
  call void @llvm.assume(i1 %i.iw)
  %i.ix = add nsw i64 %i.iv, -3
  %i.iy = icmp samesign ugt i64 %i.iv, 2
  %i.iz = select i1 %i.iy, i64 %i.ix, i64 1
  switch i64 %i.iz, label %bb.ce [
    i64 0, label %.split.i
    i64 1, label %bb.cf
    i64 2, label %.backedge.i
  ]

bb.ce:                                            ; preds = %.lr.ph.preheader.i
  unreachable

bb.cf:                                            ; preds = %.lr.ph.preheader.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.jb = load i64, ptr %i.ja, align 16, !range !25, !noundef !11
  %i.jc = icmp ult i64 %i.jb, 2
  br i1 %i.jc, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.cf, %.lr.ph.preheader.i
  %.sink.i.i = phi i64 [ 40, %.lr.ph.preheader.i ], [ 104, %bb.cf ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 %.sink.i.i
  %.sroa.0.0.i.i = load ptr, ptr %i.jd, align 8, !nonnull !11, !align !13, !noundef !11
  %.not11.i201 = icmp eq ptr %.sroa.0.0.i.i, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %.not11.i201, label %.split._crit_edge.i, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %bb.cf, %.lr.ph.preheader.i
  %.not.i200 = icmp eq i64 %i.is, 0
end_hunk_0
begin_hunk_1_@_RNvCsibhcYuwTAtB_13typst_realize16visit_show_rules:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.ng = load ptr, ptr %i.bg, align 8, !noundef !11
  %.not113 = icmp eq ptr %i.ng, null
  br i1 %.not113, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  br label %bb.gv

bb.eh:                                            ; preds = %.thread247, %bb.gw, %bb.gu, %bb.gt, %bb.dx, %bb.gv
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ei:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val129 = load ptr, ptr %i.nj, align 8, !nonnull !11, !align !13, !noundef !11
  %i.nk = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val129, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.el unwind label %bb.bt

bb.ej:                                            ; preds = %bb.df
  %i.nl = load ptr, ptr %i.lp, align 8, !nonnull !11, !align !13, !noundef !11
  br label %bb.ek

bb.ek:                                            ; preds = %bb.el, %bb.ej
  %.sroa.077.5 = phi i8 [ 0, %bb.el ], [ 1, %bb.ej ] ; 3 uses
  %.sroa.043.0 = phi ptr [ %i.nk, %bb.el ], [ %i.nl, %bb.ej ]
  %.sroa.044.0.copyload = load i8, ptr %i.bf, align 16 ; 3 uses
  %.not115 = icmp eq i8 %.sroa.044.0.copyload, 2  ; 2 uses
  br i1 %.not115, label %.thread484, label %bb.em

bb.el:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ek

.thread484:                                       ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 %.sroa.044.0.copyload, ptr %i.au, align 16
  %.sroa.398.0..sroa_idx99486 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.398.0..sroa_idx99486, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102, i64 47, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i8 2, ptr %i.at, align 16
  %.sroa.4102.0..sroa_idx103487 = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102.0..sroa_idx103487, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102, i64 47, i1 false)
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 49 ; 2 uses
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %.sroa.546.sroa.4.0.copyload = load i8, ptr %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx, align 16
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 %.sroa.044.0.copyload, ptr %i.au, align 16
  %.sroa.398.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.398.0..sroa_idx99, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.546.0..sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i8 %.sroa.546.sroa.4.0.copyload, ptr %i.at, align 16
  %.sroa.4102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4102.0..sroa_idx103, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection3tagNtB5_7TagElem6packed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %i.au)
          to label %bb.ep unwind label %bb.eo

bb.en:                                            ; preds = %bb.er, %.thread484
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.nn = load i8, ptr %i.nm, align 8, !range !18, !noundef !11 ; 2 uses
  %i.no = load ptr, ptr %.sroa.0.0.sroa.gep.i, align 8, !nonnull !11, !align !13, !noundef !11
  %i.np = icmp eq ptr %i.no, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7contexts_1__NtB9_11ContextElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE
  %i.nq = select i1 %i.np, i8 %i.nn, i8 0
  store i8 %i.nq, ptr %i.nm, align 8
  %i.nr = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 176 ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8, !noundef !11
  %i.nu = add i64 %i.nt, 1
  store i64 %i.nu, ptr %i.ns, align 8
  %i.nv = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 144
  %i.nx = invoke { ptr, i64 } @_RNvMs2_NtCsdaEETE4DqmE_13typst_library6engineNtB5_5Route16check_show_depth(ptr noundef nonnull align 8 %i.nw)
          to label %bb.et unwind label %bb.eo     ; 2 uses

bb.eo:                                            ; preds = %bb.fz, %bb.ep, %bb.gg, %bb.gh, %bb.ge, %bb.gb, %bb.eq, %bb.en, %bb.em
  %.sroa.082.3 = phi i8 [ 1, %bb.fz ], [ 0, %bb.gh ], [ 0, %bb.gg ], [ 0, %bb.ge ], [ 0, %bb.gb ], [ 1, %bb.en ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %bb.em ]
  %.sroa.080.0 = phi i1 [ true, %bb.fz ], [ false, %bb.gh ], [ false, %bb.gg ], [ false, %bb.ge ], [ true, %bb.gb ], [ true, %bb.en ], [ true, %bb.eq ], [ true, %bb.ep ], [ true, %bb.em ]
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.body178

.body178:                                         ; preds = %.body.i.i, %.body.thread.i, %bb.eo
  %.sroa.082.3.lpad-body = phi i8 [ %.sroa.082.3, %bb.eo ], [ 1, %.body.thread.i ], [ 1, %.body.i.i ] ; 2 uses
  %.sroa.080.0.lpad-body = phi i1 [ %.sroa.080.0, %bb.eo ], [ true, %.body.thread.i ], [ true, %.body.i.i ]
  %eh.lpad-body179 = phi { ptr, i32 } [ %i.ny, %bb.eo ], [ %eh.lpad-body4.i, %.body.thread.i ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.nz = load i8, ptr %i.at, align 16, !range !22, !noundef !11
  %i.oa = icmp eq i8 %i.nz, 0
  %or.cond = and i1 %.sroa.080.0.lpad-body, %i.oa
  br i1 %or.cond, label %bb.gt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184

bb.ep:                                            ; preds = %bb.em
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val128 = load ptr, ptr %i.ob, align 8, !nonnull !11, !align !13, !noundef !11
  %i.oc = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val128, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as)
          to label %bb.eq unwind label %bb.eo

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.od = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oc, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %3)
          to label %bb.er unwind label %bb.eo     ; 2 uses

bb.er:                                            ; preds = %bb.eq
  %i.oe = extractvalue { ptr, i64 } %i.od, 0      ; 2 uses
  %.not117 = icmp eq ptr %i.oe, null
  br i1 %.not117, label %bb.en, label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.gc, %bb.gm
  %.sink609 = phi { ptr, i64 } [ %i.rq, %bb.gc ], [ %i.rl, %bb.gm ], [ %i.od, %bb.er ]
  %.sink608 = phi ptr [ %i.rr, %bb.gc ], [ %i.sf, %bb.gm ], [ %i.oe, %bb.er ]
  %.sroa.082.4 = phi i8 [ 0, %bb.gc ], [ 1, %bb.gm ], [ 1, %bb.er ] ; 3 uses
  %i.of = extractvalue { ptr, i64 } %.sink609, 1
  store ptr %.sink608, ptr %0, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.of, ptr %i.og, align 8
  %i.oh = load i8, ptr %i.at, align 16, !range !22, !noundef !11
  %cond = icmp eq i8 %i.oh, 0
  br i1 %cond, label %bb.gn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit

bb.et:                                            ; preds = %bb.en
  %i.oi = extractvalue { ptr, i64 } %i.nx, 0      ; 10 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ok = load i64, ptr %i.oj, align 8, !range !14, !noundef !11
  %.not118 = icmp eq ptr %i.oi, null
  br i1 %.not118, label %bb.gb, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ol = extractvalue { ptr, i64 } %i.nx, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not.i.i.i.i = icmp eq ptr %i.oi, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.om = getelementptr inbounds i8, ptr %i.oi, i64 -16
  %i.on = load atomic i64, ptr %i.om acquire, align 8, !noalias !2817
  %i.oo = icmp eq i64 %i.on, 1
  %i.op = zext i1 %i.oo to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsibhcYuwTAtB_13typst_realize.exit.i

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.ev, %bb.eu
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.op, %bb.ev ], [ 1, %bb.eu ] ; 2 uses
  store ptr %i.oi, ptr %i.d, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ol, ptr %i.oq, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %.sroa.02.0.i.i.i.i, ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.os, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ol, ptr %i.ot, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not11.i = icmp eq i64 %i.ol, 0
  br i1 %.not11.i, label %bb.ew, label %bb.ex, !prof !12

bb.ew:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsibhcYuwTAtB_13typst_realize.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #30
          to label %bb.ey unwind label %.body.thread8.i

bb.ex:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsibhcYuwTAtB_13typst_realize.exit.i
  store i64 1, ptr %i.os, align 8
  %i.ou = trunc nuw i8 %.sroa.02.0.i.i.i.i to i1
  br i1 %i.ou, label %bb.fa, label %bb.ez

.body.thread8.i:                                  ; preds = %bb.fd, %bb.ew
  %lpad.thr_comm.i176 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.ey:                                            ; preds = %bb.ew
  unreachable

bb.ez:                                            ; preds = %bb.ex
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oi, i64 15
  %i.ow = load i8, ptr %i.ov, align 1, !noundef !11
  %.not.i174 = icmp sgt i8 %i.ow, -1
  %i.ox = getelementptr i8, ptr %i.oi, i64 8      ; 2 uses
  br i1 %.not.i174, label %bb.fb, label %bb.fe

bb.fa:                                            ; preds = %bb.ex
  %.sroa.013.0.copyload.i = load ptr, ptr %i.oi, align 8
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %.sroa.515.0.copyload.i = load i64, ptr %.sroa.515.0..sroa_idx.i, align 8
  br label %bb.ff

bb.fb:                                            ; preds = %bb.ez
  %.val.i = load ptr, ptr %i.oi, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %.val27.i = load i64, ptr %i.ox, align 8        ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i175, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.oy = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.oz = atomicrmw add ptr %i.oy, i64 1 monotonic, align 8
  %i.pa = icmp slt i64 %i.oz, 0
  br i1 %i.pa, label %bb.fd, label %bb.ff, !prof !12

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val.i) #30
          to label %.noexc.i unwind label %.body.thread8.i

.noexc.i:                                         ; preds = %bb.fd
  unreachable

bb.fe:                                            ; preds = %bb.ez
  %.sroa.019.0.copyload.i = load ptr, ptr %i.oi, align 1
  %.sroa.420.0.copyload.i = load i64, ptr %i.ox, align 1
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fc, %bb.fb, %bb.fa
  %.sroa.515.0.i = phi i64 [ %.sroa.515.0.copyload.i, %bb.fa ], [ %.sroa.420.0.copyload.i, %bb.fe ], [ %.val27.i, %bb.fc ], [ %.val27.i, %bb.fb ]
  %.sroa.013.0.i = phi ptr [ %.sroa.013.0.copyload.i, %bb.fa ], [ %.sroa.019.0.copyload.i, %bb.fe ], [ %.val.i, %bb.fc ], [ inttoptr (i64 16 to ptr), %bb.fb ]
  store ptr %.sroa.013.0.i, ptr %i.f, align 8
  %.sroa.3.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.515.0.i, ptr %.sroa.3.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  %i.pb = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.ok)
          to label %bb.fi unwind label %bb.fh, !noalias !2820 ; 2 uses

bb.fg:                                            ; preds = %bb.fh
  %i.pc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2820
  unreachable

bb.fh:                                            ; preds = %bb.ff
  %i.pd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #31
          to label %.body.thread.i unwind label %bb.fg, !noalias !2818

bb.fi:                                            ; preds = %bb.ff
  %i.pe = extractvalue { i64, i64 } %i.pb, 1
  %i.pf = extractvalue { i64, i64 } %i.pb, 0
  %i.pg = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i8 0, ptr %i.pg, align 8, !alias.scope !2818
  store i64 %i.pf, ptr %i.e, align 8, !alias.scope !2818
  %i.ph = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.pe, ptr %i.ph, align 8, !alias.scope !2818
  %i.pi = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false), !alias.scope !2820
  %i.pj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.pj, align 8, !alias.scope !2818
  %i.pk = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.pk, align 8, !alias.scope !2818
  %i.pl = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 8 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.pl, align 8, !alias.scope !2818
  %i.pm = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 7 uses
  store i64 0, ptr %i.pm, align 8, !alias.scope !2818
  call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  call void @llvm.experimental.noalias.scope.decl(metadata !2822)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i = load i64, ptr %i.pn, align 8, !noalias !2823, !noundef !11 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i.i.i = load i64, ptr %i.po, align 8, !noalias !2823, !noundef !11 ; 2 uses
  %.not.i.i28.i = icmp eq i64 %.val4.i.i.i, %.val.i.i.i
  br i1 %.not.i.i28.i, label %bb.fk, label %bb.fn

bb.fj:                                            ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.fx, %.body.i.i.i, %bb.fj
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.pp, %bb.fj ], [ %i.rj, %bb.fx ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e) #31
          to label %.body178 unwind label %bb.fy, !noalias !2824

bb.fk:                                            ; preds = %bb.fn, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ps = load i64, ptr %i.pr, align 8, !alias.scope !2825, !noalias !2823, !noundef !11 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.pq, align 8, !alias.scope !2825, !noalias !2823 ; 4 uses
  %i.pt = icmp ult i64 %.promoted.i.i.i, %i.ps
  br i1 %i.pt, label %.lr.ph.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fk
  %i.pu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.pv = load i8, ptr %i.pu, align 8, !range !18, !alias.scope !2825, !noalias !2826, !noundef !11
  %i.pw = trunc nuw i8 %i.pv to i1
  %i.px = load ptr, ptr %i.a, align 8, !alias.scope !2825, !noalias !2826, !nonnull !11, !noundef !11 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pz = load i64, ptr %i.py, align 8, !noalias !2823
  br i1 %i.pw, label %.lr.ph.split.us.preheader.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.preheader.i.i.i:                  ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load i64, ptr %i.pm, align 8, !alias.scope !2827
  %.val.i.us.pre.i.i.i = load ptr, ptr %i.pl, align 8, !alias.scope !2827
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.fm, %.lr.ph.split.us.preheader.i.i.i
  %.val.i.us.i.i.i = phi ptr [ %i.qh, %bb.fm ], [ %.val.i.us.pre.i.i.i, %.lr.ph.split.us.preheader.i.i.i ] ; 2 uses
  %i.qa = phi i64 [ %i.qk, %bb.fm ], [ %.pre.i.i.i, %.lr.ph.split.us.preheader.i.i.i ]
  %i.qb = phi i64 [ %i.qc, %bb.fm ], [ %.promoted.i.i.i, %.lr.ph.split.us.preheader.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  %i.qc = add nuw i64 %i.qb, 1                    ; 3 uses
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.qb ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.us.i.i.i = load ptr, ptr %i.qd, align 8, !noalias !2830 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.5.0.copyload3.i.i.i.us.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i.i.us.i.i.i, align 8, !noalias !2830 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %.not.i.i.us.i.i.i = icmp eq ptr %.val.i.us.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.us.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.qe = getelementptr i8, ptr %.val.i.us.i.i.i, i64 -8
  %.val.i.i.us.i.i.i = load i64, ptr %i.qe, align 8, !noalias !2832, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.us.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.us.i.i.i: ; preds = %bb.fl, %.lr.ph.split.us.i.i.i
  %.sroa.02.0.i.i.us.i.i.i = phi i64 [ %.val.i.i.us.i.i.i, %bb.fl ], [ 0, %.lr.ph.split.us.i.i.i ]
  %i.qf = icmp eq i64 %i.qa, %.sroa.02.0.i.i.us.i.i.i
  %i.qg = zext i1 %i.qf to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.pl, i64 noundef %i.qg)
          to label %bb.fm unwind label %.split.us.i.i.i, !noalias !2833, !inline_history !2750

bb.fm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.us.i.i.i
  %i.qh = load ptr, ptr %i.pl, align 8, !alias.scope !2827, !nonnull !11, !noundef !11 ; 2 uses
  %i.qi = load i64, ptr %i.pm, align 8, !alias.scope !2827, !noundef !11 ; 2 uses
  %i.qj = getelementptr inbounds nuw [32 x i8], ptr %i.qh, i64 %i.qi ; 4 uses
  store i64 1, ptr %i.qj, align 8, !noalias !2834
  %.sroa.412.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.us.i.i.i, align 8, !noalias !2834
  %.sroa.513.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store ptr %.sroa.0.0.copyload1.i.i.i.us.i.i.i, ptr %.sroa.513.0..sroa_idx.us.i.i.i, align 8, !noalias !2834
  %.sroa.714.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store i64 %.sroa.5.0.copyload3.i.i.i.us.i.i.i, ptr %.sroa.714.0..sroa_idx.us.i.i.i, align 8, !noalias !2834
  %i.qk = add i64 %i.qi, 1                        ; 2 uses
  store i64 %i.qk, ptr %i.pm, align 8, !alias.scope !2827
  %exitcond46.not.i.i.i = icmp eq i64 %i.qc, %i.ps
  br i1 %exitcond46.not.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %.lr.ph.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.us.i.i.i
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fn:                                            ; preds = %bb.fi
  %i.qm = sub i64 %.val4.i.i.i, %.val.i.i.i
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.pl, i64 noundef %i.qm)
          to label %bb.fk unwind label %bb.fx, !noalias !2835

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.fv
  %i.qn = phi i64 [ %i.qo, %bb.fv ], [ %.promoted.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  %i.qo = add nuw i64 %i.qn, 1                    ; 4 uses
  %i.qp = icmp ult i64 %i.qn, %i.pz
  call void @llvm.assume(i1 %i.qp)
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.qn ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 15
  %i.qs = load i8, ptr %i.qr, align 1, !alias.scope !2839, !noalias !2840, !noundef !11
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.qs, -1
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qq, align 8, !alias.scope !2841, !noalias !2840 ; 5 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %.val10.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qt, align 8, !alias.scope !2841, !noalias !2840 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %4, label %bb.fr

4:                                                ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %4
  %i.qu = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 -16
  %i.qv = atomicrmw add ptr %i.qu, i64 1 monotonic, align 8, !noalias !2842
  %i.qw = icmp slt i64 %i.qv, 0
  br i1 %i.qw, label %bb.fp, label %bb.fr, !prof !12

bb.fp:                                            ; preds = %bb.fo
  store i64 %i.qo, ptr %i.pq, align 8, !noalias !2823
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i) #30
          to label %.noexc.i.i.i unwind label %bb.fq

.noexc.i.i.i:                                     ; preds = %bb.fp
  unreachable

bb.fq:                                            ; preds = %bb.fp
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.fs, %bb.fq
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.qx, %bb.fq ], [ %.us-phi31.i.i.i, %bb.fs ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body.i.i unwind label %bb.fw, !noalias !2823

bb.fr:                                            ; preds = %bb.fo, %4, %.lr.ph.split.i.i.i
  %.sroa.8.0.ph.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i, %bb.fo ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.qy = load i64, ptr %i.pm, align 8, !alias.scope !2827, !noundef !11
  %.val.i.i.i.i = load ptr, ptr %i.pl, align 8, !alias.scope !2827, !nonnull !11, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.ft

.split.i.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fs:                                            ; preds = %.split.i.i.i, %.split.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.qo, %.split.i.i.i ], [ %i.qc, %.split.us.i.i.i ]
  %.us-phi29.i.i.i = phi i64 [ %.val10.i.i.i.i.i.i.i.i.i, %.split.i.i.i ], [ %.sroa.5.0.copyload3.i.i.i.us.i.i.i, %.split.us.i.i.i ]
  %.us-phi30.i.i.i = phi ptr [ %.sroa.8.0.ph.i.i.i, %.split.i.i.i ], [ %.sroa.0.0.copyload1.i.i.i.us.i.i.i, %.split.us.i.i.i ]
  %.us-phi31.i.i.i = phi { ptr, i32 } [ %i.qz, %.split.i.i.i ], [ %i.ql, %.split.us.i.i.i ]
  store i64 %.us-phi.i.i.i, ptr %i.pq, align 8, !noalias !2823
  %.sroa.714.31.extract.shift.i.i.i = lshr i64 %.us-phi29.i.i.i, 56
  %.sroa.714.31.extract.trunc.i.i.i = trunc nuw i64 %.sroa.714.31.extract.shift.i.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize(ptr %.us-phi30.i.i.i, i8 %.sroa.714.31.extract.trunc.i.i.i) #31
          to label %.body.i.i.i unwind label %bb.fu, !noalias !2832, !inline_history !2750

bb.ft:                                            ; preds = %bb.fr
  %i.ra = getelementptr i8, ptr %.val.i.i.i.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.ra, align 8, !noalias !2832, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %bb.ft, %bb.fr
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.ft ], [ 0, %bb.fr ]
  %i.rb = icmp eq i64 %i.qy, %.sroa.02.0.i.i.i.i.i
  %i.rc = zext i1 %i.rb to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.pl, i64 noundef %i.rc)
          to label %bb.fv unwind label %.split.i.i.i, !noalias !2833, !inline_history !2750

bb.fu:                                            ; preds = %bb.fs
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2832, !inline_history !2750
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.fv, %bb.fm, %bb.fk
  %.lcssa.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.fk ], [ %i.ps, %bb.fm ], [ %i.ps, %bb.fv ]
  store i64 %.lcssa.i.i.i, ptr %i.pq, align 8, !noalias !2823
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.fz unwind label %bb.fj, !noalias !2843

bb.fv:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.re = load ptr, ptr %i.pl, align 8, !alias.scope !2827, !nonnull !11, !noundef !11
  %i.rf = load i64, ptr %i.pm, align 8, !alias.scope !2827, !noundef !11 ; 2 uses
  %i.rg = getelementptr inbounds nuw [32 x i8], ptr %i.re, i64 %i.rf ; 4 uses
  store i64 1, ptr %i.rg, align 8, !noalias !2834
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !2834
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  store ptr %.sroa.8.0.ph.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !2834
  %.sroa.714.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %.sroa.714.0..sroa_idx.i.i.i, align 8, !noalias !2834
  %i.rh = add i64 %i.rf, 1
  store i64 %i.rh, ptr %i.pm, align 8, !alias.scope !2827
  %exitcond.not.i.i.i = icmp eq i64 %i.qo, %i.ps
  br i1 %exitcond.not.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %.lr.ph.split.i.i.i

bb.fw:                                            ; preds = %bb.fx, %.body.i.i.i
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2823
  unreachable

bb.fx:                                            ; preds = %bb.fn
  %i.rj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body.i.i unwind label %bb.fw, !noalias !2823

bb.fy:                                            ; preds = %.body.i.i
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2843
  unreachable

bb.fz:                                            ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsibhcYuwTAtB_13typst_realize.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.rl = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c)
          to label %bb.gm unwind label %bb.eo     ; 2 uses

.body.thread.i:                                   ; preds = %bb.fh, %.body.thread8.i
  %eh.lpad-body4.i = phi { ptr, i32 } [ %lpad.thr_comm.i176, %.body.thread8.i ], [ %i.pd, %bb.fh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #31
          to label %.body178 unwind label %bb.ga

bb.ga:                                            ; preds = %.body.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.gb:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.rn = load ptr, ptr %i.bh, align 8, !nonnull !11, !noundef !11
  %i.ro = load i64, ptr %i.lo, align 8, !noundef !11
  store ptr %i.rn, ptr %i.ar, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ro, ptr %i.rp, align 8
  %i.rq = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize12visit_styled(ptr noalias nofree noundef align 8 dereferenceable(168) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.043.0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %3)
          to label %bb.gc unwind label %bb.eo     ; 2 uses

bb.gc:                                            ; preds = %bb.gb
  %i.rr = extractvalue { ptr, i64 } %i.rq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.not119 = icmp eq ptr %i.rr, null
  br i1 %.not119, label %bb.gd, label %bb.es

bb.gd:                                            ; preds = %bb.gc
  store i8 %i.nn, ptr %i.nm, align 8
  %i.rs = load ptr, ptr %i.bi, align 8, !nonnull !11, !align !13, !noundef !11
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 176 ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !noundef !11
  %i.rv = add i64 %i.ru, -1
  store i64 %i.rv, ptr %i.rt, align 8
  %i.rw = load i8, ptr %i.at, align 16, !range !22, !noundef !11
  %.not120 = icmp eq i8 %i.rw, 2
  br i1 %.not120, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aq, ptr noundef nonnull align 16 dereferenceable(48) %i.at, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection3tagNtB5_7TagElem6packed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %i.aq)
          to label %bb.gg unwind label %bb.eo

bb.gf:                                            ; preds = %bb.gk, %bb.gd
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.rx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.gl

bb.gg:                                            ; preds = %bb.ge
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.ry, align 8, !nonnull !11, !align !13, !noundef !11
  %i.rz = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.gh unwind label %bb.eo

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.sa = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rz, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %3)
          to label %bb.gi unwind label %bb.eo     ; 2 uses

bb.gi:                                            ; preds = %bb.gh
  %i.sb = extractvalue { ptr, i64 } %i.sa, 0      ; 2 uses
  %.not121 = icmp eq ptr %i.sb, null
  br i1 %.not121, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.sc = extractvalue { ptr, i64 } %i.sa, 1
  store ptr %i.sb, ptr %0, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.sc, ptr %i.sd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.gf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.es, %bb.gn, %bb.gj
  %.sroa.082.5 = phi i8 [ 0, %bb.gj ], [ %.sroa.082.4, %bb.es ], [ %.sroa.082.4, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.se = trunc nuw i8 %.sroa.077.5 to i1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit

bb.gl:                                            ; preds = %bb.gr, %bb.gf, %bb.bq
  ret void

bb.gm:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.sf = extractvalue { ptr, i64 } %i.rl, 0
  br label %bb.es

bb.gn:                                            ; preds = %bb.es
  %i.sg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.go

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184: ; preds = %bb.gt, %bb.go, %.body178
  %.sroa.082.6 = phi i8 [ %.sroa.082.4, %bb.go ], [ %.sroa.082.3.lpad-body, %.body178 ], [ %.sroa.082.3.lpad-body, %bb.gt ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.sj, %bb.go ], [ %eh.lpad-body179, %.body178 ], [ %eh.lpad-body179, %bb.gt ] ; 2 uses
  %i.sh = load i8, ptr %i.au, align 16, !range !22, !noundef !11
  %i.si = icmp eq i8 %i.sh, 0
  %or.cond252 = and i1 %.not115, %i.si
  br i1 %or.cond252, label %bb.gu, label %.thread239

bb.go:                                            ; preds = %bb.gn
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit182: ; preds = %bb.gp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.sk = trunc nuw i8 %.sroa.082.2 to i1
  br i1 %i.sk, label %bb.gs, label %bb.gr

bb.gp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize.exit
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit182 unwind label %bb.gq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit188: ; preds = %bb.gw, %.thread239, %bb.gq
  %.sroa.082.7 = phi i8 [ %.sroa.082.2, %bb.gq ], [ %.sroa.082.1244, %.thread239 ], [ %.sroa.082.1244, %bb.gw ]
  %.pn126 = phi { ptr, i32 } [ %i.sm, %bb.gq ], [ %.pn.pn.pn246, %.thread239 ], [ %.pn.pn.pn246, %bb.gw ] ; 2 uses
  %i.sl = trunc nuw i8 %.sroa.082.7 to i1
  br i1 %i.sl, label %.thread247, label %common.resume

bb.gq:                                            ; preds = %bb.gp
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit188

bb.gr:                                            ; preds = %bb.gs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.gl

bb.gs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit182
  call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.bh), !inline_history !4
  br label %bb.gr

bb.gt:                                            ; preds = %.body178
  %i.sn = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184 unwind label %bb.eh

bb.gu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184
  %i.so = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.so)
          to label %.thread239 unwind label %bb.eh

bb.gv:                                            ; preds = %bb.eg, %.body166, %bb.bt, %bb.cn, %bb.dx, %bb.dw
  %.sroa.077.0.ph = phi i8 [ 1, %.body166 ], [ 1, %bb.cn ], [ 1, %bb.eg ], [ %.sroa.077.1, %bb.bt ], [ 1, %bb.dx ], [ 1, %bb.dw ]
  %.sroa.076.0.ph = phi i1 [ true, %.body166 ], [ true, %bb.cn ], [ true, %bb.eg ], [ %.sroa.076.1, %bb.bt ], [ true, %bb.dx ], [ true, %bb.dw ]
  %.pn.pn.ph = phi { ptr, i32 } [ %eh.lpad-body167, %.body166 ], [ %i.ke, %bb.cn ], [ %i.nh, %bb.eg ], [ %i.gv, %bb.bt ], [ %i.mu, %bb.dx ], [ %i.mu, %bb.dw ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(96) %i.bf) #31
          to label %bb.dc unwind label %bb.eh

.thread239:                                       ; preds = %bb.gu, %bb.dd, %bb.cs, %bb.cr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184, %bb.dc
  %.pn.pn.pn246 = phi { ptr, i32 } [ %.pn.pn.ph, %bb.dc ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184 ], [ %i.kk, %bb.cr ], [ %i.lh, %bb.dd ], [ %i.kk, %bb.cs ], [ %.pn, %bb.gu ] ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvCsibhcYuwTAtB_13typst_realize5visit:bb.a
  br i1 %.not97.i, label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread, label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread79

bb.g:                                             ; preds = %bb.e
  %i.ai = icmp eq ptr %i.w, @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ai, label %bb.i, label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !3306, !nonnull !11, !noundef !11 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 111
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !3309, !noalias !3307, !noundef !11 ; 2 uses
  %.not.i27 = icmp sgt i8 %i.am, -1               ; 2 uses
  %i.an = and i8 %i.am, 127
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = load ptr, ptr %i.ak, align 8, !alias.scope !3309, !noalias !3307, !nonnull !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3309, !noalias !3307
  %.sroa.3.0.i28 = select i1 %.not.i27, i64 %i.ar, i64 %i.ao
  %.sroa.0.0.i29 = select i1 %.not.i27, ptr %i.ap, ptr %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !3310
  call fastcc void @_RNvCsibhcYuwTAtB_13typst_realize23find_regex_match_in_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i29, i64 noundef %.sroa.3.0.i28, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.e), !inline_history !3289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3307
  %i.as = load ptr, ptr %i.p, align 8, !noundef !11
  %.not95.i = icmp eq ptr %i.as, null
  br i1 %.not95.i, label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %1, align 8, !alias.scope !3306, !nonnull !11, !noundef !11 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 111
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !3311, !noalias !3307, !noundef !11 ; 2 uses
  %.not.i26 = icmp sgt i8 %i.aw, -1               ; 2 uses
  %i.ax = and i8 %i.aw, 127
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = load ptr, ptr %i.au, align 8, !alias.scope !3311, !noalias !3307, !nonnull !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !3311, !noalias !3307
  %.sroa.3.0.i = select i1 %.not.i26, i64 %i.bb, i64 %i.ay
  %.sroa.0.0.i = select i1 %.not.i26, ptr %i.az, ptr %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !3310
  call fastcc void @_RNvCsibhcYuwTAtB_13typst_realize23find_regex_match_in_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.f), !inline_history !3289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3307
  %i.bc = load ptr, ptr %i.n, align 8, !noundef !11
  %.not93.i = icmp eq ptr %i.bc, null
  br i1 %.not93.i, label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3307
  store ptr %1, ptr %i.m, align 8, !noalias !3307
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.423.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !3307
  %i.bd = call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize17visit_regex_match(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.m, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.n) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0      ; 2 uses
  %.not94.i = icmp eq ptr %i.be, null
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  %.sroa.15.1 = select i1 %.not94.i, i64 1, i64 %i.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3307
  br label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3307
  store ptr %1, ptr %i.o, align 8, !noalias !3307
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !3307
  %i.bg = call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize17visit_regex_match(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.p) ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 2 uses
  %.not96.i = icmp eq ptr %i.bh, null
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  %.sroa.15.2 = select i1 %.not96.i, i64 1, i64 %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3307
  br label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit

bb.l:                                             ; preds = %bb.d
  %i.bj = icmp eq ptr %i.w, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol1__NtB9_10SymbolElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.bj, label %bb.u, label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !3312
  %.sroa.7.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.7.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !3307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3313
  store i64 2, ptr %i.c, align 8, !noalias !3314
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 -2, ptr %.sroa.552.0..sroa_idx, align 8, !noalias !3314
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i8 -2, ptr %.sroa.656.0..sroa_idx, align 8, !noalias !3314
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7, i64 31, i1 false), !noalias !3314
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i16 255, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !3314
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  store i8 2, ptr %.sroa.9.0..sroa_idx, align 2, !noalias !3314
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 123
  store i8 2, ptr %.sroa.10.0..sroa_idx, align 1, !noalias !3314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3313
  invoke void @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b)
          to label %bb.n unwind label %bb.r, !noalias !3313

bb.n:                                             ; preds = %bb.m
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !3313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3313
  store i128 0, ptr %i.a, align 16, !noalias !3313
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.68.0..sroa_idx.i, align 16, !noalias !3313
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i128 0, ptr %.sroa.8.0..sroa_idx.i, align 16, !noalias !3313
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 1, ptr %.sroa.9.0..sroa_idx.i, align 16, !noalias !3313
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 2, ptr %i.bk, align 16, !noalias !3314
  %.sroa.552.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 -2, ptr %.sroa.552.0..sroa_idx53, align 8, !noalias !3314
  %.sroa.656.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 -2, ptr %.sroa.656.0..sroa_idx57, align 8, !noalias !3314
  %.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.a, i64 185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx59, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7, i64 31, i1 false), !noalias !3314
  %.sroa.8.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 255, ptr %.sroa.8.0..sroa_idx60, align 8, !noalias !3314
  %.sroa.9.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 2, ptr %.sroa.9.0..sroa_idx62, align 2, !noalias !3314
  %.sroa.10.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.a, i64 219
  store i8 2, ptr %.sroa.10.0..sroa_idx64, align 1, !noalias !3314
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !3315
  %i.bl = call noundef align 16 dereferenceable_or_null(240) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 240, i64 noundef range(i64 8, 17) 16) #29, !noalias !3315 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.o, label %bb.t, !prof !12

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 240) #30
          to label %.noexc.i unwind label %bb.p, !noalias !3313

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtNtBK_4math8equation12EquationElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(240) %i.a) #31
          to label %common.resume unwind label %bb.q, !noalias !3313

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3313
  unreachable

common.resume:                                    ; preds = %bb.ab, %bb.p, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.p ], [ %i.bp, %bb.r ], [ %lpad.thr_comm.split-lp, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math8equation12EquationElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(136) %i.c) #31
          to label %common.resume unwind label %bb.s, !noalias !3313

bb.s:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3313
  unreachable

bb.t:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.bl, ptr noundef nonnull align 16 dereferenceable(240) %i.a, i64 240, i1 false), !noalias !3313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3313
  store ptr %i.bl, ptr %i.l, align 8, !noalias !3307
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, ptr %.sroa.468.0..sroa_idx, align 8, !noalias !3307
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !14, !alias.scope !3306, !noundef !11
  store i64 %i.bs, ptr %.sroa.569.0..sroa_idx, align 8, !noalias !3307
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val98.i = load ptr, ptr %i.bt, align 8, !alias.scope !3305, !nonnull !11, !align !13, !noundef !11
  %i.bu = call fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val98.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !3312, !inline_history !3289
  %i.bv = call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2), !noalias !3316, !inline_history !3289 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread, label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread79

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3307
  %i.bx = load ptr, ptr %1, align 8, !alias.scope !3306, !nonnull !11, !noundef !11 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 111
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !3307, !noundef !11
  %.not90.i = icmp sgt i8 %i.ca, -1
  %i.cb = getelementptr i8, ptr %i.bx, i64 104    ; 2 uses
  br i1 %.not90.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.val99.i = load ptr, ptr %i.by, align 8, !noalias !3307, !nonnull !11, !noundef !11 ; 4 uses
  %.val100.i = load i64, ptr %i.cb, align 8, !noalias !3307 ; 2 uses
  %.not.i.i = icmp eq ptr %.val99.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds i8, ptr %.val99.i, i64 -16
  %i.cd = atomicrmw add ptr %i.cc, i64 1 monotonic, align 8, !noalias !3307
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit, !prof !12

bb.x:                                             ; preds = %bb.w
  call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val99.i) #30
  unreachable

bb.y:                                             ; preds = %bb.u
  %.sroa.080.0.copyload.i = load ptr, ptr %i.by, align 1, !noalias !3307
  %.sroa.481.0.copyload.i = load i64, ptr %i.cb, align 1, !noalias !3307
  br label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.w, %bb.v, %bb.y
  %.sroa.071.0.i = phi ptr [ %.sroa.080.0.copyload.i, %bb.y ], [ inttoptr (i64 16 to ptr), %bb.v ], [ %.val99.i, %bb.w ]
  %.sroa.573.0.i = phi i64 [ %.sroa.481.0.copyload.i, %bb.y ], [ %.val100.i, %bb.v ], [ %.val100.i, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3307
  store ptr %.sroa.071.0.i, ptr %i.h, align 8, !noalias !3307
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.573.0.i, ptr %.sroa.477.0..sroa_idx.i, align 8, !noalias !3307
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtB9_4text8TextElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.h), !inline_history !3289
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.432.0.copyload.i = load i64, ptr %.sroa.432.0..sroa_idx.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3307
  %i.cf = icmp ne i64 %.sroa.432.0.copyload.i, 0
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i64 %.sroa.432.0.copyload.i, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !14, !alias.scope !3306
  %.sroa.432.0.i = select i1 %i.cg, i64 %i.ci, i64 %.sroa.432.0.copyload.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %.sroa.432.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.432.0.i, ptr %.sroa.432.0..sroa_idx33.i, align 8, !noalias !3307
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.ck = load i64, ptr %i.cj, align 16, !noalias !3307, !noundef !11 ; 2 uses
  %.not91.i = icmp eq i64 %i.ck, 0
  br i1 %.not91.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content9set_label(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ck)
          to label %bb.aa unwind label %bb.ab, !noalias !3307, !inline_history !3289

bb.aa:                                            ; preds = %bb.z, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !3307
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.cl, align 8, !alias.scope !3305, !nonnull !11, !align !13, !noundef !11
  %i.cm = call fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !3307, !inline_history !3289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3307
  %i.cn = call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2), !noalias !3308, !inline_history !3289 ; 2 uses
  %i.co = extractvalue { ptr, i64 } %i.cn, 0      ; 2 uses
  %.not92.i = icmp eq ptr %i.co, null
  %i.cp = extractvalue { ptr, i64 } %i.cn, 1
  %spec.select = select i1 %.not92.i, i64 1, i64 %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3307
  br label %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit

bb.ab:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3317, !inline_history !3289
  unreachable

_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread: ; preds = %bb.h, %bb.i, %bb.g, %bb.f, %bb.l, %bb.t
  %.sroa.15.3.ph = phi i64 [ 1, %bb.t ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.l ], [ 1, %bb.f ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread79: ; preds = %bb.t, %bb.f
  %.pn = phi { ptr, i64 } [ %i.ag, %bb.f ], [ %i.bv, %bb.t ]
  %.sroa.030.3.ph = phi ptr [ %i.ah, %bb.f ], [ %i.bw, %bb.t ]
  %.sroa.15.3.ph78 = extractvalue { ptr, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit

_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit: ; preds = %bb.j, %bb.k, %bb.aa
  %.sroa.15.3 = phi i64 [ %.sroa.15.2, %bb.k ], [ %.sroa.15.1, %bb.j ], [ %spec.select, %bb.aa ] ; 2 uses
  %.sroa.030.3 = phi ptr [ %i.bh, %bb.k ], [ %i.be, %bb.j ], [ %i.co, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not = icmp eq ptr %.sroa.030.3, null
  br i1 %.not, label %bb.af, label %.loopexit

bb.ad:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3318)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !3318, !noundef !11 ; 3 uses
  %i.cu = load i64, ptr %i.cr, align 8, !range !16, !alias.scope !3318, !noundef !11
  %i.cv = icmp eq i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.ae, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBL_6styles10StyleChainEE8push_mutCsibhcYuwTAtB_13typst_realize.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBS_6styles10StyleChainEE8grow_oneCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr) #33, !noalias !3319
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBL_6styles10StyleChainEE8push_mutCsibhcYuwTAtB_13typst_realize.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBL_6styles10StyleChainEE8push_mutCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.ad, %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !3318, !nonnull !11, !noundef !11
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %i.ct ; 2 uses
  store ptr %1, ptr %i.cy, align 8, !noalias !3318
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !3318
  %i.cz = add i64 %i.ct, 1
  store i64 %i.cz, ptr %i.cs, align 8, !alias.scope !3318
  br label %.loopexit

bb.af:                                            ; preds = %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread, %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit
  %.sroa.15.376 = phi i64 [ %.sroa.15.3.ph, %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit.thread ], [ %.sroa.15.3, %_RNvCsibhcYuwTAtB_13typst_realize16visit_kind_rules.exit ]
  %i.da = trunc i64 %.sroa.15.376 to i1
  br i1 %i.da, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call fastcc void @_RNvCsibhcYuwTAtB_13typst_realize16visit_show_rules(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.db = load ptr, ptr %i.u, align 8, !noundef !11 ; 2 uses
  %.not20 = icmp eq ptr %i.db, null
  %i.dc = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br i1 %.not20, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ag
  %i.de = load i8, ptr %i.dc, align 8, !range !18, !noundef !11
  %i.df = trunc nuw i8 %i.de to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.df, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = icmp eq ptr %i.w, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7content1__NtB9_12SequenceElemNtNtB9_7element13NativeElement4ELEM6VTABLE
  br i1 %i.dg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = icmp eq ptr %i.w, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7contents_1__NtB9_10StyledElemNtNtB9_7element13NativeElement4ELEM6VTABLE
  br i1 %i.dh, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.di = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  %i.dm = load i64, ptr %i.dl, align 16, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %i.dm, 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %.loopexit, label %.lr.ph

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call fastcc void @_RNvCsibhcYuwTAtB_13typst_realize20visit_grouping_rules(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2)
  %i.dp = load ptr, ptr %i.s, align 8, !noundef !11 ; 2 uses
  %.not21 = icmp eq ptr %i.dp, null
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %.not21, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.dr = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 120
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.dt, ptr %i.du, align 8
  store ptr null, ptr %i.t, align 8
  %i.dv = call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize12visit_styled(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2) ; 2 uses
  %i.dw = extractvalue { ptr, i64 } %i.dv, 0
  %i.dx = extractvalue { ptr, i64 } %i.dv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit

bb.ao:                                            ; preds = %bb.am
  %i.dy = load i64, ptr %i.dq, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.loopexit

bb.ap:                                            ; preds = %bb.am
  %i.dz = load i8, ptr %i.dq, align 8, !range !18, !noundef !11
  %i.ea = trunc nuw i8 %i.dz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.ea, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.val = load ptr, ptr %1, align 8
  call fastcc void @_RNvCsibhcYuwTAtB_13typst_realize18visit_filter_rules(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.r, ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr %.val, ptr nonnull %i.w, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2)
  %i.eb = load ptr, ptr %i.r, align 8, !noundef !11 ; 2 uses
  %.not22 = icmp eq ptr %i.eb, null
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %.not22, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.loopexit

bb.as:                                            ; preds = %bb.aq
  %i.ee = load i8, ptr %i.ec, align 8, !range !18, !noundef !11
  %i.ef = trunc nuw i8 %i.ee to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.ef, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3320)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128CsibhcYuwTAtB_13typst_realize:bb.a
  %i.ae = add i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.z, %i.ab                     ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.al = add i64 %i.aj, %i.ae                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 13)
  %i.an = xor i64 %i.am, %i.al                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.ap = add i64 %i.ag, %i.ak                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ar = xor i64 %i.aq, %i.ap                    ; 3 uses
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = add i64 %i.an, %i.ap                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.az = add i64 %i.ax, %i.as                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.bb = xor i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bd = add i64 %i.au, %i.ay                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 16)
  %i.bf = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21) ; 2 uses
  %i.bi = xor i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bb, %i.bd                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32) ; 2 uses
  %i.bn = xor i64 %i.bm, %i.bh
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = xor i64 %i.bl, 221                      ; 3 uses
  %i.bq = add i64 %i.bp, %i.bg                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.bs = xor i64 %i.br, %i.bq                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bu = add i64 %i.bi, %i.bm                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bw = xor i64 %i.bv, %i.bu                    ; 3 uses
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.bz = xor i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = add i64 %i.bs, %i.bu                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 17)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ce = add i64 %i.cc, %i.bx                    ; 3 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 13)
  %i.cg = xor i64 %i.cf, %i.ce                    ; 3 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.ci = add i64 %i.bz, %i.cd                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 16)
  %i.ck = xor i64 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 17)
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cs = add i64 %i.cq, %i.cl
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 13)
  %i.cu = xor i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = add i64 %i.cn, %i.cr                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 16)
  %i.cx = xor i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 21)
  %i.cz = add i64 %i.cu, %i.cv                    ; 3 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 17)
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 32)
  %i.dc = xor i64 %i.cy, %i.da
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = xor i64 %i.dd, %i.cz
  %i.df = insertvalue { i64, i64 } poison, i64 %i.bo, 0
  %i.dg = insertvalue { i64, i64 } %i.df, i64 %i.de, 1
  ret { i64, i64 } %i.dg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 3 uses
  %i.g = sub i64 %.sroa.02.0.i, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.i = add i64 %i.f, %1                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %i.c acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.i)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsibhcYuwTAtB_13typst_realize.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8
  %.pre4.i = load i64, ptr %i.n, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %.val3.i = load i64, ptr %i.n, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i22, i64 %.val3.i) #31
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.thread, %bb.r, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.ar, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.g, %._crit_edge.i
  %i.q = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store i64 %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !noundef !11 ; 4 uses
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not.i24 = icmp eq i64 %i.u, 0
  br i1 %.not.i24, label %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit_crit_edge, label %bb.k

.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit_crit_edge: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsibhcYuwTAtB_13typst_realize.exit
  %.pre = load ptr, ptr %i.b, align 8
  %.pre62 = load i64, ptr %i.s, align 8
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsibhcYuwTAtB_13typst_realize.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.u)
          to label %.lr.ph unwind label %bb.s, !inline_history !3479

.lr.ph:                                           ; preds = %bb.k, %.noexc26
  %.sroa.033.056 = phi ptr [ %i.w, %.noexc26 ], [ %i.t, %bb.k ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3496)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3499)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 31
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !3500, !noalias !3501, !noundef !11
  %.not.i.i.i.i = icmp sgt i8 %i.z, -1
  %.val.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !3502, !noalias !3501 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 24
  %.val10.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !3502, !noalias !3501 ; 2 uses
  br i1 %.not.i.i.i.i, label %2, label %bb.n

2:                                                ; preds = %.lr.ph
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %2
  %i.ab = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !3503
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val.i.i.i.i) #30
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l, %2, %.lr.ph
  %.sroa.0.0.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i.i.i.i, %bb.l ], [ %.val.i.i.i.i, %.lr.ph ] ; 2 uses
  %i.ae = load <2 x i64>, ptr %.sroa.033.056, align 8, !alias.scope !3496, !noalias !3501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  %i.af = load i64, ptr %i.s, align 8, !alias.scope !3504, !noundef !11
  %.val.i27 = load ptr, ptr %i.b, align 8, !alias.scope !3504, !nonnull !11, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.sroa.739.31.extract.shift = lshr i64 %.val10.i.i.i.i, 56
  %.sroa.739.31.extract.trunc = trunc nuw i64 %.sroa.739.31.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize(ptr %.sroa.0.0.i.i.i, i8 %.sroa.739.31.extract.trunc) #31
          to label %.thread unwind label %bb.q, !noalias !3505, !inline_history !3495

bb.p:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !3506, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.p, %bb.n
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.p ], [ 0, %bb.n ]
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.aj)
          to label %.noexc26 unwind label %bb.o, !noalias !3505, !inline_history !3495

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3505, !inline_history !3495
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !3504, !nonnull !11, !noundef !11 ; 2 uses
  %i.am = load i64, ptr %i.s, align 8, !alias.scope !3504, !noundef !11 ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store <2 x i64> %i.ae, ptr %i.an, align 8, !noalias !3505
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !3505
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.val10.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3505
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !3504
  %i.ap = icmp eq ptr %i.w, %i.v
  br i1 %i.ap, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit
  %i.aq = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.aq, label %bb.w, label %bb.u

bb.r:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  br label %common.resume

bb.s:                                             ; preds = %bb.m, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.noexc26, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit_crit_edge
  %i.at = phi i64 [ %.pre62, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit_crit_edge ], [ %i.ao, %.noexc26 ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit_crit_edge ], [ %i.al, %.noexc26 ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %i.t, i64 %i.u)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsibhcYuwTAtB_13typst_realize.exit
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, %bb.t
  ret void

.thread:                                          ; preds = %bb.o, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.ag, %bb.o ]
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %.val12 = load i64, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val11, i64 %.val12) #31
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.j)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 1)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsibhcYuwTAtB_13typst_realize.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre4.i = load i64, ptr %i.o, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %.val3.i = load i64, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i22, i64 %.val3.i) #31
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.thread, %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.an, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.g, %._crit_edge.i
  %i.r = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store i64 %i.r, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.v = load i64, ptr %i.f, align 8, !noundef !11 ; 5 uses
  %.idx = mul nuw nsw i64 %i.v, 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not.i24 = icmp eq i64 %i.v, 0
  br i1 %.not.i24, label %.noexc, label %bb.k

.noexc:                                           ; preds = %bb.k, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsibhcYuwTAtB_13typst_realize.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %.noexc25.thread, label %.lr.ph

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsibhcYuwTAtB_13typst_realize.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.v)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3507

.lr.ph:                                           ; preds = %.noexc, %.noexc26
  %.sroa.031.044 = phi ptr [ %i.z, %.noexc26 ], [ %i.u, %.noexc ] ; 2 uses
  invoke fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.031.044) #32
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.031.044, i64 72 ; 2 uses
  %.pre = load i8, ptr %i.x, align 8, !range !22
  %i.aa = icmp eq i8 %.pre, 2
  br i1 %i.aa, label %.noexc25.thread, label %bb.l

bb.l:                                             ; preds = %.noexc25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3512)
  %i.ab = load i64, ptr %i.t, align 8, !alias.scope !3512, !noundef !11
  %.val.i27 = load ptr, ptr %i.c, align 8, !alias.scope !3512, !nonnull !11, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #31
          to label %.thread unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ad, align 8, !noalias !3513, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.n, %bb.l
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.n ], [ 0, %bb.l ]
  %i.ae = icmp eq i64 %i.ab, %.sroa.02.0.i.i
  %i.af = zext i1 %i.ae to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.af)
          to label %.noexc26 unwind label %bb.m, !noalias !3514, !inline_history !3511

bb.o:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize:bb.a
  br i1 %i.at, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3576

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3605)
  %i.au = load ptr, ptr %i.aq, align 16, !alias.scope !3606, !nonnull !11, !noundef !11
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !3607
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3576

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3609)
  %i.ax = load ptr, ptr %i.aq, align 16, !alias.scope !3610, !nonnull !11, !noundef !11
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !3611
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3576

bb.s:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !3576
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.l, %bb.l, %bb.m, %bb.o, %bb.q, %bb.n, %bb.p, %bb.r, %bb.k, %bb.j, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.bb = icmp eq i64 %i.o, %i.l
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph55
  %i.bc = add nuw i64 %.sroa.0.1.i54, 1           ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.l
  br i1 %i.bd, label %.body, label %.lr.ph55

bb.u:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.u, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f, %bb.i
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.be, %bb.u ], [ %i.ad, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ad, %bb.f ]
  %i.bf = icmp eq i64 %i.o, %i.l
  br i1 %i.bf, label %.body, label %.lr.ph55

.lr.ph55:                                         ; preds = %.body17, %bb.t
  %.sroa.0.1.i54 = phi i64 [ %i.bc, %bb.t ], [ %i.o, %.body17 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %.val4, i64 %.sroa.0.1.i54
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(128) %i.bg) #31
          to label %bb.t unwind label %bb.v, !inline_history !3593

bb.v:                                             ; preds = %.lr.ph55
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !3593
  unreachable

.body:                                            ; preds = %bb.t, %.body17
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
  ret void

bb.w:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body18
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val4 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %.not.i = icmp eq ptr %.val4, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4, i64 -16 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.val4, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.e = icmp ult i64 %.val.i, 288230376151711744
  %i.f = shl nuw i64 %.val.i, 6
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775791
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 16, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !11 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit, %bb.c
  %.sroa.0.0.i1013 = phi i64 [ %i.p, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %.val4, i64 %.sroa.0.0.i1013
  %i.p = add nuw i64 %.sroa.0.0.i1013, 1          ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(64) %i.o)
          to label %bb.c unwind label %bb.e, !inline_history !3612

bb.d:                                             ; preds = %.lr.ph15
  %i.q = add nuw i64 %.sroa.0.1.i14, 1            ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body, label %.lr.ph15

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.val4, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(64) %i.u) #31
          to label %bb.d unwind label %bb.f, !inline_history !3612

bb.f:                                             ; preds = %.lr.ph15
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !3612
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize.exit
  ret void

bb.g:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.body
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noundef !11
  %i.d = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.g = load i8, ptr %i.f, align 1, !noundef !11
  %.not = icmp sgt i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %.val21 = load i64, ptr %i.h, align 8
  br i1 %.not, label %2, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit

2:                                                ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %2
  %i.i = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val) #30
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b, %2
  %.sroa.06.0 = phi ptr [ %.val, %bb.b ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val, %bb.a ]
  store ptr %.sroa.06.0, ptr %i.a, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val21, ptr %.sroa.58.0..sroa_idx9, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25 = load i64, ptr %i.m, align 8           ; 3 uses
  %.not.i.i28 = icmp eq ptr %.val24, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i28, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit
  %i.n = getelementptr inbounds i8, ptr %.val24, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.h, !prof !12

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val24, i64 noundef %.val25) #30
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.q, %bb.g ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #31
          to label %bb.n unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.d, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val26 = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val27 = load i64, ptr %i.s, align 8           ; 2 uses
  %.not.i.i29 = icmp eq ptr %.val26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i29, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds i8, ptr %.val26, i64 -16
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.l, !prof !12

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val26, i64 noundef %.val27) #30
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val24, i64 %.val25) #31
          to label %bb.f unwind label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.x, align 8
  store <2 x i64> %i.d, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val24, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val25, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val26, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val27, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.k, %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceBT_EE11spec_extendCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !3625
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8, !noalias !3625
  %i.c = icmp ne ptr %1, null                     ; 3 uses
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3626, !noundef !11 ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !16, !alias.scope !3626, !noundef !11
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ult i64 %i.h, %i.d
  br i1 %i.i, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 16)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i unwind label %bb.c

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !3625
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i, %bb.a
  %i.j = phi i64 [ %.pre.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i ], [ %i.f, %bb.a ] ; 3 uses
  br i1 %i.c, label %.lr.ph.split.us.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceBG_EECsibhcYuwTAtB_13typst_realize.exit

.lr.ph.split.us.i.i.i:                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3625, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.m, align 8, !noalias !3627
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %2, ptr %i.n, align 8, !noalias !3627
  %i.o = add i64 %i.j, 1
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceBG_EECsibhcYuwTAtB_13typst_realize.exit

.noexc5.i:                                        ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.p

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br i1 %i.c, label %bb.d, label %.noexc5.i

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %.noexc5.i unwind label %bb.e, !noalias !3625

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3625
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceBG_EECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit.i, %.lr.ph.split.us.i.i.i
  %.val9.i.i.i = phi i64 [ %i.o, %.lr.ph.split.us.i.i.i ], [ %i.j, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE7reserveCsibhcYuwTAtB_13typst_realize.exit.i ]
  store i64 %.val9.i.i.i, ptr %i.e, align 8, !alias.scope !3625, !noalias !3628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceBT_EE11spec_extendCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3645)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !3645, !noundef !11 ; 2 uses
  %i.a = icmp ne ptr %.val.i, null                ; 3 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3646, !noundef !11 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !16, !alias.scope !3646, !noundef !11
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i unwind label %bb.c

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !3644
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i, %bb.a
  %i.h = phi i64 [ %.pre.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit_crit_edge.i ], [ %i.d, %bb.a ] ; 3 uses
  br i1 %i.a, label %._crit_edge.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceBG_EECsibhcYuwTAtB_13typst_realize.exit

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsibhcYuwTAtB_13typst_realize.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3644, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store ptr %.val.i, ptr %i.k, align 8, !noalias !3647
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !noalias !3644
  %i.l = add i64 %i.h, 1
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceBG_EECsibhcYuwTAtB_13typst_realize.exit

.noexc5.i:                                        ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.m

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br i1 %i.a, label %bb.d, label %.noexc5.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc5.i unwind label %bb.e, !noalias !3644
end_hunk_4
