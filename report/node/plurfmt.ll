begin_hunk_0

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.e, align 4
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_0
begin_hunk_1
.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.not51 = icmp eq ptr %2, null
  %.phi.trans.insert.i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12
end_hunk_1
begin_hunk_2

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.069 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.k ]  ; 4 uses
  %.04468 = phi i32 [ -1, %.lr.ph ], [ %.4, %bb.k ] ; 7 uses
  %i.s = add nsw i32 %.069, 1                     ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.u = sext i32 %.069 to i64
end_hunk_2
begin_hunk_3
  %i.am = load i32, ptr %i.al, align 4
  %i.an = sub nsw i32 %i.am, %i.ak
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef %i.ak, i32 noundef %i.an) #11
  %.pre.i54.a = load i16, ptr %.phi.trans.insert.i.a, align 8 ; 5 uses
  %i.ao = icmp slt i16 %.pre.i54.a, 0
  %i.ap = ashr i16 %.pre.i54.a, 5
  %i.aq = sext i16 %i.ap to i32
  %i.ar = load i32, ptr %i.m, align 4
  %i.as = select i1 %i.ao, i32 %i.ar, i32 %i.aq   ; 3 uses
  %.not.i.i56 = trunc i16 %.pre.i54.a to i1
  %i.at = icmp slt i32 %i.as, 1
  %or.cond12.i58 = select i1 %.not.i.i56, i1 true, i1 %i.at ; 2 uses
  br i1 %.not51, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i60, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %bb.g
  br i1 %or.cond12.i58, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit:   ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %.pre.i = load i16, ptr %i.n, align 8           ; 2 uses
  %9 = icmp slt i16 %.pre.i, 0
  %10 = load i32, ptr %i.o, align 4
  %11 = ashr i16 %.pre.i, 5
  %12 = sext i16 %11 to i32
  %13 = select i1 %9, i32 %10, i32 %12            ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %13) ; 2 uses
  %14 = sub nsw i32 %13, %spec.select.i
  %i.au = and i16 %.pre.i54.a, 2
  %.not.i.i.i = icmp eq i16 %i.au, 0
  %i.av = load ptr, ptr %i.q, align 8
  %i.aw = select i1 %.not.i.i.i, ptr %i.av, ptr %i.p
  %i.ax = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.aw, i32 noundef 0, i32 noundef %i.as, i32 noundef %spec.select.i, i32 noundef %14) #11 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 -1, ptr %i.a, align 4
  %i.az = call noundef i32 @_ZNK6icu_786NFRule15findTextLenientERKNS_13UnicodeStringES3_iPi(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %spec.store.select, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i60: ; preds = %bb.g
  br i1 %or.cond12.i58, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i60
  %.pre.i54 = load i16, ptr %i.n, align 8         ; 2 uses
  %15 = icmp slt i16 %.pre.i54, 0
  %16 = load i32, ptr %i.o, align 4
  %17 = ashr i16 %.pre.i54, 5
  %18 = sext i16 %17 to i32
  %19 = select i1 %15, i32 %16, i32 %18           ; 2 uses
  %spec.select.i55 = call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %19) ; 2 uses
  %20 = sub nsw i32 %19, %spec.select.i55
  %i.ba = and i16 %.pre.i54.a, 2
  %.not.i.i.i62 = icmp eq i16 %i.ba, 0
  %i.bb = load ptr, ptr %i.q, align 8
  %i.bc = select i1 %.not.i.i.i62, ptr %i.bb, ptr %i.p
  %i.bd = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.bc, i32 noundef 0, i32 noundef %i.as, i32 noundef %spec.select.i55, i32 noundef %20) #11
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63: ; preds = %bb.h, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit
end_hunk_3
begin_hunk_4
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63
  %i.bf = load i16, ptr %.phi.trans.insert.i.a, align 8 ; 2 uses
  %i.bg = icmp slt i16 %i.bf, 0
  %i.bh = ashr i16 %i.bf, 5
  %i.bi = sext i16 %i.bh to i32
  %i.bj = load i32, ptr %i.m, align 4
  %i.bk = select i1 %i.bg, i32 %i.bj, i32 %i.bi
  %i.bl = load i16, ptr %i.i, align 8             ; 2 uses
  %i.bm = icmp slt i16 %i.bl, 0
end_hunk_4
begin_hunk_5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63.thread: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i60, %bb.j, %bb.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63
  %.145 = phi i32 [ %.143, %bb.j ], [ %.04468, %bb.i ], [ %.04468, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit63 ], [ %.04468, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i60 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.k
end_hunk_5
begin_hunk_6
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
