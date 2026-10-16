Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/solve_VPSC?download=true
inline.NumInlined: 914
inline.NumDeleted: 472
begin_hunk_0_@_ZN7IncVPSC12mostViolatedERSt6vectorIP10ConstraintSaIS2_EERS2_:bb.a
  store ptr %i.ae, ptr %.sroa.016.1, align 8, !tbaa !43
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !74
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %._crit_edge
  %.0.lcssa32 = phi double [ %.1, %._crit_edge ], [ %.1, %bb.d ], [ f0x7FEFFFFFFFFFFFFF, %bb.a ]
  ret double %.0.lcssa32
}

declare void @_ZN5Block5mergeEPS_P10Constraint(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5Block12splitBetweenEP8VariableS1_RPS_S3_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK10Constraint(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #8 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN7IncVPSC10moveBlocksEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not11 = icmp eq ptr %i.b, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 4 uses
  %i.f = tail call noundef double @_ZN5Block23desiredWeightedPositionEv(ptr noundef nonnull align 8 dereferenceable(112) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store double %i.f, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !71
  %i.j = fdiv double %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store double %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.08.012) #22 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef double @_ZN5Block23desiredWeightedPositionEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_ZN5Block5splitERPS_S1_P10Constraint(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4VPSC23constraintGraphIsCyclicEjPP8Variable(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(84) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::map", align 8          ; 15 uses
  %4 = alloca %"class.std::vector.20", align 8    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 23 uses
  store i32 0, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 9 uses
  store i64 0, ptr %i.e, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not221 = icmp eq i32 %1, 0
  br i1 %.not221, label %.preheader180, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

.lr.ph214.preheader:                              ; preds = %bb.h
  %wide.trip.count246 = zext i32 %1 to i64
  br label %.lr.ph214

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23
          to label %bb.c unwind label %.loopexit182 ; 12 uses

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.i, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.i, ptr %i.l, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr null, ptr %i.o, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %i.n, ptr %i.p, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.n, ptr %i.q, align 8, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 0, ptr %i.r, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !80   ; 7 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.s, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.f, align 8, !tbaa !80
  br label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %4, align 8, !tbaa !84     ; 10 uses
  %i.w = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 4 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #23
          to label %.noexc49 unwind label %.loopexit182 ; 10 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store ptr %i.h, ptr %i.ah, align 8, !tbaa !83
  %.not10.i.i.i.i.i = icmp eq ptr %i.v, %i.s
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc49
  %i.ai = add i64 %i.w, -8
  %i.aj = sub i64 %i.ai, %i.x                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader354, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ag, i64 8
  %i.am = add i64 %i.w, -8
  %i.an = sub i64 %i.am, %i.x
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %scevgep329 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep330 = getelementptr i8, ptr %i.v, i64 8
  %scevgep331 = getelementptr i8, ptr %scevgep330, i64 %i.ao
  %bound0 = icmp ult ptr %i.ag, %scevgep331
  %bound1 = icmp ult ptr %i.v, %scevgep329
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader354, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.v, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.as ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.v, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.at = getelementptr i8, ptr %next.gep332, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep332, align 8, !tbaa !83, !alias.scope !130
  %wide.load333 = load <2 x i64>, ptr %i.at, align 8, !tbaa !83, !alias.scope !130
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !83, !alias.scope !131, !noalias !132
  store <2 x i64> %wide.load333, ptr %i.au, align 8, !tbaa !83, !alias.scope !131, !noalias !132
  %i.av = getelementptr i8, ptr %next.gep332, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep332, align 8, !tbaa !83, !alias.scope !130
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !83, !alias.scope !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader354

.lr.ph.i.i.i.i.i.preheader354:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader354, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader354 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader354 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !129
  store i64 %i.ax, ptr %.012.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !128
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !129
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !123

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc49
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %.noexc49 ], [ %i.aq, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bd) #19
  br label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.ag, ptr %4, align 8, !tbaa !84
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.be, ptr %i.g, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.d
  %i.bf = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.s, %bb.d ]
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph214.preheader, label %bb.b, !llvm.loop !124

.loopexit182:                                     ; preds = %bb.b, %_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader180:                                    ; preds = %._crit_edge212, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !87 ; 2 uses
  %.not223 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not223, label %.critedge, label %.preheader

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %._crit_edge212
  %indvars.iv243 = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next244, %._crit_edge212 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv243 ; 6 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !48 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !37 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37 ; 2 uses
  %.not177205 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not177205, label %._crit_edge, label %.lr.ph207

._crit_edge.loopexit:                             ; preds = %bb.aa
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph214
  %i.bt = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bo, %.lr.ph214 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !37 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !37 ; 2 uses
  %.not178208 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not178208, label %._crit_edge212, label %.lr.ph211

.lr.ph207:                                        ; preds = %.lr.ph214, %bb.aa
  %.sroa.0171.0206 = phi ptr [ %i.ew, %bb.aa ], [ %i.bq, %.lr.ph214 ] ; 2 uses
  %i.by = load ptr, ptr %.sroa.0171.0206, align 8, !tbaa !43
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !66 ; 3 uses
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph207
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !48 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.j ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.j ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !48
  %i.ce = icmp ult ptr %i.cd, %i.cb               ; 3 uses
  %.19.i.i.i.i = select i1 %i.ce, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ce, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, label %bb.j, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.j
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.cf, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ce, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cg = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !89
  %i.ch = icmp ult ptr %i.cb, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.p

.critedge.i:                                      ; preds = %bb.k, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, %.lr.ph207
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.k ], [ %.19.i.i.i.i, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i ], [ %i.a, %.lr.ph207 ]
  %i.ci = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc50 unwind label %bb.ab  ; 6 uses

.noexc50:                                         ; preds = %.critedge.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 3 uses
  %i.ck = load ptr, ptr %i.bn, align 8, !tbaa !48
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !89
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store ptr null, ptr %i.cl, align 8, !tbaa !90
  %i.cm = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.l unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.l:                                             ; preds = %.noexc50
  %i.cn = extractvalue { ptr, ptr } %i.cm, 0      ; 2 uses
  %i.co = extractvalue { ptr, ptr } %i.cm, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i4.i = icmp ne ptr %i.cn, null
  %i.cp = icmp eq ptr %i.co, %i.a
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.cp
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !48
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n, %bb.m
  %i.cu = phi i1 [ %i.ct, %bb.n ], [ true, %bb.m ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cu, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20
  %i.cv = load i64, ptr %i.e, align 8, !tbaa !73
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.e, align 8, !tbaa !73
  br label %bb.p

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc50
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 48) #19
  br label %.body

bb.o:                                             ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 48) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.i.i, %bb.k
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.k ], [ %i.ci, %.thread.i.i ], [ %i.cn, %bb.o ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !83 ; 4 uses
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i51 = icmp eq ptr %i.da, null
  br i1 %.not10.i.i.i.i51, label %.critedge.i62, label %.lr.ph.i.i.i.i52

.lr.ph.i.i.i.i52:                                 ; preds = %bb.p, %.lr.ph.i.i.i.i52
  %.012.i.i.i.i53 = phi ptr [ %.1.i.i.i.i58, %.lr.ph.i.i.i.i52 ], [ %i.da, %bb.p ] ; 4 uses
  %.0811.i.i.i.i54 = phi ptr [ %.19.i.i.i.i55, %.lr.ph.i.i.i.i52 ], [ %i.a, %bb.p ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i53, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !48
  %i.dd = icmp ult ptr %i.dc, %i.bz               ; 3 uses
  %.19.i.i.i.i55 = select i1 %i.dd, ptr %.0811.i.i.i.i54, ptr %.012.i.i.i.i53 ; 5 uses
  %.1.in.v.i.i.i.i56 = select i1 %i.dd, i64 24, i64 16
  %.1.in.i.i.i.i57 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i53, i64 %.1.in.v.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %.1.in.i.i.i.i57, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i60, label %.lr.ph.i.i.i.i52, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i60: ; preds = %.lr.ph.i.i.i.i52
  %i.de = icmp eq ptr %.19.i.i.i.i55, %i.a
  br i1 %i.de, label %.critedge.i62, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i60
  %.19.i.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dd, ptr %.0811.i.i.i.i54, ptr %.012.i.i.i.i53
  %.19.i.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.df = load ptr, ptr %.19.i.i.i.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !89
end_hunk_0
begin_hunk_1_@_ZN4VPSC23constraintGraphIsCyclicEjPP8Variable:bb.a

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i: ; preds = %bb.bd
  store ptr null, ptr %i.iu, align 8, !tbaa !76
  store ptr %i.iv, ptr %i.jm, align 8, !tbaa !67
  %i.js = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  store ptr %i.iv, ptr %i.js, align 8, !tbaa !77
  store i64 0, ptr %i.jl, align 8, !tbaa !73
  br label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i148
  br i1 %.not8.i.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.jt, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.jt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #22 ; 2 uses
  %i.ju = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.iv) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef 40) #19
  %i.jv = load i64, ptr %i.jl, align 8, !tbaa !73
  %i.jw = add i64 %i.jv, -1
  store i64 %i.jw, ptr %i.jl, align 8, !tbaa !73
  %.not.i3.i = icmp eq ptr %i.jt, %.sroa.3.0.i.i148
  br i1 %.not.i3.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i, !llvm.loop !7

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit: ; preds = %.lr.ph.i2.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i, %.critedge.i.i
  %i.jx = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0150.0217) #22 ; 2 uses
  %.not176 = icmp eq ptr %i.jx, %i.iq
  br i1 %.not176, label %.loopexit, label %.lr.ph218

.critedge:                                        ; preds = %.loopexit, %bb.ax, %bb.aw, %.preheader180
  %.lcssa = phi i1 [ false, %.preheader180 ], [ true, %bb.aw ], [ %i.ii, %bb.ax ], [ %i.ii, %.loopexit ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.jy = load ptr, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.jy)
          to label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit unwind label %bb.bf

bb.bf:                                            ; preds = %.critedge
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #24
  unreachable

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.lcssa

.body:                                            ; preds = %.loopexit182, %.loopexit.split-lp, %bb.az, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110, %bb.au, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i64, %bb.ab, %bb.i
  %.pn46.pn = phi { ptr, i32 } [ %i.gw, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110 ], [ %i.ir, %bb.az ], [ %i.bj, %bb.i ], [ %i.dv, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i64 ], [ %i.cx, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.ex, %bb.ab ], [ %i.fy, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88 ], [ %i.hy, %bb.au ], [ %lpad.loopexit, %.loopexit182 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn46.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !48
  store ptr %i.n, ptr %i.m, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !90
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !73
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !83 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef %i.k)
          to label %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i: ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 96) #19
  br label %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !133

_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !84
  br label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4VPSC18blockGraphIsCyclicEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(84) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::map.39", align 8       ; 15 uses
  %2 = alloca %"class.std::vector.20", align 8    ; 14 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 23 uses
  store i32 0, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr null, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  store i64 0, ptr %i.f, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not176206 = icmp eq ptr %i.h, %i.i
  br i1 %.not176206, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.a ] ; 2 uses
  %.not177208 = icmp eq ptr %i.l, %i.i
  br i1 %.not177208, label %.preheader181, label %.lr.ph211

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0173.0207 = phi ptr [ %i.h, %.lr.ph ], [ %i.bp, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0173.0207, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68
  store ptr %i.n, ptr %i.a, align 8, !tbaa !68
  %i.o = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23
          to label %bb.c unwind label %.loopexit184 ; 12 uses

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.p, ptr %i.r, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.u, ptr %i.w, align 8, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %i.u, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 0, ptr %i.y, align 8, !tbaa !73
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !80   ; 7 uses
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.z, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !80
  br label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %2, align 8, !tbaa !84    ; 10 uses
  %i.ad = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 4 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #23
          to label %.noexc38 unwind label %.loopexit184 ; 10 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.o, ptr %i.ao, align 8, !tbaa !83
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc38
  %i.ap = add i64 %i.ad, -8
  %i.aq = sub i64 %i.ap, %i.ae                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader342, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.an, i64 8
  %i.at = add i64 %i.ad, -8
  %i.au = sub i64 %i.at, %i.ae
  %i.av = and i64 %i.au, -8                       ; 2 uses
  %scevgep317 = getelementptr i8, ptr %scevgep, i64 %i.av
  %scevgep318 = getelementptr i8, ptr %i.ac, i64 8
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.av
  %bound0 = icmp ult ptr %i.an, %scevgep319
  %bound1 = icmp ult ptr %i.ac, %scevgep317
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader342, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.an, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ac, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.az ; 2 uses
  %next.gep320 = getelementptr i8, ptr %i.ac, i64 %i.az ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ba = getelementptr i8, ptr %next.gep320, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep320, align 8, !tbaa !83, !alias.scope !148
  %wide.load321 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !83, !alias.scope !148
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !83, !alias.scope !149, !noalias !150
  store <2 x i64> %wide.load321, ptr %i.bb, align 8, !tbaa !83, !alias.scope !149, !noalias !150
  %i.bc = getelementptr i8, ptr %next.gep320, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep320, align 8, !tbaa !83, !alias.scope !148
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !83, !alias.scope !148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader342

.lr.ph.i.i.i.i.i.preheader342:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader342, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader342 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader342 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.be = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !147
  store i64 %i.be, ptr %.012.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !146
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !83, !alias.scope !147
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !141

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc38
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %.noexc38 ], [ %i.ax, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bk) #19
  br label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.an, ptr %2, align 8, !tbaa !84
  store ptr %i.bh, ptr %i.j, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.d
  %i.bm = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.z, %bb.d ]
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !83
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0173.0207) #22 ; 2 uses
  %.not176 = icmp eq ptr %i.bp, %i.i
  br i1 %.not176, label %._crit_edge.loopexit, label %bb.b

.loopexit184:                                     ; preds = %bb.b, %_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit184, %.loopexit.split-lp, %bb.i
  %.pn35 = phi { ptr, i32 } [ %i.bq, %bb.i ], [ %lpad.loopexit, %.loopexit184 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.body

.preheader181:                                    ; preds = %bb.bd, %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !87    ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !87 ; 2 uses
  %.not218 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not218, label %.critedge, label %.preheader

.lr.ph211:                                        ; preds = %._crit_edge, %bb.bd
  %.sroa.0167.0209 = phi ptr [ %i.hz, %bb.bd ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0167.0209, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !68 ; 14 uses
  invoke void @_ZN5Block18setUpInConstraintsEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %bb.k unwind label %bb.ae

bb.k:                                             ; preds = %.lr.ph211
  %i.bw = invoke noundef ptr @_ZN5Block19findMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %.preheader183 unwind label %bb.af

.preheader183:                                    ; preds = %bb.k, %bb.ad
  %.028 = phi ptr [ %i.eu, %bb.ad ], [ %i.bw, %bb.k ] ; 2 uses
  %.not = icmp eq ptr %.028, null
  br i1 %.not, label %bb.ah, label %bb.l

bb.l:                                             ; preds = %.preheader183
  %i.bx = load ptr, ptr %.028, align 8, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54 ; 3 uses
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.l ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.l ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68
  %i.cd = icmp ult ptr %i.cc, %i.bv               ; 3 uses
  %.19.i.i.i.i = select i1 %i.cd, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cd, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ce = icmp eq ptr %.19.i.i.i.i, %i.b
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cd, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cf = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !94
  %i.cg = icmp ult ptr %i.bv, %i.cf
  br i1 %i.cg, label %.critedge.i, label %bb.r

.critedge.i:                                      ; preds = %bb.m, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, %bb.l
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i ], [ %i.b, %bb.l ]
  %i.ch = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc39 unwind label %bb.ag  ; 6 uses

.noexc39:                                         ; preds = %.critedge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 3 uses
  store ptr %i.bv, ptr %i.ci, align 8, !tbaa !94
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store ptr null, ptr %i.cj, align 8, !tbaa !95
  %i.ck = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %bb.n unwind label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.n:                                             ; preds = %.noexc39
  %i.cl = extractvalue { ptr, ptr } %i.ck, 0      ; 2 uses
  %i.cm = extractvalue { ptr, ptr } %i.ck, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i4.i = icmp ne ptr %i.cl, null
  %i.cn = icmp eq ptr %i.cm, %i.b
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.cn
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !68
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68
  %i.cr = icmp ult ptr %i.co, %i.cq
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.p, %bb.o
  %i.cs = phi i1 [ %i.cr, %bb.p ], [ true, %bb.o ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cs, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  %i.ct = load i64, ptr %i.f, align 8, !tbaa !73
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.f, align 8, !tbaa !73
  br label %bb.r

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc39
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 48) #19
  br label %.body

bb.q:                                             ; preds = %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 48) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread.i.i, %bb.m
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %i.ch, %.thread.i.i ], [ %i.cl, %bb.q ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !83 ; 4 uses
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i40 = icmp eq ptr %i.cy, null
  br i1 %.not10.i.i.i.i40, label %.critedge.i51, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %bb.r, %.lr.ph.i.i.i.i41
  %.012.i.i.i.i42 = phi ptr [ %.1.i.i.i.i47, %.lr.ph.i.i.i.i41 ], [ %i.cy, %bb.r ] ; 4 uses
  %.0811.i.i.i.i43 = phi ptr [ %.19.i.i.i.i44, %.lr.ph.i.i.i.i41 ], [ %i.b, %bb.r ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !68
  %i.db = icmp ult ptr %i.da, %i.bz               ; 3 uses
  %.19.i.i.i.i44 = select i1 %i.db, ptr %.0811.i.i.i.i43, ptr %.012.i.i.i.i42 ; 5 uses
  %.1.in.v.i.i.i.i45 = select i1 %i.db, i64 24, i64 16
  %.1.in.i.i.i.i46 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 %.1.in.v.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %.1.in.i.i.i.i46, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i49, label %.lr.ph.i.i.i.i41, !llvm.loop !8

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i49: ; preds = %.lr.ph.i.i.i.i41
  %i.dc = icmp eq ptr %.19.i.i.i.i44, %i.b
  br i1 %i.dc, label %.critedge.i51, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i49
  %.19.i.i.i.i44.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.db, ptr %.0811.i.i.i.i43, ptr %.012.i.i.i.i42
  %.19.i.i.i.i44.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i44.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.dd = load ptr, ptr %.19.i.i.i.i44.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !94
  %i.de = icmp ult ptr %i.bz, %i.dd
  br i1 %i.de, label %.critedge.i51, label %bb.x

.critedge.i51:                                    ; preds = %bb.s, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i49, %bb.r
  %.08.lcssa.i.i.i14.i52 = phi ptr [ %.19.i.i.i.i44, %bb.s ], [ %.19.i.i.i.i44, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i49 ], [ %i.b, %bb.r ]
  %i.df = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc58 unwind label %bb.ag  ; 6 uses

.noexc58:                                         ; preds = %.critedge.i51
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 3 uses
  store ptr %i.bz, ptr %i.dg, align 8, !tbaa !94
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store ptr null, ptr %i.dh, align 8, !tbaa !95
  %i.di = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i14.i52, ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %bb.t unwind label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i53 ; 2 uses

bb.t:                                             ; preds = %.noexc58
  %i.dj = extractvalue { ptr, ptr } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, ptr } %i.di, 1      ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i54, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i4.i55 = icmp ne ptr %i.dj, null
  %i.dl = icmp eq ptr %i.dk, %i.b
  %or.cond.i.i.i.i56 = or i1 %.not.i.i.i4.i55, %i.dl
  br i1 %or.cond.i.i.i.i56, label %.thread.i.i57, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !68
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !68
  %i.dp = icmp ult ptr %i.dm, %i.do
  br label %.thread.i.i57

.thread.i.i57:                                    ; preds = %bb.v, %bb.u
  %i.dq = phi i1 [ %i.dp, %bb.v ], [ true, %bb.u ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dq, ptr noundef nonnull %i.df, ptr noundef nonnull %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  %i.dr = load i64, ptr %i.f, align 8, !tbaa !73
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.f, align 8, !tbaa !73
  br label %bb.x

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i53: ; preds = %.noexc58
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 48) #19
  br label %.body

bb.w:                                             ; preds = %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 48) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread.i.i57, %bb.s
  %.sroa.09.0.i50 = phi ptr [ %.19.i.i.i.i44, %bb.s ], [ %i.df, %.thread.i.i57 ], [ %i.dj, %bb.w ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i50, i64 40 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.dv, align 8, !tbaa !72 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !83 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.y ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !83 ; 2 uses
  %i.ea = icmp ult ptr %i.dx, %i.dz               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ea, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i62, label %._crit_edge.i.i.i, label %bb.y, !llvm.loop !3

._crit_edge.i.i.i:                                ; preds = %bb.y
  br i1 %i.ea, label %._crit_edge.thread.i.i.i, label %bb.aa

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.x
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.dw, %bb.x ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !67
  %i.ed = icmp eq ptr %.019.lcssa29.i.i.i, %i.ec
  br i1 %i.ed, label %select.unfold.i.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ee = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #22
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !83
  %.pre18.i.i = load ptr, ptr %i.du, align 8, !tbaa !83
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i
  %i.ef = phi ptr [ %.pre18.i.i, %bb.z ], [ %i.dx, %._crit_edge.i.i.i ]
  %i.eg = phi ptr [ %.pre.i.i, %bb.z ], [ %i.dz, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.z ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.eh = icmp ult ptr %i.eg, %i.ef
  br i1 %i.eh, label %select.unfold.i.i, label %bb.ac

select.unfold.i.i:                                ; preds = %bb.aa, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.aa ] ; 3 uses
  %i.ei = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.dw
  br i1 %i.ei, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %select.unfold.i.i
  %i.ej = load ptr, ptr %i.du, align 8, !tbaa !83
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !83
  %i.em = icmp ult ptr %i.ej, %i.el
  br label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.ab, %select.unfold.i.i
  %i.en = phi i1 [ %i.em, %bb.ab ], [ true, %select.unfold.i.i ]
  %i.eo = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %.noexc63 unwind label %bb.ag  ; 2 uses

.noexc63:                                         ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.du, align 8, !tbaa !83
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !83
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.en, ptr noundef nonnull %i.eo, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dw) #20
  %i.er = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !73
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !73
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc63, %bb.aa
  invoke void @_ZN5Block21deleteMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.eu = invoke noundef ptr @_ZN5Block19findMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %.preheader183 unwind label %bb.ag, !llvm.loop !142

bb.ae:                                            ; preds = %.lr.ph211
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.ai, %bb.ah, %bb.k
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %.critedge.i51, %.critedge.i, %bb.ad, %bb.ac
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %.preheader183
  invoke void @_ZN5Block19setUpOutConstraintsEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %bb.ai unwind label %bb.af

bb.ai:                                            ; preds = %bb.ah
  %i.ey = invoke noundef ptr @_ZN5Block20findMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %.preheader182 unwind label %bb.af

.preheader182:                                    ; preds = %bb.ai, %bb.bb
  %.129 = phi ptr [ %i.hx, %bb.bb ], [ %i.ey, %bb.ai ] ; 2 uses
  %.not31 = icmp eq ptr %.129, null
  br i1 %.not31, label %bb.bd, label %bb.aj

bb.aj:                                            ; preds = %.preheader182
  %i.ez = getelementptr inbounds nuw i8, ptr %.129, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !54 ; 3 uses
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i64 = icmp eq ptr %i.fd, null
  br i1 %.not10.i.i.i.i64, label %.critedge.i75, label %.lr.ph.i.i.i.i65

.lr.ph.i.i.i.i65:                                 ; preds = %bb.aj, %.lr.ph.i.i.i.i65
  %.012.i.i.i.i66 = phi ptr [ %.1.i.i.i.i71, %.lr.ph.i.i.i.i65 ], [ %i.fd, %bb.aj ] ; 4 uses
  %.0811.i.i.i.i67 = phi ptr [ %.19.i.i.i.i68, %.lr.ph.i.i.i.i65 ], [ %i.b, %bb.aj ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i66, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !68
  %i.fg = icmp ult ptr %i.ff, %i.bv               ; 3 uses
  %.19.i.i.i.i68 = select i1 %i.fg, ptr %.0811.i.i.i.i67, ptr %.012.i.i.i.i66 ; 5 uses
  %.1.in.v.i.i.i.i69 = select i1 %i.fg, i64 24, i64 16
  %.1.in.i.i.i.i70 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i66, i64 %.1.in.v.i.i.i.i69
  %.1.i.i.i.i71 = load ptr, ptr %.1.in.i.i.i.i70, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %.1.i.i.i.i71, null
  br i1 %.not.i.i.i.i72, label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i73, label %.lr.ph.i.i.i.i65, !llvm.loop !8

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i73: ; preds = %.lr.ph.i.i.i.i65
  %i.fh = icmp eq ptr %.19.i.i.i.i68, %i.b
  br i1 %i.fh, label %.critedge.i75, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i73
  %.19.i.i.i.i68.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fg, ptr %.0811.i.i.i.i67, ptr %.012.i.i.i.i66
  %.19.i.i.i.i68.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i68.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fi = load ptr, ptr %.19.i.i.i.i68.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !94
  %i.fj = icmp ult ptr %i.bv, %i.fi
  br i1 %i.fj, label %.critedge.i75, label %bb.ap

.critedge.i75:                                    ; preds = %bb.ak, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i73, %bb.aj
  %.08.lcssa.i.i.i14.i76 = phi ptr [ %.19.i.i.i.i68, %bb.ak ], [ %.19.i.i.i.i68, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i73 ], [ %i.b, %bb.aj ]
  %i.fk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc82 unwind label %bb.bc  ; 6 uses

.noexc82:                                         ; preds = %.critedge.i75
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 3 uses
  store ptr %i.bv, ptr %i.fl, align 8, !tbaa !94
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store ptr null, ptr %i.fm, align 8, !tbaa !95
  %i.fn = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i14.i76, ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %bb.al unwind label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i77 ; 2 uses

bb.al:                                            ; preds = %.noexc82
  %i.fo = extractvalue { ptr, ptr } %i.fn, 0      ; 2 uses
  %i.fp = extractvalue { ptr, ptr } %i.fn, 1      ; 4 uses
  %.not.i.i78 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i78, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i4.i79 = icmp ne ptr %i.fo, null
  %i.fq = icmp eq ptr %i.fp, %i.b
  %or.cond.i.i.i.i80 = or i1 %.not.i.i.i4.i79, %i.fq
  br i1 %or.cond.i.i.i.i80, label %.thread.i.i81, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !68
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !68
  %i.fu = icmp ult ptr %i.fr, %i.ft
  br label %.thread.i.i81

.thread.i.i81:                                    ; preds = %bb.an, %bb.am
  %i.fv = phi i1 [ %i.fu, %bb.an ], [ true, %bb.am ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fv, ptr noundef nonnull %i.fk, ptr noundef nonnull %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  %i.fw = load i64, ptr %i.f, align 8, !tbaa !73
  %i.fx = add i64 %i.fw, 1
  store i64 %i.fx, ptr %i.f, align 8, !tbaa !73
  br label %bb.ap

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i77: ; preds = %.noexc82
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef 48) #19
  br label %.body

bb.ao:                                            ; preds = %bb.al
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef 48) #19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread.i.i81, %bb.ak
  %.sroa.09.0.i74 = phi ptr [ %.19.i.i.i.i68, %bb.ak ], [ %i.fk, %.thread.i.i81 ], [ %i.fo, %bb.ao ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i74, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !83 ; 4 uses
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i86 = icmp eq ptr %i.gb, null
  br i1 %.not10.i.i.i.i86, label %.critedge.i97, label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %bb.ap, %.lr.ph.i.i.i.i87
  %.012.i.i.i.i88 = phi ptr [ %.1.i.i.i.i93, %.lr.ph.i.i.i.i87 ], [ %i.gb, %bb.ap ] ; 4 uses
  %.0811.i.i.i.i89 = phi ptr [ %.19.i.i.i.i90, %.lr.ph.i.i.i.i87 ], [ %i.b, %bb.ap ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i88, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !68
  %i.ge = icmp ult ptr %i.gd, %i.fc               ; 3 uses
  %.19.i.i.i.i90 = select i1 %i.ge, ptr %.0811.i.i.i.i89, ptr %.012.i.i.i.i88 ; 5 uses
  %.1.in.v.i.i.i.i91 = select i1 %i.ge, i64 24, i64 16
  %.1.in.i.i.i.i92 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i88, i64 %.1.in.v.i.i.i.i91
  %.1.i.i.i.i93 = load ptr, ptr %.1.in.i.i.i.i92, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i94 = icmp eq ptr %.1.i.i.i.i93, null
  br i1 %.not.i.i.i.i94, label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95, label %.lr.ph.i.i.i.i87, !llvm.loop !8

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95: ; preds = %.lr.ph.i.i.i.i87
  %i.gf = icmp eq ptr %.19.i.i.i.i90, %i.b
  br i1 %i.gf, label %.critedge.i97, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95
  %.19.i.i.i.i90.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ge, ptr %.0811.i.i.i.i89, ptr %.012.i.i.i.i88
  %.19.i.i.i.i90.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i90.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.gg = load ptr, ptr %.19.i.i.i.i90.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !94
  %i.gh = icmp ult ptr %i.fc, %i.gg
  br i1 %i.gh, label %.critedge.i97, label %bb.av

.critedge.i97:                                    ; preds = %bb.aq, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95, %bb.ap
  %.08.lcssa.i.i.i14.i98 = phi ptr [ %.19.i.i.i.i90, %bb.aq ], [ %.19.i.i.i.i90, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95 ], [ %i.b, %bb.ap ]
  %i.gi = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc104 unwind label %bb.bc ; 6 uses

.noexc104:                                        ; preds = %.critedge.i97
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32 ; 3 uses
  store ptr %i.fc, ptr %i.gj, align 8, !tbaa !94
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  store ptr null, ptr %i.gk, align 8, !tbaa !95
  %i.gl = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i14.i98, ptr noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %bb.ar unwind label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i99 ; 2 uses

bb.ar:                                            ; preds = %.noexc104
  %i.gm = extractvalue { ptr, ptr } %i.gl, 0      ; 2 uses
  %i.gn = extractvalue { ptr, ptr } %i.gl, 1      ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i100, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i4.i101 = icmp ne ptr %i.gm, null
  %i.go = icmp eq ptr %i.gn, %i.b
  %or.cond.i.i.i.i102 = or i1 %.not.i.i.i4.i101, %i.go
  br i1 %or.cond.i.i.i.i102, label %.thread.i.i103, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !68
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !68
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br label %.thread.i.i103

.thread.i.i103:                                   ; preds = %bb.at, %bb.as
  %i.gt = phi i1 [ %i.gs, %bb.at ], [ true, %bb.as ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gt, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  %i.gu = load i64, ptr %i.f, align 8, !tbaa !73
  %i.gv = add i64 %i.gu, 1
  store i64 %i.gv, ptr %i.f, align 8, !tbaa !73
  br label %bb.av

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i99: ; preds = %.noexc104
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 48) #19
  br label %.body

bb.au:                                            ; preds = %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 48) #19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread.i.i103, %bb.aq
  %.sroa.09.0.i96 = phi ptr [ %.19.i.i.i.i90, %bb.aq ], [ %i.gi, %.thread.i.i103 ], [ %i.gm, %bb.au ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i96, i64 40 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ga, i64 56 ; 3 uses
  %.02022.i.i.i108 = load ptr, ptr %i.gy, align 8, !tbaa !72 ; 2 uses
  %.not23.i.i.i109 = icmp eq ptr %.02022.i.i.i108, null
  br i1 %.not23.i.i.i109, label %._crit_edge.thread.i.i.i126, label %.lr.ph.i.i.i110

.lr.ph.i.i.i110:                                  ; preds = %bb.av
  %i.ha = load ptr, ptr %i.gx, align 8, !tbaa !83 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i.i.i110
  %.02024.i.i.i111 = phi ptr [ %.02022.i.i.i108, %.lr.ph.i.i.i110 ], [ %.020.i.i.i114, %bb.aw ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.02024.i.i.i111, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !83 ; 2 uses
  %i.hd = icmp ult ptr %i.ha, %i.hc               ; 2 uses
  %.in.v.i.i.i112 = select i1 %i.hd, i64 16, i64 24
  %.in.i.i.i113 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i111, i64 %.in.v.i.i.i112
  %.020.i.i.i114 = load ptr, ptr %.in.i.i.i113, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %.020.i.i.i114, null
  br i1 %.not.i.i.i115, label %._crit_edge.i.i.i116, label %bb.aw, !llvm.loop !3

._crit_edge.i.i.i116:                             ; preds = %bb.aw
  br i1 %i.hd, label %._crit_edge.thread.i.i.i126, label %bb.ay

._crit_edge.thread.i.i.i126:                      ; preds = %._crit_edge.i.i.i116, %bb.av
  %.019.lcssa29.i.i.i127 = phi ptr [ %.02024.i.i.i111, %._crit_edge.i.i.i116 ], [ %i.gz, %bb.av ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !67
  %i.hg = icmp eq ptr %.019.lcssa29.i.i.i127, %i.hf
  br i1 %i.hg, label %select.unfold.i.i123, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.thread.i.i.i126
  %i.hh = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i127) #22
  %.phi.trans.insert.i.i128 = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %.pre.i.i129 = load ptr, ptr %.phi.trans.insert.i.i128, align 8, !tbaa !83
  %.pre18.i.i130 = load ptr, ptr %i.gx, align 8, !tbaa !83
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i.i.i116
  %i.hi = phi ptr [ %.pre18.i.i130, %bb.ax ], [ %i.ha, %._crit_edge.i.i.i116 ]
  %i.hj = phi ptr [ %.pre.i.i129, %bb.ax ], [ %i.hc, %._crit_edge.i.i.i116 ]
  %.019.lcssa28.i.i.i117 = phi ptr [ %.019.lcssa29.i.i.i127, %bb.ax ], [ %.02024.i.i.i111, %._crit_edge.i.i.i116 ]
  %i.hk = icmp ult ptr %i.hj, %i.hi
  br i1 %i.hk, label %select.unfold.i.i123, label %bb.ba

select.unfold.i.i123:                             ; preds = %bb.ay, %._crit_edge.thread.i.i.i126
  %.sroa.4.0.i.ph.i.i124 = phi ptr [ %.019.lcssa29.i.i.i127, %._crit_edge.thread.i.i.i126 ], [ %.019.lcssa28.i.i.i117, %bb.ay ] ; 3 uses
  %i.hl = icmp eq ptr %.sroa.4.0.i.ph.i.i124, %i.gz
  br i1 %i.hl, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125, label %bb.az

bb.az:                                            ; preds = %select.unfold.i.i123
  %i.hm = load ptr, ptr %i.gx, align 8, !tbaa !83
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i124, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !83
  %i.hp = icmp ult ptr %i.hm, %i.ho
  br label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125: ; preds = %bb.az, %select.unfold.i.i123
  %i.hq = phi i1 [ %i.hp, %bb.az ], [ true, %select.unfold.i.i123 ]
  %i.hr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %.noexc131 unwind label %bb.bc ; 2 uses

.noexc131:                                        ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = load ptr, ptr %i.gx, align 8, !tbaa !83
  store ptr %i.ht, ptr %i.hs, align 8, !tbaa !83
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hq, ptr noundef nonnull %i.hr, ptr noundef nonnull %.sroa.4.0.i.ph.i.i124, ptr noundef nonnull align 8 dereferenceable(32) %i.gz) #20
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ga, i64 88 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !73
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !73
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc131, %bb.ay
  invoke void @_ZN5Block22deleteMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hx = invoke noundef ptr @_ZN5Block20findMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bv)
          to label %.preheader182 unwind label %bb.bc, !llvm.loop !143

bb.bc:                                            ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125, %.critedge.i97, %.critedge.i75, %bb.bb, %bb.ba
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %.preheader182
  %i.hz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0167.0209) #22 ; 2 uses
  %.not177 = icmp eq ptr %i.hz, %i.i
  br i1 %.not177, label %.preheader181, label %.lr.ph211

.loopexit:                                        ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.ia = load ptr, ptr %2, align 8, !tbaa !87    ; 2 uses
  %i.ib = load ptr, ptr %i.br, align 8, !tbaa !87 ; 2 uses
  %.not219 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not219, label %.critedge, label %.preheader, !llvm.loop !144

.preheader:                                       ; preds = %.preheader181, %.loopexit
  %i.ic = phi ptr [ %i.ib, %.loopexit ], [ %i.bt, %.preheader181 ] ; 2 uses
  %i.id = phi ptr [ %i.ia, %.loopexit ], [ %i.bs, %.preheader181 ] ; 3 uses
  br label %bb.be

bb.be:                                            ; preds = %.preheader, %bb.bf
  %.sroa.0145.0212 = phi ptr [ %i.id, %.preheader ], [ %i.ii, %bb.bf ] ; 4 uses
  %i.ie = load ptr, ptr %.sroa.0145.0212, align 8, !tbaa !83 ; 7 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !73
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0145.0212, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.ii, %i.ic
  br i1 %.not178, label %.critedge, label %bb.be, !llvm.loop !145

bb.bg:                                            ; preds = %bb.be
  %i.ij = icmp eq ptr %.sroa.0145.0212, %i.ic     ; 3 uses
  br i1 %i.ij, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ik = ptrtoint ptr %.sroa.0145.0212 to i64
  %i.il = ptrtoint ptr %i.id to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = getelementptr inbounds i8, ptr %i.id, i64 %i.im
  %i.io = invoke ptr @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.in)
          to label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit unwind label %bb.bi ; 0 uses

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %bb.bh
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 72
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !67 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ie, i64 56 ; 2 uses
  %.not179213 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not179213, label %.loopexit, label %.lr.ph215

bb.bi:                                            ; preds = %bb.bh
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph215:                                        ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit
  %.sroa.0139.0214 = phi ptr [ %i.jy, %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit ], [ %i.iq, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0139.0214, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !83 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 7 uses
  %.041.i.i = load ptr, ptr %i.iv, align 8, !tbaa !72 ; 3 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph215, %bb.bl
  %.044.i.i = phi ptr [ %.0.i.i, %bb.bl ], [ %.041.i.i, %.lr.ph215 ] ; 7 uses
  %.02243.i.i = phi ptr [ %.123.i.i, %bb.bl ], [ %i.iw, %.lr.ph215 ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !83 ; 2 uses
  %i.iz = icmp ult ptr %i.iy, %i.ie
  br i1 %i.iz, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.ja = icmp ult ptr %i.ie, %i.iy
  br i1 %i.ja, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jb = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !91 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !92 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i135

.lr.ph.i.i.i135:                                  ; preds = %bb.bk, %.lr.ph.i.i.i135
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i135 ], [ %i.jc, %bb.bk ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i135 ], [ %.044.i.i, %bb.bk ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !83
  %i.jh = icmp ult ptr %i.jg, %i.ie               ; 2 uses
  %.19.i.i.i = select i1 %i.jh, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.jh, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i136, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i135, !llvm.loop !4

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i135, %bb.bk
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.bk ], [ %.19.i.i.i, %.lr.ph.i.i.i135 ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.je, null
  br i1 %.not10.i24.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.je, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ] ; 3 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !83
  %i.jk = icmp ult ptr %i.ie, %i.jj               ; 2 uses
  %.19.i28.i.i = select i1 %i.jk, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.jk, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i, !llvm.loop !5

bb.bl:                                            ; preds = %bb.bj, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i ], [ 16, %bb.bj ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i ], [ %.044.i.i, %bb.bj ] ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.jl, align 8, !tbaa !72 ; 2 uses
  %.not.i.i138 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i138, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i: ; preds = %bb.bl, %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph215
  %.sroa.037.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i25.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.iw, %.lr.ph215 ], [ %.123.i.i, %bb.bl ] ; 3 uses
  %.sroa.3.0.i.i137 = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.iw, %.lr.ph215 ], [ %.123.i.i, %bb.bl ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iu, i64 40 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iu, i64 24 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !67
  %i.jp = icmp eq ptr %.sroa.037.0.i.i, %i.jo
  %i.jq = icmp eq ptr %.sroa.3.0.i.i137, %i.iw
  %or.cond.i = select i1 %i.jp, i1 %i.jq, i1 false
  br i1 %or.cond.i, label %bb.bm, label %.critedge.i.i

bb.bm:                                            ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, ptr noundef %.041.i.i)
          to label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #24
  unreachable

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i: ; preds = %bb.bm
  store ptr null, ptr %i.iv, align 8, !tbaa !76
  store ptr %i.iw, ptr %i.jn, align 8, !tbaa !67
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store ptr %i.iw, ptr %i.jt, align 8, !tbaa !77
  store i64 0, ptr %i.jm, align 8, !tbaa !73
  br label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i137
  br i1 %.not8.i.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.ju, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.ju = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #22 ; 2 uses
  %i.jv = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.iw) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef 40) #19
  %i.jw = load i64, ptr %i.jm, align 8, !tbaa !73
  %i.jx = add i64 %i.jw, -1
  store i64 %i.jx, ptr %i.jm, align 8, !tbaa !73
  %.not.i3.i = icmp eq ptr %i.ju, %.sroa.3.0.i.i137
  br i1 %.not.i3.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i, !llvm.loop !7

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit: ; preds = %.lr.ph.i2.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i, %.critedge.i.i
  %i.jy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0139.0214) #22 ; 2 uses
  %.not179 = icmp eq ptr %i.jy, %i.ir
  br i1 %.not179, label %.loopexit, label %.lr.ph215

.critedge:                                        ; preds = %.loopexit, %bb.bg, %bb.bf, %.preheader181
  %.lcssa = phi i1 [ false, %.preheader181 ], [ true, %bb.bf ], [ %i.ij, %bb.bg ], [ %i.ij, %.loopexit ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.jz = load ptr, ptr %i.c, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.jz)
          to label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit unwind label %bb.bo

bb.bo:                                            ; preds = %.critedge
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #24
  unreachable

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i1 %.lcssa

.body:                                            ; preds = %bb.bi, %bb.ae, %bb.af, %bb.ag, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i53, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i, %bb.bc, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i99, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i77, %bb.j
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.j ], [ %i.gw, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i99 ], [ %i.ev, %bb.ae ], [ %i.ew, %bb.af ], [ %i.dt, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i53 ], [ %i.cv, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.ex, %bb.ag ], [ %i.fy, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i77 ], [ %i.hy, %bb.bc ], [ %i.is, %bb.bi ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !68
  store ptr %i.n, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !95
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !73
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

declare noundef ptr @_ZN5Block19findMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_ZN5Block21deleteMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare noundef ptr @_ZN5Block20findMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_ZN5Block22deleteMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4VPSCD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4VPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6BlocksD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4VPSCD0Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4VPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6BlocksD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.a) #20, !inline_history !41
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7IncVPSCD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV7IncVPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit:      ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4VPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6BlocksD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.h) #20, !inline_history !41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7IncVPSCD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV7IncVPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN7IncVPSCD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19, !inline_history !151
  br label %_ZN7IncVPSCD2Ev.exit

_ZN7IncVPSCD2Ev.exit:                             ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4VPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6BlocksD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.h) #20, !inline_history !152
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6BlocksD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60)) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !154

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIP10ConstraintSaIS1_EE13_M_assign_auxIPS1_EEvT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = load ptr, ptr %0, align 8, !tbaa !39     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
  unreachable

_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !155

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE20_M_allocate_and_copyIPS1_EES5_mT_S6_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 8
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIP10ConstraintSaIS1_EE20_M_allocate_and_copyIPS1_EES5_mT_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !43
  store ptr %i.o, ptr %i.l, align 8, !tbaa !43
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE20_M_allocate_and_copyIPS1_EES5_mT_S6_.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE20_M_allocate_and_copyIPS1_EES5_mT_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE20_M_allocate_and_copyIPS1_EES5_mT_S6_.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #19
  br label %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE20_M_allocate_and_copyIPS1_EES5_mT_S6_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !74
  store ptr %i.v, ptr %i.d, align 8, !tbaa !40
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_erase_at_endEPS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74   ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.z, %i.c
  br i1 %.not, label %_ZSt9__advanceIPP10ConstraintlEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i64 %i.c, 8
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !155

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !74
  br label %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.c, 8
  br i1 %i.ab, label %bb.l, label %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %1, align 8, !tbaa !43
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !43
  br label %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit

_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit:     ; preds = %bb.j, %bb.k, %bb.l
  %i.ad = phi ptr [ %.pre, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i16 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i16, label %_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_erase_at_endEPS1_.exit, label %_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !74
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_erase_at_endEPS1_.exit

_ZSt9__advanceIPP10ConstraintlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.z ; 3 uses
  %i.af = ptrtoint ptr %.sink.i to i64
  %i.ag = icmp sgt i64 %i.z, 8
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !155

bb.m:                                             ; preds = %_ZSt9__advanceIPP10ConstraintlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %1, i64 %i.z, i1 false)
  %.pre21 = load ptr, ptr %i.w, align 8, !tbaa !74
  br label %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit17

bb.n:                                             ; preds = %_ZSt9__advanceIPP10ConstraintlEvRT_T0_St26random_access_iterator_tag.exit
  %i.ah = icmp eq i64 %i.z, 8
  br i1 %i.ah, label %bb.o, label %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit17

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %1, align 8, !tbaa !43
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !43
  br label %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit17

_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit17:   ; preds = %bb.m, %bb.n, %bb.o
  %i.aj = phi ptr [ %.pre21, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.o ] ; 3 uses
  %i.ak = sub i64 %i.a, %i.af                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.p, label %bb.q, !prof !155

bb.p:                                             ; preds = %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aj, ptr align 8 %.sink.i, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPP10ConstraintS2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.q:                                             ; preds = %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit17
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.r, label %_ZSt22__uninitialized_copy_aIPP10ConstraintS2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr %.sink.i, align 8, !tbaa !43
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !43
  br label %_ZSt22__uninitialized_copy_aIPP10ConstraintS2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPP10ConstraintS2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.p, %bb.q, %bb.r
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !74
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i, %_ZSt4copyIPP10ConstraintS2_ET0_T_S4_S3_.exit, %_ZSt22__uninitialized_copy_aIPP10ConstraintS2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %_ZNSt12_Vector_baseIP10ConstraintSaIS1_EE13_M_deallocateEPS1_m.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !156

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = load ptr, ptr %2, align 8, !tbaa !48
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !72 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !157

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #22 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !48
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !48     ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48   ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #22 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48 ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !72 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !157

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #22 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #22 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !92
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !72 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !72 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !157

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 4 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.v, %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %.0912.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.0912.i.i.i.i.i, align 8, !tbaa !83
  store ptr null, ptr %.0912.i.i.i.i.i, align 8, !tbaa !83
  %i.j = load ptr, ptr %.0813.i.i.i.i.i, align 8, !tbaa !83 ; 6 uses
  store ptr %i.i, ptr %.0813.i.i.i.i.i, align 8, !tbaa !83
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
          to label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef %i.q)
          to label %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 96) #19
  br label %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i

_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0912.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 8
  %i.v = add nsw i64 %.014.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.014.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit, !llvm.loop !158

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit: ; preds = %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !80
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit, %bb.b, %bb.a
  %i.x = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83   ; 6 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef %i.ac)
          to label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #24
  unreachable

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef %i.ag)
          to label %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #24
  unreachable

_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i:      ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 96) #19
  br label %_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI4nodeSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrI4nodeSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i
  ret ptr %1
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = load ptr, ptr %2, align 8, !tbaa !68
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !72 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !68     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !159

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #22 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !68
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !68
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !68     ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #22 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !68 ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !72 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !159

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #22 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #22 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !68
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !92
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !72 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !68 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !72 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !159

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !68
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !61}
!1 = distinct !{!1, !61}
!2 = distinct !{!2, !61}
!3 = distinct !{!3, !61}
!4 = distinct !{!4, !61}
!5 = distinct !{!5, !61}
!6 = distinct !{!6, !61}
!7 = distinct !{!7, !61}
!8 = distinct !{!8, !61}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"vtable pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSSt4lessIP5BlockE"}
!20 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP5BlockEE", !19, i64 0}
!21 = !{!"_ZTSSt14_Rb_tree_color", !13, i64 0}
!22 = !{!"any pointer", !13, i64 0}
!23 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!24 = !{!"_ZTSSt18_Rb_tree_node_base", !21, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!25 = !{!"long", !13, i64 0}
!26 = !{!"_ZTSSt15_Rb_tree_header", !24, i64 0, !25, i64 32}
!27 = !{!"_ZTSNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !20, i64 0, !26, i64 8}
!28 = !{!"_ZTSSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !27, i64 0}
!29 = !{!"_ZTSSt3setIP5BlockSt4lessIS1_ESaIS1_EE", !28, i64 0}
!30 = !{!"any p2 pointer", !22, i64 0}
!31 = !{!"p2 _ZTS8Variable", !30, i64 0}
!32 = !{!"_ZTS6Blocks", !29, i64 0, !31, i64 48, !14, i64 56}
!33 = !{!"p2 _ZTS10Constraint", !30, i64 0}
!34 = !{!"_ZTS4VPSC", !32, i64 8, !33, i64 72, !14, i64 80}
!35 = !{!34, !33, i64 72}
!36 = !{!34, !14, i64 80}
!37 = !{!33, !33, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!39 = !{!38, !33, i64 0}
!40 = !{!38, !33, i64 16}
!41 = !{ptr @_ZN4VPSCD2Ev}
!42 = !{!"p1 _ZTS10Constraint", !22, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTS8Variable", !22, i64 0}
!45 = !{!"double", !13, i64 0}
!46 = !{!"bool", !13, i64 0}
!47 = !{!"_ZTS10Constraint", !44, i64 0, !44, i64 8, !45, i64 16, !45, i64 24, !25, i64 32, !46, i64 40, !46, i64 41}
!48 = !{!44, !44, i64 0}
!49 = !{!"p1 _ZTS5Block", !22, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE12_Vector_implE", !38, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIP10ConstraintSaIS1_EE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorIP10ConstraintSaIS1_EE", !51, i64 0}
!53 = !{!"_ZTS8Variable", !14, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !49, i64 32, !46, i64 40, !52, i64 48, !52, i64 72}
!54 = !{!53, !49, i64 32}
!55 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIP8VariableSaIS1_EE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIP8VariableSaIS1_EE", !57, i64 0}
!59 = !{!"_ZTS5Block", !58, i64 0, !45, i64 24, !45, i64 32, !45, i64 40, !46, i64 48, !25, i64 56, !52, i64 64, !52, i64 88}
!60 = !{!59, !46, i64 48}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!47, !44, i64 8}
!63 = !{!59, !45, i64 24}
!64 = !{!53, !45, i64 24}
!65 = !{!47, !45, i64 16}
!66 = !{!47, !44, i64 0}
!67 = !{!26, !23, i64 16}
!68 = !{!49, !49, i64 0}
!69 = !{!47, !45, i64 24}
!70 = !{!59, !45, i64 40}
!71 = !{!59, !45, i64 32}
!72 = !{!23, !23, i64 0}
!73 = !{!26, !25, i64 32}
!74 = !{!38, !33, i64 8}
!75 = !{!26, !21, i64 0}
!76 = !{!26, !23, i64 8}
!77 = !{!26, !23, i64 24}
!78 = !{!"p1 _ZTSSt10unique_ptrI4nodeSt14default_deleteIS0_EE", !22, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!79, !78, i64 8}
!81 = !{!79, !78, i64 16}
!82 = !{!"p1 _ZTS4node", !22, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!79, !78, i64 0}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!78, !78, i64 0}
!88 = !{!"_ZTSSt4pairIKP8VariableP4nodeE", !44, i64 0, !82, i64 8}
!89 = !{!88, !44, i64 0}
!90 = !{!88, !82, i64 8}
!91 = !{!24, !23, i64 16}
!92 = !{!24, !23, i64 24}
!93 = !{!"_ZTSSt4pairIKP5BlockP4nodeE", !49, i64 0, !82, i64 8}
!94 = !{!93, !49, i64 0}
!95 = !{!93, !82, i64 8}
!96 = !{!47, !46, i64 40}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, !61}
!99 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !22, i64 0}
!100 = !{!"_ZTSNSt8__detail15_List_node_baseE", !99, i64 0, !99, i64 8}
!101 = !{!100, !99, i64 0}
!102 = !{i8 0, i8 2}
!103 = !{}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = !{!"_ZTS7IncVPSC", !34, i64 0, !14, i64 84, !52, i64 88}
!108 = !{!107, !14, i64 84}
!109 = distinct !{!109, !61}
!110 = distinct !{!110, !61}
!111 = !{!"p1 omnipotent char", !22, i64 0}
!112 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !111, i64 0}
!113 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !112, i64 0, !25, i64 8, !13, i64 16}
!114 = !{!113, !111, i64 0}
!115 = !{!13, !13, i64 0}
!116 = distinct !{!116, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrI4nodeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!117 = distinct !{!117, !116, !"_ZSt19__relocate_object_aISt10unique_ptrI4nodeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !116, !"_ZSt19__relocate_object_aISt10unique_ptrI4nodeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!119 = distinct !{!119, i1 false, !"LVerDomain"}
!120 = distinct !{!120, !119}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !61, !85, !86}
!123 = distinct !{!123, !61, !85}
!124 = distinct !{!124, !61}
!125 = distinct !{!125, !61}
!126 = distinct !{!126, !61}
!127 = distinct !{!127, !61}
!128 = !{!117}
!129 = !{!118}
!130 = !{!118, !120}
!131 = !{!117, !121}
!132 = !{!120}
!133 = distinct !{!133, !61}
!134 = distinct !{!134, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrI4nodeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!135 = distinct !{!135, !134, !"_ZSt19__relocate_object_aISt10unique_ptrI4nodeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!136 = distinct !{!136, !134, !"_ZSt19__relocate_object_aISt10unique_ptrI4nodeSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!137 = distinct !{!137, i1 false, !"LVerDomain"}
!138 = distinct !{!138, !137}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !61, !85, !86}
!141 = distinct !{!141, !61, !85}
!142 = distinct !{!142, !61}
!143 = distinct !{!143, !61}
!144 = distinct !{!144, !61}
!145 = distinct !{!145, !61}
!146 = !{!135}
!147 = !{!136}
!148 = !{!136, !138}
!149 = !{!135, !139}
!150 = !{!138}
!151 = !{ptr @_ZN7IncVPSCD2Ev}
!152 = !{ptr @_ZN7IncVPSCD2Ev, ptr @_ZN4VPSCD2Ev}
!153 = distinct !{!153, !61}
!154 = distinct !{!154, !61}
!155 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!156 = distinct !{!156, !61}
!157 = distinct !{!157, !61}
!158 = distinct !{!158, !61}
!159 = distinct !{!159, !61}
end_hunk_1
