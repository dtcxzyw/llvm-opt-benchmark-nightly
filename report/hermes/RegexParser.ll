inline.NumInlined: 3173
inline.NumDeleted: 1582
begin_hunk_0_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BackRefNodeEJjEEEPT_DpOT0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !180  ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.z = add i64 %i.m, -8
  %i.aa = sub i64 %i.z, %i.n                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.n
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ag
  %scevgep19 = getelementptr i8, ptr %i.l, i64 %i.ag
  %bound0 = icmp ult ptr %i.w, %scevgep19
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.l, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.l, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.al = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !596, !noalias !591
  %wide.load21 = load <2 x i64>, ptr %i.al, align 8, !tbaa !25, !alias.scope !596, !noalias !591
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !599, !noalias !596
  store <2 x i64> %wide.load21, ptr %i.am, align 8, !tbaa !25, !alias.scope !599, !noalias !596
  %i.an = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !596, !noalias !591
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !25, !alias.scope !596, !noalias !591
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.ap = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !594, !noalias !591
  store i64 %i.ap, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !591, !noalias !594
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !594, !noalias !591
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.aq, %i.g
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !602

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.w, ptr %i.e, align 8, !tbaa !180
  store ptr %i.as, ptr %i.f, align 8, !tbaa !178
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr %i.h, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.aw, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !49 ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #18 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store ptr %i.a, ptr %i.bm, align 8, !tbaa !25
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !49
  store ptr %i.bo, ptr %i.av, align 8, !tbaa !103
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bp, ptr %i.ax, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE17_M_realloc_insertIJS3_RS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(26) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !603    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %4 = sdiv exact i64 %i.f, 40                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i, %4        ; 2 uses
  %6 = icmp ult i64 %5, %4
  %7 = tail call i64 @llvm.umin.i64(i64 %5, i64 230584300921369395)
  %8 = select i1 %6, i64 230584300921369395, i64 %7 ; 3 uses
  %9 = ptrtoint ptr %1 to i64
  %10 = sub i64 %9, %i.e
  %.not.i = icmp eq i64 %8, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE11_M_allocateEm.exit, label %11

11:                                               ; preds = %_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit
  %12 = mul nuw nsw i64 %8, 40
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #18
  br label %_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit, %11
  %14 = phi ptr [ %13, %11 ], [ null, %_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 %10 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 5, ptr %i.k, align 4, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE11_M_allocateEm.exit
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIDsEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(26) %2) ; 0 uses
  br label %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit

_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE11_M_allocateEm.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load ptr, ptr %3, align 8, !tbaa !505
  store ptr %i.p, ptr %i.o, align 8, !tbaa !509
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %14, %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit ] ; 9 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.q, ptr %.011.i.i.i.i.i, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 12
  store i32 5, ptr %i.s, align 4, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !29   ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  %i.v = icmp eq ptr %.011.i.i.i.i.i, %.0810.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.v, %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = icmp ugt i32 %i.u, 5
  br i1 %i.w, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.x = zext i32 %i.u to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i.i, ptr noundef nonnull %i.q, i64 noundef %i.x, i64 noundef 2) #15
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.t, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.011.i.i.i.i.i, align 8, !tbaa !27
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i, %bb.d
  %i.y = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.q, %bb.d ]
  %i.z = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !27
  %gepdiff.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 2 %i.ab, i64 %gepdiff.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i
  store i32 %i.u, ptr %i.r, align 8, !tbaa !29
  br label %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !509
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !509
  %i.af = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !604

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %14, %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit ], [ %i.ag, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 2 uses
  %.not9.i.i.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i19, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28
  %.011.i.i.i.i.i21 = phi ptr [ %i.ay, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28 ], [ %i.ah, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit ] ; 9 uses
  %.0810.i.i.i.i.i22 = phi ptr [ %i.ax, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 16 ; 3 uses
  store ptr %i.ai, ptr %.011.i.i.i.i.i21, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 8 ; 2 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 12
  store i32 5, ptr %i.ak, align 4, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !29 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq i32 %i.am, 0
  %i.an = icmp eq ptr %.011.i.i.i.i.i21, %.0810.i.i.i.i.i22
  %or.cond.i.i.i.i.i.i.i.i24 = or i1 %i.an, %.not.i.i.i.i.i.i.i.i.i23
  br i1 %or.cond.i.i.i.i.i.i.i.i24, label %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i20
  %i.ao = icmp ugt i32 %i.am, 5
  br i1 %i.ao, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i31, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i25

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i31: ; preds = %bb.e
  %i.ap = zext i32 %i.am to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i.i21, ptr noundef nonnull %i.ai, i64 noundef %i.ap, i64 noundef 2) #15
  %.pre.i.i.i.i.i.i.i.i32 = load i32, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i33 = icmp eq i32 %.pre.i.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i33, label %.sink.split.i.i.i.i.i.i.i.i.i27, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34: ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i31
  %.pre.i.i.i.i.i.i.i35 = load ptr, ptr %.011.i.i.i.i.i21, align 8, !tbaa !27
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i25

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i25: ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34, %bb.e
  %i.aq = phi ptr [ %.pre.i.i.i.i.i.i.i35, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34 ], [ %i.ai, %bb.e ]
  %i.ar = phi i32 [ %.pre.i.i.i.i.i.i.i.i32, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34 ], [ %i.am, %bb.e ]
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %.0810.i.i.i.i.i22, align 8, !tbaa !27
  %gepdiff.i.i.i.i.i.i.i.i.i26 = shl nuw nsw i64 %i.as, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 2 %i.at, i64 %gepdiff.i.i.i.i.i.i.i.i.i26, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i27

.sink.split.i.i.i.i.i.i.i.i.i27:                  ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i25, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i31
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !29
  br label %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28

_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i20
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !509
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !509
  %i.ax = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 40 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i.i.i29, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36, label %.lr.ph.i.i.i.i.i20, !llvm.loop !604

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36: ; preds = %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit
  %.0.lcssa.i.i.i.i.i30 = phi ptr [ %i.ah, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit ], [ %i.ay, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36, %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36 ] ; 3 uses
  %i.az = load ptr, ptr %.05.i.i, align 8, !tbaa !27 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.az) #15
  br label %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit, label %.lr.ph.i.i, !llvm.loop !605

_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !508
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #16
  br label %_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit, %bb.g
  store ptr %14, ptr %0, align 8, !tbaa !603
  store ptr %.0.lcssa.i.i.i.i.i30, ptr %i.a, align 8, !tbaa !507
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %14, i64 %8
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_12MatchAnyNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18, !noalias !606 ; 8 uses
  %.sroa.0.0.copyload.i = load i8, ptr %1, align 1, !tbaa !18, !noalias !606 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex12MatchAnyNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !606
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i8 %.sroa.0.0.copyload.i, 3
  %.lobit.i.i = and i8 %i.c, 1
  store i8 %.lobit.i.i, ptr %i.b, align 8, !tbaa !609, !noalias !606
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.e = lshr i8 %.sroa.0.0.copyload.i, 4
  %.lobit2.i.i = and i8 %i.e, 1
  store i8 %.lobit2.i.i, ptr %i.d, align 1, !tbaa !611, !noalias !606
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.a to i64
  store i64 %i.k, ptr %i.h, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !180  ; 10 uses
  %i.n = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i, %i.r  ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #18 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %i.a to i64
  store i64 %i.z, ptr %i.y, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.aa = add i64 %i.n, -8
  %i.ab = sub i64 %i.aa, %i.o                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ae = add i64 %i.n, -8
  %i.af = sub i64 %i.ae, %i.o
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ah
  %scevgep19 = getelementptr i8, ptr %i.m, i64 %i.ah
  %bound0 = icmp ult ptr %i.x, %scevgep19
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.m, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.al ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.m, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.am = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !617, !noalias !612
  %wide.load21 = load <2 x i64>, ptr %i.am, align 8, !tbaa !25, !alias.scope !617, !noalias !612
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !620, !noalias !617
  store <2 x i64> %wide.load21, ptr %i.an, align 8, !tbaa !25, !alias.scope !620, !noalias !617
  %i.ao = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !617, !noalias !612
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !25, !alias.scope !617, !noalias !612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.aq = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !615, !noalias !612
  store i64 %i.aq, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !612, !noalias !615
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !615, !noalias !612
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ar, %i.h
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !623

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.x, ptr %i.f, align 8, !tbaa !180
  store ptr %i.at, ptr %i.g, align 8, !tbaa !178
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.au, ptr %i.i, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !103 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.ax, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex12MatchAnyNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !49 ; 4 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #18 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store ptr %i.a, ptr %i.bn, align 8, !tbaa !25
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

end_hunk_0
begin_hunk_1_@_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE:bb.a
  %.2.i.i.i.i.i18 = phi ptr [ %i.bm, %bb.s ], [ %.029.lcssa.i.i.i.i.i17, %._crit_edge.i.i.i.i.i15 ] ; 2 uses
  %i.bn = load i32, ptr %.2.i.i.i.i.i18, align 4, !tbaa !3
  %i.bo = icmp ult i32 %i.bn, 128
  br i1 %i.bo, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i15
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 4
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74: ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 8
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76: ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 12
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit: ; preds = %.lr.ph.i.i.i.i.i9, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76, %bb.p, %bb.r, %bb.t, %bb.u
  %.028.i.i.i.i.i19 = phi ptr [ %.1.i.i.i.i.i22, %bb.r ], [ %i.ap, %bb.u ], [ %.2.i.i.i.i.i18, %bb.t ], [ %.029.lcssa.i.i.i.i.i17, %bb.p ], [ %i.br, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76 ], [ %i.bq, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74 ], [ %i.bp, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i11, %.lr.ph.i.i.i.i.i9 ]
  %i.bs = ptrtoint ptr %.028.i.i.i.i.i19 to i64
  %i.bt = sub i64 %i.bs, %i.aj                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 2                 ; 2 uses
  tail call void @_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.ao, i64 %i.bu, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.bv = sub i64 %i.an, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bt
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %._crit_edge, label %.lr.ph, !llvm.loop !670

._crit_edge:                                      ; preds = %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, %bb.a
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex13MatchCharNode13emitASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = icmp ugt i64 %2, 2
  br i1 %i.e, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.i = icmp ugt i64 %i.j, 2
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !671

bb.b:                                             ; preds = %.lr.ph97, %.loopexit
  %.sroa.8.096 = phi i64 [ %2, %.lr.ph97 ], [ %i.j, %.loopexit ] ; 2 uses
  %.sroa.073.095 = phi ptr [ %1, %.lr.ph97 ], [ %i.k, %.loopexit ] ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.096, i64 255) ; 3 uses
  %i.j = sub i64 %.sroa.8.096, %.sroa.speculated  ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.073.095, i64 %.idx ; 3 uses
  %i.l = load i8, ptr %i.f, align 8, !tbaa !647, !range !278, !noundef !242
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i64 %.sroa.speculated to i8
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !201  ; 7 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !197    ; 7 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp ult i64 %i.s, -2                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i8 0, ptr %i.d, align 1, !tbaa !18
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !197 ; 2 uses
  %.pre120 = load ptr, ptr %i.g, align 8, !tbaa !201
  %.pre123 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.p, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 2        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.g, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre123, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.f ]
  %i.w = phi ptr [ %.pre120, %bb.d ], [ %i.o, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.x = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  store i8 11, ptr %i.y, align 1, !tbaa !219
  %i.z = and i64 %i.s, 4294967295                 ; 3 uses
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.aa, %.pre-phi                ; 2 uses
  %.not.i.i.i42 = icmp ugt i64 %i.ab, %i.z
  br i1 %.not.i.i.i42, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.z, i64 noundef %i.ab) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i8 0, ptr %i.c, align 1, !tbaa !18
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %.pre.i46 = load ptr, ptr %3, align 8, !tbaa !197 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !201
  %.pre128 = ptrtoint ptr %.pre.i46 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.s
  %i.ae = getelementptr i8, ptr %i.ad, i64 2      ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.o, %i.ae
  br i1 %.not.i.i.i43, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.pre-phi129 = phi i64 [ %.pre128, %bb.i ], [ %i.r, %bb.j ], [ %i.r, %bb.k ]
  %i.af = phi ptr [ %.pre, %bb.i ], [ %i.o, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i46, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.s
  store i8 10, ptr %i.ah, align 1, !tbaa !219
  %i.ai = and i64 %i.s, 4294967295                ; 3 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.aj, %.pre-phi129             ; 2 uses
  %.not.i.i.i47 = icmp ugt i64 %i.ak, %i.ai
  br i1 %.not.i.i.i47, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.ai, i64 noundef %i.ak) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit
  %.sink178.a = phi ptr [ %i.ac, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.al, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.am = phi ptr [ %i.w, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.af, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink178.a, i64 1
  store i8 %i.n, ptr %i.an, align 1, !tbaa !18
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.ao = phi ptr [ %i.bf, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %i.am, %.lr.ph.preheader ] ; 3 uses
  %.094 = phi ptr [ %i.bg, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %.sroa.073.095, %.lr.ph.preheader ] ; 2 uses
  %i.ap = load i32, ptr %.094, align 4, !tbaa !3
  %i.aq = trunc i32 %i.ap to i8                   ; 2 uses
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !200
  %.not.i.i.i48 = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !18
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !201
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.g, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

bb.n:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %3, align 8, !tbaa !197   ; 4 uses
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 8 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775807
  br i1 %i.ay, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.az = add i64 %.sroa.speculated.i.i.i.i.i, %i.ax ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ax
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 9223372036854775807)
  %i.bc = select i1 %i.ba, i64 9223372036854775807, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i, label %4

4:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i: ; preds = %4, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %6 = phi ptr [ %5, %4 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.ax ; 2 uses
  store i8 %i.aq, ptr %7, align 1, !tbaa !18
  %8 = icmp sgt i64 %i.ax, 0
  br i1 %8, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.p, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #16
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  store ptr %6, ptr %3, align 8, !tbaa !197
  store ptr %i.bd, ptr %i.g, align 8, !tbaa !201
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 %i.bc
  store ptr %i.be, ptr %i.h, align 8, !tbaa !200
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i
  %i.bf = phi ptr [ %i.at, %bb.m ], [ %i.bd, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.094, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.bg, %i.k
  br i1 %.not40, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.sroa.073.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.j, %.loopexit ] ; 2 uses
  %.idx104 = shl nuw nsw i64 %.sroa.8.0.lcssa, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.073.0.lcssa, i64 %.idx104
  %.not99 = icmp eq i64 %.sroa.8.0.lcssa, 0
  br i1 %.not99, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.r

._crit_edge103:                                   ; preds = %bb.ac, %._crit_edge
  ret void

bb.r:                                             ; preds = %.lr.ph102, %bb.ac
  %.039100 = phi ptr [ %.sroa.073.0.lcssa, %.lr.ph102 ], [ %i.cn, %bb.ac ] ; 2 uses
  %i.bk = load i32, ptr %.039100, align 4, !tbaa !3
  %i.bl = load i8, ptr %i.bi, align 8, !tbaa !647, !range !278, !noundef !242
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = trunc i32 %i.bk to i8
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !201 ; 7 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !197   ; 7 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 5 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 7 uses
  %i.bt = icmp ult i64 %i.bs, -2                  ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !18
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bo, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre.i52 = load ptr, ptr %3, align 8, !tbaa !197 ; 2 uses
  %.pre122 = load ptr, ptr %i.bj, align 8, !tbaa !201
  %.pre124 = ptrtoint ptr %.pre.i52 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.u:                                             ; preds = %bb.s
  %i.bu = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 2      ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bo, %i.bv
  br i1 %.not.i.i.i49, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bv, ptr %i.bj, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.pre-phi125 = phi i64 [ %.pre124, %bb.t ], [ %i.br, %bb.u ], [ %i.br, %bb.v ]
  %i.bw = phi ptr [ %.pre122, %bb.t ], [ %i.bo, %bb.u ], [ %i.bv, %bb.v ]
  %i.bx = phi ptr [ %.pre.i52, %bb.t ], [ %i.bp, %bb.u ], [ %i.bp, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bs
  store i8 12, ptr %i.by, align 1, !tbaa !219
  %i.bz = and i64 %i.bs, 4294967295               ; 3 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.ca, %.pre-phi125             ; 2 uses
  %.not.i.i.i53 = icmp ugt i64 %i.cb, %i.bz
  br i1 %.not.i.i.i53, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.bz, i64 noundef %i.cb) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bo, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i57 = load ptr, ptr %3, align 8, !tbaa !197 ; 2 uses
  %.pre121 = load ptr, ptr %i.bj, align 8, !tbaa !201
  %.pre126 = ptrtoint ptr %.pre.i57 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.z:                                             ; preds = %bb.x
  %i.cd = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.ce = getelementptr i8, ptr %i.cd, i64 2      ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.bo, %i.ce
  br i1 %.not.i.i.i54, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ce, ptr %i.bj, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.pre-phi127 = phi i64 [ %.pre126, %bb.y ], [ %i.br, %bb.z ], [ %i.br, %bb.aa ]
  %i.cf = phi ptr [ %.pre121, %bb.y ], [ %i.bo, %bb.z ], [ %i.ce, %bb.aa ]
  %i.cg = phi ptr [ %.pre.i57, %bb.y ], [ %i.bp, %bb.z ], [ %i.bp, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bs
  store i8 7, ptr %i.ch, align 1, !tbaa !219
  %i.ci = and i64 %i.bs, 4294967295               ; 3 uses
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.cj, %.pre-phi127             ; 2 uses
  %.not.i.i.i58 = icmp ugt i64 %i.ck, %i.ci
  br i1 %.not.i.i.i58, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.ci, i64 noundef %i.ck) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit
  %.sink179 = phi ptr [ %i.cl, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit ], [ %i.cc, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink179, i64 1
  store i8 %i.bn, ptr %i.cm, align 1, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.039100, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cn, %i.bh
  br i1 %.not, label %._crit_edge103, label %bb.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %.idx = shl nuw nsw i64 %2, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not64 = icmp eq i64 %2, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.x, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %.065 = phi ptr [ %1, %.lr.ph ], [ %i.br, %bb.x ] ; 2 uses
  %i.i = load i32, ptr %.065, align 4, !tbaa !3   ; 5 uses
  %i.j = icmp ult i32 %i.i, 65536
  br i1 %i.j, label %bb.c, label %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge

._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge: ; preds = %bb.b
  %.pre74 = load i8, ptr %i.g, align 8, !tbaa !647, !range !278
  br label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.f, align 1, !tbaa !654, !range !278, !noundef !242
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = and i32 %i.i, 63488
  %switch.selectcmp.i = icmp eq i32 %i.m, 55296
  %or.cond = and i1 %switch.selectcmp.i, %i.l
  %.pre75 = load i8, ptr %i.g, align 8, !tbaa !647, !range !278 ; 2 uses
  br i1 %or.cond, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread55

_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread: ; preds = %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge, %bb.c
  %i.n = phi i8 [ %.pre74, %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge ], [ %.pre75, %bb.c ]
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !201  ; 7 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !197    ; 7 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 5 uses
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp ult i64 %i.t, -5                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i8 0, ptr %i.d, align 1, !tbaa !18
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.p, i64 noundef 5, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !197 ; 2 uses
  %.pre77 = load ptr, ptr %i.h, align 8, !tbaa !201
  %.pre78 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 5        ; 3 uses
end_hunk_1
