Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cxl-cdat?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cxl_doe_cdat_init:bb.a
  br label %bb.ah

bb.ag:                                            ; preds = %bb.a
  %i.dd = tail call fastcc zeroext i1 @ct3_build_cdat(ptr noundef nonnull %i.d, ptr noundef %1)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %ct3_load_cdat.exit
  %.0 = phi i1 [ %.0.i, %ct3_load_cdat.exit ], [ %i.dd, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @ct3_build_cdat(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__.ct3_build_cdat) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #11 ; 16 uses
  %.not43 = icmp eq ptr %i.c, null
  br i1 %.not43, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @__func__.ct3_build_cdat, ptr noundef nonnull @.str.18) #8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.d(ptr noundef nonnull %i.e, ptr noundef %i.g) #8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %i.h, ptr %i.i, align 8
  %i.j = icmp slt i32 %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.k, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.k, align 8
  %i.l = add nuw i32 %i.h, 1
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = tail call noalias ptr @g_malloc0(i64 noundef %i.n) #11 ; 5 uses
  %.not44 = icmp eq ptr %i.o, null
  br i1 %.not44, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.p = load i32, ptr %i.i, align 8
  %i.q = add i32 %i.p, 1                          ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  %.pre = load i32, ptr %i.c, align 1             ; 2 uses
  br i1 %i.r, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %.preheader
  %i.s = load ptr, ptr %i.e, align 8
  %wide.trip.count72 = zext nneg i32 %i.q to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @__func__.ct3_build_cdat, ptr noundef nonnull @.str.19) #8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph62, %._crit_edge
  %indvars.iv70 = phi i64 [ 1, %.lr.ph62 ], [ %indvars.iv.next71, %._crit_edge ] ; 3 uses
  %i.t = phi i32 [ %.pre, %.lr.ph62 ], [ %i.ac, %._crit_edge ]
  %.03960 = phi i8 [ 0, %.lr.ph62 ], [ %.140.lcssa, %._crit_edge ] ; 4 uses
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv70
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.v, align 8              ; 5 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv70 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.aa, ptr %i.ab, align 8
  %i.ac = add i32 %i.t, %i.aa                     ; 3 uses
  store i32 %i.ac, ptr %i.c, align 1
  %i.ad = load i16, ptr %i.y, align 2             ; 4 uses
  %.not68 = icmp eq i16 %i.ad, 0
  br i1 %.not68, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.i
  %wide.trip.count = zext i16 %i.ad to i64        ; 6 uses
  %min.iters.check = icmp ult i16 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check89 = icmp ult i16 %i.ad, 32
  br i1 %min.iters.check89, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 65504        ; 4 uses
  %i.af = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.03960, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.af, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi90 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <16 x i8>, ptr %i.ag, align 1
  %wide.load91 = load <16 x i8>, ptr %i.ah, align 1
  %i.ai = add <16 x i8> %wide.load, %vec.phi      ; 2 uses
  %i.aj = add <16 x i8> %wide.load91, %vec.phi90  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.aj, %i.ai
  %i.al = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.al, %vec.epilog.iter.check ], [ %.03960, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %wide.trip.count, 65532      ; 3 uses
  %i.am = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi94 = phi <4 x i8> [ %i.am, %vec.epilog.ph ], [ %i.ao, %vec.epilog.vector.body ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %index93
  %wide.load95 = load <4 x i8>, ptr %i.an, align 1
  %i.ao = add <4 x i8> %wide.load95, %vec.phi94   ; 2 uses
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aq = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ao) ; 2 uses
  %cmp.n97 = icmp eq i64 %n.vec92, %wide.trip.count
  br i1 %cmp.n97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec92, %vec.epilog.middle.block ]
  %.14058.ph = phi i8 [ %.03960, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.14058 = phi i8 [ %i.at, %.lr.ph ], [ %.14058.ph, %.lr.ph.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = add i8 %i.as, %.14058                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %.140.lcssa = phi i8 [ %.03960, %bb.i ], [ %i.aq, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %i.at, %.lr.ph ] ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge63, label %bb.i, !llvm.loop !17

._crit_edge63:                                    ; preds = %._crit_edge, %.preheader
  %i.au = phi i32 [ %.pre, %.preheader ], [ %i.ac, %._crit_edge ]
  %.039.lcssa = phi i8 [ 0, %.preheader ], [ %.140.lcssa, %._crit_edge ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 2, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.aw, align 1
  %i.ax = add i32 %i.au, 16                       ; 5 uses
  store i32 %i.ax, ptr %i.c, align 1
  %i.ay = trunc i32 %i.ax to i8
  %i.az = add i8 %.039.lcssa, %i.ay
  %i.ba = lshr i32 %i.ax, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = add i8 %i.az, %i.bb
  %i.bd = lshr i32 %i.ax, 16
  %i.be = trunc i32 %i.bd to i8
  %i.bf = add i8 %i.bc, %i.be
  %i.bg = lshr i32 %i.ax, 24
  %i.bh = trunc nuw i32 %i.bg to i8
  %i.bi = add i8 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %2 = add i8 %i.bi, %i.bk
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bm = load i8, ptr %i.bl, align 1
  %3 = add i8 %2, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bo = load i8, ptr %i.bn, align 1
  %4 = add i8 %3, %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = load i8, ptr %i.bp, align 1
  %5 = add i8 %4, %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = add i8 %5, %i.bs
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %7 = load i8, ptr %6, align 1
  %i.bu = add i8 %i.bt, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %9 = load i8, ptr %8, align 1
  %i.bv = add i8 %i.bu, %9
  %.neg86 = sub i8 -2, %i.bv
  store i8 %.neg86, ptr %i.bj, align 1
  store ptr %i.c, ptr %i.o, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 16, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.bx, align 8
  store ptr %i.o, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge63, %bb.h, %bb.f, %bb.d
  %.057 = phi ptr [ null, %bb.d ], [ %i.c, %bb.f ], [ %i.c, %bb.h ], [ null, %._crit_edge63 ]
  %.041 = phi i1 [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ true, %._crit_edge63 ]
  tail call void @g_free(ptr noundef null) #8
  tail call void @g_free(ptr noundef %.057) #8
  ret i1 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cxl_doe_cdat_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14144
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14112
  %i.e = tail call fastcc zeroext i1 @ct3_build_cdat(ptr noundef nonnull %i.d, ptr noundef %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cxl_doe_cdat_release(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14112
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @free(ptr noundef %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14176
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14136
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 14184
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 14152
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.f(ptr noundef nonnull %i.d, i32 noundef %i.h, ptr noundef %i.j) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 14168
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @g_free(ptr noundef %i.l) #8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #3

declare i32 @g_file_get_contents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @g_error_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @warn_report(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v16i8(<16 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7, !8, !9}
!12 = distinct !{!12, !7, !8}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7, !8, !9}
!15 = distinct !{!15, !7, !8, !9}
!16 = distinct !{!16, !7, !9, !8}
!17 = distinct !{!17, !7}
!18 = !{!"branch_weights", i32 4, i32 28}
!19 = !{i8 0, i8 2}
!20 = !{}
end_hunk_0
