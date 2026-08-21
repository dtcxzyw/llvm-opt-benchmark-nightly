Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/selfmap?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @read_self_maps() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !annotation !7
  %i.i = call i32 @g_file_get_contents(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #5
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #6 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = call ptr @g_strsplit(ptr noundef %i.k, ptr noundef nonnull @.str.1, i32 noundef 0) #5 ; 3 uses
  %i.m = call i32 @g_strv_length(ptr noundef %i.l) #5 ; 2 uses
  %.not63 = icmp eq i32 %i.m, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call ptr @g_strsplit(ptr noundef %i.o, ptr noundef nonnull @.str.2, i32 noundef 6) #5 ; 8 uses
  %i.q = call i32 @g_strv_length(ptr noundef %i.p) #5 ; 2 uses
  %i.r = icmp ugt i32 %i.q, 4
  br i1 %i.r, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 0, ptr %i.b, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 0, ptr %i.d, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i64 0, ptr %i.e, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 0, ptr %i.f, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store i32 0, ptr %i.g, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store ptr null, ptr %i.h, align 8, !annotation !7
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = call i32 @qemu_strtou64(ptr noundef %i.s, ptr noundef nonnull %i.h, i32 noundef 16, ptr noundef nonnull %i.b) #5
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = call i32 @qemu_strtou64(ptr noundef nonnull %i.v, ptr noundef null, i32 noundef 16, ptr noundef nonnull %i.c) #5
  %i.x = or i32 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i32 @qemu_strtou64(ptr noundef %i.z, ptr noundef null, i32 noundef 16, ptr noundef nonnull %i.d) #5
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call i32 @qemu_strtoui(ptr noundef %i.ad, ptr noundef nonnull %i.h, i32 noundef 16, ptr noundef nonnull %i.f) #5
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = call i32 @qemu_strtoui(ptr noundef nonnull %i.ah, ptr noundef null, i32 noundef 16, ptr noundef nonnull %i.g) #5
  %i.aj = or i32 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call i32 @qemu_strtou64(ptr noundef %i.al, ptr noundef null, i32 noundef 10, ptr noundef nonnull %i.e) #5
  %i.an = or i32 %i.aj, %i.am
  %.not60 = icmp eq i32 %i.an, 0
  br i1 %.not60, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ao = icmp eq i32 %i.q, 6
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  store ptr %i.aq, ptr %i.h, align 8
  %i.ar = call i64 @strspn(ptr noundef %i.aq, ptr noundef nonnull @.str.2) #7
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 2 uses
  store ptr %i.as, ptr %i.h, align 8
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #7
  %i.au = add i64 %i.at, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.au, %bb.e ], [ 0, %bb.f ]    ; 3 uses
  %i.av = add i64 %.0, 88
  %i.aw = call noalias ptr @g_malloc0(i64 noundef %i.av) #6 ; 12 uses
  %i.ax = load i64, ptr %i.b, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = load i64, ptr %i.c, align 8
  %i.ba = add i64 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = load i64, ptr %i.d, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bf = load i32, ptr %i.g, align 4             ; 2 uses
  %i.bg = shl i32 %i.be, 8
  %i.bh = and i32 %i.bg, 1048320
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = and i32 %i.be, -4096
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw i64 %i.bk, 32
  %i.bm = or disjoint i64 %i.bl, %i.bi
  %i.bn = and i32 %i.bf, 255
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = or disjoint i64 %i.bm, %i.bo
  %i.bq = and i32 %i.bf, -256
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 12
  %i.bt = or disjoint i64 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = load i64, ptr %i.e, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i64 %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = icmp eq i8 %i.bz, 114
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.cc = zext i1 %i.ca to i8
  store i8 %i.cc, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.bx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp eq i8 %i.cf, 119
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 49
  %i.ci = zext i1 %i.cg to i8
  store i8 %i.ci, ptr %i.ch, align 1
  %i.cj = load ptr, ptr %i.bx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, 120
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 50
  %i.co = zext i1 %i.cm to i8
  store i8 %i.co, ptr %i.cn, align 2
  %i.cp = load ptr, ptr %i.bx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = icmp eq i8 %i.cr, 112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aw, i64 51
  %i.cu = zext i1 %i.cs to i8
  store i8 %i.cu, ptr %i.ct, align 1
  %.not61 = icmp eq i64 %.0, 0
  br i1 %.not61, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aw, i64 88 ; 2 uses
  %i.cw = load ptr, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cv, ptr noundef nonnull align 1 %i.cw, i64 noundef range(i64 1, 0) %.0, i1 noundef false) #5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store ptr %i.cv, ptr %i.cx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @interval_tree_insert(ptr noundef nonnull %i.aw, ptr noundef %i.j) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  call void @g_strfreev(ptr noundef %i.p) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.k, %bb.b
  call void @g_strfreev(ptr noundef %i.l) #5
  %i.cy = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.cy) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %._crit_edge
  %.056 = phi ptr [ %i.j, %._crit_edge ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.056
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @g_file_get_contents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @g_strsplit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @g_strv_length(ptr noundef) local_unnamed_addr #2

declare i32 @qemu_strtou64(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @qemu_strtoui(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @free_self_maps(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @free_rbnode(ptr noundef %i.a)
  tail call void @g_free(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @free_rbnode(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %common.ret4, label %bb.b

common.ret4:                                      ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call fastcc void @free_rbnode(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call fastcc void @free_rbnode(ptr noundef %i.d)
  tail call void @g_free(ptr noundef nonnull %0) #5
  br label %common.ret4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
