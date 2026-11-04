Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ssd0303?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ssd0303_send:bb.a
    i8 109, label %bb.l
    i8 110, label %bb.l
    i8 111, label %bb.l
    i8 112, label %bb.l
    i8 113, label %bb.l
    i8 114, label %bb.l
    i8 115, label %bb.l
    i8 116, label %bb.l
    i8 117, label %bb.l
    i8 118, label %bb.l
    i8 119, label %bb.l
    i8 120, label %bb.l
    i8 121, label %bb.l
    i8 122, label %bb.l
    i8 123, label %bb.l
    i8 124, label %bb.l
    i8 125, label %bb.l
    i8 126, label %bb.l
    i8 127, label %bb.l
    i8 -127, label %bb.m
    i8 -96, label %bb.n
    i8 -95, label %bb.o
    i8 -92, label %bb.p
    i8 -91, label %bb.q
    i8 -90, label %bb.r
    i8 -89, label %bb.s
    i8 -88, label %bb.t
    i8 -83, label %bb.u
    i8 -82, label %bb.v
    i8 -81, label %bb.w
    i8 -80, label %bb.x
    i8 -79, label %bb.x
    i8 -78, label %bb.x
    i8 -77, label %bb.x
    i8 -76, label %bb.x
    i8 -75, label %bb.x
    i8 -74, label %bb.x
    i8 -73, label %bb.x
    i8 -72, label %bb.x
    i8 -71, label %bb.x
    i8 -70, label %bb.x
    i8 -69, label %bb.x
    i8 -68, label %bb.x
    i8 -67, label %bb.x
    i8 -66, label %bb.x
    i8 -65, label %bb.x
    i8 -64, label %bb.af
    i8 -63, label %bb.af
    i8 -62, label %bb.af
    i8 -61, label %bb.af
    i8 -60, label %bb.af
    i8 -59, label %bb.af
    i8 -58, label %bb.af
    i8 -57, label %bb.af
    i8 -56, label %bb.af
    i8 -45, label %bb.y
    i8 -43, label %bb.z
    i8 -40, label %bb.aa
    i8 -39, label %bb.ab
    i8 -38, label %bb.ac
    i8 -37, label %bb.ad
    i8 -29, label %bb.af
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 172 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 240
  %i.z = or disjoint i32 %i.y, %i.v
  store i32 %i.z, ptr %i.w, align 4
  br label %bb.af

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 172 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 15
  %i.ad = shl nuw nsw i32 %i.v, 4
  %i.ae = and i32 %i.ad, 240
  %i.af = or disjoint i32 %i.ac, %i.ae
  store i32 %i.af, ptr %i.aa, align 4
  br label %bb.af

bb.l:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i32 0, ptr %i.ag, align 8
  br label %bb.af

bb.m:                                             ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.n:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i32 0, ptr %i.ah, align 4
  br label %bb.af

bb.o:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i32 1, ptr %i.ai, align 4
  br label %bb.af

bb.p:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.aj, align 8
  br label %bb.af

bb.q:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 1, ptr %i.ak, align 8
  br label %bb.af

bb.r:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 0, ptr %i.al, align 8
  br label %bb.af

bb.s:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 1, ptr %i.am, align 8
  br label %bb.af

bb.t:                                             ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.u:                                             ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.v:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 0, ptr %i.an, align 4
  br label %bb.af

bb.w:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 1, ptr %i.ao, align 4
  br label %bb.af

bb.x:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.ap = and i32 %i.v, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 %i.ap, ptr %i.aq, align 8
  br label %bb.af

bb.y:                                             ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.z:                                             ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.aa:                                            ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.ab:                                            ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.ac:                                            ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.ad:                                            ; preds = %bb.i
  store i32 1, ptr %i.t, align 4
  br label %bb.af

bb.ae:                                            ; preds = %bb.i
  %i.ar = load ptr, ptr @stderr, align 8
  %i.as = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ar, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.v) #6 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.h, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.g, %bb.c, %bb.e, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_graphic_console_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_console_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @ssd0303_invalidate_display(ptr nofree noundef writeonly captures(none) initializes((196, 200)) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 1, ptr %i.a, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @ssd0303_update_display(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @qemu_console_surface(ptr noundef %i.c) #6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !9
  %.val2.i = load ptr, ptr %i.d, align 8
  %i.g = tail call i32 @pixman_image_get_format(ptr noundef %.val2.i) #6
  %i.h = lshr i32 %i.g, 24
  %.val.i = load ptr, ptr %i.d, align 8
  %i.i = tail call i32 @pixman_image_get_format(ptr noundef %.val.i) #6
  %i.j = lshr i32 %i.i, 22
  %i.k = and i32 %i.j, 3
  %i.l = shl nuw nsw i32 %i.h, %i.k
  switch i32 %i.l, label %bb.e [
    i32 0, label %bb.l
    i32 15, label %bb.f
    i32 16, label %bb.f
    i32 24, label %bb.c
    i32 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @stderr, align 8
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 16, %bb.d ], [ 8, %bb.b ], [ 12, %bb.c ], [ 8, %bb.b ] ; 2 uses
  %i.o = zext nneg i32 %.0 to i64                 ; 7 uses
  %i.p = call ptr @__memset_chk(ptr noundef nonnull %i.a, i32 noundef 255, i64 noundef range(i64 8, 17) %i.o, i64 noundef 32) #6 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.q, i8 noundef 0, i64 noundef range(i64 8, 17) %i.o, i1 noundef false) #6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load i32, ptr %i.r, align 8
  %.not45 = icmp eq i32 %i.s, 0
  br i1 %.not45, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load i32, ptr %i.t, align 8
  %.not46 = icmp eq i32 %i.u, 0                   ; 2 uses
  %spec.select = select i1 %.not46, ptr %i.q, ptr %i.a
  %spec.select58 = select i1 %.not46, ptr %i.a, ptr %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.g ], [ %i.a, %bb.f ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %spec.select58, %bb.g ], [ %i.a, %bb.f ] ; 2 uses
  %.val = load ptr, ptr %i.d, align 8
  %i.v = call ptr @pixman_image_get_data(ptr noundef %.val) #6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = mul nuw nsw i32 %.0, 96
  %i.y = zext nneg i32 %i.x to i64                ; 7 uses
  %i.z = sub nsw i64 0, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.preheader
  %.03953 = phi i32 [ 0, %bb.h ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.04252 = phi ptr [ %i.v, %bb.h ], [ %i.ax, %.preheader.preheader ]
  %i.aa = load i32, ptr %i.w, align 8
  %i.ab = add i32 %i.aa, %.03953                  ; 2 uses
  %i.ac = lshr i32 %i.ab, 3
  %i.ad = and i32 %i.ac, 7
  %i.ae = mul nuw nsw i32 %i.ad, 132
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 244
  %i.ai = and i32 %i.ab, 7
  %1 = shl nuw nsw i32 1, %i.ai                   ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.04049 = phi i32 [ 0, %bb.i ], [ %i.at, %bb.j ]
  %.04148 = phi ptr [ %i.ah, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  %.14347 = phi ptr [ %.04252, %bb.i ], [ %i.ar, %bb.j ] ; 2 uses
  %i.aj = load i8, ptr %.04148, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = and i32 %1, %i.ak
  %.sroa.idx.not = icmp eq i32 %i.al, 0
  %.sroa.speculated = select i1 %.sroa.idx.not, ptr %.sroa.0.0, ptr %.sroa.7.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.14347, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.speculated, i64 noundef range(i64 8, 1537) %i.o, i1 noundef false) #6
  %i.am = getelementptr inbounds nuw i8, ptr %.14347, i64 %i.o ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04148, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = and i32 %1, %i.ap
  %.sroa.idx.not.1 = icmp eq i32 %i.aq, 0
  %.sroa.speculated.1 = select i1 %.sroa.idx.not.1, ptr %.sroa.0.0, ptr %.sroa.7.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.speculated.1, i64 noundef range(i64 8, 1537) %i.o, i1 noundef false) #6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.o ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04148, i64 2
  %i.at = add nuw nsw i32 %.04049, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.at, 96
  br i1 %exitcond.not.1, label %.preheader.preheader, label %bb.j, !llvm.loop !7

.preheader.preheader:                             ; preds = %bb.j
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i64 noundef range(i64 8, 1537) %i.y, i1 noundef false) #6
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.y ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i64 noundef range(i64 8, 1537) %i.y, i1 noundef false) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.y ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %i.av, i64 noundef range(i64 8, 1537) %i.y, i1 noundef false) #6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.y
  %i.ay = add nuw nsw i32 %.03953, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.ay, 16
  br i1 %exitcond56.not, label %bb.k, label %bb.i, !llvm.loop !8

bb.k:                                             ; preds = %.preheader.preheader
  store i32 0, ptr %i.e, align 4
  %i.az = load ptr, ptr %i.b, align 8
  call void @qemu_console_update(ptr noundef %i.az, i32 noundef 0, i32 noundef 0, i32 noundef 384, i32 noundef 64) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i1 true
}

declare ptr @qemu_console_surface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @qemu_console_update(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @pixman_image_get_format(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @pixman_image_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !10}
!8 = distinct !{!8, !10}
!9 = !{!"auto-init"}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
