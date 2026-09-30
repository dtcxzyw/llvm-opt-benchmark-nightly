Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000_parser?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecParser = type { %struct.AVCodecParser, i32, ptr, ptr, ptr }
%struct.AVCodecParser = type { [7 x i32] }

@ff_jpeg2000_parser = local_unnamed_addr constant %struct.FFCodecParser { %struct.AVCodecParser { [7 x i32] [i32 88, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, i32 80, ptr null, ptr @jpeg2000_parse, ptr @ff_parse_close }, align 8
@info_marker.lut = internal unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16

; Function Attrs: nounwind uwtable
define internal i32 @jpeg2000_parse(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !12
  store i32 %5, ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !18     ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.i = icmp eq i32 %5, 0
  br i1 %i.i, label %find_frame_end.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp sgt i32 %5, 0
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 8 uses
  %i.n = add nsw i32 %5, -9
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 75 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 74 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 76 ; 6 uses
  %.promoted.i = load i32, ptr %i.m, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %info_marker.exit.thread.i, %.lr.ph.i
  %i.u = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.cd, %info_marker.exit.thread.i ] ; 6 uses
  %.0156.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.3.i, %info_marker.exit.thread.i ]
  %.097155.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.z, %info_marker.exit.thread.i ] ; 2 uses
  %.098154.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ce, %info_marker.exit.thread.i ] ; 25 uses
  %i.v = shl i64 %.097155.i, 8                    ; 2 uses
  %6 = sext i32 %.098154.i to i64
  %i.w = getelementptr inbounds i8, ptr %4, i64 %6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 7 uses
  %i.aa = add i64 %.0156.i, 1                     ; 19 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ugt i32 %i.u, 8
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = sub i32 %i.n, %.098154.i
  %i.ad = sext i32 %i.ac to i64
  %7 = zext i32 %i.u to i64
  %8 = add nsw i64 %7, -8
  %9 = tail call i64 @llvm.smin.i64(i64 %8, i64 %i.ad) ; 3 uses
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %.thread.i.a, label %bb.g

.thread.i.a:                                      ; preds = %bb.f
  %11 = trunc nuw nsw i64 %9 to i32               ; 2 uses
  %i.ae = sub i32 %i.u, %11
  %i.af = add nsw i32 %.098154.i, %11
  %i.ag = add i64 %9, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %.thread.i.a, %bb.f, %bb.e
  %i.ah = phi i32 [ %i.u, %bb.e ], [ %i.ae, %.thread.i.a ], [ %i.u, %bb.f ]
  %.2100.i = phi i32 [ %.098154.i, %bb.e ], [ %i.af, %.thread.i.a ], [ %.098154.i, %bb.f ]
  %.2.i = phi i64 [ %i.aa, %bb.e ], [ %i.ag, %.thread.i.a ], [ %i.aa, %bb.f ]
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.m, align 8, !tbaa !23
  br label %info_marker.exit.thread.i

bb.h:                                             ; preds = %bb.d
  %i.aj = load i8, ptr %i.o, align 1, !tbaa !25   ; 2 uses
  switch i8 %i.aj, label %bb.j [
    i8 0, label %bb.k
    i8 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = trunc i64 %i.z to i32
  %i.al = add i32 %i.ak, -9                       ; 2 uses
  store i32 %i.al, ptr %i.m, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = phi i32 [ 0, %bb.h ], [ %i.al, %bb.i ]
  %i.an = add i8 %i.aj, -1
  store i8 %i.an, ptr %i.o, align 1, !tbaa !25
  br label %info_marker.exit.thread.i

bb.k:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.p, align 8, !tbaa !26   ; 3 uses
  %.not116.i = icmp eq i8 %i.ao, 0
  br i1 %.not116.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.ao, 1
  %i.aq = icmp eq i64 %i.z, 7660658288187049738
  %or.cond3.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond3.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.q, align 8, !tbaa !27
  %.not117.i = icmp eq i32 %i.ar, 0
  br i1 %.not117.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.q, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 2, !tbaa !28
  store i8 0, ptr %i.o, align 1, !tbaa !25
  store i8 0, ptr %i.t, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.m, i8 0, i64 9, i1 false)
  %i.as = add nsw i32 %.098154.i, -11
  br label %find_frame_end.exit

bb.o:                                             ; preds = %bb.m
  store i32 1, ptr %i.q, align 8, !tbaa !27
  store i32 1, ptr %i.r, align 4, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.at = add i8 %i.ao, -1
  store i8 %i.at, ptr %i.p, align 8, !tbaa !26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %i.au = and i64 %i.z, 4294967295
  %i.av = icmp eq i64 %i.au, 12
  %i.aw = icmp ugt i64 %i.aa, 2
  %or.cond.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 8, ptr %i.p, align 8, !tbaa !26
  br label %info_marker.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.ax = and i64 %i.z, 65535                     ; 3 uses
  %trunc.i = trunc i64 %i.z to i16
  switch i16 %trunc.i, label %bb.ac [
    i16 -177, label %bb.t
    i16 -39, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.t, align 4, !tbaa !29
  %i.ay = load i32, ptr %i.q, align 8, !tbaa !27
  %.not125.i = icmp eq i32 %i.ay, 0
  br i1 %.not125.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.q, align 8, !tbaa !27
  store i32 2, ptr %i.r, align 4, !tbaa !30
  br label %info_marker.exit.thread.i

bb.v:                                             ; preds = %bb.t
  %i.az = load i32, ptr %i.r, align 4, !tbaa !30
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.w, label %info_marker.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.bb = load i8, ptr %i.s, align 2, !tbaa !28
  %.not126.i = icmp eq i8 %i.bb, 0
  br i1 %.not126.i, label %info_marker.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.q, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 2, !tbaa !28
  store i8 0, ptr %i.o, align 1, !tbaa !25
  store i8 0, ptr %i.t, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.m, i8 0, i64 9, i1 false)
  %i.bc = add nsw i32 %.098154.i, -1
  br label %find_frame_end.exit

bb.y:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.q, align 8, !tbaa !27
  %.not123.i = icmp eq i32 %i.bd, 0
  br i1 %.not123.i, label %.thread129.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = load i32, ptr %i.r, align 4, !tbaa !30
  switch i32 %i.be, label %.thread129.i [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.s, align 2, !tbaa !28
  br label %.thread129.i

bb.ab:                                            ; preds = %bb.z
  store i32 0, ptr %i.q, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 2, !tbaa !28
  store i8 0, ptr %i.o, align 1, !tbaa !25
  store i8 0, ptr %i.t, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.m, i8 0, i64 9, i1 false)
  %i.bf = add nsw i32 %.098154.i, 1
  br label %find_frame_end.exit

.thread129.i:                                     ; preds = %bb.aa, %bb.z, %bb.y
  store i8 0, ptr %i.t, align 4, !tbaa !29
  br label %info_marker.exit.thread.i

bb.ac:                                            ; preds = %bb.s
  %i.bg = load i8, ptr %i.t, align 4, !tbaa !29
  %.not118.i = icmp eq i8 %i.bg, 0
  br i1 %.not118.i, label %info_marker.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = icmp eq i64 %i.ax, 65424
  br i1 %i.bh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 8, ptr %i.o, align 1, !tbaa !25
  br label %info_marker.exit.thread.i

bb.af:                                            ; preds = %bb.ad
  %i.bi = and i64 %.097155.i, 16711680
  %.not133.i = icmp eq i64 %i.bi, 16711680
  br i1 %.not133.i, label %info_marker.exit.i, label %info_marker.exit.thread.i

info_marker.exit.i:                               ; preds = %bb.af
  %i.bj = lshr i64 %i.v, 16
  %i.bk = and i64 %i.bj, 255
  %i.bl = getelementptr inbounds nuw i8, ptr @info_marker.lut, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !24
  %.not119.i = icmp eq i8 %i.bm, 0
  br i1 %.not119.i, label %info_marker.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %info_marker.exit.i
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !27
  %.not120.i = icmp eq i32 %i.bn, 0
  %.not121.i = icmp eq i64 %i.ax, 0
  %or.cond127.i = or i1 %.not121.i, %.not120.i
  br i1 %or.cond127.i, label %info_marker.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bo = trunc nuw nsw i64 %i.ax to i32          ; 3 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 5 uses
  store i32 %i.bp, ptr %i.m, align 8, !tbaa !23
  %i.bq = add i32 %.098154.i, %i.bo               ; 2 uses
  %i.br = icmp ult i32 %i.bq, %5
  br i1 %i.br, label %bb.ai, label %info_marker.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.bs = add i32 %i.bp, %.098154.i
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !24
  %.not134.i = icmp eq i8 %i.bv, -1
  br i1 %.not134.i, label %info_marker.exit128.i, label %info_marker.exit.thread.i

info_marker.exit128.i:                            ; preds = %bb.ai
  %i.bw = zext nneg i32 %i.bq to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !24
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @info_marker.lut, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24
  %.not122.i = icmp eq i8 %i.cb, 0
  br i1 %.not122.i, label %info_marker.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %info_marker.exit128.i
  %i.cc = add nuw nsw i32 %i.bo, 1                ; 2 uses
  store i32 %i.cc, ptr %i.m, align 8, !tbaa !23
  br label %info_marker.exit.thread.i

info_marker.exit.thread.i:                        ; preds = %bb.aj, %info_marker.exit128.i, %bb.ai, %bb.ah, %bb.ag, %info_marker.exit.i, %bb.af, %bb.ae, %bb.ac, %.thread129.i, %bb.w, %bb.v, %bb.u, %bb.r, %bb.j, %bb.g
  %i.cd = phi i32 [ %i.ai, %bb.g ], [ %i.am, %bb.j ], [ 0, %bb.r ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.ac ], [ 0, %bb.u ], [ 0, %.thread129.i ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ %i.bp, %bb.ah ], [ 0, %info_marker.exit.i ], [ %i.cc, %bb.aj ], [ %i.bp, %info_marker.exit128.i ], [ 0, %bb.af ], [ %i.bp, %bb.ai ]
  %.3101.i = phi i32 [ %.2100.i, %bb.g ], [ %.098154.i, %bb.j ], [ %.098154.i, %bb.r ], [ %.098154.i, %bb.w ], [ %.098154.i, %bb.v ], [ %.098154.i, %bb.ac ], [ %.098154.i, %bb.u ], [ %.098154.i, %.thread129.i ], [ %.098154.i, %bb.ae ], [ %.098154.i, %bb.ag ], [ %.098154.i, %bb.ah ], [ %.098154.i, %info_marker.exit.i ], [ %.098154.i, %bb.aj ], [ %.098154.i, %info_marker.exit128.i ], [ %.098154.i, %bb.af ], [ %.098154.i, %bb.ai ]
  %.3.i = phi i64 [ %.2.i, %bb.g ], [ %i.aa, %bb.j ], [ %i.aa, %bb.r ], [ %i.aa, %bb.w ], [ %i.aa, %bb.v ], [ %i.aa, %bb.ac ], [ %i.aa, %bb.u ], [ %i.aa, %.thread129.i ], [ %i.aa, %bb.ae ], [ %i.aa, %bb.ag ], [ %i.aa, %bb.ah ], [ %i.aa, %info_marker.exit.i ], [ %i.aa, %bb.aj ], [ %i.aa, %info_marker.exit128.i ], [ %i.aa, %bb.af ], [ %i.aa, %bb.ai ] ; 2 uses
  %i.ce = add nsw i32 %.3101.i, 1                 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %5
  br i1 %i.cf, label %bb.d, label %._crit_edge.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %info_marker.exit.thread.i, %bb.c
  %.097.lcssa.i = phi i64 [ %i.k, %bb.c ], [ %i.z, %info_marker.exit.thread.i ]
  %.0.lcssa.i = phi i64 [ %i.j, %bb.c ], [ %.3.i, %info_marker.exit.thread.i ]
  store i64 %.097.lcssa.i, ptr %i.g, align 8, !tbaa !22
  store i64 %.0.lcssa.i, ptr %i.h, align 8, !tbaa !21
  br label %find_frame_end.exit

find_frame_end.exit:                              ; preds = %bb.b, %bb.n, %bb.x, %bb.ab, %._crit_edge.i
  %.0102.i = phi i32 [ -100, %._crit_edge.i ], [ %i.as, %bb.n ], [ %i.bc, %bb.x ], [ %i.bf, %bb.ab ], [ 0, %bb.b ] ; 2 uses
  %i.cg = call i32 @ff_combine_frame(ptr noundef %i.f, i32 noundef %.0102.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.ak, label %find_frame_end.exit._crit_edge

find_frame_end.exit._crit_edge:                   ; preds = %find_frame_end.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  %.pre24 = load i32, ptr %i.b, align 4, !tbaa !13
  br label %bb.al

bb.ak:                                            ; preds = %find_frame_end.exit
  store ptr null, ptr %2, align 8, !tbaa !12
  store i32 0, ptr %3, align 4, !tbaa !13
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !13
  br label %bb.am

bb.al:                                            ; preds = %find_frame_end.exit._crit_edge, %bb.a
  %i.cj = phi i32 [ %.pre24, %find_frame_end.exit._crit_edge ], [ %5, %bb.a ]
  %i.ck = phi ptr [ %.pre, %find_frame_end.exit._crit_edge ], [ %4, %bb.a ]
  %.0 = phi i32 [ %.0102.i, %find_frame_end.exit._crit_edge ], [ %5, %bb.a ]
  store ptr %i.ck, ptr %2, align 8, !tbaa !12
  store i32 %i.cj, ptr %3, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.011 = phi i32 [ %.0, %bb.al ], [ %i.ci, %bb.ak ]
  ret i32 %.011
}

declare void @ff_parse_close(ptr noundef) #1

declare i32 @ff_combine_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !31}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"p1 _ZTS13AVCodecParser", !10, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"AVCodecParserContext", !10, i64 0, !14, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !6, i64 80, !6, i64 84, !5, i64 88, !5, i64 120, !5, i64 152, !6, i64 184, !15, i64 192, !5, i64 200, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !5, i64 248, !15, i64 280, !15, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328}
!17 = !{!16, !6, i64 184}
!18 = !{!16, !10, i64 0}
!19 = !{!"ParseContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !15, i64 40}
!20 = !{!"JPEG2000ParserContext", !19, i64 0, !15, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !5, i64 72, !5, i64 73, !5, i64 74, !5, i64 75, !5, i64 76}
!21 = !{!20, !15, i64 48}
!22 = !{!19, !15, i64 40}
!23 = !{!20, !6, i64 64}
!24 = !{!5, !5, i64 0}
!25 = !{!20, !5, i64 75}
!26 = !{!20, !5, i64 72}
!27 = !{!19, !6, i64 24}
!28 = !{!20, !5, i64 74}
!29 = !{!20, !5, i64 76}
!30 = !{!20, !6, i64 68}
!31 = !{!"llvm.loop.mustprogress"}
end_hunk_0
