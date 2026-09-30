Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sccenc?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFOutputFormat = type { %struct.AVOutputFormat, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.AVOutputFormat = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"scc\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Scenarist Closed Captions\00", align 1
@ff_scc_muxer = local_unnamed_addr constant %struct.FFOutputFormat { %struct.AVOutputFormat { ptr @.str, ptr @.str.1, ptr null, ptr @.str, i32 0, i32 0, i32 94218, i32 132160, ptr null, ptr null }, i32 24, i32 12, ptr @scc_write_header, ptr @scc_write_packet, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Scenarist_SCC V1.0\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Insufficient timestamps.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\0A%02d:%02d:%02d:%02d\09\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @scc_write_header(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call void @avpriv_set_pts_info(ptr noundef %i.e, i32 noundef 64, i32 noundef 1, i32 noundef 1000) #3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = tail call i32 (ptr, ptr, ...) @avio_printf(ptr noundef %i.g, ptr noundef nonnull @.str.2) #3 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 -1, i64 16, i1 false)
  store i32 0, ptr %i.i, align 4, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @scc_write_packet(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 5 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.3) #3
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = sdiv i64 %i.d, 3600000
  %i.g = trunc i64 %i.f to i32                    ; 5 uses
  %i.h = sdiv i64 %i.d, 60000
  %i.i = trunc i64 %i.h to i32
  %i.j = srem i32 %i.i, 60                        ; 5 uses
  %i.k = sdiv i64 %i.d, 1000
  %i.l = trunc i64 %i.k to i32
  %i.m = srem i32 %i.l, 60                        ; 5 uses
  %i.n = srem i64 %i.d, 1000
  %.lhs.trunc = trunc nsw i64 %i.n to i16
  %i.o = sdiv i16 %.lhs.trunc, 33
  %.sext = sext i16 %i.o to i32                   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39   ; 4 uses
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %2 = add nsw i32 %i.q, -2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %3 = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !41
  %i.w = icmp eq i8 %i.v, -4
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !41
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !41
  %.not84 = icmp eq i8 %i.aa, -128
  br i1 %.not84, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next, %3
  br i1 %4, label %bb.d, label %.loopexit, !llvm.loop !32

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28 ; 2 uses
  %.not86 = icmp eq i32 %i.ac, 0
  br i1 %.not86, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !43
  %.not87 = icmp eq i32 %i.ad, %i.g
  br i1 %.not87, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !44
  %.not88 = icmp eq i32 %i.af, %i.j
  br i1 %.not88, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !45
  %.not89 = icmp eq i32 %i.ah, %i.m
  br i1 %.not89, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !46
  %.not90 = icmp eq i32 %i.aj, %.sext
  br i1 %.not90, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.am = tail call i32 (ptr, ptr, ...) @avio_printf(ptr noundef %i.al, ptr noundef nonnull @.str.4, i32 noundef %i.g, i32 noundef %i.j, i32 noundef %i.m, i32 noundef %.sext) #3 ; 0 uses
  store i32 1, ptr %i.ab, align 4, !tbaa !28
  %.pre = load i32, ptr %i.p, align 8, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.h
  %i.an = phi i32 [ 1, %bb.m ], [ 0, %bb.l ], [ %i.ac, %bb.h ]
  %i.ao = phi i32 [ %.pre, %bb.m ], [ %i.q, %bb.l ], [ %i.q, %bb.h ] ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph101, %bb.x
  %i.as = phi i32 [ %i.ao, %.lr.ph101 ], [ %i.bx, %bb.x ] ; 3 uses
  %indvars.iv104 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next105, %bb.x ] ; 4 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 3 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = icmp sgt i64 %indvars.iv.next105, %i.at
  br i1 %i.au, label %._crit_edge.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv104 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !41
  %.not91 = icmp eq i8 %i.ax, -4
  br i1 %.not91, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ay = add nuw nsw i64 %indvars.iv104, 1       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !41
  %i.bb = icmp eq i8 %i.ba, -128
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !41
  %i.be = icmp eq i8 %i.bd, -128
  br i1 %i.be, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bf = load i32, ptr %i.ab, align 4, !tbaa !28
  %.not92 = icmp eq i32 %i.bf, 0
  br i1 %.not92, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.bh = tail call i32 (ptr, ptr, ...) @avio_printf(ptr noundef %i.bg, ptr noundef nonnull @.str.4, i32 noundef %i.g, i32 noundef %i.j, i32 noundef %i.m, i32 noundef %.sext) #3 ; 0 uses
  store i32 1, ptr %i.ab, align 4, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = load i32, ptr %i.ar, align 4, !tbaa !47
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !26
  tail call void @avio_w8(ptr noundef %i.bk, i32 noundef 32) #3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ay
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !41
  %i.bp = zext i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !41
  %i.bt = zext i8 %i.bs to i32
  %i.bu = tail call i32 (ptr, ptr, ...) @avio_printf(ptr noundef %i.bl, ptr noundef nonnull @.str.5, i32 noundef %i.bp, i32 noundef %i.bt) #3 ; 0 uses
  %i.bv = load i32, ptr %i.ar, align 4, !tbaa !47
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ar, align 4, !tbaa !47
  %.pre107 = load i32, ptr %i.p, align 8, !tbaa !39 ; 2 uses
  %.pre109 = sext i32 %.pre107 to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.r, %bb.w
  %.pre-phi = phi i64 [ %i.at, %bb.p ], [ %i.at, %bb.r ], [ %.pre109, %bb.w ]
  %i.bx = phi i32 [ %i.as, %bb.p ], [ %i.as, %bb.r ], [ %.pre107, %bb.w ]
  %i.by = icmp slt i64 %indvars.iv.next105, %.pre-phi
  br i1 %i.by, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !33

._crit_edge.loopexit:                             ; preds = %bb.o, %bb.x
  %.pre108 = load i32, ptr %i.ab, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.bz = phi i32 [ %.pre108, %._crit_edge.loopexit ], [ %i.an, %bb.n ]
  %.not93 = icmp eq i32 %i.bz, 0
  br i1 %.not93, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !43
  %.not94 = icmp eq i32 %i.ca, %i.g
  br i1 %.not94, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !44
  %.not95 = icmp eq i32 %i.cc, %i.j
  br i1 %.not95, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !45
  %.not96 = icmp eq i32 %i.ce, %i.m
  br i1 %.not96, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !46
  %.not97 = icmp eq i32 %i.cg, %.sext
  br i1 %.not97, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !26
  tail call void @avio_w8(ptr noundef %i.ci, i32 noundef 10) #3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.cj, align 4, !tbaa !47
  store i32 0, ptr %i.ab, align 4, !tbaa !28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.j, ptr %i.ck, align 4, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.m, ptr %i.cl, align 4, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sext, ptr %i.cm, align 4, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.c, %bb.ad, %bb.b
  ret i32 0
}

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @avio_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @avio_w8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
