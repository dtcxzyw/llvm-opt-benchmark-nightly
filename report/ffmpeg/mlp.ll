Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mlp?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ChannelInformation = type { i8, i8, i8, i8 }
%struct.AVChannelLayout = type { i32, i32, %union.anon, ptr }
%union.anon = type { i64 }

@ff_mlp_huffman_tables = local_unnamed_addr constant [3 x [18 x [2 x i8]]] [[18 x [2 x i8]] [[2 x i8] c"\01\09", [2 x i8] c"\01\08", [2 x i8] c"\01\07", [2 x i8] c"\01\06", [2 x i8] c"\01\05", [2 x i8] c"\01\04", [2 x i8] c"\01\03", [2 x i8] c"\04\03", [2 x i8] c"\05\03", [2 x i8] c"\06\03", [2 x i8] c"\07\03", [2 x i8] c"\03\03", [2 x i8] c"\05\04", [2 x i8] c"\09\05", [2 x i8] c"\11\06", [2 x i8] c"!\07", [2 x i8] c"A\08", [2 x i8] c"\81\09"], [18 x [2 x i8]] [[2 x i8] c"\01\09", [2 x i8] c"\01\08", [2 x i8] c"\01\07", [2 x i8] c"\01\06", [2 x i8] c"\01\05", [2 x i8] c"\01\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\02", [2 x i8] c"\03\03", [2 x i8] c"\05\04", [2 x i8] c"\09\05", [2 x i8] c"\11\06", [2 x i8] c"!\07", [2 x i8] c"A\08", [2 x i8] c"\81\09", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [18 x [2 x i8]] [[2 x i8] c"\01\09", [2 x i8] c"\01\08", [2 x i8] c"\01\07", [2 x i8] c"\01\06", [2 x i8] c"\01\05", [2 x i8] c"\01\04", [2 x i8] c"\01\03", [2 x i8] c"\01\01", [2 x i8] c"\03\03", [2 x i8] c"\05\04", [2 x i8] c"\09\05", [2 x i8] c"\11\06", [2 x i8] c"!\07", [2 x i8] c"A\08", [2 x i8] c"\81\09", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer]], align 16
@ff_mlp_ch_info = local_unnamed_addr constant [21 x %struct.ChannelInformation] [%struct.ChannelInformation { i8 1, i8 1, i8 0, i8 31 }, %struct.ChannelInformation { i8 3, i8 2, i8 0, i8 27 }, %struct.ChannelInformation { i8 7, i8 2, i8 1, i8 31 }, %struct.ChannelInformation { i8 15, i8 2, i8 2, i8 25 }, %struct.ChannelInformation { i8 7, i8 2, i8 1, i8 3 }, %struct.ChannelInformation { i8 15, i8 2, i8 2, i8 31 }, %struct.ChannelInformation { i8 31, i8 2, i8 3, i8 1 }, %struct.ChannelInformation { i8 7, i8 2, i8 1, i8 26 }, %struct.ChannelInformation { i8 15, i8 2, i8 2, i8 31 }, %struct.ChannelInformation { i8 31, i8 2, i8 3, i8 24 }, %struct.ChannelInformation { i8 15, i8 2, i8 2, i8 2 }, %struct.ChannelInformation { i8 31, i8 2, i8 3, i8 31 }, %struct.ChannelInformation { i8 63, i8 2, i8 4, i8 0 }, %struct.ChannelInformation { i8 15, i8 3, i8 1, i8 31 }, %struct.ChannelInformation { i8 31, i8 3, i8 2, i8 24 }, %struct.ChannelInformation { i8 15, i8 3, i8 1, i8 2 }, %struct.ChannelInformation { i8 31, i8 3, i8 2, i8 31 }, %struct.ChannelInformation { i8 63, i8 3, i8 3, i8 0 }, %struct.ChannelInformation { i8 31, i8 4, i8 1, i8 1 }, %struct.ChannelInformation { i8 31, i8 4, i8 1, i8 24 }, %struct.ChannelInformation { i8 63, i8 4, i8 2, i8 0 }], align 16
@ff_mlp_ch_layouts = local_unnamed_addr constant [12 x %struct.AVChannelLayout] [%struct.AVChannelLayout { i32 1, i32 1, %union.anon { i64 4 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 2, %union.anon { i64 3 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 3, %union.anon { i64 259 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 4, %union.anon { i64 51 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 3, %union.anon { i64 11 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 3, %union.anon { i64 7 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 4, %union.anon { i64 263 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 5, %union.anon { i64 55 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 4, %union.anon { i64 15 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 5, %union.anon { i64 271 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 6, %union.anon { i64 63 }, ptr null }, %struct.AVChannelLayout zeroinitializer], align 16
@ff_mlp_init_crc.init_static_once = internal global i32 0, align 4
@crc_2D = internal global [1024 x i32] zeroinitializer, align 16
@crc_63 = internal global [1024 x i32] zeroinitializer, align 16

; Function Attrs: cold nounwind optsize uwtable
define void @ff_mlp_init_crc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @ff_mlp_init_crc.init_static_once, ptr noundef nonnull @mlp_init_crc) #7 ; 0 uses
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind optsize uwtable
define internal void @mlp_init_crc() #0 {
bb.a:
  %i.a = tail call i32 @av_crc_init(ptr noundef nonnull @crc_63, i32 noundef 0, i32 noundef 8, i32 noundef 99, i32 noundef 4096) #7 ; 0 uses
  %i.b = tail call i32 @av_crc_init(ptr noundef nonnull @crc_2D, i32 noundef 0, i32 noundef 16, i32 noundef 45, i32 noundef 4096) #7 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define zeroext i16 @ff_mlp_checksum16(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %1, -2
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i32 @av_crc(ptr noundef nonnull @crc_2D, i32 noundef 0, ptr noundef %0, i64 noundef %i.b) #8
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !9
  %i.h = trunc i32 %i.c to i16
  %i.i = xor i16 %i.g, %i.h
  ret i16 %i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define zeroext i8 @ff_mlp_checksum8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call i32 @av_crc(ptr noundef nonnull @crc_63, i32 noundef 60, ptr noundef %0, i64 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %i.f = trunc i32 %i.c to i8
  %i.g = xor i8 %i.e, %i.f
  ret i8 %i.g
}

; Function Attrs: nounwind uwtable
define zeroext i8 @ff_mlp_restart_checksum(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @av_crc_get_table(i32 noundef 7) #7
  %i.b = add i32 %1, 2                            ; 2 uses
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !9
  %i.e = and i8 %i.d, -64
  %i.f = zext i8 %i.e to i32
  %i.g = add nsw i32 %i.c, -1
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = tail call i32 @av_crc(ptr noundef %i.a, i32 noundef %i.f, ptr noundef nonnull %0, i64 noundef %i.h) #8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32
  %i.m = xor i32 %i.i, %i.l                       ; 3 uses
  %i.n = and i32 %i.b, 7                          ; 7 uses
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = zext nneg i32 %i.c to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i8 %i.q to i32                      ; 7 uses
  %i.s = shl i32 %i.m, 1                          ; 2 uses
  %i.t = and i32 %i.m, 128
  %.not = icmp eq i32 %i.t, 0
  %i.u = xor i32 %i.s, 285
  %spec.select = select i1 %.not, i32 %i.s, i32 %i.u ; 2 uses
  %i.v = lshr i32 %i.r, 7
  %i.w = xor i32 %i.v, %spec.select               ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = shl i32 %i.w, 1                          ; 2 uses
  %i.y = and i32 %spec.select, 128
  %.not.1 = icmp eq i32 %i.y, 0
  %i.z = xor i32 %i.x, 285
  %spec.select.1 = select i1 %.not.1, i32 %i.x, i32 %i.z ; 2 uses
  %i.aa = lshr i32 %i.r, 6
  %i.ab = and i32 %i.aa, 1
  %i.ac = xor i32 %i.ab, %spec.select.1           ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = shl i32 %i.ac, 1                        ; 2 uses
  %i.ae = and i32 %spec.select.1, 128
  %.not.2 = icmp eq i32 %i.ae, 0
  %i.af = xor i32 %i.ad, 285
  %spec.select.2 = select i1 %.not.2, i32 %i.ad, i32 %i.af ; 2 uses
  %i.ag = lshr i32 %i.r, 5
  %i.ah = and i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, %spec.select.2           ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.n, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = shl i32 %i.ai, 1                        ; 2 uses
  %i.ak = and i32 %spec.select.2, 128
  %.not.3 = icmp eq i32 %i.ak, 0
  %i.al = xor i32 %i.aj, 285
  %spec.select.3 = select i1 %.not.3, i32 %i.aj, i32 %i.al ; 2 uses
  %i.am = lshr i32 %i.r, 4
  %i.an = and i32 %i.am, 1
  %i.ao = xor i32 %i.an, %spec.select.3           ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.n, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = shl i32 %i.ao, 1                        ; 2 uses
  %i.aq = and i32 %spec.select.3, 128
  %.not.4 = icmp eq i32 %i.aq, 0
  %i.ar = xor i32 %i.ap, 285
  %spec.select.4 = select i1 %.not.4, i32 %i.ap, i32 %i.ar ; 2 uses
  %i.as = lshr i32 %i.r, 3
  %i.at = and i32 %i.as, 1
  %i.au = xor i32 %i.at, %spec.select.4           ; 2 uses
  %exitcond.not.4 = icmp eq i32 %i.n, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = shl i32 %i.au, 1                        ; 2 uses
  %i.aw = and i32 %spec.select.4, 128
  %.not.5 = icmp eq i32 %i.aw, 0
  %i.ax = xor i32 %i.av, 285
  %spec.select.5 = select i1 %.not.5, i32 %i.av, i32 %i.ax ; 2 uses
  %i.ay = lshr i32 %i.r, 2
  %i.az = and i32 %i.ay, 1
  %i.ba = xor i32 %i.az, %spec.select.5           ; 2 uses
  %exitcond.not.5 = icmp eq i32 %i.n, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = and i32 %spec.select.5, 128
  %.not.6 = icmp eq i32 %i.bc, 0
  %i.bd = xor i32 %i.bb, 285
  %spec.select.6 = select i1 %.not.6, i32 %i.bb, i32 %i.bd
  %i.be = lshr i32 %i.r, 1
  %i.bf = and i32 %i.be, 1
  %i.bg = xor i32 %i.bf, %spec.select.6
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a
  %.0.lcssa = phi i32 [ %i.m, %bb.a ], [ %i.w, %.lr.ph ], [ %i.ac, %bb.b ], [ %i.ai, %bb.c ], [ %i.ao, %bb.d ], [ %i.au, %bb.e ], [ %i.ba, %bb.f ], [ %i.bg, %bb.g ]
  %i.bh = trunc i32 %.0.lcssa to i8
  ret i8 %i.bh
}

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i8 @ff_mlp_calculate_parity(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 3 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = and i64 %i.c, 3
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i32 %1, 0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.019.lcssa = phi ptr [ %0, %bb.a ], [ %i.z, %.lr.ph ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.i = icmp ult ptr %.019.lcssa, %i.h
  br i1 %i.i, label %.lr.ph27.preheader, label %._crit_edge

.lr.ph27.preheader:                               ; preds = %.preheader
  %i.j = ptrtoaddr ptr %.019.lcssa to i64
  %i.k = add i64 %i.c, %i.a
  %2 = add i64 %i.k, -4
  %3 = sub i64 %2, %i.j                           ; 2 uses
  %i.l = lshr i64 %3, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 28
  br i1 %min.iters.check, label %.lr.ph27.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph27.preheader
  %n.vec = and i64 %i.m, 9223372036854775800      ; 3 uses
  %i.n = shl i64 %n.vec, 2
  %i.o = getelementptr i8, ptr %.019.lcssa, i64 %i.n ; 2 uses
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.p, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.019.lcssa, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !10
  %wide.load51 = load <4 x i32>, ptr %i.r, align 4, !tbaa !10
  %i.s = xor <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.t = xor <4 x i32> %wide.load51, %vec.phi50   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.t, %i.s
  %i.v = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph27.preheader72

.lr.ph27.preheader72:                             ; preds = %.lr.ph27.preheader, %middle.block
  %.126.ph = phi i32 [ %.0.lcssa, %.lr.ph27.preheader ], [ %i.v, %middle.block ]
  %.12025.ph = phi ptr [ %.019.lcssa, %.lr.ph27.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph27

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi i32 [ %i.y, %.lr.ph ], [ 0, %bb.a ]
  %.01922 = phi ptr [ %i.z, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.w = load i8, ptr %.01922, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i32
  %i.y = xor i32 %.023, %i.x                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01922, i64 1 ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 3
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = icmp ult ptr %i.z, %i.b
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph, label %.preheader, !llvm.loop !15

.lr.ph27:                                         ; preds = %.lr.ph27.preheader72, %.lr.ph27
  %.126 = phi i32 [ %i.ag, %.lr.ph27 ], [ %.126.ph, %.lr.ph27.preheader72 ]
  %.12025 = phi ptr [ %i.ah, %.lr.ph27 ], [ %.12025.ph, %.lr.ph27.preheader72 ] ; 2 uses
  %i.af = load i32, ptr %.12025, align 4, !tbaa !10
  %i.ag = xor i32 %i.af, %.126                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.12025, i64 4 ; 3 uses
  %i.ai = icmp ult ptr %i.ah, %i.h
  br i1 %i.ai, label %.lr.ph27, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph27, %middle.block, %.preheader
  %.120.lcssa = phi ptr [ %.019.lcssa, %.preheader ], [ %i.o, %middle.block ], [ %i.ah, %.lr.ph27 ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.v, %middle.block ], [ %i.ag, %.lr.ph27 ] ; 2 uses
  %i.aj = lshr i32 %.1.lcssa, 16
  %i.ak = xor i32 %i.aj, %.1.lcssa                ; 2 uses
  %i.al = lshr i32 %i.ak, 8
  %i.am = xor i32 %i.al, %i.ak                    ; 3 uses
  %i.an = icmp ult ptr %.120.lcssa, %i.b
  br i1 %i.an, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %._crit_edge
  %.120.lcssa40 = ptrtoaddr ptr %.120.lcssa to i64
  %i.ao = add i64 %i.c, %i.a
  %i.ap = sub i64 %i.ao, %.120.lcssa40            ; 4 uses
  %scevgep = getelementptr i8, ptr %.120.lcssa, i64 %i.ap
  %min.iters.check53 = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check53, label %.lr.ph33.preheader69, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph33.preheader
  %n.vec55 = and i64 %i.ap, -8                    ; 3 uses
  %i.aq = getelementptr i8, ptr %.120.lcssa, i64 %n.vec55
  %i.ar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.am, i64 0
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next63, %vector.body56 ] ; 2 uses
  %vec.phi58 = phi <4 x i32> [ %i.ar, %vector.ph54 ], [ %i.av, %vector.body56 ]
  %vec.phi59 = phi <4 x i32> [ zeroinitializer, %vector.ph54 ], [ %i.aw, %vector.body56 ]
  %next.gep60 = getelementptr i8, ptr %.120.lcssa, i64 %index57 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep60, i64 4
  %wide.load61 = load <4 x i8>, ptr %next.gep60, align 1, !tbaa !9
  %wide.load62 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %i.at = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.au = zext <4 x i8> %wide.load62 to <4 x i32>
  %i.av = xor <4 x i32> %vec.phi58, %i.at         ; 2 uses
  %i.aw = xor <4 x i32> %vec.phi59, %i.au         ; 2 uses
  %index.next63 = add nuw i64 %index57, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next63, %n.vec55
  br i1 %i.ax, label %middle.block64, label %vector.body56, !llvm.loop !17

middle.block64:                                   ; preds = %vector.body56
  %bin.rdx65 = xor <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx65) ; 2 uses
  %cmp.n66 = icmp eq i64 %i.ap, %n.vec55
  br i1 %cmp.n66, label %._crit_edge34, label %.lr.ph33.preheader69

.lr.ph33.preheader69:                             ; preds = %.lr.ph33.preheader, %middle.block64
  %.231.ph = phi i32 [ %i.am, %.lr.ph33.preheader ], [ %i.ay, %middle.block64 ]
  %.22130.ph = phi ptr [ %.120.lcssa, %.lr.ph33.preheader ], [ %i.aq, %middle.block64 ]
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33.preheader69, %.lr.ph33
  %.231 = phi i32 [ %i.bb, %.lr.ph33 ], [ %.231.ph, %.lr.ph33.preheader69 ]
  %.22130 = phi ptr [ %i.bc, %.lr.ph33 ], [ %.22130.ph, %.lr.ph33.preheader69 ] ; 2 uses
  %i.az = load i8, ptr %.22130, align 1, !tbaa !9
  %i.ba = zext i8 %i.az to i32
  %i.bb = xor i32 %.231, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.22130, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bc, %scevgep
  br i1 %exitcond.not, label %._crit_edge34, label %.lr.ph33, !llvm.loop !18

._crit_edge34:                                    ; preds = %.lr.ph33, %middle.block64, %._crit_edge
  %.2.lcssa = phi i32 [ %i.am, %._crit_edge ], [ %i.ay, %middle.block64 ], [ %i.bb, %.lr.ph33 ]
  %i.bd = trunc i32 %.2.lcssa to i8
  ret i8 %i.bd
}

declare i32 @av_crc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12, !14, !13}
!17 = distinct !{!17, !12, !13, !14}
!18 = distinct !{!18, !12, !14, !13}
end_hunk_0
