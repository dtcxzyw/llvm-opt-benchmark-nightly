Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldExportsTrie?download=true
inline.NumInlined: 2851
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4LIEF12BinaryStream9peek_dataERSt6vectorIhSaIhEEmmm:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.v, i64 noundef %2, i64 noundef %3, i64 noundef %4) #23 ; 3 uses
  %.sroa.031.sroa.4.0.extract.shift37 = lshr i64 %i.ad, 32 ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  store ptr %i.v, ptr %1, align 8, !tbaa !64
  store ptr %.0.i.i.i.i.i, ptr %i.o, align 8, !tbaa !66
  store ptr %i.w, ptr %i.af, align 8, !tbaa !65
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i64 %i.am(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.q, i64 noundef %2, i64 noundef %3, i64 noundef %4) #23 ; 2 uses
  %.sroa.031.sroa.4.0.extract.shift3436 = lshr i64 %i.an, 32
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %bb.f, %bb.c, %bb.b, %bb.a, %bb.g
  %.sroa.031.sroa.0.0 = phi i64 [ %i.an, %bb.g ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ], [ %i.ad, %bb.f ], [ %i.ad, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ]
  %.sroa.031.sroa.4.0 = phi i64 [ %.sroa.031.sroa.4.0.extract.shift3436, %bb.g ], [ 1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.sroa.031.sroa.4.0.extract.shift37, %bb.f ], [ %.sroa.031.sroa.4.0.extract.shift37, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ]
  %.sroa.031.sroa.4.0.insert.ext = shl nuw i64 %.sroa.031.sroa.4.0, 32
  %.sroa.031.sroa.4.0.insert.shift = and i64 %.sroa.031.sroa.4.0.insert.ext, 1095216660480
  %.sroa.031.sroa.0.0.insert.ext = and i64 %.sroa.031.sroa.0.0, 4294967295
  %.sroa.031.sroa.0.0.insert.insert = or disjoint i64 %.sroa.031.sroa.4.0.insert.shift, %.sroa.031.sroa.0.0.insert.ext
  ret i64 %.sroa.031.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF12BinaryStream9read_dataERSt6vectorIhSaIhEEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90
  %i.c = load ptr, ptr %0, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 10 uses
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !61
  store i64 %i.r, ptr %i.q, align 8, !tbaa !61
  store ptr null, ptr %2, align 8, !tbaa !61
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %3 = and i64 %i.t, -8
  %4 = add i64 %3, 8                              ; 2 uses
  %5 = getelementptr i8, ptr %i.p, i64 %4
  %6 = getelementptr i8, ptr %i.c, i64 %4
  %bound0 = icmp ult ptr %i.p, %6
  %bound1 = icmp ult ptr %i.c, %5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.aa = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !61, !alias.scope !720, !noalias !718
  %wide.load37 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !61, !alias.scope !720, !noalias !718
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !61, !alias.scope !721, !noalias !720
  store <2 x i64> %wide.load37, ptr %i.ab, align 8, !tbaa !61, !alias.scope !721, !noalias !720
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !61, !alias.scope !720, !noalias !718
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !61, !alias.scope !720, !noalias !718
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !708

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader64

.lr.ph.i.i.i.preheader64:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader64, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader64 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader64 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !61, !alias.scope !719, !noalias !718
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !61, !alias.scope !718, !noalias !719
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !61, !alias.scope !719, !noalias !718
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !709

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
  %min.iters.check45 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check45, label %.lr.ph.i.i.i17.preheader63, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound047 = icmp ult ptr %i.ah, %i.aq
  %bound148 = icmp ult ptr %1, %i.ao
  %found.conflict49 = and i1 %bound047, %bound148
  br i1 %found.conflict49, label %.lr.ph.i.i.i17.preheader63, label %vector.ph50

vector.ph50:                                      ; preds = %vector.memcheck46
  %n.vec51 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec51, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.au = shl i64 %index53, 3                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep55 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.av = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load56 = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !61, !alias.scope !724, !noalias !722
  %wide.load57 = load <2 x i64>, ptr %i.av, align 8, !tbaa !61, !alias.scope !724, !noalias !722
  %i.aw = getelementptr i8, ptr %next.gep54, i64 16
  store <2 x i64> %wide.load56, ptr %next.gep54, align 8, !tbaa !61, !alias.scope !725, !noalias !724
  store <2 x i64> %wide.load57, ptr %i.aw, align 8, !tbaa !61, !alias.scope !725, !noalias !724
  %i.ax = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !61, !alias.scope !724, !noalias !722
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !61, !alias.scope !724, !noalias !722
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.ay, label %middle.block59, label %vector.body52, !llvm.loop !716

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %i.al, %n.vec51
  br i1 %cmp.n60, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader63

.lr.ph.i.i.i17.preheader63:                       ; preds = %vector.memcheck46, %.lr.ph.i.i.i17.preheader, %middle.block59
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck46 ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block59 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck46 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block59 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader63, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader63 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader63 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !61, !alias.scope !723, !noalias !722
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !61, !alias.scope !722, !noalias !723
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !61, !alias.scope !723, !noalias !722
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !717

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block59, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block59 ], [ %i.bb, %.lr.ph.i.i.i17 ]
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
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!505 = distinct !{null, null, null, null}
!506 = distinct !{null, null, null, null, null}
!507 = distinct !{null, null, null, null}
!508 = !{!208, !208, i64 0}
!509 = !{!199, !45, i64 8}
!510 = distinct !{!510, !"_ZN3fmt3v126detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE"}
!511 = distinct !{!511, !510, !"_ZN3fmt3v126detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE: argument 0"}
!512 = distinct !{!512, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
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
!555 = distinct !{!555, !"_ZNK3fmt3v127context3argEi"}
!556 = distinct !{!556, !555, !"_ZNK3fmt3v127context3argEi: argument 0"}
!557 = distinct !{!557, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!558 = distinct !{!558, !557, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!559 = distinct !{null}
!560 = distinct !{!560, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!561 = distinct !{!561, !560, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!562 = distinct !{!562, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!563 = distinct !{!563, !562, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!564 = !{!558, !556}
!565 = !{!561}
!566 = !{!"_ZTSN3fmt3v126detail13write_int_argIoEE", !188, i64 0, !40, i64 16}
!567 = !{!566, !188, i64 0}
!568 = !{!566, !40, i64 16}
!569 = !{!563}
!570 = distinct !{!570, !62}
!571 = distinct !{!571, !"_ZNK3fmt3v127context3argEi"}
!572 = distinct !{!572, !571, !"_ZNK3fmt3v127context3argEi: argument 0"}
!573 = distinct !{!573, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!574 = distinct !{!574, !573, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!575 = distinct !{!575, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE"}
!576 = distinct !{!576, !575, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE: argument 0"}
!577 = distinct !{!577, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
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
!663 = distinct !{!663, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
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
!695 = distinct !{!695, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!696 = distinct !{!696, !695, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!697 = distinct !{null, null, null, null, null}
!698 = distinct !{!698, !62}
!699 = distinct !{!699, !62}
!700 = !{!696}
!701 = !{!244, !51, i64 8}
!702 = distinct !{!702, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!703 = distinct !{!703, !702, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!704 = distinct !{!704, !702, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!705 = distinct !{!705, !"LVerDomain"}
!706 = distinct !{!706, !705}
!707 = distinct !{!707, !705}
!708 = distinct !{!708, !62, !119, !120}
!709 = distinct !{!709, !62, !119}
!710 = distinct !{!710, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!711 = distinct !{!711, !710, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!712 = distinct !{!712, !710, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!713 = distinct !{!713, !"LVerDomain"}
!714 = distinct !{!714, !713}
!715 = distinct !{!715, !713}
!716 = distinct !{!716, !62, !119, !120}
!717 = distinct !{!717, !62, !119}
!718 = !{!703}
!719 = !{!704}
!720 = !{!704, !706}
!721 = !{!703, !707}
!722 = !{!711}
!723 = !{!712}
!724 = !{!712, !714}
!725 = !{!711, !715}
end_hunk_1
