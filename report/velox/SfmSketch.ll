inline.NumInlined: 374
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8facebook5velox9functions3sfm9SfmSketch16addIndexAndZerosEii:bb.a
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
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8         ; 6 uses
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
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.at, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load78 = load <4 x i64>, ptr %i.au, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load79 = load <4 x i64>, ptr %i.av, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load80 = load <4 x i64>, ptr %i.aw, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %wide.load81 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !31, !alias.scope !82
  %wide.load82 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !31, !alias.scope !82
  %wide.load83 = load <4 x i64>, ptr %i.az, align 8, !tbaa !31, !alias.scope !82
  %wide.load84 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !31, !alias.scope !82
  %i.bb = or <4 x i64> %wide.load81, %wide.load
  %i.bc = or <4 x i64> %wide.load82, %wide.load78
  %i.bd = or <4 x i64> %wide.load83, %wide.load79
  %i.be = or <4 x i64> %wide.load84, %wide.load80
  store <4 x i64> %i.bb, ptr %i.at, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.bc, ptr %i.au, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.bd, ptr %i.av, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.be, ptr %i.aw, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.an, 576460752303423484    ; 3 uses
  %i.bg = shl i64 %n.vec87, 6                     ; 2 uses
  %i.bh = or disjoint i64 %i.bg, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index88 ; 2 uses
  %wide.load89 = load <4 x i64>, ptr %i.bi, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index88
  %wide.load90 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !31, !alias.scope !82
  %i.bk = or <4 x i64> %wide.load90, %wide.load89
  store <4 x i64> %i.bk, ptr %i.bi, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %index.next91 = add nuw i64 %index88, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.an, %n.vec87
  br i1 %cmp.n92, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv56.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %.not34.i.i.i = icmp eq i32 %i.y, %i.aj
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit, label %bb.n

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph.i.i.i ], [ %indvars.iv56.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bm = lshr exact i64 %indvars.iv56, 6         ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bm
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = or i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.bn, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ak
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !90

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bs = lshr i32 %i.y, 6
  %i.bt = and i32 %i.y, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.bu      ; 2 uses
  %i.bv = xor i64 %notmask.i36.i.i.i, -1
  %i.bw = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !31 ; 2 uses
  %i.bz = and i64 %i.by, %notmask.i36.i.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bw
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !31
  %i.cc = or i64 %i.cb, %i.by
  %i.cd = and i64 %i.cc, %i.bv
  %i.ce = or disjoint i64 %i.cd, %i.bz
  store i64 %i.ce, ptr %i.bx, align 8, !tbaa !31
  br label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

bb.o:                                             ; preds = %bb.k
  %i.cf = fadd double %i.aa, %i.ad
  %i.cg = fmul double %i.aa, 3.000000e+00
  %i.ch = fmul double %i.cg, %i.ad
  %i.ci = fsub double %i.cf, %i.ch
  %i.cj = fmul double %i.aa, 2.000000e+00         ; 2 uses
  %i.ck = fmul double %i.cj, %i.ad
  %i.cl = fsub double 1.000000e+00, %i.ck
  %i.cm = fdiv double %i.ci, %i.cl                ; 2 uses
  %i.cn = fmul double %i.cm, 2.000000e+00
  %i.co = fsub double 1.000000e+00, %i.cn         ; 2 uses
  %i.cp = fsub double 1.000000e+00, %i.cj
  %i.cq = fmul double %i.ad, 2.000000e+00
  %i.cr = fsub double 1.000000e+00, %i.cq
  %i.cs = fmul double %i.cp, %i.cr
  %i.ct = fdiv double %i.co, %i.cs                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !30, !range !91, !noundef !92
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 5489, ptr %i.cy, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %store_forwarded = phi i64 [ 5489, %bb.p ], [ %i.dj, %bb.r ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.p ], [ %i.dk, %bb.r ] ; 4 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %.011.i.i.i.i
  %i.da = lshr i64 %store_forwarded, 62
  %i.db = xor i64 %i.da, %store_forwarded
  %i.dc = mul i64 %i.db, 6364136223846793005
  %i.dd = add i64 %i.dc, %.011.i.i.i.i            ; 3 uses
  store i64 %i.dd, ptr %i.cz, align 8, !tbaa !31
  %i.de = add nuw nsw i64 %.011.i.i.i.i, 1        ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.de, 312
  br i1 %exitcond.not.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr [8 x i8], ptr %i.cy, i64 %i.de
  %i.dg = lshr i64 %i.dd, 62
  %i.dh = xor i64 %i.dg, %i.dd
  %i.di = mul i64 %i.dh, 6364136223846793005
  %i.dj = add i64 %i.di, %i.de                    ; 2 uses
  store i64 %i.dj, ptr %i.df, align 8, !tbaa !31
  %i.dk = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.q

_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 2504
  store i64 312, ptr %i.dl, align 8, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyE, i64 16), ptr %i.cu, align 8, !tbaa !35
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2504) %i.dm, ptr noundef nonnull align 8 dereferenceable(2504) %i.cy, i64 2504, i1 false), !tbaa.struct !37
  store i8 1, ptr %i.cv, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.o
  %i.dn = icmp sgt i32 %i.y, 0
  br i1 %i.dn, label %.lr.ph, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

.lr.ph:                                           ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dq = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.ad, i64 1
  %i.ds = fsub <2 x double> splat (double 1.000000e+00), %i.dr
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next62, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit ] ; 6 uses
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !47 ; 2 uses
  %i.du = lshr i64 %indvars.iv61, 6               ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !31
  %i.dx = and i64 %indvars.iv61, 63
  %i.dy = shl nuw i64 1, %i.dx                    ; 2 uses
  %i.dz = load ptr, ptr %i.dp, align 8, !tbaa !47
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.du
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !31
  %i.ec = and i64 %i.eb, %i.dy
  %i.ed = and i64 %i.dw, %i.dy
  %i.ee = insertelement <2 x i64> poison, i64 %i.ed, i64 0
  %i.ef = insertelement <2 x i64> %i.ee, i64 %i.ec, i64 1
  %i.eg = icmp eq <2 x i64> %i.ef, zeroinitializer
  %i.eh = select <2 x i1> %i.eg, <2 x double> zeroinitializer, <2 x double> splat (double 1.000000e+00)
  %i.ei = fsub <2 x double> %i.ds, %i.eh          ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = fmul double %i.ct, %i.ej
  %i.el = extractelement <2 x double> %i.ei, i64 1
  %i.em = fmul double %i.ek, %i.el
  %i.en = fsub double %i.co, %i.em
  %i.eo = fmul double %i.ct, %i.en
  %i.ep = fadd double %i.cm, %i.eo                ; 2 uses
  %i.eq = fcmp ogt double %i.ep, 0.000000e+00
  %.sroa.speculated44 = select i1 %i.eq, double %i.ep, double 0.000000e+00 ; 2 uses
  %i.er = fcmp olt double %.sroa.speculated44, 1.000000e+00
  %.sroa.speculated = select i1 %i.er, double %.sroa.speculated44, double 1.000000e+00
  %i.es = load ptr, ptr %i.cu, align 8, !tbaa !35
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(2512) %i.cu, double noundef %.sroa.speculated)
  %i.ev = lshr i64 %indvars.iv61, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ev ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !38  ; 2 uses
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ey = trunc i64 %indvars.iv61 to i8
  %i.ez = and i8 %i.ey, 7
  %i.fa = shl nuw i8 1, %i.ez
  %i.fb = or i8 %i.ex, %i.fa
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

bb.v:                                             ; preds = %bb.t
  %i.fc = and i64 %indvars.iv61, 7
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !38
  %i.ff = and i8 %i.fe, %i.ex
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit:    ; preds = %bb.u, %bb.v
  %.sink.i = phi i8 [ %i.ff, %bb.v ], [ %i.fb, %bb.u ]
  store i8 %.sink.i, ptr %i.ew, align 1, !tbaa !38
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit, label %bb.t, !llvm.loop !93

_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit: ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit
  %.pre = load double, ptr %i.z, align 8, !tbaa !27
  br label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

_ZN8facebook5velox4bits6orBitsEPmPKmii.exit:      ; preds = %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit, %bb.s, %bb.n, %._crit_edge.i.i.i, %bb.l
  %i.fg = phi double [ %.pre, %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit ], [ %i.aa, %bb.s ], [ %i.aa, %bb.n ], [ %i.aa, %._crit_edge.i.i.i ], [ %i.aa, %bb.l ] ; 3 uses
  %i.fh = load double, ptr %i.ac, align 8, !tbaa !27 ; 3 uses
  %i.fi = fadd double %i.fg, %i.fh
  %i.fj = fmul double %i.fg, 3.000000e+00
  %i.fk = fmul double %i.fj, %i.fh
  %i.fl = fsub double %i.fi, %i.fk
  %i.fm = fmul double %i.fg, 2.000000e+00
  %i.fn = fmul double %i.fm, %i.fh
  %i.fo = fsub double 1.000000e+00, %i.fn
  %i.fp = fdiv double %i.fl, %i.fo
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEd:bb.a
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
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = add nsw i64 %i.h, -64                    ; 3 uses
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.i, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.i, 960
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.k, 12
  %n.vec = and i64 %i.k, 576460752303423472       ; 4 uses
  %i.l = shl i64 %n.vec, 6                        ; 2 uses
  %i.m = or disjoint i64 %i.l, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.n = shl nuw nsw i64 %index, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %wide.load = load <4 x i64>, ptr %i.o, align 8, !tbaa !31
  %wide.load11 = load <4 x i64>, ptr %i.p, align 8, !tbaa !31
  %wide.load12 = load <4 x i64>, ptr %i.q, align 8, !tbaa !31
  %wide.load13 = load <4 x i64>, ptr %i.r, align 8, !tbaa !31
  %i.s = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.t = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load11)
  %i.u = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load12)
  %i.v = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load13)
  %i.w = trunc nuw nsw <4 x i64> %i.s to <4 x i32>
  %i.x = trunc nuw nsw <4 x i64> %i.t to <4 x i32>
  %i.y = trunc nuw nsw <4 x i64> %i.u to <4 x i32>
  %i.z = trunc nuw nsw <4 x i64> %i.v to <4 x i32>
  %i.aa = add <4 x i32> %vec.phi, %i.w            ; 2 uses
  %i.ab = add <4 x i32> %vec.phi8, %i.x           ; 2 uses
  %i.ac = add <4 x i32> %vec.phi9, %i.y           ; 2 uses
  %i.ad = add <4 x i32> %vec.phi10, %i.z          ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ab, %i.aa
  %bin.rdx14 = add <4 x i32> %i.ac, %bin.rdx
  %bin.rdx15 = add <4 x i32> %i.ad, %bin.rdx14
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx15) ; 3 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.af, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.k, 576460752303423484     ; 3 uses
  %i.ag = shl i64 %n.vec18, 6                     ; 2 uses
  %i.ah = or disjoint i64 %i.ag, 64
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi20 = phi <4 x i32> [ %i.ai, %vec.epilog.ph ], [ %i.an, %vec.epilog.vector.body ]
  %i.aj = shl nuw nsw i64 %index19, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  %wide.load21 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !31
  %i.al = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load21)
  %i.am = trunc nuw nsw <4 x i64> %i.al to <4 x i32>
  %i.an = add <4 x i32> %vec.phi20, %i.am         ; 2 uses
  %index.next22 = add nuw i64 %index19, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next22, %n.vec18
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.an) ; 2 uses
  %cmp.n23 = icmp eq i64 %i.k, %n.vec18
  br i1 %cmp.n23, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1.ph = phi i64 [ 0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.1.i = phi i32 [ 0, %bb.b ], [ %i.ap, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %i.aw, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %i.f, %i.g
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %.sink.split.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %.lr.ph.i.i ], [ %indvars.iv1.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.ar = lshr exact i64 %indvars.iv1, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !31
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.at)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = add nuw nsw i32 %i.aq, %i.av            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv, %i.h
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !106

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i
  %i.ax = lshr i32 %i.f, 6
  %i.ay = and i32 %i.f, 63
  %i.az = zext nneg i32 %i.ay to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i36.i.i, -1
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.be = and i64 %i.bd, %i.ba
  %i.bf = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.be)
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = add nsw i32 %.1.i, %i.bg
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %bb.a, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.bh, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %bb.a ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK8facebook5velox9functions3sfm9SfmSketch11cardinalityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.50", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions3sfm9SfmSketch11cardinalityEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.13) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !26
  %i.h = load i32, ptr %0, align 8, !tbaa !7
  %i.i = mul nsw i32 %i.h, %i.g                   ; 5 uses
  %.not.i.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.i, 2147483584                 ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = add nsw i64 %i.k, -64                    ; 3 uses
  %i.m = lshr exact i64 %i.l, 6
  %i.n = add nuw nsw i64 %i.m, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.l, 960
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.n, 12
  %n.vec = and i64 %i.n, 576460752303423472       ; 4 uses
  %i.o = shl i64 %n.vec, 6                        ; 2 uses
  %i.p = or disjoint i64 %i.o, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi35 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi36 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.q = shl nuw nsw i64 %index, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %wide.load = load <4 x i64>, ptr %i.r, align 8, !tbaa !31
  %wide.load37 = load <4 x i64>, ptr %i.s, align 8, !tbaa !31
  %wide.load38 = load <4 x i64>, ptr %i.t, align 8, !tbaa !31
  %wide.load39 = load <4 x i64>, ptr %i.u, align 8, !tbaa !31
  %i.v = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.w = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load37)
  %i.x = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load38)
  %i.y = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load39)
  %i.z = trunc nuw nsw <4 x i64> %i.v to <4 x i32>
  %i.aa = trunc nuw nsw <4 x i64> %i.w to <4 x i32>
  %i.ab = trunc nuw nsw <4 x i64> %i.x to <4 x i32>
  %i.ac = trunc nuw nsw <4 x i64> %i.y to <4 x i32>
  %i.ad = add <4 x i32> %vec.phi, %i.z            ; 2 uses
  %i.ae = add <4 x i32> %vec.phi34, %i.aa         ; 2 uses
  %i.af = add <4 x i32> %vec.phi35, %i.ab         ; 2 uses
  %i.ag = add <4 x i32> %vec.phi36, %i.ac         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ae, %i.ad
  %bin.rdx40 = add <4 x i32> %i.af, %bin.rdx
  %bin.rdx41 = add <4 x i32> %i.ag, %bin.rdx40
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx41) ; 3 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ai, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.n, 576460752303423484     ; 3 uses
  %i.aj = shl i64 %n.vec44, 6                     ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 64
  %i.al = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi46 = phi <4 x i32> [ %i.al, %vec.epilog.ph ], [ %i.aq, %vec.epilog.vector.body ]
  %i.am = shl nuw nsw i64 %index45, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am
  %wide.load47 = load <4 x i64>, ptr %i.an, align 8, !tbaa !31
  %i.ao = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load47)
  %i.ap = trunc nuw nsw <4 x i64> %i.ao to <4 x i32>
  %i.aq = add <4 x i32> %vec.phi46, %i.ap         ; 2 uses
  %index.next48 = add nuw i64 %index45, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next48, %n.vec44
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aq) ; 2 uses
  %cmp.n49 = icmp eq i64 %i.n, %n.vec44
  br i1 %cmp.n49, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1.i.ph = phi i64 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.d
  %.1.i.i = phi i32 [ 0, %bb.d ], [ %i.as, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %i.az, %.lr.ph.i.i.i ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.i, %i.j
  br i1 %.not34.i.i.i, label %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit, label %.sink.split.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv1.i = phi i64 [ %indvars.iv.next2.i, %.lr.ph.i.i.i ], [ %indvars.iv1.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.at = phi i32 [ %i.az, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ]
  %i.au = lshr exact i64 %indvars.iv1.i, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aw)
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = add nuw nsw i32 %i.at, %i.ay            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64
  %.not33.i.i.not.i = icmp samesign ult i64 %indvars.iv.i, %i.k
  %indvars.iv.next2.i = add nuw nsw i64 %indvars.iv1.i, 64
  br i1 %.not33.i.i.not.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !109

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ba = lshr i32 %i.i, 6
  %i.bb = and i32 %i.i, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.bc
  %i.bd = xor i64 %notmask.i36.i.i.i, -1
  %i.be = zext nneg i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !31
  %i.bh = and i64 %i.bg, %i.bd
  %i.bi = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.bh)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = add nsw i32 %.1.i.i, %i.bj
  br label %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit

_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit: ; preds = %._crit_edge.i.i.i, %.sink.split.i.i.i
  %.3.i.i = phi i32 [ %i.bk, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ]
  %i.bl = icmp eq i32 %.3.i.i, 0
  br i1 %i.bl, label %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit, %.preheader
  %.01023 = phi i32 [ %i.br, %.preheader ], [ 0, %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit ] ; 2 uses
  %.02022 = phi double [ %i.bq, %.preheader ], [ 1.000000e+00, %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit ] ; 3 uses
  %i.bm = tail call noundef double @_ZNK8facebook5velox9functions3sfm9SfmSketch28logLikelihoodFirstDerivativeEd(ptr noundef nonnull align 8 dereferenceable(2584) %0, double noundef %.02022)
  %i.bn = fneg double %i.bm
  %i.bo = tail call noundef double @_ZNK8facebook5velox9functions3sfm9SfmSketch29logLikelihoodSecondDerivativeEd(ptr noundef nonnull align 8 dereferenceable(2584) %0, double noundef %.02022)
  %i.bp = fdiv double %i.bn, %i.bo                ; 2 uses
  %i.bq = fadd double %.02022, %i.bp              ; 4 uses
  %i.br = add nuw nsw i32 %.01023, 1
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.bp)
  %i.bt = fcmp ogt double %i.bs, 1.000000e-01
  %i.bu = icmp samesign ult i32 %.01023, 999
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.preheader, label %bb.e, !llvm.loop !110

bb.e:                                             ; preds = %.preheader
  %i.bw = fcmp uno double %i.bq, 0.000000e+00
  br i1 %i.bw, label %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = fcmp ogt double %i.bq, 0.000000e+00
  %.sroa.speculated = select i1 %i.bx, double %i.bq, double 0.000000e+00
  %i.by = tail call double @llvm.round.f64(double %.sroa.speculated) ; 3 uses
  %i.bz = fcmp uge double %i.by, f0x43E0000000000000
  br i1 %i.bz, label %bb.g, label %bb.j, !prof !28

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19, !noalias !111
  store double %i.by, ptr %1, align 16, !tbaa !38, !alias.scope !114, !noalias !111
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double f0x43E0000000000000, ptr %i.ca, align 16, !tbaa !38, !alias.scope !114, !noalias !111
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.31, i64 11, i64 170, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !111
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions3sfm9SfmSketch11cardinalityEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.31) #18
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !38
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.cb

bb.j:                                             ; preds = %bb.f
  %i.ch = fptosi double %i.by to i64
  br label %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit.thread

_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit.thread: ; preds = %bb.c, %bb.j, %bb.e, %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit
  %.1 = phi i64 [ 0, %bb.e ], [ 0, %_ZNK8facebook5velox9functions3sfm9SfmSketch9countBitsEv.exit ], [ %i.ch, %bb.j ], [ 0, %bb.c ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZNK8facebook5velox9functions3sfm9SfmSketch28logLikelihoodFirstDerivativeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2584) %0, double noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge25:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret double %.0.lcssa

bb.b:                                             ; preds = %.lr.ph24, %._crit_edge
  %.022 = phi double [ 0.000000e+00, %.lr.ph24 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.01621 = phi i32 [ 0, %.lr.ph24 ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.f = add nuw nsw i32 %.01621, 1               ; 3 uses
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = fneg double %i.g                         ; 2 uses
  %exp2.i.i = tail call double @exp2(double %i.h) #19
  %i.i = load i32, ptr %0, align 8, !tbaa !7
  %i.j = load double, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %i.k = fsub double 1.000000e+00, %i.j           ; 3 uses
  %i.l = sitofp i32 %i.i to double
  %i.m = fdiv double %exp2.i.i, %i.l              ; 2 uses
  %i.n = fsub double %i.k, %i.j
  %i.o = fneg double %i.m
  %i.p = tail call double @log1p(double noundef %i.o) #19, !tbaa !3
  %i.q = fsub double 1.000000e+00, %i.m
  %i.r = tail call double @pow(double noundef %i.q, double noundef %1) #19, !tbaa !3
  %i.s = fmul double %i.n, %i.r
  %i.t = fsub double %i.k, %i.s
  %i.u = fdiv double %i.k, %i.t
  %i.v = fsub double 1.000000e+00, %i.u
  %i.w = fmul double %i.p, %i.v                   ; 3 uses
  %exp2.i.i18 = tail call double @exp2(double %i.h) #19
  %i.x = load i32, ptr %0, align 8, !tbaa !7
  %i.y = load double, ptr %i.d, align 8, !tbaa !27 ; 3 uses
  %i.z = fadd double %i.y, -1.000000e+00
  %i.aa = fadd double %i.z, 1.000000e+00          ; 2 uses
  %.pre.i = fsub double 1.000000e+00, %i.y
  %i.ab = sitofp i32 %i.x to double
  %i.ac = fdiv double %exp2.i.i18, %i.ab          ; 2 uses
  %i.ad = fsub double %.pre.i, %i.y
  %i.ae = fneg double %i.ac
  %i.af = tail call double @log1p(double noundef %i.ae) #19, !tbaa !3
  %i.ag = fsub double 1.000000e+00, %i.ac
  %i.ah = tail call double @pow(double noundef %i.ag, double noundef %1) #19, !tbaa !3
  %i.ai = fmul double %i.ah, %i.ad
  %i.aj = fadd double %i.aa, %i.ai
  %i.ak = fdiv double %i.aa, %i.aj
  %i.al = fsub double 1.000000e+00, %i.ak
  %i.am = fmul double %i.af, %i.al                ; 3 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !7     ; 6 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ap = mul nuw nsw i32 %i.an, %.01621          ; 3 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !46  ; 3 uses
  %xtraiter = and i32 %i.an, 1
  %i.ar = icmp eq i32 %i.an, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.an, 2147483646
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_1
begin_hunk_2_@_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <4 x i64> %i.ax, ptr %i.d, align 8, !tbaa !31
  store <4 x i64> %i.ay, ptr %i.bb, align 8, !tbaa !31
  store <4 x i64> %i.az, ptr %i.bc, align 8, !tbaa !31
  store <4 x i64> %i.ba, ptr %i.bd, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, 144
  br i1 %i.be, label %vector.ph17, label %vector.body, !llvm.loop !128

vector.ph17:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %wide.load11, i64 3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bg = and i64 %vector.recur.extract, -2147483648
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !31 ; 3 uses
  %i.bj = and i64 %i.bi, 2147483646
  %i.bk = or disjoint i64 %i.bj, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !31
  %i.bn = lshr exact i64 %i.bk, 1
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bi, 1
  %.not20.i = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not20.i, i64 0, i64 -5403634167711393303
  %i.br = xor i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.bf, align 8, !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.bt = and i64 %i.bi, -2147483648
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !31 ; 3 uses
  %i.bw = and i64 %i.bv, 2147483646
  %i.bx = or disjoint i64 %i.bw, %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !31
  %i.ca = lshr exact i64 %i.bx, 1
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = and i64 %i.bv, 1
  %.not20.i.1 = icmp eq i64 %i.cc, 0
  %i.cd = select i1 %.not20.i.1, i64 0, i64 -5403634167711393303
  %i.ce = xor i64 %i.cb, %i.cd
  store i64 %i.ce, ptr %i.bs, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cg = and i64 %i.bv, -2147483648
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !31 ; 3 uses
  %i.cj = and i64 %i.ci, 2147483646
  %i.ck = or disjoint i64 %i.cj, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = lshr exact i64 %i.ck, 1
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = and i64 %i.ci, 1
  %.not20.i.2 = icmp eq i64 %i.cp, 0
  %i.cq = select i1 %.not20.i.2, i64 0, i64 -5403634167711393303
  %i.cr = xor i64 %i.co, %i.cq
  store i64 %i.cr, ptr %i.cf, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ct = and i64 %i.ci, -2147483648
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !31 ; 3 uses
  %i.cw = and i64 %i.cv, 2147483646
  %i.cx = or disjoint i64 %i.cw, %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !31
  %i.da = lshr exact i64 %i.cx, 1
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = and i64 %i.cv, 1
  %.not20.i.3 = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not20.i.3, i64 0, i64 -5403634167711393303
  %i.de = xor i64 %i.db, %i.dd
  store i64 %i.de, ptr %i.cs, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.dg = and i64 %i.cv, -2147483648
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !31 ; 3 uses
  %i.dj = and i64 %i.di, 2147483646
  %i.dk = or disjoint i64 %i.dj, %i.dg
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !31
  %i.dn = lshr exact i64 %i.dk, 1
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = and i64 %i.di, 1
  %.not20.i.4 = icmp eq i64 %i.dp, 0
  %i.dq = select i1 %.not20.i.4, i64 0, i64 -5403634167711393303
  %i.dr = xor i64 %i.do, %i.dq
  store i64 %i.dr, ptr %i.df, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.dt = and i64 %i.di, -2147483648
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !31 ; 3 uses
  %i.dw = and i64 %i.dv, 2147483646
  %i.dx = or disjoint i64 %i.dw, %i.dt
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !31
  %i.ea = lshr exact i64 %i.dx, 1
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = and i64 %i.dv, 1
  %.not20.i.5 = icmp eq i64 %i.ec, 0
  %i.ed = select i1 %.not20.i.5, i64 0, i64 -5403634167711393303
  %i.ee = xor i64 %i.eb, %i.ed
  store i64 %i.ee, ptr %i.ds, align 8, !tbaa !31
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.eg = and i64 %i.dv, -2147483648
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !31 ; 3 uses
  %i.ej = and i64 %i.ei, 2147483646
  %i.ek = or disjoint i64 %i.ej, %i.eg
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.em = load i64, ptr %i.el, align 8, !tbaa !31
  %i.en = lshr exact i64 %i.ek, 1
  %i.eo = xor i64 %i.en, %i.em
  %i.ep = and i64 %i.ei, 1
  %.not20.i.6 = icmp eq i64 %i.ep, 0
  %i.eq = select i1 %.not20.i.6, i64 0, i64 -5403634167711393303
  %i.er = xor i64 %i.eo, %i.eq
  store i64 %i.er, ptr %i.ef, align 8, !tbaa !31
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.et = and i64 %i.ei, -2147483648
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !31 ; 3 uses
  %i.ew = and i64 %i.ev, 2147483646
  %i.ex = or disjoint i64 %i.ew, %i.et
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !31
  %i.fa = lshr exact i64 %i.ex, 1
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = and i64 %i.ev, 1
  %.not20.i.7 = icmp eq i64 %i.fc, 0
  %i.fd = select i1 %.not20.i.7, i64 0, i64 -5403634167711393303
  %i.fe = xor i64 %i.fb, %i.fd
  store i64 %i.fe, ptr %i.es, align 8, !tbaa !31
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.fg = and i64 %i.ev, -2147483648
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !31 ; 3 uses
  %i.fj = and i64 %i.fi, 2147483646
  %i.fk = or disjoint i64 %i.fj, %i.fg
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !31
  %i.fn = lshr exact i64 %i.fk, 1
  %i.fo = xor i64 %i.fn, %i.fm
  %i.fp = and i64 %i.fi, 1
  %.not20.i.8 = icmp eq i64 %i.fp, 0
  %i.fq = select i1 %.not20.i.8, i64 0, i64 -5403634167711393303
  %i.fr = xor i64 %i.fo, %i.fq
  store i64 %i.fr, ptr %i.ff, align 8, !tbaa !31
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ft = and i64 %i.fi, -2147483648
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !31 ; 3 uses
  %i.fw = and i64 %i.fv, 2147483646
  %i.fx = or disjoint i64 %i.fw, %i.ft
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !31
  %i.ga = lshr exact i64 %i.fx, 1
  %i.gb = xor i64 %i.ga, %i.fz
  %i.gc = and i64 %i.fv, 1
  %.not20.i.9 = icmp eq i64 %i.gc, 0
  %i.gd = select i1 %.not20.i.9, i64 0, i64 -5403634167711393303
  %i.ge = xor i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.fs, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.gg = and i64 %i.fv, -2147483648
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !31 ; 3 uses
  %i.gj = and i64 %i.gi, 2147483646
  %i.gk = or disjoint i64 %i.gj, %i.gg
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !31
  %i.gn = lshr exact i64 %i.gk, 1
  %i.go = xor i64 %i.gn, %i.gm
  %i.gp = and i64 %i.gi, 1
  %.not20.i.10 = icmp eq i64 %i.gp, 0
  %i.gq = select i1 %.not20.i.10, i64 0, i64 -5403634167711393303
  %i.gr = xor i64 %i.go, %i.gq
  store i64 %i.gr, ptr %i.gf, align 8, !tbaa !31
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.gt = and i64 %i.gi, -2147483648
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !31 ; 2 uses
  %i.gw = and i64 %i.gv, 2147483646
  %i.gx = or disjoint i64 %i.gw, %i.gt
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !31
  %i.ha = lshr exact i64 %i.gx, 1
  %i.hb = xor i64 %i.ha, %i.gz
  %i.hc = and i64 %i.gv, 1
  %.not20.i.11 = icmp eq i64 %i.hc, 0
  %i.hd = select i1 %.not20.i.11, i64 0, i64 -5403634167711393303
  %i.he = xor i64 %i.hb, %i.hd
  store i64 %i.he, ptr %i.gs, align 8, !tbaa !31
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %vector.recur.init20 = insertelement <4 x i64> poison, i64 %.pre24.i, i64 3
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph17
  %index19 = phi i64 [ 0, %vector.ph17 ], [ %index.next30, %vector.body18 ] ; 3 uses
  %vector.recur21 = phi <4 x i64> [ %vector.recur.init20, %vector.ph17 ], [ %wide.load25, %vector.body18 ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index19 ; 8 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1248
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index19 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1256
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 1288
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 1320
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 1352
  %wide.load22 = load <4 x i64>, ptr %i.hi, align 8, !tbaa !31 ; 4 uses
  %wide.load23 = load <4 x i64>, ptr %i.hj, align 8, !tbaa !31 ; 4 uses
  %wide.load24 = load <4 x i64>, ptr %i.hk, align 8, !tbaa !31 ; 4 uses
  %wide.load25 = load <4 x i64>, ptr %i.hl, align 8, !tbaa !31 ; 5 uses
  %i.hm = shufflevector <4 x i64> %vector.recur21, <4 x i64> %wide.load22, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hn = shufflevector <4 x i64> %wide.load22, <4 x i64> %wide.load23, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ho = shufflevector <4 x i64> %wide.load23, <4 x i64> %wide.load24, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hp = shufflevector <4 x i64> %wide.load24, <4 x i64> %wide.load25, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hq = and <4 x i64> %i.hm, splat (i64 -2147483648)
  %i.hr = and <4 x i64> %i.hn, splat (i64 -2147483648)
  %i.hs = and <4 x i64> %i.ho, splat (i64 -2147483648)
  %i.ht = and <4 x i64> %i.hp, splat (i64 -2147483648)
  %i.hu = and <4 x i64> %wide.load22, splat (i64 2147483646)
  %i.hv = and <4 x i64> %wide.load23, splat (i64 2147483646)
  %i.hw = and <4 x i64> %wide.load24, splat (i64 2147483646)
  %i.hx = and <4 x i64> %wide.load25, splat (i64 2147483646)
  %i.hy = or disjoint <4 x i64> %i.hu, %i.hq
  %i.hz = or disjoint <4 x i64> %i.hv, %i.hr
  %i.ia = or disjoint <4 x i64> %i.hw, %i.hs
  %i.ib = or disjoint <4 x i64> %i.hx, %i.ht
  %i.ic = getelementptr i8, ptr %i.hf, i64 32
  %i.id = getelementptr i8, ptr %i.hf, i64 64
  %i.ie = getelementptr i8, ptr %i.hf, i64 96
  %wide.load26 = load <4 x i64>, ptr %i.hf, align 8, !tbaa !31
  %wide.load27 = load <4 x i64>, ptr %i.ic, align 8, !tbaa !31
  %wide.load28 = load <4 x i64>, ptr %i.id, align 8, !tbaa !31
  %wide.load29 = load <4 x i64>, ptr %i.ie, align 8, !tbaa !31
  %i.if = lshr exact <4 x i64> %i.hy, splat (i64 1)
  %i.ig = lshr exact <4 x i64> %i.hz, splat (i64 1)
  %i.ih = lshr exact <4 x i64> %i.ia, splat (i64 1)
  %i.ii = lshr exact <4 x i64> %i.ib, splat (i64 1)
  %i.ij = xor <4 x i64> %i.if, %wide.load26
  %i.ik = xor <4 x i64> %i.ig, %wide.load27
  %i.il = xor <4 x i64> %i.ih, %wide.load28
  %i.im = xor <4 x i64> %i.ii, %wide.load29
  %i.in = and <4 x i64> %wide.load22, splat (i64 1)
  %i.io = and <4 x i64> %wide.load23, splat (i64 1)
  %i.ip = and <4 x i64> %wide.load24, splat (i64 1)
  %i.iq = and <4 x i64> %wide.load25, splat (i64 1)
  %i.ir = icmp eq <4 x i64> %i.in, zeroinitializer
  %i.is = icmp eq <4 x i64> %i.io, zeroinitializer
  %i.it = icmp eq <4 x i64> %i.ip, zeroinitializer
  %i.iu = icmp eq <4 x i64> %i.iq, zeroinitializer
  %i.iv = select <4 x i1> %i.ir, <4 x i64> zeroinitializer, <4 x i64> splat (i64 -5403634167711393303)
  %i.iw = select <4 x i1> %i.is, <4 x i64> zeroinitializer, <4 x i64> splat (i64 -5403634167711393303)
  %i.ix = select <4 x i1> %i.it, <4 x i64> zeroinitializer, <4 x i64> splat (i64 -5403634167711393303)
  %i.iy = select <4 x i1> %i.iu, <4 x i64> zeroinitializer, <4 x i64> splat (i64 -5403634167711393303)
  %i.iz = xor <4 x i64> %i.ij, %i.iv
  %i.ja = xor <4 x i64> %i.ik, %i.iw
  %i.jb = xor <4 x i64> %i.il, %i.ix
  %i.jc = xor <4 x i64> %i.im, %i.iy
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hf, i64 1280
  %i.je = getelementptr inbounds nuw i8, ptr %i.hf, i64 1312
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hf, i64 1344
  store <4 x i64> %i.iz, ptr %i.hg, align 8, !tbaa !31
  store <4 x i64> %i.ja, ptr %i.jd, align 8, !tbaa !31
  store <4 x i64> %i.jb, ptr %i.je, align 8, !tbaa !31
  store <4 x i64> %i.jc, ptr %i.jf, align 8, !tbaa !31
  %index.next30 = add nuw i64 %index19, 16        ; 2 uses
  %i.jg = icmp eq i64 %index.next30, 144
  br i1 %i.jg, label %.preheader.i, label %vector.body18, !llvm.loop !129

.preheader.i:                                     ; preds = %vector.body18
  %vector.recur.extract32 = extractelement <4 x i64> %wide.load25, i64 3
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.ji = and i64 %vector.recur.extract32, -2147483648
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !31 ; 3 uses
  %i.jl = and i64 %i.jk, 2147483646
  %i.jm = or disjoint i64 %i.jl, %i.ji
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !31
  %i.jp = lshr exact i64 %i.jm, 1
  %i.jq = xor i64 %i.jp, %i.jo
  %i.jr = and i64 %i.jk, 1
  %.not19.i = icmp eq i64 %i.jr, 0
  %i.js = select i1 %.not19.i, i64 0, i64 -5403634167711393303
  %i.jt = xor i64 %i.jq, %i.js
  store i64 %i.jt, ptr %i.jh, align 8, !tbaa !31
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.jv = and i64 %i.jk, -2147483648
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !31 ; 3 uses
  %i.jy = and i64 %i.jx, 2147483646
  %i.jz = or disjoint i64 %i.jy, %i.jv
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !31
  %i.kc = lshr exact i64 %i.jz, 1
  %i.kd = xor i64 %i.kc, %i.kb
  %i.ke = and i64 %i.jx, 1
  %.not19.i.1 = icmp eq i64 %i.ke, 0
  %i.kf = select i1 %.not19.i.1, i64 0, i64 -5403634167711393303
  %i.kg = xor i64 %i.kd, %i.kf
  store i64 %i.kg, ptr %i.ju, align 8, !tbaa !31
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.ki = and i64 %i.jx, -2147483648
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !31 ; 3 uses
  %i.kl = and i64 %i.kk, 2147483646
  %i.km = or disjoint i64 %i.kl, %i.ki
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !31
  %i.kp = lshr exact i64 %i.km, 1
  %i.kq = xor i64 %i.kp, %i.ko
  %i.kr = and i64 %i.kk, 1
  %.not19.i.2 = icmp eq i64 %i.kr, 0
  %i.ks = select i1 %.not19.i.2, i64 0, i64 -5403634167711393303
  %i.kt = xor i64 %i.kq, %i.ks
  store i64 %i.kt, ptr %i.kh, align 8, !tbaa !31
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.kv = and i64 %i.kk, -2147483648
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !31 ; 3 uses
  %i.ky = and i64 %i.kx, 2147483646
  %i.kz = or disjoint i64 %i.ky, %i.kv
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !31
  %i.lc = lshr exact i64 %i.kz, 1
  %i.ld = xor i64 %i.lc, %i.lb
  %i.le = and i64 %i.kx, 1
  %.not19.i.3 = icmp eq i64 %i.le, 0
  %i.lf = select i1 %.not19.i.3, i64 0, i64 -5403634167711393303
  %i.lg = xor i64 %i.ld, %i.lf
  store i64 %i.lg, ptr %i.ku, align 8, !tbaa !31
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.li = and i64 %i.kx, -2147483648
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !31 ; 3 uses
  %i.ll = and i64 %i.lk, 2147483646
  %i.lm = or disjoint i64 %i.ll, %i.li
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !31
  %i.lp = lshr exact i64 %i.lm, 1
  %i.lq = xor i64 %i.lp, %i.lo
  %i.lr = and i64 %i.lk, 1
  %.not19.i.4 = icmp eq i64 %i.lr, 0
  %i.ls = select i1 %.not19.i.4, i64 0, i64 -5403634167711393303
  %i.lt = xor i64 %i.lq, %i.ls
  store i64 %i.lt, ptr %i.lh, align 8, !tbaa !31
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.lv = and i64 %i.lk, -2147483648
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !31 ; 3 uses
  %i.ly = and i64 %i.lx, 2147483646
  %i.lz = or disjoint i64 %i.ly, %i.lv
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !31
  %i.mc = lshr exact i64 %i.lz, 1
  %i.md = xor i64 %i.mc, %i.mb
  %i.me = and i64 %i.lx, 1
  %.not19.i.5 = icmp eq i64 %i.me, 0
  %i.mf = select i1 %.not19.i.5, i64 0, i64 -5403634167711393303
  %i.mg = xor i64 %i.md, %i.mf
  store i64 %i.mg, ptr %i.lu, align 8, !tbaa !31
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.mi = and i64 %i.lx, -2147483648
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !31 ; 3 uses
  %i.ml = and i64 %i.mk, 2147483646
  %i.mm = or disjoint i64 %i.ml, %i.mi
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !31
  %i.mp = lshr exact i64 %i.mm, 1
  %i.mq = xor i64 %i.mp, %i.mo
  %i.mr = and i64 %i.mk, 1
  %.not19.i.6 = icmp eq i64 %i.mr, 0
  %i.ms = select i1 %.not19.i.6, i64 0, i64 -5403634167711393303
  %i.mt = xor i64 %i.mq, %i.ms
  store i64 %i.mt, ptr %i.mh, align 8, !tbaa !31
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.mv = and i64 %i.mk, -2147483648
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !31 ; 3 uses
  %i.my = and i64 %i.mx, 2147483646
  %i.mz = or disjoint i64 %i.my, %i.mv
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !31
  %i.nc = lshr exact i64 %i.mz, 1
  %i.nd = xor i64 %i.nc, %i.nb
  %i.ne = and i64 %i.mx, 1
  %.not19.i.7 = icmp eq i64 %i.ne, 0
  %i.nf = select i1 %.not19.i.7, i64 0, i64 -5403634167711393303
  %i.ng = xor i64 %i.nd, %i.nf
  store i64 %i.ng, ptr %i.mu, align 8, !tbaa !31
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.ni = and i64 %i.mx, -2147483648
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !31 ; 3 uses
  %i.nl = and i64 %i.nk, 2147483646
  %i.nm = or disjoint i64 %i.nl, %i.ni
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !31
  %i.np = lshr exact i64 %i.nm, 1
  %i.nq = xor i64 %i.np, %i.no
  %i.nr = and i64 %i.nk, 1
  %.not19.i.8 = icmp eq i64 %i.nr, 0
  %i.ns = select i1 %.not19.i.8, i64 0, i64 -5403634167711393303
  %i.nt = xor i64 %i.nq, %i.ns
  store i64 %i.nt, ptr %i.nh, align 8, !tbaa !31
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.nv = and i64 %i.nk, -2147483648
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !31 ; 3 uses
  %i.ny = and i64 %i.nx, 2147483646
  %i.nz = or disjoint i64 %i.ny, %i.nv
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !31
  %i.oc = lshr exact i64 %i.nz, 1
  %i.od = xor i64 %i.oc, %i.ob
  %i.oe = and i64 %i.nx, 1
  %.not19.i.9 = icmp eq i64 %i.oe, 0
  %i.of = select i1 %.not19.i.9, i64 0, i64 -5403634167711393303
  %i.og = xor i64 %i.od, %i.of
  store i64 %i.og, ptr %i.nu, align 8, !tbaa !31
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.oi = and i64 %i.nx, -2147483648
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !31 ; 2 uses
  %i.ol = and i64 %i.ok, 2147483646
  %i.om = or disjoint i64 %i.ol, %i.oi
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !31
  %i.op = lshr exact i64 %i.om, 1
  %i.oq = xor i64 %i.op, %i.oo
  %i.or = and i64 %i.ok, 1
  %.not19.i.10 = icmp eq i64 %i.or, 0
  %i.os = select i1 %.not19.i.10, i64 0, i64 -5403634167711393303
  %i.ot = xor i64 %i.oq, %i.os
  store i64 %i.ot, ptr %i.oh, align 8, !tbaa !31
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !31
  %i.ow = and i64 %i.ov, -2147483648
  %i.ox = load i64, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.oy = and i64 %i.ox, 2147483646
  %i.oz = or disjoint i64 %i.oy, %i.ow
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !31
  %i.pc = lshr exact i64 %i.oz, 1
  %i.pd = xor i64 %i.pc, %i.pb
  %i.pe = and i64 %i.ox, 1
  %.not.i = icmp eq i64 %i.pe, 0
  %i.pf = select i1 %.not.i, i64 0, i64 -5403634167711393303
  %i.pg = xor i64 %i.pd, %i.pf
  store i64 %i.pg, ptr %i.ou, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %.preheader.i, %bb.a
  %i.ph = phi i64 [ 0, %.preheader.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.pi = add nuw nsw i64 %i.ph, 1
  store i64 %i.pi, ptr %i.a, align 8, !tbaa !33
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ph
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !31 ; 2 uses
  %i.pl = lshr i64 %i.pk, 29
  %i.pm = and i64 %i.pl, 22906492245
end_hunk_2
