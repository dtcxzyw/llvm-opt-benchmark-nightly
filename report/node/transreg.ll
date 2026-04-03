begin_hunk_0
  %i.w = sext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = select i1 %i.u, i32 %i.y, i32 %i.w       ; 2 uses
  %.not.i.i = trunc i16 %i.t to i1
  %i.aa = icmp slt i32 %i.z, 1
  %or.cond3.i = select i1 %.not.i.i, i1 true, i1 %i.aa
  br i1 %or.cond3.i, label %._crit_edge, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %bb.f
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %7 = load i16, ptr %6, align 8                  ; 2 uses
  %8 = icmp slt i16 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %10 = load i32, ptr %9, align 4
  %11 = ashr i16 %7, 5
  %12 = sext i16 %11 to i32
  %13 = select i1 %8, i32 %10, i32 %12
  %i.ab = and i16 %i.t, 2
  %.not.i.i.i = icmp eq i16 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = select i1 %.not.i.i.i, ptr %i.ae, ptr %i.ac
  %i.ag = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef %i.af, i32 noundef 0, i32 noundef %i.z, i32 noundef 0, i32 noundef %13) #11 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i.lr.ph, label %._crit_edge

_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i.lr.ph: ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i

_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i:    ; preds = %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i.lr.ph, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit
  %.03262 = phi i32 [ %i.ag, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i.lr.ph ], [ %i.at, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit ]
  %i.ak = load i16, ptr %i.s, align 8             ; 4 uses
  %i.al = icmp slt i16 %i.ak, 0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.x, align 4
  %i.ap = select i1 %i.al, i32 %i.ao, i32 %i.an   ; 2 uses
  %.not.i.i52 = trunc i16 %i.ak to i1
  %or.cond.i53 = icmp slt i32 %i.ap, 1
  %or.cond12.i = select i1 %.not.i.i52, i1 true, i1 %or.cond.i53
  br i1 %or.cond12.i, label %._crit_edge, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit:   ; preds = %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i
  %15 = add nuw nsw i32 %.03262, 1
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %16 = icmp slt i16 %.pre.i, 0
  %17 = load i32, ptr %14, align 4
  %18 = ashr i16 %.pre.i, 5
  %19 = sext i16 %18 to i32
  %20 = select i1 %16, i32 %17, i32 %19           ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %15, i32 %20) ; 2 uses
  %21 = sub nsw i32 %20, %spec.select.i
  %i.aq = and i16 %i.ak, 2
  %.not.i.i.i58 = icmp eq i16 %i.aq, 0
  %i.ar = load ptr, ptr %i.aj, align 8
  %i.as = select i1 %.not.i.i.i58, ptr %i.ar, ptr %i.ai
  %i.at = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef %i.as, i32 noundef 0, i32 noundef %i.ap, i32 noundef %spec.select.i, i32 noundef %21) #11 ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit, %bb.f, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i16 2, ptr %i.av, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.aw = load i16, ptr %22, align 8              ; 2 uses
  %i.ax = icmp slt i16 %i.aw, 0
  %i.ay = ashr i16 %i.aw, 5
  %i.az = sext i16 %i.ay to i32
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ba = load i32, ptr %23, align 4
  %i.bb = select i1 %i.ax, i32 %i.ba, i32 %i.az
  %i.bc = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i16 noundef zeroext -1, i32 noundef 0, i32 noundef %i.bb) #11 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
end_hunk_0
begin_hunk_1
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bo = load i16, ptr %22, align 8              ; 2 uses
  %i.bp = and i16 %i.bo, 1
  %.not.i.i60 = icmp eq i16 %i.bp, 0
  %i.bq = and i16 %i.bo, 30
  %storemerge.i.i = select i1 %.not.i.i60, i16 %i.bq, i16 2
  store i16 %storemerge.i.i, ptr %22, align 8
  br label %_ZN6icu_7813UnicodeString6removeEii.exit

bb.i:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bz = load i16, ptr %22, align 8              ; 2 uses
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = ashr i16 %i.bz, 5
  %i.cc = sext i16 %i.cb to i32
  %i.cd = load i32, ptr %23, align 4
  %i.ce = select i1 %i.ca, i32 %i.cd, i32 %i.cc
  %i.cf = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i16 noundef zeroext -1, i32 noundef 0, i32 noundef %i.ce) #11 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %bb.g, label %._crit_edge65, !llvm.loop !7

._crit_edge65:                                    ; preds = %bb.m, %._crit_edge
  %i.ch = load i16, ptr %22, align 8
  %i.ci = icmp ugt i16 %i.ch, 31
  br i1 %i.ci, label %bb.n, label %bb.o

end_hunk_2
begin_hunk_3
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
