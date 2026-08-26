Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1_parser?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecParser = type { %struct.AVCodecParser, i32, ptr, ptr, ptr }
%struct.AVCodecParser = type { [7 x i32] }
%struct.GetBitContext = type { ptr, i32, i32, i32 }

@ff_vc1_parser = local_unnamed_addr constant %struct.FFCodecParser { %struct.AVCodecParser { [7 x i32] [i32 70, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, i32 11216, ptr @vc1_parse_init, ptr @vc1_parse, ptr @ff_parse_close }, align 8

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @vc1_parse_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store i32 1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10060
  store i32 1, ptr %i.c, align 4, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10256
  store i32 1, ptr %i.d, align 16, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 11040
  store i8 0, ptr %i.e, align 16, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 11048
  store i64 0, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 11200
  store i64 0, ptr %i.g, align 16, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 11208
  store i32 0, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5240
  tail call void @ff_vc1dsp_init(ptr noundef nonnull %i.i) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @vc1_parse(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !55
  store i32 %5, ptr %i.b, align 4, !tbaa !56
  %i.c = load ptr, ptr %0, align 8, !tbaa !9      ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 11056 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 11200 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !53  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 11208 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 11048 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp ne i32 %i.e, 0
  %i.o = icmp eq i32 %5, 0
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.q = sub i64 37, %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  %i.r = trunc i64 %i.h to i32
  tail call fastcc void @vc1_extract_header(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef %i.r)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0115 = phi i32 [ 0, %bb.b ], [ -100, %bb.a ]  ; 3 uses
  %i.s = icmp sgt i32 %5, %i.m
  br i1 %i.s, label %.preheader169.lr.ph, label %.thread162

.preheader169.lr.ph:                              ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 11040 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 5984
  %i.w = sext i32 %5 to i64
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader169.lr.ph, %bb.v
  %.0109210 = phi i8 [ undef, %.preheader169.lr.ph ], [ %.6, %bb.v ]
  %.0110206 = phi i32 [ %i.m, %.preheader169.lr.ph ], [ %.6.a, %bb.v ] ; 3 uses
  %.0122205 = phi i32 [ %i.j, %.preheader169.lr.ph ], [ %.8, %bb.v ] ; 2 uses
  %.0129204 = phi i64 [ %i.h, %.preheader169.lr.ph ], [ %.6135, %bb.v ] ; 3 uses
  %.0137203 = phi i32 [ %i.e, %.preheader169.lr.ph ], [ %.2139, %bb.v ] ; 5 uses
  %i.x = icmp slt i32 %.0110206, %5
  %i.y = icmp ult i64 %.0129204, 37
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader169
  %i.aa = sext i32 %.0110206 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.1123184 = phi i32 [ %.0122205, %.lr.ph.preheader ], [ %.2124, %bb.i ] ; 3 uses
  %.1130183 = phi i64 [ %.0129204, %.lr.ph.preheader ], [ %.3132, %bb.i ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !58  ; 4 uses
  %i.ad = add nuw nsw i64 %.1130183, 1            ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1130183
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !58
  %i.af = icmp ult i32 %.1123184, 2
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %.not151.a = icmp eq i8 %i.ac, 0
  %i.ag = add nuw nsw i32 %.1123184, 1
  %i.ah = select i1 %.not151.a, i32 %i.ag, i32 0
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ai = icmp eq i32 %.1123184, 2
  br i1 %i.ai, label %bb.f, label %._crit_edge.loopexit

bb.f:                                             ; preds = %bb.e
  switch i8 %i.ac, label %bb.h [
    i8 1, label %bb.i
    i8 0, label %.fold.split
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

.fold.split:                                      ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %.fold.split, %bb.h, %bb.d
  %.3132 = phi i64 [ %i.ad, %bb.d ], [ %i.ad, %bb.f ], [ %i.ad, %.fold.split ], [ %.1130183, %bb.g ], [ %i.ad, %bb.h ] ; 3 uses
  %.2124 = phi i32 [ %i.ah, %bb.d ], [ 3, %bb.f ], [ 2, %.fold.split ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %i.aj = icmp slt i64 %indvars.iv.next, %i.w
  %i.ak = icmp ult i64 %.3132, 37
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !59

._crit_edge.loopexit:                             ; preds = %bb.e, %bb.i
  %.lcssa.ph = phi i1 [ true, %bb.e ], [ false, %bb.i ]
  %.4133.ph = phi i64 [ %i.ad, %bb.e ], [ %.3132, %bb.i ]
  %.3125.ph = phi i32 [ 0, %bb.e ], [ %.2124, %bb.i ]
  %i.am = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader169
  %.lcssa = phi i1 [ false, %.preheader169 ], [ %.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  %.4133 = phi i64 [ %.0129204, %.preheader169 ], [ %.4133.ph, %._crit_edge.loopexit ] ; 5 uses
  %.3125 = phi i32 [ %.0122205, %.preheader169 ], [ %.3125.ph, %._crit_edge.loopexit ] ; 3 uses
  %.2112 = phi i32 [ %.0110206, %.preheader169 ], [ %i.am, %._crit_edge.loopexit ] ; 3 uses
  %.1 = phi i8 [ %.0109210, %.preheader169 ], [ %i.ac, %._crit_edge.loopexit ] ; 2 uses
  %i.an = load i32, ptr %i.t, align 8, !tbaa !61
  %i.ao = trunc i32 %i.an to i1
  %i.ap = icmp ugt i64 %.4133, 36
  %or.cond3 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.aq = load i8, ptr %i.u, align 16, !tbaa !51
  %i.ar = icmp eq i8 %i.aq, 13
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = trunc i64 %.4133 to i32
  tail call fastcc void @vc1_extract_header(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef %i.as)
  br label %.thread162

bb.l:                                             ; preds = %bb.j, %._crit_edge
  %i.at = icmp ult i64 %.4133, 37
  %or.cond5 = or i1 %.lcssa, %i.at
  %i.au = icmp sge i32 %.2112, %5
  %or.cond235.not = select i1 %or.cond5, i1 true, i1 %i.au
  br i1 %or.cond235.not, label %.loopexit, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.l, %bb.r
  %.2198 = phi i8 [ %.3, %bb.r ], [ %.1, %bb.l ]
  %.3113197 = phi i32 [ %.4114, %bb.r ], [ %.2112, %bb.l ] ; 4 uses
  %.4126196 = phi i32 [ %.6128, %bb.r ], [ %.3125, %bb.l ] ; 2 uses
  %i.av = icmp eq i32 %.4126196, 0
  %i.aw = sext i32 %.3113197 to i64
  %i.ax = getelementptr inbounds i8, ptr %4, i64 %i.aw ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph199
  %i.ay = load ptr, ptr %i.v, align 16, !tbaa !62
  %i.az = sub nsw i32 %5, %.3113197
  %i.ba = tail call i32 %i.ay(ptr noundef %i.ax, i32 noundef %i.az) #5
  %i.bb = add nsw i32 %i.ba, %.3113197            ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %5
  %spec.select = zext i1 %i.bc to i32
  %i.bd = add nsw i32 %i.bb, 1
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph199
  %i.be = add nsw i32 %.3113197, 1                ; 4 uses
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !58  ; 6 uses
  switch i32 %.4126196, label %.thread [
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %.not146 = icmp eq i8 %i.bf, 0
  %i.bg = select i1 %.not146, i32 2, i32 0
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq i8 %i.bf, 1
  %i.bi = select i1 %i.bh, i32 3, i32 0
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.m
  %.6128 = phi i32 [ %spec.select, %bb.m ], [ %i.bg, %bb.o ], [ %i.bi, %bb.q ], [ 2, %bb.p ] ; 2 uses
  %.4114 = phi i32 [ %i.bd, %bb.m ], [ %i.be, %bb.o ], [ %i.be, %bb.q ], [ %i.be, %bb.p ] ; 3 uses
  %.3 = phi i8 [ %.2198, %bb.m ], [ %i.bf, %bb.o ], [ %i.bf, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.bj = icmp slt i32 %.4114, %5
  br i1 %i.bj, label %.lr.ph199, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %bb.r, %bb.l
  %.7 = phi i32 [ %.3125, %bb.l ], [ %.6128, %bb.r ] ; 2 uses
  %.5.a = phi i32 [ %.2112, %bb.l ], [ %.4114, %bb.r ] ; 2 uses
  %.4 = phi i8 [ %.1, %bb.l ], [ %.3, %bb.r ]     ; 2 uses
  br i1 %.lcssa, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.n, %.loopexit
  %.4161 = phi i8 [ %.4, %.loopexit ], [ %i.bf, %bb.n ] ; 7 uses
  %.5160 = phi i32 [ %.5.a, %.loopexit ], [ %i.be, %bb.n ] ; 4 uses
  %.7159 = phi i32 [ %.7, %.loopexit ], [ 0, %bb.n ] ; 4 uses
  %i.bk = trunc i64 %.4133 to i32
  tail call fastcc void @vc1_extract_header(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef %i.bk)
  store i8 %.4161, ptr %i.u, align 16, !tbaa !51
  %i.bl = load i32, ptr %i.t, align 8, !tbaa !61
  %i.bm = and i32 %i.bl, 1
  %.not148 = icmp eq i32 %i.bm, 0
  br i1 %.not148, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.thread
  %i.bn = icmp ne i32 %.0137203, 0                ; 2 uses
  %i.bo = and i8 %.4161, -2
  %or.cond8 = icmp ne i8 %i.bo, 12
  %or.cond153.not = select i1 %i.bn, i1 true, i1 %or.cond8
  br i1 %or.cond153.not, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bp = add i8 %.4161, -13
  %i.bq = icmp ult i8 %i.bp, -3
  %or.cond17 = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %or.cond17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.br = add nsw i32 %.5160, -4
  %i.bs = icmp eq i8 %.4161, 13
  %i.bt = zext i1 %i.bs to i32
  br label %.thread162

bb.v:                                             ; preds = %.loopexit, %bb.t, %.thread, %bb.s
  %.2139 = phi i32 [ %.0137203, %.loopexit ], [ 1, %bb.s ], [ %.0137203, %.thread ], [ %.0137203, %bb.t ] ; 2 uses
  %.6135 = phi i64 [ %.4133, %.loopexit ], [ 0, %bb.s ], [ 0, %.thread ], [ 0, %bb.t ] ; 2 uses
  %.8 = phi i32 [ %.7, %.loopexit ], [ %.7159, %bb.s ], [ %.7159, %.thread ], [ %.7159, %bb.t ] ; 2 uses
  %.6.a = phi i32 [ %.5.a, %.loopexit ], [ %.5160, %bb.s ], [ %.5160, %.thread ], [ %.5160, %bb.t ] ; 2 uses
  %.6 = phi i8 [ %.4, %.loopexit ], [ %.4161, %bb.s ], [ %.4161, %.thread ], [ %.4161, %bb.t ]
  %i.bu = icmp slt i32 %.6.a, %5
  br i1 %i.bu, label %.preheader169, label %.thread162

.thread162:                                       ; preds = %bb.v, %bb.c, %bb.u, %bb.k
  %.3140 = phi i32 [ %.0137203, %bb.k ], [ %i.bt, %bb.u ], [ %i.e, %bb.c ], [ %.2139, %bb.v ]
  %.7136 = phi i64 [ 0, %bb.k ], [ 0, %bb.u ], [ %i.h, %bb.c ], [ %.6135, %bb.v ]
  %.9 = phi i32 [ %.3125, %bb.k ], [ %.7159, %bb.u ], [ %i.j, %bb.c ], [ %.8, %bb.v ]
  %.3118 = phi i32 [ %.0115, %bb.k ], [ %i.br, %bb.u ], [ %.0115, %bb.c ], [ %.0115, %bb.v ] ; 2 uses
  store i32 %.3140, ptr %i.d, align 8, !tbaa !57
  store i64 %.7136, ptr %i.g, align 16, !tbaa !53
  store i32 %.9, ptr %i.i, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !61
  %i.bx = and i32 %i.bw, 1
  %.not149 = icmp eq i32 %i.bx, 0
  br i1 %.not149, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.thread162
  %i.by = call i32 @ff_combine_frame(ptr noundef nonnull %i.c, i32 noundef %.3118, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %._crit_edge221

._crit_edge221:                                   ; preds = %bb.w
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !55
  %.pre222 = load i32, ptr %i.b, align 4, !tbaa !56
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %i.k, align 8, !tbaa !52
  store ptr null, ptr %2, align 8, !tbaa !55
  store i32 0, ptr %3, align 4, !tbaa !56
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !56
  br label %bb.z

bb.y:                                             ; preds = %.thread162, %._crit_edge221
  %i.cb = phi i32 [ %.pre222, %._crit_edge221 ], [ %5, %.thread162 ]
  %i.cc = phi ptr [ %.pre, %._crit_edge221 ], [ %4, %.thread162 ]
  %.4119 = phi i32 [ %.3118, %._crit_edge221 ], [ %5, %.thread162 ] ; 4 uses
  %i.cd = icmp slt i32 %.4119, 0
  %i.ce = icmp ne i32 %.4119, -100
  %or.cond19 = and i1 %i.cd, %i.ce
  %narrow = add nsw i32 %.4119, 4
  %i.cf = sext i32 %narrow to i64
  %storemerge = select i1 %or.cond19, i64 %i.cf, i64 4
  store i64 %storemerge, ptr %i.k, align 8, !tbaa !52
  store ptr %i.cc, ptr %2, align 8, !tbaa !55
  store i32 %i.cb, ptr %3, align 4, !tbaa !56
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0141 = phi i32 [ %.4119, %bb.y ], [ %i.ca, %bb.x ]
  ret i32 %.0141
}

declare void @ff_parse_close(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @ff_vc1dsp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @vc1_extract_header(ptr nofree noundef captures(none) initializes((328, 332)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.GetBitContext, align 8      ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store ptr %1, ptr %i.c, align 8, !tbaa !64
  %or.cond.i = icmp ugt i32 %3, 268435455
  %i.d = shl nuw nsw i32 %3, 3
  %i.e = select i1 %or.cond.i, i32 -8, i32 %i.d   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.e, 2147483135    ; 2 uses
  %i.f = icmp ne ptr %2, null
  %or.cond3.i.i = and i1 %i.f, %or.cond.i.i
  %.014.i.i = select i1 %or.cond.i.i, ptr %2, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.e, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %4, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.013.i.i, ptr %i.g, align 4, !tbaa !66
  %i.h = add nuw nsw i32 %.013.i.i, 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.h, ptr %i.i, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 11040
  %i.l = load i8, ptr %i.k, align 16, !tbaa !51
  switch i8 %i.l, label %bb.q [
    i8 15, label %bb.b
    i8 14, label %bb.c
    i8 13, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @ff_vc1_decode_sequence_header(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %4) #5 ; 0 uses
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.n = call i32 @ff_vc1_decode_entry_point(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %4) #5 ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 6092
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69
  %i.q = icmp slt i32 %i.p, 3
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @ff_vc1_parse_frame_header(ptr noundef nonnull %i.b, ptr noundef nonnull %4) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = call i32 @ff_vc1_parse_frame_header_adv(ptr noundef nonnull %i.b, ptr noundef nonnull %4) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp slt i32 %.0, 0
  br i1 %i.t, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  %i.v = load i32, ptr %i.u, align 16, !tbaa !70  ; 2 uses
  %i.w = icmp eq i32 %i.v, 7
  %spec.select = select i1 %i.w, i32 3, i32 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %spec.select, ptr %i.x, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 6048
  %i.z = load i32, ptr %i.y, align 16, !tbaa !72
  %.not = icmp eq i32 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.aa, align 4, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 9756
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !74
  %.not46 = icmp eq i8 %i.ac, 0
  br i1 %.not46, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 9754
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !75  ; 2 uses
  %.not47 = icmp eq i8 %i.ae, 0
  br i1 %.not47, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 1
  %i.ah = or disjoint i32 %i.ag, 1
  br label %.sink.split

bb.l:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 4, !tbaa !73
  br label %bb.p

.sink.split:                                      ; preds = %bb.i, %bb.k
  %.sink = phi i32 [ %i.ah, %bb.k ], [ 2, %bb.i ]
  store i32 %.sink, ptr %i.aa, align 4, !tbaa !73
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 6052
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !76
  %.not49 = icmp eq i32 %i.aj, 0
  br i1 %.not49, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 6088
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !77
  %.not50 = icmp eq i32 %i.al, 0
  br i1 %.not50, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 9755
  %i.an = load i8, ptr %i.am, align 1, !tbaa !78
  %.not51 = icmp eq i8 %i.an, 0
  %i.ao = select i1 %.not51, i32 3, i32 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !79
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 1, ptr %i.aq, align 4, !tbaa !79
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.g, %bb.c, %bb.b, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 6040
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !80
  %i.at = icmp ne i32 %i.as, 1
  %i.au = sext i1 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
end_hunk_0
