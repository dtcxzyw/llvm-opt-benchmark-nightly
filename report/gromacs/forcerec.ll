Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcerec?download=true
inline.NumInlined: 1852
inline.NumDeleted: 1165
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@__clang_call_terminate:bb.a
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN18ForceHelperBuffersC2Eb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 56)) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  store i8 %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(540) ptr @_Znwm(i64 noundef 540) #31
          to label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit unwind label %bb.b ; 2 uses

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 540 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !28
  store ptr %i.g, ptr %i.d, align 8, !tbaa !29
  ret void

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.m) #29
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #29
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit4

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit4: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 768614336404564650, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !28
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 768614336404564650
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #31 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !30, !alias.scope !31
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #29
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !29
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !28
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN18ForceHelperBuffers6resizeEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !19, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = sext i32 %1 to i64
  tail call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z27makeNonBondedParameterListsibN3gmx8ArrayRefIK9t_iparamsEEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.3") align 8 initializes((0, 24)) %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, i1 noundef zeroext %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = zext i1 %2 to i32
  %i.d = add i32 %1, %i.c                         ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %5, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %6 = mul nsw i32 %i.d, 3
  %7 = mul nsw i32 %6, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !39
  %.not107 = icmp eq i32 %7, 0
  br i1 %.not107, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %7 to i64
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.d

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.g = load ptr, ptr %0, align 8                ; 9 uses
  %i.h = zext i32 %i.d to i64                     ; 3 uses
  %wide.trip.count98 = zext nneg i32 %1 to i64    ; 9 uses
  %i.i = add nsw i64 %wide.trip.count98, -1       ; 2 uses
  %i.j = mul nuw nsw i64 %i.h, 12
  %i.k = mul nuw nsw i64 %wide.trip.count98, 48
  %i.l = getelementptr i8, ptr %3, i64 %i.k
  %scevgep128 = getelementptr i8, ptr %i.l, i64 -36
  %i.m = mul nsw i64 %i.i, %i.h
  %i.n = add i64 %i.m, %wide.trip.count98
  %i.o = mul i64 %i.n, 12
  %scevgep130 = getelementptr i8, ptr %i.g, i64 %i.o
  %min.iters.check135 = icmp ult i32 %1, 16
  %mul121 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 12) ; 2 uses
  %mul.result122 = extractvalue { i64, i1 } %mul121, 0 ; 3 uses
  %mul.overflow123 = extractvalue { i64, i1 } %mul121, 1
  %n.vec137 = and i64 %wide.trip.count98, 2147483640 ; 4 uses
  %cmp.n154 = icmp eq i64 %n.vec137, %wide.trip.count98
  %xtraiter160 = and i64 %wide.trip.count98, 1
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  %i.p = add nsw i64 %wide.trip.count98, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge70
  %indvars.iv95 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next96, %._crit_edge70 ] ; 3 uses
  %.04772 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next89.lcssa, %._crit_edge70 ] ; 6 uses
  %i.q = mul nuw nsw i64 %indvars.iv95, %i.h      ; 4 uses
  br i1 %min.iters.check135, label %scalar.ph134.preheader, label %vector.scevcheck119

vector.scevcheck119:                              ; preds = %.preheader
  %i.r = mul i64 %i.j, %indvars.iv95              ; 3 uses
  %scevgep125 = getelementptr i8, ptr %i.g, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %i.g, i64 %i.r
  %scevgep124 = getelementptr i8, ptr %i.s, i64 8 ; 2 uses
  %i.t = getelementptr i8, ptr %i.g, i64 %i.r
  %scevgep120 = getelementptr i8, ptr %i.t, i64 4 ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep120, i64 %mul.result122
  %i.v = icmp ult ptr %i.u, %scevgep120
  %i.w = getelementptr i8, ptr %scevgep124, i64 %mul.result122
  %i.x = icmp ult ptr %i.w, %scevgep124
  %i.y = getelementptr i8, ptr %scevgep125, i64 %mul.result122
  %i.z = icmp ult ptr %i.y, %scevgep125
  %i.aa = or i1 %i.z, %mul.overflow123
  %i.ab = or i1 %i.x, %i.v
  %i.ac = or i1 %i.ab, %i.aa
  br i1 %i.ac, label %scalar.ph134.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %vector.scevcheck119
  %i.ad = mul i64 %.04772, 48                     ; 2 uses
  %scevgep127 = getelementptr i8, ptr %3, i64 %i.ad
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.ad
  %bound0131 = icmp ult ptr %scevgep127, %scevgep130
  %bound1132 = icmp ult ptr %i.g, %scevgep129
  %found.conflict133 = and i1 %bound0131, %bound1132
  br i1 %found.conflict133, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck126
  %i.ae = add i64 %.04772, %n.vec137              ; 2 uses
  %broadcast.splatinsert138 = insertelement <8 x i64> poison, i64 %.04772, i64 0
  %broadcast.splat139 = shufflevector <8 x i64> %broadcast.splatinsert138, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction140 = add nsw <8 x i64> %broadcast.splat139, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next151, %vector.body141 ] ; 2 uses
  %vec.ind143 = phi <8 x i64> [ %induction140, %vector.ph136 ], [ %vec.ind.next152, %vector.body141 ] ; 2 uses
  %wide.gep144 = getelementptr inbounds [48 x i8], ptr %3, <8 x i64> %vec.ind143 ; 3 uses
  %wide.masked.gather145 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep144, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !41, !noalias !44
  %i.af = add nuw nsw i64 %index142, %i.q
  %i.ag = mul i64 %i.af, 12
  %i.ah = getelementptr i8, ptr %i.g, i64 %i.ag
  %wide.gep146 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep144, i64 4
  %wide.masked.gather147 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep146, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !41, !noalias !44
  %wide.gep148 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep144, i64 8
  %wide.masked.gather149 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep148, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !41, !noalias !44
  %i.ai = fmul <8 x float> %wide.masked.gather149, splat (float 6.000000e+00)
  %i.aj = shufflevector <8 x float> %i.ai, <8 x float> %wide.masked.gather145, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = shufflevector <8 x float> %wide.masked.gather147, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec150 = shufflevector <16 x float> %i.aj, <16 x float> %i.ak, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec150, ptr %i.ah, align 4, !tbaa !39, !alias.scope !44
  %index.next151 = add nuw i64 %index142, 8       ; 2 uses
  %vec.ind.next152 = add nsw <8 x i64> %vec.ind143, splat (i64 8)
  %i.al = icmp eq i64 %index.next151, %n.vec137
  br i1 %i.al, label %middle.block153, label %vector.body141, !llvm.loop !46

middle.block153:                                  ; preds = %vector.body141
  br i1 %cmp.n154, label %._crit_edge70, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %vector.memcheck126, %vector.scevcheck119, %.preheader, %middle.block153
  %indvars.iv88.ph = phi i64 [ %.04772, %vector.memcheck126 ], [ %.04772, %vector.scevcheck119 ], [ %.04772, %.preheader ], [ %i.ae, %middle.block153 ] ; 3 uses
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck126 ], [ 0, %vector.scevcheck119 ], [ 0, %.preheader ], [ %n.vec137, %middle.block153 ] ; 4 uses
  br i1 %lcmp.mod161.not, label %scalar.ph134.prol.loopexit, label %scalar.ph134.prol

scalar.ph134.prol:                                ; preds = %scalar.ph134.preheader
  %i.am = getelementptr inbounds [48 x i8], ptr %3, i64 %indvars.iv88.ph ; 3 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !17
  %i.ao = add nuw nsw i64 %indvars.iv86.ph, %i.q
  %.idx108.prol = mul i64 %i.ao, 12
  %i.ap = getelementptr i8, ptr %i.g, i64 %.idx108.prol ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  store float %i.an, ptr %i.aq, align 4, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !17
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  store float %i.as, ptr %i.at, align 4, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !17
  %i.aw = fmul float %i.av, 6.000000e+00
  store float %i.aw, ptr %i.ap, align 4, !tbaa !39
  %indvars.iv.next87.prol = or disjoint i64 %indvars.iv86.ph, 1
  %indvars.iv.next89.prol = add nsw i64 %indvars.iv88.ph, 1 ; 2 uses
  br label %scalar.ph134.prol.loopexit

scalar.ph134.prol.loopexit:                       ; preds = %scalar.ph134.prol, %scalar.ph134.preheader
  %indvars.iv.next89.lcssa157.unr = phi i64 [ poison, %scalar.ph134.preheader ], [ %indvars.iv.next89.prol, %scalar.ph134.prol ]
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %scalar.ph134.preheader ], [ %indvars.iv.next89.prol, %scalar.ph134.prol ]
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph134.preheader ], [ %indvars.iv.next87.prol, %scalar.ph134.prol ]
  %i.ax = icmp eq i64 %indvars.iv86.ph, %i.p
  br i1 %i.ax, label %._crit_edge70, label %scalar.ph134.preheader.new

scalar.ph134.preheader.new:                       ; preds = %scalar.ph134.prol.loopexit
  %invariant.op167 = add nuw nsw i64 1, %i.q
  br label %scalar.ph134

bb.d:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.h

._crit_edge70:                                    ; preds = %scalar.ph134.prol.loopexit, %scalar.ph134, %middle.block153
  %indvars.iv.next89.lcssa = phi i64 [ %i.ae, %middle.block153 ], [ %indvars.iv.next89.lcssa157.unr, %scalar.ph134.prol.loopexit ], [ %indvars.iv.next89.1, %scalar.ph134 ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %.preheader, !llvm.loop !49

scalar.ph134:                                     ; preds = %scalar.ph134, %scalar.ph134.preheader.new
  %indvars.iv88 = phi i64 [ %indvars.iv88.unr, %scalar.ph134.preheader.new ], [ %indvars.iv.next89.1, %scalar.ph134 ] ; 3 uses
  %indvars.iv86 = phi i64 [ %indvars.iv86.unr, %scalar.ph134.preheader.new ], [ %indvars.iv.next87.1, %scalar.ph134 ] ; 3 uses
  %i.az = getelementptr inbounds [48 x i8], ptr %3, i64 %indvars.iv88 ; 3 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !17
  %i.bb = add nuw nsw i64 %indvars.iv86, %i.q
  %.idx108 = mul i64 %i.bb, 12
  %i.bc = getelementptr i8, ptr %i.g, i64 %.idx108 ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  store float %i.ba, ptr %i.bd, align 4, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17
  %i.bg = getelementptr i8, ptr %i.bc, i64 8
  store float %i.bf, ptr %i.bg, align 4, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !17
  %i.bj = fmul float %i.bi, 6.000000e+00
  store float %i.bj, ptr %i.bc, align 4, !tbaa !39
  %i.bk = getelementptr [48 x i8], ptr %3, i64 %indvars.iv88 ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 48
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !17
  %.reass168 = add nuw nsw i64 %indvars.iv86, %invariant.op167
  %.idx108.1 = mul i64 %.reass168, 12
  %i.bn = getelementptr i8, ptr %i.g, i64 %.idx108.1 ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  store float %i.bm, ptr %i.bo, align 4, !tbaa !39
  %i.bp = getelementptr i8, ptr %i.bk, i64 52
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !17
  %i.br = getelementptr i8, ptr %i.bn, i64 8
  store float %i.bq, ptr %i.br, align 4, !tbaa !39
  %i.bs = getelementptr i8, ptr %i.bk, i64 56
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !17
  %i.bu = fmul float %i.bt, 6.000000e+00
  store float %i.bu, ptr %i.bn, align 4, !tbaa !39
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %indvars.iv.next89.1 = add nsw i64 %indvars.iv88, 2 ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %indvars.iv.next87.1, %wide.trip.count98
  br i1 %exitcond94.not.1, label %._crit_edge70, label %scalar.ph134, !llvm.loop !50

bb.e:                                             ; preds = %bb.a
  %i.bv = shl nsw i32 %i.d, 1
  %8 = mul nsw i32 %i.bv, %i.d                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !39
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = sext i32 %8 to i64
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57 unwind label %bb.g

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bx = icmp sgt i32 %1, 0
  br i1 %i.bx, label %.preheader62.lr.ph, label %.loopexit

.preheader62.lr.ph:                               ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57
  %i.by = load ptr, ptr %0, align 8               ; 10 uses
  %i.bz = zext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count84 = zext nneg i32 %1 to i64    ; 9 uses
  %i.ca = add nsw i64 %wide.trip.count84, -1      ; 3 uses
  %i.cb = shl nuw nsw i64 %i.bz, 3
  %i.cc = mul nuw nsw i64 %wide.trip.count84, 48
  %i.cd = getelementptr i8, ptr %3, i64 %i.cc
  %scevgep113 = getelementptr i8, ptr %i.cd, i64 -40
  %i.ce = mul nsw i64 %i.ca, %i.bz
  %i.cf = add i64 %i.ce, %wide.trip.count84
  %i.cg = shl i64 %i.cf, 3
  %scevgep115 = getelementptr i8, ptr %i.by, i64 %i.cg
  %min.iters.check = icmp ult i32 %1, 16
  %mul.result = shl nsw i64 %i.ca, 3              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ca, 2305843009213693951
  %n.vec = and i64 %wide.trip.count84, 2147483640 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count84
  %xtraiter = and i64 %wide.trip.count84, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.lr.ph, %._crit_edge
  %indvars.iv81 = phi i64 [ 0, %.preheader62.lr.ph ], [ %indvars.iv.next82, %._crit_edge ] ; 3 uses
  %.04466 = phi i64 [ 0, %.preheader62.lr.ph ], [ %indvars.iv.next77.lcssa, %._crit_edge ] ; 6 uses
  %i.ch = mul nuw nsw i64 %indvars.iv81, %i.bz    ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader62
  %i.ci = mul i64 %i.cb, %indvars.iv81            ; 2 uses
  %i.cj = getelementptr i8, ptr %i.by, i64 %i.ci
  %scevgep111 = getelementptr i8, ptr %i.cj, i64 4 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cl = icmp ult ptr %i.ck, %scevgep
  %i.cm = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.cn = icmp ult ptr %i.cm, %scevgep111
  %i.co = or i1 %i.cn, %mul.overflow
  %i.cp = or i1 %i.cl, %i.co
  br i1 %i.cp, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cq = mul i64 %.04466, 48                     ; 2 uses
  %scevgep112 = getelementptr i8, ptr %3, i64 %i.cq
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %i.cq
  %bound0 = icmp ult ptr %scevgep112, %scevgep115
  %bound1 = icmp ult ptr %i.by, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cr = add i64 %.04466, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %.04466, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds [48 x i8], ptr %3, <8 x i64> %vec.ind ; 2 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !51, !noalias !54
  %i.cs = add nuw nsw i64 %index, %i.ch
  %i.ct = shl i64 %i.cs, 3
  %i.cu = getelementptr i8, ptr %i.by, i64 %i.ct
  %wide.gep116 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather117 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep116, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !51, !noalias !54
  %i.cv = shufflevector <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather117, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = fmul <16 x float> %i.cv, <float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01>
  store <16 x float> %interleaved.vec, ptr %i.cu, align 4, !tbaa !39, !alias.scope !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader62, %middle.block
  %indvars.iv76.ph = phi i64 [ %.04466, %vector.memcheck ], [ %.04466, %vector.scevcheck ], [ %.04466, %.preheader62 ], [ %i.cr, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader62 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %scalar.ph.prol ], [ %indvars.iv76.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cx = getelementptr inbounds [48 x i8], ptr %3, i64 %indvars.iv76.prol ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !17
  %i.cz = fmul float %i.cy, 6.000000e+00
  %i.da = add nuw nsw i64 %indvars.iv.prol, %i.ch
  %.idx.prol = shl i64 %i.da, 3
  %i.db = getelementptr i8, ptr %i.by, i64 %.idx.prol ; 2 uses
  store float %i.cz, ptr %i.db, align 4, !tbaa !39
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !17
  %i.de = fmul float %i.dd, 1.200000e+01
  %i.df = getelementptr i8, ptr %i.db, i64 4
  store float %i.de, ptr %i.df, align 4, !tbaa !39
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %indvars.iv.next77.prol = add nsw i64 %indvars.iv76.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !57

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next77.lcssa159.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next77.prol, %scalar.ph.prol ]
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph.preheader ], [ %indvars.iv.next77.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dg = sub nsw i64 %indvars.iv.ph, %wide.trip.count84
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.ch
  %invariant.op163 = add nuw nsw i64 2, %i.ch
  %invariant.op165 = add nuw nsw i64 3, %i.ch
  br label %scalar.ph

bb.g:                                             ; preds = %bb.f
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.h

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next77.lcssa = phi i64 [ %i.cr, %middle.block ], [ %indvars.iv.next77.lcssa159.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next77.3, %scalar.ph ]
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %.preheader62, !llvm.loop !59

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv76 = phi i64 [ %indvars.iv76.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next77.3, %scalar.ph ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.dj = getelementptr inbounds [48 x i8], ptr %3, i64 %indvars.iv76 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !17
  %i.dl = fmul float %i.dk, 6.000000e+00
  %i.dm = add nuw nsw i64 %indvars.iv, %i.ch
  %.idx = shl i64 %i.dm, 3
  %i.dn = getelementptr i8, ptr %i.by, i64 %.idx  ; 2 uses
  store float %i.dl, ptr %i.dn, align 4, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !17
  %i.dq = fmul float %i.dp, 1.200000e+01
  %i.dr = getelementptr i8, ptr %i.dn, i64 4
  store float %i.dq, ptr %i.dr, align 4, !tbaa !39
  %i.ds = getelementptr [48 x i8], ptr %3, i64 %indvars.iv76 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 48
  %i.du = load float, ptr %i.dt, align 4, !tbaa !17
  %i.dv = fmul float %i.du, 6.000000e+00
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op
  %.idx.1 = shl i64 %.reass, 3
  %i.dw = getelementptr i8, ptr %i.by, i64 %.idx.1 ; 2 uses
  store float %i.dv, ptr %i.dw, align 4, !tbaa !39
  %i.dx = getelementptr i8, ptr %i.ds, i64 52
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !17
  %i.dz = fmul float %i.dy, 1.200000e+01
  %i.ea = getelementptr i8, ptr %i.dw, i64 4
  store float %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr [48 x i8], ptr %3, i64 %indvars.iv76 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 96
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !17
  %i.ee = fmul float %i.ed, 6.000000e+00
  %.reass164 = add nuw nsw i64 %indvars.iv, %invariant.op163
  %.idx.2 = shl i64 %.reass164, 3
  %i.ef = getelementptr i8, ptr %i.by, i64 %.idx.2 ; 2 uses
  store float %i.ee, ptr %i.ef, align 4, !tbaa !39
  %i.eg = getelementptr i8, ptr %i.eb, i64 100
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !17
  %i.ei = fmul float %i.eh, 1.200000e+01
  %i.ej = getelementptr i8, ptr %i.ef, i64 4
  store float %i.ei, ptr %i.ej, align 4, !tbaa !39
  %i.ek = getelementptr [48 x i8], ptr %3, i64 %indvars.iv76 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 144
  %i.em = load float, ptr %i.el, align 4, !tbaa !17
  %i.en = fmul float %i.em, 6.000000e+00
  %.reass166 = add nuw nsw i64 %indvars.iv, %invariant.op165
  %.idx.3 = shl i64 %.reass166, 3
  %i.eo = getelementptr i8, ptr %i.by, i64 %.idx.3 ; 2 uses
  store float %i.en, ptr %i.eo, align 4, !tbaa !39
  %i.ep = getelementptr i8, ptr %i.ek, i64 148
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !17
  %i.er = fmul float %i.eq, 1.200000e+01
  %i.es = getelementptr i8, ptr %i.eo, i64 4
  store float %i.er, ptr %i.es, align 4, !tbaa !39
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next77.3 = add nsw i64 %indvars.iv76, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count84
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !60

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge70, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  ret void
end_hunk_0
