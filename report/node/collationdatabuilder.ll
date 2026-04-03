begin_hunk_0

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.w = load i16, ptr %i.c, align 8              ; 7 uses
  %i.x = icmp slt i16 %i.w, 0
  %i.y = ashr i16 %i.w, 5
  %i.z = sext i16 %i.y to i32                     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 4 uses
  %i.ac = select i1 %i.x, i32 %i.ab, i32 %i.z     ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %7 = load i16, ptr %6, align 8                  ; 5 uses
  %i.ad = icmp slt i16 %7, 0
  %8 = ashr i16 %7, 5
  %9 = sext i16 %8 to i32                         ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %11 = load i32, ptr %10, align 4                ; 4 uses
  %12 = select i1 %i.ad, i32 %11, i32 %9
  %13 = and i16 %i.w, 1
  %.not.i.i = icmp eq i16 %13, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

.sink.split.i.i.i:                                ; preds = %bb.b
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.ac, i32 0) ; 2 uses
  %14 = icmp slt i32 %i.ac, 0
  br i1 %14, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %.sink.split.i.i.i
  %15 = sub nuw nsw i32 %i.ac, %spec.select.i.i
  %16 = call i32 @llvm.umin.i32(i32 %i.ac, i32 %15) ; 2 uses
  %.not.i = icmp eq i32 %16, 0
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %i.ae = and i16 %i.w, 2
  %.not.i.i.i = icmp eq i16 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = select i1 %.not.i.i.i, ptr %i.ah, ptr %i.af
  %i.aj = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef %i.ai, i32 noundef %spec.select.i.i, i32 noundef %16, i32 noundef 0, i32 noundef %12) #17 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge, label %bb.c

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge: ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %.pre = load i16, ptr %6, align 8               ; 2 uses
  %.pre11 = load i32, ptr %10, align 4
  %.pre12.a = load i16, ptr %i.c, align 8         ; 2 uses
  %.pre13.a = load i32, ptr %i.aa, align 4
  %.pre14 = ashr i16 %.pre, 5
  %.pre15 = sext i16 %.pre14 to i32
  %.pre17 = ashr i16 %.pre12.a, 5
  %.pre19 = sext i16 %.pre17 to i32
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge, %.sink.split.i.i.i, %bb.b, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %.pre-phi20 = phi i32 [ %.pre19, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %i.z, %.sink.split.i.i.i ], [ %i.z, %bb.b ], [ %i.z, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ]
  %.pre-phi16 = phi i32 [ %.pre15, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %9, %.sink.split.i.i.i ], [ %9, %bb.b ], [ %9, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ]
  %17 = phi i32 [ %.pre13.a, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %i.ab, %.sink.split.i.i.i ], [ %i.ab, %bb.b ], [ %i.ab, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ]
  %18 = phi i16 [ %.pre12.a, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %i.w, %.sink.split.i.i.i ], [ %i.w, %bb.b ], [ %i.w, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ]
  %19 = phi i32 [ %.pre11, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %11, %.sink.split.i.i.i ], [ %11, %bb.b ], [ %11, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ]
  %20 = phi i16 [ %.pre, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %7, %.sink.split.i.i.i ], [ %7, %bb.b ], [ %7, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ]
  %21 = icmp slt i16 %20, 0
  %i.al = select i1 %21, i32 %19, i32 %.pre-phi16
  %i.am = icmp slt i16 %18, 0
  %i.an = select i1 %i.am, i32 %17, i32 %.pre-phi20
  %i.ao = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.an) #17 ; 0 uses
  br label %bb.c

end_hunk_0
begin_hunk_1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16
end_hunk_1
