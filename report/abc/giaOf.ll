Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaOf?download=true
inline.NumInlined: 591
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 32
begin_hunk_0_@Vec_MemHashInsert:bb.a
  %i.hw = icmp slt i32 %.val14, 16
  br i1 %i.hw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hy, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ia = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.ib = phi ptr [ %i.hz, %bb.y ], [ %i.ia, %bb.z ]
  store ptr %i.ib, ptr %i.hx, align 8, !tbaa !56
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.ic = icmp samesign ult i32 %.val14, 1073741823
  %i.id = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.ic, i32 %i.id, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !56 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.if, null
  %i.ig = zext nneg i32 %spec.select.i to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ii = tail call ptr @realloc(ptr noundef nonnull %i.if, i64 noundef %i.ih) #27
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ih) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ik = phi ptr [ %i.ii, %bb.ac ], [ %i.ij, %bb.ad ]
  store ptr %i.ik, ptr %i.ie, align 8, !tbaa !56
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.hs, align 8, !tbaa !74
  %.pre = load i32, ptr %i.ht, align 4, !tbaa !55
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.il = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !56
  %i.io = add nsw i32 %i.il, 1
  store i32 %i.io, ptr %i.ht, align 4, !tbaa !55
  %i.ip = sext i32 %i.il to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ip
  store i32 -1, ptr %i.iq, align 4, !tbaa !57
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !117 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !81 ; 3 uses
  %i.iu = ashr i32 %i.ir, %i.it                   ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !83 ; 3 uses
  %i.ix = icmp slt i32 %i.iw, %i.iu
  br i1 %i.ix, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !118 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.iu, %i.iz
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !89 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.jb, null
  %.not38.i.i = icmp eq i32 %i.iz, 0
  %i.jc = shl nsw i32 %i.iz, 1
  %i.jd = add nsw i32 %i.iu, 32
  %i.je = select i1 %.not38.i.i, i32 %i.jd, i32 %i.jc ; 2 uses
  store i32 %i.je, ptr %i.iy, align 8, !tbaa !118
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jh = tail call ptr @realloc(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #27
  %.pre.pre.i.i = load i32, ptr %i.iv, align 4, !tbaa !83
  %.pre.pre.pre.pre.i = load i32, ptr %i.is, align 8, !tbaa !81
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jg) #26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.it, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.iw, %bb.ai ]
  %i.jj = phi ptr [ %i.jh, %bb.ah ], [ %i.ji, %bb.ai ]
  store ptr %i.jj, ptr %i.ja, align 8, !tbaa !89
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.it, %bb.af ] ; 2 uses
  %i.jk = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.iw, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.jk, %i.iu
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i24, label %._crit_edge.i.i

.lr.ph.i.i24:                                     ; preds = %bb.ak
  %i.jl = load i32, ptr %0, align 8, !tbaa !80
  %i.jm = shl i32 %i.jl, %.pre.pre.i
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !89
  %i.jr = sext i32 %i.jk to i64
  %wide.trip.count.i.i25 = sext i32 %i.iu to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i24
  %indvars.iv.i.i26 = phi i64 [ %i.jr, %.lr.ph.i.i24 ], [ %indvars.iv.next.i.i27, %bb.al ]
  %indvars.iv.next.i.i27 = add nsw i64 %indvars.iv.i.i26, 1 ; 3 uses
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jo) #26
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %indvars.iv.next.i.i27
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !91
  %exitcond.not.i.i28 = icmp eq i64 %indvars.iv.next.i.i27, %wide.trip.count.i.i25
  br i1 %exitcond.not.i.i28, label %._crit_edge.i.i, label %bb.al, !llvm.loop !259

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !83
  %.pre.i = ashr i32 %i.ir, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i23 = phi i32 [ %i.iu, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.ju = add nsw i32 %i.ir, 1
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !117
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !89
  %i.jx = sext i32 %.pre-phi.i23 to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !91
  %i.ka = load i32, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !82
  %i.kd = and i32 %i.kc, %i.ir
  %i.ke = mul nsw i32 %i.kd, %i.ka
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kf
  %i.kh = sext i32 %i.ka to i64
  %i.ki = shl nsw i64 %i.kh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kg, ptr readonly align 8 %1, i64 %i.ki, i1 false)
  %i.kj = load ptr, ptr %i.hr, align 8, !tbaa !85
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %.val = load i32, ptr %i.kk, align 4, !tbaa !55
  %i.kl = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.kl, %Vec_MemPush.exit ], [ %i.gk, %.lr.ph.i18 ], [ %i.hp, %bb.u ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #17 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !57
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #24 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #24
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #24 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !113
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #28
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #24 ; 0 uses
  call void @free(ptr noundef %i.d) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !113, !noalias !263
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #24, !inline_history !262 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !58}
!1 = distinct !{!1, !58}
!2 = distinct !{!2, !58}
!3 = distinct !{!3, !58}
!4 = distinct !{!4, !58}
!5 = distinct !{!5, !58}
!6 = distinct !{!6, !58}
!7 = distinct !{!7, !58}
!8 = distinct !{!8, !58}
!9 = distinct !{!9, !58}
!10 = distinct !{!10, !58}
!11 = distinct !{!11, !58}
!12 = distinct !{!12, !58}
!13 = distinct !{!13, !58}
!14 = distinct !{!14, !58}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"any pointer", !19, i64 0}
!24 = !{!"p1 _ZTS10Gia_Man_t_", !23, i64 0}
!25 = !{!"p1 _ZTS9Jf_Par_t_", !23, i64 0}
!26 = !{!"p1 _ZTS10Vec_Mem_t_", !23, i64 0}
!27 = !{!"any p2 pointer", !23, i64 0}
!28 = !{!"Vec_Ptr_t_", !20, i64 0, !20, i64 4, !27, i64 8}
!29 = !{!"p1 int", !23, i64 0}
!30 = !{!"Vec_Int_t_", !20, i64 0, !20, i64 4, !29, i64 8}
!31 = !{!"p1 _ZTS9Of_Obj_t_", !23, i64 0}
!32 = !{!"long", !19, i64 0}
!33 = !{!"Of_Man_t_", !24, i64 0, !25, i64 8, !26, i64 16, !28, i64 24, !30, i64 40, !30, i64 56, !30, i64 72, !30, i64 88, !20, i64 104, !20, i64 108, !31, i64 112, !32, i64 120, !19, i64 128}
!34 = !{!33, !24, i64 0}
!35 = !{!33, !31, i64 112}
!36 = !{!"Of_Obj_t_", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28}
!37 = !{!36, !20, i64 24}
!38 = !{!"p1 omnipotent char", !23, i64 0}
!39 = !{!"p1 _ZTS10Gia_Obj_t_", !23, i64 0}
!40 = !{!"p1 _ZTS10Vec_Int_t_", !23, i64 0}
!41 = !{!"p1 _ZTS10Gia_Rpr_t_", !23, i64 0}
!42 = !{!"p1 _ZTS10Vec_Wec_t_", !23, i64 0}
!43 = !{!"p1 _ZTS10Vec_Str_t_", !23, i64 0}
!44 = !{!"p1 _ZTS10Abc_Cex_t_", !23, i64 0}
!45 = !{!"p1 _ZTS10Vec_Ptr_t_", !23, i64 0}
!46 = !{!"p1 _ZTS10Gia_Plc_t_", !23, i64 0}
!47 = !{!"p1 _ZTS10Vec_Flt_t_", !23, i64 0}
!48 = !{!"float", !19, i64 0}
!49 = !{!"p1 _ZTS10Vec_Vec_t_", !23, i64 0}
!50 = !{!"p1 _ZTS10Vec_Wrd_t_", !23, i64 0}
!51 = !{!"p1 _ZTS10Vec_Bit_t_", !23, i64 0}
!52 = !{!"p1 _ZTS10Gia_Dat_t_", !23, i64 0}
!53 = !{!"Gia_Man_t_", !38, i64 0, !38, i64 8, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !39, i64 32, !29, i64 40, !20, i64 48, !20, i64 52, !20, i64 56, !40, i64 64, !40, i64 72, !30, i64 80, !30, i64 96, !20, i64 112, !20, i64 116, !20, i64 120, !30, i64 128, !29, i64 144, !29, i64 152, !40, i64 160, !20, i64 168, !20, i64 172, !20, i64 176, !20, i64 180, !29, i64 184, !41, i64 192, !29, i64 200, !29, i64 208, !29, i64 216, !20, i64 224, !20, i64 228, !29, i64 232, !20, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !42, i64 272, !42, i64 280, !40, i64 288, !23, i64 296, !40, i64 304, !40, i64 312, !43, i64 320, !38, i64 328, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !44, i64 376, !44, i64 384, !45, i64 392, !30, i64 400, !30, i64 416, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !40, i64 480, !40, i64 488, !40, i64 496, !40, i64 504, !40, i64 512, !38, i64 520, !46, i64 528, !24, i64 536, !47, i64 544, !47, i64 552, !40, i64 560, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !20, i64 600, !48, i64 604, !48, i64 608, !40, i64 616, !29, i64 624, !20, i64 632, !45, i64 640, !45, i64 648, !45, i64 656, !40, i64 664, !40, i64 672, !40, i64 680, !40, i64 688, !40, i64 696, !40, i64 704, !40, i64 712, !40, i64 720, !40, i64 728, !49, i64 736, !47, i64 744, !23, i64 752, !23, i64 760, !23, i64 768, !32, i64 776, !32, i64 784, !23, i64 792, !29, i64 800, !20, i64 808, !20, i64 812, !20, i64 816, !20, i64 820, !20, i64 824, !20, i64 828, !20, i64 832, !20, i64 836, !20, i64 840, !20, i64 844, !20, i64 848, !20, i64 852, !50, i64 856, !50, i64 864, !50, i64 872, !50, i64 880, !40, i64 888, !40, i64 896, !40, i64 904, !51, i64 912, !20, i64 920, !20, i64 924, !20, i64 928, !40, i64 936, !20, i64 944, !20, i64 948, !40, i64 952, !40, i64 960, !45, i64 968, !50, i64 976, !40, i64 984, !40, i64 992, !20, i64 1000, !20, i64 1004, !50, i64 1008, !30, i64 1016, !30, i64 1032, !30, i64 1048, !52, i64 1064, !43, i64 1072, !43, i64 1080, !20, i64 1088, !20, i64 1092, !20, i64 1096, !20, i64 1100, !43, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !45, i64 1136}
!54 = !{!53, !40, i64 64}
!55 = !{!30, !20, i64 4}
!56 = !{!30, !29, i64 8}
!57 = !{!20, !20, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!53, !20, i64 24}
!60 = !{!53, !39, i64 32}
!61 = !{!"Gia_Obj_t_", !20, i64 0, !20, i64 3, !20, i64 3, !20, i64 3, !20, i64 4, !20, i64 7, !20, i64 7, !20, i64 7, !20, i64 8}
!62 = !{!61, !20, i64 8}
!63 = !{!53, !29, i64 144}
!64 = !{!40, !40, i64 0}
!65 = !{!53, !29, i64 208}
!66 = !{!"timespec", !32, i64 0, !32, i64 8}
!67 = !{!66, !32, i64 0}
!68 = !{!66, !32, i64 8}
!69 = !{!33, !32, i64 120}
!70 = !{!33, !25, i64 8}
!71 = !{!33, !20, i64 104}
!72 = !{!28, !27, i64 8}
!73 = !{!28, !20, i64 0}
!74 = !{!30, !20, i64 0}
!75 = !{!"p1 float", !23, i64 0}
!76 = !{!"Jf_Par_t_", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36, !20, i64 40, !20, i64 44, !20, i64 48, !20, i64 52, !20, i64 56, !20, i64 60, !20, i64 64, !20, i64 68, !20, i64 72, !20, i64 76, !20, i64 80, !20, i64 84, !20, i64 88, !20, i64 92, !20, i64 96, !20, i64 100, !20, i64 104, !20, i64 108, !20, i64 112, !20, i64 116, !20, i64 120, !20, i64 124, !20, i64 128, !20, i64 132, !20, i64 136, !20, i64 140, !20, i64 144, !20, i64 148, !20, i64 152, !20, i64 156, !20, i64 160, !32, i64 168, !32, i64 176, !32, i64 184, !32, i64 192, !32, i64 200, !32, i64 208, !32, i64 216, !32, i64 224, !20, i64 232, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !75, i64 256, !75, i64 264, !38, i64 272}
!77 = !{!76, !20, i64 88}
!78 = !{!"p2 long", !27, i64 0}
!79 = !{!"Vec_Mem_t_", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !78, i64 24, !40, i64 32, !40, i64 40}
!80 = !{!79, !20, i64 0}
!81 = !{!79, !20, i64 8}
!82 = !{!79, !20, i64 12}
!83 = !{!79, !20, i64 20}
!84 = !{!79, !40, i64 32}
!85 = !{!79, !40, i64 40}
!86 = !{!33, !26, i64 16}
!87 = !{!28, !20, i64 4}
!88 = !{!23, !23, i64 0}
!89 = !{!79, !78, i64 24}
!90 = !{!"p1 long", !23, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!76, !20, i64 0}
!93 = !{!76, !20, i64 4}
!94 = !{!"Of_Cut_t_", !32, i64 0, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 19, !19, i64 20}
!95 = !{!94, !20, i64 8}
!96 = !{!94, !20, i64 12}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!94, !32, i64 0}
!100 = !{!"p1 _ZTS9Of_Cut_t_", !23, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!32, !32, i64 0}
!103 = !{!19, !19, i64 0}
!104 = !{!76, !20, i64 28}
!105 = !{!"double", !19, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!76, !20, i64 136}
!109 = !{!76, !32, i64 168}
!110 = !{!76, !32, i64 176}
!111 = !{!76, !32, i64 184}
!112 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!76, !20, i64 12}
!115 = !{!76, !20, i64 16}
!116 = !{!76, !20, i64 84}
!117 = !{!79, !20, i64 4}
!118 = !{!79, !20, i64 16}
!119 = !{!53, !40, i64 72}
!120 = !{!36, !20, i64 8}
!121 = !{!76, !20, i64 40}
!122 = !{!36, !20, i64 20}
!123 = !{!36, !20, i64 0}
!124 = !{!33, !20, i64 108}
!125 = !{!36, !20, i64 16}
!126 = !{!76, !20, i64 44}
!127 = !{!76, !20, i64 48}
!128 = !{!36, !20, i64 12}
!129 = !{!36, !20, i64 4}
!130 = !{!53, !40, i64 304}
!131 = distinct !{!131, !58}
!132 = distinct !{!132, !58}
!133 = distinct !{!133, !58}
!134 = distinct !{!134, !58}
!135 = distinct !{!135, !58, !97, !98}
!136 = distinct !{!136, !58}
!137 = distinct !{!137, !58, !97, !98}
!138 = distinct !{!138, !58, !98, !97}
!139 = distinct !{!139, !58, !97, !98}
!140 = distinct !{!140, !58, !97, !98}
!141 = distinct !{!141, !58}
!142 = distinct !{!142, !58}
!143 = distinct !{!143, !58, !97, !98}
!144 = distinct !{!144, !58}
!145 = distinct !{!145, !58}
!146 = distinct !{!146, !58}
!147 = distinct !{!147, !58}
!148 = distinct !{!148, !58, !97, !98}
!149 = distinct !{!149, !58}
!150 = distinct !{!150, !58}
!151 = distinct !{!151, !58}
!152 = distinct !{!152, !58}
!153 = distinct !{!153, !58, !97, !98}
!154 = distinct !{!154, !58}
!155 = distinct !{!155, !58}
!156 = distinct !{!156, !58}
!157 = distinct !{!157, !107}
!158 = distinct !{!158, !58}
!159 = !{i64 0, i64 8, !102, i64 8, i64 4, !57, i64 12, i64 4, !57, i64 16, i64 4, !103, i64 20, i64 28, !103}
!160 = !{!53, !29, i64 40}
!161 = distinct !{!161, !58}
!162 = distinct !{!162, !58, !97, !98}
!163 = distinct !{!163, !58}
!164 = distinct !{!164, !58}
!165 = distinct !{!165, !58, !98, !97}
!166 = distinct !{!166, !58, !97, !98}
!167 = distinct !{!167, !58}
!168 = distinct !{!168, !58}
!169 = distinct !{!169, !58}
!170 = distinct !{!170, !58}
!171 = distinct !{!171, !58}
!172 = distinct !{!172, !58}
!173 = distinct !{!173, !107}
!174 = distinct !{!174, !58}
!175 = distinct !{!175, !58}
!176 = distinct !{!176, !107}
!177 = distinct !{!177, !58}
!178 = distinct !{!178, !58}
!179 = distinct !{!179, !58}
!180 = distinct !{!180, !58}
!181 = distinct !{!181, !107}
!182 = distinct !{!182, !58}
!183 = distinct !{!183, !58}
!184 = distinct !{!184, !107}
!185 = distinct !{!185, !107}
!186 = distinct !{!186, !58}
!187 = distinct !{!187, !58}
!188 = distinct !{!188, !58}
!189 = distinct !{!189, !58, !98, !97}
!190 = distinct !{!190, !58, !97, !98}
!191 = distinct !{!191, !107}
!192 = distinct !{!192, !58, !97, !98}
!193 = distinct !{!193, !58, !98, !97}
!194 = distinct !{!194, !58, !97, !98}
!195 = distinct !{!195, !107}
!196 = distinct !{!196, !58, !97, !98}
!197 = distinct !{!197, !58}
!198 = distinct !{!198, !107}
!199 = distinct !{!199, !58}
!200 = distinct !{!200, !58}
!201 = distinct !{!201, !58}
!202 = distinct !{!202, !58}
!203 = distinct !{!203, !58}
!204 = distinct !{!204, !107}
!205 = distinct !{!205, !58}
!206 = distinct !{!206, !58}
!207 = distinct !{!207, !58}
!208 = distinct !{!208, !58}
!209 = distinct !{!209, !58}
!210 = distinct !{!210, !58}
!211 = distinct !{!211, !58}
!212 = distinct !{!212, !58}
!213 = distinct !{!213, !58, !98, !97}
!214 = distinct !{!214, !58, !97, !98}
!215 = distinct !{!215, !58}
!216 = distinct !{!216, !58}
!217 = !{!"p2 int", !27, i64 0}
!218 = !{!"Sat_Mem_t_", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !20, i64 32, !20, i64 36, !20, i64 40, !20, i64 44, !217, i64 48}
!219 = !{!"p1 _ZTS8clause_t", !23, i64 0}
!220 = !{!"p1 _ZTS6veci_t", !23, i64 0}
!221 = !{!"veci_t", !20, i64 0, !20, i64 4, !29, i64 8}
!222 = !{!"stats_t", !20, i64 0, !20, i64 4, !20, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64}
!223 = !{!"p1 double", !23, i64 0}
!224 = !{!"sat_solver_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !218, i64 16, !20, i64 72, !20, i64 76, !219, i64 80, !220, i64 88, !20, i64 96, !20, i64 100, !20, i64 104, !20, i64 108, !20, i64 112, !32, i64 120, !32, i64 128, !32, i64 136, !90, i64 144, !90, i64 152, !20, i64 160, !20, i64 164, !221, i64 168, !38, i64 184, !20, i64 192, !29, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !29, i64 240, !29, i64 248, !29, i64 256, !221, i64 264, !221, i64 280, !221, i64 296, !221, i64 312, !29, i64 328, !221, i64 336, !20, i64 352, !20, i64 356, !20, i64 360, !105, i64 368, !105, i64 376, !20, i64 384, !20, i64 388, !20, i64 392, !222, i64 400, !20, i64 472, !20, i64 476, !20, i64 480, !20, i64 484, !20, i64 488, !32, i64 496, !32, i64 504, !32, i64 512, !221, i64 520, !223, i64 536, !20, i64 544, !20, i64 548, !20, i64 552, !221, i64 560, !221, i64 576, !20, i64 592, !20, i64 596, !20, i64 600, !29, i64 608, !23, i64 616, !20, i64 624, !112, i64 632, !20, i64 640, !20, i64 644, !221, i64 648, !221, i64 664, !221, i64 680, !23, i64 696, !23, i64 704, !20, i64 712, !23, i64 720}
!225 = !{!224, !20, i64 0}
!226 = !{!224, !38, i64 216}
!227 = !{!224, !20, i64 404}
!228 = !{!224, !29, i64 328}
!229 = distinct !{!229, !58}
!230 = distinct !{!230, !58}
!231 = !{!76, !20, i64 52}
!232 = !{!76, !20, i64 56}
!233 = !{!76, !20, i64 72}
!234 = !{!76, !20, i64 116}
!235 = !{!76, !20, i64 140}
!236 = !{!76, !20, i64 144}
!237 = !{!76, !20, i64 148}
!238 = !{!76, !48, i64 244}
!239 = distinct !{!239, !58}
!240 = distinct !{!240, !58}
!241 = distinct !{!241, !58}
!242 = !{!53, !40, i64 264}
!243 = distinct !{!243, !58}
!244 = distinct !{!244, !58, !252}
!245 = distinct !{!245, !58, !252}
!246 = distinct !{!246, !58}
!247 = !{!76, !20, i64 24}
!248 = !{!53, !47, i64 544}
!249 = !{!"Vec_Flt_t_", !20, i64 0, !20, i64 4, !75, i64 8}
!250 = !{!249, !75, i64 8}
!251 = !{!48, !48, i64 0}
!252 = !{!"llvm.loop.peeled.count", i32 1}
!253 = distinct !{!253, !58, !98}
!254 = distinct !{!254, !107}
!255 = distinct !{!255, !58}
!256 = distinct !{!256, !58}
!257 = distinct !{!257, !58, !98}
!258 = distinct !{!258, !107}
!259 = distinct !{!259, !58}
!260 = distinct !{!260, i1 false, !"vprintf"}
!261 = distinct !{!261, !260, !"vprintf: argument 0"}
!262 = distinct !{null}
!263 = !{!261}
end_hunk_0
