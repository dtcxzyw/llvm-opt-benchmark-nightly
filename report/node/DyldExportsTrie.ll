inline.NumInlined: 2606
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4LIEF12BinaryStream1pEv:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4LIEF12BinaryStream3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0) #22
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4LIEF10SpanStream5startEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4LIEF10SpanStream3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %0) #22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK4LIEF10SpanStream7read_atEmmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) #22 ; 2 uses
  %i.e = icmp ugt i64 %1, %i.d
  %i.f = add i64 %2, %1
  %i.g = icmp ugt i64 %i.f, %i.d
  %or.cond = or i1 %i.e, %i.g
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.j, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4LIEF12BinaryStream7peek_inEPvmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, i8 } %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, i64 noundef %3, i64 noundef %4) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.d, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.d, 1
  %i.e = trunc nuw i8 %.fca.1.extract to i1
  %.not = xor i1 %i.e, true
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %.not
  %i.g = icmp eq ptr %.fca.0.extract, null
  %or.cond17 = select i1 %or.cond, i1 true, i1 %i.g
  br i1 %or.cond17, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %.fca.0.extract, i64 %3, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %.sroa.415.1 = phi i64 [ 1, %bb.a ], [ 4294967297, %bb.b ]
  ret i64 %.sroa.415.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23.i = icmp ult i64 %i.l, %i.h
  br i1 %.not23.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not28.i = icmp eq ptr %i.b, %i.c
  br i1 %.not28.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  %.not.i27.i = icmp eq ptr %i.c, null
  br i1 %.not.i27.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #25 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = ptrtoint ptr %1 to i64
  %i.t = sub i64 %3, %i.f
  %4 = add i64 %i.t, -8                           ; 2 uses
  %i.u = lshr i64 %4, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.a, -8
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.d, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !35, !noalias !30
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !35, !noalias !30
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !38, !noalias !35
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !alias.scope !38, !noalias !35
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !alias.scope !35, !noalias !30
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !alias.scope !35, !noalias !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !33, !noalias !30
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !30, !noalias !33
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !33, !noalias !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !43

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %5 = ptrtoint ptr %1 to i64
  %i.am = sub i64 %i.e, %5
  %6 = add i64 %i.am, -8                          ; 2 uses
  %i.an = lshr i64 %6, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.e, -8
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec49, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ax = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.ay = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !49, !noalias !44
  %wide.load55 = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !49, !noalias !44
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !alias.scope !52, !noalias !49
  store <2 x i64> %wide.load55, ptr %i.az, align 8, !alias.scope !52, !noalias !49
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !49, !noalias !44
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !alias.scope !49, !noalias !44
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bb, label %middle.block57, label %vector.body50, !llvm.loop !54

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ao, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !47, !noalias !44
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !alias.scope !44, !noalias !47
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !47, !noalias !44
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !55

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.av, %middle.block57 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #23
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bj, ptr %i.bf, align 8
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.select) #26 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN3fmt3v116detail9allocatorIcE8allocateEm.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %2, align 8
  %i.g = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  call void @_ZN3fmt3v116detail11assert_failEPKciS3_(ptr noundef nonnull @.str.7, i32 noundef 748, ptr noundef %i.g) #27
  unreachable

_ZN3fmt3v116detail9allocatorIcE8allocateEm.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ule i64 %i.i, %spec.select
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.e, i64 %i.i, i1 false)
  store ptr %i.f, ptr %0, align 8
  store i64 %spec.select, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.e, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail9allocatorIcE8allocateEm.exit
  tail call void @free(ptr noundef %i.e) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v116detail9allocatorIcE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail11assert_failEPKciS3_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %1, ptr noundef %2) #28 ; 0 uses
  tail call void @abort() #24
  unreachable
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %4 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %5 = alloca %class.anon.109, align 8            ; 5 uses
  %6 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %7 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %8 = alloca %class.anon.84, align 8             ; 5 uses
  %9 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %10 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.90", align 8 ; 5 uses
  %11 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %12 = alloca %class.anon.84, align 8            ; 5 uses
  %13 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %14 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %15 = alloca %class.anon.83, align 8            ; 5 uses
  %16 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
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
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef 1) #22, !inline_history !200
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
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.dd) #22, !inline_history !199
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
  br i1 %niter982.ncmp.1, label %._crit_edge.i132.unr-lcssa, label %bb.q, !llvm.loop !198

bb.r:                                             ; preds = %._crit_edge.i132
  %i.ei = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = icmp ugt i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.s, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

bb.s:                                             ; preds = %bb.r
  %i.em = load ptr, ptr %i.g, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ej) #22, !inline_history !199
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
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.et) #22, !inline_history !201
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
  %10 = load ptr, ptr %8, align 8                 ; 4 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %11 = ptrtoint ptr %i.fd to i64
  %12 = sub i64 %i.fe, %11
  %13 = add i64 %12, -4                           ; 2 uses
  %i.ff = lshr i64 %13, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 44
  %i.fh = ptrtoaddr ptr %10 to i64
  %i.fi = ptrtoaddr ptr %i.fd to i64
  %i.fj = sub i64 %i.fi, %i.fh
  %diff.check = icmp ugt i64 %i.fj, -32
  %or.cond884 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond884, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.fg, 9223372036854775800     ; 3 uses
  %i.fk = shl i64 %n.vec, 2                       ; 2 uses
  %i.fl = getelementptr i8, ptr %10, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fd, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %10, i64 %i.fn ; 2 uses
  %next.gep861 = getelementptr i8, ptr %i.fd, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep861, align 4
  %wide.load862 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load862, ptr %i.fp, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi ptr [ %10, %.lr.ph.i.preheader.i ], [ %i.fl, %middle.block ]
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
  br i1 %.not.i.i139, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !203

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
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.fv) #22, !inline_history !201
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
  %14 = load ptr, ptr %9, align 8                 ; 4 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %15 = ptrtoint ptr %i.gf to i64
  %16 = sub i64 %i.gg, %15
  %17 = add i64 %16, -4                           ; 2 uses
  %i.gh = lshr i64 %17, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check867 = icmp ult i64 %17, 44
  %i.gj = ptrtoaddr ptr %14 to i64
  %i.gk = ptrtoaddr ptr %i.gf to i64
  %i.gl = sub i64 %i.gk, %i.gj
  %diff.check865 = icmp ugt i64 %i.gl, -32
  %or.cond887 = select i1 %min.iters.check867, i1 true, i1 %diff.check865
  br i1 %or.cond887, label %.lr.ph.i.i144.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %.lr.ph.i.preheader.i143
  %n.vec870 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gm = shl i64 %n.vec870, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %14, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gf, i64 %i.gm
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph868
  %index872 = phi i64 [ 0, %vector.ph868 ], [ %index.next877, %vector.body871 ] ; 2 uses
  %i.gp = shl i64 %index872, 2                    ; 2 uses
  %next.gep873 = getelementptr i8, ptr %14, i64 %i.gp ; 2 uses
  %next.gep874 = getelementptr i8, ptr %i.gf, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep874, i64 16
  %wide.load875 = load <4 x i32>, ptr %next.gep874, align 4
  %wide.load876 = load <4 x i32>, ptr %i.gq, align 4
  %i.gr = getelementptr i8, ptr %next.gep873, i64 16
  store <4 x i32> %wide.load875, ptr %next.gep873, align 4
  store <4 x i32> %wide.load876, ptr %i.gr, align 4
  %index.next877 = add nuw i64 %index872, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next877, %n.vec870
  br i1 %i.gs, label %middle.block878, label %vector.body871, !llvm.loop !204

middle.block878:                                  ; preds = %vector.body871
  %cmp.n879 = icmp eq i64 %i.gi, %n.vec870
  br i1 %cmp.n879, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144.preheader

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph.i.preheader.i143, %middle.block878
  %.08.i.i145.ph = phi ptr [ %14, %.lr.ph.i.preheader.i143 ], [ %i.gn, %middle.block878 ]
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
  br i1 %.not.i.i147, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144, !llvm.loop !205

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
  br i1 %niter961.ncmp.1, label %._crit_edge.i157.unr-lcssa, label %.lr.ph.i153, !llvm.loop !198

bb.w:                                             ; preds = %._crit_edge.i157
  %i.hq = load i64, ptr %i.r, align 8             ; 2 uses
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %i.hs = load i64, ptr %i.p, align 8
  %i.ht = icmp ugt i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.x, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

bb.x:                                             ; preds = %bb.w
  %i.hu = load ptr, ptr %i.q, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.hr) #22, !inline_history !199
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
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.y, !llvm.loop !206

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
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.it) #22, !inline_history !207
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
  br i1 %.not.i.i165, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !208

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
