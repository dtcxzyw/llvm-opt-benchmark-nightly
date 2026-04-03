begin_hunk_0

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.w = load i16, ptr %i.c, align 8              ; 5 uses
  %i.x = icmp slt i16 %i.w, 0
  %i.y = ashr i16 %i.w, 5
  %i.z = sext i16 %i.y to i32                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = select i1 %i.x, i32 %i.ab, i32 %i.z     ; 2 uses
  %.not.i.i = trunc i16 %i.w to i1
  %i.ad = icmp slt i32 %i.ac, 1
  %or.cond3.i = select i1 %.not.i.i, i1 true, i1 %i.ad
  br i1 %or.cond3.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %7 = load i16, ptr %6, align 8                  ; 2 uses
  %8 = icmp slt i16 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 356
  %10 = load i32, ptr %9, align 4
  %11 = ashr i16 %7, 5
  %12 = sext i16 %11 to i32
  %13 = select i1 %8, i32 %10, i32 %12
  %i.ae = and i16 %i.w, 2
  %.not.i.i.i = icmp eq i16 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = select i1 %.not.i.i.i, ptr %i.ah, ptr %i.af
  %i.aj = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef %i.ai, i32 noundef 0, i32 noundef %i.ac, i32 noundef 0, i32 noundef %13) #17 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge, label %bb.c

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge: ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %.pre12.a = load i16, ptr %i.c, align 8         ; 2 uses
  %.pre13.a = load i32, ptr %i.aa, align 4
  %.pre17 = ashr i16 %.pre12.a, 5
  %.pre19 = sext i16 %.pre17 to i32
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge, %bb.b
  %.pre-phi14 = phi i32 [ %.pre19, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %i.z, %bb.b ]
  %14 = phi i32 [ %.pre13.a, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %i.ab, %bb.b ]
  %15 = phi i16 [ %.pre12.a, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit._ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread_crit_edge ], [ %i.w, %bb.b ]
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %17 = load i16, ptr %16, align 8                ; 2 uses
  %18 = icmp slt i16 %17, 0
  %19 = ashr i16 %17, 5
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 356
  %22 = load i32, ptr %21, align 4
  %i.al = select i1 %18, i32 %22, i32 %20
  %i.am = icmp slt i16 %15, 0
  %i.an = select i1 %i.am, i32 %14, i32 %.pre-phi14
  %i.ao = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.an) #17 ; 0 uses
  br label %bb.c

end_hunk_0
begin_hunk_1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16
end_hunk_1
