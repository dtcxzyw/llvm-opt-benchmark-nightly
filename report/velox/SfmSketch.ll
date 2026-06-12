inline.NumInlined: 374
inline.NumDeleted: 200
begin_hunk_0_@_ZN8facebook5velox9functions3sfm9SfmSketch16addIndexAndZerosEii:bb.a
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.p
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.u

bb.q:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !25
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.s, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch16addIndexAndZerosEiiE18veloxCheckFailArgs_3, ptr noundef nonnull @.str.13) #18
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !27
  %i.al = fcmp ogt double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.t, label %_ZN8facebook5velox9functions3sfm9SfmSketch10setBitTrueEii.exit, !prof !28

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch10setBitTrueEiiE18veloxCheckFailArgs, ptr noundef nonnull @.str.36) #18
  unreachable

_ZN8facebook5velox9functions3sfm9SfmSketch10setBitTrueEii.exit: ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  %i.ao = add nsw i32 %i.an, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.ao)
  %i.ap = mul nsw i32 %.sroa.speculated, %i.i
  %i.aq = add nsw i32 %i.ap, %1                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.at = sext i32 %i.aq to i64
  %i.au = lshr i64 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !38
  %i.ax = trunc i32 %i.aq to i8
  %i.ay = and i8 %i.ax, 7
  %i.az = shl nuw i8 1, %i.ay
  %i.ba = or i8 %i.az, %i.aw
  store i8 %i.ba, ptr %i.av, align 1, !tbaa !38
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, -2147483647) i32 @_ZN8facebook5velox9functions3sfm9SfmSketch10numBucketsEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN8facebook5velox9functions3sfm12_GLOBAL__N_120validateNumIndexBitsEi(i32 noundef %0)
  %i.a = shl nuw i32 1, %0
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd(double noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fcmp oeq double %0, +inf
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @exp(double noundef %0) #19, !tbaa !3
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fdiv double 1.000000e+00, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_(ptr noundef nonnull align 8 dereferenceable(2584) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.48", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.48", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.facebook::velox::functions::sfm::MersenneTwisterRandomizationStrategy", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !73
  store i32 %i.b, ptr %3, align 16, !tbaa !38, !noalias !73
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.d, ptr %i.e, align 16, !tbaa !38, !noalias !73
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.21, i64 66, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !73
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.21) #18
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !38
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25   ; 2 uses
  %.not35 = icmp eq i32 %i.m, %i.o
  br i1 %.not35, label %bb.i, label %bb.f, !prof !63

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !76
  store i32 %i.m, ptr %2, align 16, !tbaa !38, !noalias !76
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.o, ptr %i.p, align 16, !tbaa !38, !noalias !76
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.23, i64 69, i64 17, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !76
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_E18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.23) #18
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !38
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.w

bb.i:                                             ; preds = %bb.e
  %i.w = icmp sgt i32 %i.m, 0
  br i1 %i.w, label %bb.k, label %bb.j, !prof !63

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_E18veloxCheckFailArgs_1, ptr noundef nonnull @.str.13) #18
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = load i32, ptr %0, align 8, !tbaa !7
  %i.y = mul i32 %i.x, %i.b                       ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !27 ; 9 uses
  %i.ab = fcmp ogt double %i.aa, 0.000000e+00
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !27 ; 6 uses
  %i.ae = fcmp ogt double %i.ad, 0.000000e+00
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %or.cond, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i = icmp sgt i32 %i.y, 0
  br i1 %.not.i.i.i, label %bb.m, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = and i32 %i.y, 2147483584                ; 3 uses
  %.not3337.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not3337.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %i.ak = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.al = add nsw i64 %i.ak, -64                  ; 3 uses
  %i.am = lshr exact i64 %i.al, 6
  %i.an = add nuw nsw i64 %i.am, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.al, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = add nsw i64 %i.ak, -64
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.aq
  %scevgep76 = getelementptr i8, ptr %i.ai, i64 %i.aq
  %bound0 = icmp ult ptr %i.ag, %scevgep76
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.al, 960
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 576460752303423472      ; 4 uses
  %i.ar = shl i64 %n.vec, 6                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = and i64 %index, 288230376151711728      ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.au, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load78 = load <4 x i64>, ptr %i.av, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load79 = load <4 x i64>, ptr %i.aw, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load80 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.at ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %wide.load81 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !31, !alias.scope !82
  %wide.load82 = load <4 x i64>, ptr %i.az, align 8, !tbaa !31, !alias.scope !82
  %wide.load83 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !31, !alias.scope !82
  %wide.load84 = load <4 x i64>, ptr %i.bb, align 8, !tbaa !31, !alias.scope !82
  %i.bc = or <4 x i64> %wide.load81, %wide.load
  %i.bd = or <4 x i64> %wide.load82, %wide.load78
  %i.be = or <4 x i64> %wide.load83, %wide.load79
  %i.bf = or <4 x i64> %wide.load84, %wide.load80
  store <4 x i64> %i.bc, ptr %i.au, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.bd, ptr %i.av, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.be, ptr %i.aw, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.bf, ptr %i.ax, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.an, 576460752303423484    ; 3 uses
  %i.bh = shl i64 %n.vec87, 6                     ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = and i64 %index88, 288230376151711740    ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bj ; 2 uses
  %wide.load89 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bj
  %wide.load90 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !31, !alias.scope !82
  %i.bm = or <4 x i64> %wide.load90, %wide.load89
  store <4 x i64> %i.bm, ptr %i.bk, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %index.next91 = add nuw i64 %index88, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.an, %n.vec87
  br i1 %cmp.n92, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv56.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %.not34.i.i.i = icmp eq i32 %i.y, %i.aj
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit, label %bb.n

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph.i.i.i ], [ %indvars.iv56.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bo = lshr exact i64 %indvars.iv56, 6         ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bo
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !31
  %i.bt = or i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ak
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !90

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bu = lshr i32 %i.y, 6
  %i.bv = and i32 %i.y, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.bw      ; 2 uses
  %i.bx = xor i64 %notmask.i36.i.i.i, -1
  %i.by = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !31 ; 2 uses
  %i.cb = and i64 %i.ca, %notmask.i36.i.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.by
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !31
  %i.ce = or i64 %i.cd, %i.ca
  %i.cf = and i64 %i.ce, %i.bx
  %i.cg = or disjoint i64 %i.cf, %i.cb
  store i64 %i.cg, ptr %i.bz, align 8, !tbaa !31
  br label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

bb.o:                                             ; preds = %bb.k
  %i.ch = fadd double %i.aa, %i.ad
  %i.ci = fmul double %i.aa, 3.000000e+00
  %i.cj = fmul double %i.ci, %i.ad
  %i.ck = fsub double %i.ch, %i.cj
  %i.cl = fmul double %i.aa, 2.000000e+00         ; 2 uses
  %i.cm = fmul double %i.cl, %i.ad
  %i.cn = fsub double 1.000000e+00, %i.cm
  %i.co = fdiv double %i.ck, %i.cn                ; 2 uses
  %i.cp = fmul double %i.co, 2.000000e+00
  %i.cq = fsub double 1.000000e+00, %i.cp         ; 2 uses
  %i.cr = fsub double 1.000000e+00, %i.cl
  %i.cs = fmul double %i.ad, 2.000000e+00
  %i.ct = fsub double 1.000000e+00, %i.cs
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fdiv double %i.cq, %i.cu                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !30, !range !91, !noundef !92
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 5489, ptr %i.da, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %store_forwarded = phi i64 [ 5489, %bb.p ], [ %i.dl, %bb.r ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.p ], [ %i.dm, %bb.r ] ; 4 uses
  %i.db = getelementptr [8 x i8], ptr %i.da, i64 %.011.i.i.i.i
  %i.dc = lshr i64 %store_forwarded, 62
  %i.dd = xor i64 %i.dc, %store_forwarded
  %i.de = mul i64 %i.dd, 6364136223846793005
  %i.df = add i64 %i.de, %.011.i.i.i.i            ; 3 uses
  store i64 %i.df, ptr %i.db, align 8, !tbaa !31
  %i.dg = add nuw nsw i64 %.011.i.i.i.i, 1        ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dg, 312
  br i1 %exitcond.not.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr [8 x i8], ptr %i.da, i64 %i.dg
  %i.di = lshr i64 %i.df, 62
  %i.dj = xor i64 %i.di, %i.df
  %i.dk = mul i64 %i.dj, 6364136223846793005
  %i.dl = add i64 %i.dk, %i.dg                    ; 2 uses
  store i64 %i.dl, ptr %i.dh, align 8, !tbaa !31
  %i.dm = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.q

_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 2504
  store i64 312, ptr %i.dn, align 8, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyE, i64 16), ptr %i.cw, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2504) %i.do, ptr noundef nonnull align 8 dereferenceable(2504) %i.da, i64 2504, i1 false), !tbaa.struct !37
  store i8 1, ptr %i.cx, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.o
  %i.dp = icmp sgt i32 %i.y, 0
  br i1 %i.dp, label %.lr.ph, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

.lr.ph:                                           ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ds = fsub double 1.000000e+00, %i.aa
  %i.dt = fsub double 1.000000e+00, %i.ad
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next62, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit ] ; 6 uses
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  %i.dv = lshr i64 %indvars.iv61, 6               ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !31
  %i.dy = and i64 %indvars.iv61, 63
  %i.dz = shl nuw i64 1, %i.dy                    ; 2 uses
  %i.ea = and i64 %i.dx, %i.dz
  %.not53 = icmp eq i64 %i.ea, 0
  %i.eb = select i1 %.not53, double 0.000000e+00, double 1.000000e+00
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !47
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dv
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !31
  %i.ef = and i64 %i.ee, %i.dz
  %.not54 = icmp eq i64 %i.ef, 0
  %i.eg = select i1 %.not54, double 0.000000e+00, double 1.000000e+00
  %i.eh = fsub double %i.ds, %i.eb
  %i.ei = fmul double %i.cv, %i.eh
  %i.ej = fsub double %i.dt, %i.eg
  %i.ek = fmul double %i.ei, %i.ej
  %i.el = fsub double %i.cq, %i.ek
  %i.em = fmul double %i.cv, %i.el
  %i.en = fadd double %i.co, %i.em                ; 2 uses
  %i.eo = fcmp ogt double %i.en, 0.000000e+00
  %.sroa.speculated44 = select i1 %i.eo, double %i.en, double 0.000000e+00 ; 2 uses
  %i.ep = fcmp olt double %.sroa.speculated44, 1.000000e+00
  %.sroa.speculated = select i1 %i.ep, double %.sroa.speculated44, double 1.000000e+00
  %i.eq = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(2512) %i.cw, double noundef %.sroa.speculated)
  %i.et = lshr i64 %indvars.iv61, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !38  ; 2 uses
  br i1 %i.es, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ew = trunc i64 %indvars.iv61 to i8
  %i.ex = and i8 %i.ew, 7
  %i.ey = shl nuw i8 1, %i.ex
  %i.ez = or i8 %i.ev, %i.ey
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

bb.v:                                             ; preds = %bb.t
  %i.fa = and i64 %indvars.iv61, 7
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !38
  %i.fd = and i8 %i.fc, %i.ev
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit:    ; preds = %bb.u, %bb.v
  %.sink.i = phi i8 [ %i.fd, %bb.v ], [ %i.ez, %bb.u ]
  store i8 %.sink.i, ptr %i.eu, align 1, !tbaa !38
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit, label %bb.t, !llvm.loop !93

_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit: ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit
  %.pre = load double, ptr %i.z, align 8, !tbaa !27
  br label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

_ZN8facebook5velox4bits6orBitsEPmPKmii.exit:      ; preds = %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit, %bb.s, %bb.n, %._crit_edge.i.i.i, %bb.l
  %i.fe = phi double [ %.pre, %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit ], [ %i.aa, %bb.s ], [ %i.aa, %bb.n ], [ %i.aa, %._crit_edge.i.i.i ], [ %i.aa, %bb.l ] ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load double, ptr %7, align 8, !tbaa !27 ; 3 uses
  %i.fg = fadd double %i.fe, %i.ff
  %i.fh = fmul double %i.fe, 3.000000e+00
  %i.fi = fmul double %i.fh, %i.ff
  %i.fj = fsub double %i.fg, %i.fi
  %i.fk = fmul double %i.fe, 2.000000e+00
  %i.fl = fmul double %i.fk, %i.ff
  %i.fm = fsub double 1.000000e+00, %i.fl
  %i.fn = fdiv double %i.fj, %i.fm
  store double %i.fn, ptr %i.z, align 8, !tbaa !27
  ret void

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEd(ptr noundef nonnull align 8 dereferenceable(2584) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.49", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.facebook::velox::functions::sfm::SecureRandomizationStrategy", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdE18veloxCheckFailArgs, ptr noundef nonnull @.str.13) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !27
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.26) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ule double %1, 0.000000e+00
  br i1 %i.g, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !94
  store double %1, ptr %2, align 16, !tbaa !38, !noalias !94
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.h, align 16, !tbaa !38, !alias.scope !97, !noalias !94
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.28, i64 66, i64 26, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !94
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.28) #18
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.m = load i64, ptr %i.k, align 8, !tbaa !38
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.e
  %i.o = fcmp oeq double %1, +inf
  br i1 %i.o, label %_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call double @exp(double noundef %1) #19, !tbaa !3
  %i.q = fadd double %i.p, 1.000000e+00
  %i.r = fdiv double 1.000000e+00, %i.q
  br label %_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit

_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi double [ %i.r, %bb.j ], [ 0.000000e+00, %bb.i ]
  store double %.0.i, ptr %i.d, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.u = load i8, ptr %i.t, align 8, !tbaa !30, !range !91, !noundef !92
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26
  %i.y = load i32, ptr %0, align 8, !tbaa !7
  %i.z = mul nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_36MersenneTwisterRandomizationStrategyEEEDaRT_.exit"

.lr.ph.i:                                         ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i
  %.01.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ap, %bb.n ] ; 3 uses
  %i.ac = load double, ptr %i.d, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(2512) %i.s, double noundef %i.ac), !inline_history !100
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ah = trunc i32 %.01.i to i8
  %i.ai = and i8 %i.ah, 7
  %i.aj = shl nuw i8 1, %i.ai
  %i.ak = lshr i32 %.01.i, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !38
  %i.ao = xor i8 %i.an, %i.aj
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = add nuw nsw i32 %.01.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ap, %i.z
  br i1 %exitcond.not.i, label %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_36MersenneTwisterRandomizationStrategyEEEDaRT_.exit", label %bb.l, !llvm.loop !101

bb.o:                                             ; preds = %_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox9functions3sfm27SecureRandomizationStrategyE, i64 16), ptr %4, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !26
  %i.as = load i32, ptr %0, align 8, !tbaa !7
  %i.at = mul nsw i32 %i.as, %i.ar                ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i5, label %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_27SecureRandomizationStrategyEEEDaRT_.exit"

.lr.ph.i5:                                        ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i5
  %.01.i6 = phi i32 [ 0, %.lr.ph.i5 ], [ %i.bj, %bb.r ] ; 3 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !27
  %i.ax = load ptr, ptr %4, align 8, !tbaa !35
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %i.aw), !inline_history !102
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.bb = trunc i32 %.01.i6 to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = lshr i32 %.01.i6, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !38
  %i.bi = xor i8 %i.bh, %i.bd
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = add nuw nsw i32 %.01.i6, 1              ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.bj, %i.at
  br i1 %exitcond.not.i7, label %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_27SecureRandomizationStrategyEEEDaRT_.exit", label %bb.p, !llvm.loop !103

"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_27SecureRandomizationStrategyEEEDaRT_.exit": ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_36MersenneTwisterRandomizationStrategyEEEDaRT_.exit"

"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_36MersenneTwisterRandomizationStrategyEEEDaRT_.exit": ; preds = %bb.n, %bb.k, %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_27SecureRandomizationStrategyEEEDaRT_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %i.e = load i32, ptr %0, align 8, !tbaa !7
  %i.f = mul nsw i32 %i.e, %i.d                   ; 5 uses
  %.not.i.i = icmp sgt i32 %i.f, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.f, 2147483584                 ; 3 uses
  %.not3342.i.i = icmp eq i32 %i.g, 0
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.b
end_hunk_0
