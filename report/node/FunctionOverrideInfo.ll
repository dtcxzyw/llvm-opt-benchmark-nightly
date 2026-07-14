inline.NumInlined: 2978
inline.NumDeleted: 1016
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4LIEF2PE20FunctionOverrideInfoC2ERKS1_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %.pre, %.lr.ph.i ], [ %i.ck, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.04.08.i, align 8
  %i.at = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25, !noalias !6 ; 3 uses
  tail call void @_ZN4LIEF2PE10RelocationC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %.val.i) #26, !noalias !6
  %i.au = load ptr, ptr %i.as, align 8            ; 5 uses
  %i.av = load ptr, ptr %i.ao, align 8
  %.not.i.i.i.i13 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = ptrtoint ptr %i.at to i64
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = load ptr, ptr %i.as, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.as, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.ae, align 8            ; 10 uses
  %i.ba = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 4 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #25 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  %i.bm = ptrtoint ptr %i.at to i64
  store i64 %i.bm, ptr %i.bl, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.az, %i.au
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bn = sub i64 %i.ba, %i.bb
  %i.bo = add i64 %i.bn, -8                       ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bk, i64 8
  %i.br = add i64 %i.ba, -8
  %i.bs = sub i64 %i.br, %i.bb
  %i.bt = and i64 %i.bs, -8                       ; 2 uses
  %scevgep26 = getelementptr i8, ptr %scevgep, i64 %i.bt
  %scevgep27 = getelementptr i8, ptr %i.az, i64 8
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.bt
  %bound0 = icmp ult ptr %i.bk, %scevgep28
  %bound1 = icmp ult ptr %i.az, %scevgep26
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.az, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.bx ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.az, i64 %i.bx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.by = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !alias.scope !16, !noalias !11
  %wide.load30 = load <2 x i64>, ptr %i.by, align 8, !alias.scope !16, !noalias !11
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !19, !noalias !16
  store <2 x i64> %wide.load30, ptr %i.bz, align 8, !alias.scope !19, !noalias !16
  %i.ca = getelementptr i8, ptr %next.gep29, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep29, align 8, !alias.scope !16, !noalias !11
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !alias.scope !16, !noalias !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader32

.lr.ph.i.i.i.i.i.preheader32:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader32, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader32 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader32 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !14, !noalias !11
  store i64 %i.cc, ptr %.012.i.i.i.i.i, align 8, !alias.scope !11, !noalias !14
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !14, !noalias !11
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %i.au
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bv, %middle.block ], [ %i.ce, %.lr.ph.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.cg = load ptr, ptr %i.ao, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.ci) #27
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.bk, ptr %i.ae, align 8
  store ptr %i.cf, ptr %i.as, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.cj, ptr %i.ao, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ck, %.pre14
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_20FunctionOverrideInfoC1ERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.i, !llvm.loop !26

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_20FunctionOverrideInfoC1ERKSH_E3$_0ET0_T_SM_SL_T1_.exit": ; preds = %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN4LIEF2PE20FunctionOverrideInfoaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_20FunctionOverrideInfoaSERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_20FunctionOverrideInfoaSERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp ugt i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.q, align 8              ; 9 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 4 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.t
  br i1 %i.ab, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.af = sub i64 %i.ae, %i.z
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.x, %i.ad
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %2 = add i64 %i.ae, -8
  %i.ah = sub i64 %2, %i.z                        ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = add i64 %i.ae, -8
  %i.al = sub i64 %i.ak, %i.z
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.an
  %scevgep31 = getelementptr i8, ptr %i.x, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %scevgep31
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.x, i64 %i.ar ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.as = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8, !alias.scope !32, !noalias !27
  %wide.load33 = load <2 x i64>, ptr %i.as, align 8, !alias.scope !32, !noalias !27
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !35, !noalias !32
  store <2 x i64> %wide.load33, ptr %i.at, align 8, !alias.scope !35, !noalias !32
  %i.au = getelementptr i8, ptr %next.gep32, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep32, align 8, !alias.scope !32, !noalias !27
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !alias.scope !32, !noalias !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader60

.lr.ph.i.i.i.i.preheader60:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader60, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.aw = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !30, !noalias !27
  store i64 %i.aw, ptr %.012.i.i.i.i, align 8, !alias.scope !27, !noalias !30
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !30, !noalias !27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.ad
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre.i = load ptr, ptr %i.q, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.az = phi ptr [ %.pre.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i ], [ %i.x, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.az, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ba = load ptr, ptr %i.v, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #27
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ag, ptr %i.q, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.be, ptr %i.ac, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store ptr %i.bf, ptr %i.v, align 8
  %.pre = load ptr, ptr %i.l, align 8
  %.pre16 = load ptr, ptr %i.n, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bg = phi ptr [ %i.o, %bb.e ], [ %.pre16, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bh = phi ptr [ %i.m, %bb.e ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not7.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not7.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISD_EZNS4_20FunctionOverrideInfoaSERKSH_E3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.da, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i ] ; 2 uses
  %.val.i = load ptr, ptr %.sroa.04.08.i, align 8
  %i.bj = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25, !noalias !39 ; 3 uses
  tail call void @_ZN4LIEF2PE10RelocationC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %.val.i) #26, !noalias !39
  %i.bk = load ptr, ptr %i.bi, align 8            ; 5 uses
  %i.bl = load ptr, ptr %i.v, align 8
  %.not.i.i.i.i15 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = ptrtoint ptr %i.bj to i64
  store i64 %i.bm, ptr %i.bk, align 8
  %i.bn = load ptr, ptr %i.bi, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.bi, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bp = load ptr, ptr %i.q, align 8             ; 10 uses
  %i.bq = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64               ; 4 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #25 ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  %i.cc = ptrtoint ptr %i.bj to i64
  store i64 %i.cc, ptr %i.cb, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.bp, %i.bk
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.cd = sub i64 %i.bq, %i.br
  %i.ce = add i64 %i.cd, -8                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check44 = icmp ult i64 %i.ce, 56
  br i1 %min.iters.check44, label %.lr.ph.i.i.i.i.i.preheader59, label %vector.memcheck35

vector.memcheck35:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep36 = getelementptr i8, ptr %i.ca, i64 8
  %i.ch = add i64 %i.bq, -8
  %i.ci = sub i64 %i.ch, %i.br
  %i.cj = and i64 %i.ci, -8                       ; 2 uses
  %scevgep37 = getelementptr i8, ptr %scevgep36, i64 %i.cj
  %scevgep38 = getelementptr i8, ptr %i.bp, i64 8
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.cj
  %bound040 = icmp ult ptr %i.ca, %scevgep39
  %bound141 = icmp ult ptr %i.bp, %scevgep37
  %found.conflict42 = and i1 %bound040, %bound141
  br i1 %found.conflict42, label %.lr.ph.i.i.i.i.i.preheader59, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck35
  %n.vec47 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.ck = shl i64 %n.vec47, 3                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ca, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bp, i64 %i.ck
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.cn = shl i64 %index49, 3                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.ca, i64 %i.cn ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bp, i64 %i.cn ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.co = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load52 = load <2 x i64>, ptr %next.gep51, align 8, !alias.scope !49, !noalias !44
  %wide.load53 = load <2 x i64>, ptr %i.co, align 8, !alias.scope !49, !noalias !44
  %i.cp = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %wide.load52, ptr %next.gep50, align 8, !alias.scope !52, !noalias !49
  store <2 x i64> %wide.load53, ptr %i.cp, align 8, !alias.scope !52, !noalias !49
  %i.cq = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !alias.scope !49, !noalias !44
  store <2 x ptr> splat (ptr null), ptr %i.cq, align 8, !alias.scope !49, !noalias !44
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.cr = icmp eq i64 %index.next54, %n.vec47
  br i1 %i.cr, label %middle.block55, label %vector.body48, !llvm.loop !54

middle.block55:                                   ; preds = %vector.body48
  %cmp.n56 = icmp eq i64 %i.cg, %n.vec47
  br i1 %cmp.n56, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader59

.lr.ph.i.i.i.i.i.preheader59:                     ; preds = %vector.memcheck35, %.lr.ph.i.i.i.i.i.preheader, %middle.block55
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i105 = phi i64 [ %i.cg, %bb.j ], [ %.pre2.i.i107, %bb.k ]
  %i.ck = phi i64 [ %i.cf, %bb.j ], [ %.pre.i.i106, %bb.k ]
  %i.cl = load ptr, ptr %8, align 8
  store i64 %.pre-phi.i.i105, ptr %i.m, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  store i32 %i.cd, ptr %i.cm, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit108

_ZN3fmt3v116detail6bigintlSEi.exit108:            ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit, %.lr.ph.i98, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108
  %i.cn = load ptr, ptr %9, align 8
  store i32 1, ptr %i.cn, align 4
  %i.co = load i64, ptr %i.p, align 8
  %.not8.i.i112.not = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i112.not, label %bb.m, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.q, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef 1) #26, !inline_history !297
  %.pre.i.i.i.i113 = load i64, ptr %i.p, align 8
  %i.cq = icmp ne i64 %.pre.i.i.i.i113, 0
  %i.cr = zext i1 %i.cq to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114:       ; preds = %bb.l, %bb.m
  %i.cs = phi i64 [ 1, %bb.l ], [ %i.cr, %bb.m ]  ; 2 uses
  store i64 %i.cs, ptr %i.r, align 8
  %i.ct = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cu = lshr i32 %i.ct, 5
  store i32 %i.cu, ptr %i.t, align 8
  %i.cv = and i32 %i.ct, 31                       ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %.not19.i115 = icmp eq i64 %i.cs, 0
  %or.cond488 = or i1 %i.cw, %.not19.i115
  br i1 %or.cond488, label %bb.p, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114
  %i.cx = sub nuw nsw i32 32, %i.cv
  %i.cy = load ptr, ptr %9, align 8               ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = lshr i32 %i.cz, %i.cx                   ; 2 uses
  %i.db = shl i32 %i.cz, %i.cv
  store i32 %i.db, ptr %i.cy, align 4
  %.not.i121 = icmp eq i32 %i.da, 0
  br i1 %.not.i121, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i116
  %i.dc = load i64, ptr %i.r, align 8             ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.p, align 8
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.o, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.q, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.dd) #26, !inline_history !296
  %.pre.i.i124 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i125 = add i64 %.pre.i.i124, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i123 = phi i64 [ %i.dd, %bb.n ], [ %.pre2.i.i125, %bb.o ]
  %i.dh = phi i64 [ %i.dc, %bb.n ], [ %.pre.i.i124, %bb.o ]
  %i.di = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i123, ptr %i.r, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  store i32 %i.da, ptr %i.dj, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114, %.lr.ph.i116, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122
  %.074 = phi ptr [ null, %_ZN3fmt3v116detail6bigintlSEi.exit108 ], [ %9, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122 ], [ %9, %.lr.ph.i116 ] ; 3 uses
  %i.dk = load i32, ptr %4, align 4
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %7, i32 noundef %i.dk)
  %i.dl = load i64, ptr %i.h, align 8             ; 5 uses
  %.not19.i127 = icmp eq i64 %i.dl, 0
  %extract.t725 = trunc i128 %i.z to i32
  br i1 %.not19.i127, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.p
  %i.dm = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter977 = and i64 %i.dl, 1
  %i.dn = icmp eq i64 %i.dl, 1
  br i1 %i.dn, label %.epil.preheader976, label %.lr.ph.i128.new

.lr.ph.i128.new:                                  ; preds = %.lr.ph.i128
  %unroll_iter981 = and i64 %i.dl, -2
  br label %bb.q

._crit_edge.i132.unr-lcssa:                       ; preds = %bb.q
  %lcmp.mod978.not = icmp eq i64 %xtraiter977, 0
  br i1 %lcmp.mod978.not, label %._crit_edge.i132, label %.epil.preheader976

.epil.preheader976:                               ; preds = %._crit_edge.i132.unr-lcssa, %.lr.ph.i128
  %.01418.i129.epil.init = phi i64 [ 0, %.lr.ph.i128 ], [ %i.eh, %._crit_edge.i132.unr-lcssa ]
  %.017.i130.epil.init = phi i32 [ 0, %.lr.ph.i128 ], [ %i.ee, %._crit_edge.i132.unr-lcssa ]
  %lcmp.mod980 = trunc i64 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod980)
  %i.do = load ptr, ptr %7, align 8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.01418.i129.epil.init ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = lshr i32 %i.dq, %i.dm
  %i.ds = shl i32 %i.dq, %i.v
  %i.dt = add i32 %i.ds, %.017.i130.epil.init
  store i32 %i.dt, ptr %i.dp, align 4
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %._crit_edge.i132.unr-lcssa, %.epil.preheader976
  %.lcssa936 = phi i32 [ %i.ee, %._crit_edge.i132.unr-lcssa ], [ %i.dr, %.epil.preheader976 ] ; 2 uses
  %.not.i133 = icmp eq i32 %.lcssa936, 0
  %extract.t726 = trunc i128 %i.z to i32
  br i1 %.not.i133, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i128.new
  %.01418.i129 = phi i64 [ 0, %.lr.ph.i128.new ], [ %i.eh, %bb.q ] ; 3 uses
  %.017.i130 = phi i32 [ 0, %.lr.ph.i128.new ], [ %i.ee, %bb.q ]
  %niter982 = phi i64 [ 0, %.lr.ph.i128.new ], [ %niter982.next.1, %bb.q ]
  %i.du = load ptr, ptr %7, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.01418.i129 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, %i.dm
  %i.dy = shl i32 %i.dw, %i.v
  %i.dz = add i32 %i.dy, %.017.i130
  store i32 %i.dz, ptr %i.dv, align 4
  %i.ea = load ptr, ptr %7, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.01418.i129
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = lshr i32 %i.ed, %i.dm                   ; 3 uses
  %i.ef = shl i32 %i.ed, %i.v
  %i.eg = add i32 %i.ef, %i.dx
  store i32 %i.eg, ptr %i.ec, align 4
  %i.eh = add nuw i64 %.01418.i129, 2             ; 2 uses
  %niter982.next.1 = add i64 %niter982, 2         ; 2 uses
  %niter982.ncmp.1 = icmp eq i64 %niter982.next.1, %unroll_iter981
  br i1 %niter982.ncmp.1, label %._crit_edge.i132.unr-lcssa, label %bb.q, !llvm.loop !295

bb.r:                                             ; preds = %._crit_edge.i132
  %i.ei = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = icmp ugt i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.s, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

bb.s:                                             ; preds = %bb.r
  %i.em = load ptr, ptr %i.g, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ej) #26, !inline_history !296
  %.pre.i.i136 = load i64, ptr %i.h, align 8      ; 2 uses
  %.pre2.i.i137 = add i64 %.pre.i.i136, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134: ; preds = %bb.s, %bb.r
  %.pre-phi.i.i135 = phi i64 [ %i.ej, %bb.r ], [ %.pre2.i.i137, %bb.s ]
  %i.en = phi i64 [ %i.ei, %bb.r ], [ %.pre.i.i136, %bb.s ]
  %i.eo = load ptr, ptr %7, align 8
  store i64 %.pre-phi.i.i135, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.en
  store i32 %.lcssa936, ptr %i.ep, align 4
  %extract.t723 = trunc i128 %i.z to i32
  br label %_ZN3fmt3v116detail6bigintlSEi.exit138

bb.t:                                             ; preds = %bb.a
  %i.eq = load i32, ptr %4, align 4               ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.es = sub nsw i32 0, %i.eq
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.es)
  %i.et = load i64, ptr %i.c, align 8             ; 7 uses
  %i.eu = load i64, ptr %i.k, align 8
  %i.ev = icmp ugt i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.u
  %i.ew = load ptr, ptr %i.l, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.et) #26, !inline_history !298
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  %i.ex = call noundef i64 @llvm.umin.i64(i64 %i.et, i64 %.pre.i.i.i)
  store i64 %i.ex, ptr %i.m, align 8
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.et, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.u
  store i64 %i.et, ptr %i.m, align 8
  %i.fa = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.et, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.et, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %i.fc = phi ptr [ %i.ez, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.fd = phi ptr [ %i.ey, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fa, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 5 uses
  %10 = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fd to i64
  %11 = load ptr, ptr %8, align 8                 ; 4 uses
  %12 = add i64 %10, -4
  %13 = sub i64 %12, %i.fe                        ; 2 uses
  %i.ff = lshr i64 %13, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 44
  %i.fh = ptrtoaddr ptr %11 to i64
  %i.fi = ptrtoaddr ptr %i.fd to i64
  %i.fj = sub i64 %i.fi, %i.fh
  %diff.check = icmp ugt i64 %i.fj, -32
  %or.cond884 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond884, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.fg, 9223372036854775800     ; 3 uses
  %i.fk = shl i64 %n.vec, 2                       ; 2 uses
  %i.fl = getelementptr i8, ptr %11, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fd, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %11, i64 %i.fn ; 2 uses
  %next.gep861 = getelementptr i8, ptr %i.fd, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep861, align 4
  %wide.load862 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load862, ptr %i.fp, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi ptr [ %11, %.lr.ph.i.preheader.i ], [ %i.fl, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.fd, %.lr.ph.i.preheader.i ], [ %i.fm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ft, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fs = load i32, ptr %.057.i.i, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fs, ptr %.08.i.i, align 4
  %.not.i.i139 = icmp eq ptr %i.fr, %i.fc
  br i1 %.not.i.i139, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !300

_ZN3fmt3v116detail6bigint6assignERKS2_.exit:      ; preds = %.lr.ph.i.i, %middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fu = load i32, ptr %i.e, align 8             ; 2 uses
  store i32 %i.fu, ptr %i.o, align 8
  br i1 %.not, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %i.fv = load i64, ptr %i.c, align 8             ; 7 uses
  %i.fw = load i64, ptr %i.p, align 8
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148: ; preds = %bb.v
  %i.fy = load ptr, ptr %i.q, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.fv) #26, !inline_history !298
  %.pre.i.i.i149 = load i64, ptr %i.p, align 8
  %i.fz = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %.pre.i.i.i149)
  store i64 %i.fz, ptr %i.r, align 8
  %i.ga = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i150 = shl nuw nsw i64 %i.fv, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx8.i150
  br label %.lr.ph.i.preheader.i143

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140: ; preds = %bb.v
  store i64 %i.fv, ptr %i.r, align 8
  %i.gc = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i141 = shl nuw nsw i64 %i.fv, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i141
  %.not6.i.i142 = icmp eq i64 %i.fv, 0
  br i1 %.not6.i.i142, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, label %.lr.ph.i.preheader.i143

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread: ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140
  store i32 %i.fu, ptr %i.t, align 8
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

.lr.ph.i.preheader.i143:                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148
  %i.ge = phi ptr [ %i.gb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gd, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 2 uses
  %i.gf = phi ptr [ %i.ga, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gc, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 5 uses
  %14 = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gf to i64
  %15 = load ptr, ptr %9, align 8                 ; 4 uses
  %16 = add i64 %14, -4
  %17 = sub i64 %16, %i.gg                        ; 2 uses
  %i.gh = lshr i64 %17, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check867 = icmp ult i64 %17, 44
  %i.gj = ptrtoaddr ptr %15 to i64
  %i.gk = ptrtoaddr ptr %i.gf to i64
  %i.gl = sub i64 %i.gk, %i.gj
  %diff.check865 = icmp ugt i64 %i.gl, -32
  %or.cond887 = select i1 %min.iters.check867, i1 true, i1 %diff.check865
  br i1 %or.cond887, label %.lr.ph.i.i144.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %.lr.ph.i.preheader.i143
  %n.vec870 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gm = shl i64 %n.vec870, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %15, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gf, i64 %i.gm
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph868
  %index872 = phi i64 [ 0, %vector.ph868 ], [ %index.next877, %vector.body871 ] ; 2 uses
  %i.gp = shl i64 %index872, 2                    ; 2 uses
  %next.gep873 = getelementptr i8, ptr %15, i64 %i.gp ; 2 uses
  %next.gep874 = getelementptr i8, ptr %i.gf, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep874, i64 16
  %wide.load875 = load <4 x i32>, ptr %next.gep874, align 4
  %wide.load876 = load <4 x i32>, ptr %i.gq, align 4
  %i.gr = getelementptr i8, ptr %next.gep873, i64 16
  store <4 x i32> %wide.load875, ptr %next.gep873, align 4
  store <4 x i32> %wide.load876, ptr %i.gr, align 4
  %index.next877 = add nuw i64 %index872, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next877, %n.vec870
  br i1 %i.gs, label %middle.block878, label %vector.body871, !llvm.loop !301

middle.block878:                                  ; preds = %vector.body871
  %cmp.n879 = icmp eq i64 %i.gi, %n.vec870
  br i1 %cmp.n879, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144.preheader

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph.i.preheader.i143, %middle.block878
  %.08.i.i145.ph = phi ptr [ %15, %.lr.ph.i.preheader.i143 ], [ %i.gn, %middle.block878 ]
  %.057.i.i146.ph = phi ptr [ %i.gf, %.lr.ph.i.preheader.i143 ], [ %i.go, %middle.block878 ]
  br label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %.lr.ph.i.i144.preheader, %.lr.ph.i.i144
  %.08.i.i145 = phi ptr [ %i.gv, %.lr.ph.i.i144 ], [ %.08.i.i145.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %.057.i.i146 = phi ptr [ %i.gt, %.lr.ph.i.i144 ], [ %.057.i.i146.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.057.i.i146, i64 4 ; 2 uses
  %i.gu = load i32, ptr %.057.i.i146, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.08.i.i145, i64 4
  store i32 %i.gu, ptr %.08.i.i145, align 4
  %.not.i.i147 = icmp eq ptr %i.gt, %i.ge
  br i1 %.not.i.i147, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144, !llvm.loop !302

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151:   ; preds = %.lr.ph.i.i144, %middle.block878
  %.pr = load i64, ptr %i.r, align 8              ; 5 uses
  %i.gw = load i32, ptr %i.e, align 8
  store i32 %i.gw, ptr %i.t, align 8
  %.not19.i152 = icmp eq i64 %.pr, 0
  br i1 %.not19.i152, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151
  %xtraiter955 = and i64 %.pr, 1
  %i.gx = icmp eq i64 %.pr, 1
  br i1 %i.gx, label %.lr.ph.i153.epil.preheader, label %.lr.ph.i153.preheader.new

.lr.ph.i153.preheader.new:                        ; preds = %.lr.ph.i153.preheader
  %unroll_iter960 = and i64 %.pr, -2
  br label %.lr.ph.i153

._crit_edge.i157.unr-lcssa:                       ; preds = %.lr.ph.i153
  %lcmp.mod956.not = icmp eq i64 %xtraiter955, 0
  br i1 %lcmp.mod956.not, label %._crit_edge.i157, label %.lr.ph.i153.epil.preheader

.lr.ph.i153.epil.preheader:                       ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.preheader
  %.01418.i154.epil.init = phi i64 [ 0, %.lr.ph.i153.preheader ], [ %i.hp, %._crit_edge.i157.unr-lcssa ]
  %.017.i155.epil.init = phi i32 [ 0, %.lr.ph.i153.preheader ], [ %i.hn, %._crit_edge.i157.unr-lcssa ]
  %lcmp.mod959 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod959)
  %i.gy = load ptr, ptr %9, align 8
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.01418.i154.epil.init ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4            ; 3 uses
  %i.hb = lshr i32 %i.ha, 31
  %i.hc = shl i32 %i.ha, 1
  %i.hd = or disjoint i32 %i.hc, %.017.i155.epil.init
  store i32 %i.hd, ptr %i.gz, align 4
  br label %._crit_edge.i157

._crit_edge.i157:                                 ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.epil.preheader
  %.lcssa942 = phi i32 [ %i.hm, %._crit_edge.i157.unr-lcssa ], [ %i.ha, %.lr.ph.i153.epil.preheader ]
  %.lcssa941 = phi i32 [ %i.hn, %._crit_edge.i157.unr-lcssa ], [ %i.hb, %.lr.ph.i153.epil.preheader ]
  %.not.i158 = icmp sgt i32 %.lcssa942, -1
  br i1 %.not.i158, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.w

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.i153.preheader.new
  %.01418.i154 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hp, %.lr.ph.i153 ] ; 3 uses
  %.017.i155 = phi i32 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hn, %.lr.ph.i153 ]
  %niter961 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %niter961.next.1, %.lr.ph.i153 ]
  %i.he = load ptr, ptr %9, align 8
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.01418.i154 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4            ; 2 uses
  %i.hh = shl i32 %i.hg, 1
  %i.hi = or disjoint i32 %i.hh, %.017.i155
  store i32 %i.hi, ptr %i.hf, align 4
  %i.hj = load ptr, ptr %9, align 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.01418.i154
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4            ; 3 uses
  %i.hn = lshr i32 %i.hm, 31                      ; 3 uses
  %i.ho = call i32 @llvm.fshl.i32(i32 %i.hm, i32 %i.hg, i32 1)
  store i32 %i.ho, ptr %i.hl, align 4
  %i.hp = add nuw i64 %.01418.i154, 2             ; 2 uses
  %niter961.next.1 = add i64 %niter961, 2         ; 2 uses
  %niter961.ncmp.1 = icmp eq i64 %niter961.next.1, %unroll_iter960
  br i1 %niter961.ncmp.1, label %._crit_edge.i157.unr-lcssa, label %.lr.ph.i153, !llvm.loop !295

bb.w:                                             ; preds = %._crit_edge.i157
  %i.hq = load i64, ptr %i.r, align 8             ; 2 uses
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %i.hs = load i64, ptr %i.p, align 8
  %i.ht = icmp ugt i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.x, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

bb.x:                                             ; preds = %bb.w
  %i.hu = load ptr, ptr %i.q, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.hr) #26, !inline_history !296
  %.pre.i.i161 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i162 = add i64 %.pre.i.i161, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159: ; preds = %bb.x, %bb.w
  %.pre-phi.i.i160 = phi i64 [ %i.hr, %bb.w ], [ %.pre2.i.i162, %bb.x ]
  %i.hv = phi i64 [ %i.hq, %bb.w ], [ %.pre.i.i161, %bb.x ]
  %i.hw = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i160, ptr %i.r, align 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  store i32 %.lcssa941, ptr %i.hx, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

_ZN3fmt3v116detail6bigintlSEi.exit163:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159, %._crit_edge.i157, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %.1 = phi ptr [ null, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151 ], [ %9, %._crit_edge.i157 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159 ] ; 3 uses
  %i.hy = load i128, ptr %0, align 16             ; 5 uses
  %i.hz = and i128 %i.hy, 18446744073709551615
  %i.ia = load i64, ptr %i.c, align 8             ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit163
  %i.ib = lshr i128 %i.hy, 32
  %i.ic = and i128 %i.ib, 79228162514264337589248983040
  br label %bb.y

.preheader.i.i:                                   ; preds = %bb.y
  %.not20.i.i = icmp eq i128 %i.io, 0
  br i1 %.not20.i.i, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i164
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i164 ], [ %i.io, %bb.y ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i164 ], [ %i.iq, %bb.y ] ; 2 uses
  %i.id = load ptr, ptr %6, align 8
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %.01718.i.i ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = zext i32 %i.if to i128                  ; 2 uses
  %i.ih = mul nuw nsw i128 %i.hz, %i.ig
  %i.ii = and i128 %.019.i.i, 4294967295
  %i.ij = add nuw nsw i128 %i.ih, %i.ii           ; 2 uses
  %i.ik = mul nuw i128 %i.ic, %i.ig
  %i.il = lshr i128 %i.ij, 32
  %i.im = lshr i128 %.019.i.i, 32
  %i.in = add nuw i128 %i.ik, %i.im
  %i.io = add nuw i128 %i.in, %i.il               ; 3 uses
  %i.ip = trunc i128 %i.ij to i32
  store i32 %i.ip, ptr %i.ie, align 4
  %i.iq = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.iq, %i.ia
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.y, !llvm.loop !303

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i
  %.121.i.i = phi i128 [ %i.ja, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.io, %.preheader.i.i ] ; 2 uses
  %i.ir = trunc i128 %.121.i.i to i32
  %i.is = load i64, ptr %i.c, align 8             ; 2 uses
  %i.it = add i64 %i.is, 1                        ; 3 uses
  %i.iu = load i64, ptr %i.a, align 8
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.z, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.z:                                             ; preds = %.lr.ph22.i.i
  %i.iw = load ptr, ptr %i.b, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.it) #26, !inline_history !304
  %.pre.i.i.i166 = load i64, ptr %i.c, align 8    ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i166, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.z, %.lr.ph22.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.it, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %bb.z ]
  %i.ix = phi i64 [ %i.is, %.lr.ph22.i.i ], [ %.pre.i.i.i166, %bb.z ]
  %i.iy = load ptr, ptr %6, align 8
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ix
  store i32 %i.ir, ptr %i.iz, align 4
  %i.ja = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i165 = icmp eq i128 %i.ja, 0
  br i1 %.not.i.i165, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !305

_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i
  %.pr731 = load i64, ptr %i.c, align 8           ; 5 uses
  %.not19.i167 = icmp eq i64 %.pr731, 0
  br i1 %.not19.i167, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit
  %i.jb = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter963 = and i64 %.pr731, 1
  %i.jc = icmp eq i64 %.pr731, 1
  br i1 %i.jc, label %.epil.preheader962, label %.lr.ph.i168.new

.lr.ph.i168.new:                                  ; preds = %.lr.ph.i168
  %unroll_iter967 = and i64 %.pr731, -2
  br label %bb.aa

._crit_edge.i172.unr-lcssa:                       ; preds = %bb.aa
  %lcmp.mod964.not = icmp eq i64 %xtraiter963, 0
  br i1 %lcmp.mod964.not, label %._crit_edge.i172, label %.epil.preheader962

.epil.preheader962:                               ; preds = %._crit_edge.i172.unr-lcssa, %.lr.ph.i168
  %.01418.i169.epil.init = phi i64 [ 0, %.lr.ph.i168 ], [ %i.jw, %._crit_edge.i172.unr-lcssa ]
  %.017.i170.epil.init = phi i32 [ 0, %.lr.ph.i168 ], [ %i.jt, %._crit_edge.i172.unr-lcssa ]
  %lcmp.mod966 = trunc i64 %.pr731 to i1
  call void @llvm.assume(i1 %lcmp.mod966)
  %i.jd = load ptr, ptr %6, align 8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.01418.i169.epil.init ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4            ; 2 uses
  %i.jg = lshr i32 %i.jf, %i.jb
  %i.jh = shl i32 %i.jf, %i.v
  %i.ji = add i32 %i.jh, %.017.i170.epil.init
  store i32 %i.ji, ptr %i.je, align 4
  br label %._crit_edge.i172

._crit_edge.i172:                                 ; preds = %._crit_edge.i172.unr-lcssa, %.epil.preheader962
  %.lcssa939 = phi i32 [ %i.jt, %._crit_edge.i172.unr-lcssa ], [ %i.jg, %.epil.preheader962 ] ; 2 uses
  %.not.i173 = icmp eq i32 %.lcssa939, 0
  br i1 %.not.i173, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %bb.ab
end_hunk_1
