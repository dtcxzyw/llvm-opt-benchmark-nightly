inline.NumInlined: 3716
inline.NumDeleted: 1352
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4Luau23DuplicateTypeDefinitioneqERKS0_:bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIN4Luau8LocationES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !41
  %i.h = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIN4Luau8LocationES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !110, !range !69, !noundef !70 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i8, ptr %i.m, align 8, !tbaa !110, !range !69, !noundef !70
  %i.o = icmp eq i8 %i.k, %i.n                    ; 2 uses
  %brmerge.not.i = and i1 %i.o, %i.l
  br i1 %brmerge.not.i, label %bb.c, label %_ZSteqIN4Luau8LocationES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load <2 x i32>, ptr %i.q, align 8
  %i.s = load <2 x i32>, ptr %i.p, align 8
  %i.t = icmp eq <2 x i32> %i.r, %i.s             ; 2 uses
  %i.u = extractelement <2 x i1> %i.t, i64 0
  %i.v = extractelement <2 x i1> %i.t, i64 1
  %i.w = select i1 %i.v, i1 %i.u, i1 false
  br i1 %i.w, label %bb.d, label %_ZSteqIN4Luau8LocationES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load <2 x i32>, ptr %i.x, align 8
  %i.aa = load <2 x i32>, ptr %i.y, align 8
  %i.ab = icmp eq <2 x i32> %i.z, %i.aa           ; 2 uses
  %i.ac = extractelement <2 x i1> %i.ab, i64 0
  %i.ad = extractelement <2 x i1> %i.ab, i64 1
  %i.ae = select i1 %i.ad, i1 %i.ac, i1 false
  br label %_ZSteqIN4Luau8LocationES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit

_ZSteqIN4Luau8LocationES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit: ; preds = %bb.a, %bb.d, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.af = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.c ], [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.ae, %bb.d ], [ false, %bb.a ]
  ret i1 %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau13CountMismatcheqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !112
  %i.b = load i64, ptr %1, align 8, !tbaa !112
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !119, !range !69, !noundef !70 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !119, !range !69, !noundef !70
  %i.k = icmp eq i8 %i.g, %i.j                    ; 2 uses
  %brmerge.not.i = and i1 %i.k, %i.h
  %i.l = load i64, ptr %i.d, align 8
  %i.m = load i64, ptr %i.e, align 8
  %i.n = icmp eq i64 %i.l, %i.m
  %i.o = select i1 %brmerge.not.i, i1 %i.n, i1 %i.k
  br i1 %i.o, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !120
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !121
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !121
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !66 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !41
  %bcmp.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.ah, i64 %i.ac)
  %i.aj = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ak = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.e ], [ %i.aj, %bb.g ], [ true, %bb.f ]
  ret i1 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau23FunctionDoesNotTakeSelfeqERKS0_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #12 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau20FunctionRequiresSelfeqERKS0_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #12 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau17OccursCheckFailedeqERKS0_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #12 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14UnknownRequireeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !41
  %i.h = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau30IncorrectGenericParameterCounteqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !41
  %i.h = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %.not27 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not27, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122
  %.not = icmp eq ptr %i.j, %i.l
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !138  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !139  ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = sdiv i64 %i.t, 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !138
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !139  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %.not21 = icmp eq i64 %i.t, %i.aa
  br i1 %.not21, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !140 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !141 ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = sdiv i64 %i.ah, 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !140
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !141 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.not22 = icmp eq i64 %i.ah, %i.ap
  br i1 %.not22, label %.preheader28, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

.preheader28:                                     ; preds = %bb.d
  %.not35 = icmp eq ptr %i.p, %i.q
  br i1 %.not35, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.aq = add nuw i64 %.01830, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %umax
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !142

.preheader:                                       ; preds = %bb.e, %.preheader28
  %i.ar = icmp eq ptr %i.ad, %i.ae
  br i1 %i.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader
  %umax38 = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  br label %.lr.ph32

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.01830 = phi i64 [ %i.aq, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01830
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !143
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.01830
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !143
  %.not23 = icmp eq ptr %i.at, %i.av
  br i1 %.not23, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

.lr.ph32:                                         ; preds = %.lr.ph32, %.lr.ph32.preheader
  %.031 = phi i64 [ %i.ba, %.lr.ph32 ], [ 0, %.lr.ph32.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.031
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !149
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.031
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !149
  %.not24 = icmp eq ptr %i.ax, %i.az              ; 2 uses
  %i.ba = add nuw i64 %.031, 1                    ; 2 uses
  %exitcond39.not = icmp ne i64 %i.ba, %umax38
  %or.cond.not = select i1 %.not24, i1 %exitcond39.not, i1 false
  br i1 %or.cond.not, label %.lr.ph32, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, !llvm.loop !156

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %.lr.ph, %.lr.ph32, %.preheader, %bb.a, %bb.d, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25 ], [ false, %bb.c ], [ false, %bb.d ], [ true, %.preheader ], [ %.not24, %.lr.ph32 ], [ false, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau11SyntaxErroreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !41
  %i.h = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14CodeTooComplexeqERKS0_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #12 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau21UnificationTooComplexeqERKS0_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #12 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau27UnknownPropButFoundLikePropeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !157
  %i.b = load ptr, ptr %1, align 8, !tbaa !157
  %i.c = tail call noundef zeroext i1 @_ZNK4Luau4TypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) %i.b)
  br i1 %i.c, label %bb.b, label %_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !41
  %bcmp.i = tail call i32 @bcmp(ptr %i.m, ptr %i.l, i64 %i.g)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !168
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !168
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !169  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not7.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !169
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi ptr [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.03.08.i.i.i.i = phi ptr [ %i.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !66 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !66
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = icmp eq i64 %i.ab, 0
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i: ; preds = %bb.e
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !41
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.ag, i64 %i.ab)
  %i.ai = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.e
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.08.i.i.i.i) #37 ; 2 uses
  %i.ak = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.09.i.i.i.i) #37
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.v
  br i1 %.not.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !170

_ZSt5equalISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EbT_S8_T0_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %.lr.ph.i.i.i.i, %bb.b, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.a
  %i.al = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.d ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ]
  ret i1 %i.al
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau12GenericErroreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !41
  %i.h = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau13InternalErroreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !41
  %i.h = load ptr, ptr %0, align 8, !tbaa !41
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau32ConstraintSolvingIncompleteErroreqERKS0_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #12 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau21CannotCallNonFunctioneqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !171
  %i.b = load ptr, ptr %1, align 8, !tbaa !171
  %i.c = icmp eq ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau16ExtraInformationeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_Error.cpp:bb.a
  store i8 0, ptr %i.gp, align 1, !tbaa !45
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  store ptr %i.gr, ptr %i.gq, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gr, ptr noundef nonnull align 1 dereferenceable(9) @.str.97, i64 9, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 9, ptr %i.gs, align 8, !tbaa !66
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.gt, align 1, !tbaa !45
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.gv, ptr noundef nonnull align 1 dereferenceable(3) @.str.98, i64 3, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 3, ptr %i.gw, align 8, !tbaa !66
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 0, ptr %i.gx, align 1, !tbaa !45
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store ptr %i.gz, ptr %i.gy, align 8, !tbaa !65
  store i16 29295, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 2, ptr %i.ha, align 8, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 0, ptr %i.hb, align 2, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2IPKS5_EET_SM_mRKSC_RKSA_RKS6_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) @_ZN4LuauL25kUnreachableTypeFunctionsB5cxx11E, ptr noundef nonnull %0, ptr noundef nonnull %i.hc, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC2ESt16initializer_listIS5_EmRKS7_RKS9_RKSA_.exit.i unwind label %bb.d

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC2ESt16initializer_listIS5_EmRKS7_RKS9_RKSA_.exit.i: ; preds = %__cxx_global_var_init.88.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.hd = load ptr, ptr %i.gy, align 8, !tbaa !41 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gz
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC2ESt16initializer_listIS5_EmRKS7_RKS9_RKSA_.exit.i
  %i.hf = load i64, ptr %i.gz, align 8, !tbaa !45
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EEC2ESt16initializer_listIS5_EmRKS7_RKS9_RKSA_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hh = load ptr, ptr %i.gu, align 8, !tbaa !41 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gv
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hj = load i64, ptr %i.gv, align 8, !tbaa !45
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  %i.hl = load ptr, ptr %i.gq, align 8, !tbaa !41 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.gr
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i
  %i.hn = load i64, ptr %i.gr, align 8, !tbaa !45
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i
  %i.hp = load ptr, ptr %i.gm, align 8, !tbaa !41 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.gn
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i
  %i.hr = load i64, ptr %i.gn, align 8, !tbaa !45
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i
  %i.ht = load ptr, ptr %i.gi, align 8, !tbaa !41 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.gj
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i
  %i.hv = load i64, ptr %i.gj, align 8, !tbaa !45
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4.i
  %i.hx = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.gf
  br i1 %i.hy, label %__cxx_global_var_init.93.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i
  %i.hz = load i64, ptr %i.gf, align 8, !tbaa !45
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #34
  br label %__cxx_global_var_init.93.exit

bb.d:                                             ; preds = %__cxx_global_var_init.88.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.ic = load ptr, ptr %i.gy, align 8, !tbaa !41 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.gz
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.d
  %i.ie = load i64, ptr %i.gz, align 8, !tbaa !45
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i
  %i.ig = load ptr, ptr %i.gu, align 8, !tbaa !41 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.gv
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i
  %i.ii = load i64, ptr %i.gv, align 8, !tbaa !45
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.1.i
  %i.ik = load ptr, ptr %i.gq, align 8, !tbaa !41 ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.gr
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.1.i
  %i.im = load i64, ptr %i.gr, align 8, !tbaa !45
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.2.i
  %i.io = load ptr, ptr %i.gm, align 8, !tbaa !41 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.gn
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.2.i
  %i.iq = load i64, ptr %i.gn, align 8, !tbaa !45
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.3.i
  %i.is = load ptr, ptr %i.gi, align 8, !tbaa !41 ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.gj
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.3.i
  %i.iu = load i64, ptr %i.gj, align 8, !tbaa !45
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.4.i
  %i.iw = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.gf
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.4.i
  %i.iy = load i64, ptr %i.gf, align 8, !tbaa !45
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  br label %common.resume

__cxx_global_var_init.93.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.ja = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev, ptr nonnull @_ZN4LuauL25kUnreachableTypeFunctionsB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p1 _ZTSN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEE", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!11, !12, i64 8}
!15 = !{!16, !6, i64 0}
!16 = !{!"_ZTSN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEEE", !6, i64 0, !7, i64 8}
!17 = !{!13, !13, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!11, !12, i64 16}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!23, !28, i64 48}
!23 = !{!"_ZTSN4Luau18SubtypingReasoningE", !24, i64 0, !24, i64 24, !28, i64 48, !29, i64 52}
!24 = !{!"_ZTSN4Luau8TypePath4PathE", !25, i64 0}
!25 = !{!"_ZTSSt6vectorIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEESaISA_EE12_Vector_implE", !11, i64 0}
!28 = !{!"_ZTSN4Luau17SubtypingVarianceE", !7, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!23, !29, i64 52}
!31 = !{!32, !37, i64 16}
!32 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKcESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!33 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!34 = !{!"any p2 pointer", !13, i64 0}
!35 = !{!"long", !7, i64 0}
!36 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!37 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!38 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !39, i64 0, !35, i64 8}
!39 = !{!"float", !7, i64 0}
!40 = !{!36, !37, i64 0}
!41 = !{!42, !44, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0, !35, i64 8, !7, i64 16}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!44 = !{!"p1 omnipotent char", !13, i64 0}
!45 = !{!7, !7, i64 0}
!46 = distinct !{!46, !19}
!47 = !{!32, !33, i64 0}
!48 = !{!32, !35, i64 8}
!49 = !{!50, !37, i64 16}
!50 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!51 = distinct !{!51, !19}
!52 = !{!50, !33, i64 0}
!53 = !{!50, !35, i64 8}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSN4Luau12TypeMismatchE", !56, i64 0, !56, i64 8, !57, i64 16, !42, i64 24, !58, i64 56}
!56 = !{!"p1 _ZTSN4Luau4TypeE", !13, i64 0}
!57 = !{!"_ZTSN4Luau12TypeMismatch7ContextE", !7, i64 0}
!58 = !{!"_ZTSSt10shared_ptrIN4Luau9TypeErrorEE", !59, i64 0}
!59 = !{!"_ZTSSt12__shared_ptrIN4Luau9TypeErrorELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !61, i64 8}
!60 = !{!"p1 _ZTSN4Luau9TypeErrorE", !13, i64 0}
!61 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !62, i64 0}
!62 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!63 = !{!55, !56, i64 8}
!64 = !{!55, !57, i64 16}
!65 = !{!43, !44, i64 0}
!66 = !{!42, !35, i64 8}
!67 = !{!68, !29, i64 184}
!68 = !{!"_ZTSSt22_Optional_payload_baseIN4Luau9TypeErrorEE", !7, i64 0, !29, i64 184}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt11make_sharedIN4Luau9TypeErrorEJS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZSt11make_sharedIN4Luau9TypeErrorEJS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!74 = !{!75, !6, i64 8}
!75 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!76 = !{!75, !6, i64 12}
!77 = !{!78, !78, i64 0}
!78 = !{!"vtable pointer", !8, i64 0}
!79 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9}
!80 = !{!81, !6, i64 0}
!81 = !{!"_ZTSN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE", !6, i64 0, !7, i64 8}
!82 = distinct !{null, null, null, null, null, null, null, null}
!83 = !{!61, !62, i64 0}
!84 = !{!60, !60, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZSt11make_sharedIN4Luau9TypeErrorEJS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!87 = distinct !{!87, !"_ZSt11make_sharedIN4Luau9TypeErrorEJS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!88 = !{!59, !60, i64 0}
!89 = distinct !{ptr @_ZNK4Luau9TypeErroreqERKS0_, null}
!90 = distinct !{null}
!91 = !{!92, !56, i64 0}
!92 = !{!"_ZTSN4Luau15UnknownPropertyE", !56, i64 0, !42, i64 8}
!93 = !{!94, !56, i64 0}
!94 = !{!"_ZTSN4Luau23PropertyAccessViolationE", !56, i64 0, !42, i64 8, !95, i64 40}
!95 = !{!"_ZTSN4Luau23PropertyAccessViolationUt_E", !7, i64 0}
!96 = !{!94, !95, i64 40}
!97 = !{!98, !56, i64 0}
!98 = !{!"_ZTSN4Luau9NotATableE", !56, i64 0}
!99 = !{!100, !56, i64 0}
!100 = !{!"_ZTSN4Luau17CannotExtendTableE", !56, i64 0, !101, i64 8, !42, i64 16}
!101 = !{!"_ZTSN4Luau17CannotExtendTable7ContextE", !7, i64 0}
!102 = !{!100, !101, i64 8}
!103 = !{!104, !56, i64 0}
!104 = !{!"_ZTSN4Luau27CannotCompareUnrelatedTypesE", !56, i64 0, !56, i64 8, !105, i64 16}
!105 = !{!"_ZTSN4Luau13AstExprBinary2OpE", !7, i64 0}
!106 = !{!104, !56, i64 8}
!107 = !{!104, !105, i64 16}
!108 = !{!109, !56, i64 0}
!109 = !{!"_ZTSN4Luau24OnlyTablesCanHaveMethodsE", !56, i64 0}
!110 = !{!111, !29, i64 16}
!111 = !{!"_ZTSSt22_Optional_payload_baseIN4Luau8LocationEE", !7, i64 0, !29, i64 16}
!112 = !{!113, !35, i64 0}
!113 = !{!"_ZTSN4Luau13CountMismatchE", !35, i64 0, !114, i64 8, !35, i64 24, !118, i64 32, !29, i64 36, !42, i64 40}
!114 = !{!"_ZTSSt8optionalImE", !115, i64 0}
!115 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !116, i64 0}
!116 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !117, i64 0}
!117 = !{!"_ZTSSt22_Optional_payload_baseImE", !7, i64 0, !29, i64 8}
!118 = !{!"_ZTSN4Luau13CountMismatch7ContextE", !7, i64 0}
!119 = !{!117, !29, i64 8}
!120 = !{!113, !35, i64 24}
!121 = !{!113, !118, i64 32}
!122 = !{!123, !56, i64 80}
!123 = !{!"_ZTSN4Luau30IncorrectGenericParameterCountE", !42, i64 0, !124, i64 32, !35, i64 112, !35, i64 120}
!124 = !{!"_ZTSN4Luau7TypeFunE", !125, i64 0, !130, i64 24, !56, i64 48, !135, i64 56}
!125 = !{!"_ZTSSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EE", !126, i64 0}
!126 = !{!"_ZTSSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE", !127, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE12_Vector_implE", !128, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIN4Luau21GenericTypeDefinitionESaIS1_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!129 = !{!"p1 _ZTSN4Luau21GenericTypeDefinitionE", !13, i64 0}
!130 = !{!"_ZTSSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EE", !131, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE", !132, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE12_Vector_implE", !133, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseIN4Luau25GenericTypePackDefinitionESaIS1_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!134 = !{!"p1 _ZTSN4Luau25GenericTypePackDefinitionE", !13, i64 0}
!135 = !{!"_ZTSSt8optionalIN4Luau8LocationEE", !136, i64 0}
!136 = !{!"_ZTSSt14_Optional_baseIN4Luau8LocationELb1ELb1EE", !137, i64 0}
!137 = !{!"_ZTSSt17_Optional_payloadIN4Luau8LocationELb1ELb1ELb1EE", !111, i64 0}
!138 = !{!128, !129, i64 8}
!139 = !{!128, !129, i64 0}
!140 = !{!133, !134, i64 8}
!141 = !{!133, !134, i64 0}
!142 = distinct !{!142, !19}
!143 = !{!144, !56, i64 0}
!144 = !{!"_ZTSN4Luau21GenericTypeDefinitionE", !56, i64 0, !145, i64 8}
!145 = !{!"_ZTSSt8optionalIPKN4Luau4TypeEE", !146, i64 0}
!146 = !{!"_ZTSSt14_Optional_baseIPKN4Luau4TypeELb1ELb1EE", !147, i64 0}
!147 = !{!"_ZTSSt17_Optional_payloadIPKN4Luau4TypeELb1ELb1ELb1EE", !148, i64 0}
!148 = !{!"_ZTSSt22_Optional_payload_baseIPKN4Luau4TypeEE", !7, i64 0, !29, i64 8}
!149 = !{!150, !151, i64 0}
!150 = !{!"_ZTSN4Luau25GenericTypePackDefinitionE", !151, i64 0, !152, i64 8}
!151 = !{!"p1 _ZTSN4Luau11TypePackVarE", !13, i64 0}
!152 = !{!"_ZTSSt8optionalIPKN4Luau11TypePackVarEE", !153, i64 0}
!153 = !{!"_ZTSSt14_Optional_baseIPKN4Luau11TypePackVarELb1ELb1EE", !154, i64 0}
!154 = !{!"_ZTSSt17_Optional_payloadIPKN4Luau11TypePackVarELb1ELb1ELb1EE", !155, i64 0}
!155 = !{!"_ZTSSt22_Optional_payload_baseIPKN4Luau11TypePackVarEE", !7, i64 0, !29, i64 8}
end_hunk_1
