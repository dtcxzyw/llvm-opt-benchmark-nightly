inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"argo\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Argonaut Games Video\00", align 1
@ff_argo_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 249, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 2216, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr @decode_close, ptr @decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"depth == %u\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Odd dimensions\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown chunk 0x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1163346256, 1) i32 @decode_init(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  switch i32 %i.d, label %bb.c [
    i32 8, label %bb.d
    i32 24, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.b, ptr noundef nonnull @.str.2, i32 noundef %i.d) #9
  br label %.loopexit

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink64 = phi i32 [ 4, %bb.b ], [ 1, %bb.a ]
  %.sink = phi i32 [ 121, %bb.b ], [ 11, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sink64, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %i.l = and i32 %i.k, 1
  %.not40 = icmp eq i32 %i.l, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3) #9
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.m = tail call ptr @av_frame_alloc() #9       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2208
  store ptr %i.m, ptr %i.n, align 8, !tbaa !37
  %.not41 = icmp eq ptr %i.m, null
  br i1 %.not41, label %.loopexit, label %.preheader44

.preheader44:                                     ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader44, %middle.block
  %.03648 = phi i32 [ -4, %.preheader44 ], [ %i.r, %middle.block ] ; 2 uses
  %.03747 = phi i32 [ 0, %.preheader44 ], [ %2, %middle.block ] ; 2 uses
  %1 = sext i32 %.03747 to i64
  %2 = add i32 %.03747, 16
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.03648, i64 0
  %invariant.gep = getelementptr [8 x i8], ptr %i.o, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader43
  %index = phi i64 [ 0, %.preheader43 ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 -14, i32 -13>, %.preheader43 ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec, ptr %gep, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.p = icmp eq i64 %index.next, 16
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !39

.preheader42:                                     ; preds = %middle.block
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1056
  %3 = getelementptr i8, ptr %i.b, i64 1072
  br label %.preheader

middle.block:                                     ; preds = %vector.body
  %i.r = add nsw i32 %.03648, 1                   ; 2 uses
  %exitcond55.not = icmp eq i32 %i.r, 4
  br i1 %exitcond55.not, label %.preheader42, label %.preheader43, !llvm.loop !43

.preheader:                                       ; preds = %.preheader42, %.preheader
  %.03352 = phi i32 [ -5, %.preheader42 ], [ %i.u, %.preheader ] ; 3 uses
  %.03451 = phi i32 [ 0, %.preheader42 ], [ %4, %.preheader ] ; 2 uses
  %broadcast.splatinsert67 = insertelement <2 x i32> poison, i32 %.03352, i64 0 ; 2 uses
  %4 = add i32 %.03451, 4
  %5 = sext i32 %.03451 to i64                    ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %5
  %interleaved.vec72 = shufflevector <2 x i32> <i32 -5, i32 -3>, <2 x i32> %broadcast.splatinsert67, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec72, ptr %i.s, align 4, !tbaa !38
  %i.t = getelementptr [8 x i8], ptr %3, i64 %5
  %interleaved.vec72.1 = shufflevector <2 x i32> <i32 -1, i32 1>, <2 x i32> %broadcast.splatinsert67, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec72.1, ptr %i.t, align 4, !tbaa !38
  %i.u = add nsw i32 %.03352, 2
  %i.v = icmp slt i32 %.03352, 0
  br i1 %i.v, label %.preheader, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %.preheader, %bb.g, %bb.f, %bb.c
  %.039 = phi i32 [ -1163346256, %bb.c ], [ -1163346256, %bb.f ], [ -12, %bb.g ], [ 0, %.preheader ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 36 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp slt i32 %i.f, 4
  br i1 %i.g, label %decode_pal8.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bytestream2_init.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  store ptr %i.i, ptr %i.b, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !50
  %i.n = tail call i32 @ff_reget_buffer(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef 0) #9 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %decode_pal8.exit, label %bb.d

bb.d:                                             ; preds = %bytestream2_init.exit
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp slt i64 %i.t, 4
  br i1 %i.u, label %bytestream2_get_be32.exit.thread, label %bytestream2_get_be32.exit

bytestream2_get_be32.exit.thread:                 ; preds = %bb.d
  store ptr %i.p, ptr %i.b, align 8, !tbaa !48
  br label %.thread389

bytestream2_get_be32.exit:                        ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %i.v, ptr %i.b, align 8, !tbaa !51
  %i.w = load i32, ptr %i.q, align 1, !tbaa !52
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)  ; 2 uses
  switch i32 %i.x, label %.thread389 [
    i32 1346456632, label %.preheader
    i32 1296122929, label %bb.m
    i32 1096172358, label %bb.gv
    i32 1095516996, label %bb.gy
    i32 1380730182, label %bb.hh
    i32 1380730180, label %bb.hr
  ]

.preheader:                                       ; preds = %bytestream2_get_be32.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !34
  %i.ag = icmp eq i32 %i.af, 11
  br i1 %i.ag, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0243 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !38
  %i.aj = mul nsw i32 %i.ai, %.0243
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !58
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.ao = mul nsw i32 %i.an, %i.am
  %i.ap = sext i32 %i.ao to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 0, i64 %i.ap, i1 false)
  %i.aq = add nuw nsw i32 %.0243, 1               ; 2 uses
  %i.ar = load i32, ptr %i.y, align 4, !tbaa !53
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %._crit_edge, !llvm.loop !59

bb.f:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.au, i8 0, i64 1024, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1184
  %.val = load ptr, ptr %i.a, align 8, !tbaa !9   ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 4 uses
  %i.ay = load ptr, ptr %.val, align 8, !tbaa !48 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 4 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp slt i64 %i.bb, 2
  br i1 %i.bc, label %bytestream2_get_le16.exit17.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 3 uses
  store ptr %i.bd, ptr %.val, align 8, !tbaa !51
  %i.be = load i16, ptr %i.ay, align 1, !tbaa !52
  %i.bf = zext i16 %i.be to i32
  %.pre.i = ptrtoint ptr %i.bd to i64
  br label %bytestream2_get_le16.exit17.i

bytestream2_get_le16.exit17.i:                    ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.h ], [ %i.az, %bb.g ]
  %i.bg = phi ptr [ %i.bd, %bb.h ], [ %i.ax, %bb.g ] ; 2 uses
  %.0.i16.i = phi i32 [ %i.bf, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.bh = sub i64 %i.az, %.pre-phi.i
  %i.bi = icmp slt i64 %i.bh, 2
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bytestream2_get_le16.exit17.i
  store ptr %i.ax, ptr %.val, align 8, !tbaa !48
  br label %bytestream2_get_le16.exit.i

bb.j:                                             ; preds = %bytestream2_get_le16.exit17.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  store ptr %i.bj, ptr %.val, align 8, !tbaa !51
  %i.bk = load i16, ptr %i.bg, align 1, !tbaa !52
  %i.bl = zext i16 %i.bk to i32
  br label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.j, %bb.i
  %.32.val.promoted.i = phi ptr [ %i.ax, %bb.i ], [ %i.bj, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ 0, %bb.i ], [ %i.bl, %bb.j ] ; 6 uses
  %i.bm = add nuw nsw i32 %.0.i.i, %.0.i16.i
  %i.bn = icmp samesign ugt i32 %i.bm, 256
  br i1 %i.bn, label %decode_pal8.exit, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_le16.exit.i
  %i.bo = ptrtoint ptr %.32.val.promoted.i to i64
  %i.bp = sub i64 %i.az, %i.bo
  %i.bq = trunc i64 %i.bp to i32
  %i.br = mul nuw nsw i32 %.0.i.i, 3
  %i.bs = icmp sgt i32 %i.br, %i.bq
  br i1 %i.bs, label %decode_pal8.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %.not.i73 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i73, label %decode_pal8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bt = zext nneg i32 %.0.i16.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bt ; 3 uses
  %xtraiter704 = and i64 %wide.trip.count.i, 1
  %i.bu = icmp eq i32 %.0.i.i, 1
  br i1 %i.bu, label %.epil.preheader703, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter710 = and i64 %wide.trip.count.i, 510
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %i.bv = phi ptr [ %.32.val.promoted.i, %.lr.ph.i.new ], [ %i.ck, %bb.l ] ; 7 uses
  %niter711 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter711.next.1, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3 ; 2 uses
  store ptr %i.bw, ptr %.val, align 8, !tbaa !51
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !52
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !52
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.bz, %i.cd
  %i.ci = or disjoint i32 %i.ch, %i.cg
  %i.cj = or disjoint i32 %i.ci, -16777216
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
end_hunk_0
