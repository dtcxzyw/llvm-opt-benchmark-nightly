Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs?download=true
inline.NumInlined: 60
inline.NumDeleted: 30
begin_hunk_0_@cbs_clone_unit_content:bb.a

.preheader.i22:                                   ; preds = %bb.i
  %i.aa = icmp sgt i32 %i.af, 0
  br i1 %i.aa, label %.lr.ph8.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i19
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i21, %bb.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i20
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !85
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %i.af = load i32, ptr %i.w, align 8, !tbaa !65  ; 3 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next.i21, %i.ag
  br i1 %i.ah, label %bb.i, label %.preheader.i22, !llvm.loop !122

.lr.ph8.i:                                        ; preds = %.preheader.i22, %bb.n
  %i.ai = phi i32 [ %i.as, %bb.n ], [ %i.af, %.preheader.i22 ]
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %bb.n ], [ 0, %.preheader.i22 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv10.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !65 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val17, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !79 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !73
  %.not40.i = icmp eq ptr %i.aq, null
  %.not41.i = icmp eq ptr %i.an, null             ; 2 uses
  br i1 %.not40.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph8.i
  br i1 %.not41.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef 958) #9
  tail call void @abort() #10
  unreachable

bb.l:                                             ; preds = %.lr.ph8.i
  br i1 %.not41.i, label %select.unfold.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call ptr @av_buffer_ref(ptr noundef nonnull %i.an) #9 ; 2 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !79
  %.not43.i = icmp eq ptr %i.ar, null
  br i1 %.not43.i, label %select.unfold.i, label %._crit_edge13.i

._crit_edge13.i:                                  ; preds = %bb.m
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !65
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge13.i, %bb.j
  %i.as = phi i32 [ %.pre.i, %._crit_edge13.i ], [ %i.ai, %bb.j ] ; 2 uses
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next11.i, %i.at
  br i1 %i.au, label %.lr.ph8.i, label %._crit_edge.i, !llvm.loop !123

._crit_edge.i:                                    ; preds = %bb.n, %.preheader.i22, %bb.h
  store ptr %i.u, ptr %i.b, align 8, !tbaa !85
  br label %cbs_clone_noncomplex_unit_content.exit

select.unfold.i:                                  ; preds = %bb.m, %bb.l
  %.135.ph.i = phi i32 [ -22, %bb.l ], [ -12, %bb.m ]
  call void @av_refstruct_unref(ptr noundef nonnull %i.a) #9
  br label %cbs_clone_noncomplex_unit_content.exit

cbs_clone_noncomplex_unit_content.exit:           ; preds = %cbs_alloc_content.exit.i, %._crit_edge.i, %select.unfold.i
  %.031.i = phi i32 [ -12, %cbs_alloc_content.exit.i ], [ 0, %._crit_edge.i ], [ %.135.ph.i, %select.unfold.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.r

bb.o:                                             ; preds = %cbs_find_unit_type_desc.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65 ; 2 uses
  %.not16 = icmp eq ptr %i.aw, null
  br i1 %.not16, label %cbs_find_unit_type_desc.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = call i32 %i.aw(ptr noundef nonnull %i.b, ptr noundef %0) #9
  br label %bb.r

bb.q:                                             ; preds = %cbs_find_unit_type_desc.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef 1012) #9
  tail call void @abort() #10
  unreachable

bb.r:                                             ; preds = %bb.p, %cbs_clone_noncomplex_unit_content.exit
  %.0 = phi i32 [ %.031.i, %cbs_clone_noncomplex_unit_content.exit ], [ %i.ax, %bb.p ] ; 2 uses
  %i.ay = icmp slt i32 %.0, 0
  br i1 %i.ay, label %cbs_find_unit_type_desc.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !38
  br label %cbs_find_unit_type_desc.exit.thread

cbs_find_unit_type_desc.exit.thread:              ; preds = %.preheader2.i, %bb.a, %bb.r, %bb.o, %bb.s
  %.013 = phi i32 [ -1163346256, %bb.o ], [ 0, %bb.s ], [ %.0, %bb.r ], [ -38, %bb.a ], [ -38, %.preheader2.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_cbs_make_unit_writable(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 1038) #9
  tail call void @abort() #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @av_refstruct_exclusive(ptr noundef nonnull %i.c) #9
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.i = tail call fastcc i32 @cbs_clone_unit_content(ptr %.val.val, ptr noundef nonnull %1) ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @av_refstruct_unref(ptr noundef nonnull %i.a) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.d ], [ %i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare i32 @av_refstruct_exclusive(ptr noundef) local_unnamed_addr #2

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_cbs_discard_units(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %.016 = add nsw i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.i = and i32 %3, 1
  %.not13 = icmp eq i32 %i.i, 0
  %i.j = zext nneg i32 %.016 to i64               ; 2 uses
  br i1 %.not13, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %ff_cbs_delete_unit.exit.us
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %ff_cbs_delete_unit.exit.us ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv21
  %i.p = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef %i.o, i32 noundef %2) #9
  %.not12.us = icmp eq i32 %i.p, 0
  br i1 %.not12.us, label %ff_cbs_delete_unit.exit.us, label %.split.us

ff_cbs_delete_unit.exit.us:                       ; preds = %.lr.ph.split.us
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, -1
  %i.q = icmp sgt i64 %indvars.iv21, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !124

.lr.ph.split:                                     ; preds = %.lr.ph, %ff_cbs_delete_unit.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %ff_cbs_delete_unit.exit ], [ %i.j, %.lr.ph ] ; 6 uses
  %.0.in17 = phi i32 [ %i.bb, %ff_cbs_delete_unit.exit ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = tail call i32 %i.t(ptr noundef nonnull %0, ptr noundef %i.v, i32 noundef %2) #9
  %.not12 = icmp eq i32 %i.w, 0
  br i1 %.not12, label %ff_cbs_delete_unit.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.x = load i32, ptr %i.e, align 8, !tbaa !35
  %.not14 = icmp sgt i32 %.0.in17, %i.x
  br i1 %.not14, label %bb.d, label %bb.e

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.y = load i32, ptr %i.e, align 8, !tbaa !35
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %ff_cbs_fragment_reset.exit

.lr.ph.i:                                         ; preds = %.split.us, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.split.us ] ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv.i ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ac) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr null, ptr %i.ad, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  tail call void @av_buffer_unref(ptr noundef nonnull %i.ae) #9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !35
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %ff_cbs_fragment_reset.exit, !llvm.loop !0

ff_cbs_fragment_reset.exit:                       ; preds = %.lr.ph.i, %.split.us
  store i32 0, ptr %i.e, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @av_buffer_unref(ptr noundef nonnull %i.aj) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  tail call void @av_freep(ptr noundef nonnull %i.h) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.ak, align 4, !tbaa !39
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef 852) #9
  tail call void @abort() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %indvars.iv ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.an) #9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr null, ptr %i.ao, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  tail call void @av_buffer_unref(ptr noundef nonnull %i.ap) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !35  ; 3 uses
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.e, align 8, !tbaa !35
  %i.at = icmp sgt i32 %i.ar, 1
  br i1 %i.at, label %bb.f, label %ff_cbs_delete_unit.exit

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = sub nsw i32 %i.ar, %.0.in17
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.ay, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.av, ptr nonnull align 8 %i.aw, i64 %i.az, i1 false)
  br label %ff_cbs_delete_unit.exit

ff_cbs_delete_unit.exit:                          ; preds = %bb.f, %bb.e, %.lr.ph.split
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ba = icmp sgt i64 %indvars.iv, 0
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.ba, label %.lr.ph.split, label %.loopexit, !llvm.loop !124

.loopexit:                                        ; preds = %ff_cbs_delete_unit.exit, %ff_cbs_delete_unit.exit.us, %bb.b, %ff_cbs_fragment_reset.exit, %bb.a
  ret void
}

declare ptr @av_buffer_alloc(i64 noundef) local_unnamed_addr #2

declare i32 @av_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_reallocp(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare ptr @av_buffer_create(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_refstruct_alloc_ext_c(i64 noundef, i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cbs_default_free_unit_content(ptr nofree readonly captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @av_buffer_unref(ptr noundef nonnull %i.h) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !65
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !126
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{null}
!3 = distinct !{!3, !13}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"override-stack-alignment", i32 16}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS18CodedBitstreamType", !14, i64 0}
!16 = !{!"p1 _ZTS7AVClass", !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"p1 _ZTS32CodedBitstreamUnitTypeDescriptor", !14, i64 0}
!19 = !{!"CodedBitstreamType", !10, i64 0, !16, i64 8, !17, i64 16, !18, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!20 = !{!"p1 _ZTS21CodedBitstreamContext", !14, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 int", !14, i64 0}
!23 = !{!"p1 omnipotent char", !14, i64 0}
!24 = !{!"CodedBitstreamContext", !14, i64 0, !15, i64 8, !14, i64 16, !22, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !23, i64 72, !17, i64 80}
!25 = !{!24, !14, i64 0}
!26 = !{!24, !15, i64 8}
!27 = !{!24, !14, i64 16}
!28 = !{!19, !16, i64 8}
!29 = !{!24, !22, i64 24}
!30 = !{!10, !10, i64 0}
!31 = !{!24, !14, i64 48}
!32 = !{!"p1 _ZTS11AVBufferRef", !14, i64 0}
!33 = !{!"p1 _ZTS18CodedBitstreamUnit", !14, i64 0}
!34 = !{!"CodedBitstreamFragment", !23, i64 0, !17, i64 8, !17, i64 16, !32, i64 24, !10, i64 32, !10, i64 36, !33, i64 40}
!35 = !{!34, !10, i64 32}
!36 = !{!34, !33, i64 40}
!37 = !{!"CodedBitstreamUnit", !10, i64 0, !23, i64 8, !17, i64 16, !17, i64 24, !32, i64 32, !14, i64 40, !14, i64 48}
!38 = !{!37, !14, i64 40}
!39 = !{!34, !10, i64 36}
!40 = !{!"p1 _ZTS16AVPacketSideData", !14, i64 0}
!41 = !{!"AVRational", !10, i64 0, !10, i64 4}
!42 = !{!"AVChannelLayout", !10, i64 0, !10, i64 4, !9, i64 8, !14, i64 16}
!43 = !{!"AVCodecParameters", !10, i64 0, !10, i64 4, !10, i64 8, !23, i64 16, !10, i64 24, !40, i64 32, !10, i64 40, !10, i64 44, !17, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !41, i64 80, !41, i64 88, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !42, i64 128, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176}
!44 = !{!43, !23, i64 16}
!45 = !{!43, !10, i64 24}
!46 = !{!34, !32, i64 24}
!47 = !{!34, !23, i64 0}
!48 = !{!34, !17, i64 8}
end_hunk_0
