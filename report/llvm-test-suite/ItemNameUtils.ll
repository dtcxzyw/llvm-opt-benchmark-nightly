inline.NumInlined: 28
inline.NumDeleted: 17
begin_hunk_0
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive9NItemName13MakeLegalNameERK11CStringBaseIwE(ptr dead_on_unwind noalias writable writeonly sret(%class.CStringBase) align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN8NArchive9NItemName13MakeLegalNameERK11CStringBaseIwE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.p, align 8, !tbaa !8
  ret void
}

end_hunk_1
begin_hunk_2_@__gxx_personality_v0
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive9NItemName9GetOSNameERK11CStringBaseIwE(ptr dead_on_unwind noalias writable writeonly sret(%class.CStringBase) align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b
end_hunk_2
begin_hunk_3_@_ZN8NArchive9NItemName9GetOSNameERK11CStringBaseIwE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.p, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive9NItemName10GetOSName2ERK11CStringBaseIwE(ptr dead_on_unwind noalias writable writeonly sret(%class.CStringBase) align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_3
begin_hunk_4_@_ZN8NArchive9NItemName10GetOSName2ERK11CStringBaseIwE:bb.a

_ZN8NArchive9NItemName9GetOSNameERK11CStringBaseIwE.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.t, align 8, !tbaa !8, !alias.scope !18
  %i.u = sext i32 %i.b to i64
  %i.v = getelementptr [4 x i8], ptr %i.o, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -4       ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
end_hunk_4
begin_hunk_5_@_ZN8NArchive9NItemName10GetOSName2ERK11CStringBaseIwE:bb.a
_ZN11CStringBaseIwE6DeleteEii.exit:               ; preds = %_ZN8NArchive9NItemName9GetOSNameERK11CStringBaseIwE.exit
  %i.z = load i32, ptr %i.v, align 4
  store i32 %i.z, ptr %i.w, align 4
  %i.aa = add nsw i32 %i.b, -1
  store i32 %i.aa, ptr %i.t, align 8, !tbaa !8
  br label %bb.f

end_hunk_5
begin_hunk_6_@_ZN8NArchive9NItemName12HasTailSlashERK11CStringBaseIcEj:bb.a
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive9NItemName15WinNameToOSNameERK11CStringBaseIwE(ptr dead_on_unwind noalias writable writeonly sret(%class.CStringBase) align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b
end_hunk_6
begin_hunk_7_@_ZN8NArchive9NItemName15WinNameToOSNameERK11CStringBaseIwE:bb.a
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit, label %bb.c, !llvm.loop !16

_ZN11CStringBaseIwEC2ERKS0_.exit:                 ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %2, align 8, !tbaa !8
  %i.p = icmp sgt i32 %i.b, 0
  br i1 %i.p, label %.lr.ph.i, label %_ZN11CStringBaseIwE7ReplaceEww.exit

.lr.ph.i:                                         ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit
end_hunk_7
begin_hunk_8_@_ZN8NArchive9NItemName15WinNameToOSNameERK11CStringBaseIwE:bb.a
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.af
  store i32 47, ptr %i.ag, align 4, !tbaa !13
  %i.ah = add nuw nsw i32 %i.ad, 1                ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.b
  br i1 %i.ai, label %bb.d, label %_ZN11CStringBaseIwE7ReplaceEww.exit, !llvm.loop !27

_ZN11CStringBaseIwE7ReplaceEww.exit:              ; preds = %bb.f, %_ZNK11CStringBaseIwE4FindEwi.exit.i, %.lr.ph.i.i, %_ZN11CStringBaseIwEC2ERKS0_.exit
end_hunk_8
