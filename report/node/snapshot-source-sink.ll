inline.NumInlined: 268
inline.NumDeleted: 109
begin_hunk_0_@_ZN2v88internal18SnapshotByteSource7GetBlobEPPKh:bb.a
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw i32 %i.n, 16
  %i.p = or disjoint i32 %i.k, %i.o
  %i.q = or disjoint i32 %i.p, %i.g
  %i.r = and i32 %i.g, 3
  %i.s = add nuw nsw i32 %i.r, 1                  ; 2 uses
  %i.t = add nsw i32 %i.s, %i.c                   ; 3 uses
  store i32 %i.t, ptr %i.b, align 4
  %i.u = shl nuw nsw i32 %i.s, 3
  %i.v = sub nuw nsw i32 32, %i.u
  %i.w = lshr i32 -1, %i.v
  %i.x = and i32 %i.w, %i.q
  %i.y = lshr i32 %i.x, 2                         ; 3 uses
  %i.z = add nsw i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %.not = icmp sgt i32 %i.z, %i.ab
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ac = sext i32 %i.t to i64
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac
  store ptr %i.ad, ptr %1, align 8
  %i.ae = load i32, ptr %i.b, align 4
  %i.af = add nsw i32 %i.ae, %i.y
  store i32 %i.af, ptr %i.b, align 4
  ret i32 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not49 = icmp ult i64 %i.g, %2
  br i1 %.not49, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1                 ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1
  store i8 %i.q, ptr %i.d, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1
  store i8 %i.z, ptr %i.y, align 1
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.j, %bb.i, %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !5

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.o, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %1, align 1
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8
  %.not.i.i.i51 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i51, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.q:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8               ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #8
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #9
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.s
  %i.au = phi ptr [ %i.at, %bb.s ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.t, label %bb.u, !prof !5

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.az = load i8, ptr %i.ai, align 1
  store i8 %i.az, ptr %i.au, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.w, label %bb.x, !prof !5

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.y:                                             ; preds = %bb.x
  %i.be = load i8, ptr %1, align 1
  store i8 %i.be, ptr %i.ba, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.w, %bb.x, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i56 = icmp eq ptr %i.ai, null
  br i1 %.not.i56, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.bg = sub i64 %i.e, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bg) #10
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55, %bb.z
  store ptr %i.au, ptr %0, align 8
  store ptr %i.bf, ptr %i.c, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bh, ptr %i.a, align 8
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.p, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1
  store i8 %i.s, ptr %i.g, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !5

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1
  store i8 %i.ad, ptr %1, align 1
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !5

bb.n:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1
  store i8 %i.ak, ptr %i.g, align 1
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !5

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1
  store i8 %i.ap, ptr %i.an, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !5

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1
  store i8 %i.au, ptr %1, align 1
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8               ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #8
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #9
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !5

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1
  store i8 %i.bk, ptr %i.bf, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !5

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1
  store i8 %i.bo, ptr %i.bl, align 1
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !5

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1
  store i8 %i.bt, ptr %i.bp, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i51 = icmp eq ptr %i.av, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #10
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bf, ptr %0, align 8
  store ptr %i.bu, ptr %i.f, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEvNS4_IPhS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.d
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 10 uses
  %i.n = icmp ugt i64 %i.m, %i.d
  br i1 %i.n, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 0, %i.d
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = icmp sgt i64 %i.d, 1                     ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.p, i64 %i.d, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %i.d, 1
  br i1 %i.s, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.p, align 1
  store i8 %i.t, ptr %i.h, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d
  store ptr %i.v, ptr %i.g, align 8
  %i.w = sub i64 %i.q, %i.l                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %1, i64 %i.w, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.w, 1
  br i1 %i.aa, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.ac = load i8, ptr %1, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.r, label %bb.k, label %bb.l, !prof !5

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ad = icmp eq i64 %i.d, 1
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %2, align 1
  store i8 %i.ae, ptr %1, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.af = icmp eq i64 %i.m, 1
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.b, %i.ah                     ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.n, label %bb.o, !prof !5

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.al = load i8, ptr %i.ag, align 1
  store i8 %i.al, ptr %i.h, align 1
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.am = sub nuw i64 %i.d, %i.m
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 3 uses
  store ptr %i.ao, ptr %i.g, align 8
  %i.ap = icmp sgt i64 %i.m, 1
  br i1 %i.ap, label %bb.q, label %bb.r, !prof !5

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.af, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.aq = load i8, ptr %1, align 1
  store i8 %i.aq, ptr %i.ao, align 1
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.m
  store ptr %i.as, ptr %i.g, align 8
  %i.at = icmp sgt i64 %i.m, 1
  br i1 %i.at, label %bb.t, label %bb.u, !prof !5

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  %i.au = icmp eq i64 %i.m, 1
  br i1 %i.au, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.v:                                             ; preds = %bb.u
  %i.av = load i8, ptr %2, align 1
  store i8 %i.av, ptr %1, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %0, align 8               ; 5 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.ay = sub i64 %i.j, %i.ax                     ; 4 uses
  %i.az = sub i64 9223372036854775807, %i.ay
  %i.ba = icmp ult i64 %i.az, %i.d
  br i1 %i.ba, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #8
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.d)
  %i.bb = add i64 %.sroa.speculated.i, %i.ay      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ay
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 3 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #9
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bg = phi ptr [ %i.bf, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bh = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bi = sub i64 %i.bh, %i.ax                    ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %bb.aa, !prof !5

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.aw, i64 %i.bi, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bk = icmp eq i64 %i.bi, 1
  br i1 %i.bk, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load i8, ptr %i.aw, align 1
  store i8 %i.bl, ptr %i.bg, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bm = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi ; 3 uses
  %i.bn = icmp sgt i64 %i.d, 1
  br i1 %i.bn, label %bb.ac, label %bb.ad, !prof !5

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit45

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bo = icmp eq i64 %i.d, 1
  br i1 %i.bo, label %bb.ae, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit45

bb.ae:                                            ; preds = %bb.ad
  %i.bp = load i8, ptr %2, align 1
  store i8 %i.bp, ptr %i.bm, align 1
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit45

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit45: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.d ; 3 uses
  %i.br = sub i64 %i.j, %i.bh                     ; 4 uses
  %i.bs = icmp sgt i64 %i.br, 1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !5

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %1, i64 %i.br, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit45
  %i.bt = icmp eq i64 %i.br, 1
  br i1 %i.bt, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.bu = load i8, ptr %1, align 1
  store i8 %i.bu, ptr %i.bq, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %.not.i47 = icmp eq ptr %i.aw, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46
  %i.bw = sub i64 %i.i, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bw) #10
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46, %bb.ai
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.bv, ptr %i.g, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store ptr %i.bx, ptr %i.e, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noreturn nounwind }
attributes #9 = { builtin nounwind allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
