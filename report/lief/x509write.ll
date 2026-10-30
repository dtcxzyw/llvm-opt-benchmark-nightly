Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/x509write?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"U\1D\11\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_x509_write_set_san_common(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not146 = icmp eq ptr %1, null
  br i1 %.not146, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.087148 = phi i64 [ %.3, %bb.i ], [ 0, %bb.a ] ; 3 uses
  %.092147 = phi ptr [ %i.z, %bb.i ], [ %1, %bb.a ] ; 4 uses
  %i.b = load i32, ptr %.092147, align 8, !tbaa !14
  switch i32 %i.b, label %.critedge [
    i32 2, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 1, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.092147, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = xor i64 %i.d, -1
  %i.f = icmp ugt i64 %.087148, %i.e
  %i.g = add i64 %i.d, %.087148                   ; 2 uses
  %i.h = icmp ugt i64 %i.g, -6
  %or.cond = or i1 %i.f, %i.h
  br i1 %or.cond, label %.critedge, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.092147, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.g
  %.084145 = phi ptr [ %i.i, %bb.c ], [ %i.w, %bb.g ] ; 3 uses
  %.188144 = phi i64 [ %.087148, %bb.c ], [ %i.u, %bb.g ] ; 2 uses
  %i.j = icmp ugt i64 %.188144, -11
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %.188144, 10                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.084145, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = xor i64 %i.m, -1
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i64 %i.m, %i.k                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.084145, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22   ; 2 uses
  %i.s = xor i64 %i.r, -1
  %i.t = icmp ugt i64 %i.p, %i.s
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %i.r, %i.p                       ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.084145, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %.not127 = icmp eq ptr %i.w, null
  br i1 %.not127, label %bb.h, label %bb.d, !llvm.loop !8

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ugt i64 %i.u, -6
  br i1 %i.x, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.3.in = phi i64 [ %i.g, %bb.b ], [ %i.u, %bb.h ] ; 2 uses
  %.3 = add nuw i64 %.3.in, 5                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.092147, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.i
  %i.aa = icmp ugt i64 %.3.in, -11
  br i1 %i.aa, label %.critedge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.087.lcssa184 = phi i64 [ %.3, %._crit_edge ], [ 0, %bb.a ]
  %i.ab = add nuw i64 %.087.lcssa184, 5           ; 2 uses
  %i.ac = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ab) #6 ; 12 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !26
  %.not125174 = icmp eq ptr %1, null
  br i1 %.not125174, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.j, %bb.t
  %.090151 = phi i64 [ %i.bi, %bb.t ], [ 0, %bb.j ] ; 2 uses
  %.193150 = phi ptr [ %i.bh, %bb.t ], [ %1, %bb.j ] ; 6 uses
  %i.af = load i32, ptr %.193150, align 8, !tbaa !14
  switch i32 %i.af, label %.thread133 [
    i32 2, label %bb.k
    i32 1, label %bb.k
    i32 6, label %bb.k
    i32 7, label %bb.k
    i32 4, label %bb.o
  ]

bb.k:                                             ; preds = %.lr.ph153, %.lr.ph153, %.lr.ph153, %.lr.ph153
  %i.ag = getelementptr inbounds nuw i8, ptr %.193150, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.193150, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15 ; 2 uses
  %i.ak = call i32 @mbedtls_asn1_write_raw_buffer(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, ptr noundef %i.ah, i64 noundef %i.aj) #5 ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.thread133, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = call i32 @mbedtls_asn1_write_len(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, i64 noundef %i.aj) #5 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.thread133, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %.193150, align 8, !tbaa !14
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = or i8 %i.ap, -128
  %i.ar = call i32 @mbedtls_asn1_write_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, i8 noundef zeroext %i.aq) #5 ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread133, label %bb.n

bb.n:                                             ; preds = %bb.m
  %narrow126 = add nuw i32 %i.am, %i.ak
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph153
  %i.at = getelementptr inbounds nuw i8, ptr %.193150, i64 8
  %i.au = call i32 @mbedtls_x509_write_names(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.at) #5 ; 4 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.thread133, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = call i32 @mbedtls_asn1_write_len(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, i64 noundef %i.aw) #5 ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.thread133, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = call i32 @mbedtls_asn1_write_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, i8 noundef zeroext -92) #5 ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.thread133, label %bb.r

bb.r:                                             ; preds = %bb.q
  %narrow = add nuw i32 %i.ax, %i.au
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r
  %narrow126.sink = phi i32 [ %narrow126, %bb.n ], [ %narrow, %bb.r ]
  %.sink188 = phi i32 [ %i.ar, %bb.n ], [ %i.az, %bb.r ]
  %i.bb = zext i32 %narrow126.sink to i64
  %i.bc = zext nneg i32 %.sink188 to i64
  %i.bd = add nuw nsw i64 %i.bc, %i.bb            ; 2 uses
  %i.be = xor i64 %i.bd, -1
  %i.bf = icmp ugt i64 %.090151, %i.be
  br i1 %i.bf, label %.thread133, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %.193150, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25 ; 2 uses
  %i.bi = add i64 %i.bd, %.090151                 ; 2 uses
  %.not125 = icmp eq ptr %i.bh, null
  br i1 %.not125, label %._crit_edge154, label %.lr.ph153

._crit_edge154:                                   ; preds = %bb.t, %bb.j
  %.090.lcssa = phi i64 [ 0, %bb.j ], [ %i.bi, %bb.t ] ; 2 uses
  %i.bj = call i32 @mbedtls_asn1_write_len(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, i64 noundef %.090.lcssa) #5 ; 3 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.thread133, label %bb.u

bb.u:                                             ; preds = %._crit_edge154
  %i.bl = call i32 @mbedtls_asn1_write_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, i8 noundef zeroext 48) #5 ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.thread133, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = zext nneg i32 %i.bj to i64
  %i.bo = add i64 %.090.lcssa, %i.bn
  %i.bp = zext nneg i32 %i.bl to i64
  %i.bq = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = sub i64 0, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.ae, i64 %i.br
  %i.bt = call i32 @mbedtls_x509_set_extension(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 3, i32 noundef 0, ptr noundef nonnull %i.bs, i64 noundef %i.bq) #5
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.bv = icmp ult ptr %i.bu, %i.ac
  %spec.store.select = select i1 %i.bv, i32 -102, i32 %i.bt
  br label %.thread133

.thread133:                                       ; preds = %bb.l, %bb.k, %bb.m, %bb.s, %.lr.ph153, %bb.q, %bb.p, %bb.o, %bb.v, %bb.u, %._crit_edge154
  %.398 = phi i32 [ %spec.store.select, %bb.v ], [ %i.bj, %._crit_edge154 ], [ %i.bl, %bb.u ], [ -10240, %bb.s ], [ %i.au, %bb.o ], [ %i.ax, %bb.p ], [ %i.ak, %bb.k ], [ %i.am, %bb.l ], [ -8320, %.lr.ph153 ], [ %i.az, %bb.q ], [ %i.ar, %bb.m ]
  call void @free(ptr noundef nonnull %i.ac) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.lr.ph, %bb.b, %bb.d, %bb.e, %bb.f, %._crit_edge.thread, %._crit_edge, %.thread133
  %.3102 = phi i32 [ -10240, %bb.d ], [ %.398, %.thread133 ], [ -10240, %._crit_edge ], [ -141, %._crit_edge.thread ], [ -10240, %bb.f ], [ -10240, %bb.e ], [ -8320, %.lr.ph ], [ -10240, %bb.b ], [ -10240, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.3102
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_asn1_write_raw_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_asn1_write_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mbedtls_asn1_write_tag(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @mbedtls_x509_write_names(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_x509_set_extension(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = !{!"mbedtls_x509_subject_alternative_name", !5, i64 0, !4, i64 8}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTS21mbedtls_x509_san_list", !11, i64 0}
!13 = !{!"mbedtls_x509_san_list", !10, i64 0, !12, i64 80}
!14 = !{!13, !5, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"mbedtls_asn1_buf", !5, i64 0, !16, i64 8, !17, i64 16}
!19 = !{!"p1 _ZTS23mbedtls_asn1_named_data", !11, i64 0}
!20 = !{!"mbedtls_asn1_named_data", !18, i64 0, !18, i64 24, !19, i64 48, !4, i64 56}
!21 = !{!20, !16, i64 8}
!22 = !{!20, !16, i64 32}
!23 = !{!20, !19, i64 48}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!13, !12, i64 80}
!26 = !{!17, !17, i64 0}
end_hunk_0
