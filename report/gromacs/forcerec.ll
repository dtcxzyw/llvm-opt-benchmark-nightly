inline.NumInlined: 1852
inline.NumDeleted: 1165
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@llvm.memcpy.p0.p0.i64

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN18ForceHelperBuffersC2Eb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 56)) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit:
  %i.a = zext i1 %1 to i8
  store i8 %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(540) ptr @_Znwm(i64 noundef 540) #31 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 540 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !28
  store ptr %i.g, ptr %i.e, align 8, !tbaa !29
  ret void
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
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
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
  %i.aa = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #29
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !29
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.g
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !28
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
  %i.e = mul nsw i32 %i.d, 3
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !39
  %.not107 = icmp eq i32 %i.f, 0
  br i1 %.not107, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %i.f to i64
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.d

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.i = load ptr, ptr %0, align 8                ; 9 uses
  %i.j = zext i32 %i.d to i64                     ; 3 uses
  %wide.trip.count98 = zext nneg i32 %1 to i64    ; 9 uses
  %i.k = add nsw i64 %wide.trip.count98, -1       ; 2 uses
  %i.l = mul nuw nsw i64 %i.j, 12
  %i.m = mul nuw nsw i64 %wide.trip.count98, 48
  %i.n = getelementptr i8, ptr %3, i64 %i.m
  %scevgep128.a = getelementptr i8, ptr %i.n, i64 -36
  %i.o = mul nsw i64 %i.k, %i.j
  %i.p = add i64 %i.o, %wide.trip.count98
  %i.q = mul i64 %i.p, 12
  %scevgep130 = getelementptr i8, ptr %i.i, i64 %i.q
  %min.iters.check135 = icmp ult i32 %1, 16
  %mul121 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 12) ; 2 uses
  %mul.result122 = extractvalue { i64, i1 } %mul121, 0 ; 3 uses
  %mul.overflow123 = extractvalue { i64, i1 } %mul121, 1
  %n.vec137 = and i64 %wide.trip.count98, 2147483640 ; 4 uses
  %cmp.n154 = icmp eq i64 %n.vec137, %wide.trip.count98
  %xtraiter160 = and i64 %wide.trip.count98, 1
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  %i.r = add nsw i64 %wide.trip.count98, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge70
  %indvars.iv95 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next96, %._crit_edge70 ] ; 3 uses
  %.04772 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next89.lcssa, %._crit_edge70 ] ; 6 uses
  %i.s = mul nuw nsw i64 %indvars.iv95, %i.j      ; 4 uses
  br i1 %min.iters.check135, label %scalar.ph134.preheader, label %vector.scevcheck119

vector.scevcheck119:                              ; preds = %.preheader
  %i.t = mul i64 %i.l, %indvars.iv95              ; 3 uses
  %scevgep125 = getelementptr i8, ptr %i.i, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 %i.t
  %scevgep124.a = getelementptr i8, ptr %i.u, i64 8 ; 2 uses
  %i.v = getelementptr i8, ptr %i.i, i64 %i.t
  %scevgep120 = getelementptr i8, ptr %i.v, i64 4 ; 2 uses
  %i.w = getelementptr i8, ptr %scevgep120, i64 %mul.result122
  %i.x = icmp ult ptr %i.w, %scevgep120
  %i.y = getelementptr i8, ptr %scevgep124.a, i64 %mul.result122
  %i.z = icmp ult ptr %i.y, %scevgep124.a
  %i.aa = getelementptr i8, ptr %scevgep125, i64 %mul.result122
  %i.ab = icmp ult ptr %i.aa, %scevgep125
  %i.ac = or i1 %i.ab, %mul.overflow123
  %i.ad = or i1 %i.z, %i.x
  %i.ae = or i1 %i.ad, %i.ac
  br i1 %i.ae, label %scalar.ph134.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %vector.scevcheck119
  %6 = mul i64 %.04772, 48                        ; 2 uses
  %scevgep127 = getelementptr i8, ptr %3, i64 %6
  %scevgep129 = getelementptr i8, ptr %scevgep128.a, i64 %6
  %bound0131 = icmp ult ptr %scevgep127, %scevgep130
  %bound1132 = icmp ult ptr %i.i, %scevgep129
  %found.conflict133 = and i1 %bound0131, %bound1132
  br i1 %found.conflict133, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck126
  %i.af = add i64 %.04772, %n.vec137              ; 2 uses
  %broadcast.splatinsert138 = insertelement <8 x i64> poison, i64 %.04772, i64 0
  %broadcast.splat139 = shufflevector <8 x i64> %broadcast.splatinsert138, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction140 = add nsw <8 x i64> %broadcast.splat139, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next151, %vector.body141 ] ; 2 uses
  %vec.ind143 = phi <8 x i64> [ %induction140, %vector.ph136 ], [ %vec.ind.next152, %vector.body141 ] ; 2 uses
  %wide.gep144 = getelementptr inbounds [48 x i8], ptr %3, <8 x i64> %vec.ind143 ; 3 uses
  %wide.masked.gather145 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep144, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !41, !noalias !44
  %i.ag = add nuw nsw i64 %index142, %i.s
  %i.ah = mul i64 %i.ag, 12
  %i.ai = getelementptr i8, ptr %i.i, i64 %i.ah
  %wide.gep146 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep144, i64 4
  %wide.masked.gather147 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep146, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !41, !noalias !44
  %wide.gep148 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep144, i64 8
  %wide.masked.gather149 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep148, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !41, !noalias !44
  %i.aj = fmul <8 x float> %wide.masked.gather149, splat (float 6.000000e+00)
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> %wide.masked.gather145, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = shufflevector <8 x float> %wide.masked.gather147, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec150 = shufflevector <16 x float> %i.ak, <16 x float> %i.al, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec150, ptr %i.ai, align 4, !tbaa !39, !alias.scope !44
  %index.next151 = add nuw i64 %index142, 8       ; 2 uses
  %vec.ind.next152 = add nsw <8 x i64> %vec.ind143, splat (i64 8)
  %i.am = icmp eq i64 %index.next151, %n.vec137
  br i1 %i.am, label %middle.block153, label %vector.body141, !llvm.loop !46

middle.block153:                                  ; preds = %vector.body141
  br i1 %cmp.n154, label %._crit_edge70, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %vector.memcheck126, %vector.scevcheck119, %.preheader, %middle.block153
  %indvars.iv88.ph.a = phi i64 [ %.04772, %vector.memcheck126 ], [ %.04772, %vector.scevcheck119 ], [ %.04772, %.preheader ], [ %i.af, %middle.block153 ] ; 3 uses
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck126 ], [ 0, %vector.scevcheck119 ], [ 0, %.preheader ], [ %n.vec137, %middle.block153 ] ; 4 uses
  br i1 %lcmp.mod161.not, label %scalar.ph134.prol.loopexit, label %scalar.ph134.prol

scalar.ph134.prol:                                ; preds = %scalar.ph134.preheader
  %i.an = getelementptr inbounds [48 x i8], ptr %3, i64 %indvars.iv88.ph.a ; 3 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !17
  %i.ap = add nuw nsw i64 %indvars.iv86.ph, %i.s
  %.idx108.prol = mul i64 %i.ap, 12
  %i.aq = getelementptr i8, ptr %i.i, i64 %.idx108.prol ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  store float %i.ao, ptr %i.ar, align 4, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !17
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  store float %i.at, ptr %i.au, align 4, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !17
  %i.ax = fmul float %i.aw, 6.000000e+00
  store float %i.ax, ptr %i.aq, align 4, !tbaa !39
  %indvars.iv.next87.prol = or disjoint i64 %indvars.iv86.ph, 1
  %indvars.iv.next89.prol = add nsw i64 %indvars.iv88.ph.a, 1 ; 2 uses
  br label %scalar.ph134.prol.loopexit

scalar.ph134.prol.loopexit:                       ; preds = %scalar.ph134.prol, %scalar.ph134.preheader
  %indvars.iv.next89.lcssa157.unr = phi i64 [ poison, %scalar.ph134.preheader ], [ %indvars.iv.next89.prol, %scalar.ph134.prol ]
  %indvars.iv88.unr.a = phi i64 [ %indvars.iv88.ph.a, %scalar.ph134.preheader ], [ %indvars.iv.next89.prol, %scalar.ph134.prol ]
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph134.preheader ], [ %indvars.iv.next87.prol, %scalar.ph134.prol ]
  %i.ay = icmp eq i64 %indvars.iv86.ph, %i.r
  br i1 %i.ay, label %._crit_edge70, label %scalar.ph134.preheader.new

scalar.ph134.preheader.new:                       ; preds = %scalar.ph134.prol.loopexit
  %invariant.op167.a = add nuw nsw i64 1, %i.s
  br label %scalar.ph134

bb.d:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.h

._crit_edge70:                                    ; preds = %scalar.ph134.prol.loopexit, %scalar.ph134, %middle.block153
  %indvars.iv.next89.lcssa = phi i64 [ %i.af, %middle.block153 ], [ %indvars.iv.next89.lcssa157.unr, %scalar.ph134.prol.loopexit ], [ %indvars.iv.next89.1, %scalar.ph134 ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %.preheader, !llvm.loop !49

scalar.ph134:                                     ; preds = %scalar.ph134, %scalar.ph134.preheader.new
  %indvars.iv88.a = phi i64 [ %indvars.iv88.unr.a, %scalar.ph134.preheader.new ], [ %indvars.iv.next89.1, %scalar.ph134 ] ; 3 uses
  %indvars.iv86 = phi i64 [ %indvars.iv86.unr, %scalar.ph134.preheader.new ], [ %indvars.iv.next87.1, %scalar.ph134 ] ; 3 uses
  %i.ba = getelementptr inbounds [48 x i8], ptr %3, i64 %indvars.iv88.a ; 3 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !17
  %i.bc = add nuw nsw i64 %indvars.iv86, %i.s
  %.idx108 = mul i64 %i.bc, 12
  %i.bd = getelementptr i8, ptr %i.i, i64 %.idx108 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  store float %i.bb, ptr %i.be, align 4, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !17
  %i.bh = getelementptr i8, ptr %i.bd, i64 8
  store float %i.bg, ptr %i.bh, align 4, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !17
  %i.bk = fmul float %i.bj, 6.000000e+00
  store float %i.bk, ptr %i.bd, align 4, !tbaa !39
  %i.bl = getelementptr [48 x i8], ptr %3, i64 %indvars.iv88.a ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 48
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !17
  %.reass168.a = add nuw nsw i64 %indvars.iv86, %invariant.op167.a
  %.idx108.1 = mul i64 %.reass168.a, 12
  %i.bo = getelementptr i8, ptr %i.i, i64 %.idx108.1 ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  store float %i.bn, ptr %i.bp, align 4, !tbaa !39
  %i.bq = getelementptr i8, ptr %i.bl, i64 52
  %i.br = load float, ptr %i.bq, align 4, !tbaa !17
  %i.bs = getelementptr i8, ptr %i.bo, i64 8
  store float %i.br, ptr %i.bs, align 4, !tbaa !39
  %i.bt = getelementptr i8, ptr %i.bl, i64 56
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !17
  %i.bv = fmul float %i.bu, 6.000000e+00
  store float %i.bv, ptr %i.bo, align 4, !tbaa !39
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %indvars.iv.next89.1 = add nsw i64 %indvars.iv88.a, 2 ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %indvars.iv.next87.1, %wide.trip.count98
  br i1 %exitcond94.not.1, label %._crit_edge70, label %scalar.ph134, !llvm.loop !50

bb.e:                                             ; preds = %bb.a
  %i.bw = shl nsw i32 %i.d, 1
  %i.bx = mul nsw i32 %i.bw, %i.d                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !39
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = sext i32 %i.bx to i64
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57 unwind label %bb.g

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bz = icmp sgt i32 %1, 0
  br i1 %i.bz, label %.preheader62.lr.ph, label %.loopexit

.preheader62.lr.ph:                               ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57
  %i.ca = load ptr, ptr %0, align 8               ; 10 uses
  %i.cb = zext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count84 = zext nneg i32 %1 to i64    ; 9 uses
  %i.cc = add nsw i64 %wide.trip.count84, -1      ; 3 uses
  %i.cd = shl nuw nsw i64 %i.cb, 3
  %i.ce = mul nuw nsw i64 %wide.trip.count84, 48
  %i.cf = getelementptr i8, ptr %3, i64 %i.ce
  %scevgep113 = getelementptr i8, ptr %i.cf, i64 -40
  %i.cg = mul nsw i64 %i.cc, %i.cb
  %i.ch = add i64 %i.cg, %wide.trip.count84
  %i.ci = shl i64 %i.ch, 3
  %scevgep115.a = getelementptr i8, ptr %i.ca, i64 %i.ci
  %min.iters.check = icmp ult i32 %1, 16
  %mul.result = shl nsw i64 %i.cc, 3              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.cc, 2305843009213693951
  %n.vec = and i64 %wide.trip.count84, 2147483640 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count84
  %xtraiter = and i64 %wide.trip.count84, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.lr.ph, %._crit_edge
  %indvars.iv81 = phi i64 [ 0, %.preheader62.lr.ph ], [ %indvars.iv.next82, %._crit_edge ] ; 3 uses
  %.04466 = phi i64 [ 0, %.preheader62.lr.ph ], [ %indvars.iv.next77.lcssa, %._crit_edge ] ; 6 uses
  %i.cj = mul nuw nsw i64 %indvars.iv81, %i.cb    ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader62
  %i.ck = mul i64 %i.cd, %indvars.iv81            ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ca, i64 %i.ck
  %scevgep111 = getelementptr i8, ptr %i.cl, i64 4 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ca, i64 %i.ck ; 2 uses
  %i.cm = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cn = icmp ult ptr %i.cm, %scevgep
  %i.co = getelementptr i8, ptr %scevgep111, i64 %mul.result
  %i.cp = icmp ult ptr %i.co, %scevgep111
  %i.cq = or i1 %i.cp, %mul.overflow
  %i.cr = or i1 %i.cn, %i.cq
  br i1 %i.cr, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %7 = mul i64 %.04466, 48                        ; 2 uses
  %scevgep112 = getelementptr i8, ptr %3, i64 %7
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %7
  %bound0 = icmp ult ptr %scevgep112, %scevgep115.a
  %bound1 = icmp ult ptr %i.ca, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cs = add i64 %.04466, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %.04466, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds [48 x i8], ptr %3, <8 x i64> %vec.ind ; 2 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !51, !noalias !54
  %i.ct = add nuw nsw i64 %index, %i.cj
  %i.cu = shl i64 %i.ct, 3
  %i.cv = getelementptr i8, ptr %i.ca, i64 %i.cu
  %wide.gep116 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather117 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep116, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !51, !noalias !54
  %i.cw = shufflevector <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather117, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = fmul <16 x float> %i.cw, <float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01, float 6.000000e+00, float 1.200000e+01>
  store <16 x float> %interleaved.vec, ptr %i.cv, align 4, !tbaa !39, !alias.scope !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader62, %middle.block
  %indvars.iv76.ph = phi i64 [ %.04466, %vector.memcheck ], [ %.04466, %vector.scevcheck ], [ %.04466, %.preheader62 ], [ %i.cs, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader62 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %scalar.ph.prol ], [ %indvars.iv76.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cy = getelementptr inbounds [48 x i8], ptr %3, i64 %indvars.iv76.prol ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !17
  %i.da = fmul float %i.cz, 6.000000e+00
  %i.db = add nuw nsw i64 %indvars.iv.prol, %i.cj
  %.idx.prol = shl i64 %i.db, 3
  %i.dc = getelementptr i8, ptr %i.ca, i64 %.idx.prol ; 2 uses
  store float %i.da, ptr %i.dc, align 4, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !17
  %i.df = fmul float %i.de, 1.200000e+01
  %i.dg = getelementptr i8, ptr %i.dc, i64 4
  store float %i.df, ptr %i.dg, align 4, !tbaa !39
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %indvars.iv.next77.prol = add nsw i64 %indvars.iv76.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !57

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next77.lcssa159.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next77.prol, %scalar.ph.prol ]
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph.preheader ], [ %indvars.iv.next77.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dh = sub nsw i64 %indvars.iv.ph, %wide.trip.count84
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.cj
  %invariant.op163 = add nuw nsw i64 2, %i.cj
  %invariant.op165 = add nuw nsw i64 3, %i.cj
  br label %scalar.ph

bb.g:                                             ; preds = %bb.f
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.h

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next77.lcssa = phi i64 [ %i.cs, %middle.block ], [ %indvars.iv.next77.lcssa159.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next77.3, %scalar.ph ]
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %.preheader62, !llvm.loop !59

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv76.a = phi i64 [ %indvars.iv76.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next77.3, %scalar.ph ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.dk = getelementptr inbounds [48 x i8], ptr %3, i64 %indvars.iv76.a ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !17
  %i.dm = fmul float %i.dl, 6.000000e+00
  %i.dn = add nuw nsw i64 %indvars.iv, %i.cj
  %.idx = shl i64 %i.dn, 3
  %i.do = getelementptr i8, ptr %i.ca, i64 %.idx  ; 2 uses
  store float %i.dm, ptr %i.do, align 4, !tbaa !39
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !17
  %i.dr = fmul float %i.dq, 1.200000e+01
  %i.ds = getelementptr i8, ptr %i.do, i64 4
  store float %i.dr, ptr %i.ds, align 4, !tbaa !39
  %i.dt = getelementptr [48 x i8], ptr %3, i64 %indvars.iv76.a ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 48
  %i.dv = load float, ptr %i.du, align 4, !tbaa !17
  %i.dw = fmul float %i.dv, 6.000000e+00
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op
  %.idx.1 = shl i64 %.reass, 3
  %i.dx = getelementptr i8, ptr %i.ca, i64 %.idx.1 ; 2 uses
  store float %i.dw, ptr %i.dx, align 4, !tbaa !39
  %i.dy = getelementptr i8, ptr %i.dt, i64 52
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !17
  %i.ea = fmul float %i.dz, 1.200000e+01
  %i.eb = getelementptr i8, ptr %i.dx, i64 4
  store float %i.ea, ptr %i.eb, align 4, !tbaa !39
  %i.ec = getelementptr [48 x i8], ptr %3, i64 %indvars.iv76.a ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 96
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !17
  %i.ef = fmul float %i.ee, 6.000000e+00
  %.reass164 = add nuw nsw i64 %indvars.iv, %invariant.op163
  %.idx.2 = shl i64 %.reass164, 3
  %i.eg = getelementptr i8, ptr %i.ca, i64 %.idx.2 ; 2 uses
  store float %i.ef, ptr %i.eg, align 4, !tbaa !39
  %i.eh = getelementptr i8, ptr %i.ec, i64 100
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !17
  %i.ej = fmul float %i.ei, 1.200000e+01
  %i.ek = getelementptr i8, ptr %i.eg, i64 4
  store float %i.ej, ptr %i.ek, align 4, !tbaa !39
  %i.el = getelementptr [48 x i8], ptr %3, i64 %indvars.iv76.a ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 144
  %i.en = load float, ptr %i.em, align 4, !tbaa !17
  %i.eo = fmul float %i.en, 6.000000e+00
  %.reass166 = add nuw nsw i64 %indvars.iv, %invariant.op165
  %.idx.3 = shl i64 %.reass166, 3
  %i.ep = getelementptr i8, ptr %i.ca, i64 %.idx.3 ; 2 uses
  store float %i.eo, ptr %i.ep, align 4, !tbaa !39
  %i.eq = getelementptr i8, ptr %i.el, i64 148
  %i.er = load float, ptr %i.eq, align 4, !tbaa !17
  %i.es = fmul float %i.er, 1.200000e+01
  %i.et = getelementptr i8, ptr %i.ep, i64 4
  store float %i.es, ptr %i.et, align 4, !tbaa !39
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next77.3 = add nsw i64 %indvars.iv76.a, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count84
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !60

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge70, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit57, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  ret void

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.az, %bb.d ], [ %i.dj, %bb.g ]
  %i.eu = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !64
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %3, align 4, !tbaa !39   ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !65
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !39
  store float %i.s, ptr %i.d, align 4, !tbaa !39
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !65
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %iter.check164

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %iter.check164

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load float, ptr %1, align 4, !tbaa !39
  store float %i.ac, ptr %i.ab, align 4, !tbaa !39
  br label %iter.check164

iter.check164:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check164
  %min.iters.check152 = icmp ult i64 %i.ae, 124
  br i1 %min.iters.check152, label %vec.epilog.ph168, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.ah = and i64 %i.ag, 24
  %n.vec154 = and i64 %i.ag, 9223372036854775776  ; 4 uses
  %i.ai = shl i64 %n.vec154, 2
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %broadcast.splatinsert155 = insertelement <8 x float> poison, float %i.i, i64 0
  %broadcast.splat156 = shufflevector <8 x float> %broadcast.splatinsert155, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body157 ] ; 2 uses
  %i.ak = shl i64 %index158, 2
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep159, i64 32
  %i.am = getelementptr i8, ptr %next.gep159, i64 64
  %i.an = getelementptr i8, ptr %next.gep159, i64 96
  store <8 x float> %broadcast.splat156, ptr %next.gep159, align 4, !tbaa !39
  store <8 x float> %broadcast.splat156, ptr %i.al, align 4, !tbaa !39
  store <8 x float> %broadcast.splat156, ptr %i.am, align 4, !tbaa !39
  store <8 x float> %broadcast.splat156, ptr %i.an, align 4, !tbaa !39
  %index.next160 = add nuw i64 %index158, 32      ; 2 uses
  %i.ao = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.ao, label %middle.block161, label %vector.body157, !llvm.loop !67

middle.block161:                                  ; preds = %vector.body157
  %cmp.n162 = icmp eq i64 %i.ag, %n.vec154
  br i1 %cmp.n162, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block161
  %min.epilog.iters.check167 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph168, !prof !68

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check166
  %vec.epilog.resume.val163 = phi i64 [ %n.vec154, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec169 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ap = shl i64 %n.vec169, 2
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %broadcast.splatinsert170 = insertelement <8 x float> poison, float %i.i, i64 0
  %broadcast.splat171 = shufflevector <8 x float> %broadcast.splatinsert170, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph168
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 2 uses
  %i.ar = shl i64 %index173, 2
  %next.gep174 = getelementptr i8, ptr %1, i64 %i.ar
  store <8 x float> %broadcast.splat171, ptr %next.gep174, align 4, !tbaa !39
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.as, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !69

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %cmp.n177 = icmp eq i64 %i.ag, %n.vec169
  br i1 %cmp.n177, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.07.i.i.i.ph = phi ptr [ %1, %iter.check164 ], [ %i.aj, %vec.epilog.iter.check166 ], [ %i.aq, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i, align 4, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !70

bb.k:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %2, %i.l
  br i1 %i.au, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.av = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.ax = shl i64 %2, 2
  %i.ay = add i64 %i.ax, -4
  %i.az = sub i64 %i.ay, %i.k                     ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.az, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.az, 124
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 24
  %n.vec = and i64 %i.bb, 9223372036854775776     ; 4 uses
  %i.bd = shl i64 %n.vec, 2
end_hunk_0
