inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@_ZN10BitBoard6412readFromFileEP8_IO_FILE:bb.a
  %i.ao = shl nuw nsw i32 %i.an, 16
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !10
  %i.aq = or i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.ar = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.3 = icmp eq i64 %i.ar, 1
  br i1 %.not20.3, label %.loopexit.loopexit, label %bb.e

.loopexit.loopexit:                               ; preds = %.preheader.3
  %i.as = load i8, ptr %i.b, align 1, !tbaa !11
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw i32 %i.at, 24
  %i.av = load i32, ptr %i.c, align 4, !tbaa !10
  %i.aw = or i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

bb.e:                                             ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e, %.thread
  %.6 = phi i32 [ -1, %.thread ], [ -1, %bb.e ], [ 0, %.loopexit.loopexit ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZN10BitBoard6411writeToFileEP8_IO_FILE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 16 uses
  %i.b = alloca i8, align 1                       ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = load i32, ptr %0, align 4, !tbaa !8
  %i.d = trunc i32 %i.c to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !11
  %i.e = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not = icmp eq i64 %i.e, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.f = load i32, ptr %0, align 4, !tbaa !8
  %i.g = lshr i32 %i.f, 8
  %i.h = trunc i32 %i.g to i8
  store i8 %i.h, ptr %i.a, align 1, !tbaa !11
  %i.i = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.1 = icmp eq i64 %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not.1, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.j = load i32, ptr %0, align 4, !tbaa !8
  %i.k = lshr i32 %i.j, 16
  %i.l = trunc i32 %i.k to i8
  store i8 %i.l, ptr %i.a, align 1, !tbaa !11
  %i.m = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.2 = icmp eq i64 %i.m, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not.2, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.n = load i32, ptr %0, align 4, !tbaa !8
  %i.o = lshr i32 %i.n, 24
  %i.p = trunc nuw i32 %i.o to i8
  store i8 %i.p, ptr %i.a, align 1, !tbaa !11
  %i.q = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.3 = icmp eq i64 %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not.3, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.b, align 1, !tbaa !11
  %i.u = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20 = icmp eq i64 %i.u, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not20, label %bb.e, label %.thread

bb.e:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.v = load i32, ptr %i.r, align 4, !tbaa !10
  %i.w = lshr i32 %i.v, 8
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.b, align 1, !tbaa !11
  %i.y = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.1 = icmp eq i64 %i.y, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not20.1, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.z = load i32, ptr %i.r, align 4, !tbaa !10
  %i.aa = lshr i32 %i.z, 16
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !11
  %i.ac = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.2 = icmp eq i64 %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not20.2, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ad = load i32, ptr %i.r, align 4, !tbaa !10
  %i.ae = lshr i32 %i.ad, 24
  %i.af = trunc nuw i32 %i.ae to i8
  store i8 %i.af, ptr %i.b, align 1, !tbaa !11
  %i.ag = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.3 = icmp ne i64 %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %spec.select = sext i1 %.not20.3 to i32
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %.preheader, %bb.e, %bb.f
  %.6 = phi i32 [ -1, %bb.f ], [ -1, %.preheader ], [ -1, %bb.a ], [ -1, %bb.e ], [ %spec.select, %bb.g ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.6
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -20, 81) i32 @_Z6getBFPii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 9
  %i.b = add i32 %1, -1
  %i.c = icmp ult i32 %i.b, 9
  %or.cond5 = and i1 %or.cond, %i.c
  br i1 %or.cond5, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 5
  %i.e = add nuw nsw i32 %1, 4
  %i.f = icmp samesign ugt i32 %0, %i.e
  %or.cond39 = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond39, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %1, 6              ; 2 uses
  %i.h = add nsw i32 %1, -5
  %.not = icmp samesign ugt i32 %0, %i.h
  %or.cond41 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = mul nuw nsw i32 %1, 9
  %i.j = add nuw nsw i32 %i.i, %0
  %i.k = icmp samesign ugt i32 %1, 1
  %spec.select.v = select i1 %i.k, i32 -14, i32 -10
  %spec.select = add nsw i32 %i.j, %spec.select.v ; 2 uses
  %i.l = icmp samesign ugt i32 %1, 2
  %i.m = add nsw i32 %spec.select, -3
  %.1 = select i1 %i.l, i32 %i.m, i32 %spec.select ; 2 uses
  %i.n = icmp samesign ugt i32 %1, 3
  %i.o = add nsw i32 %.1, -2
  %.2 = select i1 %i.n, i32 %i.o, i32 %.1
  %i.p = icmp samesign ugt i32 %1, 4
  %i.q = sext i1 %i.p to i32
  %not. = xor i1 %i.g, true
  %i.r = sext i1 %not. to i32
  %.3 = add nsw i32 %i.r, %i.q
  %.4 = add nsw i32 %.3, %.2                      ; 2 uses
  %i.s = icmp samesign ugt i32 %1, 6
  %i.t = add nsw i32 %.4, -2
  %.5 = select i1 %i.s, i32 %i.t, i32 %.4         ; 2 uses
  %i.u = icmp samesign ugt i32 %1, 7
  %i.v = add nsw i32 %.5, -3
  %.6 = select i1 %i.u, i32 %i.v, i32 %.5         ; 2 uses
  %i.w = icmp samesign ugt i32 %1, 8
  %i.x = add nsw i32 %.6, -4
  %.7 = select i1 %i.w, i32 %i.x, i32 %.6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.d
  %.035 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ %.7, %bb.d ], [ -1, %bb.a ]
  ret i32 %.035
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10BitBoard645printEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i32 [ 4, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01221 = phi i32 [ 1, %bb.a ], [ %i.af, %bb.g ] ; 12 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %indvars.iv, i32 1)
  %i.a = icmp samesign ugt i32 %.01221, 4         ; 3 uses
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.018 = phi i32 [ %i.c, %.lr.ph ], [ 0, %bb.b ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.c = add nuw i32 %.018, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  %i.d = add nuw nsw i32 %.01221, 4
  %i.e = icmp samesign ult i32 %.01221, 6         ; 2 uses
  %i.f = add nsw i32 %.01221, -5
  %i.g = mul nuw nsw i32 %.01221, 9
  %i.h = icmp samesign ugt i32 %.01221, 1
  %spec.select.v.i = select i1 %i.h, i32 -14, i32 -10
  %i.i = add nsw i32 %spec.select.v.i, %i.g
  %i.j = icmp samesign ugt i32 %.01221, 2
  %i.k = icmp samesign ugt i32 %.01221, 3
  %i.l = sext i1 %i.a to i32
  %not..i = xor i1 %i.e, true
  %i.m = sext i1 %not..i to i32
  %.3.i = add nsw i32 %i.m, %i.l
  %i.n = icmp samesign ugt i32 %.01221, 6
  %i.o = icmp samesign ugt i32 %.01221, 7
  %i.p = icmp eq i32 %.01221, 9
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.f
  %.01119 = phi i32 [ 1, %.loopexit ], [ %i.ad, %bb.f ] ; 4 uses
  %i.q = icmp samesign ule i32 %.01119, %i.d
  %or.cond39.i.not24 = select i1 %i.a, i1 true, i1 %i.q
  %.not.i = icmp samesign ugt i32 %.01119, %i.f
  %or.cond41.i = select i1 %i.e, i1 true, i1 %.not.i
  %or.cond = select i1 %or.cond39.i.not24, i1 %or.cond41.i, i1 false
  br i1 %or.cond, label %_Z6getBFPii.exit, label %_Z6getBFPii.exit.thread

_Z6getBFPii.exit:                                 ; preds = %bb.c
  %spec.select.i = add i32 %i.i, %.01119          ; 2 uses
  %i.r = add nsw i32 %spec.select.i, -3
  %.1.i = select i1 %i.j, i32 %i.r, i32 %spec.select.i ; 2 uses
  %i.s = add nsw i32 %.1.i, -2
  %.2.i = select i1 %i.k, i32 %i.s, i32 %.1.i
  %.4.i = add nsw i32 %.3.i, %.2.i                ; 2 uses
  %i.t = add nsw i32 %.4.i, -2
  %.5.i = select i1 %i.n, i32 %i.t, i32 %.4.i     ; 2 uses
  %i.u = add nsw i32 %.5.i, -3
  %.6.i = select i1 %i.o, i32 %i.u, i32 %.5.i     ; 2 uses
  %i.v = add nsw i32 %.6.i, -4
  %.7.i = select i1 %i.p, i32 %i.v, i32 %.6.i     ; 5 uses
  %i.w = icmp eq i32 %.7.i, -1
  br i1 %i.w, label %_Z6getBFPii.exit.thread, label %bb.d

_Z6getBFPii.exit.thread:                          ; preds = %bb.c, %_Z6getBFPii.exit
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %_Z6getBFPii.exit
  %or.cond.i14 = icmp ugt i32 %.7.i, 63
  br i1 %or.cond.i14, label %_ZN10BitBoard646getBitEi.exit.thread, label %_ZN10BitBoard646getBitEi.exit

_ZN10BitBoard646getBitEi.exit:                    ; preds = %bb.d
  %i.y = icmp samesign ult i32 %.7.i, 32          ; 2 uses
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = add nsw i32 %.7.i, -32
  %.7.i.sink = select i1 %i.y, i32 %.7.i, i32 %4
  %.sink = select i1 %i.y, i32 %2, i32 %3
  %i.z = shl nuw i32 1, %.7.i.sink
  %i.aa = and i32 %.sink, %i.z
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %_ZN10BitBoard646getBitEi.exit.thread

_ZN10BitBoard646getBitEi.exit.thread:             ; preds = %bb.d, %_ZN10BitBoard646getBitEi.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN10BitBoard646getBitEi.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_Z6getBFPii.exit.thread, %bb.e, %_ZN10BitBoard646getBitEi.exit.thread
  %i.ad = add nuw nsw i32 %.01119, 1              ; 2 uses
  %exitcond25.not = icmp eq i32 %i.ad, 10
  br i1 %exitcond25.not, label %bb.g, label %bb.c, !llvm.loop !14

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.af = add nuw nsw i32 %.01221, 1              ; 2 uses
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  %exitcond26.not = icmp eq i32 %i.af, 10
  br i1 %exitcond26.not, label %bb.h, label %bb.b, !llvm.loop !15

bb.h:                                             ; preds = %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTS10BitBoard64", !5, i64 0, !5, i64 4}
!10 = !{!9, !5, i64 4}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
end_hunk_0
