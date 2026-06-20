inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@step_size:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !12
  %i.f = sext i16 %i.e to i32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !8
  %i.h = lshr i64 %i.g, 6
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !12
  %i.l = sext i16 %i.k to i32
  %i.m = sub nsw i32 %i.l, %i.i                   ; 4 uses
  %i.n = ashr i16 %i.b, 2
  %i.o = sext i16 %i.n to i32                     ; 2 uses
  %i.p = icmp sgt i32 %i.m, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = mul nsw i32 %i.m, %i.o
  %i.r = ashr i32 %i.q, 6
  %i.s = add nsw i32 %i.r, %i.i
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = icmp slt i32 %i.m, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = mul nsw i32 %i.m, %i.o
  %i.v = add nsw i32 %i.u, 63
  %i.w = ashr i32 %i.v, 6
  %i.x = add nsw i32 %i.w, %i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.s, %bb.d ], [ %i.x, %bb.f ], [ %i.i, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @quantize(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
.lr.ph.i:
  %i.a = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %sext = shl i32 %i.a, 16                        ; 2 uses
  %i.b = ashr i32 %sext, 17                       ; 14 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %quan.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.d = icmp eq i32 %i.b, 1
  br i1 %i.d, label %quan.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.e = icmp slt i32 %i.b, 4
  br i1 %i.e, label %quan.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.f = icmp slt i32 %i.b, 8
  br i1 %i.f, label %quan.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.g = icmp slt i32 %i.b, 16
  br i1 %i.g, label %quan.exit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.h = icmp slt i32 %i.b, 32
  br i1 %i.h, label %quan.exit, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.i = icmp slt i32 %i.b, 64
  br i1 %i.i, label %quan.exit, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.j = icmp slt i32 %i.b, 128
  br i1 %i.j, label %quan.exit, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  %i.k = icmp slt i32 %i.b, 256
  br i1 %i.k, label %quan.exit, label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %.lr.ph.i.8
  %i.l = icmp slt i32 %i.b, 512
  br i1 %i.l, label %quan.exit, label %.lr.ph.i.10

.lr.ph.i.10:                                      ; preds = %.lr.ph.i.9
  %i.m = icmp slt i32 %i.b, 1024
  br i1 %i.m, label %quan.exit, label %.lr.ph.i.11

.lr.ph.i.11:                                      ; preds = %.lr.ph.i.10
  %i.n = icmp slt i32 %i.b, 2048
  br i1 %i.n, label %quan.exit, label %.lr.ph.i.12

.lr.ph.i.12:                                      ; preds = %.lr.ph.i.11
  %i.o = icmp slt i32 %i.b, 4096
  br i1 %i.o, label %quan.exit, label %.lr.ph.i.13

.lr.ph.i.13:                                      ; preds = %.lr.ph.i.12
  %i.p = icmp slt i32 %i.b, 8192
  %spec.select = select i1 %i.p, i32 851968, i32 917504
  br label %quan.exit

quan.exit:                                        ; preds = %.lr.ph.i.13, %.lr.ph.i.12, %.lr.ph.i.11, %.lr.ph.i.10, %.lr.ph.i.9, %.lr.ph.i.8, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.0.lcssa.i = phi i32 [ 720896, %.lr.ph.i.11 ], [ 0, %.lr.ph.i ], [ 65536, %.lr.ph.i.1 ], [ 458752, %.lr.ph.i.7 ], [ 131072, %.lr.ph.i.2 ], [ 524288, %.lr.ph.i.8 ], [ 196608, %.lr.ph.i.3 ], [ %spec.select, %.lr.ph.i.13 ], [ 262144, %.lr.ph.i.4 ], [ 655360, %.lr.ph.i.10 ], [ 327680, %.lr.ph.i.5 ], [ 786432, %.lr.ph.i.12 ], [ 393216, %.lr.ph.i.6 ], [ 589824, %.lr.ph.i.9 ] ; 2 uses
  %i.q = ashr exact i32 %sext, 9
  %i.r = lshr exact i32 %.0.lcssa.i, 16
  %i.s = ashr i32 %i.q, %i.r
  %i.t = and i32 %i.s, 127
  %i.u = lshr exact i32 %.0.lcssa.i, 9
  %i.v = lshr i32 %1, 2
  %sext19 = sub nsw i32 %i.u, %i.v
  %i.w = add nsw i32 %sext19, %i.t
  %sext20 = shl i32 %i.w, 16
  %i.x = ashr exact i32 %sext20, 16
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph.i22, label %quan.exit26.thread

.lr.ph.i22:                                       ; preds = %quan.exit, %bb.a
  %.07.i23 = phi i32 [ %i.ad, %bb.a ], [ 0, %quan.exit ] ; 2 uses
  %.056.i24 = phi ptr [ %i.ac, %bb.a ], [ %2, %quan.exit ] ; 2 uses
  %i.z = load i16, ptr %.056.i24, align 2, !tbaa !13
  %i.aa = sext i16 %i.z to i32
  %i.ab = icmp slt i32 %i.x, %i.aa
  br i1 %i.ab, label %quan.exit26, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i22
  %i.ac = getelementptr inbounds nuw i8, ptr %.056.i24, i64 2
  %i.ad = add nuw nsw i32 %.07.i23, 1             ; 2 uses
  %exitcond.not.i25 = icmp eq i32 %i.ad, %3
  br i1 %exitcond.not.i25, label %quan.exit26, label %.lr.ph.i22, !llvm.loop !16

quan.exit26:                                      ; preds = %.lr.ph.i22, %bb.a
  %.0.lcssa.i21 = phi i32 [ %3, %bb.a ], [ %.07.i23, %.lr.ph.i22 ] ; 3 uses
  %i.ae = icmp slt i32 %0, 0
  br i1 %i.ae, label %bb.b, label %bb.c

quan.exit26.thread:                               ; preds = %quan.exit
  %i.af = icmp slt i32 %0, 0
  br i1 %i.af, label %bb.b, label %.thread

bb.b:                                             ; preds = %quan.exit26.thread, %quan.exit26
  %.0.lcssa.i2129 = phi i32 [ 0, %quan.exit26.thread ], [ %.0.lcssa.i21, %quan.exit26 ]
  %i.ag = shl i32 %3, 1
  %i.ah = or disjoint i32 %i.ag, 1
  %i.ai = sub i32 %i.ah, %.0.lcssa.i2129
  br label %bb.d

bb.c:                                             ; preds = %quan.exit26
  %i.aj = icmp eq i32 %.0.lcssa.i21, 0
  br i1 %i.aj, label %.thread, label %bb.d

.thread:                                          ; preds = %quan.exit26.thread, %bb.c
  %i.ak = shl i32 %3, 1
  %i.al = or disjoint i32 %i.ak, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  %.0 = phi i32 [ %i.ai, %bb.b ], [ %i.al, %.thread ], [ %.0.lcssa.i21, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -32768, 32641) i32 @reconstruct(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = lshr i32 %2, 2
  %i.b = add i32 %i.a, %1                         ; 3 uses
  %sext.mask = and i32 %i.b, 32768
  %.not = icmp eq i32 %sext.mask, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp eq i32 %0, 0
  %i.c = select i1 %.not14, i32 0, i32 -32768
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 7
  %i.e = and i32 %i.d, 15
  %i.f = shl i32 %i.b, 7
  %i.g = and i32 %i.f, 16256
  %i.h = or disjoint i32 %i.g, 16384
  %i.i = sub nsw i32 14, %i.e
  %i.j = lshr i32 %i.h, %i.i                      ; 2 uses
  %.not13 = icmp eq i32 %0, 0
  %i.k = or disjoint i32 %i.j, -32768
  %i.l = select i1 %.not13, i32 %i.j, i32 %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.l, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef initializes((8, 10)) %7) local_unnamed_addr #7 {
bb.a:
  %.lobit = lshr i32 %6, 31                       ; 2 uses
  %i.a = trunc nuw nsw i32 %.lobit to i16         ; 2 uses
  %i.b = and i32 %4, 32767                        ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !14
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %7, align 8, !tbaa !8      ; 2 uses
  %i.g = lshr i64 %i.f, 15                        ; 2 uses
  %i.h = trunc i64 %i.g to i16
  %i.i = icmp sgt i16 %i.h, 9
  %i.j = trunc i64 %i.f to i32
  %i.k = lshr i32 %i.j, 10
  %i.l = and i32 %i.k, 31
  %i.m = or disjoint i32 %i.l, 32
  %i.n = trunc i64 %i.g to i32
  %i.o = and i32 %i.n, 65535
  %i.p = shl i32 %i.m, %i.o
  %i.q = shl i32 %i.p, 16
  %i.r = ashr exact i32 %i.q, 16
  %i.s = select i1 %i.i, i32 31744, i32 %i.r      ; 2 uses
  %i.t = lshr i32 %i.s, 1
  %i.u = add i32 %i.t, %i.s
  %i.v = shl i32 %i.u, 15
  %i.w = ashr i32 %i.v, 16
  %.not = icmp sgt i32 %i.b, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi i1 [ false, %bb.a ], [ %.not, %bb.b ] ; 4 uses
  %i.y = sub nsw i32 %2, %1
  %i.z = lshr i32 %i.y, 5
  %i.aa = add i32 %i.z, %1                        ; 2 uses
  %i.ab = trunc i32 %i.aa to i16                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i16 %i.ab, ptr %i.ac, align 8, !tbaa !12
  %sext = shl i32 %i.aa, 16
  %i.ad = ashr exact i32 %sext, 16                ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 544
  br i1 %i.ae, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = icmp samesign ugt i32 %i.ad, 5120
  br i1 %i.af, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi i16 [ 544, %bb.c ], [ 5120, %bb.d ] ; 2 uses
  store i16 %.sink, ptr %i.ac, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.ag = phi i16 [ %i.ab, %bb.d ], [ %.sink, %.sink.split ]
  %i.ah = sext i16 %i.ag to i64
  %i.ai = load i64, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = ashr i64 %i.aj, 6
  %i.al = add i64 %i.ai, %i.ah
  %i.am = add i64 %i.al, %i.ak
  store i64 %i.am, ptr %7, align 8, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 18 ; 3 uses
  br i1 %i.x, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i16, ptr %9, align 2, !tbaa !13    ; 2 uses
  %i.ao = ashr i16 %i.an, 7
  %i.ap = sub i16 %i.an, %i.ao                    ; 5 uses
  %.not167 = icmp eq i32 %6, 0
  br i1 %.not167, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %11 = load i16, ptr %10, align 8, !tbaa !13
  %.not168 = icmp eq i16 %11, %i.a                ; 2 uses
  %i.aq = load i16, ptr %8, align 8, !tbaa !13    ; 4 uses
  %i.ar = sub i16 0, %i.aq
  %i.as = select i1 %.not168, i16 %i.ar, i16 %i.aq ; 3 uses
  %i.at = icmp slt i16 %i.as, -8191
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = add i16 %i.ap, -256
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.av = icmp sgt i16 %i.as, 8191
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = add i16 %i.ap, 255
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ax = ashr i16 %i.as, 5
  %i.ay = add i16 %i.ax, %i.ap
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.0156 = phi i16 [ %i.au, %bb.h ], [ %i.aw, %bb.j ], [ %i.ay, %bb.k ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 34
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !13
  %i.bb = sext i16 %i.ba to i32
  %.not169 = icmp eq i32 %.lobit, %i.bb
  br i1 %.not169, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp slt i16 %.0156, -12159
  br i1 %i.bc, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = tail call i16 @llvm.smin.i16(i16 %.0156, i16 12416)
  %spec.select = add nsw i16 %i.bd, -128
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.be = icmp slt i16 %.0156, -12415
  br i1 %i.be, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = tail call i16 @llvm.smin.i16(i16 %.0156, i16 12160)
  %spec.select176 = add nsw i16 %i.bf, 128
  br label %bb.r

bb.q:                                             ; preds = %bb.f
  store i16 %i.ap, ptr %9, align 2, !tbaa !13
  %i.bg = load i16, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.bh = ashr i16 %i.bg, 8
  %i.bi = sub i16 %i.bg, %i.bh
  br label %bb.u

bb.r:                                             ; preds = %bb.p, %bb.n, %bb.o, %bb.m
  %.1157.ph = phi i16 [ -12288, %bb.o ], [ %spec.select176, %bb.p ], [ %spec.select, %bb.n ], [ -12288, %bb.m ] ; 3 uses
  store i16 %.1157.ph, ptr %9, align 2, !tbaa !13
  %i.bj = ashr i16 %i.aq, 8
  %i.bk = sub i16 %i.aq, %i.bj                    ; 2 uses
  br i1 %.not168, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = add i16 %i.bk, 192
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bm = add i16 %i.bk, -192
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.s, %bb.t
  %.sink216 = phi i16 [ %i.bi, %bb.q ], [ %i.bl, %bb.s ], [ %i.bm, %bb.t ] ; 3 uses
  %.1157191 = phi i16 [ %i.ap, %bb.q ], [ %.1157.ph, %bb.s ], [ %.1157.ph, %bb.t ] ; 3 uses
  store i16 %.sink216, ptr %8, align 8, !tbaa !13
  %i.bn = sub i16 15360, %.1157191                ; 3 uses
  %i.bo = sext i16 %.sink216 to i32
  %i.bp = sext i16 %i.bn to i32
  %i.bq = sub nsw i32 0, %i.bp                    ; 2 uses
  %i.br = icmp slt i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = trunc i32 %i.bq to i16
  br label %.sink.split217

bb.w:                                             ; preds = %bb.u
  %i.bt = icmp sgt i16 %.sink216, %i.bn
  br i1 %i.bt, label %.sink.split217, label %bb.x

.sink.split217:                                   ; preds = %bb.w, %bb.v
  %.sink218 = phi i16 [ %i.bs, %bb.v ], [ %i.bn, %bb.w ]
  store i16 %.sink218, ptr %8, align 8, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %.sink.split217, %bb.w
  %i.bu = icmp eq i32 %0, 5                       ; 7 uses
  %.not170 = icmp eq i32 %i.b, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !13 ; 3 uses
  br i1 %.not170, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 36
  %. = select i1 %i.bu, i16 9, i16 8
  %.sink225 = select i1 %i.bu, i16 9, i16 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 22
  %.sink233 = select i1 %i.bu, i16 9, i16 8
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sink241 = select i1 %i.bu, i16 9, i16 8
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !13 ; 2 uses
  %i.cc = load i16, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.cd = load i16, ptr %i.by, align 2, !tbaa !13 ; 2 uses
  %i.ce = ashr i16 %i.cb, %.sink241
  %i.cf = ashr i16 %i.cc, %.sink233
  %i.cg = ashr i16 %i.cd, %.sink225
  %i.ch = ashr i16 %i.bw, %.
  %i.ci = insertelement <4 x i16> poison, i16 %i.bw, i64 0
  %i.cj = insertelement <4 x i16> %i.ci, i16 %i.cd, i64 1
  %i.ck = insertelement <4 x i16> %i.cj, i16 %i.cc, i64 2
  %i.cl = insertelement <4 x i16> %i.ck, i16 %i.cb, i64 3
  %i.cm = insertelement <4 x i16> poison, i16 %i.ch, i64 0
  %i.cn = insertelement <4 x i16> %i.cm, i16 %i.cg, i64 1
  %i.co = insertelement <4 x i16> %i.cn, i16 %i.cf, i64 2
  %i.cp = insertelement <4 x i16> %i.co, i16 %i.ce, i64 3
  %i.cq = sub <4 x i16> %i.cl, %i.cp
  %i.cr = load <4 x i16>, ptr %i.bx, align 4, !tbaa !13
  %i.cs = sext <4 x i16> %i.cr to <4 x i32>
  %i.ct = insertelement <4 x i32> poison, i32 %4, i64 0
  %i.cu = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cv = xor <4 x i32> %i.cu, %i.cs
  %i.cw = icmp sgt <4 x i32> %i.cv, splat (i32 -1)
  %i.cx = select <4 x i1> %i.cw, <4 x i16> splat (i16 128), <4 x i16> splat (i16 -128)
  %i.cy = add <4 x i16> %i.cq, %i.cx
  store <4 x i16> %i.cy, ptr %i.bv, align 4, !tbaa !13
  %.sink249 = select i1 %i.bu, i16 9, i16 8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !13 ; 2 uses
  %i.db = ashr i16 %i.da, %.sink249
  %i.dc = sub i16 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !13
  %i.df = sext i16 %i.de to i32
  %i.dg = xor i32 %4, %i.df
  %i.dh = icmp sgt i32 %i.dg, -1
  %.sink253 = select i1 %i.dh, i16 128, i16 -128
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.dj = add i16 %i.dc, %.sink253
  store i16 %i.dj, ptr %i.di, align 4, !tbaa !13
  %.sink257 = select i1 %i.bu, i16 9, i16 8
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 30
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !13 ; 2 uses
  %i.dm = ashr i16 %i.dl, %.sink257
  %i.dn = sub i16 %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 46
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !13
  %i.dq = sext i16 %i.dp to i32
  %i.dr = xor i32 %4, %i.dq
  %i.ds = icmp sgt i32 %i.dr, -1
  %.sink289 = select i1 %i.ds, i16 128, i16 -128
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 30
  %i.du = add i16 %i.dn, %.sink289
  store i16 %i.du, ptr %i.dt, align 2, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %scevgep214 = getelementptr i8, ptr %7, i64 38
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %scevgep214, ptr noundef nonnull align 2 dereferenceable(10) %i.dv, i64 10, i1 false), !tbaa !13
  br label %.lr.ph.i.preheader

.split.us:                                        ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 22
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %.295 = select i1 %i.bu, i16 9, i16 8           ; 2 uses
  %i.dz = load i16, ptr %i.dx, align 2, !tbaa !13
  %i.ea = load <2 x i16>, ptr %i.dw, align 2, !tbaa !13
  %i.eb = shufflevector <2 x i16> %i.ea, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ec = insertelement <4 x i16> %i.eb, i16 %i.bw, i64 0
  %i.ed = insertelement <4 x i16> %i.ec, i16 %i.dz, i64 3 ; 2 uses
  %i.ee = insertelement <4 x i16> poison, i16 %.295, i64 0
  %i.ef = shufflevector <4 x i16> %i.ee, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.eg = ashr <4 x i16> %i.ed, %i.ef
  %i.eh = sub <4 x i16> %i.ed, %i.eg
  store <4 x i16> %i.eh, ptr %i.bv, align 4, !tbaa !13
  %i.ei = load <2 x i16>, ptr %i.dy, align 4, !tbaa !13 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %.295, i64 0
  %i.ek = shufflevector <2 x i16> %i.ej, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.el = ashr <2 x i16> %i.ei, %i.ek
  %i.em = sub <2 x i16> %i.ei, %i.el
  store <2 x i16> %i.em, ptr %i.dy, align 4, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %scevgep208 = getelementptr i8, ptr %7, i64 38
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %scevgep208, ptr noundef nonnull align 2 dereferenceable(10) %i.en, i64 10, i1 false), !tbaa !13
  br label %bb.y

.loopexit:                                        ; preds = %bb.e
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  %scevgep = getelementptr i8, ptr %7, i64 38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %scevgep, ptr noundef nonnull align 2 dereferenceable(10) %i.eo, i64 10, i1 false), !tbaa !13
  %i.ep = icmp eq i32 %i.b, 0
  br i1 %i.ep, label %bb.y, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split.preheader, %.loopexit
  %i.eq = phi ptr [ %i.dv, %.split.preheader ], [ %i.eo, %.loopexit ]
  %.2215 = phi i16 [ %.1157191, %.split.preheader ], [ undef, %.loopexit ]
  switch i32 %i.b, label %.lr.ph.i.2 [
    i32 0, label %quan.exit
    i32 1, label %quan.exit.fold.split
  ]

bb.y:                                             ; preds = %.split.us, %.loopexit
  %i.er = phi ptr [ %i.en, %.split.us ], [ %i.eo, %.loopexit ]
  %.2210 = phi i16 [ %.1157191, %.split.us ], [ undef, %.loopexit ]
  %i.es = icmp sgt i32 %4, -1
  %i.et = select i1 %i.es, i16 32, i16 -992
  br label %bb.z

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.preheader
  %i.eu = icmp samesign ult i32 %i.b, 4
  br i1 %i.eu, label %quan.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ev = icmp samesign ult i32 %i.b, 8
  br i1 %i.ev, label %quan.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.ew = icmp samesign ult i32 %i.b, 16
  br i1 %i.ew, label %quan.exit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.ex = icmp samesign ult i32 %i.b, 32
  br i1 %i.ex, label %quan.exit, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.ey = icmp samesign ult i32 %i.b, 64
  br i1 %i.ey, label %quan.exit, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.ez = icmp samesign ult i32 %i.b, 128
  br i1 %i.ez, label %quan.exit, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  %i.fa = icmp samesign ult i32 %i.b, 256
  br i1 %i.fa, label %quan.exit, label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %.lr.ph.i.8
  %i.fb = icmp samesign ult i32 %i.b, 512
  br i1 %i.fb, label %quan.exit, label %.lr.ph.i.10

.lr.ph.i.10:                                      ; preds = %.lr.ph.i.9
  %i.fc = icmp samesign ult i32 %i.b, 1024
  br i1 %i.fc, label %quan.exit, label %.lr.ph.i.11

.lr.ph.i.11:                                      ; preds = %.lr.ph.i.10
  %i.fd = icmp samesign ult i32 %i.b, 2048
  br i1 %i.fd, label %quan.exit, label %.lr.ph.i.12

.lr.ph.i.12:                                      ; preds = %.lr.ph.i.11
  %i.fe = icmp samesign ult i32 %i.b, 4096
  br i1 %i.fe, label %quan.exit, label %.lr.ph.i.13

.lr.ph.i.13:                                      ; preds = %.lr.ph.i.12
  %i.ff = icmp samesign ult i32 %i.b, 8192
  br i1 %i.ff, label %quan.exit, label %.lr.ph.i.14

.lr.ph.i.14:                                      ; preds = %.lr.ph.i.13
  %i.fg = icmp samesign ult i32 %i.b, 16384
  %spec.select290 = select i1 %i.fg, i32 917504, i32 983040
  br label %quan.exit

quan.exit.fold.split:                             ; preds = %.lr.ph.i.preheader
  br label %quan.exit

quan.exit:                                        ; preds = %.lr.ph.i.preheader, %quan.exit.fold.split, %.lr.ph.i.14, %.lr.ph.i.13, %.lr.ph.i.12, %.lr.ph.i.11, %.lr.ph.i.10, %.lr.ph.i.9, %.lr.ph.i.8, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2
  %.0.lcssa.i = phi i32 [ 720896, %.lr.ph.i.11 ], [ %i.b, %.lr.ph.i.preheader ], [ 458752, %.lr.ph.i.7 ], [ %spec.select290, %.lr.ph.i.14 ], [ 131072, %.lr.ph.i.2 ], [ 524288, %.lr.ph.i.8 ], [ 196608, %.lr.ph.i.3 ], [ 851968, %.lr.ph.i.13 ], [ 262144, %.lr.ph.i.4 ], [ 655360, %.lr.ph.i.10 ], [ 327680, %.lr.ph.i.5 ], [ 786432, %.lr.ph.i.12 ], [ 393216, %.lr.ph.i.6 ], [ 589824, %.lr.ph.i.9 ], [ 65536, %quan.exit.fold.split ] ; 2 uses
  %i.fh = lshr exact i32 %.0.lcssa.i, 16
  %i.fi = lshr exact i32 %.0.lcssa.i, 10          ; 2 uses
  %i.fj = shl nuw nsw i32 %i.b, 6
  %i.fk = lshr i32 %i.fj, %i.fh
  %i.fl = or disjoint i32 %i.fi, 64512
  %i.fm = icmp slt i32 %4, 0
  %.v = select i1 %i.fm, i32 %i.fl, i32 %i.fi
  %i.fn = add nuw nsw i32 %.v, %i.fk
  %i.fo = trunc i32 %i.fn to i16
  br label %bb.z

bb.z:                                             ; preds = %quan.exit, %bb.y
  %i.fp = phi ptr [ %i.eq, %quan.exit ], [ %i.er, %bb.y ]
  %.2209 = phi i16 [ %.2215, %quan.exit ], [ %.2210, %bb.y ]
  %storemerge206 = phi i16 [ %i.fo, %quan.exit ], [ %i.et, %bb.y ]
  store i16 %storemerge206, ptr %i.fp, align 4, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.fr = load i16, ptr %i.fq, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 50
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !13
  %i.ft = icmp eq i32 %5, 0
  br i1 %i.ft, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fu = icmp sgt i32 %5, 0
  br i1 %i.fu, label %.lr.ph.i177.1, label %bb.ab

.lr.ph.i177.1:                                    ; preds = %bb.aa
  %i.fv = icmp eq i32 %5, 1
  br i1 %i.fv, label %quan.exit182, label %.lr.ph.i177.2

.lr.ph.i177.2:                                    ; preds = %.lr.ph.i177.1
  %i.fw = icmp slt i32 %5, 4
  br i1 %i.fw, label %quan.exit182, label %.lr.ph.i177.3

.lr.ph.i177.3:                                    ; preds = %.lr.ph.i177.2
  %i.fx = icmp slt i32 %5, 8
  br i1 %i.fx, label %quan.exit182, label %.lr.ph.i177.4

.lr.ph.i177.4:                                    ; preds = %.lr.ph.i177.3
  %i.fy = icmp slt i32 %5, 16
  br i1 %i.fy, label %quan.exit182, label %.lr.ph.i177.5

.lr.ph.i177.5:                                    ; preds = %.lr.ph.i177.4
  %i.fz = icmp slt i32 %5, 32
  br i1 %i.fz, label %quan.exit182, label %.lr.ph.i177.6

.lr.ph.i177.6:                                    ; preds = %.lr.ph.i177.5
  %i.ga = icmp slt i32 %5, 64
  br i1 %i.ga, label %quan.exit182, label %.lr.ph.i177.7

.lr.ph.i177.7:                                    ; preds = %.lr.ph.i177.6
  %i.gb = icmp slt i32 %5, 128
  br i1 %i.gb, label %quan.exit182, label %.lr.ph.i177.8

.lr.ph.i177.8:                                    ; preds = %.lr.ph.i177.7
  %i.gc = icmp slt i32 %5, 256
  br i1 %i.gc, label %quan.exit182, label %.lr.ph.i177.9

.lr.ph.i177.9:                                    ; preds = %.lr.ph.i177.8
  %i.gd = icmp slt i32 %5, 512
  br i1 %i.gd, label %quan.exit182, label %.lr.ph.i177.10

.lr.ph.i177.10:                                   ; preds = %.lr.ph.i177.9
  %i.ge = icmp slt i32 %5, 1024
  br i1 %i.ge, label %quan.exit182, label %.lr.ph.i177.11

.lr.ph.i177.11:                                   ; preds = %.lr.ph.i177.10
  %i.gf = icmp slt i32 %5, 2048
  br i1 %i.gf, label %quan.exit182, label %.lr.ph.i177.12

.lr.ph.i177.12:                                   ; preds = %.lr.ph.i177.11
  %i.gg = icmp slt i32 %5, 4096
  br i1 %i.gg, label %quan.exit182, label %.lr.ph.i177.13

.lr.ph.i177.13:                                   ; preds = %.lr.ph.i177.12
  %i.gh = icmp slt i32 %5, 8192
  br i1 %i.gh, label %quan.exit182, label %.lr.ph.i177.14

.lr.ph.i177.14:                                   ; preds = %.lr.ph.i177.13
  %i.gi = icmp slt i32 %5, 16384
  %spec.select291 = select i1 %i.gi, i32 917504, i32 983040
  br label %quan.exit182

quan.exit182:                                     ; preds = %.lr.ph.i177.14, %.lr.ph.i177.13, %.lr.ph.i177.12, %.lr.ph.i177.11, %.lr.ph.i177.10, %.lr.ph.i177.9, %.lr.ph.i177.8, %.lr.ph.i177.7, %.lr.ph.i177.6, %.lr.ph.i177.5, %.lr.ph.i177.4, %.lr.ph.i177.3, %.lr.ph.i177.2, %.lr.ph.i177.1
  %.0.lcssa.i181 = phi i32 [ 720896, %.lr.ph.i177.11 ], [ 458752, %.lr.ph.i177.7 ], [ 65536, %.lr.ph.i177.1 ], [ %spec.select291, %.lr.ph.i177.14 ], [ 131072, %.lr.ph.i177.2 ], [ 524288, %.lr.ph.i177.8 ], [ 196608, %.lr.ph.i177.3 ], [ 851968, %.lr.ph.i177.13 ], [ 262144, %.lr.ph.i177.4 ], [ 655360, %.lr.ph.i177.10 ], [ 327680, %.lr.ph.i177.5 ], [ 786432, %.lr.ph.i177.12 ], [ 393216, %.lr.ph.i177.6 ], [ 589824, %.lr.ph.i177.9 ] ; 2 uses
  %i.gj = lshr exact i32 %.0.lcssa.i181, 16
  %i.gk = lshr exact i32 %.0.lcssa.i181, 10
  %i.gl = shl i32 %5, 6
  %i.gm = ashr i32 %i.gl, %i.gj
  %i.gn = add i32 %i.gm, %i.gk
  %i.go = trunc i32 %i.gn to i16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gp = icmp samesign ugt i32 %5, -32768
  br i1 %i.gp, label %.lr.ph.i183.1, label %bb.ac

.lr.ph.i183.1:                                    ; preds = %bb.ab
  %i.gq = icmp eq i32 %5, -1
  br i1 %i.gq, label %quan.exit188, label %.lr.ph.i183.2

.lr.ph.i183.2:                                    ; preds = %.lr.ph.i183.1
  %i.gr = icmp sgt i32 %5, -4
  br i1 %i.gr, label %quan.exit188, label %.lr.ph.i183.3

.lr.ph.i183.3:                                    ; preds = %.lr.ph.i183.2
  %i.gs = icmp sgt i32 %5, -8
  br i1 %i.gs, label %quan.exit188, label %.lr.ph.i183.4

.lr.ph.i183.4:                                    ; preds = %.lr.ph.i183.3
  %i.gt = icmp sgt i32 %5, -16
  br i1 %i.gt, label %quan.exit188, label %.lr.ph.i183.5

.lr.ph.i183.5:                                    ; preds = %.lr.ph.i183.4
  %i.gu = icmp sgt i32 %5, -32
  br i1 %i.gu, label %quan.exit188, label %.lr.ph.i183.6

.lr.ph.i183.6:                                    ; preds = %.lr.ph.i183.5
  %i.gv = icmp sgt i32 %5, -64
  br i1 %i.gv, label %quan.exit188, label %.lr.ph.i183.7

.lr.ph.i183.7:                                    ; preds = %.lr.ph.i183.6
end_hunk_0
