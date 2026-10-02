Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/dns?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"res_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Querying %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Can't query %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"dn_expand failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Bad (too short) DNS reply\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Broken DNS reply.\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"second dn_expand failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"DNS rr overflow\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Not a TXT record\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Broken TXT record (txtlen = %d, size = %d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @dnsquery(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 9 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call i32 @__res_init() #6
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str) #6 ; 0 uses
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef %0) #6 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.g = call i32 @res_query(ptr noundef %0, i32 noundef 1, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 512) #6 ; 2 uses
  %or.cond = icmp ugt i32 %i.g, 512
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i32 %1, 16
  %i.i = select i1 %i.h, i32 4, i32 2
  %i.j = call i32 (i32, ptr, ...) @logg(i32 noundef %i.i, ptr noundef nonnull @.str.2, ptr noundef %0) #6 ; 0 uses
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  switch i32 %1, label %bb.h [
    i32 255, label %bb.j
    i32 16, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %.not, label %bb.ae, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %2, align 4, !tbaa !8
  br label %bb.ae

bb.j:                                             ; preds = %bb.g, %bb.g
  %i.k = zext nneg i32 %i.g to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.n = call i32 @dn_expand(ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i32 noundef 128) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %bb.ae

bb.l:                                             ; preds = %bb.j
  %i.q = zext nneg i32 %i.n to i64                ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 12
  %i.s = add nsw i64 %i.k, -4
  %i.t = icmp sgt i64 %i.r, %i.s
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %bb.ae

bb.n:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  %.not91 = icmp eq i32 %i.ac, %1
  br i1 %.not91, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.5) #6 ; 0 uses
  br label %bb.ae

bb.p:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.af = getelementptr inbounds i8, ptr %i.l, i64 -10
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %bb.p
  %.079 = phi i32 [ 0, %bb.p ], [ %i.aw, %bb.w ]
  %.077 = phi ptr [ %i.ae, %bb.p ], [ %i.ax, %bb.w ]
  %i.ag = zext nneg i32 %.079 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.077, i64 %i.ag ; 2 uses
  %i.ai = call i32 @dn_expand(ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.b, i32 noundef 128) #6 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.6) #6 ; 0 uses
  br label %bb.ae

bb.s:                                             ; preds = %bb.q
  %i.al = zext nneg i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 11 uses
  %i.an = icmp ugt ptr %i.am, %i.af
  br i1 %i.an, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ao = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av            ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 10 ; 3 uses
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.a
  %i.bb = icmp ugt ptr %i.az, %i.l
  %or.cond95 = or i1 %i.ba, %i.bb
  br i1 %or.cond95, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bc = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.7) #6 ; 0 uses
  br label %bb.ae

bb.w:                                             ; preds = %bb.u
  %i.bd = load i8, ptr %i.am, align 1, !tbaa !9
  %i.be = zext i8 %i.bd to i16
  %i.bf = shl nuw i16 %i.be, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9
  %i.bi = zext i8 %i.bh to i16
  %trunc = or disjoint i16 %i.bf, %i.bi
  switch i16 %trunc, label %bb.x [
    i16 5, label %bb.q
    i16 16, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bj = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.8) #6 ; 0 uses
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %3 = getelementptr inbounds nuw i8, ptr %i.am, i64 7
  %4 = load i8, ptr %3, align 1, !tbaa !9
  %5 = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %i.am, i64 5
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %9 = load i8, ptr %i.bk, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = zext i8 %8 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or disjoint i32 %13, %11
  %15 = zext i8 %6 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or disjoint i32 %14, %16
  %18 = zext i8 %4 to i32
  %19 = or disjoint i32 %17, %18
  %.not93 = icmp eq i32 %i.aw, 0
  br i1 %.not93, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = load i8, ptr %i.ax, align 1, !tbaa !9   ; 3 uses
  %i.bm = zext i8 %i.bl to i32                    ; 3 uses
  %i.bn = icmp samesign ugt i32 %i.aw, %i.bm
  %i.bo = icmp ne i8 %i.bl, 0
  %or.cond5 = and i1 %i.bo, %i.bn
  br i1 %or.cond5, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.078 = phi i32 [ %i.bm, %bb.z ], [ 0, %bb.y ]
  %i.bp = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %.078, i32 noundef %i.aw) #6 ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.bq = add nuw nsw i32 %i.bm, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = call noalias ptr @malloc(i64 noundef %i.br) #7 ; 5 uses
  %.not94 = icmp eq ptr %i.bs, null
  br i1 %.not94, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.bu = zext i8 %i.bl to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull align 1 %i.bt, i64 %i.bu, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  store i8 0, ptr %i.bv, align 1, !tbaa !9
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %19, ptr %2, align 4, !tbaa !8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab, %bb.h, %bb.i, %bb.aa, %bb.x, %bb.v, %bb.t, %bb.r, %bb.o, %bb.m, %bb.k, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.aa ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.r ], [ null, %bb.t ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.ab ], [ null, %bb.h ], [ null, %bb.i ], [ %i.bs, %bb.ad ], [ %i.bs, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @__res_init() local_unnamed_addr #2

declare i32 @logg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @res_query(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dn_expand(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
end_hunk_0
