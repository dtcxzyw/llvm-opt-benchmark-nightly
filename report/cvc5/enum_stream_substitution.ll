Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/enum_stream_substitution?download=true
inline.NumInlined: 2385
inline.NumDeleted: 867
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateD2Ev:bb.a

bb.f:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !104
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution7getNextEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::NodeTemplate") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(452) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.critedge249:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.std::tuple.507", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.500", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple.497", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.500", align 1    ; 3 uses
  %7 = alloca %"class.std::tuple.497", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.500", align 1    ; 3 uses
  %9 = alloca %"class.std::unordered_map", align 8 ; 13 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.392", align 8  ; 16 uses
  %13 = alloca %"class.std::vector.392", align 8  ; 16 uses
  %14 = alloca %"class.std::vector.392", align 8  ; 13 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %18 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 6
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.a, label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit, !prof !68

bb.a:                                             ; preds = %.critedge249
  %i.n = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i297 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i297, label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  store i64 1152920405095219200, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.o, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !69
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit

common.resume:                                    ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit848, %bb.ag, %bb.o, %bb.ac, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.eb, %bb.ac ], [ %i.er, %bb.ag ], [ %i.bb, %bb.o ], [ %.pn233.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit848 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit: ; preds = %.critedge249, %bb.a, %bb.c
  %i.r = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !69
  %i.s = icmp eq ptr %i.k, %i.r
  br i1 %i.s, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 5 uses
  %.pre = load i32, ptr %i.t, align 8, !tbaa !328 ; 2 uses
  %i.u = icmp ult i32 %.pre, %i.i
  br i1 %i.u, label %.lr.ph1093.preheader, label %.critedge

.lr.ph1093.preheader:                             ; preds = %.preheader
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !329  ; 2 uses
  br label %.lr.ph1093

bb.e:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @_ZN4cvc58internal6theory11quantifiers21EnumStreamPermutation7getNextEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %10, ptr noundef nonnull align 8 dereferenceable(220) %i.w)
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !70   ; 4 uses
  %i.y = load ptr, ptr %10, align 8, !tbaa !70    ; 9 uses
  %.not.i298 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i298, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.f, !prof !79

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.x, align 8              ; 3 uses
  %i.aa = and i64 %i.z, 1152920405095219200
  %.not.i.i299 = icmp eq i64 %i.aa, 1152920405095219200
  br i1 %.not.i.i299, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.g, !prof !79

bb.g:                                             ; preds = %bb.f
  %i.ab = add i64 %i.z, 1152920405095219200
  %i.ac = and i64 %i.ab, 1152920405095219200      ; 2 uses
  %i.ad = and i64 %i.z, -1152920405095219201
  %i.ae = or disjoint i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.x, align 8
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %bb.h, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !79

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.o

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.y, ptr %i.j, align 8, !tbaa !70
  %i.ag = load i64, ptr %i.y, align 8             ; 3 uses
  %i.ah = lshr i64 %i.ag, 40
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1048575                  ; 3 uses
  %i.ak = icmp samesign ult i32 %i.aj, 1048574
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !80

bb.i:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.al = add nuw nsw i32 %i.aj, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 40
  %i.ao = and i64 %i.ag, -1152920405095219201
  %i.ap = or i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.y, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.j:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.aq = icmp eq i32 %i.aj, 1048574
  br i1 %i.aq, label %bb.k, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !79

bb.k:                                             ; preds = %bb.j
  %i.ar = or i64 %i.ag, 1152920405095219200
  store i64 %i.ar, ptr %i.y, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.o

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.j, %bb.i, %bb.e, %bb.k
  %i.as = load i64, ptr %i.y, align 8             ; 3 uses
  %i.at = and i64 %i.as, 1152920405095219200
  %.not.i.i302 = icmp eq i64 %i.at, 1152920405095219200
  br i1 %.not.i.i302, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit304, label %bb.l, !prof !79

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.au = add i64 %i.as, 1152920405095219200
  %i.av = and i64 %i.au, 1152920405095219200      ; 2 uses
  %i.aw = and i64 %i.as, -1152920405095219201
  %i.ax = or disjoint i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.y, align 8
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit304, !prof !79

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit304 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit304: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.pre957 = load ptr, ptr %i.a, align 8, !tbaa !329
  br label %.critedge257

bb.o:                                             ; preds = %bb.k, %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

.lr.ph1093:                                       ; preds = %.lr.ph1093.preheader, %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit
  %i.bc = phi i32 [ %i.co, %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit ], [ %.pre, %.lr.ph1093.preheader ] ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.bd ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !335 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8            ; 7 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bl = load i32, ptr %i.bk, align 4
  %invariant.op.i = sub i32 %i.bl, %i.bg
  %i.bm = zext i32 %i.bg to i64
  %indvars.iv.next.i1086 = add nsw i64 %i.bm, -1  ; 2 uses
  %indvars.i1087 = trunc i64 %indvars.iv.next.i1086 to i32 ; 2 uses
  %i.bn = icmp sgt i32 %indvars.i1087, -1
  br i1 %i.bn, label %.lr.ph1092, label %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState18getNextCombinationEv.exit

bb.p:                                             ; preds = %.lr.ph1092
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i1089, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.bo = icmp sgt i32 %indvars.i, -1
  br i1 %i.bo, label %.lr.ph1092, label %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState18getNextCombinationEv.exit, !llvm.loop !10

.lr.ph1092:                                       ; preds = %.lr.ph1093, %bb.p
  %indvars.i1090 = phi i32 [ %indvars.i, %bb.p ], [ %indvars.i1087, %.lr.ph1093 ] ; 2 uses
  %indvars.iv.next.i1089 = phi i64 [ %indvars.iv.next.i, %bb.p ], [ %indvars.iv.next.i1086, %.lr.ph1093 ] ; 2 uses
  %i.bp = and i64 %indvars.iv.next.i1089, 2147483647 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !96 ; 2 uses
  %.reass.i = add i32 %invariant.op.i, %indvars.i1090
  %i.bs = icmp ult i32 %i.br, %.reass.i
  br i1 %i.bs, label %.preheader.i, label %bb.p, !llvm.loop !10

.preheader.i:                                     ; preds = %.lr.ph1092
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %21 = add i32 %i.bg, -1
  %.not16.i = icmp ult i32 %21, %indvars.i1090
  br i1 %.not16.i, label %.critedge257.loopexit901.critedge, label %.lr.ph.i306

.lr.ph.i306:                                      ; preds = %.preheader.i, %.lr.ph.i306
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph.i306 ], [ %i.bp, %.preheader.i ] ; 3 uses
  %.0.in18.i = phi i32 [ %.0.i, %.lr.ph.i306 ], [ %i.br, %.preheader.i ]
  %.0.i = add i32 %.0.in18.i, 1                   ; 2 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv27.i
  store i32 %.0.i, ptr %i.bu, align 4, !tbaa !96
  %i.bv = load i32, ptr %i.bt, align 8, !tbaa !335
  %i.bw = add i32 %i.bv, -1
  %i.bx = zext i32 %i.bw to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv27.i, %i.bx
  br i1 %.not.not.i, label %.lr.ph.i306, label %.critedge257.loopexit901.critedge, !llvm.loop !11

_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState18getNextCombinationEv.exit: ; preds = %bb.p, %.lr.ph1093
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !98 ; 3 uses
  %.not5.i.i324 = icmp eq ptr %i.bi, %i.bz
  br i1 %.not5.i.i324, label %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState18getNextCombinationEv.exit
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = add i64 %i.ca, -4
  %i.cc = sub i64 %i.cb, %i.bj                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cc, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader1120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ce, 9223372036854775800     ; 4 uses
  %i.cf = trunc i64 %n.vec to i32
  %i.cg = shl i64 %n.vec, 2
  %i.ch = getelementptr i8, ptr %i.bi, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !96
  store <4 x i32> %step.add, ptr %i.cj, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit.loopexit, label %.lr.ph.i.i.preheader1120

.lr.ph.i.i.preheader1120:                         ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.07.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.cf, %middle.block ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader1120, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.cl, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader1120 ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i.i.preheader1120 ] ; 2 uses
  store i32 %.07.i.i, ptr %.sroa.02.06.i.i, align 4, !tbaa !96
  %i.cl = add nuw nsw i32 %.07.i.i, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i.i325 = icmp eq ptr %i.cm, %i.bz
  br i1 %.not.i.i325, label %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !422

_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre956 = load i32, ptr %i.t, align 8, !tbaa !328
  br label %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit

_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit: ; preds = %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit.loopexit, %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState18getNextCombinationEv.exit
  %i.cn = phi i32 [ %.pre956, %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit.loopexit ], [ %i.bc, %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState18getNextCombinationEv.exit ]
  %i.co = add i32 %i.cn, 1                        ; 3 uses
  store i32 %i.co, ptr %i.t, align 8, !tbaa !328
  %i.cp = icmp ult i32 %i.co, %i.i
  br i1 %i.cp, label %.lr.ph1093, label %.critedge

.critedge:                                        ; preds = %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @_ZN4cvc58internal6theory11quantifiers21EnumStreamPermutation7getNextEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %11, ptr noundef nonnull align 8 dereferenceable(220) %i.cq)
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !70  ; 4 uses
  %i.cs = load ptr, ptr %11, align 8, !tbaa !70   ; 9 uses
  %.not.i334 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i334, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit339, label %bb.q, !prof !79

bb.q:                                             ; preds = %.critedge
  %i.ct = load i64, ptr %i.cr, align 8            ; 3 uses
  %i.cu = and i64 %i.ct, 1152920405095219200
  %.not.i.i335 = icmp eq i64 %i.cu, 1152920405095219200
  br i1 %.not.i.i335, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i336, label %bb.r, !prof !79

bb.r:                                             ; preds = %bb.q
  %i.cv = add i64 %i.ct, 1152920405095219200
  %i.cw = and i64 %i.cv, 1152920405095219200      ; 2 uses
  %i.cx = and i64 %i.ct, -1152920405095219201
  %i.cy = or disjoint i64 %i.cw, %i.cx
  store i64 %i.cy, ptr %i.cr, align 8
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %bb.s, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i336, !prof !79

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i336 unwind label %bb.ag

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i336: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %i.cs, ptr %i.j, align 8, !tbaa !70
  %i.da = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.db = lshr i64 %i.da, 40
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = and i32 %i.dc, 1048575                  ; 3 uses
  %i.de = icmp samesign ult i32 %i.dd, 1048574
  br i1 %i.de, label %bb.t, label %bb.u, !prof !80

bb.t:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i336
  %i.df = add nuw nsw i32 %i.dd, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 40
  %i.di = and i64 %i.da, -1152920405095219201
  %i.dj = or i64 %i.dh, %i.di
  store i64 %i.dj, ptr %i.cs, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit339

bb.u:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i336
  %i.dk = icmp eq i32 %i.dd, 1048574
  br i1 %i.dk, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit339, !prof !79

bb.v:                                             ; preds = %bb.u
  %i.dl = or i64 %i.da, 1152920405095219200
  store i64 %i.dl, ptr %i.cs, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit339 unwind label %bb.ag

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit339: ; preds = %bb.u, %bb.t, %.critedge, %bb.v
  %i.dm = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.dn = and i64 %i.dm, 1152920405095219200
  %.not.i.i340 = icmp eq i64 %i.dn, 1152920405095219200
  br i1 %.not.i.i340, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342, label %bb.w, !prof !79

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit339
  %i.do = add i64 %i.dm, 1152920405095219200
  %i.dp = and i64 %i.do, 1152920405095219200      ; 2 uses
  %i.dq = and i64 %i.dm, -1152920405095219201
  %i.dr = or disjoint i64 %i.dp, %i.dq
  store i64 %i.dr, ptr %i.cs, align 8
  %i.ds = icmp eq i64 %i.dp, 0
  br i1 %i.ds, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342, !prof !79

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  tail call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit339, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.dw = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.z, label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit344, !prof !68

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342
  %i.dy = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i343 = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i343, label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit344, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  store i64 1152920405095219200, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i8 0, i64 16, i1 false)
  store ptr %i.dz, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !69
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit344

bb.ac:                                            ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit344: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit342, %bb.z, %bb.ab
  %i.ec = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !69
  %i.ed = icmp eq ptr %i.dv, %i.ec
  br i1 %i.ed, label %.critedge253, label %bb.ah

.critedge253:                                     ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.ee = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !70, !noalias !434 ; 5 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !70, !alias.scope !434
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !434 ; 3 uses
  %i.eg = lshr i64 %i.ef, 40
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 1048575                  ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution7getNextEv:.critedge249
bb.eh:                                            ; preds = %.lr.ph.i.i.i817
  %i.wl = add i64 %i.wj, 1152920405095219200
  %i.wm = and i64 %i.wl, 1152920405095219200      ; 2 uses
  %i.wn = and i64 %i.wj, -1152920405095219201
  %i.wo = or disjoint i64 %i.wm, %i.wn
  store i64 %i.wo, ptr %i.wi, align 8
  %i.wp = icmp eq i64 %i.wm, 0
  br i1 %i.wp, label %bb.ei, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i820, !prof !79

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wi)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i820 unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.wq = landingpad { ptr, i32 }
          catch ptr null
  %i.wr = extractvalue { ptr, i32 } %i.wq, 0
  call void @__clang_call_terminate(ptr %i.wr) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i820: ; preds = %bb.ei, %bb.eh, %.lr.ph.i.i.i817
  %i.ws = getelementptr inbounds nuw i8, ptr %.05.i.i.i818, i64 8 ; 2 uses
  %.not.i.i.i821 = icmp eq ptr %i.ws, %i.wh
  br i1 %.not.i.i.i821, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i822, label %.lr.ph.i.i.i817, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i822: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i820
  %.pr.i823 = load ptr, ptr %12, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i824

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i824: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i822, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit815
  %i.wt = phi ptr [ %.pr.i823, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i822 ], [ %i.wg, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit815 ] ; 3 uses
  %.not.i.i1.i825 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i1.i825, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit826, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i824
  %i.wu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !101
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wt to i64
  %i.wy = sub i64 %i.ww, %i.wx
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.wy) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit826

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit826: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i824, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.el:                                            ; preds = %bb.du, %bb.dq
  %.pn227 = phi { ptr, i32 } [ %.pn200.pn, %bb.dq ], [ %i.ty, %bb.du ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #25
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.dl, %bb.di
  %.pn227.pn = phi { ptr, i32 } [ %.pn227, %bb.el ], [ %.pn198, %bb.dl ], [ %i.to, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #25
  br label %.body399

.body399:                                         ; preds = %bb.ak, %bb.em
  %.pn227.pn.pn = phi { ptr, i32 } [ %.pn227.pn, %bb.em ], [ %i.he, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit587, %.body399
  %.pn233.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn227.pn.pn, %.body399 ], [ %.pn233.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit587 ]
  %i.wz = load ptr, ptr %13, align 8, !tbaa !114  ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i827 = icmp eq ptr %i.wz, %i.xb
  br i1 %.not4.i.i.i827, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i835, label %.lr.ph.i.i.i828

.lr.ph.i.i.i828:                                  ; preds = %bb.en, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i831
  %.05.i.i.i829 = phi ptr [ %i.xm, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i831 ], [ %i.wz, %bb.en ] ; 2 uses
  %i.xc = load ptr, ptr %.05.i.i.i829, align 8, !tbaa !70 ; 3 uses
  %i.xd = load i64, ptr %i.xc, align 8            ; 3 uses
  %i.xe = and i64 %i.xd, 1152920405095219200
  %.not.i.i.i.i.i.i830 = icmp eq i64 %i.xe, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i830, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i831, label %bb.eo, !prof !79

bb.eo:                                            ; preds = %.lr.ph.i.i.i828
  %i.xf = add i64 %i.xd, 1152920405095219200
  %i.xg = and i64 %i.xf, 1152920405095219200      ; 2 uses
  %i.xh = and i64 %i.xd, -1152920405095219201
  %i.xi = or disjoint i64 %i.xg, %i.xh
  store i64 %i.xi, ptr %i.xc, align 8
  %i.xj = icmp eq i64 %i.xg, 0
  br i1 %i.xj, label %bb.ep, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i831, !prof !79

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xc)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i831 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.xk = landingpad { ptr, i32 }
          catch ptr null
  %i.xl = extractvalue { ptr, i32 } %i.xk, 0
  call void @__clang_call_terminate(ptr %i.xl) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i831: ; preds = %bb.ep, %bb.eo, %.lr.ph.i.i.i828
  %i.xm = getelementptr inbounds nuw i8, ptr %.05.i.i.i829, i64 8 ; 2 uses
  %.not.i.i.i832 = icmp eq ptr %i.xm, %i.xb
  br i1 %.not.i.i.i832, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i833, label %.lr.ph.i.i.i828, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i833: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i831
  %.pr.i834 = load ptr, ptr %13, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i835

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i835: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i833, %bb.en
  %i.xn = phi ptr [ %.pr.i834, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i833 ], [ %i.wz, %bb.en ] ; 3 uses
  %.not.i.i1.i836 = icmp eq ptr %i.xn, null
  br i1 %.not.i.i1.i836, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit837, label %bb.er

bb.er:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i835
  %i.xo = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !101
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = ptrtoint ptr %i.xn to i64
  %i.xs = sub i64 %i.xq, %i.xr
  call void @_ZdlPvm(ptr noundef nonnull %i.xn, i64 noundef %i.xs) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit837

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit837: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i835, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.xt = load ptr, ptr %12, align 8, !tbaa !114  ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i838 = icmp eq ptr %i.xt, %i.xv
  br i1 %.not4.i.i.i838, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i846, label %.lr.ph.i.i.i839

.lr.ph.i.i.i839:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit837, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i842
  %.05.i.i.i840 = phi ptr [ %i.yg, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i842 ], [ %i.xt, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit837 ] ; 2 uses
  %i.xw = load ptr, ptr %.05.i.i.i840, align 8, !tbaa !70 ; 3 uses
  %i.xx = load i64, ptr %i.xw, align 8            ; 3 uses
  %i.xy = and i64 %i.xx, 1152920405095219200
  %.not.i.i.i.i.i.i841 = icmp eq i64 %i.xy, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i841, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i842, label %bb.es, !prof !79

bb.es:                                            ; preds = %.lr.ph.i.i.i839
  %i.xz = add i64 %i.xx, 1152920405095219200
  %i.ya = and i64 %i.xz, 1152920405095219200      ; 2 uses
  %i.yb = and i64 %i.xx, -1152920405095219201
  %i.yc = or disjoint i64 %i.ya, %i.yb
  store i64 %i.yc, ptr %i.xw, align 8
  %i.yd = icmp eq i64 %i.ya, 0
  br i1 %i.yd, label %bb.et, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i842, !prof !79

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xw)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i842 unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ye = landingpad { ptr, i32 }
          catch ptr null
  %i.yf = extractvalue { ptr, i32 } %i.ye, 0
  call void @__clang_call_terminate(ptr %i.yf) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i842: ; preds = %bb.et, %bb.es, %.lr.ph.i.i.i839
  %i.yg = getelementptr inbounds nuw i8, ptr %.05.i.i.i840, i64 8 ; 2 uses
  %.not.i.i.i843 = icmp eq ptr %i.yg, %i.xv
  br i1 %.not.i.i.i843, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i844, label %.lr.ph.i.i.i839, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i844: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i842
  %.pr.i845 = load ptr, ptr %12, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i846

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i846: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i844, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit837
  %i.yh = phi ptr [ %.pr.i845, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i844 ], [ %i.xt, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit837 ] ; 3 uses
  %.not.i.i1.i847 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i1.i847, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit848, label %bb.ev

bb.ev:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i846
  %i.yi = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !101
  %i.yk = ptrtoint ptr %i.yj to i64
  %i.yl = ptrtoint ptr %i.yh to i64
  %i.ym = sub i64 %i.yk, %i.yl
  call void @_ZdlPvm(ptr noundef nonnull %i.yh, i64 noundef %i.ym) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit848

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit848: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i846, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %common.resume

_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit826
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState18getNextCombinationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !335  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %invariant.op = sub i32 %i.f, %i.b
  %i.g = zext i32 %i.b to i64
  %indvars.iv.next42 = add nsw i64 %i.g, -1       ; 2 uses
  %indvars43 = trunc i64 %indvars.iv.next42 to i32 ; 2 uses
  %i.h = icmp sgt i32 %indvars43, -1
  br i1 %i.h, label %.lr.ph47, label %.loopexit

bb.b:                                             ; preds = %.lr.ph47
  %indvars.iv.next = add nsw i64 %indvars.iv.next45, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.i = icmp sgt i32 %indvars, -1
  br i1 %i.i, label %.lr.ph47, label %.loopexit, !llvm.loop !10

.lr.ph47:                                         ; preds = %bb.a, %bb.b
  %indvars46 = phi i32 [ %indvars, %bb.b ], [ %indvars43, %bb.a ] ; 2 uses
  %indvars.iv.next45 = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.next42, %bb.a ] ; 2 uses
  %i.j = and i64 %indvars.iv.next45, 2147483647   ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !96   ; 2 uses
  %.reass = add i32 %invariant.op, %indvars46
  %i.m = icmp ult i32 %i.l, %.reass
  br i1 %i.m, label %.preheader, label %bb.b, !llvm.loop !10

.preheader:                                       ; preds = %.lr.ph47
  %1 = add i32 %i.b, -1
  %.not16 = icmp ult i32 %1, %indvars46
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.lr.ph ], [ %i.j, %.preheader ] ; 3 uses
  %.0.in18 = phi i32 [ %.0, %.lr.ph ], [ %i.l, %.preheader ]
  %.0 = add i32 %.0.in18, 1                       ; 2 uses
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv27
  store i32 %.0, ptr %i.n, align 4, !tbaa !96
  %i.o = load i32, ptr %i.a, align 8, !tbaa !335
  %i.p = add i32 %i.o, -1
  %i.q = zext i32 %i.p to i64
  %.not.not = icmp samesign ult i64 %indvars.iv27, %i.q
  br i1 %.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %bb.a, %.preheader
  %i.r = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ true, %.lr.ph ], [ false, %bb.b ]
  ret i1 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState5resetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 3 uses
  %.not5.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = ptrtoaddr ptr %i.b to i64
  %i.g = add i64 %i.e, -4
  %i.h = sub i64 %i.g, %i.f                       ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.j, 9223372036854775800      ; 4 uses
  %i.k = trunc i64 %n.vec to i32
  %i.l = shl i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %i.b, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.n = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !96
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader4

.lr.ph.i.preheader4:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader4, %.lr.ph.i
  %.07.i = phi i32 [ %i.q, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader4 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader4 ] ; 2 uses
  store i32 %.07.i, ptr %.sroa.02.06.i, align 4, !tbaa !96
  %i.q = add nuw nsw i32 %.07.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !438

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState13getSubclassIdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !336
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationState11getLastCombERSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, 17179869180
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.critedge39.lr.ph

.critedge39.lr.ph:                                ; preds = %bb.a
  %i.i = lshr exact i64 %i.g, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.trip.count = and i64 %i.i, 4294967295
  br label %.critedge39

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %bb.a
  ret void

.critedge39:                                      ; preds = %.critedge39.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %indvars.iv = phi i64 [ 0, %.critedge39.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !96
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p ; 2 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !100  ; 3 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !101
  %.not.i57 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i57, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.critedge39
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !70   ; 5 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !70
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = lshr i64 %i.v, 40
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = and i32 %i.x, 1048575                    ; 3 uses
  %i.z = icmp samesign ult i32 %i.y, 1048574
  br i1 %i.z, label %bb.c, label %bb.d, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = and i64 %i.v, -1152920405095219201
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.u, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i32 %i.y, 1048574
  br i1 %i.af, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !79

bb.e:                                             ; preds = %bb.d
  %i.ag = or i64 %i.v, 1152920405095219200
  store i64 %i.ag, ptr %i.u, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !100
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %.critedge39
  tail call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.critedge39, !llvm.loop !12
}

declare noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateC2EjjjRKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(64) initializes((4, 12), (16, 64)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !334
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !335
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq i32 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  br i1 %.not, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %2 to i64
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.f)
          to label %_ZNSt6vectorIjSaIjEE6resizeEm.exit unwind label %bb.d

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !98  ; 5 uses
  %.pre8 = load ptr, ptr %i.e, align 8, !tbaa !98 ; 3 uses
  %.not5.i = icmp eq ptr %.pre, %.pre8
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.pre814 = ptrtoaddr ptr %.pre8 to i64
  %.pre13 = ptrtoaddr ptr %.pre to i64
  %i.g = add i64 %.pre814, -4
  %i.h = sub i64 %i.g, %.pre13                    ; 2 uses
end_hunk_1
