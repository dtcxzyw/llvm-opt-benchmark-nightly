Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lafdec?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"laf\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"LAF (Limitless Audio Format)\00", align 1
@ff_laf_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 256, [4 x i8] zeroinitializer, ptr @.str, ptr null, ptr null, ptr null }, i32 0, i32 164384, i32 1, [4 x i8] zeroinitializer, ptr @laf_probe, ptr @laf_read_header, ptr @laf_read_packet, ptr @laf_read_close, ptr @laf_read_seek, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@switch.table.laf_read_header = private unnamed_addr constant [4 x i8] c"\01\02\04\03", align 4
@switch.table.laf_read_header.1 = private unnamed_addr constant [4 x i32] [i32 65541, i32 65536, i32 65557, i32 65548], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 101) i32 @laf_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = load i64, ptr %i.b, align 1
  %i.d = xor i64 %i.c, 6000286003431819596
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = xor i64 %i.g, 83
  %i.i = or i64 %i.d, %i.h
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.m = load i32, ptr %i.l, align 1
  %i.n = icmp ne i32 %i.m, 1145128264
  %i.o = zext i1 %i.n to i32
  %.not3 = icmp eq i32 %i.o, 0
  %. = select i1 %.not3, i32 100, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @laf_read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 11 uses
  %i.e = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 9) #6 ; 0 uses
  %i.f = tail call i32 @avio_rb32(ptr noundef %i.d) #6
  %.not = icmp eq i32 %i.f, 1212498244
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @avio_r8(ptr noundef %i.d) #6 ; 4 uses
  %i.h = icmp sgt i32 %i.g, 3
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @avio_r8(ptr noundef %i.d) #6
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @avio_rl32(ptr noundef %i.d) #6 ; 4 uses
  %i.l = add i32 %i.k, -4097
  %or.cond = icmp ult i32 %i.l, -4096
  br i1 %or.cond, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.m
  %i.n = tail call i32 @avio_rl32(ptr noundef %i.d) #6 ; 4 uses
  %i.o = tail call i64 @avio_rl64(ptr noundef %i.d) #6
  %i.p = udiv i64 %i.o, %wide.trip.count
  %i.q = tail call i32 @avio_feof(ptr noundef %i.d) #6
  %.not120 = icmp eq i32 %i.q, 0
  %i.r = icmp ult i32 %i.g, 4
  %or.cond148 = and i1 %.not120, %i.r
  br i1 %or.cond148, label %switch.lookup, label %.critedge

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %indvars.iv ; 7 uses
  %i.t = tail call i32 @avio_rl32(ptr noundef %i.d) #6
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !54
  %i.v = tail call i32 @avio_rl32(ptr noundef %i.d) #6
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !55
  %i.x = tail call i32 @avio_r8(ptr noundef %i.d) #6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %i.x, ptr %i.y, align 8, !tbaa !56
  %.not124 = icmp eq i32 %i.x, 0
  br i1 %.not124, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.z = load float, ptr %i.u, align 4, !tbaa !54
  %i.aa = fcmp nsz oeq float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ab = load float, ptr %i.w, align 8, !tbaa !55 ; 5 uses
  %i.ac = fcmp nsz oeq float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = fcmp nsz oeq float %i.ab, -3.000000e+01
  br i1 %i.ad, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = fcmp nsz oeq float %i.ab, 3.000000e+01
  br i1 %i.ae, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = fcmp nsz oeq float %i.ab, -1.100000e+02
  br i1 %i.af, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = fcmp nsz oeq float %i.ab, 1.100000e+02
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.l
  %.sink = phi i64 [ 8, %bb.e ], [ 1, %bb.h ], [ 512, %bb.j ], [ 4, %bb.l ], [ 2, %bb.i ], [ 4, %bb.g ], [ 1024, %bb.k ]
  store i32 1, ptr %i.s, align 8, !tbaa !30
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 1, ptr %.sroa.232.0..sroa_idx, align 4, !tbaa !30
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sink, ptr %.sroa.333.0..sroa_idx, align 8, !tbaa !31
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !52

switch.lookup:                                    ; preds = %._crit_edge
  %i.ah = zext nneg i32 %i.g to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.laf_read_header, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i32
  %i.ai = zext nneg i32 %i.g to i64
  %switch.gep146 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.laf_read_header.1, i64 %i.ai
  %switch.load147 = load i32, ptr %switch.gep146, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %switch.ext, ptr %i.al, align 4, !tbaa !36
  %i.am = zext i8 %switch.load to i64             ; 2 uses
  %i.an = zext i32 %i.n to i64
  %i.ao = mul nuw nsw i64 %i.an, %wide.trip.count
  %i.ap = mul nuw nsw i64 %i.ao, %i.am
  %i.aq = icmp samesign ugt i64 %i.ap, 2147483646
  %i.ar = icmp eq i32 %i.n, 0
  %or.cond125 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond125, label %.critedge, label %bb.n

bb.n:                                             ; preds = %switch.lookup
  %i.as = mul i32 %i.n, %i.k
  %i.at = zext i32 %i.as to i64
  %i.au = tail call noalias ptr @av_calloc(i64 noundef %i.at, i64 noundef %i.am) #6 ; 2 uses
  store ptr %i.au, ptr %i.b, align 8, !tbaa !37
  %.not121 = icmp eq ptr %i.au, null
  br i1 %.not121, label %.critedge, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %umax = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %wide.trip.count140 = zext nneg i32 %umax to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph134, %bb.p
  %indvars.iv137 = phi i64 [ 0, %.lr.ph134 ], [ %indvars.iv.next138, %bb.p ] ; 2 uses
  %i.aw = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #6 ; 4 uses
  %.not122.not = icmp eq ptr %i.aw, null
  br i1 %.not122.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %indvars.iv137
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %switch.load147, ptr %i.ba, align 4, !tbaa !58
  store i32 1, ptr %i.az, align 8, !tbaa !59
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 132
  store i32 1, ptr %i.bc, align 4, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !61
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  store i32 %i.n, ptr %i.bd, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i64 %i.p, ptr %i.be, align 8, !tbaa !62
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 152
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !46
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.aw, i32 noundef 64, i32 noundef 1, i32 noundef %i.bh) #6
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %.critedge126, label %bb.o, !llvm.loop !53

.critedge126:                                     ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = add i32 %i.bj, 7
  %i.bl = lshr i32 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 163864
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.n, %switch.lookup, %._crit_edge, %bb.d, %bb.c, %bb.b, %bb.a, %.critedge126
  %.3 = phi i32 [ -1094995529, %switch.lookup ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ -1094995529, %bb.c ], [ -1094995529, %bb.d ], [ -1094995529, %._crit_edge ], [ -12, %bb.n ], [ 0, %.critedge126 ], [ -12, %bb.o ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @laf_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 23 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36   ; 3 uses
  %i.j = tail call i64 @avio_seek(ptr noundef %i.b, i64 noundef 0, i32 noundef 1) #6
  %i.k = tail call i32 @avio_feof(ptr noundef %i.b) #6
  %.not196 = icmp eq i32 %i.k, 0
  br i1 %.not196, label %.lr.ph200, label %.thread

.lr.ph200:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 163868 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 163864 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 8 uses
  br label %bb.b

.loopexit171:                                     ; preds = %bb.o, %.lr.ph186
  store i32 %umax226, ptr %i.l, align 8, !tbaa !34
  %i.r = tail call i32 @avio_feof(ptr noundef %i.b) #6
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph200, %.loopexit171
  %.0152198 = phi ptr [ %i.g, %.lr.ph200 ], [ %i.da, %.loopexit171 ]
  %i.s = load i32, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.t = load i32, ptr %i.m, align 4, !tbaa !47
  %.not159 = icmp ult i32 %i.s, %i.t
  br i1 %.not159, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.o, align 8, !tbaa !48
  %i.v = tail call i32 @ffio_read_size(ptr noundef %i.b, ptr noundef nonnull %i.n, i32 noundef %i.u) #6 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %.preheader172

.preheader172:                                    ; preds = %bb.c
  %i.x = load i32, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader172
  store i32 0, ptr %i.p, align 4, !tbaa !35
  store i32 0, ptr %i.l, align 8, !tbaa !34
  store i32 0, ptr %i.q, align 8, !tbaa !49
  br label %.thread

.lr.ph:                                           ; preds = %.preheader172
  %i.z = load i32, ptr %i.m, align 4, !tbaa !47   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %bb.d

._crit_edge:                                      ; preds = %.critedge
  store i32 0, ptr %i.p, align 4, !tbaa !35
  store i32 0, ptr %i.l, align 8, !tbaa !34
  store i32 %.1147.lcssa, ptr %i.q, align 8, !tbaa !49
  %.not160 = icmp eq i32 %.1147.lcssa, 0
  br i1 %.not160, label %.thread, label %bb.m

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next223, %.critedge ] ; 2 uses
  %.0145181 = phi i32 [ 0, %.lr.ph ], [ %.1.lcssa, %.critedge ] ; 3 uses
  %.0146180 = phi i32 [ 0, %.lr.ph ], [ %.1147.lcssa, %.critedge ] ; 2 uses
  %.0148179 = phi i32 [ 0, %.lr.ph ], [ %.1149.lcssa, %.critedge ] ; 11 uses
  %i.aa = sext i32 %.0145181 to i64               ; 8 uses
  %i.ab = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 %.0148179) ; 7 uses
  %exitcond.not.not = icmp ugt i32 %i.z, %.0148179
  br i1 %exitcond.not.not, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.1149.lcssa = phi i32 [ %i.cn, %bb.l ], [ %.0148179, %bb.d ], [ %i.aj, %bb.e ], [ %i.cf, %bb.k ], [ %i.ar, %bb.f ], [ %i.bp, %bb.i ], [ %i.az, %bb.g ], [ %i.bx, %bb.j ], [ %i.bh, %bb.h ]
  %.1147.lcssa = phi i32 [ %i.cl, %bb.l ], [ %.0146180, %bb.d ], [ %i.ai, %bb.e ], [ %i.ce, %bb.k ], [ %i.aq, %bb.f ], [ %i.bo, %bb.i ], [ %i.ay, %bb.g ], [ %i.bw, %bb.j ], [ %i.bg, %bb.h ] ; 4 uses
  %.1.lcssa = phi i32 [ %i.cm, %bb.l ], [ %.0145181, %bb.d ], [ %i.ak, %bb.e ], [ %i.cg, %bb.k ], [ %i.as, %bb.f ], [ %i.bq, %bb.i ], [ %i.ba, %bb.g ], [ %i.by, %bb.j ], [ %i.bi, %bb.h ]
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count
  br i1 %exitcond225.not, label %._crit_edge, label %bb.d, !llvm.loop !63

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !31  ; 8 uses
  %i.ae = and i8 %i.ad, 1
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = getelementptr [40 x i8], ptr %i.d, i64 %i.aa
  %i.ah = getelementptr i8, ptr %i.ag, i64 60
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !72
  %i.ai = add nsw i32 %.0146180, %i.af            ; 2 uses
  %indvars.iv.next = add nsw i64 %i.aa, 1         ; 2 uses
  %i.aj = add nuw nsw i32 %.0148179, 1
  %i.ak = trunc nsw i64 %indvars.iv.next to i32
  %exitcond.1.not = icmp eq i32 %i.ab, 1
  br i1 %exitcond.1.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = lshr i8 %i.ad, 1
  %i.am = and i8 %i.al, 1
  %i.an = zext nneg i8 %i.am to i32               ; 2 uses
  %i.ao = getelementptr [40 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ap = getelementptr i8, ptr %i.ao, i64 60
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !72
  %i.aq = add nsw i32 %i.ai, %i.an                ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %i.aa, 2       ; 2 uses
  %i.ar = add nuw nsw i32 %.0148179, 2
  %i.as = trunc nsw i64 %indvars.iv.next.1 to i32
  %exitcond.2.not = icmp eq i32 %i.ab, 2
  br i1 %exitcond.2.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = lshr i8 %i.ad, 2
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = getelementptr [40 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.ax = getelementptr i8, ptr %i.aw, i64 60
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !72
  %i.ay = add nsw i32 %i.aq, %i.av                ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %i.aa, 3       ; 2 uses
  %i.az = add nuw nsw i32 %.0148179, 3
  %i.ba = trunc nsw i64 %indvars.iv.next.2 to i32
  %exitcond.3.not = icmp eq i32 %i.ab, 3
  br i1 %exitcond.3.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = lshr i8 %i.ad, 3
  %i.bc = and i8 %i.bb, 1
  %i.bd = zext nneg i8 %i.bc to i32               ; 2 uses
  %i.be = getelementptr [40 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.bf = getelementptr i8, ptr %i.be, i64 60
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !72
  %i.bg = add nsw i32 %i.ay, %i.bd                ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %i.aa, 4       ; 2 uses
  %i.bh = add nuw nsw i32 %.0148179, 4
  %i.bi = trunc nsw i64 %indvars.iv.next.3 to i32
  %exitcond.4.not = icmp eq i32 %i.ab, 4
  br i1 %exitcond.4.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = lshr i8 %i.ad, 4
  %i.bk = and i8 %i.bj, 1
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  %i.bm = getelementptr [40 x i8], ptr %i.d, i64 %indvars.iv.next.3
  %i.bn = getelementptr i8, ptr %i.bm, i64 60
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !72
  %i.bo = add nsw i32 %i.bg, %i.bl                ; 2 uses
  %indvars.iv.next.4 = add nsw i64 %i.aa, 5       ; 2 uses
  %i.bp = add nuw nsw i32 %.0148179, 5
  %i.bq = trunc nsw i64 %indvars.iv.next.4 to i32
  %exitcond.5.not = icmp eq i32 %i.ab, 5
  br i1 %exitcond.5.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = lshr i8 %i.ad, 5
  %i.bs = and i8 %i.br, 1
  %i.bt = zext nneg i8 %i.bs to i32               ; 2 uses
  %i.bu = getelementptr [40 x i8], ptr %i.d, i64 %indvars.iv.next.4
  %i.bv = getelementptr i8, ptr %i.bu, i64 60
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !72
  %i.bw = add nsw i32 %i.bo, %i.bt                ; 2 uses
  %indvars.iv.next.5 = add nsw i64 %i.aa, 6       ; 2 uses
  %i.bx = add nuw nsw i32 %.0148179, 6
  %i.by = trunc nsw i64 %indvars.iv.next.5 to i32
  %exitcond.6.not = icmp eq i32 %i.ab, 6
  br i1 %exitcond.6.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = lshr i8 %i.ad, 6
  %i.ca = and i8 %i.bz, 1
  %i.cb = zext nneg i8 %i.ca to i32               ; 2 uses
  %i.cc = getelementptr [40 x i8], ptr %i.d, i64 %indvars.iv.next.5
  %i.cd = getelementptr i8, ptr %i.cc, i64 60
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !72
  %i.ce = add nsw i32 %i.bw, %i.cb                ; 2 uses
  %indvars.iv.next.6 = add nsw i64 %i.aa, 7       ; 2 uses
  %i.cf = add nuw nsw i32 %.0148179, 7
  %i.cg = trunc nsw i64 %indvars.iv.next.6 to i32
  %exitcond.7.not = icmp eq i32 %i.ab, 7
  br i1 %exitcond.7.not, label %.critedge, label %bb.l
end_hunk_0
