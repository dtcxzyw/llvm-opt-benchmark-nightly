inline.NumInlined: 535
inline.NumDeleted: 238
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %4 = alloca %class.anon, align 8                ; 6 uses
  %5 = alloca %class.anon.6, align 8              ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.std::pair.12", align 8     ; 16 uses
  %8 = alloca %struct.DuplicateInfo, align 8      ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ew = load i64, ptr %i.au, align 8
  store i64 %i.ew, ptr %i.at, align 8
  %.val.i.i60 = load ptr, ptr %7, align 8         ; 4 uses
  %.val5.i.i = load i64, ptr %i.ap, align 8       ; 7 uses
  %i.ex = call fastcc { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.val.i.i60, i64 %.val5.i.i) ; 2 uses
  %i.ey = extractvalue { ptr, ptr } %i.ex, 1      ; 5 uses
  %.not.i.i = icmp eq ptr %i.ey, null
end_hunk_2
begin_hunk_3_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 48 ; 3 uses
  store ptr %i.fm, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %.val5.i.i, ptr %i.a, align 8
  %i.fn = icmp ugt i64 %.val5.i.i, 15
  br i1 %i.fn, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc72
end_hunk_3
begin_hunk_4_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i, %.noexc72
  %i.fq = phi ptr [ %i.fo, %.noexc.i.i.i.i.i.i ], [ %i.fm, %.noexc72 ] ; 2 uses
  switch i64 %.val5.i.i, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.fr = load i8, ptr %.val.i.i60, align 1
  store i8 %i.fr, ptr %i.fq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %.val.i.i60, i64 %.val5.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.val5 = load ptr, ptr %1, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.b, align 8            ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.c, align 8         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
end_hunk_5
begin_hunk_6_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 5 uses
  store ptr %i.y, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %.val6, ptr %i.a, align 8
  %i.z = icmp ugt i64 %.val6, 15
  br i1 %i.z, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.critedge
end_hunk_6
begin_hunk_7_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_:bb.a

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i, %.critedge
  %i.ac = phi ptr [ %i.aa, %.noexc.i.i.i.i ], [ %i.y, %.critedge ] ; 2 uses
  switch i64 %.val6, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.j
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ad = load i8, ptr %.val5, align 1
  store i8 %i.ad, ptr %i.ac, align 1
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %.val5, i64 %.val6, i1 false)
  br label %bb.j

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i
end_hunk_7
