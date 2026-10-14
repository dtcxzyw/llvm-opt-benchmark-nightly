Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_range_pack_kernel?download=true
inline.NumInlined: 10
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rangePackDecode(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = ptrtoaddr ptr %2 to i64                    ; 4 uses
  %7 = ptrtoaddr ptr %0 to i64                    ; 4 uses
  %i.a = icmp eq i64 %3, 8
  %i.b = icmp eq i64 %1, 8                        ; 4 uses
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not13.i = icmp eq i64 %4, 0
  br i1 %.not13.i, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check469 = icmp ult i64 %4, 6
  %i.c = sub i64 %6, %7
  %diff.check467 = icmp ugt i64 %i.c, -32
  %or.cond482 = or i1 %min.iters.check469, %diff.check467
  br i1 %or.cond482, label %.lr.ph.i.preheader486, label %vector.ph470

vector.ph470:                                     ; preds = %.lr.ph.i.preheader
  %n.vec471 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert472 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat473 = shufflevector <2 x i64> %broadcast.splatinsert472, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph470
  %index475 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body474 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index475 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load476 = load <2 x i64>, ptr %i.d, align 8, !tbaa !68
  %wide.load477 = load <2 x i64>, ptr %i.e, align 8, !tbaa !68
  %i.f = add <2 x i64> %wide.load476, %broadcast.splat473
  %i.g = add <2 x i64> %wide.load477, %broadcast.splat473
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index475 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !68
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !68
  %index.next478 = add nuw i64 %index475, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.j, label %middle.block479, label %vector.body474, !llvm.loop !11

middle.block479:                                  ; preds = %vector.body474
  %cmp.n480 = icmp eq i64 %4, %n.vec471
  br i1 %cmp.n480, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i.preheader486

.lr.ph.i.preheader486:                            ; preds = %.lr.ph.i.preheader, %middle.block479
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec471, %middle.block479 ] ; 3 uses
  %xtraiter538 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod539.not = icmp eq i64 %xtraiter538, 0
  br i1 %lcmp.mod539.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader486, %.lr.ph.i.prol
  %.012.i.prol = phi i64 [ %i.o, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader486 ] ; 3 uses
  %prol.iter540 = phi i64 [ %prol.iter540.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader486 ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.012.i.prol
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = add i64 %i.l, %5
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.012.i.prol
  store i64 %i.m, ptr %i.n, align 8, !tbaa !68
  %i.o = add nuw i64 %.012.i.prol, 1              ; 2 uses
  %prol.iter540.next = add i64 %prol.iter540, 1   ; 2 uses
  %prol.iter540.cmp.not = icmp eq i64 %prol.iter540.next, %xtraiter538
  br i1 %prol.iter540.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !12

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader486
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader486 ], [ %i.o, %.lr.ph.i.prol ]
  %i.p = sub i64 %.012.i.ph, %4
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.012.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !68
  %i.t = add i64 %i.s, %5
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.012.i
  store i64 %i.t, ptr %i.u, align 8, !tbaa !68
  %i.v = add nuw i64 %.012.i, 1                   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68
  %i.y = add i64 %i.x, %5
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  store i64 %i.y, ptr %i.z, align 8, !tbaa !68
  %i.aa = add nuw i64 %.012.i, 2                  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !68
  %i.ad = add i64 %i.ac, %5
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !68
  %i.af = add nuw i64 %.012.i, 3                  ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !68
  %i.ai = add i64 %i.ah, %5
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !68
  %i.ak = add nuw i64 %.012.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ak, %4
  br i1 %exitcond.not.i.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i, !llvm.loop !13

bb.c:                                             ; preds = %bb.b
  %i.al = shl i64 %4, 3
  br label %rangeUnpack_uint64_t_uint64_t.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.am = icmp eq i64 %3, 4                       ; 2 uses
  %or.cond3 = and i1 %i.b, %i.am
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not.i78 = icmp eq i64 %5, 0
  %.not23.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i78, label %.preheader.i81, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.e
  br i1 %.not23.i, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %.preheader17.i
  %min.iters.check441 = icmp ult i64 %4, 4
  br i1 %min.iters.check441, label %.lr.ph.i79.preheader489, label %vector.ph442

vector.ph442:                                     ; preds = %.lr.ph.i79.preheader
  %n.vec443 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert444 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat445 = shufflevector <2 x i64> %broadcast.splatinsert444, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph442
  %index447 = phi i64 [ 0, %vector.ph442 ], [ %index.next450, %vector.body446 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index447 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %wide.load448 = load <2 x i32>, ptr %i.an, align 4, !tbaa !73
  %wide.load449 = load <2 x i32>, ptr %i.ao, align 4, !tbaa !73
  %i.ap = zext <2 x i32> %wide.load448 to <2 x i64>
  %i.aq = zext <2 x i32> %wide.load449 to <2 x i64>
  %i.ar = add <2 x i64> %broadcast.splat445, %i.ap
  %i.as = add <2 x i64> %broadcast.splat445, %i.aq
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index447 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x i64> %i.ar, ptr %i.at, align 8, !tbaa !68
  store <2 x i64> %i.as, ptr %i.au, align 8, !tbaa !68
  %index.next450 = add nuw i64 %index447, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.av, label %middle.block451, label %vector.body446, !llvm.loop !14

middle.block451:                                  ; preds = %vector.body446
  %cmp.n452 = icmp eq i64 %4, %n.vec443
  br i1 %cmp.n452, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i79.preheader489

.lr.ph.i79.preheader489:                          ; preds = %.lr.ph.i79.preheader, %middle.block451
  %.01519.i.ph = phi i64 [ 0, %.lr.ph.i79.preheader ], [ %n.vec443, %middle.block451 ]
  br label %.lr.ph.i79

.preheader.i81:                                   ; preds = %bb.e
  br i1 %.not23.i, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i.preheader

.lr.ph21.i.preheader:                             ; preds = %.preheader.i81
  %min.iters.check455 = icmp ult i64 %4, 4
  br i1 %min.iters.check455, label %.lr.ph21.i.preheader487, label %vector.ph456

vector.ph456:                                     ; preds = %.lr.ph21.i.preheader
  %n.vec457 = and i64 %4, -4                      ; 3 uses
  br label %vector.body458

vector.body458:                                   ; preds = %vector.body458, %vector.ph456
  %index459 = phi i64 [ 0, %vector.ph456 ], [ %index.next462, %vector.body458 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index459 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %wide.load460 = load <2 x i32>, ptr %i.aw, align 4, !tbaa !73
  %wide.load461 = load <2 x i32>, ptr %i.ax, align 4, !tbaa !73
  %i.ay = zext <2 x i32> %wide.load460 to <2 x i64>
  %i.az = zext <2 x i32> %wide.load461 to <2 x i64>
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index459 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %i.ay, ptr %i.ba, align 8, !tbaa !68
  store <2 x i64> %i.az, ptr %i.bb, align 8, !tbaa !68
  %index.next462 = add nuw i64 %index459, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next462, %n.vec457
  br i1 %i.bc, label %middle.block463, label %vector.body458, !llvm.loop !15

middle.block463:                                  ; preds = %vector.body458
  %cmp.n464 = icmp eq i64 %4, %n.vec457
  br i1 %cmp.n464, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i.preheader487

.lr.ph21.i.preheader487:                          ; preds = %.lr.ph21.i.preheader, %middle.block463
  %.020.i.ph = phi i64 [ 0, %.lr.ph21.i.preheader ], [ %n.vec457, %middle.block463 ]
  br label %.lr.ph21.i

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader489, %.lr.ph.i79
  %.01519.i = phi i64 [ %i.bi, %.lr.ph.i79 ], [ %.01519.i.ph, %.lr.ph.i79.preheader489 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01519.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !73
  %i.bf = zext i32 %i.be to i64
  %i.bg = add i64 %5, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !68
  %i.bi = add nuw i64 %.01519.i, 1                ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %i.bi, %4
  br i1 %exitcond.not.i80, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i79, !llvm.loop !16

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader487, %.lr.ph21.i
  %.020.i = phi i64 [ %i.bn, %.lr.ph21.i ], [ %.020.i.ph, %.lr.ph21.i.preheader487 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.020.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !73
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !68
  %i.bn = add nuw i64 %.020.i, 1                  ; 2 uses
  %exitcond25.not.i = icmp eq i64 %i.bn, %4
  br i1 %exitcond25.not.i, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i, !llvm.loop !17

bb.f:                                             ; preds = %bb.d
  %i.bo = icmp eq i64 %3, 2                       ; 3 uses
  %or.cond5 = and i1 %i.b, %i.bo
  br i1 %or.cond5, label %bb.g, label %bb.h

end_hunk_0
begin_hunk_1_@rangePackDecode:bb.a
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index421 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %wide.load422 = load <2 x i16>, ptr %i.bp, align 2, !tbaa !75
  %wide.load423 = load <2 x i16>, ptr %i.bq, align 2, !tbaa !75
  %i.br = zext <2 x i16> %wide.load422 to <2 x i64>
  %i.bs = zext <2 x i16> %wide.load423 to <2 x i64>
  %i.bt = add <2 x i64> %broadcast.splat419, %i.br
  %i.bu = add <2 x i64> %broadcast.splat419, %i.bs
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index421 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x i64> %i.bt, ptr %i.bv, align 8, !tbaa !68
  store <2 x i64> %i.bu, ptr %i.bw, align 8, !tbaa !68
  %index.next424 = add nuw i64 %index421, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.bx, label %middle.block425, label %vector.body420, !llvm.loop !18

middle.block425:                                  ; preds = %vector.body420
  %cmp.n426 = icmp eq i64 %4, %n.vec417
  br i1 %cmp.n426, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i85.preheader493

.lr.ph.i85.preheader493:                          ; preds = %.lr.ph.i85.preheader, %middle.block425
  %.01519.i86.ph = phi i64 [ 0, %.lr.ph.i85.preheader ], [ %n.vec417, %middle.block425 ]
  br label %.lr.ph.i85

.preheader.i88:                                   ; preds = %bb.g
  br i1 %.not23.i83, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i89.preheader

.lr.ph21.i89.preheader:                           ; preds = %.preheader.i88
  %min.iters.check429 = icmp ult i64 %4, 4
  br i1 %min.iters.check429, label %.lr.ph21.i89.preheader491, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph21.i89.preheader
  %n.vec431 = and i64 %4, -4                      ; 3 uses
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph430
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next436, %vector.body432 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index433 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %wide.load434 = load <2 x i16>, ptr %i.by, align 2, !tbaa !75
  %wide.load435 = load <2 x i16>, ptr %i.bz, align 2, !tbaa !75
  %i.ca = zext <2 x i16> %wide.load434 to <2 x i64>
  %i.cb = zext <2 x i16> %wide.load435 to <2 x i64>
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index433 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !68
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !68
  %index.next436 = add nuw i64 %index433, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next436, %n.vec431
  br i1 %i.ce, label %middle.block437, label %vector.body432, !llvm.loop !19

middle.block437:                                  ; preds = %vector.body432
  %cmp.n438 = icmp eq i64 %4, %n.vec431
  br i1 %cmp.n438, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i89.preheader491

.lr.ph21.i89.preheader491:                        ; preds = %.lr.ph21.i89.preheader, %middle.block437
  %.020.i90.ph = phi i64 [ 0, %.lr.ph21.i89.preheader ], [ %n.vec431, %middle.block437 ]
  br label %.lr.ph21.i89

.lr.ph.i85:                                       ; preds = %.lr.ph.i85.preheader493, %.lr.ph.i85
  %.01519.i86 = phi i64 [ %i.ck, %.lr.ph.i85 ], [ %.01519.i86.ph, %.lr.ph.i85.preheader493 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.01519.i86
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !75
  %i.ch = zext i16 %i.cg to i64
  %i.ci = add i64 %5, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i86
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !68
  %i.ck = add nuw i64 %.01519.i86, 1              ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %i.ck, %4
  br i1 %exitcond.not.i87, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i85, !llvm.loop !20

.lr.ph21.i89:                                     ; preds = %.lr.ph21.i89.preheader491, %.lr.ph21.i89
  %.020.i90 = phi i64 [ %i.cp, %.lr.ph21.i89 ], [ %.020.i90.ph, %.lr.ph21.i89.preheader491 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.020.i90
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !75
  %i.cn = zext i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i90
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !68
  %i.cp = add nuw i64 %.020.i90, 1                ; 2 uses
  %exitcond25.not.i91 = icmp eq i64 %i.cp, %4
  br i1 %exitcond25.not.i91, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i89, !llvm.loop !21

bb.h:                                             ; preds = %bb.f
  %i.cq = icmp eq i64 %3, 1                       ; 4 uses
  %or.cond7 = and i1 %i.b, %i.cq
  br i1 %or.cond7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i92 = icmp eq i64 %5, 0
  %.not23.i93 = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i92, label %.preheader.i98, label %.preheader17.i94

.preheader17.i94:                                 ; preds = %bb.i
  br i1 %.not23.i93, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %.preheader17.i94
  %i.cr = add i64 %4, -1
  %xtraiter529 = and i64 %4, 3                    ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 3
  br i1 %i.cs, label %.lr.ph.i95.epil.preheader, label %.lr.ph.i95.preheader.new

.lr.ph.i95.preheader.new:                         ; preds = %.lr.ph.i95.preheader
  %unroll_iter = and i64 %4, -4
  br label %.lr.ph.i95

.preheader.i98:                                   ; preds = %bb.i
  br i1 %.not23.i93, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i99.preheader

.lr.ph21.i99.preheader:                           ; preds = %.preheader.i98
  %i.ct = add i64 %4, -1
  %xtraiter532 = and i64 %4, 3                    ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 3
  br i1 %i.cu, label %.lr.ph21.i99.epil.preheader, label %.lr.ph21.i99.preheader.new

.lr.ph21.i99.preheader.new:                       ; preds = %.lr.ph21.i99.preheader
  %unroll_iter536 = and i64 %4, -4
  br label %.lr.ph21.i99

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.i95.preheader.new
  %.01519.i96 = phi i64 [ 0, %.lr.ph.i95.preheader.new ], [ %i.ds, %.lr.ph.i95 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i95.preheader.new ], [ %niter.next.3, %.lr.ph.i95 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i96
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !76
  %i.cx = zext i8 %i.cw to i64
  %i.cy = add i64 %5, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i96
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !68
  %i.da = or disjoint i64 %.01519.i96, 1          ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !76
  %i.dd = zext i8 %i.dc to i64
  %i.de = add i64 %5, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.da
  store i64 %i.de, ptr %i.df, align 8, !tbaa !68
  %i.dg = or disjoint i64 %.01519.i96, 2          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !76
  %i.dj = zext i8 %i.di to i64
  %i.dk = add i64 %5, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dg
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !68
  %i.dm = or disjoint i64 %.01519.i96, 3          ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !76
  %i.dp = zext i8 %i.do to i64
  %i.dq = add i64 %5, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dm
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !68
  %i.ds = add nuw i64 %.01519.i96, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa, label %.lr.ph.i95, !llvm.loop !22

.lr.ph21.i99:                                     ; preds = %.lr.ph21.i99, %.lr.ph21.i99.preheader.new
  %.020.i100 = phi i64 [ 0, %.lr.ph21.i99.preheader.new ], [ %i.em, %.lr.ph21.i99 ] ; 6 uses
  %niter537 = phi i64 [ 0, %.lr.ph21.i99.preheader.new ], [ %niter537.next.3, %.lr.ph21.i99 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i100
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !76
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i100
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !68
  %i.dx = or disjoint i64 %.020.i100, 1           ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !76
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dx
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !68
  %i.ec = or disjoint i64 %.020.i100, 2           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !76
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ec
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !68
  %i.eh = or disjoint i64 %.020.i100, 3           ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !76
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !68
  %i.em = add nuw i64 %.020.i100, 4               ; 2 uses
  %niter537.next.3 = add nuw i64 %niter537, 4     ; 2 uses
  %niter537.ncmp.3 = icmp eq i64 %niter537.next.3, %unroll_iter536
  br i1 %niter537.ncmp.3, label %rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa, label %.lr.ph21.i99, !llvm.loop !23

bb.j:                                             ; preds = %bb.h
  %i.en = icmp eq i64 %1, 4                       ; 3 uses
  %or.cond9 = and i1 %i.en, %i.am
  br i1 %or.cond9, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.eo = trunc i64 %5 to i32                     ; 7 uses
  %.not.i102 = icmp eq i32 %i.eo, 0
  br i1 %.not.i102, label %bb.l, label %.preheader.i103

.preheader.i103:                                  ; preds = %bb.k
  %.not13.i104 = icmp eq i64 %4, 0
  br i1 %.not13.i104, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i105.preheader

.lr.ph.i105.preheader:                            ; preds = %.preheader.i103
  %min.iters.check401 = icmp ult i64 %4, 8
  %i.ep = sub i64 %6, %7
  %diff.check399 = icmp ugt i64 %i.ep, -32
  %or.cond483 = or i1 %min.iters.check401, %diff.check399
  br i1 %or.cond483, label %.lr.ph.i105.preheader497, label %vector.ph402

vector.ph402:                                     ; preds = %.lr.ph.i105.preheader
  %n.vec403 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert404 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat405 = shufflevector <4 x i32> %broadcast.splatinsert404, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph402
  %index407 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body406 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index407 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load408 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !73
  %wide.load409 = load <4 x i32>, ptr %i.er, align 4, !tbaa !73
  %i.es = add <4 x i32> %wide.load408, %broadcast.splat405
  %i.et = add <4 x i32> %wide.load409, %broadcast.splat405
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index407 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x i32> %i.es, ptr %i.eu, align 4, !tbaa !73
  store <4 x i32> %i.et, ptr %i.ev, align 4, !tbaa !73
  %index.next410 = add nuw i64 %index407, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.ew, label %middle.block411, label %vector.body406, !llvm.loop !24

middle.block411:                                  ; preds = %vector.body406
  %cmp.n412 = icmp eq i64 %4, %n.vec403
  br i1 %cmp.n412, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i105.preheader497

.lr.ph.i105.preheader497:                         ; preds = %.lr.ph.i105.preheader, %middle.block411
  %.012.i106.ph = phi i64 [ 0, %.lr.ph.i105.preheader ], [ %n.vec403, %middle.block411 ] ; 3 uses
  %xtraiter526 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
  br i1 %lcmp.mod527.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol

.lr.ph.i105.prol:                                 ; preds = %.lr.ph.i105.preheader497, %.lr.ph.i105.prol
  %.012.i106.prol = phi i64 [ %i.fb, %.lr.ph.i105.prol ], [ %.012.i106.ph, %.lr.ph.i105.preheader497 ] ; 3 uses
  %prol.iter528 = phi i64 [ %prol.iter528.next, %.lr.ph.i105.prol ], [ 0, %.lr.ph.i105.preheader497 ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.012.i106.prol
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !73
  %i.ez = add i32 %i.ey, %i.eo
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i106.prol
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !73
  %i.fb = add nuw i64 %.012.i106.prol, 1          ; 2 uses
  %prol.iter528.next = add i64 %prol.iter528, 1   ; 2 uses
  %prol.iter528.cmp.not = icmp eq i64 %prol.iter528.next, %xtraiter526
  br i1 %prol.iter528.cmp.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol, !llvm.loop !25

.lr.ph.i105.prol.loopexit:                        ; preds = %.lr.ph.i105.prol, %.lr.ph.i105.preheader497
  %.012.i106.unr = phi i64 [ %.012.i106.ph, %.lr.ph.i105.preheader497 ], [ %i.fb, %.lr.ph.i105.prol ]
  %i.fc = sub i64 %.012.i106.ph, %4
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105
  %.012.i106 = phi i64 [ %i.fx, %.lr.ph.i105 ], [ %.012.i106.unr, %.lr.ph.i105.prol.loopexit ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.012.i106
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !73
  %i.fg = add i32 %i.ff, %i.eo
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i106
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !73
  %i.fi = add nuw i64 %.012.i106, 1               ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !73
  %i.fl = add i32 %i.fk, %i.eo
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fi
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !73
  %i.fn = add nuw i64 %.012.i106, 2               ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !73
  %i.fq = add i32 %i.fp, %i.eo
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fn
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !73
  %i.fs = add nuw i64 %.012.i106, 3               ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !73
  %i.fv = add i32 %i.fu, %i.eo
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fs
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !73
  %i.fx = add nuw i64 %.012.i106, 4               ; 2 uses
  %exitcond.not.i107.3 = icmp eq i64 %i.fx, %4
  br i1 %exitcond.not.i107.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i105, !llvm.loop !26

bb.l:                                             ; preds = %bb.k
  %i.fy = shl i64 %4, 2
  br label %rangeUnpack_uint64_t_uint64_t.exit.sink.split

bb.m:                                             ; preds = %bb.j
  %or.cond11 = and i1 %i.en, %i.bo
  br i1 %or.cond11, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fz = trunc i64 %5 to i32                     ; 3 uses
  %.not.i108 = icmp eq i32 %i.fz, 0
  %.not23.i109 = icmp eq i64 %4, 0                ; 2 uses
  br i1 %.not.i108, label %.preheader.i114, label %.preheader17.i110

.preheader17.i110:                                ; preds = %bb.n
  br i1 %.not23.i109, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i111.preheader

.lr.ph.i111.preheader:                            ; preds = %.preheader17.i110
  %min.iters.check373 = icmp ult i64 %4, 8
  br i1 %min.iters.check373, label %.lr.ph.i111.preheader501, label %vector.ph374

vector.ph374:                                     ; preds = %.lr.ph.i111.preheader
  %n.vec375 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert376 = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %broadcast.splat377 = shufflevector <4 x i32> %broadcast.splatinsert376, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph374
  %index379 = phi i64 [ 0, %vector.ph374 ], [ %index.next382, %vector.body378 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index379 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %wide.load380 = load <4 x i16>, ptr %i.ga, align 2, !tbaa !75
  %wide.load381 = load <4 x i16>, ptr %i.gb, align 2, !tbaa !75
  %i.gc = zext <4 x i16> %wide.load380 to <4 x i32>
  %i.gd = zext <4 x i16> %wide.load381 to <4 x i32>
  %i.ge = add <4 x i32> %broadcast.splat377, %i.gc
  %i.gf = add <4 x i32> %broadcast.splat377, %i.gd
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index379 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> %i.ge, ptr %i.gg, align 4, !tbaa !73
  store <4 x i32> %i.gf, ptr %i.gh, align 4, !tbaa !73
  %index.next382 = add nuw i64 %index379, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next382, %n.vec375
  br i1 %i.gi, label %middle.block383, label %vector.body378, !llvm.loop !27

middle.block383:                                  ; preds = %vector.body378
  %cmp.n384 = icmp eq i64 %4, %n.vec375
  br i1 %cmp.n384, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i111.preheader501

.lr.ph.i111.preheader501:                         ; preds = %.lr.ph.i111.preheader, %middle.block383
  %.01519.i112.ph = phi i64 [ 0, %.lr.ph.i111.preheader ], [ %n.vec375, %middle.block383 ]
  br label %.lr.ph.i111

.preheader.i114:                                  ; preds = %bb.n
  br i1 %.not23.i109, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i115.preheader

.lr.ph21.i115.preheader:                          ; preds = %.preheader.i114
  %min.iters.check387 = icmp ult i64 %4, 8
  br i1 %min.iters.check387, label %.lr.ph21.i115.preheader499, label %vector.ph388

vector.ph388:                                     ; preds = %.lr.ph21.i115.preheader
  %n.vec389 = and i64 %4, -8                      ; 3 uses
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next394, %vector.body390 ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index391 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %wide.load392 = load <4 x i16>, ptr %i.gj, align 2, !tbaa !75
  %wide.load393 = load <4 x i16>, ptr %i.gk, align 2, !tbaa !75
  %i.gl = zext <4 x i16> %wide.load392 to <4 x i32>
  %i.gm = zext <4 x i16> %wide.load393 to <4 x i32>
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index391 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <4 x i32> %i.gl, ptr %i.gn, align 4, !tbaa !73
  store <4 x i32> %i.gm, ptr %i.go, align 4, !tbaa !73
  %index.next394 = add nuw i64 %index391, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next394, %n.vec389
  br i1 %i.gp, label %middle.block395, label %vector.body390, !llvm.loop !28

middle.block395:                                  ; preds = %vector.body390
  %cmp.n396 = icmp eq i64 %4, %n.vec389
  br i1 %cmp.n396, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i115.preheader499

.lr.ph21.i115.preheader499:                       ; preds = %.lr.ph21.i115.preheader, %middle.block395
  %.020.i116.ph = phi i64 [ 0, %.lr.ph21.i115.preheader ], [ %n.vec389, %middle.block395 ]
  br label %.lr.ph21.i115

.lr.ph.i111:                                      ; preds = %.lr.ph.i111.preheader501, %.lr.ph.i111
  %.01519.i112 = phi i64 [ %i.gv, %.lr.ph.i111 ], [ %.01519.i112.ph, %.lr.ph.i111.preheader501 ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.01519.i112
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !75
  %i.gs = zext i16 %i.gr to i32
  %i.gt = add i32 %i.gs, %i.fz
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01519.i112
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !73
  %i.gv = add nuw i64 %.01519.i112, 1             ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %i.gv, %4
  br i1 %exitcond.not.i113, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i111, !llvm.loop !29

.lr.ph21.i115:                                    ; preds = %.lr.ph21.i115.preheader499, %.lr.ph21.i115
  %.020.i116 = phi i64 [ %i.ha, %.lr.ph21.i115 ], [ %.020.i116.ph, %.lr.ph21.i115.preheader499 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.020.i116
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !75
  %i.gy = zext i16 %i.gx to i32
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020.i116
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !73
  %i.ha = add nuw i64 %.020.i116, 1               ; 2 uses
  %exitcond25.not.i117 = icmp eq i64 %i.ha, %4
  br i1 %exitcond25.not.i117, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i115, !llvm.loop !30

bb.o:                                             ; preds = %bb.m
  %or.cond13 = and i1 %i.en, %i.cq
  br i1 %or.cond13, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@rangePackDecode:bb.a
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %.lr.ph.i121.preheader505, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck335
  %n.vec340 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert341 = insertelement <4 x i32> poison, i32 %i.hb, i64 0
  %broadcast.splat342 = shufflevector <4 x i32> %broadcast.splatinsert341, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph339
  %index344 = phi i64 [ 0, %vector.ph339 ], [ %index.next347, %vector.body343 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 %index344 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %wide.load345 = load <4 x i8>, ptr %i.hf, align 1, !tbaa !76, !alias.scope !77
  %wide.load346 = load <4 x i8>, ptr %i.hg, align 1, !tbaa !76, !alias.scope !77
  %i.hh = zext <4 x i8> %wide.load345 to <4 x i32>
  %i.hi = zext <4 x i8> %wide.load346 to <4 x i32>
  %i.hj = add <4 x i32> %broadcast.splat342, %i.hh
  %i.hk = add <4 x i32> %broadcast.splat342, %i.hi
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index344 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <4 x i32> %i.hj, ptr %i.hl, align 4, !tbaa !73, !alias.scope !78, !noalias !77
  store <4 x i32> %i.hk, ptr %i.hm, align 4, !tbaa !73, !alias.scope !78, !noalias !77
  %index.next347 = add nuw i64 %index344, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next347, %n.vec340
  br i1 %i.hn, label %middle.block348, label %vector.body343, !llvm.loop !34

middle.block348:                                  ; preds = %vector.body343
  %cmp.n349 = icmp eq i64 %4, %n.vec340
  br i1 %cmp.n349, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i121.preheader505

.lr.ph.i121.preheader505:                         ; preds = %vector.memcheck335, %.lr.ph.i121.preheader, %middle.block348
  %.01519.i122.ph = phi i64 [ 0, %vector.memcheck335 ], [ 0, %.lr.ph.i121.preheader ], [ %n.vec340, %middle.block348 ] ; 3 uses
  %xtraiter520 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod521.not = icmp eq i64 %xtraiter520, 0
  br i1 %lcmp.mod521.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol

.lr.ph.i121.prol:                                 ; preds = %.lr.ph.i121.preheader505, %.lr.ph.i121.prol
  %.01519.i122.prol = phi i64 [ %i.ht, %.lr.ph.i121.prol ], [ %.01519.i122.ph, %.lr.ph.i121.preheader505 ] ; 3 uses
  %prol.iter522 = phi i64 [ %prol.iter522.next, %.lr.ph.i121.prol ], [ 0, %.lr.ph.i121.preheader505 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i122.prol
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !76
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add i32 %i.hq, %i.hb
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01519.i122.prol
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !73
  %i.ht = add nuw i64 %.01519.i122.prol, 1        ; 2 uses
  %prol.iter522.next = add i64 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i64 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol, !llvm.loop !35

.lr.ph.i121.prol.loopexit:                        ; preds = %.lr.ph.i121.prol, %.lr.ph.i121.preheader505
  %.01519.i122.unr = phi i64 [ %.01519.i122.ph, %.lr.ph.i121.preheader505 ], [ %i.ht, %.lr.ph.i121.prol ]
  %i.hu = sub i64 %.01519.i122.ph, %4
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i121

.preheader.i124:                                  ; preds = %bb.p
  br i1 %.not23.i119, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i125.preheader

.lr.ph21.i125.preheader:                          ; preds = %.preheader.i124
  %min.iters.check357 = icmp ult i64 %4, 12
  br i1 %min.iters.check357, label %.lr.ph21.i125.preheader503, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph21.i125.preheader
  %i.hw = shl i64 %4, 2
  %i.hx = getelementptr i8, ptr %0, i64 %i.hw
  %i.hy = getelementptr i8, ptr %2, i64 %4
  %bound0359 = icmp ult ptr %0, %i.hy
  %bound1360 = icmp ult ptr %2, %i.hx
  %found.conflict361 = and i1 %bound0359, %bound1360
  br i1 %found.conflict361, label %.lr.ph21.i125.preheader503, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck358
  %n.vec363 = and i64 %4, -8                      ; 3 uses
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next368, %vector.body364 ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 %index365 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %wide.load366 = load <4 x i8>, ptr %i.hz, align 1, !tbaa !76, !alias.scope !79
  %wide.load367 = load <4 x i8>, ptr %i.ia, align 1, !tbaa !76, !alias.scope !79
  %i.ib = zext <4 x i8> %wide.load366 to <4 x i32>
  %i.ic = zext <4 x i8> %wide.load367 to <4 x i32>
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index365 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store <4 x i32> %i.ib, ptr %i.id, align 4, !tbaa !73, !alias.scope !80, !noalias !79
  store <4 x i32> %i.ic, ptr %i.ie, align 4, !tbaa !73, !alias.scope !80, !noalias !79
  %index.next368 = add nuw i64 %index365, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.if, label %middle.block369, label %vector.body364, !llvm.loop !39

middle.block369:                                  ; preds = %vector.body364
  %cmp.n370 = icmp eq i64 %4, %n.vec363
  br i1 %cmp.n370, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i125.preheader503

.lr.ph21.i125.preheader503:                       ; preds = %vector.memcheck358, %.lr.ph21.i125.preheader, %middle.block369
  %.020.i126.ph = phi i64 [ 0, %vector.memcheck358 ], [ 0, %.lr.ph21.i125.preheader ], [ %n.vec363, %middle.block369 ] ; 3 uses
  %xtraiter523 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %.lr.ph21.i125.prol.loopexit, label %.lr.ph21.i125.prol

.lr.ph21.i125.prol:                               ; preds = %.lr.ph21.i125.preheader503, %.lr.ph21.i125.prol
  %.020.i126.prol = phi i64 [ %i.ik, %.lr.ph21.i125.prol ], [ %.020.i126.ph, %.lr.ph21.i125.preheader503 ] ; 3 uses
  %prol.iter525 = phi i64 [ %prol.iter525.next, %.lr.ph21.i125.prol ], [ 0, %.lr.ph21.i125.preheader503 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i126.prol
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !76
  %i.ii = zext i8 %i.ih to i32
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020.i126.prol
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !73
  %i.ik = add nuw i64 %.020.i126.prol, 1          ; 2 uses
  %prol.iter525.next = add i64 %prol.iter525, 1   ; 2 uses
  %prol.iter525.cmp.not = icmp eq i64 %prol.iter525.next, %xtraiter523
  br i1 %prol.iter525.cmp.not, label %.lr.ph21.i125.prol.loopexit, label %.lr.ph21.i125.prol, !llvm.loop !40

.lr.ph21.i125.prol.loopexit:                      ; preds = %.lr.ph21.i125.prol, %.lr.ph21.i125.preheader503
  %.020.i126.unr = phi i64 [ %.020.i126.ph, %.lr.ph21.i125.preheader503 ], [ %i.ik, %.lr.ph21.i125.prol ]
  %i.il = sub i64 %.020.i126.ph, %4
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i125

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121
  %.01519.i122 = phi i64 [ %i.jk, %.lr.ph.i121 ], [ %.01519.i122.unr, %.lr.ph.i121.prol.loopexit ] ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i122
  %i.io = load i8, ptr %i.in, align 1, !tbaa !76
  %i.ip = zext i8 %i.io to i32
  %i.iq = add i32 %i.ip, %i.hb
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01519.i122
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !73
  %i.is = add nuw i64 %.01519.i122, 1             ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !76
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add i32 %i.iv, %i.hb
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.is
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !73
  %i.iy = add nuw i64 %.01519.i122, 2             ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !76
  %i.jb = zext i8 %i.ja to i32
  %i.jc = add i32 %i.jb, %i.hb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.iy
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !73
  %i.je = add nuw i64 %.01519.i122, 3             ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !76
  %i.jh = zext i8 %i.jg to i32
  %i.ji = add i32 %i.jh, %i.hb
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.je
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !73
  %i.jk = add nuw i64 %.01519.i122, 4             ; 2 uses
  %exitcond.not.i123.3 = icmp eq i64 %i.jk, %4
  br i1 %exitcond.not.i123.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i121, !llvm.loop !41

.lr.ph21.i125:                                    ; preds = %.lr.ph21.i125.prol.loopexit, %.lr.ph21.i125
  %.020.i126 = phi i64 [ %i.ke, %.lr.ph21.i125 ], [ %.020.i126.unr, %.lr.ph21.i125.prol.loopexit ] ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i126
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !76
  %i.jn = zext i8 %i.jm to i32
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020.i126
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !73
  %i.jp = add nuw i64 %.020.i126, 1               ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !76
  %i.js = zext i8 %i.jr to i32
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jp
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !73
  %i.ju = add nuw i64 %.020.i126, 2               ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !76
  %i.jx = zext i8 %i.jw to i32
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ju
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !73
  %i.jz = add nuw i64 %.020.i126, 3               ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !76
  %i.kc = zext i8 %i.kb to i32
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jz
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !73
  %i.ke = add nuw i64 %.020.i126, 4               ; 2 uses
  %exitcond25.not.i127.3 = icmp eq i64 %i.ke, %4
  br i1 %exitcond25.not.i127.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i125, !llvm.loop !42

bb.q:                                             ; preds = %bb.o
  %i.kf = icmp eq i64 %1, 2                       ; 2 uses
  %or.cond15 = and i1 %i.kf, %i.bo
  br i1 %or.cond15, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.kg = trunc i64 %5 to i16                     ; 8 uses
  %.not.i128 = icmp eq i16 %i.kg, 0
  br i1 %.not.i128, label %bb.s, label %.preheader.i129

.preheader.i129:                                  ; preds = %bb.r
  %.not13.i130 = icmp eq i64 %4, 0
  br i1 %.not13.i130, label %rangeUnpack_uint64_t_uint64_t.exit, label %iter.check314

iter.check314:                                    ; preds = %.preheader.i129
  %min.iters.check299 = icmp ult i64 %4, 4
  %i.kh = sub i64 %6, %7
  %diff.check298 = icmp ugt i64 %i.kh, -32
  %or.cond484 = or i1 %min.iters.check299, %diff.check298
  br i1 %or.cond484, label %.lr.ph.i131.preheader, label %vector.main.loop.iter.check300

vector.main.loop.iter.check300:                   ; preds = %iter.check314
  %min.iters.check301 = icmp ult i64 %4, 16
  br i1 %min.iters.check301, label %vec.epilog.ph318, label %vector.ph302

vector.ph302:                                     ; preds = %vector.main.loop.iter.check300
  %i.ki = and i64 %4, 12
  %n.vec303 = and i64 %4, -16                     ; 4 uses
  %broadcast.splatinsert304 = insertelement <8 x i16> poison, i16 %i.kg, i64 0
  %broadcast.splat305 = shufflevector <8 x i16> %broadcast.splatinsert304, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body306

vector.body306:                                   ; preds = %vector.ph302, %vector.body306
  %index307 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body306 ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index307 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load308 = load <8 x i16>, ptr %i.kj, align 2, !tbaa !75
  %wide.load309 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !75
  %i.kl = add <8 x i16> %wide.load308, %broadcast.splat305
  %i.km = add <8 x i16> %wide.load309, %broadcast.splat305
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index307 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store <8 x i16> %i.kl, ptr %i.kn, align 2, !tbaa !75
  store <8 x i16> %i.km, ptr %i.ko, align 2, !tbaa !75
  %index.next310 = add nuw i64 %index307, 16      ; 2 uses
  %i.kp = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.kp, label %middle.block311, label %vector.body306, !llvm.loop !43

middle.block311:                                  ; preds = %vector.body306
  %cmp.n312 = icmp eq i64 %4, %n.vec303
  br i1 %cmp.n312, label %rangeUnpack_uint64_t_uint64_t.exit, label %vec.epilog.iter.check316

vec.epilog.iter.check316:                         ; preds = %middle.block311
  %min.epilog.iters.check317 = icmp eq i64 %i.ki, 0
  br i1 %min.epilog.iters.check317, label %.lr.ph.i131.preheader, label %vec.epilog.ph318, !prof !81

vec.epilog.ph318:                                 ; preds = %vector.main.loop.iter.check300, %vec.epilog.iter.check316
  %vec.epilog.resume.val313 = phi i64 [ %n.vec303, %vec.epilog.iter.check316 ], [ 0, %vector.main.loop.iter.check300 ]
  %n.vec319 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert320 = insertelement <4 x i16> poison, i16 %i.kg, i64 0
  %broadcast.splat321 = shufflevector <4 x i16> %broadcast.splatinsert320, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body322

vec.epilog.vector.body322:                        ; preds = %vec.epilog.vector.body322, %vec.epilog.ph318
  %index323 = phi i64 [ %vec.epilog.resume.val313, %vec.epilog.ph318 ], [ %index.next325, %vec.epilog.vector.body322 ] ; 3 uses
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index323
  %wide.load324 = load <4 x i16>, ptr %i.kq, align 2, !tbaa !75
  %i.kr = add <4 x i16> %wide.load324, %broadcast.splat321
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index323
  store <4 x i16> %i.kr, ptr %i.ks, align 2, !tbaa !75
  %index.next325 = add nuw i64 %index323, 4       ; 2 uses
  %i.kt = icmp eq i64 %index.next325, %n.vec319
  br i1 %i.kt, label %vec.epilog.middle.block326, label %vec.epilog.vector.body322, !llvm.loop !44

vec.epilog.middle.block326:                       ; preds = %vec.epilog.vector.body322
  %cmp.n327 = icmp eq i64 %4, %n.vec319
  br i1 %cmp.n327, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i131.preheader

.lr.ph.i131.preheader:                            ; preds = %iter.check314, %vec.epilog.iter.check316, %vec.epilog.middle.block326
  %.012.i132.ph = phi i64 [ 0, %iter.check314 ], [ %n.vec303, %vec.epilog.iter.check316 ], [ %n.vec319, %vec.epilog.middle.block326 ] ; 3 uses
  %xtraiter517 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.lr.ph.i131.prol.loopexit, label %.lr.ph.i131.prol

.lr.ph.i131.prol:                                 ; preds = %.lr.ph.i131.preheader, %.lr.ph.i131.prol
  %.012.i132.prol = phi i64 [ %i.ky, %.lr.ph.i131.prol ], [ %.012.i132.ph, %.lr.ph.i131.preheader ] ; 3 uses
  %prol.iter519 = phi i64 [ %prol.iter519.next, %.lr.ph.i131.prol ], [ 0, %.lr.ph.i131.preheader ]
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.012.i132.prol
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !75
  %i.kw = add i16 %i.kv, %i.kg
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i132.prol
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !75
  %i.ky = add nuw i64 %.012.i132.prol, 1          ; 2 uses
  %prol.iter519.next = add i64 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i64 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph.i131.prol.loopexit, label %.lr.ph.i131.prol, !llvm.loop !45

.lr.ph.i131.prol.loopexit:                        ; preds = %.lr.ph.i131.prol, %.lr.ph.i131.preheader
  %.012.i132.unr = phi i64 [ %.012.i132.ph, %.lr.ph.i131.preheader ], [ %i.ky, %.lr.ph.i131.prol ]
  %i.kz = sub i64 %.012.i132.ph, %4
  %i.la = icmp ugt i64 %i.kz, -4
  br i1 %i.la, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.prol.loopexit, %.lr.ph.i131
  %.012.i132 = phi i64 [ %i.lu, %.lr.ph.i131 ], [ %.012.i132.unr, %.lr.ph.i131.prol.loopexit ] ; 6 uses
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.012.i132
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !75
  %i.ld = add i16 %i.lc, %i.kg
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i132
  store i16 %i.ld, ptr %i.le, align 2, !tbaa !75
  %i.lf = add nuw i64 %.012.i132, 1               ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !75
  %i.li = add i16 %i.lh, %i.kg
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lf
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !75
  %i.lk = add nuw i64 %.012.i132, 2               ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !75
  %i.ln = add i16 %i.lm, %i.kg
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lk
  store i16 %i.ln, ptr %i.lo, align 2, !tbaa !75
  %i.lp = add nuw i64 %.012.i132, 3               ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !75
  %i.ls = add i16 %i.lr, %i.kg
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lp
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !75
  %i.lu = add nuw i64 %.012.i132, 4               ; 2 uses
  %exitcond.not.i133.3 = icmp eq i64 %i.lu, %4
  br i1 %exitcond.not.i133.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i131, !llvm.loop !46

bb.s:                                             ; preds = %bb.r
  %i.lv = shl i64 %4, 1
  br label %rangeUnpack_uint64_t_uint64_t.exit.sink.split

bb.t:                                             ; preds = %bb.q
  %or.cond17 = and i1 %i.kf, %i.cq
  br i1 %or.cond17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lw = trunc i64 %5 to i16                     ; 8 uses
  %.not.i134 = icmp eq i16 %i.lw, 0
  %.not23.i135 = icmp eq i64 %4, 0                ; 2 uses
  br i1 %.not.i134, label %.preheader.i140, label %.preheader17.i136

.preheader17.i136:                                ; preds = %bb.u
  br i1 %.not23.i135, label %rangeUnpack_uint64_t_uint64_t.exit, label %iter.check247

iter.check247:                                    ; preds = %.preheader17.i136
  %min.iters.check231 = icmp ult i64 %4, 4
  br i1 %min.iters.check231, label %.lr.ph.i137.preheader, label %vector.memcheck232

vector.memcheck232:                               ; preds = %iter.check247
  %i.lx = shl i64 %4, 1
  %i.ly = getelementptr i8, ptr %0, i64 %i.lx
  %i.lz = getelementptr i8, ptr %2, i64 %4
  %bound0 = icmp ult ptr %0, %i.lz
  %bound1 = icmp ult ptr %2, %i.ly
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check233

vector.main.loop.iter.check233:                   ; preds = %vector.memcheck232
  %min.iters.check234 = icmp ult i64 %4, 16
  br i1 %min.iters.check234, label %vec.epilog.ph251, label %vector.ph235

vector.ph235:                                     ; preds = %vector.main.loop.iter.check233
  %i.ma = and i64 %4, 12
  %n.vec236 = and i64 %4, -16                     ; 4 uses
  %broadcast.splatinsert237 = insertelement <8 x i16> poison, i16 %i.lw, i64 0
  %broadcast.splat238 = shufflevector <8 x i16> %broadcast.splatinsert237, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.ph235, %vector.body239
  %index240 = phi i64 [ 0, %vector.ph235 ], [ %index.next243, %vector.body239 ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 %index240 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %wide.load241 = load <8 x i8>, ptr %i.mb, align 1, !tbaa !76, !alias.scope !82
  %wide.load242 = load <8 x i8>, ptr %i.mc, align 1, !tbaa !76, !alias.scope !82
  %i.md = zext <8 x i8> %wide.load241 to <8 x i16>
  %i.me = zext <8 x i8> %wide.load242 to <8 x i16>
  %i.mf = add <8 x i16> %broadcast.splat238, %i.md
  %i.mg = add <8 x i16> %broadcast.splat238, %i.me
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index240 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <8 x i16> %i.mf, ptr %i.mh, align 2, !tbaa !75, !alias.scope !83, !noalias !82
  store <8 x i16> %i.mg, ptr %i.mi, align 2, !tbaa !75, !alias.scope !83, !noalias !82
  %index.next243 = add nuw i64 %index240, 16      ; 2 uses
  %i.mj = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.mj, label %middle.block244, label %vector.body239, !llvm.loop !50

middle.block244:                                  ; preds = %vector.body239
  %cmp.n245 = icmp eq i64 %4, %n.vec236
  br i1 %cmp.n245, label %rangeUnpack_uint64_t_uint64_t.exit, label %vec.epilog.iter.check249

vec.epilog.iter.check249:                         ; preds = %middle.block244
  %min.epilog.iters.check250 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check250, label %.lr.ph.i137.preheader, label %vec.epilog.ph251, !prof !81

vec.epilog.ph251:                                 ; preds = %vector.main.loop.iter.check233, %vec.epilog.iter.check249
  %vec.epilog.resume.val246 = phi i64 [ %n.vec236, %vec.epilog.iter.check249 ], [ 0, %vector.main.loop.iter.check233 ]
  %n.vec252 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert253 = insertelement <4 x i16> poison, i16 %i.lw, i64 0
  %broadcast.splat254 = shufflevector <4 x i16> %broadcast.splatinsert253, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body255

vec.epilog.vector.body255:                        ; preds = %vec.epilog.vector.body255, %vec.epilog.ph251
  %index256 = phi i64 [ %vec.epilog.resume.val246, %vec.epilog.ph251 ], [ %index.next258, %vec.epilog.vector.body255 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 %index256
  %wide.load257 = load <4 x i8>, ptr %i.mk, align 1, !tbaa !76, !alias.scope !82
  %i.ml = zext <4 x i8> %wide.load257 to <4 x i16>
  %i.mm = add <4 x i16> %broadcast.splat254, %i.ml
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index256
  store <4 x i16> %i.mm, ptr %i.mn, align 2, !tbaa !75, !alias.scope !83, !noalias !82
  %index.next258 = add nuw i64 %index256, 4       ; 2 uses
  %i.mo = icmp eq i64 %index.next258, %n.vec252
  br i1 %i.mo, label %vec.epilog.middle.block259, label %vec.epilog.vector.body255, !llvm.loop !51
end_hunk_2
begin_hunk_3_@rangePackDecode:bb.a
  br i1 %cmp.n260, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %iter.check247, %vector.memcheck232, %vec.epilog.iter.check249, %vec.epilog.middle.block259
  %.01519.i138.ph = phi i64 [ 0, %iter.check247 ], [ 0, %vector.memcheck232 ], [ %n.vec236, %vec.epilog.iter.check249 ], [ %n.vec252, %vec.epilog.middle.block259 ] ; 3 uses
  %xtraiter511 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137.prol
  %.01519.i138.prol = phi i64 [ %i.mu, %.lr.ph.i137.prol ], [ %.01519.i138.ph, %.lr.ph.i137.preheader ] ; 3 uses
  %prol.iter513 = phi i64 [ %prol.iter513.next, %.lr.ph.i137.prol ], [ 0, %.lr.ph.i137.preheader ]
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i138.prol
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !76
  %i.mr = zext i8 %i.mq to i16
  %i.ms = add i16 %i.mr, %i.lw
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01519.i138.prol
  store i16 %i.ms, ptr %i.mt, align 2, !tbaa !75
  %i.mu = add nuw i64 %.01519.i138.prol, 1        ; 2 uses
  %prol.iter513.next = add i64 %prol.iter513, 1   ; 2 uses
  %prol.iter513.cmp.not = icmp eq i64 %prol.iter513.next, %xtraiter511
  br i1 %prol.iter513.cmp.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol, !llvm.loop !52

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.01519.i138.unr = phi i64 [ %.01519.i138.ph, %.lr.ph.i137.preheader ], [ %i.mu, %.lr.ph.i137.prol ]
  %i.mv = sub i64 %.01519.i138.ph, %4
  %i.mw = icmp ugt i64 %i.mv, -4
  br i1 %i.mw, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i137

.preheader.i140:                                  ; preds = %bb.u
  br i1 %.not23.i135, label %rangeUnpack_uint64_t_uint64_t.exit, label %iter.check284

iter.check284:                                    ; preds = %.preheader.i140
  %min.iters.check267 = icmp ult i64 %4, 4
  br i1 %min.iters.check267, label %.lr.ph21.i141.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %iter.check284
  %i.mx = shl i64 %4, 1
  %i.my = getelementptr i8, ptr %0, i64 %i.mx
  %i.mz = getelementptr i8, ptr %2, i64 %4
  %bound0269 = icmp ult ptr %0, %i.mz
  %bound1270 = icmp ult ptr %2, %i.my
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %.lr.ph21.i141.preheader, label %vector.main.loop.iter.check272

vector.main.loop.iter.check272:                   ; preds = %vector.memcheck268
  %min.iters.check273 = icmp ult i64 %4, 16
  br i1 %min.iters.check273, label %vec.epilog.ph288, label %vector.ph274

vector.ph274:                                     ; preds = %vector.main.loop.iter.check272
  %i.na = and i64 %4, 12
  %n.vec275 = and i64 %4, -16                     ; 4 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.ph274, %vector.body276
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next280, %vector.body276 ] ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 %index277 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %wide.load278 = load <8 x i8>, ptr %i.nb, align 1, !tbaa !76, !alias.scope !84
  %wide.load279 = load <8 x i8>, ptr %i.nc, align 1, !tbaa !76, !alias.scope !84
  %i.nd = zext <8 x i8> %wide.load278 to <8 x i16>
  %i.ne = zext <8 x i8> %wide.load279 to <8 x i16>
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index277 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store <8 x i16> %i.nd, ptr %i.nf, align 2, !tbaa !75, !alias.scope !85, !noalias !84
  store <8 x i16> %i.ne, ptr %i.ng, align 2, !tbaa !75, !alias.scope !85, !noalias !84
  %index.next280 = add nuw i64 %index277, 16      ; 2 uses
  %i.nh = icmp eq i64 %index.next280, %n.vec275
  br i1 %i.nh, label %middle.block281, label %vector.body276, !llvm.loop !56

middle.block281:                                  ; preds = %vector.body276
  %cmp.n282 = icmp eq i64 %4, %n.vec275
  br i1 %cmp.n282, label %rangeUnpack_uint64_t_uint64_t.exit, label %vec.epilog.iter.check286

vec.epilog.iter.check286:                         ; preds = %middle.block281
  %min.epilog.iters.check287 = icmp eq i64 %i.na, 0
  br i1 %min.epilog.iters.check287, label %.lr.ph21.i141.preheader, label %vec.epilog.ph288, !prof !81

vec.epilog.ph288:                                 ; preds = %vector.main.loop.iter.check272, %vec.epilog.iter.check286
  %vec.epilog.resume.val283 = phi i64 [ %n.vec275, %vec.epilog.iter.check286 ], [ 0, %vector.main.loop.iter.check272 ]
  %n.vec289 = and i64 %4, -4                      ; 3 uses
  br label %vec.epilog.vector.body290

vec.epilog.vector.body290:                        ; preds = %vec.epilog.vector.body290, %vec.epilog.ph288
  %index291 = phi i64 [ %vec.epilog.resume.val283, %vec.epilog.ph288 ], [ %index.next293, %vec.epilog.vector.body290 ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 %index291
  %wide.load292 = load <4 x i8>, ptr %i.ni, align 1, !tbaa !76, !alias.scope !84
  %i.nj = zext <4 x i8> %wide.load292 to <4 x i16>
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index291
  store <4 x i16> %i.nj, ptr %i.nk, align 2, !tbaa !75, !alias.scope !85, !noalias !84
  %index.next293 = add nuw i64 %index291, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.nl, label %vec.epilog.middle.block294, label %vec.epilog.vector.body290, !llvm.loop !57

vec.epilog.middle.block294:                       ; preds = %vec.epilog.vector.body290
  %cmp.n295 = icmp eq i64 %4, %n.vec289
  br i1 %cmp.n295, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i141.preheader

.lr.ph21.i141.preheader:                          ; preds = %iter.check284, %vector.memcheck268, %vec.epilog.iter.check286, %vec.epilog.middle.block294
  %.020.i142.ph = phi i64 [ 0, %iter.check284 ], [ 0, %vector.memcheck268 ], [ %n.vec275, %vec.epilog.iter.check286 ], [ %n.vec289, %vec.epilog.middle.block294 ] ; 3 uses
  %xtraiter514 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph21.i141.prol.loopexit, label %.lr.ph21.i141.prol

.lr.ph21.i141.prol:                               ; preds = %.lr.ph21.i141.preheader, %.lr.ph21.i141.prol
  %.020.i142.prol = phi i64 [ %i.nq, %.lr.ph21.i141.prol ], [ %.020.i142.ph, %.lr.ph21.i141.preheader ] ; 3 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %.lr.ph21.i141.prol ], [ 0, %.lr.ph21.i141.preheader ]
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i142.prol
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !76
  %i.no = zext i8 %i.nn to i16
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.020.i142.prol
  store i16 %i.no, ptr %i.np, align 2, !tbaa !75
  %i.nq = add nuw i64 %.020.i142.prol, 1          ; 2 uses
  %prol.iter516.next = add i64 %prol.iter516, 1   ; 2 uses
  %prol.iter516.cmp.not = icmp eq i64 %prol.iter516.next, %xtraiter514
  br i1 %prol.iter516.cmp.not, label %.lr.ph21.i141.prol.loopexit, label %.lr.ph21.i141.prol, !llvm.loop !58

.lr.ph21.i141.prol.loopexit:                      ; preds = %.lr.ph21.i141.prol, %.lr.ph21.i141.preheader
  %.020.i142.unr = phi i64 [ %.020.i142.ph, %.lr.ph21.i141.preheader ], [ %i.nq, %.lr.ph21.i141.prol ]
  %i.nr = sub i64 %.020.i142.ph, %4
  %i.ns = icmp ugt i64 %i.nr, -4
  br i1 %i.ns, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i141

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.01519.i138 = phi i64 [ %i.oq, %.lr.ph.i137 ], [ %.01519.i138.unr, %.lr.ph.i137.prol.loopexit ] ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i138
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !76
  %i.nv = zext i8 %i.nu to i16
  %i.nw = add i16 %i.nv, %i.lw
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01519.i138
  store i16 %i.nw, ptr %i.nx, align 2, !tbaa !75
  %i.ny = add nuw i64 %.01519.i138, 1             ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !76
  %i.ob = zext i8 %i.oa to i16
  %i.oc = add i16 %i.ob, %i.lw
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ny
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !75
  %i.oe = add nuw i64 %.01519.i138, 2             ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !76
  %i.oh = zext i8 %i.og to i16
  %i.oi = add i16 %i.oh, %i.lw
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.oe
  store i16 %i.oi, ptr %i.oj, align 2, !tbaa !75
  %i.ok = add nuw i64 %.01519.i138, 3             ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !76
  %i.on = zext i8 %i.om to i16
  %i.oo = add i16 %i.on, %i.lw
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ok
  store i16 %i.oo, ptr %i.op, align 2, !tbaa !75
  %i.oq = add nuw i64 %.01519.i138, 4             ; 2 uses
  %exitcond.not.i139.3 = icmp eq i64 %i.oq, %4
  br i1 %exitcond.not.i139.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i137, !llvm.loop !59

.lr.ph21.i141:                                    ; preds = %.lr.ph21.i141.prol.loopexit, %.lr.ph21.i141
  %.020.i142 = phi i64 [ %i.pk, %.lr.ph21.i141 ], [ %.020.i142.unr, %.lr.ph21.i141.prol.loopexit ] ; 6 uses
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i142
  %i.os = load i8, ptr %i.or, align 1, !tbaa !76
  %i.ot = zext i8 %i.os to i16
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.020.i142
  store i16 %i.ot, ptr %i.ou, align 2, !tbaa !75
  %i.ov = add nuw i64 %.020.i142, 1               ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !76
  %i.oy = zext i8 %i.ox to i16
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ov
  store i16 %i.oy, ptr %i.oz, align 2, !tbaa !75
  %i.pa = add nuw i64 %.020.i142, 2               ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !76
  %i.pd = zext i8 %i.pc to i16
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pa
  store i16 %i.pd, ptr %i.pe, align 2, !tbaa !75
  %i.pf = add nuw i64 %.020.i142, 3               ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !76
  %i.pi = zext i8 %i.ph to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pf
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !75
  %i.pk = add nuw i64 %.020.i142, 4               ; 2 uses
  %exitcond25.not.i143.3 = icmp eq i64 %i.pk, %4
  br i1 %exitcond25.not.i143.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i141, !llvm.loop !60

bb.v:                                             ; preds = %bb.t
  %i.pl = icmp eq i64 %1, 1
  %or.cond19 = and i1 %i.pl, %i.cq
  br i1 %or.cond19, label %bb.w, label %rangeUnpack_uint64_t_uint64_t.exit

bb.w:                                             ; preds = %bb.v
  %i.pm = trunc i64 %5 to i8                      ; 8 uses
  %.not.i144 = icmp eq i8 %i.pm, 0
  br i1 %.not.i144, label %rangeUnpack_uint64_t_uint64_t.exit.sink.split, label %.preheader.i145

.preheader.i145:                                  ; preds = %bb.w
  %.not13.i146 = icmp eq i64 %4, 0
  br i1 %.not13.i146, label %rangeUnpack_uint64_t_uint64_t.exit, label %iter.check

iter.check:                                       ; preds = %.preheader.i145
  %min.iters.check = icmp ult i64 %4, 4
  %i.pn = sub i64 %6, %7
  %diff.check = icmp ugt i64 %i.pn, -32
  %or.cond485 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond485, label %.lr.ph.i147.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check220 = icmp ult i64 %4, 32
  br i1 %min.iters.check220, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.po = and i64 %4, 28
  %n.vec = and i64 %4, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.pm, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %wide.load = load <16 x i8>, ptr %i.pp, align 1, !tbaa !76
  %wide.load221 = load <16 x i8>, ptr %i.pq, align 1, !tbaa !76
  %i.pr = add <16 x i8> %wide.load, %broadcast.splat
  %i.ps = add <16 x i8> %wide.load221, %broadcast.splat
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store <16 x i8> %i.pr, ptr %i.pt, align 1, !tbaa !76
  store <16 x i8> %i.ps, ptr %i.pu, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pv = icmp eq i64 %index.next, %n.vec
  br i1 %i.pv, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %rangeUnpack_uint64_t_uint64_t.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.po, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i147.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec222 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert223 = insertelement <4 x i8> poison, i8 %i.pm, i64 0
  %broadcast.splat224 = shufflevector <4 x i8> %broadcast.splatinsert223, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next227, %vec.epilog.vector.body ] ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 %index225
  %wide.load226 = load <4 x i8>, ptr %i.pw, align 1, !tbaa !76
  %i.px = add <4 x i8> %wide.load226, %broadcast.splat224
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 %index225
  store <4 x i8> %i.px, ptr %i.py, align 1, !tbaa !76
  %index.next227 = add nuw i64 %index225, 4       ; 2 uses
  %i.pz = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.pz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n228 = icmp eq i64 %4, %n.vec222
  br i1 %cmp.n228, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i147.preheader

.lr.ph.i147.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i148.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec222, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i147.prol.loopexit, label %.lr.ph.i147.prol

.lr.ph.i147.prol:                                 ; preds = %.lr.ph.i147.preheader, %.lr.ph.i147.prol
  %.012.i148.prol = phi i64 [ %i.qe, %.lr.ph.i147.prol ], [ %.012.i148.ph, %.lr.ph.i147.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i147.prol ], [ 0, %.lr.ph.i147.preheader ]
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 %.012.i148.prol
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !76
  %i.qc = add i8 %i.qb, %i.pm
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i148.prol
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !76
  %i.qe = add nuw i64 %.012.i148.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i147.prol.loopexit, label %.lr.ph.i147.prol, !llvm.loop !63

.lr.ph.i147.prol.loopexit:                        ; preds = %.lr.ph.i147.prol, %.lr.ph.i147.preheader
  %.012.i148.unr = phi i64 [ %.012.i148.ph, %.lr.ph.i147.preheader ], [ %i.qe, %.lr.ph.i147.prol ]
  %i.qf = sub i64 %.012.i148.ph, %4
  %i.qg = icmp ugt i64 %i.qf, -4
  br i1 %i.qg, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.lr.ph.i147.prol.loopexit, %.lr.ph.i147
  %.012.i148 = phi i64 [ %i.ra, %.lr.ph.i147 ], [ %.012.i148.unr, %.lr.ph.i147.prol.loopexit ] ; 6 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 %.012.i148
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !76
  %i.qj = add i8 %i.qi, %i.pm
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i148
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !76
  %i.ql = add nuw i64 %.012.i148, 1               ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !76
  %i.qo = add i8 %i.qn, %i.pm
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 %i.ql
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !76
  %i.qq = add nuw i64 %.012.i148, 2               ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !76
  %i.qt = add i8 %i.qs, %i.pm
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 %i.qq
  store i8 %i.qt, ptr %i.qu, align 1, !tbaa !76
  %i.qv = add nuw i64 %.012.i148, 3               ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !76
  %i.qy = add i8 %i.qx, %i.pm
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 %i.qv
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !76
  %i.ra = add nuw i64 %.012.i148, 4               ; 2 uses
  %exitcond.not.i149.3 = icmp eq i64 %i.ra, %4
  br i1 %exitcond.not.i149.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i147, !llvm.loop !64

rangeUnpack_uint64_t_uint64_t.exit.sink.split:    ; preds = %bb.w, %bb.c, %bb.l, %bb.s
  %.sink = phi i64 [ %i.al, %bb.c ], [ %i.lv, %bb.s ], [ %i.fy, %bb.l ], [ %4, %bb.w ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %.sink, i1 false)
  br label %rangeUnpack_uint64_t_uint64_t.exit

rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa: ; preds = %.lr.ph21.i99
  %lcmp.mod534.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod534.not, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i99.epil.preheader

.lr.ph21.i99.epil.preheader:                      ; preds = %rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa, %.lr.ph21.i99.preheader
  %.020.i100.epil.init = phi i64 [ 0, %.lr.ph21.i99.preheader ], [ %i.em, %rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa ]
  %lcmp.mod535 = icmp ne i64 %xtraiter532, 0
  tail call void @llvm.assume(i1 %lcmp.mod535)
  br label %.lr.ph21.i99.epil

.lr.ph21.i99.epil:                                ; preds = %.lr.ph21.i99.epil, %.lr.ph21.i99.epil.preheader
  %.020.i100.epil = phi i64 [ %i.rf, %.lr.ph21.i99.epil ], [ %.020.i100.epil.init, %.lr.ph21.i99.epil.preheader ] ; 3 uses
  %epil.iter533 = phi i64 [ %epil.iter533.next, %.lr.ph21.i99.epil ], [ 0, %.lr.ph21.i99.epil.preheader ]
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i100.epil
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !76
  %i.rd = zext i8 %i.rc to i64
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i100.epil
  store i64 %i.rd, ptr %i.re, align 8, !tbaa !68
  %i.rf = add nuw i64 %.020.i100.epil, 1
  %epil.iter533.next = add i64 %epil.iter533, 1   ; 2 uses
  %epil.iter533.cmp.not = icmp eq i64 %epil.iter533.next, %xtraiter532
  br i1 %epil.iter533.cmp.not, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i99.epil, !llvm.loop !65

rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa: ; preds = %.lr.ph.i95
  %lcmp.mod530.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod530.not, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i95.epil.preheader

.lr.ph.i95.epil.preheader:                        ; preds = %rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa, %.lr.ph.i95.preheader
  %.01519.i96.epil.init = phi i64 [ 0, %.lr.ph.i95.preheader ], [ %i.ds, %rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa ]
  %lcmp.mod531 = icmp ne i64 %xtraiter529, 0
  tail call void @llvm.assume(i1 %lcmp.mod531)
  br label %.lr.ph.i95.epil

.lr.ph.i95.epil:                                  ; preds = %.lr.ph.i95.epil, %.lr.ph.i95.epil.preheader
  %.01519.i96.epil = phi i64 [ %i.rl, %.lr.ph.i95.epil ], [ %.01519.i96.epil.init, %.lr.ph.i95.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i95.epil ], [ 0, %.lr.ph.i95.epil.preheader ]
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i96.epil
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !76
  %i.ri = zext i8 %i.rh to i64
  %i.rj = add i64 %5, %i.ri
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i96.epil
  store i64 %i.rj, ptr %i.rk, align 8, !tbaa !68
  %i.rl = add nuw i64 %.01519.i96.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter529
  br i1 %epil.iter.cmp.not, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i95.epil, !llvm.loop !66

rangeUnpack_uint64_t_uint64_t.exit:               ; preds = %.lr.ph.i147.prol.loopexit, %.lr.ph.i147, %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %.lr.ph21.i141.prol.loopexit, %.lr.ph21.i141, %.lr.ph.i131.prol.loopexit, %.lr.ph.i131, %.lr.ph.i121.prol.loopexit, %.lr.ph.i121, %.lr.ph21.i125.prol.loopexit, %.lr.ph21.i125, %.lr.ph.i111, %.lr.ph21.i115, %.lr.ph.i105.prol.loopexit, %.lr.ph.i105, %rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa, %.lr.ph.i95.epil, %rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa, %.lr.ph21.i99.epil, %.lr.ph.i85, %.lr.ph21.i89, %.lr.ph.i79, %.lr.ph21.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %middle.block244, %vec.epilog.middle.block259, %middle.block281, %vec.epilog.middle.block294, %middle.block311, %vec.epilog.middle.block326, %middle.block348, %middle.block369, %middle.block383, %middle.block395, %middle.block411, %middle.block425, %middle.block437, %middle.block451, %middle.block463, %middle.block479, %rangeUnpack_uint64_t_uint64_t.exit.sink.split, %.preheader.i145, %.preheader.i140, %.preheader17.i136, %.preheader.i129, %.preheader.i124, %.preheader17.i120, %.preheader.i114, %.preheader17.i110, %.preheader.i103, %.preheader.i98, %.preheader17.i94, %.preheader.i88, %.preheader17.i84, %.preheader.i81, %.preheader17.i, %.preheader.i, %bb.v
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !69, !70, !71}
!12 = distinct !{!12, !72}
!13 = distinct !{!13, !69, !70}
!14 = distinct !{!14, !69, !70, !71}
end_hunk_3
