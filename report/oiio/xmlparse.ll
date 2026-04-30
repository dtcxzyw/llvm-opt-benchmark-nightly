inline.NumInlined: 238
inline.NumDeleted: 43
begin_hunk_0_@doCdataSection:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %accountingOnAbort.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %7 = load ptr, ptr %i.g, align 8                ; 2 uses
  store ptr %7, ptr %i.h, align 8
  %i.ag = load ptr, ptr %i.t, align 8
  %i.ah = call i32 %i.ag(ptr noundef %1, ptr noundef %7, ptr noundef %3, ptr noundef nonnull %i.h) #24 ; 2 uses
end_hunk_0
begin_hunk_1_@doCdataSection:bb.a
  br label %.loopexit

bb.ba:                                            ; preds = %.thread, %bb.am, %reportDefault.exit88, %bb.an, %bb.ab, %reportDefault.exit84, %bb.ac
  %i.hm = load ptr, ptr %i.h, align 8             ; 3 uses
  store ptr %i.hm, ptr %i.g, align 8
  store ptr %i.hm, ptr %.066, align 8
  %i.hn = load i32, ptr %i.af, align 8
end_hunk_1
