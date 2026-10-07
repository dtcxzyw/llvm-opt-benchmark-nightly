Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/format?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@FLAC__format_cuesheet_is_legal:bb.a
bb.o:                                             ; preds = %bb.n
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge.split.us.us, label %bb.n, !llvm.loop !38

._crit_edge.split.us.us:                          ; preds = %bb.o, %.thread171, %bb.m
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %.loopexit, label %.split102.us.split, !llvm.loop !39

.split102:                                        ; preds = %.split102.preheader, %._crit_edge.split
  %indvars.iv132 = phi i64 [ 0, %.split102.preheader ], [ %indvars.iv.next133, %._crit_edge.split ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv132 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !46  ; 3 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.split104.us, label %bb.p

.split104.us:                                     ; preds = %.split102, %.split102.us.split
  %.not86 = icmp eq ptr %2, null
  br i1 %.not86, label %.loopexit, label %.loopexit.sink.split

bb.p:                                             ; preds = %.split102
  %i.au = icmp ult i8 %i.as, 100
  %i.av = icmp eq i8 %i.as, -86
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.thread92, label %.split106

.split106:                                        ; preds = %bb.p
  %.not76 = icmp eq ptr %2, null
  br i1 %.not76, label %.loopexit, label %.loopexit.sink.split

.thread92:                                        ; preds = %bb.p
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !51
  %i.ax = urem i64 %i.aw, 588
  %.not77 = icmp eq i64 %i.ax, 0
  br i1 %.not77, label %bb.r, label %.split108

.split108:                                        ; preds = %.thread92
  %.not85 = icmp eq ptr %2, null
  br i1 %.not85, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.split108
  %i.ay = trunc nuw i64 %indvars.iv132 to i32
  %i.az = icmp eq i32 %i.m, %i.ay
  %.str.48..str.49 = select i1 %i.az, ptr @.str.48, ptr @.str.49
  br label %.loopexit.sink.split

bb.r:                                             ; preds = %.thread92
  %i.ba = icmp samesign ult i64 %indvars.iv132, %i.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 23
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !47  ; 3 uses
  %i.bd = icmp eq i8 %i.bc, 0                     ; 2 uses
  br i1 %i.ba, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %i.bd, label %.split110.us, label %bb.t

.split110.us:                                     ; preds = %bb.s, %bb.k
  %.not84 = icmp eq ptr %2, null
  br i1 %.not84, label %.loopexit, label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !50
  %i.bi = icmp ugt i8 %i.bh, 1
  br i1 %i.bi, label %.split112.us, label %.lr.ph

.split112.us:                                     ; preds = %bb.t, %bb.l
  %.not83 = icmp eq ptr %2, null
  br i1 %.not83, label %.loopexit, label %.loopexit.sink.split

bb.u:                                             ; preds = %bb.r
  br i1 %i.bd, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48 ; 2 uses
  %wide.trip.count = zext i8 %i.bc to i64
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !52
  %i.bm = urem i64 %i.bl, 588
  %.not78.peel = icmp eq i64 %i.bm, 0
  br i1 %.not78.peel, label %bb.v, label %.loopexit129

bb.v:                                             ; preds = %.lr.ph
  %exitcond.peel.not = icmp eq i8 %i.bc, 1
  br i1 %exitcond.peel.not, label %._crit_edge.split, label %.peel.next

.peel.next:                                       ; preds = %bb.v, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 1, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !52
  %i.bp = urem i64 %i.bo, 588
  %.not78 = icmp eq i64 %i.bp, 0
  br i1 %.not78, label %bb.w, label %.loopexit129

.loopexit129:                                     ; preds = %.lr.ph, %.peel.next
  %.not82 = icmp eq ptr %2, null
  br i1 %.not82, label %.loopexit, label %.loopexit.sink.split

bb.w:                                             ; preds = %.peel.next
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !50
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr i8, ptr %i.bn, i64 -8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !50
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bv, 1
  %.not80 = icmp eq i32 %i.bw, %i.bs
  br i1 %.not80, label %bb.x, label %.split.us

.split.us:                                        ; preds = %bb.w, %bb.n
  %.not81 = icmp eq ptr %2, null
  br i1 %.not81, label %.loopexit, label %.loopexit.sink.split

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.peel.next, !llvm.loop !40

._crit_edge.split:                                ; preds = %bb.x, %bb.v, %bb.u
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.loopexit, label %.split102, !llvm.loop !39

.loopexit.sink.split:                             ; preds = %.split.us, %.loopexit129, %.split112.us, %.split110.us, %bb.q, %.split106, %.split104.us, %bb.i, %bb.g, %bb.e, %bb.c
  %.str.53.sink = phi ptr [ @.str.52, %.loopexit129 ], [ @.str.51, %.split112.us ], [ @.str.50, %.split110.us ], [ @.str.42, %bb.c ], [ @.str.47, %.split106 ], [ %.str.48..str.49, %bb.q ], [ @.str.46, %.split104.us ], [ @.str.45, %bb.i ], [ @.str.44, %bb.g ], [ @.str.43, %bb.e ], [ @.str.53, %.split.us ]
  store ptr %.str.53.sink, ptr %2, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.loopexit.sink.split, %.split.us, %.loopexit129, %.split112.us, %.split110.us, %.split108, %.split106, %.split104.us, %bb.i, %bb.g, %bb.e, %bb.c
  %.069 = phi i32 [ 0, %.split.us ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %.split106 ], [ 0, %.split108 ], [ 0, %.split110.us ], [ 0, %.split112.us ], [ 0, %.loopexit129 ], [ 0, %.split104.us ], [ 0, %.loopexit.sink.split ], [ 1, %._crit_edge.split.us.us ], [ 1, %._crit_edge.split ]
  ret i32 %.069
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @FLAC__format_picture_is_legal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17    ; 2 uses
  %.not30 = icmp eq i8 %i.c, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.01731, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17    ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %.01731 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.g = add i8 %i.f, -127
  %or.cond = icmp ult i8 %i.g, -95
  br i1 %or.cond, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %.thread, label %.thread.sink.split

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %.not2532 = icmp eq i8 %i.j, 0
  br i1 %.not2532, label %.thread, label %.lr.ph35

.lr.ph35:                                         ; preds = %._crit_edge, %bb.e
  %.01633 = phi ptr [ %i.m, %bb.e ], [ %i.i, %._crit_edge ] ; 2 uses
  %i.k = tail call fastcc i32 @utf8len_(ptr noundef nonnull %.01633) ; 2 uses
  %.not27 = icmp eq i32 %i.k, 0
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph35
  %.not26 = icmp eq ptr %1, null
  br i1 %.not26, label %.thread, label %.thread.sink.split

bb.e:                                             ; preds = %.lr.ph35
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.01633, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %.not25 = icmp eq i8 %i.n, 0
  br i1 %.not25, label %.thread, label %.lr.ph35, !llvm.loop !54

.thread.sink.split:                               ; preds = %bb.d, %bb.c
  %.str.55.sink = phi ptr [ @.str.54, %bb.c ], [ @.str.55, %bb.d ]
  store ptr %.str.55.sink, ptr %1, align 8, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.sink.split, %._crit_edge, %bb.d, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 1, %._crit_edge ], [ 0, %.thread.sink.split ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(none) uwtable
define hidden range(i32 0, 16) i32 @FLAC__format_get_max_rice_partition_order_from_blocksize(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %.not6 = trunc i32 %0 to i1
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.a, %.lr.ph ], [ 0, %bb.a ]
  %.057 = phi i32 [ %i.b, %.lr.ph ], [ %0, %bb.a ]
  %i.a = add i32 %.08, 1                          ; 2 uses
  %i.b = lshr exact i32 %.057, 1                  ; 2 uses
  %.not = trunc i32 %i.b to i1
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !58

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.a, i32 15)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(none) uwtable
define hidden i32 @FLAC__format_get_max_rice_partition_order_from_blocksize_limited_max_and_predictor_order(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 4 uses
  %.not = icmp eq i32 %.0, 0
  %i.a = lshr i32 %1, %.0
  %.not7 = icmp ugt i32 %i.a, %2
  %or.cond = select i1 %.not, i1 true, i1 %.not7
  %i.b = add i32 %.0, -1
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !59

.critedge:                                        ; preds = %bb.b
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @FLAC__format_entropy_coding_method_partitioned_rice_contents_init(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @FLAC__format_entropy_coding_method_partitioned_rice_contents_clear(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = icmp ult i32 %i.b, %1
  %.pre = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.d = icmp eq ptr %.pre, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = shl nuw i32 1, %1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 3 uses
  %i.k = tail call ptr @realloc(ptr noundef %.pre, i64 noundef range(i64 -8589934592, 8589934589) %i.j) #17 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %safe_realloc_.exit.thread, label %bb.d

safe_realloc_.exit.thread:                        ; preds = %bb.c
  tail call void @free(ptr noundef %.pre) #16
  store ptr null, ptr %0, align 8, !tbaa !22
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %i.o = tail call ptr @realloc(ptr noundef %i.n, i64 noundef range(i64 -8589934592, 8589934589) %i.j) #17 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %safe_realloc_.exit15.thread, label %bb.e

safe_realloc_.exit15.thread:                      ; preds = %bb.d
  tail call void @free(ptr noundef %i.n) #16
  store ptr null, ptr %i.m, align 8, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 noundef 0, i64 noundef range(i64 -8589934592, 8589934589) %i.j, i1 noundef false) #16
  store i32 %1, ptr %i.a, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %safe_realloc_.exit15.thread, %safe_realloc_.exit.thread, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %safe_realloc_.exit15.thread ], [ 0, %safe_realloc_.exit.thread ], [ 1, %bb.e ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"", !5, i64 0, !8, i64 8}
!10 = !{!9, !5, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!"long", !4, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !12, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = !{!4, !4, i64 0}
!18 = !{!"p1 omnipotent char", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 int", !8, i64 0}
!21 = !{!"", !20, i64 0, !20, i64 8, !5, i64 16}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !20, i64 8}
!24 = distinct !{!24, !15, !16}
!25 = distinct !{!25, !30}
!26 = distinct !{!26, !15, !16}
!27 = distinct !{!27, !15}
!28 = !{!13, !12, i64 8}
!29 = !{!13, !5, i64 16}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!12, !12, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 4, !32}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15, !16}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15, !16}
!41 = !{!"", !4, i64 0, !12, i64 136, !5, i64 144, !5, i64 148, !8, i64 152}
!42 = !{!41, !12, i64 136}
!43 = !{!41, !5, i64 148}
!44 = !{!41, !8, i64 152}
!45 = !{!"", !12, i64 0, !4, i64 8, !4, i64 9, !5, i64 22, !5, i64 22, !4, i64 23, !8, i64 24}
!46 = !{!45, !4, i64 8}
end_hunk_0
