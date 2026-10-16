Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldExportsTrie?download=true
inline.NumInlined: 2851
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4LIEF12BinaryStream9read_dataERSt6vectorIhSaIhEEm:bb.a
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %2, i64 noundef 0) #23
  %i.g = and i64 %i.f, 4294967296
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !90
  %i.i = add i64 %i.h, %2
  store i64 %i.i, ptr %i.a, align 8, !tbaa !90
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi i64 [ 4294967297, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4LIEF10SpanStream1pEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4LIEF12BinaryStream5startEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4LIEF12BinaryStream1pEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4LIEF12BinaryStream3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4LIEF10SpanStream5startEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4LIEF10SpanStream3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245
  %i.c = load ptr, ptr %0, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %0) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK4LIEF10SpanStream7read_atEmmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %i.e = icmp ugt i64 %1, %i.d
  %i.f = sub nuw i64 %i.d, %1
  %i.g = icmp ugt i64 %2, %i.f
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245
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
define linkonce_odr hidden i64 @_ZNK4LIEF12BinaryStream7peek_inEPvmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { ptr, i8 } %i.d(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, i64 noundef %3, i64 noundef %4) #23 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.e, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.e, 1
  %i.f = trunc nuw i8 %.fca.1.extract to i1
  %i.g = icmp ne ptr %.fca.0.extract, null
  %or.cond.not = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %.fca.0.extract, i64 %3, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.415.1 = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ 4294967297, %bb.c ]
  ret i64 %.sroa.415.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4LIEF12BinaryStream11bind_binaryERNS_6BinaryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !61
  store i64 %i.r, ptr %i.q, align 8, !tbaa !61
  store ptr null, ptr %2, align 8, !tbaa !61
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !61, !alias.scope !716
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !61, !alias.scope !716
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !61, !alias.scope !715
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !61, !alias.scope !715
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !61, !alias.scope !716
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !61, !alias.scope !716
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !61, !alias.scope !716
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !61, !alias.scope !715
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !61, !alias.scope !716
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !706

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound0 = icmp ult ptr %i.ah, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec42, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.au = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !61, !alias.scope !719
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !tbaa !61, !alias.scope !719
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !61, !alias.scope !720, !noalias !721
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !tbaa !61, !alias.scope !720, !noalias !721
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !61, !alias.scope !719
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !61, !alias.scope !719
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !713

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !61, !alias.scope !718
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !61, !alias.scope !717
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !61, !alias.scope !718
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !714

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !63
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #24
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !58
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !59
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !63
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { cold nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!35, !36}
!llvm.ident = !{!37}
!llvm.errno.tbaa = !{!42}

!0 = distinct !{!0, !62}
!1 = distinct !{!1, !62}
!2 = distinct !{!2, !62}
!3 = distinct !{null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null}
!6 = distinct !{!6, !62}
!7 = distinct !{!7, !62}
!8 = distinct !{!8, !62}
!9 = distinct !{!9, !62}
!10 = distinct !{null, null}
!11 = distinct !{null, null}
!12 = distinct !{!12, !62}
!13 = distinct !{!13, !62}
!14 = distinct !{!14, !62}
!15 = distinct !{!15, !62}
!16 = distinct !{!16, !62}
!17 = distinct !{null, null, null, null}
!18 = distinct !{!18, !62}
!19 = distinct !{null, null}
!20 = distinct !{null}
!21 = distinct !{null, null}
!22 = distinct !{null, null, null}
!23 = distinct !{null, null, null, null, null}
!24 = distinct !{!24, !62}
!25 = distinct !{null, null, null, null}
!26 = distinct !{!26, !62}
!27 = distinct !{!27, !62}
!28 = distinct !{null, null, null}
!29 = distinct !{null, null, null, null}
!30 = distinct !{null, null, null}
!31 = distinct !{!31, !62}
!32 = distinct !{!32, !62}
!33 = distinct !{null, null, null, null}
!34 = distinct !{null, null, null, null, null}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"omnipotent char", !38, i64 0}
!40 = !{!"int", !39, i64 0}
!41 = !{!"__libc_errno", !40, i64 0}
!42 = !{!41, !40, i64 0}
!43 = !{!"_ZTSN4LIEF6ObjectE"}
!44 = !{!"any pointer", !39, i64 0}
!45 = !{!"p1 omnipotent char", !44, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIhSaIhEE", !48, i64 0}
!50 = !{!"_ZTSN4LIEF5MachO11LoadCommand4TYPEE", !39, i64 0}
!51 = !{!"long", !39, i64 0}
!52 = !{!"_ZTSN4LIEF5MachO11LoadCommandE", !43, i64 0, !49, i64 8, !50, i64 32, !40, i64 40, !51, i64 48}
!53 = !{!52, !51, i64 48}
!54 = !{!"vtable pointer", !38, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 _ZTSSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EE", !44, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 0}
!59 = !{!57, !56, i64 8}
!60 = !{!"p1 _ZTSN4LIEF5MachO10ExportInfoE", !44, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!57, !56, i64 16}
!64 = !{!46, !45, i64 0}
!65 = !{!46, !45, i64 16}
!66 = !{!46, !45, i64 8}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = !{!45, !45, i64 0}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!39, !39, i64 0}
!71 = !{!40, !40, i64 0}
!72 = !{!51, !51, i64 0}
!73 = !{i64 0, i64 8, !68, i64 8, i64 8, !72}
!74 = !{!56, !56, i64 0}
!75 = !{!"_ZTSSt13_Ios_Fmtflags", !39, i64 0}
!76 = !{!"_ZTSSt12_Ios_Iostate", !39, i64 0}
!77 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !44, i64 0}
!78 = !{!"_ZTSNSt8ios_base6_WordsE", !44, i64 0, !51, i64 8}
!79 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !44, i64 0}
!80 = !{!"p1 _ZTSNSt6locale5_ImplE", !44, i64 0}
!81 = !{!"_ZTSSt6locale", !80, i64 0}
!82 = !{!"_ZTSSt8ios_base", !51, i64 8, !51, i64 16, !75, i64 24, !76, i64 28, !76, i64 32, !77, i64 40, !78, i64 48, !39, i64 64, !40, i64 192, !79, i64 200, !81, i64 208}
!83 = !{!"bool", !39, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!85 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !84, i64 0, !51, i64 8, !39, i64 16}
!86 = !{!84, !45, i64 0}
!87 = !{!85, !51, i64 8}
!88 = !{!"_ZTSN4LIEF12BinaryStream11STREAM_TYPEE", !39, i64 0}
!89 = !{!"_ZTSN4LIEF12BinaryStreamE", !51, i64 8, !83, i64 16, !88, i64 20}
!90 = !{!89, !51, i64 8}
!91 = !{!"_ZTSN3tcb6detail12span_storageIKhLm18446744073709551615EEE", !45, i64 0, !51, i64 8}
!92 = !{!85, !45, i64 0}
!93 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !45, i64 0, !51, i64 8, !51, i64 16, !44, i64 24}
!94 = !{!93, !44, i64 24}
!95 = !{!93, !45, i64 0}
!96 = !{!93, !51, i64 16}
!97 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !45, i64 0, !51, i64 8}
!98 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !97, i64 0, !40, i64 16}
!99 = !{!98, !40, i64 16}
!100 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !44, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!"long long", !39, i64 0}
!103 = !{!44, !44, i64 0}
!104 = !{!93, !51, i64 8}
!105 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !102, i64 0, !39, i64 8}
!106 = !{!105, !102, i64 0}
!107 = !{!"_ZTSN3fmt3v126detail4typeE", !39, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"_ZTSN3fmt3v1211basic_specsE", !40, i64 0, !39, i64 4}
!110 = !{!109, !40, i64 0}
!111 = !{!"_ZTSN3fmt3v1212format_specsE", !109, i64 0, !40, i64 8, !40, i64 12}
!112 = !{!111, !40, i64 12}
!113 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !51, i64 0, !40, i64 8}
!114 = !{!113, !51, i64 0}
!115 = !{!113, !40, i64 8}
!116 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !44, i64 0}
!117 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !116, i64 0, !40, i64 8}
!118 = !{!117, !40, i64 8}
!119 = !{!"llvm.loop.isvectorized", i32 1}
!120 = !{!"llvm.loop.unroll.runtime.disable"}
!121 = !{!"branch_weights", i32 4, i32 28}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !{!81, !80, i64 0}
!124 = !{!"any p2 pointer", !44, i64 0}
!125 = !{!"p2 _ZTSNSt6locale5facetE", !124, i64 0}
!126 = !{!"p2 omnipotent char", !124, i64 0}
!127 = !{!"_ZTSNSt6locale5_ImplE", !40, i64 0, !125, i64 8, !51, i64 16, !125, i64 24, !126, i64 32}
!128 = !{!127, !125, i64 8}
!129 = !{!"p1 _ZTSNSt6locale5facetE", !44, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev}
!132 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !83, i64 0, !39, i64 1}
!133 = !{!132, !83, i64 0}
!134 = !{!132, !39, i64 1}
!135 = !{!111, !40, i64 8}
!136 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !44, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !39, i64 0}
!139 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !138, i64 0, !107, i64 16}
!140 = !{!139, !107, i64 16}
!141 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !100, i64 0}
!142 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !141, i64 0, !136, i64 8, !85, i64 16, !85, i64 48, !85, i64 80}
!143 = !{!142, !136, i64 8}
!144 = !{}
!145 = !{i64 4}
!146 = !{!"p1 int", !44, i64 0}
!147 = !{!146, !146, i64 0}
!148 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !44, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !44, i64 0}
!151 = !{!150, !150, i64 0}
!152 = !{i64 8}
!153 = !{i8 0, i8 2}
!154 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !45, i64 0, !45, i64 8, !40, i64 16}
!155 = !{!154, !45, i64 0}
!156 = !{!154, !45, i64 8}
!157 = !{!154, !40, i64 16}
!158 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !146, i64 0, !51, i64 8, !51, i64 16, !44, i64 24}
!159 = !{!158, !146, i64 0}
!160 = !{!158, !51, i64 16}
!161 = !{!158, !51, i64 8}
!162 = !{!97, !45, i64 0}
!163 = !{!97, !51, i64 8}
!164 = !{!"_ZTSN3fmt3v124signE", !39, i64 0}
!165 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !164, i64 0, !45, i64 8}
!166 = !{!165, !164, i64 0}
!167 = !{!165, !45, i64 8}
!168 = !{!164, !164, i64 0}
!169 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !40, i64 0, !40, i64 4}
!170 = !{!169, !40, i64 4}
!171 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !44, i64 0}
!172 = !{!171, !171, i64 0}
!173 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !44, i64 0}
!174 = !{!173, !173, i64 0}
!175 = !{!83, !83, i64 0}
!176 = !{!"p1 bool", !44, i64 0}
!177 = !{!176, !176, i64 0}
!178 = !{!169, !40, i64 0}
!179 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !51, i64 0, !40, i64 8}
!180 = !{!179, !40, i64 8}
!181 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !44, i64 0}
!182 = !{!181, !181, i64 0}
!183 = !{!179, !51, i64 0}
!184 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !45, i64 0, !40, i64 8, !40, i64 12}
!185 = !{!184, !45, i64 0}
!186 = !{!184, !40, i64 8}
!187 = !{!184, !40, i64 12}
!188 = !{!"__int128", !39, i64 0}
!189 = !{!188, !188, i64 0}
!190 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !146, i64 0, !51, i64 8, !51, i64 16, !44, i64 24}
!191 = !{!190, !44, i64 24}
!192 = !{!190, !146, i64 0}
!193 = !{!190, !51, i64 16}
!194 = !{!"_ZTSN3fmt3v126detail9allocatorIjEE"}
!195 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !190, i64 0, !39, i64 32, !194, i64 160}
!196 = !{!"_ZTSN3fmt3v126detail6bigintE", !195, i64 0, !40, i64 168}
!197 = !{!196, !40, i64 168}
!198 = !{!190, !51, i64 8}
!199 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !164, i64 0, !184, i64 8, !40, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !40, i64 40}
!200 = !{!199, !164, i64 0}
!201 = !{!199, !40, i64 24}
!202 = !{!199, !39, i64 28}
!203 = !{!199, !40, i64 32}
!204 = !{!199, !39, i64 36}
!205 = !{!199, !40, i64 40}
!206 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !85, i64 0, !39, i64 32}
!207 = !{!206, !39, i64 32}
!208 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !44, i64 0}
!209 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !44, i64 0}
!210 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !209, i64 0, !51, i64 8}
!211 = !{!210, !51, i64 8}
!212 = !{!210, !209, i64 0}
!213 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !45, i64 0, !40, i64 8}
!214 = !{!213, !45, i64 0}
!215 = !{!213, !40, i64 8}
!216 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !39, i64 0}
!217 = !{!216, !216, i64 0}
!218 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !44, i64 0}
!219 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !44, i64 0}
!220 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !164, i64 0, !169, i64 4, !40, i64 12, !39, i64 16, !40, i64 20, !39, i64 24, !40, i64 28}
!221 = !{!220, !164, i64 0}
!222 = !{!220, !40, i64 12}
!223 = !{!220, !39, i64 16}
!224 = !{!220, !40, i64 20}
!225 = !{!220, !39, i64 24}
!226 = !{!220, !40, i64 28}
!227 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !164, i64 0, !179, i64 8, !40, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !40, i64 40}
!228 = !{!227, !164, i64 0}
!229 = !{!227, !40, i64 24}
!230 = !{!227, !39, i64 28}
!231 = !{!227, !40, i64 32}
!232 = !{!227, !39, i64 36}
!233 = !{!227, !40, i64 40}
!234 = !{!"p1 long", !44, i64 0}
!235 = !{!234, !234, i64 0}
!236 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !44, i64 0}
!237 = !{!236, !236, i64 0}
!238 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !83, i64 0, !51, i64 8, !97, i64 16}
!239 = !{!238, !83, i64 0}
!240 = !{!238, !51, i64 8}
!241 = !{!"branch_weights", i32 8, i32 24}
!242 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !93, i64 0, !39, i64 32, !51, i64 288}
!243 = !{!242, !51, i64 288}
!244 = !{!"_ZTSN3tcb4spanIKhLm18446744073709551615EEE", !91, i64 0}
!245 = !{!244, !45, i64 0}
!246 = distinct !{null, null, null, null, null, null}
!247 = distinct !{!247, !62}
!248 = !{!"_ZTSN4LIEF5MachO7details21linkedit_data_commandE", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!249 = !{!248, !40, i64 0}
!250 = !{!248, !40, i64 4}
!251 = !{!52, !50, i64 32}
!252 = !{!52, !40, i64 40}
!253 = distinct !{!253, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!254 = distinct !{!254, !253, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!255 = distinct !{!255, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!256 = distinct !{!256, !255, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!257 = !{!"p1 _ZTSSo", !44, i64 0}
!258 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !44, i64 0}
!259 = !{!"p1 _ZTSSt5ctypeIcE", !44, i64 0}
!260 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !44, i64 0}
!261 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !44, i64 0}
!262 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !82, i64 0, !257, i64 216, !39, i64 224, !83, i64 225, !258, i64 232, !259, i64 240, !260, i64 248, !261, i64 256}
!263 = !{!262, !257, i64 216}
!264 = !{!262, !39, i64 224}
!265 = !{!262, !83, i64 225}
!266 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !81, i64 56}
!267 = !{!"_ZTSSt13_Ios_Openmode", !39, i64 0}
!268 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !266, i64 0, !267, i64 64, !85, i64 72}
!269 = !{!268, !267, i64 64}
!270 = !{!89, !83, i64 16}
!271 = !{!89, !88, i64 20}
!272 = !{!91, !45, i64 0}
!273 = !{!91, !51, i64 8}
!274 = !{!254}
!275 = !{!256}
!276 = !{!256, !254}
!277 = !{!266, !45, i64 40}
!278 = !{!266, !45, i64 32}
!279 = distinct !{!279, i1 true, !"_ZN3fmt3v126formatIJjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!280 = distinct !{!280, !279, !"_ZN3fmt3v126formatIJjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!281 = distinct !{!281, i1 true, !"_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!282 = distinct !{!282, !281, !"_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!283 = distinct !{!283, i1 true, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!284 = distinct !{!284, !283, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!285 = !{!82, !51, i64 16}
!286 = !{!"_ZTSN3tcb6detail12span_storageIhLm18446744073709551615EEE", !45, i64 0, !51, i64 8}
!287 = !{!"_ZTSN3tcb4spanIhLm18446744073709551615EEE", !286, i64 0}
!288 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !57, i64 0}
!289 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE", !288, i64 0}
!290 = !{!"_ZTSSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE", !289, i64 0}
!291 = !{!"_ZTSN4LIEF5MachO15DyldExportsTrieE", !52, i64 0, !40, i64 56, !40, i64 60, !287, i64 64, !290, i64 80}
!292 = !{!291, !40, i64 56}
!293 = !{!291, !40, i64 60}
!294 = !{!280}
!295 = !{!282}
!296 = !{!102, !102, i64 0}
!297 = !{!284}
!298 = !{!284, !282}
!299 = !{ptr @_ZN4LIEF5MachO15DyldExportsTrieC2ERKS1_}
!300 = !{!"p1 _ZTSN4LIEF5MachO11LoadCommandE", !44, i64 0}
!301 = !{!"_ZTSSt10_Head_baseILm0EPN4LIEF5MachO11LoadCommandELb0EE", !300, i64 0}
!302 = !{!301, !300, i64 0}
!303 = !{!"p1 _ZTS8_IO_FILE", !44, i64 0}
!304 = !{!303, !303, i64 0}
!305 = distinct !{!305, i1 true, !"_ZNK3fmt3v127context3argEi"}
!306 = distinct !{!306, !305, !"_ZNK3fmt3v127context3argEi: argument 0"}
!307 = distinct !{!307, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!308 = distinct !{!308, !307, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!309 = distinct !{null, null, null, null}
!310 = distinct !{null, null, null, null}
!311 = distinct !{null, null, null, null}
!312 = distinct !{null, null, null, null, null}
!313 = distinct !{null, null}
!314 = distinct !{!314, i1 true, !"_ZNK3fmt3v127context3argEi"}
!315 = distinct !{!315, !314, !"_ZNK3fmt3v127context3argEi: argument 0"}
!316 = distinct !{!316, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!317 = distinct !{!317, !316, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!318 = !{!308, !306}
!319 = !{!116, !116, i64 0}
!320 = !{!317, !315}
!321 = distinct !{!321, !62, !119, !120}
!322 = distinct !{!322, !62, !119, !120}
!323 = distinct !{!323, !122}
!324 = distinct !{!324, !62, !119}
!325 = !{!127, !51, i64 16}
!326 = distinct !{!326, !62}
!327 = distinct !{null, null, null, null}
!328 = distinct !{null, null, null, null, null}
!329 = distinct !{null, null, null}
!330 = distinct !{null, null, null, null}
!331 = distinct !{!331, !62}
!332 = distinct !{!332, i1 true, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!333 = distinct !{!333, !332, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!334 = distinct !{null}
!335 = distinct !{null}
!336 = !{!"_ZTSNSt6locale5facetE", !40, i64 8}
!337 = !{!336, !40, i64 8}
!338 = !{!333}
!339 = distinct !{!339, i1 true, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!340 = distinct !{!340, !339, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!341 = !{!340}
!342 = distinct !{!342, i1 true, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!343 = distinct !{!343, !342, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!344 = !{!343}
!345 = distinct !{!345, !62}
!346 = distinct !{!346, !62}
!347 = distinct !{null, null, null, null}
!348 = distinct !{!348, !62}
!349 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !146, i64 0, !148, i64 8, !150, i64 16}
!350 = !{!349, !146, i64 0}
!351 = !{!349, !148, i64 8}
!352 = !{!349, !150, i64 16}
!353 = distinct !{null, null, null, null}
!354 = distinct !{null, null, null, null}
!355 = distinct !{!355, !62}
!356 = distinct !{!356, !62, !119, !120}
!357 = distinct !{!357, !62, !119, !120}
!358 = distinct !{!358, !122}
!359 = distinct !{!359, !62, !119}
!360 = distinct !{!360, !62}
!361 = distinct !{!361, !62}
!362 = distinct !{!362, !62}
!363 = distinct !{!363, !62}
!364 = distinct !{null, null}
!365 = distinct !{!365, !62, !119, !120}
!366 = distinct !{!366, !62, !119, !120}
!367 = distinct !{!367, !122}
!368 = distinct !{!368, !62, !119}
!369 = distinct !{!369, !62}
!370 = !{!158, !44, i64 24}
!371 = distinct !{!371, !62}
!372 = distinct !{!372, !62}
!373 = distinct !{!373, !62}
!374 = distinct !{null, null, null, null}
!375 = distinct !{!375, !62}
!376 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !146, i64 0, !148, i64 8, !150, i64 16}
!377 = !{!376, !146, i64 0}
!378 = !{!376, !148, i64 8}
!379 = !{!376, !150, i64 16}
!380 = distinct !{null, null, null}
!381 = distinct !{!381, !62, !119, !120}
!382 = distinct !{!382, !62, !119, !120}
!383 = distinct !{!383, !122}
!384 = distinct !{!384, !62, !119}
!385 = distinct !{null, null, null, null}
!386 = distinct !{null, null, null, null}
!387 = distinct !{null, null, null, null}
!388 = distinct !{null, null, null}
!389 = distinct !{!389, !62, !119, !120}
!390 = distinct !{!390, !62, !119, !120}
!391 = distinct !{!391, !122}
!392 = distinct !{!392, !62, !119}
!393 = distinct !{null, null, null, null, null}
!394 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E_", !44, i64 0, !171, i64 8, !146, i64 16, !173, i64 24, !136, i64 32, !45, i64 40, !146, i64 48}
!395 = !{!394, !44, i64 0}
!396 = !{!394, !171, i64 8}
!397 = !{!394, !146, i64 16}
!398 = !{!394, !136, i64 32}
!399 = !{!394, !45, i64 40}
!400 = !{!394, !146, i64 48}
!401 = distinct !{null, null, null, null}
!402 = distinct !{null, null, null, null, null}
!403 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !44, i64 0, !171, i64 8, !146, i64 16, !146, i64 24, !45, i64 32, !173, i64 40, !146, i64 48}
!404 = !{!403, !44, i64 0}
!405 = !{!403, !171, i64 8}
!406 = !{!403, !146, i64 16}
!407 = !{!403, !146, i64 24}
!408 = !{!403, !45, i64 32}
!409 = !{!403, !173, i64 40}
!410 = !{!403, !146, i64 48}
!411 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !44, i64 0, !176, i64 8, !45, i64 16, !146, i64 24, !171, i64 32, !146, i64 40}
!412 = !{!411, !44, i64 0}
!413 = !{!411, !176, i64 8}
!414 = !{!411, !45, i64 16}
!415 = !{!411, !146, i64 24}
!416 = !{!411, !171, i64 32}
!417 = !{!411, !146, i64 40}
!418 = distinct !{null, null, null, null}
!419 = distinct !{null, null, null, null}
!420 = distinct !{null, null, null, null, null}
!421 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E_", !44, i64 0, !181, i64 8, !146, i64 16, !173, i64 24, !136, i64 32, !45, i64 40, !146, i64 48}
!422 = !{!421, !44, i64 0}
!423 = !{!421, !181, i64 8}
!424 = !{!421, !146, i64 16}
!425 = !{!421, !136, i64 32}
!426 = !{!421, !45, i64 40}
!427 = !{!421, !146, i64 48}
!428 = distinct !{null, null, null, null}
!429 = distinct !{null, null, null, null, null}
!430 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !44, i64 0, !181, i64 8, !146, i64 16, !146, i64 24, !45, i64 32, !173, i64 40, !146, i64 48}
!431 = !{!430, !44, i64 0}
!432 = !{!430, !181, i64 8}
!433 = !{!430, !146, i64 16}
!434 = !{!430, !146, i64 24}
!435 = !{!430, !45, i64 32}
!436 = !{!430, !173, i64 40}
!437 = !{!430, !146, i64 48}
!438 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !44, i64 0, !176, i64 8, !45, i64 16, !146, i64 24, !181, i64 32, !146, i64 40}
!439 = !{!438, !44, i64 0}
!440 = !{!438, !176, i64 8}
!441 = !{!438, !45, i64 16}
!442 = !{!438, !146, i64 24}
!443 = !{!438, !181, i64 32}
!444 = !{!438, !146, i64 40}
!445 = distinct !{!445, !62}
!446 = distinct !{!446, !62, !119, !120}
!447 = distinct !{!447, !62, !119, !120}
!448 = distinct !{!448, !122}
!449 = distinct !{!449, !62, !119}
!450 = distinct !{!450, !62}
!451 = distinct !{!451, !62}
!452 = distinct !{null, null, null}
!453 = distinct !{!453, !62, !119, !120}
!454 = distinct !{!454, !62, !119, !120}
!455 = distinct !{!455, !122}
!456 = distinct !{!456, !62, !119}
!457 = distinct !{!457, !62}
!458 = distinct !{!458, !62, !119, !120}
!459 = distinct !{!459, !62, !120, !119}
!460 = distinct !{!460, !62, !119, !120}
!461 = distinct !{!461, !62, !120, !119}
!462 = distinct !{null, null, null, null}
!463 = distinct !{!463, !62, !119, !120}
!464 = distinct !{!464, !62, !119}
!465 = distinct !{!465, !62, !119, !120}
!466 = distinct !{!466, !62, !119}
!467 = distinct !{!467, !62, !119, !120}
!468 = distinct !{!468, !62, !120, !119}
!469 = distinct !{!469, !62}
!470 = distinct !{null, null, null, null}
!471 = distinct !{!471, !62}
!472 = distinct !{!472, !62, !119, !120}
!473 = distinct !{!473, !62, !120, !119}
!474 = distinct !{!474, !62, !119, !120}
!475 = distinct !{!475, !62, !120, !119}
!476 = distinct !{!476, !62, !119, !120}
!477 = distinct !{!477, !62, !120, !119}
!478 = distinct !{null, null, null, null, null}
!479 = distinct !{!479, !62}
!480 = distinct !{!480, !62}
!481 = distinct !{!481, !62}
!482 = distinct !{!482, !62}
!483 = !{!"_ZTSN3fmt3v126detail8basic_fpIoEE", !188, i64 0, !40, i64 16}
!484 = !{!483, !40, i64 16}
!485 = !{!483, !188, i64 0}
!486 = distinct !{!486, !62}
!487 = distinct !{!487, !62, !119, !120}
!488 = distinct !{!488, !62, !120, !119}
!489 = distinct !{null, null, null, null}
!490 = distinct !{!490, !62, !119, !120}
!491 = distinct !{!491, !122}
!492 = distinct !{!492, !62, !119}
!493 = distinct !{!493, !62}
!494 = distinct !{null, null, null, null, null}
!495 = distinct !{!495, !62}
!496 = distinct !{null, null, null}
!497 = distinct !{!497, !62}
!498 = distinct !{!498, !62}
!499 = distinct !{null, null, null, null}
!500 = distinct !{!500, !62}
!501 = distinct !{!501, !62}
!502 = distinct !{null, null, null, null}
!503 = !{i64 0, i64 8, !68, i64 8, i64 4, !71, i64 12, i64 4, !71}
!504 = distinct !{null, null, null, null}
!505 = distinct !{null, null, null, null}
!506 = distinct !{null, null, null, null, null}
!507 = distinct !{null, null, null, null}
!508 = !{!208, !208, i64 0}
!509 = !{!199, !45, i64 8}
!510 = distinct !{!510, i1 true, !"_ZN3fmt3v126detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE"}
!511 = distinct !{!511, !510, !"_ZN3fmt3v126detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE: argument 0"}
!512 = distinct !{!512, i1 true, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!513 = distinct !{!513, !512, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!514 = distinct !{null, null}
!515 = distinct !{null, null}
!516 = !{!511}
!517 = !{!513, !511}
!518 = distinct !{!518, !62, !119, !120}
!519 = distinct !{!519, !62, !119, !120}
!520 = distinct !{!520, !122}
!521 = distinct !{!521, !62, !119}
!522 = distinct !{!522, !62, !119, !120}
!523 = distinct !{!523, !62, !119, !120}
!524 = distinct !{!524, !122}
!525 = distinct !{!525, !62, !119}
!526 = distinct !{null, null, null, null}
!527 = distinct !{null, null, null, null, null}
!528 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !44, i64 0, !208, i64 8, !146, i64 16, !146, i64 24, !45, i64 32, !148, i64 40, !146, i64 48}
!529 = !{!528, !44, i64 0}
!530 = !{!528, !208, i64 8}
!531 = !{!528, !146, i64 16}
!532 = !{!528, !146, i64 24}
!533 = !{!528, !45, i64 32}
!534 = !{!528, !148, i64 40}
!535 = !{!528, !146, i64 48}
!536 = distinct !{!536, !62, !119, !120}
!537 = distinct !{!537, !62, !119, !120}
!538 = distinct !{!538, !122}
!539 = distinct !{!539, !62, !119}
!540 = distinct !{!540, !62, !119, !120}
!541 = distinct !{!541, !62, !119, !120}
!542 = distinct !{!542, !122}
!543 = distinct !{!543, !62, !119}
!544 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !44, i64 0, !176, i64 8, !45, i64 16, !146, i64 24, !208, i64 32, !146, i64 40}
!545 = !{!544, !44, i64 0}
!546 = !{!544, !176, i64 8}
!547 = !{!544, !45, i64 16}
!548 = !{!544, !146, i64 24}
!549 = !{!544, !208, i64 32}
!550 = !{!544, !146, i64 40}
!551 = distinct !{null, null, null, null}
!552 = distinct !{null, null, null, null}
!553 = distinct !{!553, !62}
!554 = !{!117, !116, i64 0}
!555 = distinct !{!555, i1 true, !"_ZNK3fmt3v127context3argEi"}
!556 = distinct !{!556, !555, !"_ZNK3fmt3v127context3argEi: argument 0"}
!557 = distinct !{!557, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!558 = distinct !{!558, !557, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!559 = distinct !{null}
!560 = distinct !{!560, i1 true, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!561 = distinct !{!561, !560, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!562 = distinct !{!562, i1 true, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!563 = distinct !{!563, !562, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!564 = !{!558, !556}
!565 = !{!561}
!566 = !{!"_ZTSN3fmt3v126detail13write_int_argIoEE", !188, i64 0, !40, i64 16}
!567 = !{!566, !188, i64 0}
!568 = !{!566, !40, i64 16}
!569 = !{!563}
!570 = distinct !{!570, !62}
!571 = distinct !{!571, i1 true, !"_ZNK3fmt3v127context3argEi"}
!572 = distinct !{!572, !571, !"_ZNK3fmt3v127context3argEi: argument 0"}
!573 = distinct !{!573, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!574 = distinct !{!574, !573, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!575 = distinct !{!575, i1 true, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE"}
!576 = distinct !{!576, !575, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE: argument 0"}
!577 = distinct !{!577, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!578 = distinct !{!578, !577, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!579 = !{!574, !572}
!580 = !{!578, !576}
!581 = !{!218, !218, i64 0}
!582 = !{!219, !219, i64 0}
!583 = distinct !{!583, !62}
!584 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !218, i64 0, !219, i64 8, !44, i64 16}
!585 = !{!584, !219, i64 8}
!586 = !{!584, !44, i64 16}
!587 = !{!584, !218, i64 0}
!588 = distinct !{!588, !62}
!589 = distinct !{null, null, null, null}
!590 = distinct !{null, null, null, null, null}
!591 = distinct !{null, null, null}
!592 = distinct !{null, null, null, null}
!593 = distinct !{!593, !62}
!594 = distinct !{!594, !62}
!595 = distinct !{null, null, null, null}
!596 = distinct !{null, null, null, null, null}
!597 = distinct !{null, null, null}
!598 = distinct !{null, null, null, null}
!599 = distinct !{!599, !62}
!600 = distinct !{!600, !62}
!601 = distinct !{!601, !62, !119, !120}
!602 = distinct !{!602, !62, !119, !120}
!603 = distinct !{!603, !122}
!604 = distinct !{!604, !62, !119}
!605 = distinct !{!605, !62}
!606 = distinct !{!606, !62}
!607 = distinct !{!607, !62}
!608 = distinct !{!608, !62}
!609 = !{!"char32_t", !39, i64 0}
!610 = !{!609, !609, i64 0}
!611 = distinct !{null, null, null, null}
!612 = distinct !{null, null, null, null}
!613 = distinct !{null, null, null, null}
!614 = distinct !{null, null, null, null, null}
!615 = distinct !{null, null, null, null}
!616 = !{!220, !40, i64 4}
!617 = distinct !{null, null, null, null}
!618 = distinct !{null, null, null, null, null}
!619 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !44, i64 0, !171, i64 8, !146, i64 16, !146, i64 24, !45, i64 32, !148, i64 40, !146, i64 48}
!620 = !{!619, !44, i64 0}
!621 = !{!619, !171, i64 8}
!622 = !{!619, !146, i64 16}
!623 = !{!619, !146, i64 24}
!624 = !{!619, !45, i64 32}
!625 = !{!619, !148, i64 40}
!626 = !{!619, !146, i64 48}
!627 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !44, i64 0, !176, i64 8, !45, i64 16, !146, i64 24, !171, i64 32, !146, i64 40}
!628 = !{!627, !44, i64 0}
!629 = !{!627, !176, i64 8}
!630 = !{!627, !45, i64 16}
!631 = !{!627, !146, i64 24}
!632 = !{!627, !171, i64 32}
!633 = !{!627, !146, i64 40}
!634 = distinct !{null, null, null, null}
!635 = !{i64 0, i64 8, !72, i64 8, i64 4, !71}
!636 = distinct !{null, null, null, null}
!637 = distinct !{null, null, null, null}
!638 = distinct !{null, null, null, null, null}
!639 = distinct !{null, null, null, null}
!640 = !{!227, !51, i64 8}
!641 = distinct !{null, null, null, null}
!642 = distinct !{null, null, null, null, null}
!643 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !44, i64 0, !181, i64 8, !146, i64 16, !146, i64 24, !45, i64 32, !148, i64 40, !146, i64 48}
!644 = !{!643, !44, i64 0}
!645 = !{!643, !181, i64 8}
!646 = !{!643, !146, i64 16}
!647 = !{!643, !146, i64 24}
!648 = !{!643, !45, i64 32}
!649 = !{!643, !148, i64 40}
!650 = !{!643, !146, i64 48}
!651 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !44, i64 0, !176, i64 8, !45, i64 16, !146, i64 24, !181, i64 32, !146, i64 40}
!652 = !{!651, !44, i64 0}
!653 = !{!651, !176, i64 8}
!654 = !{!651, !45, i64 16}
!655 = !{!651, !146, i64 24}
!656 = !{!651, !181, i64 32}
!657 = !{!651, !146, i64 40}
!658 = distinct !{null, null, null}
!659 = distinct !{!659, !62, !119, !120}
!660 = distinct !{!660, !62, !119, !120}
!661 = distinct !{!661, !122}
!662 = distinct !{!662, !62, !119}
!663 = distinct !{!663, i1 true, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!664 = distinct !{!664, !663, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!665 = distinct !{!665, !62, !119, !120}
!666 = distinct !{!666, !62, !119, !120}
!667 = distinct !{!667, !122}
!668 = distinct !{!668, !62, !119}
!669 = distinct !{!669, !62}
!670 = !{!664}
!671 = distinct !{!671, !62}
!672 = distinct !{!672, !62, !119, !120}
!673 = distinct !{!673, !62, !119, !120}
!674 = distinct !{!674, !122}
!675 = distinct !{!675, !62, !119}
!676 = distinct !{!676, !62}
!677 = !{i64 0, i64 8, !177, i64 8, i64 8, !235, i64 16, i64 8, !235, i64 24, i64 8, !235, i64 32, i64 8, !237}
!678 = distinct !{null, null, null}
!679 = distinct !{!679, !62, !119, !120}
!680 = distinct !{!680, !62, !119, !120}
!681 = distinct !{!681, !122}
!682 = distinct !{!682, !62, !119}
!683 = distinct !{!683, !62}
!684 = distinct !{!684, !62, !119, !120}
!685 = distinct !{!685, !62, !119, !120}
!686 = distinct !{!686, !122}
!687 = distinct !{!687, !62, !119}
!688 = distinct !{!688, !62}
!689 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUljNSA_IcEEE_", !176, i64 0, !234, i64 8, !234, i64 16, !234, i64 24, !236, i64 32}
!690 = !{!689, !176, i64 0}
!691 = !{!689, !234, i64 8}
!692 = !{!689, !234, i64 16}
!693 = !{!689, !234, i64 24}
!694 = !{!689, !236, i64 32}
!695 = distinct !{!695, i1 true, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!696 = distinct !{!696, !695, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!697 = distinct !{null, null, null, null, null}
!698 = distinct !{!698, !62}
!699 = distinct !{!699, !62}
!700 = !{!696}
!701 = !{!244, !51, i64 8}
!702 = distinct !{!702, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!703 = distinct !{!703, !702, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!704 = distinct !{!704, !702, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!705 = distinct !{!705, !62, !119, !120}
!706 = distinct !{!706, !62, !120, !119}
!707 = distinct !{!707, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!708 = distinct !{!708, !707, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!709 = distinct !{!709, !707, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!710 = distinct !{!710, i1 false, !"LVerDomain"}
!711 = distinct !{!711, !710}
!712 = distinct !{!712, !710}
!713 = distinct !{!713, !62, !119, !120}
!714 = distinct !{!714, !62, !119}
!715 = !{!703}
!716 = !{!704}
!717 = !{!708}
!718 = !{!709}
!719 = !{!709, !711}
!720 = !{!708, !712}
!721 = !{!711}
end_hunk_0
