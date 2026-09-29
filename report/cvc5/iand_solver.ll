Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/iand_solver?download=true
inline.NumInlined: 1394
inline.NumDeleted: 465
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory5arith2nl10IAndSolver13sumBasedLemmaENS0_12NodeTemplateILb1EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bd

bb.au:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.av:                                            ; preds = %bb.l
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.aw:                                            ; preds = %bb.p
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ax:                                            ; preds = %bb.s
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ay:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit27
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.t
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.fc, %bb.az ], [ %.pn5.i, %bb.z ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.ba

bb.ba:                                            ; preds = %.body, %bb.ay
  %.pn14 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.fb, %bb.ay ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #21
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.ba ], [ %i.fa, %bb.ax ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.aw
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.bb ], [ %i.ez, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bd

bb.bd:                                            ; preds = %bb.au, %bb.bc, %bb.av, %bb.at
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.ex, %bb.au ], [ %.pn14.pn.pn, %bb.bc ], [ %i.ey, %bb.av ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.aq
  %.pn14.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.bd ], [ %i.eu, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn14.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith2nl10IAndSolver12bitwiseLemmaENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.436", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.436", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.436", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.436", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %12 = alloca %"class.cvc5::internal::Rational", align 8 ; 10 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.436", align 8 ; 2 uses
  %15 = alloca %"class.cvc5::internal::Rational", align 8 ; 10 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.436", align 8 ; 2 uses
  %18 = alloca %"class.cvc5::internal::BitVector", align 8 ; 6 uses
  %19 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %20 = alloca %"class.cvc5::internal::BitVector", align 8 ; 6 uses
  %21 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %24 = alloca %"class.cvc5::internal::BitVector", align 8 ; 6 uses
  %25 = alloca %"class.cvc5::internal::BitVector", align 8 ; 6 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %29 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %31 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %32 = alloca %"class.cvc5::internal::NodeTemplate.436", align 8 ; 2 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %34 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.a = load ptr, ptr %2, align 8, !tbaa !20, !noalias !424 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !424
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !424
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !424 ; 5 uses
  store ptr %i.m, ptr %9, align 8, !tbaa !20, !alias.scope !424
  %i.n = load i64, ptr %i.m, align 8, !noalias !424 ; 3 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.b, label %bb.c, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %i.m, align 8, !noalias !424
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.c:                                             ; preds = %bb.a
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.d, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.m, align 8, !noalias !424
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !424
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.z = load ptr, ptr %2, align 8, !tbaa !20, !noalias !425 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !425
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 1023                     ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 1023
  %i.af = select i1 %i.ae, i32 -1, i32 %i.ad
  %i.ag = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.af)
          to label %.noexc unwind label %bb.bd

.noexc:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ah = icmp eq i32 %i.ag, 2
  %spec.select.i.i = select i1 %i.ah, i64 2, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %spec.select.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18, !noalias !425 ; 5 uses
  store ptr %i.ak, ptr %10, align 8, !tbaa !20, !alias.scope !425
  %i.al = load i64, ptr %i.ak, align 8, !noalias !425 ; 3 uses
  %i.am = lshr i64 %i.al, 40
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = and i32 %i.an, 1048575                  ; 3 uses
  %i.ap = icmp samesign ult i32 %i.ao, 1048574
  br i1 %i.ap, label %bb.e, label %bb.f, !prof !50

bb.e:                                             ; preds = %.noexc
  %i.aq = add nuw nsw i32 %i.ao, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 40
  %i.at = and i64 %i.al, -1152920405095219201
  %i.au = or i64 %i.as, %i.at
  store i64 %i.au, ptr %i.ak, align 8, !noalias !425
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86

bb.f:                                             ; preds = %.noexc
  %i.av = icmp eq i32 %i.ao, 1048574
  br i1 %i.av, label %bb.g, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.aw = or i64 %i.al, 1152920405095219200
  store i64 %i.aw, ptr %i.ak, align 8, !noalias !425
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86 unwind label %bb.bd

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86: ; preds = %bb.f, %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.be

bb.h:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86
  %i.ax = load ptr, ptr %11, align 8, !tbaa !20
  %i.ay = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6IntAndEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6IntAndEEERKT_v.exit unwind label %bb.bf

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6IntAndEEERKT_v.exit: ; preds = %bb.h
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !55 ; 7 uses
  %i.ba = load ptr, ptr %11, align 8, !tbaa !20   ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = and i64 %i.bb, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bc, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.i, !prof !49

bb.i:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6IntAndEEERKT_v.exit
  %i.bd = add i64 %i.bb, 1152920405095219200
  %i.be = and i64 %i.bd, 1152920405095219200      ; 2 uses
  %i.bf = and i64 %i.bb, -1152920405095219201
  %i.bg = or disjoint i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.ba, align 8
  %i.bh = icmp eq i64 %i.be, 0
  br i1 %i.bh, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !49

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6IntAndEEERKT_v.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bk = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.l unwind label %bb.bh

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 368
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !286, !nonnull !100, !align !101
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !299
  %i.bo = trunc i64 %i.bn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !102, !nonnull !100, !align !101
  %i.br = load ptr, ptr %2, align 8, !tbaa !20
  store ptr %i.br, ptr %14, align 8, !tbaa !68
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModel25computeAbstractModelValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(369) %i.bq, ptr noundef nonnull align 8 %14)
          to label %bb.m unwind label %bb.bi

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %13, align 8, !tbaa !20
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit unwind label %bb.bj ; 2 uses

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit: ; preds = %bb.m
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %.noexc89 unwind label %bb.bj

.noexc89:                                         ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv)
          to label %.noexc90 unwind label %bb.bj

.noexc90:                                         ; preds = %.noexc89
  invoke void @__gmpq_canonicalize(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4cvc58internal8RationalC2ERKS1_.exit unwind label %bb.n

bb.n:                                             ; preds = %.noexc90
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #24
  unreachable

_ZN4cvc58internal8RationalC2ERKS1_.exit:          ; preds = %.noexc90
  %i.bz = load ptr, ptr %13, align 8, !tbaa !20   ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = and i64 %i.ca, 1152920405095219200
  %.not.i.i91 = icmp eq i64 %i.cb, 1152920405095219200
  br i1 %.not.i.i91, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92, label %bb.p, !prof !49

bb.p:                                             ; preds = %_ZN4cvc58internal8RationalC2ERKS1_.exit
  %i.cc = add i64 %i.ca, 1152920405095219200
  %i.cd = and i64 %i.cc, 1152920405095219200      ; 2 uses
  %i.ce = and i64 %i.ca, -1152920405095219201
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bz, align 8
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92, !prof !49

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92: ; preds = %_ZN4cvc58internal8RationalC2ERKS1_.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !102, !nonnull !100, !align !101
  %i.ck = load ptr, ptr %2, align 8, !tbaa !20
  store ptr %i.ck, ptr %17, align 8, !tbaa !68
  invoke void @_ZN4cvc58internal6theory5arith2nl7NlModel25computeConcreteModelValueENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %16, ptr noundef nonnull align 8 dereferenceable(369) %i.cj, ptr noundef nonnull align 8 %17)
          to label %bb.s unwind label %bb.bl

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92
  %i.cl = load ptr, ptr %16, align 8, !tbaa !20
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit94 unwind label %bb.bm ; 2 uses

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit94: ; preds = %bb.s
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %.noexc96 unwind label %bb.bm

.noexc96:                                         ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit94
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.co)
          to label %.noexc97 unwind label %bb.bm

.noexc97:                                         ; preds = %.noexc96
  invoke void @__gmpq_canonicalize(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN4cvc58internal8RationalC2ERKS1_.exit100 unwind label %bb.t

bb.t:                                             ; preds = %.noexc97
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.body98 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #24
  unreachable

_ZN4cvc58internal8RationalC2ERKS1_.exit100:       ; preds = %.noexc97
  %i.cs = load ptr, ptr %16, align 8, !tbaa !20   ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.cu = and i64 %i.ct, 1152920405095219200
  %.not.i.i101 = icmp eq i64 %i.cu, 1152920405095219200
  br i1 %.not.i.i101, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102, label %bb.v, !prof !49

bb.v:                                             ; preds = %_ZN4cvc58internal8RationalC2ERKS1_.exit100
  %i.cv = add i64 %i.ct, 1152920405095219200
  %i.cw = and i64 %i.cv, 1152920405095219200      ; 2 uses
  %i.cx = and i64 %i.ct, -1152920405095219201
  %i.cy = or disjoint i64 %i.cw, %i.cx
  store i64 %i.cy, ptr %i.cs, align 8
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102, !prof !49

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102: ; preds = %_ZN4cvc58internal8RationalC2ERKS1_.exit100, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNK4cvc58internal8Rational12getNumeratorEv.exit unwind label %bb.bo

_ZNK4cvc58internal8Rational12getNumeratorEv.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102
  store i32 %i.az, ptr %18, align 8, !tbaa !429
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  invoke void @_ZNK4cvc58internal7Integer9modByPow2Ej(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::Integer") align 8 %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef %i.az)
          to label %_ZN4cvc58internal9BitVectorC2EjRKNS0_7IntegerE.exit unwind label %bb.bp

_ZN4cvc58internal9BitVectorC2EjRKNS0_7IntegerE.exit: ; preds = %_ZNK4cvc58internal8Rational12getNumeratorEv.exit
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZN4cvc58internal9BitVectorC2EjRKNS0_7IntegerE.exit
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit:               ; preds = %_ZN4cvc58internal9BitVectorC2EjRKNS0_7IntegerE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory5arith2nl10IAndSolver12bitwiseLemmaENS0_12NodeTemplateILb1EEE:bb.a
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #24
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit:              ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4cvc58internal8RationalD2Ev.exit125 unwind label %bb.aw

bb.aw:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #24
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit125:           ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fr = load ptr, ptr %10, align 8, !tbaa !20   ; 3 uses
  %i.fs = load i64, ptr %i.fr, align 8            ; 3 uses
  %i.ft = and i64 %i.fs, 1152920405095219200
  %.not.i.i126 = icmp eq i64 %i.ft, 1152920405095219200
  br i1 %.not.i.i126, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit127, label %bb.ax, !prof !49

bb.ax:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit125
  %i.fu = add i64 %i.fs, 1152920405095219200
  %i.fv = and i64 %i.fu, 1152920405095219200      ; 2 uses
  %i.fw = and i64 %i.fs, -1152920405095219201
  %i.fx = or disjoint i64 %i.fv, %i.fw
  store i64 %i.fx, ptr %i.fr, align 8
  %i.fy = icmp eq i64 %i.fv, 0
  br i1 %i.fy, label %bb.ay, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit127, !prof !49

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit127 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit127: ; preds = %_ZN4cvc58internal8RationalD2Ev.exit125, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.gb = load ptr, ptr %9, align 8, !tbaa !20    ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8            ; 3 uses
  %i.gd = and i64 %i.gc, 1152920405095219200
  %.not.i.i128 = icmp eq i64 %i.gd, 1152920405095219200
  br i1 %.not.i.i128, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit129, label %bb.ba, !prof !49

bb.ba:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit127
  %i.ge = add i64 %i.gc, 1152920405095219200
  %i.gf = and i64 %i.ge, 1152920405095219200      ; 2 uses
  %i.gg = and i64 %i.gc, -1152920405095219201
  %i.gh = or disjoint i64 %i.gf, %i.gg
  store i64 %i.gh, ptr %i.gb, align 8
  %i.gi = icmp eq i64 %i.gf, 0
  br i1 %i.gi, label %bb.bb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit129, !prof !49

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit129 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit129: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit127, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  ret void

bb.bd:                                            ; preds = %bb.g, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.be:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.h
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #21
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn = phi { ptr, i32 } [ %i.gn, %bb.bf ], [ %i.gm, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.fn

bb.bh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.bi:                                            ; preds = %bb.l
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %.noexc89, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit, %bb.m
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.bj
  %eh.lpad-body = phi { ptr, i32 } [ %i.gq, %bb.bj ], [ %i.bw, %bb.n ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  br label %bb.bk

bb.bk:                                            ; preds = %.body, %bb.bi
  %.pn53 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.gp, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZN4cvc58internal8RationalD2Ev.exit186

bb.bl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %.noexc96, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_8RationalEEERKT_v.exit94, %bb.s
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body98

.body98:                                          ; preds = %bb.t, %bb.bm
  %eh.lpad-body99 = phi { ptr, i32 } [ %i.gs, %bb.bm ], [ %i.cp, %bb.t ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  br label %bb.bn

bb.bn:                                            ; preds = %.body98, %bb.bl
  %.pn55 = phi { ptr, i32 } [ %eh.lpad-body99, %.body98 ], [ %i.gr, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %_ZN4cvc58internal8RationalD2Ev.exit184

bb.bo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit102
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal7IntegerD2Ev.exit130

bb.bp:                                            ; preds = %_ZNK4cvc58internal8Rational12getNumeratorEv.exit
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit130 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit130:            ; preds = %bb.bp, %bb.bo
  %.pn57 = phi { ptr, i32 } [ %i.gt, %bb.bo ], [ %i.gu, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit182

bb.br:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal7IntegerD2Ev.exit131

bb.bs:                                            ; preds = %_ZNK4cvc58internal8Rational12getNumeratorEv.exit106
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit131 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit131:            ; preds = %bb.bs, %bb.br
  %.pn59 = phi { ptr, i32 } [ %i.gx, %bb.br ], [ %i.gy, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit181

bb.bu:                                            ; preds = %bb.ad, %_ZN4cvc58internal7IntegerD2Ev.exit109
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.bv:                                            ; preds = %.lr.ph, %bb.fg
  %i.hc = phi ptr [ %i.ek, %.lr.ph ], [ %i.pa, %bb.fg ] ; 2 uses
  %i.hd = phi ptr [ %i.ek, %.lr.ph ], [ %i.pb, %bb.fg ] ; 5 uses
  %.0189 = phi i32 [ 0, %.lr.ph ], [ %i.he, %bb.fg ] ; 5 uses
  %i.he = add i32 %.0189, %i.bo                   ; 3 uses
  %i.hf = add i32 %i.he, -1
  %spec.select = call i32 @llvm.umin.i32(i32 %i.hf, i32 %i.el) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  invoke void @_ZNK4cvc58internal9BitVector7extractEjj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %spec.select, i32 noundef %.0189)
          to label %bb.bw unwind label %bb.el

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZNK4cvc58internal9BitVector7extractEjj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef %spec.select, i32 noundef %.0189)
          to label %bb.bx unwind label %bb.em

bb.bx:                                            ; preds = %bb.bw
  %i.hg = invoke noundef zeroext i1 @_ZN4cvc58internalneERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.by unwind label %bb.en

bb.by:                                            ; preds = %bb.bx
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.em)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit132 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #24
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit132:          ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit133 unwind label %bb.ca

bb.ca:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit132
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #24
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit133:          ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit132
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br i1 %i.hg, label %bb.cb, label %bb.fg

bb.cb:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.hl = load ptr, ptr %9, align 8, !tbaa !20    ; 5 uses
  store ptr %i.hl, ptr %27, align 8, !tbaa !20
  %i.hm = load i64, ptr %i.hl, align 8            ; 3 uses
  %i.hn = lshr i64 %i.hm, 40
  %i.ho = trunc nuw nsw i64 %i.hn to i32
  %i.hp = and i32 %i.ho, 1048575                  ; 3 uses
  %i.hq = icmp samesign ult i32 %i.hp, 1048574
  br i1 %i.hq, label %bb.cc, label %bb.cd, !prof !50

bb.cc:                                            ; preds = %bb.cb
  %i.hr = add nuw nsw i32 %i.hp, 1
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = shl nuw nsw i64 %i.hs, 40
  %i.hu = and i64 %i.hm, -1152920405095219201
  %i.hv = or i64 %i.ht, %i.hu
  store i64 %i.hv, ptr %i.hl, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit135

bb.cd:                                            ; preds = %bb.cb
  %i.hw = icmp eq i32 %i.hp, 1048574
  br i1 %i.hw, label %bb.ce, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit135, !prof !49

bb.ce:                                            ; preds = %bb.cd
  %i.hx = or i64 %i.hm, 1152920405095219200
  store i64 %i.hx, ptr %i.hl, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit135 unwind label %bb.eq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit135: ; preds = %bb.cd, %bb.cc, %bb.ce
  %i.hy = load ptr, ptr %10, align 8, !tbaa !20   ; 5 uses
  store ptr %i.hy, ptr %28, align 8, !tbaa !20
  %i.hz = load i64, ptr %i.hy, align 8            ; 3 uses
  %i.ia = lshr i64 %i.hz, 40
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = and i32 %i.ib, 1048575                  ; 3 uses
  %i.id = icmp samesign ult i32 %i.ic, 1048574
  br i1 %i.id, label %bb.cf, label %bb.cg, !prof !50

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit135
  %i.ie = add nuw nsw i32 %i.ic, 1
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 40
  %i.ih = and i64 %i.hz, -1152920405095219201
  %i.ii = or i64 %i.ig, %i.ih
  store i64 %i.ii, ptr %i.hy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit137

bb.cg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit135
  %i.ij = icmp eq i32 %i.ic, 1048574
  br i1 %i.ij, label %bb.ch, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit137, !prof !49

bb.ch:                                            ; preds = %bb.cg
  %i.ik = or i64 %i.hz, 1152920405095219200
  store i64 %i.ik, ptr %i.hy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit137 unwind label %bb.er

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit137: ; preds = %bb.cg, %bb.cf, %bb.ch
  invoke void @_ZN4cvc58internal6theory5arith2nl9IAndUtils21createBitwiseIAndNodeENS0_12NodeTemplateILb1EEES6_jj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %26, ptr noundef nonnull align 8 dereferenceable(80) %i.eo, ptr noundef nonnull align 8 %27, ptr noundef nonnull align 8 %28, i32 noundef %spec.select, i32 noundef %.0189)
          to label %bb.ci unwind label %bb.es

bb.ci:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit137
  %i.il = load ptr, ptr %26, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.hd, %i.il
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.cj, !prof !49

bb.cj:                                            ; preds = %bb.ci
  %i.im = load i64, ptr %i.hd, align 8            ; 3 uses
  %i.in = and i64 %i.im, 1152920405095219200
  %.not.i.i138 = icmp eq i64 %i.in, 1152920405095219200
  br i1 %.not.i.i138, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.ck, !prof !49

bb.ck:                                            ; preds = %bb.cj
  %i.io = add i64 %i.im, 1152920405095219200
  %i.ip = and i64 %i.io, 1152920405095219200      ; 2 uses
  %i.iq = and i64 %i.im, -1152920405095219201
  %i.ir = or disjoint i64 %i.ip, %i.iq
  store i64 %i.ir, ptr %i.hd, align 8
  %i.is = icmp eq i64 %i.ip, 0
  br i1 %i.is, label %bb.cl, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !49

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.et

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.it = load ptr, ptr %26, align 8, !tbaa !20   ; 8 uses
  store ptr %i.it, ptr %23, align 8, !tbaa !20
  %i.iu = load i64, ptr %i.it, align 8            ; 3 uses
  %i.iv = lshr i64 %i.iu, 40
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = and i32 %i.iw, 1048575                  ; 3 uses
  %i.iy = icmp samesign ult i32 %i.ix, 1048574
  br i1 %i.iy, label %bb.cm, label %bb.cn, !prof !50

bb.cm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.iz = add nuw nsw i32 %i.ix, 1
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl nuw nsw i64 %i.ja, 40
  %i.jc = and i64 %i.iu, -1152920405095219201
  %i.jd = or i64 %i.jb, %i.jc
  store i64 %i.jd, ptr %i.it, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.cn:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.je = icmp eq i32 %i.ix, 1048574
  br i1 %i.je, label %bb.co, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !49

bb.co:                                            ; preds = %bb.cn
  %i.jf = or i64 %i.iu, 1152920405095219200
  store i64 %i.jf, ptr %i.it, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.it)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.et

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.cn, %bb.cm, %bb.ci, %bb.co
  %i.jg = phi ptr [ %i.it, %bb.cn ], [ %i.it, %bb.cm ], [ %i.hc, %bb.ci ], [ %i.it, %bb.co ] ; 3 uses
  %i.jh = load ptr, ptr %26, align 8, !tbaa !20   ; 3 uses
  %i.ji = load i64, ptr %i.jh, align 8            ; 3 uses
  %i.jj = and i64 %i.ji, 1152920405095219200
  %.not.i.i141 = icmp eq i64 %i.jj, 1152920405095219200
  br i1 %.not.i.i141, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit143, label %bb.cp, !prof !49

bb.cp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.jk = add i64 %i.ji, 1152920405095219200
  %i.jl = and i64 %i.jk, 1152920405095219200      ; 2 uses
  %i.jm = and i64 %i.ji, -1152920405095219201
  %i.jn = or disjoint i64 %i.jl, %i.jm
  store i64 %i.jn, ptr %i.jh, align 8
  %i.jo = icmp eq i64 %i.jl, 0
  br i1 %i.jo, label %bb.cq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit143, !prof !49

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit143 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit143: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.cp, %bb.cq
  %i.jr = load ptr, ptr %28, align 8, !tbaa !20   ; 3 uses
  %i.js = load i64, ptr %i.jr, align 8            ; 3 uses
  %i.jt = and i64 %i.js, 1152920405095219200
  %.not.i.i144 = icmp eq i64 %i.jt, 1152920405095219200
  br i1 %.not.i.i144, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit146, label %bb.cs, !prof !49

bb.cs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit143
  %i.ju = add i64 %i.js, 1152920405095219200
  %i.jv = and i64 %i.ju, 1152920405095219200      ; 2 uses
  %i.jw = and i64 %i.js, -1152920405095219201
  %i.jx = or disjoint i64 %i.jv, %i.jw
  store i64 %i.jx, ptr %i.jr, align 8
  %i.jy = icmp eq i64 %i.jv, 0
  br i1 %i.jy, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit146, !prof !49

end_hunk_1
begin_hunk_2_@_ZNSt5dequeIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !53   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !304
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !305
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !302
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !304
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !305
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !83     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #26
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !20     ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !20
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = lshr i64 %i.s, 40
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 1048575                    ; 3 uses
  %i.w = icmp samesign ult i32 %i.v, 1048574
  br i1 %i.w, label %bb.c, label %bb.d, !prof !50

bb.c:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 40
  %i.aa = and i64 %i.s, -1152920405095219201
  %i.ab = or i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.r, align 8
  br label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp eq i32 %i.v, 1048574
  br i1 %i.ac, label %bb.e, label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit, !prof !49

bb.e:                                             ; preds = %bb.d
  %i.ad = or i64 %i.s, 1152920405095219200
  store i64 %i.ad, ptr %i.r, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit unwind label %bb.k

_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.j

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.af)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 unwind label %bb.k

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 ] ; 2 uses
  %i.ah = load ptr, ptr %.05.i.i, align 8, !tbaa !20 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = and i64 %i.ai, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.f, !prof !49

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i64 %i.ai, 1152920405095219200
  %i.al = and i64 %i.ak, 1152920405095219200      ; 2 uses
  %i.am = and i64 %i.ai, -1152920405095219201
  %i.an = or disjoint i64 %i.al, %i.am
  store i64 %i.an, ptr %i.ah, align 8
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %bb.g, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !49

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.av) #23
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !83
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !63
  ret void

bb.j:                                             ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #21 ; 0 uses
  tail call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #21
  br label %bb.m

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %bb.e
  %.0.ph = phi ptr [ %i.p, %bb.e ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.ph)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bb

bb.o:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !58}
!1 = distinct !{!1, !58}
!2 = distinct !{!2, !58}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTSN4cvc58internal6theory5arith16InferenceManagerE", !13, i64 0}
!15 = !{!"p1 _ZTSN4cvc58internal6theory5arith2nl7NlModelE", !13, i64 0}
!16 = !{!"branch_weights", i32 1, i32 1048575}
!17 = !{!"p1 _ZTSN4cvc58internal4expr9NodeValueE", !13, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSN4cvc58internal12NodeTemplateILb1EEE", !17, i64 0}
!20 = !{!19, !17, i64 0}
!21 = !{!"any p2 pointer", !13, i64 0}
!22 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!25 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !24, i64 0}
!26 = !{!"float", !7, i64 0}
!27 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !26, i64 0, !23, i64 8}
!28 = !{!"_ZTSSt10_HashtableIKN4cvc58internal12NodeTemplateILb1EEESt4pairIS4_KbESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !22, i64 0, !23, i64 8, !25, i64 16, !23, i64 24, !27, i64 32, !24, i64 48}
!29 = !{!28, !22, i64 0}
!30 = !{!28, !23, i64 8}
!31 = !{!"p1 _ZTSN4cvc57context5ScopeE", !13, i64 0}
!32 = !{!"p1 _ZTSN4cvc57context10ContextObjE", !13, i64 0}
!33 = !{!"p2 _ZTSN4cvc57context10ContextObjE", !21, i64 0}
!34 = !{!"_ZTSN4cvc57context10ContextObjE", !31, i64 8, !32, i64 16, !32, i64 24, !33, i64 32}
!35 = !{!"p1 _ZTSN4cvc57context13InsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE", !13, i64 0}
!36 = !{!"_ZTSN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE", !34, i64 0, !35, i64 40, !23, i64 48}
!37 = !{!36, !35, i64 40}
!38 = !{!36, !23, i64 48}
!39 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!40 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!41 = !{!"_ZTSSt18_Rb_tree_node_base", !39, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!42 = !{!"_ZTSSt15_Rb_tree_header", !41, i64 0, !23, i64 32}
!43 = !{!42, !40, i64 8}
!44 = !{!42, !40, i64 16}
!45 = !{!42, !40, i64 24}
!46 = !{!42, !23, i64 32}
!47 = !{!"bool", !7, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!51 = !{ptr @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev}
!52 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb1EEE", !13, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTSN4cvc58internal6IntAndE", !8, i64 0}
!55 = !{!54, !8, i64 0}
!56 = !{!8, !8, i64 0}
!57 = !{!40, !40, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"p1 int", !13, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!62 = !{!61, !52, i64 8}
!63 = !{!61, !52, i64 16}
!64 = !{!"p1 _ZTSN4cvc58internal11NodeManagerE", !13, i64 0}
!65 = !{!"_ZTSN4cvc58internal4expr9NodeValueE", !23, i64 0, !8, i64 5, !8, i64 8, !8, i64 12, !64, i64 16, !7, i64 24}
!66 = !{!65, !64, i64 16}
!67 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !17, i64 0}
!68 = !{!67, !17, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_Vector_implE", !61, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE", !70, i64 0}
!72 = !{!"_ZTSSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS5_EEE", !8, i64 0, !71, i64 8}
!73 = !{!72, !8, i64 0}
!74 = !{!28, !23, i64 24}
!75 = !{!25, !24, i64 0}
!76 = !{!24, !24, i64 0}
!77 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !23, i64 0}
!78 = !{!77, !23, i64 0}
!79 = !{!"p2 _ZTSN4cvc58internal12NodeTemplateILb1EEE", !21, i64 0}
!80 = !{!"_ZTSSt15_Deque_iteratorIN4cvc58internal12NodeTemplateILb1EEERS3_PS3_E", !52, i64 0, !52, i64 8, !52, i64 16, !79, i64 24}
!81 = !{!"_ZTSNSt11_Deque_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE16_Deque_impl_dataE", !79, i64 0, !23, i64 8, !80, i64 16, !80, i64 48}
!82 = !{!81, !52, i64 48}
!83 = !{!61, !52, i64 0}
!84 = !{!"p1 _ZTSN4cvc58internal3EnvE", !13, i64 0}
!85 = !{!"_ZTSN4cvc58internal6EnvObjE", !84, i64 8}
!86 = !{!"_ZTSSt4lessImE"}
!87 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !86, i64 0}
!88 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt3mapIS0_IllEmSt4lessIS3_ESaIS0_IKS3_mEEEESt10_Select1stISA_ES4_ImESaISA_EE13_Rb_tree_implISD_Lb1EEE", !87, i64 0, !42, i64 8}
!89 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmSt3mapIS0_IllEmSt4lessIS3_ESaIS0_IKS3_mEEEESt10_Select1stISA_ES4_ImESaISA_EE", !88, i64 0}
!90 = !{!"_ZTSSt3mapImS_ISt4pairIllEmSt4lessIS1_ESaIS0_IKS1_mEEES2_ImESaIS0_IKmS7_EEE", !89, i64 0}
!91 = !{!"_ZTSN4cvc58internal6theory5arith2nl9IAndUtilsE", !90, i64 0, !64, i64 48, !19, i64 56, !19, i64 64, !19, i64 72}
!92 = !{!"_ZTSN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EEE", !36, i64 0}
!93 = !{!"_ZTSSt4lessIjE"}
!94 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !93, i64 0}
!95 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !94, i64 0, !42, i64 8}
!96 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE", !95, i64 0}
!97 = !{!"_ZTSSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE", !96, i64 0}
!98 = !{!"_ZTSN4cvc58internal6theory5arith2nl10IAndSolverE", !85, i64 0, !14, i64 16, !15, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !91, i64 72, !92, i64 152, !97, i64 208}
!99 = !{!98, !14, i64 16}
!100 = !{}
!101 = !{i64 8}
!102 = !{!98, !15, i64 24}
!103 = !{!"p1 _ZTSN4cvc58internal7options11HolderARITHE", !13, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options11HolderARITHELb0EE", !103, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options11HolderARITHESt14default_deleteIS3_EEE", !104, i64 0}
!106 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options11HolderARITHESt14default_deleteIS3_EEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options11HolderARITHESt14default_deleteIS3_EE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options11HolderARITHESt14default_deleteIS3_ELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options11HolderARITHESt14default_deleteIS3_EE", !108, i64 0}
!110 = !{!"p1 _ZTSN4cvc58internal7options12HolderARRAYSE", !13, i64 0}
!111 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options12HolderARRAYSELb0EE", !110, i64 0}
!112 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options12HolderARRAYSESt14default_deleteIS3_EEE", !111, i64 0}
!113 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options12HolderARRAYSESt14default_deleteIS3_EEE", !112, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options12HolderARRAYSESt14default_deleteIS3_EE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options12HolderARRAYSESt14default_deleteIS3_ELb1ELb1EE", !114, i64 0}
!116 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options12HolderARRAYSESt14default_deleteIS3_EE", !115, i64 0}
!117 = !{!"p1 _ZTSN4cvc58internal7options10HolderBAGSE", !13, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options10HolderBAGSELb0EE", !117, i64 0}
!119 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options10HolderBAGSESt14default_deleteIS3_EEE", !118, i64 0}
!120 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options10HolderBAGSESt14default_deleteIS3_EEE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options10HolderBAGSESt14default_deleteIS3_EE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options10HolderBAGSESt14default_deleteIS3_ELb1ELb1EE", !121, i64 0}
!123 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options10HolderBAGSESt14default_deleteIS3_EE", !122, i64 0}
!124 = !{!"p1 _ZTSN4cvc58internal7options10HolderBASEE", !13, i64 0}
!125 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options10HolderBASEELb0EE", !124, i64 0}
!126 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options10HolderBASEESt14default_deleteIS3_EEE", !125, i64 0}
!127 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options10HolderBASEESt14default_deleteIS3_EEE", !126, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options10HolderBASEESt14default_deleteIS3_EE", !127, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options10HolderBASEESt14default_deleteIS3_ELb1ELb1EE", !128, i64 0}
!130 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options10HolderBASEESt14default_deleteIS3_EE", !129, i64 0}
!131 = !{!"p1 _ZTSN4cvc58internal7options14HolderBOOLEANSE", !13, i64 0}
!132 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options14HolderBOOLEANSELb0EE", !131, i64 0}
!133 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options14HolderBOOLEANSESt14default_deleteIS3_EEE", !132, i64 0}
!134 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options14HolderBOOLEANSESt14default_deleteIS3_EEE", !133, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options14HolderBOOLEANSESt14default_deleteIS3_EE", !134, i64 0}
!136 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options14HolderBOOLEANSESt14default_deleteIS3_ELb1ELb1EE", !135, i64 0}
!137 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options14HolderBOOLEANSESt14default_deleteIS3_EE", !136, i64 0}
!138 = !{!"p1 _ZTSN4cvc58internal7options13HolderBUILTINE", !13, i64 0}
!139 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options13HolderBUILTINELb0EE", !138, i64 0}
!140 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options13HolderBUILTINESt14default_deleteIS3_EEE", !139, i64 0}
!141 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options13HolderBUILTINESt14default_deleteIS3_EEE", !140, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options13HolderBUILTINESt14default_deleteIS3_EE", !141, i64 0}
!143 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options13HolderBUILTINESt14default_deleteIS3_ELb1ELb1EE", !142, i64 0}
!144 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options13HolderBUILTINESt14default_deleteIS3_EE", !143, i64 0}
!145 = !{!"p1 _ZTSN4cvc58internal7options8HolderBVE", !13, i64 0}
!146 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options8HolderBVELb0EE", !145, i64 0}
!147 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options8HolderBVESt14default_deleteIS3_EEE", !146, i64 0}
!148 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options8HolderBVESt14default_deleteIS3_EEE", !147, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options8HolderBVESt14default_deleteIS3_EE", !148, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options8HolderBVESt14default_deleteIS3_ELb1ELb1EE", !149, i64 0}
!151 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options8HolderBVESt14default_deleteIS3_EE", !150, i64 0}
!152 = !{!"p1 _ZTSN4cvc58internal7options15HolderDATATYPESE", !13, i64 0}
!153 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options15HolderDATATYPESELb0EE", !152, i64 0}
!154 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options15HolderDATATYPESESt14default_deleteIS3_EEE", !153, i64 0}
!155 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options15HolderDATATYPESESt14default_deleteIS3_EEE", !154, i64 0}
!156 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options15HolderDATATYPESESt14default_deleteIS3_EE", !155, i64 0}
!157 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options15HolderDATATYPESESt14default_deleteIS3_ELb1ELb1EE", !156, i64 0}
!158 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options15HolderDATATYPESESt14default_deleteIS3_EE", !157, i64 0}
!159 = !{!"p1 _ZTSN4cvc58internal7options14HolderDECISIONE", !13, i64 0}
!160 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options14HolderDECISIONELb0EE", !159, i64 0}
!161 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options14HolderDECISIONESt14default_deleteIS3_EEE", !160, i64 0}
!162 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options14HolderDECISIONESt14default_deleteIS3_EEE", !161, i64 0}
!163 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options14HolderDECISIONESt14default_deleteIS3_EE", !162, i64 0}
!164 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options14HolderDECISIONESt14default_deleteIS3_ELb1ELb1EE", !163, i64 0}
!165 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options14HolderDECISIONESt14default_deleteIS3_EE", !164, i64 0}
!166 = !{!"p1 _ZTSN4cvc58internal7options10HolderEXPRE", !13, i64 0}
!167 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options10HolderEXPRELb0EE", !166, i64 0}
end_hunk_2
