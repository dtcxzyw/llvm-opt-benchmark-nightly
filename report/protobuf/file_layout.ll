inline.NumInlined: 752
inline.NumDeleted: 304
begin_hunk_0
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE(ptr %0, ptr noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.b to i64
end_hunk_0
begin_hunk_1_@_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = load ptr, ptr %1, align 8, !tbaa !12
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.r, %i.j
  br i1 %i.s, label %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.p
  %i.w = shl nuw nsw i64 %i.j, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #13 ; 7 uses
  %3 = load ptr, ptr %1, align 8, !tbaa !12       ; 9 uses
  %4 = load ptr, ptr %i.a, align 8, !tbaa !8      ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %3, %4
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i
  %5 = ptrtoaddr ptr %3 to i64
  %i.y = ptrtoaddr ptr %i.x to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %3 to i64
  %i.z = add i64 %6, -8
  %i.aa = sub i64 %i.z, %7                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 56
  %i.ad = sub i64 %i.y, %5
  %diff.check = icmp ult i64 %i.ad, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader55, label %vector.ph
end_hunk_1
begin_hunk_2_@_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE:bb.a
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %i.ag = getelementptr i8, ptr %3, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %next.gep32 = getelementptr i8, ptr %3, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.ai = getelementptr i8, ptr %next.gep32, i64 16
end_hunk_2
begin_hunk_3_@_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE:bb.a

.lr.ph.i.i.i.i.preheader55:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader55, %.lr.ph.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE:bb.a
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !14, !noalias !17
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.am, %4
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %3, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %8 = load ptr, ptr %i.l, align 8, !tbaa !13
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %3 to i64
  %11 = sub i64 %9, %10
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %11) #14
  br label %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
end_hunk_4
begin_hunk_5_@_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE:bb.a
bb.i:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %1, align 8, !tbaa !12    ; 7 uses
  %i.bd = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.j, label %_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_5
begin_hunk_6_@_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE:bb.a
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %12 = load ptr, ptr %i.l, align 8, !tbaa !13
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %14) #14
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
end_hunk_6
begin_hunk_7_@_ZN3upb9generator11AddMessagesENS_13MessageDefPtrEPSt6vectorIS1_SaIS1_EE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b
end_hunk_7
begin_hunk_8_@_ZN3upb9generator11AddMessagesENS_13MessageDefPtrEPSt6vectorIS1_SaIS1_EE:bb.a
bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !61     ; 7 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN3upb13MessageDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_8
begin_hunk_9_@_ZN3upb9generator11AddMessagesENS_13MessageDefPtrEPSt6vectorIS1_SaIS1_EE:bb.a
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %2 = load ptr, ptr %i.c, align 8, !tbaa !58
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %4) #14
  br label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
end_hunk_9
begin_hunk_10_@_ZN3upb9generator24AddExtensionsFromMessageENS_13MessageDefPtrEPSt6vectorINS_11FieldDefPtrESaIS3_EE:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit, %bb.a
end_hunk_10
begin_hunk_11_@_ZN3upb9generator24AddExtensionsFromMessageENS_13MessageDefPtrEPSt6vectorINS_11FieldDefPtrESaIS3_EE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !77     ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_11
begin_hunk_12_@_ZN3upb9generator24AddExtensionsFromMessageENS_13MessageDefPtrEPSt6vectorINS_11FieldDefPtrESaIS3_EE:bb.a
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %2 = load ptr, ptr %i.d, align 8, !tbaa !74
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %4) #14
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
end_hunk_12
