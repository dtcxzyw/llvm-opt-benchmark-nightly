Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/SystemTools?download=true
inline.NumInlined: 1630
inline.NumDeleted: 268
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5cmsys11SystemTools9UpperCaseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %.sroa.0.08.i, align 1, !tbaa !24
  %i.f = tail call noundef zeroext i8 @cmsysString_toupper(i8 noundef signext %i.e), !inline_history !0
  store i8 %i.f, ptr %.sroa.0.08.i, align 1, !tbaa !24
  %i.g = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFhcEET0_T_SD_SC_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFhcEET0_T_SD_SC_T1_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !25
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFhcEET0_T_SD_SC_T1_.exit

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFhcEET0_T_SD_SC_T1_.exit: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFhcEET0_T_SD_SC_T1_.exit.loopexit, %bb.a
  %i.h = phi ptr [ %.pre, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFhcEET0_T_SD_SC_T1_.exit.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFhcEET0_T_SD_SC_T1_.exit
  %i.l = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFhcEET0_T_SD_SC_T1_.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  %i.o = load i64, ptr %i.j, align 8, !tbaa !24
  store i64 %i.o, ptr %i.i, align 8, !tbaa !24
  %.pre4 = load i64, ptr %i.b, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !23
  store ptr %i.j, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.j, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN5cmsys11SystemTools9CountCharEPKcc(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef signext %1) local_unnamed_addr #16 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !24      ; 2 uses
  %.not910 = icmp eq i8 %i.a, 0
  br i1 %.not910, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.b = phi i8 [ %i.f, %.lr.ph ], [ %i.a, %.preheader ]
  %.012 = phi i64 [ %spec.select, %.lr.ph ], [ 0, %.preheader ]
  %.0611 = phi ptr [ %i.e, %.lr.ph ], [ %0, %.preheader ]
  %i.c = icmp eq i8 %i.b, %1
  %i.d = zext i1 %i.c to i64
  %spec.select = add i64 %.012, %i.d              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0611, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !24    ; 2 uses
  %.not9 = icmp eq i8 %i.f, 0
  br i1 %.not9, label %.loopexit, label %.lr.ph, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 0, %.preheader ], [ %spec.select, %.lr.ph ]
  ret i64 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @_ZN5cmsys11SystemTools11RemoveCharsEPKcS2_(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #38 ; 3 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !24      ; 2 uses
  %.not2127 = icmp eq i8 %i.d, 0
  br i1 %.not2127, label %._crit_edge30, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.pre31 = load i8, ptr %1, align 1, !tbaa !24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %i.e = phi i8 [ %i.k, %.critedge ], [ %.pre31, %.preheader.preheader ] ; 3 uses
  %i.f = phi i8 [ %i.m, %.critedge ], [ %i.d, %.preheader.preheader ] ; 2 uses
  %.01629 = phi ptr [ %.1, %.critedge ], [ %i.c, %.preheader.preheader ] ; 3 uses
  %.01828 = phi ptr [ %i.l, %.critedge ], [ %0, %.preheader.preheader ]
  %.not2225 = icmp eq i8 %i.e, 0
  br i1 %.not2225, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24    ; 2 uses
  %.not22 = icmp eq i8 %i.h, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !96

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.i = phi i8 [ %i.h, %bb.c ], [ %i.e, %.preheader ]
  %.026 = phi ptr [ %i.g, %bb.c ], [ %1, %.preheader ]
  %.not23 = icmp eq i8 %i.f, %i.i
  br i1 %.not23, label %.critedge, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.01629, i64 1
  store i8 %i.f, ptr %.01629, align 1, !tbaa !24
  %.pre = load i8, ptr %1, align 1, !tbaa !24
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %._crit_edge
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.e, %.lr.ph ]
  %.1 = phi ptr [ %i.j, %._crit_edge ], [ %.01629, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01828, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24    ; 2 uses
  %.not21 = icmp eq i8 %i.m, 0
  br i1 %.not21, label %._crit_edge30, label %.preheader, !llvm.loop !97

._crit_edge30:                                    ; preds = %.critedge, %bb.b
  %.016.lcssa = phi ptr [ %i.c, %bb.b ], [ %.1, %.critedge ]
  store i8 0, ptr %.016.lcssa, align 1, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge30
  %.017 = phi ptr [ %i.c, %._crit_edge30 ], [ null, %bb.a ]
  ret ptr %.017
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @_ZN5cmsys11SystemTools22RemoveCharsButUpperHexEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #38 ; 3 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !24      ; 2 uses
  %.not2023 = icmp eq i8 %i.d, 0
  br i1 %.not2023, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.e = phi i8 [ %i.j, %bb.d ], [ %i.d, %bb.b ]  ; 3 uses
  %.025 = phi ptr [ %.1, %bb.d ], [ %i.c, %bb.b ] ; 3 uses
  %.01424 = phi ptr [ %i.i, %bb.d ], [ %0, %bb.b ]
  %i.f = add i8 %i.e, -48
  %or.cond = icmp ult i8 %i.f, 10
  %i.g = add i8 %i.e, -65
  %or.cond21 = icmp ult i8 %i.g, 6
  %or.cond22 = or i1 %or.cond, %or.cond21
  br i1 %or.cond22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.025, i64 1
  store i8 %i.e, ptr %.025, align 1, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.1 = phi ptr [ %i.h, %bb.c ], [ %.025, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01424, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24    ; 2 uses
  %.not20 = icmp eq i8 %i.j, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.0.lcssa = phi ptr [ %i.c, %bb.b ], [ %.1, %bb.d ]
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.015 = phi ptr [ %i.c, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN5cmsys11SystemTools12ReplaceCharsEPcPKcc(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2) local_unnamed_addr #19 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader16

.preheader16:                                     ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !24      ; 2 uses
  %.not1419 = icmp eq i8 %i.a, 0
  br i1 %.not1419, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader16
  %i.b = load i8, ptr %1, align 1, !tbaa !24      ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.preheader

.preheaderthread-pre-split:                       ; preds = %._crit_edge
  %.pr = load i8, ptr %1, align 1, !tbaa !24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheaderthread-pre-split
  %i.d = phi i8 [ %.pr, %.preheaderthread-pre-split ], [ %i.b, %.preheader.lr.ph ] ; 2 uses
  %.011.promoted = phi i8 [ %i.l, %.preheaderthread-pre-split ], [ %i.a, %.preheader.lr.ph ]
  %.01120 = phi ptr [ %i.k, %.preheaderthread-pre-split ], [ %0, %.preheader.lr.ph ] ; 2 uses
  %.not1517 = icmp eq i8 %i.d, 0
  br i1 %.not1517, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.e = phi i8 [ %i.h, %bb.c ], [ %.011.promoted, %.preheader ] ; 2 uses
  %i.f = phi i8 [ %i.j, %bb.c ], [ %i.d, %.preheader ]
  %.018 = phi ptr [ %i.i, %bb.c ], [ %1, %.preheader ]
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i8 %2, ptr %.01120, align 1, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi i8 [ %2, %bb.b ], [ %i.e, %.lr.ph ]
  %i.i = getelementptr inbounds nuw i8, ptr %.018, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24    ; 2 uses
  %.not15 = icmp eq i8 %i.j, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %.01120, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !24    ; 2 uses
  %.not14 = icmp eq i8 %i.l, 0
  br i1 %.not14, label %.loopexit, label %.preheaderthread-pre-split, !llvm.loop !100

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader16, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5cmsys11SystemTools16StringStartsWithEPKcS2_(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 2 uses
  %.not = icmp ult i64 %i.c, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.d) #37
  %.not13 = icmp eq i32 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not13, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5cmsys11SystemTools16StringStartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #20 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 2 uses
  %.not10 = icmp ult i64 %i.b, %i.c
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !25
  %i.e = tail call i32 @strncmp(ptr noundef %i.d, ptr noundef nonnull %1, i64 noundef %i.c) #37
  %.not11 = icmp eq i32 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not11, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5cmsys11SystemTools14StringEndsWithEPKcS2_(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37 ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 3 uses
  %.not = icmp ult i64 %i.c, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = tail call i32 @strncmp(ptr noundef nonnull %i.f, ptr noundef nonnull %1, i64 noundef %i.d) #37
  %.not16 = icmp eq i32 %i.g, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not16, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5cmsys11SystemTools14StringEndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #20 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 3 uses
  %.not13 = icmp ult i64 %i.b, %i.c
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !25
  %i.e = sub nuw i64 %i.b, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = tail call i32 @strncmp(ptr noundef %i.f, ptr noundef nonnull %1, i64 noundef %i.c) #37
  %.not14 = icmp eq i32 %i.g, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not14, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN5cmsys11SystemTools14FindLastStringEPKcS2_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37 ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 3 uses
  %.not = icmp ult i64 %i.c, %i.d
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.f = sub i64 0, %i.d
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.017 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.e ] ; 4 uses
  %i.h = tail call i32 @strncmp(ptr noundef %.017, ptr noundef nonnull %1, i64 noundef %i.d) #37
  %.not23.not = icmp eq i32 %i.h, 0
  br i1 %.not23.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %.017, i64 -1
  %.not24 = icmp eq ptr %.017, %0
  br i1 %.not24, label %.critedge, label %bb.d, !llvm.loop !102

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ], [ %.017, %bb.d ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5cmsys11SystemTools10CropStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 5 uses
  %i.e = icmp ne i64 %2, 0
  %.not = icmp ult i64 %2, %i.d
  %or.cond39 = and i1 %i.e, %.not
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !21
  br i1 %or.cond39, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !25
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.j, ptr %i.f, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.g, align 1, !tbaa !24
  store i8 %i.l, ptr %i.k, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.g, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !23
  %i.o = load ptr, ptr %0, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.s

bb.e:                                             ; preds = %bb.a
end_hunk_0
