inline.NumInlined: 25585
inline.NumDeleted: 11329
begin_hunk_0_@_ZN6duckdb14FilterCombiner24AddBoundComparisonFilterERNS_10ExpressionE:bb.a
bb.bb:                                            ; preds = %bb.az
  %i.em = load ptr, ptr %i.cz, align 8, !tbaa !1467 ; 7 uses
  %i.en = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64               ; 3 uses
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %bb.bc, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bb
  %i.er = ashr exact i64 %i.ep, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = tail call i64 @llvm.umin.i64(i64 %i.es, i64 1152921504606846975)
  %i.ev = select i1 %i.et, i64 1152921504606846975, i64 %i.eu ; 3 uses
  %.not.i.i.i145 = icmp ne i64 %i.ev, 0
  tail call void @llvm.assume(i1 %.not.i.i.i145)
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #36 ; 8 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ep
  %i.ez = load i64, ptr %.sroa.0152.0173, align 8
  store i64 %i.ez, ptr %i.ey, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.em, %i.eh
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.fa = ptrtoaddr ptr %i.ex to i64
  %i.fb = add i64 %i.en, -8
  %i.fc = sub i64 %i.fb, %i.eo                    ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fc, 24
  %i.ff = sub i64 %i.fa, %i.eo
  %diff.check = icmp ult i64 %i.ff, 32
  %or.cond210 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond210, label %.lr.ph.i.i.i.i.i.i.preheader211, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fe, 4611686018427387900     ; 3 uses
  %i.fg = shl i64 %n.vec, 3                       ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %i.fg  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.em, i64 %i.fg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ex, i64 %i.fj ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.em, i64 %i.fj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.fk = getelementptr i8, ptr %next.gep207, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep207, align 8, !alias.scope !1830, !noalias !1827
  %wide.load208 = load <2 x i64>, ptr %i.fk, align 8, !alias.scope !1830, !noalias !1827
  %i.fl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1827, !noalias !1830
  store <2 x i64> %wide.load208, ptr %i.fl, align 8, !alias.scope !1827, !noalias !1830
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !1832

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader211

.lr.ph.i.i.i.i.i.i.preheader211:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader211, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader211 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader211 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.fn = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !1830, !noalias !1827
  store i64 %i.fn, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !1827, !noalias !1830
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, %i.eh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1833

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ex, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fh, %middle.block ], [ %i.fp, %.lr.ph.i.i.i.i.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.em) #34
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ex, ptr %i.cz, align 8, !tbaa !1467
  store ptr %i.fq, ptr %i.df, align 8, !tbaa !1519
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.fr, ptr %i.dg, align 8, !tbaa !1520
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.ba, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0152.0173, i64 8 ; 2 uses
  %.not169 = icmp eq ptr %i.fs, %i.dd
  br i1 %.not169, label %._crit_edge, label %bb.az

bb.be:                                            ; preds = %bb.bg
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0146.0175, i64 72 ; 2 uses
  %.not170 = icmp eq ptr %i.ft, %i.ee
  br i1 %.not170, label %.thread, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph176, %bb.be
  %.sroa.0146.0175 = phi ptr [ %i.ec, %.lr.ph176 ], [ %i.ft, %bb.be ] ; 3 uses
  call void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(65) %8, ptr noundef nonnull align 8 dereferenceable(65) %.sroa.0146.0175)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0146.0175, i64 64
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !1549
  store i8 %i.fv, ptr %i.ef, align 8, !tbaa !1549
  %i.fw = invoke noundef i32 @_ZN6duckdb14FilterCombiner21AddConstantComparisonERNS_6vectorINS0_26ExpressionValueInformationELb1ESaIS2_EEES2_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull %8)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %.not78 = icmp eq i32 %i.fw, 0
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(65) %8) #33
  br i1 %.not78, label %.thread, label %bb.be

bb.bh:                                            ; preds = %bb.bf
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(65) %8) #33
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ao
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %i.fx, %bb.bh ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn

.thread:                                          ; preds = %bb.be, %bb.bg, %_ZNSt3mapImN6duckdb6vectorINS0_14FilterCombiner26ExpressionValueInformationELb1ESaIS3_EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit143, %bb.ar, %bb.aq, %bb.am, %bb.ap, %bb.a
  %.10 = phi i32 [ 2, %bb.a ], [ %.3, %bb.am ], [ 2, %bb.ap ], [ 1, %bb.ar ], [ 2, %bb.aq ], [ 1, %_ZNSt3mapImN6duckdb6vectorINS0_14FilterCombiner26ExpressionValueInformationELb1ESaIS3_EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit143 ], [ 1, %bb.be ], [ 0, %bb.bg ]
  ret i32 %.10
}

declare noundef zeroext i1 @_ZN6duckdb18ExpressionExecutor17TryEvaluateScalarERNS_13ClientContextERKNS_10ExpressionERNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14FilterCombiner26ExpressionValueInformationC2Ev(ptr noundef nonnull align 8 dereferenceable(65) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #33
  resume { ptr, i32 } %i.a
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14FilterCombiner20FindTransitiveFilterERNS_10ExpressionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.141") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1345
  %.not = icmp eq i8 %i.b, -28
  br i1 %.not, label %.preheader, label %.critedge.sink.split

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !325
  %.not21 = icmp eq ptr %i.e, %i.f
  br i1 %.not21, label %.critedge.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.020 = phi i64 [ %i.ab, %bb.e ], [ 0, %.preheader ] ; 5 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.020)
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !233
  %i.k = icmp eq i8 %i.j, 29
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.020)
  %i.m = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb14BaseExpression4CastINS_25BoundComparisonExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = load ptr, ptr %2, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.p)
  %3 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %4 = load i8, ptr %3, align 8
  %.not16 = icmp ne i8 %4, 26
  %or.cond.not = select i1 %i.t, i1 %.not16, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.020) ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !199  ; 3 uses
  store i64 %i.v, ptr %0, align 8, !tbaa !199
  store ptr null, ptr %i.u, align 8, !tbaa !199
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  invoke void @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE8erase_atEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.020)
          to label %.critedge unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(88) %i.w) #33, !inline_history !364
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %i.ab = add nuw i64 %.020, 1                    ; 2 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !326
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !325
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = icmp ult i64 %i.ab, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.critedge.sink.split, !llvm.loop !1834

.critedge.sink.split:                             ; preds = %bb.e, %.preheader, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !332
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN6duckdb14FilterCombiner20AddTransitiveFiltersERNS_25BoundComparisonExpressionEb(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 6 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 6 uses
  %9 = alloca %"struct.duckdb::FilterCombiner::ExpressionValueInformation", align 8 ; 11 uses
  %10 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 8 uses
  %11 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 8 uses
  %12 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 8 uses
  %13 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 8 uses
  %14 = alloca %"struct.duckdb::FilterCombiner::ExpressionValueInformation", align 8 ; 5 uses
  %15 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1345  ; 2 uses
  %i.c = and i8 %i.b, -3
  %i.d = icmp eq i8 %i.c, 28
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %.thread [
    i8 29, label %bb.c
    i8 27, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb14FilterCombiner7GetNodeERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb14FilterCombiner7GetNodeERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.i) ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1345
  %.not = icmp eq i8 %i.l, 12
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseExpression4CastINS_19BoundCastExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.j) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 5 uses
  %i.o = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !1345
  %.not94 = icmp eq i8 %i.q, -28
  br i1 %.not94, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.s = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0245.0299 = load ptr, ptr %i.t, align 8, !tbaa !168 ; 2 uses
  %.not269300 = icmp eq ptr %.sroa.0245.0299, null
  br i1 %.not269300, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0245.0301 = phi ptr [ %.sroa.0245.0299, %.lr.ph ], [ %.sroa.0245.0, %.critedge ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0245.0301, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !1345 ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 12
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseExpression4CastINS_19BoundCastExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.j)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !1345
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = phi i8 [ %.pre, %bb.g ], [ %i.ab, %bb.f ]
  %.sroa.0241.0 = phi ptr [ %i.af, %bb.g ], [ %i.z, %bb.f ]
  %.not95 = icmp eq i8 %i.ag, -28
  br i1 %.not95, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0241.0) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !239
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !239
  %i.al = icmp ne i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.v, align 8
  %i.ap = icmp ne i64 %i.an, %i.ao
  %.not3.i = select i1 %i.al, i1 true, i1 %i.ap
  br i1 %.not3.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0245.0301, i64 16 ; 2 uses
  %i.ar = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  br i1 %i.at, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.au = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.141") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %i.au)
  %i.ay = load ptr, ptr %8, align 8, !tbaa !199
  store ptr null, ptr %8, align 8, !tbaa !199
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !199 ; 3 uses
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !199
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(88) %i.az) #33, !inline_history !359
  %.pr = load ptr, ptr %8, align 8, !tbaa !199    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bd = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #33, !inline_history !364
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.bg = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.bh = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb14FilterCombiner7GetNodeERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.bg)
  br label %.loopexit

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.0245.0 = load ptr, ptr %.sroa.0245.0301, align 8, !tbaa !168 ; 2 uses
  %.not269 = icmp eq ptr %.sroa.0245.0, null
  br i1 %.not269, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %.critedge, %bb.e, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.d, %bb.c
  %.sroa.0248.1 = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %i.bh, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.j, %bb.e ], [ %i.j, %.critedge ] ; 2 uses
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0248.1)
  br i1 %i.bl, label %.thread, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.bm = call noundef i64 @_ZN6duckdb14FilterCombiner17GetEquivalenceSetERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.g) ; 3 uses
  %i.bn = call noundef i64 @_ZN6duckdb14FilterCombiner17GetEquivalenceSetERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0248.1) ; 3 uses
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bp = load i8, ptr %i.a, align 8, !tbaa !1345 ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 28
  br i1 %i.bq, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = icmp ne i8 %i.bp, 27
  %spec.select = zext i1 %i.br to i32
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1504 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.not10.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN6duckdb6vectorINS0_14FilterCombiner26ExpressionValueInformationELb1ESaIS3_EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bt, %bb.o ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.bu, %bb.o ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb19RemoveUnusedColumns20CheckPushdownExtractERNS_15LogicalOperatorE:bb.a
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !168 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !254
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aw = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.bi, %bb.h ]
  %i.ax = phi ptr [ %i.av, %bb.f ], [ %i.bg, %bb.h ] ; 4 uses
  %i.ay = icmp eq i64 %i.ap, %i.aw
  br i1 %i.ay, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i: ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !239
  %i.bb = icmp eq i64 %i.r, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp eq i64 %.041107, %i.bd
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, %bb.g
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !168 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !254 ; 2 uses
  %i.bj = urem i64 %i.bi, %i.aq
  %.not19.i.i.i.i = icmp eq i64 %i.bj, %i.ar
  br i1 %.not19.i.i.i.i, label %bb.g, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, !llvm.loop !2456

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.ax, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !3197
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !3197
  %i.bo = icmp eq ptr %i.bl, %i.bn
  br i1 %i.bo, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 96 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !3177
  %i.br = icmp eq i8 %i.bq, 1
  br i1 %i.br, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.bs = call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.041107)
  %i.bt = call noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %i.bs)
  store i64 %i.bt, ptr %2, align 8, !tbaa !3198
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !3200 ; 2 uses
  %.not45 = icmp eq ptr %i.bu, null
  br i1 %.not45, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !3201
  %.not46 = icmp eq ptr %i.bv, null
  br i1 %.not46, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.bx = call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %. = select i1 %i.bx, i8 2, i8 1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %storemerge47 = phi i8 [ %., %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  store i8 %storemerge47, ptr %i.bp, align 8, !tbaa !3177
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !1659
  %.pre123 = load ptr, ptr %i.d, align 8, !tbaa !1658
  br label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread: ; preds = %bb.h, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i, %.preheader, %bb.e, %bb.m, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit, %bb.i
  %i.by = phi ptr [ %i.p, %.preheader ], [ %i.p, %bb.i ], [ %i.p, %bb.e ], [ %.pre123, %bb.m ], [ %i.p, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit ], [ %i.p, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.bz = phi ptr [ %i.q, %.preheader ], [ %i.q, %bb.i ], [ %i.q, %bb.e ], [ %.pre, %bb.m ], [ %i.q, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit ], [ %i.q, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i ], [ %i.q, %bb.h ] ; 2 uses
  %i.ca = add nuw i64 %.041107, 1                 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 104
  %i.cf = icmp ult i64 %i.ca, %i.ce
  br i1 %i.cf, label %bb.c, label %.loopexit, !llvm.loop !3202

bb.n:                                             ; preds = %bb.a
  %i.cg = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15LogicalOperator4CastINS_17LogicalProjectionEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %1) ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !326
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !325
  %.not110 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not110, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread
  %.042105 = phi i64 [ 0, %.lr.ph ], [ %i.ev, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread ] ; 6 uses
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 noundef %.042105)
  %i.cr = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) ; 2 uses
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !2139 ; 4 uses
  %i.ct = load i64, ptr %i.cm, align 8, !tbaa !2303
  %.not.not.i.i50 = icmp eq i64 %i.ct, 0
  br i1 %.not.not.i.i50, label %.preheader114, label %bb.q

.preheader114:                                    ; preds = %bb.o, %bb.p
  %.sroa.06.0.in.i.i59 = phi ptr [ %.sroa.06.0.i.i60, %bb.p ], [ %i.cp, %bb.o ]
  %.sroa.06.0.i.i60 = load ptr, ptr %.sroa.06.0.in.i.i59, align 8, !tbaa !168 ; 5 uses
  %.not.i.i61 = icmp eq ptr %.sroa.06.0.i.i60, null
  br i1 %.not.i.i61, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread, label %bb.p

bb.p:                                             ; preds = %.preheader114
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i60, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !239
  %i.cw = icmp eq i64 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i60, i64 16
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = icmp eq i64 %.042105, %i.cy
  %i.da = select i1 %i.cw, i1 %i.cz, i1 false
  br i1 %i.da, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62, label %.preheader114, !llvm.loop !2455

bb.q:                                             ; preds = %bb.o
  %i.db = lshr i64 %i.cs, 32
  %i.dc = xor i64 %i.db, %i.cs
  %i.dd = mul i64 %i.dc, -2960836687051489901     ; 2 uses
  %i.de = lshr i64 %i.dd, 32
  %i.df = xor i64 %i.de, %i.dd
  %i.dg = mul i64 %i.df, -2960836687051489901     ; 2 uses
  %i.dh = lshr i64 %.042105, 32
  %i.di = xor i64 %i.dh, %.042105
  %i.dj = mul i64 %i.di, -2960836687051489901     ; 2 uses
  %i.dk = lshr i64 %i.dj, 32
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -2960836687051489901     ; 2 uses
  %i.dn = xor i64 %i.dg, %i.dm
  %i.do = lshr i64 %i.dn, 32
  %i.dp = xor i64 %i.dm, %i.do
  %i.dq = xor i64 %i.dp, %i.dg                    ; 2 uses
  %i.dr = load i64, ptr %i.co, align 8, !tbaa !2226 ; 2 uses
  %i.ds = urem i64 %i.dq, %i.dr                   ; 2 uses
  %i.dt = load ptr, ptr %i.cn, align 8, !tbaa !2224
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i51, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !168 ; 2 uses
  %.phi.trans.insert.i.i.i.i52 = getelementptr inbounds nuw i8, ptr %i.dw, i64 160
  %.pre.i.i.i.i53 = load i64, ptr %.phi.trans.insert.i.i.i.i52, align 8, !tbaa !254
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.dx = phi i64 [ %.pre.i.i.i.i53, %bb.r ], [ %i.ej, %bb.t ]
  %i.dy = phi ptr [ %i.dw, %bb.r ], [ %i.eh, %bb.t ] ; 4 uses
  %i.dz = icmp eq i64 %i.dq, %i.dx
  br i1 %i.dz, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i58, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i54

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i58: ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !239
  %i.ec = icmp eq i64 %i.cs, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = icmp eq i64 %.042105, %i.ee
  %i.eg = select i1 %i.ec, i1 %i.ef, i1 false
  br i1 %i.eg, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i54

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i54: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i58, %bb.s
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !168 ; 3 uses
  %.not18.i.i.i.i55 = icmp eq ptr %i.eh, null
  br i1 %.not18.i.i.i.i55, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread, label %bb.t

bb.t:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i54
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 160
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !254 ; 2 uses
  %i.ek = urem i64 %i.ej, %i.dr
  %.not19.i.i.i.i56 = icmp eq i64 %i.ek, %i.ds
  br i1 %.not19.i.i.i.i56, label %bb.s, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread, !llvm.loop !2456

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i58, %bb.p
  %.sroa.06.1.i.i57 = phi ptr [ %.sroa.06.0.i.i60, %bb.p ], [ %i.dy, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i58 ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i57, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i57, i64 80
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !38
  %6 = icmp ne ptr %i.em, %i.eo
  %7 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %8 = load i8, ptr %7, align 8
  %i.ep = icmp eq i8 %8, -28
  %or.cond = select i1 %6, i1 %i.ep, i1 false
  br i1 %or.cond, label %bb.u, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread

bb.u:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !104
  %.not44 = icmp eq i8 %i.er, 100
  br i1 %.not44, label %bb.v, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread

bb.v:                                             ; preds = %bb.u
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i57, i64 96 ; 2 uses
  %i.et = load i8, ptr %i.es, align 8, !tbaa !3177
  %i.eu = icmp eq i8 %i.et, 1
  br i1 %i.eu, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 2, ptr %i.es, align 8, !tbaa !3177
  br label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread: ; preds = %bb.t, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i54, %.preheader114, %bb.q, %bb.w, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62, %bb.u, %bb.v
  %i.ev = add nuw i64 %.042105, 1                 ; 2 uses
  %i.ew = load ptr, ptr %i.ci, align 8, !tbaa !326
  %i.ex = load ptr, ptr %i.ch, align 8, !tbaa !325
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3
  %i.fc = icmp ult i64 %i.ev, %i.fb
  br i1 %i.fc, label %bb.o, label %.loopexit, !llvm.loop !3203

bb.x:                                             ; preds = %bb.a
  %i.fd = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.fe = load i8, ptr %i.a, align 8, !tbaa !15
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_19LogicalOperatorTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i8 noundef zeroext %i.fe)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.ae unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread: ; preds = %bb.x
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fh = load ptr, ptr %5, align 8, !tbaa !124   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.fh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.fk = load ptr, ptr %3, align 8, !tbaa !124   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.y
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.fo = load ptr, ptr %3, align 8, !tbaa !124   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.fo) #34
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.fk) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.0, label %bb.ac, label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.0, label %bb.ac, label %bb.ad

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.thread
  %.pn.pn83.ph = phi { ptr, i32 } [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.thread ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.thread ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn.pn83 = phi { ptr, i32 } [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.pn.pn83.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.fd) #33
  br label %bb.ad

.loopexit:                                        ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit62.thread, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, %bb.n, %bb.b
  ret void

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.ac
  %.pn.pn82 = phi { ptr, i32 } [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.pn.pn83, %bb.ac ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  resume { ptr, i32 } %.pn.pn82

bb.ae:                                            ; preds = %bb.aa
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19RemoveUnusedColumns18RewriteExpressionsERNS_17LogicalProjectionEm(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.74", align 8 ; 18 uses
  %4 = alloca %"class.std::unordered_map.2208", align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %5 = alloca %"struct.duckdb::ColumnBinding", align 8 ; 5 uses
  %6 = alloca %"class.std::function.2204", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2454, !nonnull !61, !align !186
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !3204
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.e, align 8, !tbaa !3206
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !275
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !66
  %.not72 = icmp eq i64 %2, 0
  br i1 %.not72, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.f

._crit_edge71.loopexit:                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !325
  %.pre78 = load ptr, ptr %i.q, align 8, !tbaa !327
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %bb.a
  %i.s = phi ptr [ %.pre78, %._crit_edge71.loopexit ], [ null, %bb.a ]
  %i.t = phi ptr [ %i.gq, %._crit_edge71.loopexit ], [ null, %bb.a ]
  %i.u = phi ptr [ %.pre, %._crit_edge71.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !325  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !326  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.u, ptr %i.v, align 8, !tbaa !325
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.t, ptr %i.x, align 8, !tbaa !326
  store ptr %i.s, ptr %i.z, align 8, !tbaa !327
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge71, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.w, %._crit_edge71 ] ; 2 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(88) %i.ab) #33, !inline_history !1379
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !355

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %._crit_edge71
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.w) #34
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.b
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !3207 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ag, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb11ColumnIndexEmELb1EEEEE18_M_deallocate_nodeEPS7_.exit.i.i
  %.06.i.i = phi ptr [ %i.ah, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb11ColumnIndexEmELb1EEEEE18_M_deallocate_nodeEPS7_.exit.i.i ], [ %i.ag, %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit ] ; 7 uses
  %i.ah = load ptr, ptr %.06.i.i, align 8, !tbaa !168 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb21TopNWindowElimination16OptimizeInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERNS_21ColumnBindingReplacerE:bb.a
  %i.hs = load ptr, ptr %.05.i.i.i148, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i.i149 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i149, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i151, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i150

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i150: ; preds = %.lr.ph.i.i.i147
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !7
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(88) %i.hs) #33, !inline_history !384
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i151

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i151: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i150, %.lr.ph.i.i.i147
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i148, i64 8 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %i.hw, %i.hr
  br i1 %.not.i.i.i152, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i153, label %.lr.ph.i.i.i147, !llvm.loop !355

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i153: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i151
  %.pr.i154 = load ptr, ptr %13, align 16, !tbaa !325
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i155

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i155: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i153, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit145
  %i.hx = phi ptr [ %.pr.i154, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i153 ], [ %i.hq, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit145 ] ; 2 uses
  %.not.i.i1.i156 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i1.i156, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit157, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i155
  call void @_ZdlPv(ptr noundef nonnull %i.hx) #34
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit157

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit157: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i155, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.hy = load ptr, ptr %i.cu, align 8, !tbaa !1504
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.hy)
          to label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit157
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #37
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.ib = load ptr, ptr %11, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ib) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.ic = load ptr, ptr %10, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit160, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ic) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit160

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit160: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bq

bb.bh:                                            ; preds = %bb.az
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit163

bb.bi:                                            ; preds = %bb.ba
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bc, %bb.bb
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19RemoveUnusedColumnsD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %27) #33
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn42 = phi { ptr, i32 } [ %i.if, %bb.bj ], [ %i.ie, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit163

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit136, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit133, %bb.av, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit130
  %.pn42.pn = phi { ptr, i32 } [ %i.gq, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit133 ], [ %i.gp, %bb.av ], [ %.pn39.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit130 ], [ %i.gv, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit136 ] ; 2 uses
  %.not.i161 = icmp eq ptr %.sroa.0168.0, null
  br i1 %.not.i161, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i162

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i162: ; preds = %bb.bl
  %i.ig = load ptr, ptr %.sroa.0168.0, align 8, !tbaa !7
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.sroa.0168.0) #33, !inline_history !399
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit163

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit163: ; preds = %bb.ah, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit142, %bb.bh, %bb.bk, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i162, %bb.bl, %bb.ag
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ag ], [ %.pn42.pn, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i162 ], [ %.pn42.pn, %bb.bl ], [ %i.dn, %bb.ah ], [ %i.ha, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit142 ], [ %i.id, %bb.bh ], [ %.pn42, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #33
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit163, %bb.af
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit163 ], [ %i.dl, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ae
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %bb.bm ], [ %i.dk, %bb.ae ] ; 2 uses
  %i.ij = load ptr, ptr %11, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef nonnull %i.ij) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165: ; preds = %bb.bo, %bb.bn, %bb.ad
  %.pn42.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.ad ], [ %.pn42.pn.pn.pn.pn, %bb.bn ], [ %.pn42.pn.pn.pn.pn, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.ik = load ptr, ptr %10, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit167, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165
  call void @_ZdlPv(ptr noundef nonnull %i.ik) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit167

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit167: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit165, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.br

bb.bq:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit160, %.loopexit
  ret void

bb.br:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit167, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit72, %bb.n
  %.pn42.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit167 ], [ %.pn37, %bb.n ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit72 ]
  resume { ptr, i32 } %.pn42.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb21TopNWindowElimination11CanOptimizeERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalFilterEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %1) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !326
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !325
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp eq i64 %i.j, 8
  br i1 %.not54, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
  %i.l = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1345  ; 2 uses
  switch i8 %i.n, label %.loopexit [
    i8 29, label %bb.d
    i8 27, label %bb.d
    i8 25, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
  %i.p = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb14BaseExpression4CastINS_25BoundComparisonExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !1345
  %.not55 = icmp eq i8 %i.u, 75
  br i1 %.not55, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.w = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundConstantExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 14)
  %i.y = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %3 = xor i1 %i.y, true
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %4 = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %5 = load i8, ptr %4, align 8, !range !60
  %6 = trunc nuw i8 %5 to i1
  %or.cond = select i1 %3, i1 true, i1 %6
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.z

bb.h:                                             ; preds = %bb.f
  %i.aa = call noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.x) ; 3 uses
  switch i8 %i.n, label %.loopexit [
    i8 29, label %bb.i
    i8 27, label %bb.j
    i8 25, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %.loopexit, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ac = icmp slt i64 %i.aa, 2
  br i1 %i.ac, label %.loopexit, label %bb.l

bb.k:                                             ; preds = %bb.h
  %.not56 = icmp eq i64 %i.aa, 1
  br i1 %.not56, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.ae = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !1345
  %.not57 = icmp eq i8 %i.ag, -28
  br i1 %.not57, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull %i.ad)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef 0)
  %i.am = call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.m
  %.sroa.084.0 = phi ptr [ %i.am, %bb.m ], [ %.sroa.084.1, %bb.t ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !15
  %i.at = icmp eq i8 %i.as, 1
  br i1 %i.at, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.au = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15LogicalOperator4CastINS_17LogicalProjectionEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %.sroa.084.0)
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !2303
  %.not69 = icmp eq i64 %i.av, 1                  ; 2 uses
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !2283 ; 4 uses
  br i1 %.not69, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not5.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.noexc.i.i
  %.06.i.i.i = phi ptr [ %i.ax, %.noexc.i.i ], [ %i.aw, %bb.p ] ; 2 uses
  %i.ax = load ptr, ptr %.06.i.i.i, align 8, !tbaa !168 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb13ColumnBindingENS3_16ReferencedColumnEELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull %.06.i.i.i)
          to label %.noexc.i.i unwind label %bb.q

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !2300

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit: ; preds = %.noexc.i.i, %bb.p
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !2224
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !2226
  %i.bc = shl i64 %i.bb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.bc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !66
  br label %.lr.ph.i.i.i73

.lr.ph.i.i.i73:                                   ; preds = %bb.r, %.noexc.i.i75
  %.06.i.i.i74 = phi ptr [ %i.bd, %.noexc.i.i75 ], [ %i.aw, %bb.r ] ; 2 uses
  %i.bd = load ptr, ptr %.06.i.i.i74, align 8, !tbaa !168 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb13ColumnBindingENS3_16ReferencedColumnEELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull %.06.i.i.i74)
          to label %.noexc.i.i75 unwind label %bb.s

.noexc.i.i75:                                     ; preds = %.lr.ph.i.i.i73
  %.not.i.i.i76 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i76, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit77, label %.lr.ph.i.i.i73, !llvm.loop !2300

bb.s:                                             ; preds = %.lr.ph.i.i.i73
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #37
  unreachable

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit77: ; preds = %.noexc.i.i75
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !2224
  %i.bh = load i64, ptr %i.aq, align 8, !tbaa !2226
  %i.bi = shl i64 %i.bh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 0, i64 %i.bi, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 noundef %.sroa.3.0.copyload)
  %i.bl = load ptr, ptr %0, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull %i.bk)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 16
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef 0)
  %i.bq = call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit77, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit
  %.sroa.084.1 = phi ptr [ %i.bq, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit77 ], [ %.sroa.084.0, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit ]
  br i1 %.not69, label %bb.n, label %.loopexit, !llvm.loop !3541

bb.u:                                             ; preds = %bb.n
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !2303
  %.not58 = icmp eq i64 %i.br, 1
  br i1 %.not58, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.an) #33
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 8
  %i.bt = load ptr, ptr %i.ap, align 8, !tbaa !2283
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !2551
  call void @_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.an) #33
  %i.bw = load i8, ptr %i.bs, align 8, !tbaa !15
  %.not59 = icmp eq i8 %i.bw, 4
  br i1 %.not59, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.bx = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalWindowEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %.sroa.084.0) ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 104
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3535
  %.not60 = icmp eq i64 %i.bz, %i.bv
  br i1 %.not60, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 6 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef 0)
  %i.cc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
  %i.cd = call noundef nonnull align 8 dereferenceable(296) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundWindowExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cc) ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !314 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !314 ; 2 uses
  %.not8999 = icmp eq ptr %i.cf, %i.ch
  br i1 %.not8999, label %.critedge, label %.lr.ph

bb.z:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.078.0100, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.ci, %i.ch
  br i1 %.not89, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y, %bb.z
  %.sroa.078.0100 = phi ptr [ %i.ci, %bb.z ], [ %i.cf, %bb.y ] ; 2 uses
  %i.cj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.078.0100)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !233
  %.not61 = icmp eq i8 %i.cl, 28
  br i1 %.not61, label %bb.z, label %.loopexit

.critedge:                                        ; preds = %bb.z, %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !326
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !325
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %.not63101 = icmp ugt i64 %i.cr, 8
  br i1 %.not63101, label %.lr.ph103, label %.critedge71

bb.aa:                                            ; preds = %.lr.ph103
  %i.cs = add nuw i64 %.049102, 1                 ; 2 uses
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !326
  %i.cu = load ptr, ptr %i.ca, align 8, !tbaa !325
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  %.not63 = icmp ult i64 %i.cs, %i.cy
  br i1 %.not63, label %.lr.ph103, label %.critedge71, !llvm.loop !3542

.lr.ph103:                                        ; preds = %.critedge, %bb.aa
  %.049102 = phi i64 [ %i.cs, %bb.aa ], [ 1, %.critedge ] ; 2 uses
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef %.049102)
  %i.da = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz) ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(88) %i.da, ptr noundef nonnull align 8 dereferenceable(56) %i.cd)
  br i1 %i.de, label %bb.aa, label %.loopexit

.critedge71:                                      ; preds = %bb.aa, %.critedge
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef 0)
  %i.dg = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !1345
  %.not64 = icmp eq i8 %i.di, 125
  br i1 %.not64, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.critedge71
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef 0)
  %i.dk = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
  %i.dl = call noundef nonnull align 8 dereferenceable(296) ptr @_ZN6duckdb14BaseExpression4CastINS_21BoundWindowExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.dk) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 176 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 184
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2342
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !2437
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %.not65 = icmp eq i64 %i.ds, 24
  br i1 %.not65, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.dt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef 0)
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !3369
  %.not66 = icmp eq i8 %i.du, 3
  br i1 %.not66, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef 0)
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !3369
  %.not67 = icmp eq i8 %i.dw, 2
  br i1 %.not67, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef 0)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !3371
  %.not68 = icmp eq i8 %i.dz, 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %.lr.ph, %.lr.ph103, %bb.v, %bb.x, %bb.ab, %bb.ad, %bb.ae, %.critedge71, %bb.w, %bb.b, %bb.d, %bb.i, %bb.j, %bb.k, %bb.h, %bb.l, %bb.f, %bb.c, %bb.a
  %.16 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.ab ], [ false, %bb.f ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.l ], [ false, %bb.i ], [ false, %.lr.ph103 ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ %.not68, %bb.ae ], [ false, %.critedge71 ], [ false, %.lr.ph ], [ false, %bb.ad ], [ false, %bb.t ]
  ret i1 %.16
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21TopNWindowElimination26TraverseProjectionBindingsERKSt6vectorINS_13ColumnBindingESaIS2_EERSt17reference_wrapperINS_15LogicalOperatorEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.j, label %.noexc.i.i, label %bb.c, !prof !117

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36 ; 14 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !65
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.m = getelementptr i8, ptr %.09.i.i.i.i.i, i64 16 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3543

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !1158   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !15
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %.lr.ph37, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit20

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr null, i64 %i.i ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !1158   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !15
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %.lr.ph37.split.preheader, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit20

.lr.ph37:                                         ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit
  %.not = icmp eq ptr %i.m, %i.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not, label %.lr.ph37.split.preheader, label %.lr.ph37.split.us.preheader

.lr.ph37.split.us.preheader:                      ; preds = %.lr.ph37
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = ptrtoint ptr %i.k to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 4
  br label %.lr.ph37.split.us

.lr.ph37.split.preheader:                         ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread, %.lr.ph37
  %i.ae = phi ptr [ %i.n, %.lr.ph37 ], [ %i.s, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ]
  %i.af = phi ptr [ %i.k, %.lr.ph37 ], [ null, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ] ; 3 uses
  %.0.lcssa.i.i.i.i.i7680 = phi ptr [ %i.m, %.lr.ph37 ], [ null, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ]
  %i.ag = phi ptr [ %i.o, %.lr.ph37 ], [ %i.t, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EEC2ERKS3_.exit.thread ]
  br label %.lr.ph37.split

.lr.ph37.split.us:                                ; preds = %.lr.ph37.split.us.preheader, %bb.e
  %i.ah = phi ptr [ %i.aj, %bb.e ], [ %i.o, %.lr.ph37.split.us.preheader ]
  %i.ai = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15LogicalOperator4CastINS_17LogicalProjectionEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.ah)
          to label %.preheader.us unwind label %.split.us ; 2 uses

bb.d:                                             ; preds = %._crit_edge.us
  %i.aj = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.e unwind label %.split39.us ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i8, ptr %i.al, align 8, !tbaa !15
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %.lr.ph37.split.us, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit20, !llvm.loop !3544

bb.f:                                             ; preds = %.preheader.us, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit.us
  %.01336.us = phi i64 [ 0, %.preheader.us ], [ %i.de, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE5clearEv.exit.us ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.01336.us ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !250 ; 3 uses
  %i.ar = load ptr, ptr %i.dg, align 8, !tbaa !326
  %i.as = load ptr, ptr %i.df, align 8, !tbaa !325 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !66
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !66
  %.not.i.i.i.us = icmp ult i64 %i.aq, %i.aw
  br i1 %.not.i.i.i.us, label %bb.g, label %.noexc.i, !prof !155

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  %i.ay = load ptr, ptr %1, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull %i.ax)
          to label %bb.h unwind label %.split42.us

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !2283 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !65
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.noexc.i.i16.us, %bb.h
  %.06.i.i.i.us = phi ptr [ %i.bd, %.noexc.i.i16.us ], [ %i.bb, %bb.h ] ; 11 uses
  %i.bd = load ptr, ptr %.06.i.i.i.us, align 8, !tbaa !168 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 104 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 120 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2284 ; 2 uses
  %.not5.i.i.us = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.us, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.i.us, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us
  %.06.i.i.us = phi ptr [ %i.bi, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us ], [ %i.bh, %.lr.ph.i.i.i.us ] ; 7 uses
  %i.bi = load ptr, ptr %.06.i.i.us, align 8, !tbaa !168 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 88 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1658 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1659 ; 2 uses
  %.not.i.i2.i.i.i.i.i.us = icmp eq ptr %i.bk, %i.bm
  br i1 %.not.i.i2.i.i.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i23.us

.lr.ph.i.i.i.i.i23.us:                            ; preds = %.lr.ph.i.i.us, %.lr.ph.i.i.i.i.i23.us
  %.0.i.i3.i.i.i.i.i.us = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i23.us ], [ %i.bk, %.lr.ph.i.i.us ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.us), !inline_history !1660
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.us, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i.us = icmp eq ptr %i.bn, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.us, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i23.us, !llvm.loop !1661

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i23.us
  %.pre.i.i.i.i.i.us = load ptr, ptr %i.bj, align 8, !tbaa !1658
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.us, %.lr.ph.i.i.us
  %i.bo = phi ptr [ %.pre.i.i.i.i.i.us, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.us ], [ %i.bk, %.lr.ph.i.i.us ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.us = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i.i.i.i.us, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef nonnull %i.bo) #34, !inline_history !1662
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us: ; preds = %bb.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.us
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 56
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bp) #33, !inline_history !1663
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !124 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.us, i64 40
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef %i.br) #34, !inline_history !1663
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.us
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.us) #34
  %.not.i.i.us = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.us, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us, label %.lr.ph.i.i.us, !llvm.loop !2286

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i.us, %.lr.ph.i.i.i.us
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !2287
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 112
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !2288
  %i.bx = shl i64 %i.bw, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.bx, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.by = load ptr, ptr %i.bf, align 8, !tbaa !2287 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.us, i64 152
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i.i.us, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.us
  tail call void @_ZdlPv(ptr noundef %i.by) #34
end_hunk_2
