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
  %i.a = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.c = icmp eq i64 %3, 8
  %i.d = icmp eq i64 %1, 8                        ; 4 uses
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not13.i = icmp eq i64 %4, 0
  br i1 %.not13.i, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check469 = icmp ult i64 %4, 6
  %i.e = sub i64 %i.a, %i.b
  %diff.check467 = icmp ugt i64 %i.e, -32
  %or.cond482 = or i1 %min.iters.check469, %diff.check467
  br i1 %or.cond482, label %.lr.ph.i.preheader486, label %vector.ph470

vector.ph470:                                     ; preds = %.lr.ph.i.preheader
  %n.vec471 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert472 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat473 = shufflevector <2 x i64> %broadcast.splatinsert472, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph470
  %index475 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body474 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index475 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load476 = load <2 x i64>, ptr %i.f, align 8, !tbaa !68
  %wide.load477 = load <2 x i64>, ptr %i.g, align 8, !tbaa !68
  %i.h = add <2 x i64> %wide.load476, %broadcast.splat473
  %i.i = add <2 x i64> %wide.load477, %broadcast.splat473
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index475 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x i64> %i.h, ptr %i.j, align 8, !tbaa !68
  store <2 x i64> %i.i, ptr %i.k, align 8, !tbaa !68
  %index.next478 = add nuw i64 %index475, 4       ; 2 uses
  %i.l = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.l, label %middle.block479, label %vector.body474, !llvm.loop !11

middle.block479:                                  ; preds = %vector.body474
  %cmp.n480 = icmp eq i64 %4, %n.vec471
  br i1 %cmp.n480, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i.preheader486

.lr.ph.i.preheader486:                            ; preds = %.lr.ph.i.preheader, %middle.block479
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec471, %middle.block479 ] ; 3 uses
  %xtraiter538.a = and i64 %4, 3                  ; 2 uses
  %lcmp.mod539.not = icmp eq i64 %xtraiter538.a, 0
  br i1 %lcmp.mod539.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader486, %.lr.ph.i.prol
  %.012.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader486 ] ; 3 uses
  %prol.iter540 = phi i64 [ %prol.iter540.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader486 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.012.i.prol
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68
  %i.o = add i64 %i.n, %5
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.012.i.prol
  store i64 %i.o, ptr %i.p, align 8, !tbaa !68
  %i.q = add nuw i64 %.012.i.prol, 1              ; 2 uses
  %prol.iter540.next = add i64 %prol.iter540, 1   ; 2 uses
  %prol.iter540.cmp.not = icmp eq i64 %prol.iter540.next, %xtraiter538.a
  br i1 %prol.iter540.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !12

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader486
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader486 ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = sub i64 %.012.i.ph, %4
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.am, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.012.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !68
  %i.v = add i64 %i.u, %5
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.012.i
  store i64 %i.v, ptr %i.w, align 8, !tbaa !68
  %i.x = add nuw i64 %.012.i, 1                   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68
  %i.aa = add i64 %i.z, %5
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !68
  %i.ac = add nuw i64 %.012.i, 2                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !68
  %i.af = add i64 %i.ae, %5
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !68
  %i.ah = add nuw i64 %.012.i, 3                  ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.ak = add i64 %i.aj, %5
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !68
  %i.am = add nuw i64 %.012.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.am, %4
  br i1 %exitcond.not.i.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i, !llvm.loop !13

bb.c:                                             ; preds = %bb.b
  %i.an = shl i64 %4, 3
  br label %rangeUnpack_uint64_t_uint64_t.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ao = icmp eq i64 %3, 4                       ; 2 uses
  %or.cond3 = and i1 %i.d, %i.ao
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
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index447 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %wide.load448 = load <2 x i32>, ptr %i.ap, align 4, !tbaa !73
  %wide.load449 = load <2 x i32>, ptr %i.aq, align 4, !tbaa !73
  %i.ar = zext <2 x i32> %wide.load448 to <2 x i64>
  %i.as = zext <2 x i32> %wide.load449 to <2 x i64>
  %i.at = add <2 x i64> %broadcast.splat445, %i.ar
  %i.au = add <2 x i64> %broadcast.splat445, %i.as
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index447 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x i64> %i.at, ptr %i.av, align 8, !tbaa !68
  store <2 x i64> %i.au, ptr %i.aw, align 8, !tbaa !68
  %index.next450 = add nuw i64 %index447, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.ax, label %middle.block451, label %vector.body446, !llvm.loop !14

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
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index459 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.load460 = load <2 x i32>, ptr %i.ay, align 4, !tbaa !73
  %wide.load461 = load <2 x i32>, ptr %i.az, align 4, !tbaa !73
  %i.ba = zext <2 x i32> %wide.load460 to <2 x i64>
  %i.bb = zext <2 x i32> %wide.load461 to <2 x i64>
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index459 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x i64> %i.ba, ptr %i.bc, align 8, !tbaa !68
  store <2 x i64> %i.bb, ptr %i.bd, align 8, !tbaa !68
  %index.next462 = add nuw i64 %index459, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next462, %n.vec457
  br i1 %i.be, label %middle.block463, label %vector.body458, !llvm.loop !15

middle.block463:                                  ; preds = %vector.body458
  %cmp.n464 = icmp eq i64 %4, %n.vec457
  br i1 %cmp.n464, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i.preheader487

.lr.ph21.i.preheader487:                          ; preds = %.lr.ph21.i.preheader, %middle.block463
  %.020.i.ph = phi i64 [ 0, %.lr.ph21.i.preheader ], [ %n.vec457, %middle.block463 ]
  br label %.lr.ph21.i

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader489, %.lr.ph.i79
  %.01519.i = phi i64 [ %i.bk, %.lr.ph.i79 ], [ %.01519.i.ph, %.lr.ph.i79.preheader489 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01519.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !73
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add i64 %5, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !68
  %i.bk = add nuw i64 %.01519.i, 1                ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %i.bk, %4
  br i1 %exitcond.not.i80, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i79, !llvm.loop !16

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader487, %.lr.ph21.i
  %.020.i = phi i64 [ %i.bp, %.lr.ph21.i ], [ %.020.i.ph, %.lr.ph21.i.preheader487 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.020.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !73
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !68
  %i.bp = add nuw i64 %.020.i, 1                  ; 2 uses
  %exitcond25.not.i = icmp eq i64 %i.bp, %4
  br i1 %exitcond25.not.i, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i, !llvm.loop !17

bb.f:                                             ; preds = %bb.d
  %i.bq = icmp eq i64 %3, 2                       ; 3 uses
  %or.cond5 = and i1 %i.d, %i.bq
  br i1 %or.cond5, label %bb.g, label %bb.h

end_hunk_0
begin_hunk_1_@rangePackDecode:bb.a
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index421 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %wide.load422 = load <2 x i16>, ptr %i.br, align 2, !tbaa !75
  %wide.load423 = load <2 x i16>, ptr %i.bs, align 2, !tbaa !75
  %i.bt = zext <2 x i16> %wide.load422 to <2 x i64>
  %i.bu = zext <2 x i16> %wide.load423 to <2 x i64>
  %i.bv = add <2 x i64> %broadcast.splat419, %i.bt
  %i.bw = add <2 x i64> %broadcast.splat419, %i.bu
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index421 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x i64> %i.bv, ptr %i.bx, align 8, !tbaa !68
  store <2 x i64> %i.bw, ptr %i.by, align 8, !tbaa !68
  %index.next424 = add nuw i64 %index421, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.bz, label %middle.block425, label %vector.body420, !llvm.loop !18

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
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index433 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %wide.load434 = load <2 x i16>, ptr %i.ca, align 2, !tbaa !75
  %wide.load435 = load <2 x i16>, ptr %i.cb, align 2, !tbaa !75
  %i.cc = zext <2 x i16> %wide.load434 to <2 x i64>
  %i.cd = zext <2 x i16> %wide.load435 to <2 x i64>
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index433 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x i64> %i.cc, ptr %i.ce, align 8, !tbaa !68
  store <2 x i64> %i.cd, ptr %i.cf, align 8, !tbaa !68
  %index.next436 = add nuw i64 %index433, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next436, %n.vec431
  br i1 %i.cg, label %middle.block437, label %vector.body432, !llvm.loop !19

middle.block437:                                  ; preds = %vector.body432
  %cmp.n438 = icmp eq i64 %4, %n.vec431
  br i1 %cmp.n438, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i89.preheader491

.lr.ph21.i89.preheader491:                        ; preds = %.lr.ph21.i89.preheader, %middle.block437
  %.020.i90.ph = phi i64 [ 0, %.lr.ph21.i89.preheader ], [ %n.vec431, %middle.block437 ]
  br label %.lr.ph21.i89

.lr.ph.i85:                                       ; preds = %.lr.ph.i85.preheader493, %.lr.ph.i85
  %.01519.i86 = phi i64 [ %i.cm, %.lr.ph.i85 ], [ %.01519.i86.ph, %.lr.ph.i85.preheader493 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.01519.i86
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !75
  %i.cj = zext i16 %i.ci to i64
  %i.ck = add i64 %5, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i86
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !68
  %i.cm = add nuw i64 %.01519.i86, 1              ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %i.cm, %4
  br i1 %exitcond.not.i87, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i85, !llvm.loop !20

.lr.ph21.i89:                                     ; preds = %.lr.ph21.i89.preheader491, %.lr.ph21.i89
  %.020.i90 = phi i64 [ %i.cr, %.lr.ph21.i89 ], [ %.020.i90.ph, %.lr.ph21.i89.preheader491 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.020.i90
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !75
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i90
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !68
  %i.cr = add nuw i64 %.020.i90, 1                ; 2 uses
  %exitcond25.not.i91 = icmp eq i64 %i.cr, %4
  br i1 %exitcond25.not.i91, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i89, !llvm.loop !21

bb.h:                                             ; preds = %bb.f
  %i.cs = icmp eq i64 %3, 1                       ; 4 uses
  %or.cond7 = and i1 %i.d, %i.cs
  br i1 %or.cond7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i92 = icmp eq i64 %5, 0
  %.not23.i93 = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %.not.i92, label %.preheader.i98, label %.preheader17.i94

.preheader17.i94:                                 ; preds = %bb.i
  br i1 %.not23.i93, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %.preheader17.i94
  %i.ct = add i64 %4, -1
  %xtraiter529.a = and i64 %4, 3                  ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 3
  br i1 %i.cu, label %.lr.ph.i95.epil.preheader, label %.lr.ph.i95.preheader.new

.lr.ph.i95.preheader.new:                         ; preds = %.lr.ph.i95.preheader
  %unroll_iter = and i64 %4, -4
  br label %.lr.ph.i95

.preheader.i98:                                   ; preds = %bb.i
  br i1 %.not23.i93, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i99.preheader

.lr.ph21.i99.preheader:                           ; preds = %.preheader.i98
  %i.cv = add i64 %4, -1
  %xtraiter532.a = and i64 %4, 3                  ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 3
  br i1 %i.cw, label %.lr.ph21.i99.epil.preheader, label %.lr.ph21.i99.preheader.new

.lr.ph21.i99.preheader.new:                       ; preds = %.lr.ph21.i99.preheader
  %unroll_iter536 = and i64 %4, -4
  br label %.lr.ph21.i99

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.i95.preheader.new
  %.01519.i96 = phi i64 [ 0, %.lr.ph.i95.preheader.new ], [ %i.du, %.lr.ph.i95 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i95.preheader.new ], [ %niter.next.3, %.lr.ph.i95 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i96
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !76
  %i.cz = zext i8 %i.cy to i64
  %i.da = add i64 %5, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i96
  store i64 %i.da, ptr %i.db, align 8, !tbaa !68
  %i.dc = or disjoint i64 %.01519.i96, 1          ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !76
  %i.df = zext i8 %i.de to i64
  %i.dg = add i64 %5, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dc
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !68
  %i.di = or disjoint i64 %.01519.i96, 2          ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !76
  %i.dl = zext i8 %i.dk to i64
  %i.dm = add i64 %5, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.di
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !68
  %i.do = or disjoint i64 %.01519.i96, 3          ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !76
  %i.dr = zext i8 %i.dq to i64
  %i.ds = add i64 %5, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.do
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !68
  %i.du = add nuw i64 %.01519.i96, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa, label %.lr.ph.i95, !llvm.loop !22

.lr.ph21.i99:                                     ; preds = %.lr.ph21.i99, %.lr.ph21.i99.preheader.new
  %.020.i100 = phi i64 [ 0, %.lr.ph21.i99.preheader.new ], [ %i.eo, %.lr.ph21.i99 ] ; 6 uses
  %niter537 = phi i64 [ 0, %.lr.ph21.i99.preheader.new ], [ %niter537.next.3, %.lr.ph21.i99 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i100
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !76
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i100
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !68
  %i.dz = or disjoint i64 %.020.i100, 1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !76
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dz
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !68
  %i.ee = or disjoint i64 %.020.i100, 2           ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !76
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ee
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !68
  %i.ej = or disjoint i64 %.020.i100, 3           ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !76
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ej
  store i64 %i.em, ptr %i.en, align 8, !tbaa !68
  %i.eo = add nuw i64 %.020.i100, 4               ; 2 uses
  %niter537.next.3 = add nuw i64 %niter537, 4     ; 2 uses
  %niter537.ncmp.3 = icmp eq i64 %niter537.next.3, %unroll_iter536
  br i1 %niter537.ncmp.3, label %rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa, label %.lr.ph21.i99, !llvm.loop !23

bb.j:                                             ; preds = %bb.h
  %i.ep = icmp eq i64 %1, 4                       ; 3 uses
  %or.cond9 = and i1 %i.ep, %i.ao
  br i1 %or.cond9, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.eq = trunc i64 %5 to i32                     ; 7 uses
  %.not.i102 = icmp eq i32 %i.eq, 0
  br i1 %.not.i102, label %bb.l, label %.preheader.i103

.preheader.i103:                                  ; preds = %bb.k
  %.not13.i104 = icmp eq i64 %4, 0
  br i1 %.not13.i104, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i105.preheader

.lr.ph.i105.preheader:                            ; preds = %.preheader.i103
  %min.iters.check401 = icmp ult i64 %4, 8
  %i.er = sub i64 %i.a, %i.b
  %diff.check399 = icmp ugt i64 %i.er, -32
  %or.cond483 = or i1 %min.iters.check401, %diff.check399
  br i1 %or.cond483, label %.lr.ph.i105.preheader497, label %vector.ph402

vector.ph402:                                     ; preds = %.lr.ph.i105.preheader
  %n.vec403 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert404 = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat405 = shufflevector <4 x i32> %broadcast.splatinsert404, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph402
  %index407 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body406 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index407 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load408 = load <4 x i32>, ptr %i.es, align 4, !tbaa !73
  %wide.load409 = load <4 x i32>, ptr %i.et, align 4, !tbaa !73
  %i.eu = add <4 x i32> %wide.load408, %broadcast.splat405
  %i.ev = add <4 x i32> %wide.load409, %broadcast.splat405
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index407 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <4 x i32> %i.eu, ptr %i.ew, align 4, !tbaa !73
  store <4 x i32> %i.ev, ptr %i.ex, align 4, !tbaa !73
  %index.next410 = add nuw i64 %index407, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.ey, label %middle.block411, label %vector.body406, !llvm.loop !24

middle.block411:                                  ; preds = %vector.body406
  %cmp.n412 = icmp eq i64 %4, %n.vec403
  br i1 %cmp.n412, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i105.preheader497

.lr.ph.i105.preheader497:                         ; preds = %.lr.ph.i105.preheader, %middle.block411
  %.012.i106.ph = phi i64 [ 0, %.lr.ph.i105.preheader ], [ %n.vec403, %middle.block411 ] ; 3 uses
  %xtraiter526.a = and i64 %4, 3                  ; 2 uses
  %lcmp.mod527.not.a = icmp eq i64 %xtraiter526.a, 0
  br i1 %lcmp.mod527.not.a, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol

.lr.ph.i105.prol:                                 ; preds = %.lr.ph.i105.preheader497, %.lr.ph.i105.prol
  %.012.i106.prol = phi i64 [ %i.fd, %.lr.ph.i105.prol ], [ %.012.i106.ph, %.lr.ph.i105.preheader497 ] ; 3 uses
  %prol.iter528.a = phi i64 [ %prol.iter528.next.a, %.lr.ph.i105.prol ], [ 0, %.lr.ph.i105.preheader497 ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.012.i106.prol
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !73
  %i.fb = add i32 %i.fa, %i.eq
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i106.prol
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !73
  %i.fd = add nuw i64 %.012.i106.prol, 1          ; 2 uses
  %prol.iter528.next.a = add i64 %prol.iter528.a, 1 ; 2 uses
  %prol.iter528.cmp.not.a = icmp eq i64 %prol.iter528.next.a, %xtraiter526.a
  br i1 %prol.iter528.cmp.not.a, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol, !llvm.loop !25

.lr.ph.i105.prol.loopexit:                        ; preds = %.lr.ph.i105.prol, %.lr.ph.i105.preheader497
  %.012.i106.unr = phi i64 [ %.012.i106.ph, %.lr.ph.i105.preheader497 ], [ %i.fd, %.lr.ph.i105.prol ]
  %i.fe = sub i64 %.012.i106.ph, %4
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105
  %.012.i106 = phi i64 [ %i.fz, %.lr.ph.i105 ], [ %.012.i106.unr, %.lr.ph.i105.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.012.i106
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !73
  %i.fi = add i32 %i.fh, %i.eq
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i106
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !73
  %i.fk = add nuw i64 %.012.i106, 1               ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !73
  %i.fn = add i32 %i.fm, %i.eq
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fk
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !73
  %i.fp = add nuw i64 %.012.i106, 2               ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !73
  %i.fs = add i32 %i.fr, %i.eq
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fp
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !73
  %i.fu = add nuw i64 %.012.i106, 3               ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !73
  %i.fx = add i32 %i.fw, %i.eq
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fu
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !73
  %i.fz = add nuw i64 %.012.i106, 4               ; 2 uses
  %exitcond.not.i107.3 = icmp eq i64 %i.fz, %4
  br i1 %exitcond.not.i107.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i105, !llvm.loop !26

bb.l:                                             ; preds = %bb.k
  %i.ga = shl i64 %4, 2
  br label %rangeUnpack_uint64_t_uint64_t.exit.sink.split

bb.m:                                             ; preds = %bb.j
  %or.cond11 = and i1 %i.ep, %i.bq
  br i1 %or.cond11, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gb = trunc i64 %5 to i32                     ; 3 uses
  %.not.i108 = icmp eq i32 %i.gb, 0
  %.not23.i109 = icmp eq i64 %4, 0                ; 2 uses
  br i1 %.not.i108, label %.preheader.i114, label %.preheader17.i110

.preheader17.i110:                                ; preds = %bb.n
  br i1 %.not23.i109, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i111.preheader

.lr.ph.i111.preheader:                            ; preds = %.preheader17.i110
  %min.iters.check373 = icmp ult i64 %4, 8
  br i1 %min.iters.check373, label %.lr.ph.i111.preheader501, label %vector.ph374

vector.ph374:                                     ; preds = %.lr.ph.i111.preheader
  %n.vec375 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert376 = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %broadcast.splat377 = shufflevector <4 x i32> %broadcast.splatinsert376, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph374
  %index379 = phi i64 [ 0, %vector.ph374 ], [ %index.next382, %vector.body378 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index379 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %wide.load380 = load <4 x i16>, ptr %i.gc, align 2, !tbaa !75
  %wide.load381 = load <4 x i16>, ptr %i.gd, align 2, !tbaa !75
  %i.ge = zext <4 x i16> %wide.load380 to <4 x i32>
  %i.gf = zext <4 x i16> %wide.load381 to <4 x i32>
  %i.gg = add <4 x i32> %broadcast.splat377, %i.ge
  %i.gh = add <4 x i32> %broadcast.splat377, %i.gf
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index379 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <4 x i32> %i.gg, ptr %i.gi, align 4, !tbaa !73
  store <4 x i32> %i.gh, ptr %i.gj, align 4, !tbaa !73
  %index.next382 = add nuw i64 %index379, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next382, %n.vec375
  br i1 %i.gk, label %middle.block383, label %vector.body378, !llvm.loop !27

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
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index391 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %wide.load392 = load <4 x i16>, ptr %i.gl, align 2, !tbaa !75
  %wide.load393 = load <4 x i16>, ptr %i.gm, align 2, !tbaa !75
  %i.gn = zext <4 x i16> %wide.load392 to <4 x i32>
  %i.go = zext <4 x i16> %wide.load393 to <4 x i32>
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index391 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x i32> %i.gn, ptr %i.gp, align 4, !tbaa !73
  store <4 x i32> %i.go, ptr %i.gq, align 4, !tbaa !73
  %index.next394 = add nuw i64 %index391, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next394, %n.vec389
  br i1 %i.gr, label %middle.block395, label %vector.body390, !llvm.loop !28

middle.block395:                                  ; preds = %vector.body390
  %cmp.n396 = icmp eq i64 %4, %n.vec389
  br i1 %cmp.n396, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i115.preheader499

.lr.ph21.i115.preheader499:                       ; preds = %.lr.ph21.i115.preheader, %middle.block395
  %.020.i116.ph = phi i64 [ 0, %.lr.ph21.i115.preheader ], [ %n.vec389, %middle.block395 ]
  br label %.lr.ph21.i115

.lr.ph.i111:                                      ; preds = %.lr.ph.i111.preheader501, %.lr.ph.i111
  %.01519.i112 = phi i64 [ %i.gx, %.lr.ph.i111 ], [ %.01519.i112.ph, %.lr.ph.i111.preheader501 ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.01519.i112
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !75
  %i.gu = zext i16 %i.gt to i32
  %i.gv = add i32 %i.gu, %i.gb
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01519.i112
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !73
  %i.gx = add nuw i64 %.01519.i112, 1             ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %i.gx, %4
  br i1 %exitcond.not.i113, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i111, !llvm.loop !29

.lr.ph21.i115:                                    ; preds = %.lr.ph21.i115.preheader499, %.lr.ph21.i115
  %.020.i116 = phi i64 [ %i.hc, %.lr.ph21.i115 ], [ %.020.i116.ph, %.lr.ph21.i115.preheader499 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.020.i116
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !75
  %i.ha = zext i16 %i.gz to i32
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020.i116
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !73
  %i.hc = add nuw i64 %.020.i116, 1               ; 2 uses
  %exitcond25.not.i117 = icmp eq i64 %i.hc, %4
  br i1 %exitcond25.not.i117, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i115, !llvm.loop !30

bb.o:                                             ; preds = %bb.m
  %or.cond13 = and i1 %i.ep, %i.cs
  br i1 %or.cond13, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@rangePackDecode:bb.a
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %.lr.ph.i121.preheader505, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck335
  %n.vec340 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert341 = insertelement <4 x i32> poison, i32 %i.hd, i64 0
  %broadcast.splat342 = shufflevector <4 x i32> %broadcast.splatinsert341, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph339
  %index344 = phi i64 [ 0, %vector.ph339 ], [ %index.next347, %vector.body343 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 %index344 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %wide.load345 = load <4 x i8>, ptr %i.hh, align 1, !tbaa !76, !alias.scope !77
  %wide.load346 = load <4 x i8>, ptr %i.hi, align 1, !tbaa !76, !alias.scope !77
  %i.hj = zext <4 x i8> %wide.load345 to <4 x i32>
  %i.hk = zext <4 x i8> %wide.load346 to <4 x i32>
  %i.hl = add <4 x i32> %broadcast.splat342, %i.hj
  %i.hm = add <4 x i32> %broadcast.splat342, %i.hk
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index344 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <4 x i32> %i.hl, ptr %i.hn, align 4, !tbaa !73, !alias.scope !78, !noalias !77
  store <4 x i32> %i.hm, ptr %i.ho, align 4, !tbaa !73, !alias.scope !78, !noalias !77
  %index.next347 = add nuw i64 %index344, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next347, %n.vec340
  br i1 %i.hp, label %middle.block348, label %vector.body343, !llvm.loop !34

middle.block348:                                  ; preds = %vector.body343
  %cmp.n349 = icmp eq i64 %4, %n.vec340
  br i1 %cmp.n349, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i121.preheader505

.lr.ph.i121.preheader505:                         ; preds = %vector.memcheck335, %.lr.ph.i121.preheader, %middle.block348
  %.01519.i122.ph = phi i64 [ 0, %vector.memcheck335 ], [ 0, %.lr.ph.i121.preheader ], [ %n.vec340, %middle.block348 ] ; 3 uses
  %xtraiter520.a = and i64 %4, 3                  ; 2 uses
  %lcmp.mod521.not.a = icmp eq i64 %xtraiter520.a, 0
  br i1 %lcmp.mod521.not.a, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol

.lr.ph.i121.prol:                                 ; preds = %.lr.ph.i121.preheader505, %.lr.ph.i121.prol
  %.01519.i122.prol = phi i64 [ %i.hv, %.lr.ph.i121.prol ], [ %.01519.i122.ph, %.lr.ph.i121.preheader505 ] ; 3 uses
  %prol.iter522.a = phi i64 [ %prol.iter522.next.a, %.lr.ph.i121.prol ], [ 0, %.lr.ph.i121.preheader505 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i122.prol
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !76
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add i32 %i.hs, %i.hd
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01519.i122.prol
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !73
  %i.hv = add nuw i64 %.01519.i122.prol, 1        ; 2 uses
  %prol.iter522.next.a = add i64 %prol.iter522.a, 1 ; 2 uses
  %prol.iter522.cmp.not.a = icmp eq i64 %prol.iter522.next.a, %xtraiter520.a
  br i1 %prol.iter522.cmp.not.a, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol, !llvm.loop !35

.lr.ph.i121.prol.loopexit:                        ; preds = %.lr.ph.i121.prol, %.lr.ph.i121.preheader505
  %.01519.i122.unr = phi i64 [ %.01519.i122.ph, %.lr.ph.i121.preheader505 ], [ %i.hv, %.lr.ph.i121.prol ]
  %i.hw = sub i64 %.01519.i122.ph, %4
  %i.hx = icmp ugt i64 %i.hw, -4
  br i1 %i.hx, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i121

.preheader.i124:                                  ; preds = %bb.p
  br i1 %.not23.i119, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i125.preheader

.lr.ph21.i125.preheader:                          ; preds = %.preheader.i124
  %min.iters.check357 = icmp ult i64 %4, 12
  br i1 %min.iters.check357, label %.lr.ph21.i125.preheader503, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph21.i125.preheader
  %i.hy = shl i64 %4, 2
  %i.hz = getelementptr i8, ptr %0, i64 %i.hy
  %i.ia = getelementptr i8, ptr %2, i64 %4
  %bound0359 = icmp ult ptr %0, %i.ia
  %bound1360 = icmp ult ptr %2, %i.hz
  %found.conflict361 = and i1 %bound0359, %bound1360
  br i1 %found.conflict361, label %.lr.ph21.i125.preheader503, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck358
  %n.vec363 = and i64 %4, -8                      ; 3 uses
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next368, %vector.body364 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 %index365 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %wide.load366 = load <4 x i8>, ptr %i.ib, align 1, !tbaa !76, !alias.scope !79
  %wide.load367 = load <4 x i8>, ptr %i.ic, align 1, !tbaa !76, !alias.scope !79
  %i.id = zext <4 x i8> %wide.load366 to <4 x i32>
  %i.ie = zext <4 x i8> %wide.load367 to <4 x i32>
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index365 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store <4 x i32> %i.id, ptr %i.if, align 4, !tbaa !73, !alias.scope !80, !noalias !79
  store <4 x i32> %i.ie, ptr %i.ig, align 4, !tbaa !73, !alias.scope !80, !noalias !79
  %index.next368 = add nuw i64 %index365, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.ih, label %middle.block369, label %vector.body364, !llvm.loop !39

middle.block369:                                  ; preds = %vector.body364
  %cmp.n370 = icmp eq i64 %4, %n.vec363
  br i1 %cmp.n370, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i125.preheader503

.lr.ph21.i125.preheader503:                       ; preds = %vector.memcheck358, %.lr.ph21.i125.preheader, %middle.block369
  %.020.i126.ph = phi i64 [ 0, %vector.memcheck358 ], [ 0, %.lr.ph21.i125.preheader ], [ %n.vec363, %middle.block369 ] ; 3 uses
  %xtraiter523.a = and i64 %4, 3                  ; 2 uses
  %lcmp.mod524.not.a = icmp eq i64 %xtraiter523.a, 0
  br i1 %lcmp.mod524.not.a, label %.lr.ph21.i125.prol.loopexit, label %.lr.ph21.i125.prol

.lr.ph21.i125.prol:                               ; preds = %.lr.ph21.i125.preheader503, %.lr.ph21.i125.prol
  %.020.i126.prol = phi i64 [ %i.im, %.lr.ph21.i125.prol ], [ %.020.i126.ph, %.lr.ph21.i125.preheader503 ] ; 3 uses
  %prol.iter525.a = phi i64 [ %prol.iter525.next.a, %.lr.ph21.i125.prol ], [ 0, %.lr.ph21.i125.preheader503 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i126.prol
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !76
  %i.ik = zext i8 %i.ij to i32
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020.i126.prol
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !73
  %i.im = add nuw i64 %.020.i126.prol, 1          ; 2 uses
  %prol.iter525.next.a = add i64 %prol.iter525.a, 1 ; 2 uses
  %prol.iter525.cmp.not.a = icmp eq i64 %prol.iter525.next.a, %xtraiter523.a
  br i1 %prol.iter525.cmp.not.a, label %.lr.ph21.i125.prol.loopexit, label %.lr.ph21.i125.prol, !llvm.loop !40

.lr.ph21.i125.prol.loopexit:                      ; preds = %.lr.ph21.i125.prol, %.lr.ph21.i125.preheader503
  %.020.i126.unr = phi i64 [ %.020.i126.ph, %.lr.ph21.i125.preheader503 ], [ %i.im, %.lr.ph21.i125.prol ]
  %i.in = sub i64 %.020.i126.ph, %4
  %i.io = icmp ugt i64 %i.in, -4
  br i1 %i.io, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i125

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121
  %.01519.i122 = phi i64 [ %i.jm, %.lr.ph.i121 ], [ %.01519.i122.unr, %.lr.ph.i121.prol.loopexit ] ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i122
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !76
  %i.ir = zext i8 %i.iq to i32
  %i.is = add i32 %i.ir, %i.hd
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01519.i122
  store i32 %i.is, ptr %i.it, align 4, !tbaa !73
  %i.iu = add nuw i64 %.01519.i122, 1             ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !76
  %i.ix = zext i8 %i.iw to i32
  %i.iy = add i32 %i.ix, %i.hd
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.iu
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !73
  %i.ja = add nuw i64 %.01519.i122, 2             ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !76
  %i.jd = zext i8 %i.jc to i32
  %i.je = add i32 %i.jd, %i.hd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ja
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !73
  %i.jg = add nuw i64 %.01519.i122, 3             ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !76
  %i.jj = zext i8 %i.ji to i32
  %i.jk = add i32 %i.jj, %i.hd
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jg
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !73
  %i.jm = add nuw i64 %.01519.i122, 4             ; 2 uses
  %exitcond.not.i123.3 = icmp eq i64 %i.jm, %4
  br i1 %exitcond.not.i123.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i121, !llvm.loop !41

.lr.ph21.i125:                                    ; preds = %.lr.ph21.i125.prol.loopexit, %.lr.ph21.i125
  %.020.i126 = phi i64 [ %i.kg, %.lr.ph21.i125 ], [ %.020.i126.unr, %.lr.ph21.i125.prol.loopexit ] ; 6 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i126
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !76
  %i.jp = zext i8 %i.jo to i32
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020.i126
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !73
  %i.jr = add nuw i64 %.020.i126, 1               ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !76
  %i.ju = zext i8 %i.jt to i32
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jr
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !73
  %i.jw = add nuw i64 %.020.i126, 2               ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !76
  %i.jz = zext i8 %i.jy to i32
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jw
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !73
  %i.kb = add nuw i64 %.020.i126, 3               ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !76
  %i.ke = zext i8 %i.kd to i32
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kb
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !73
  %i.kg = add nuw i64 %.020.i126, 4               ; 2 uses
  %exitcond25.not.i127.3 = icmp eq i64 %i.kg, %4
  br i1 %exitcond25.not.i127.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i125, !llvm.loop !42

bb.q:                                             ; preds = %bb.o
  %i.kh = icmp eq i64 %1, 2                       ; 2 uses
  %or.cond15 = and i1 %i.kh, %i.bq
  br i1 %or.cond15, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ki = trunc i64 %5 to i16                     ; 8 uses
  %.not.i128 = icmp eq i16 %i.ki, 0
  br i1 %.not.i128, label %bb.s, label %.preheader.i129

.preheader.i129:                                  ; preds = %bb.r
  %.not13.i130 = icmp eq i64 %4, 0
  br i1 %.not13.i130, label %rangeUnpack_uint64_t_uint64_t.exit, label %iter.check314

iter.check314:                                    ; preds = %.preheader.i129
  %min.iters.check299 = icmp ult i64 %4, 4
  %i.kj = sub i64 %i.a, %i.b
  %diff.check298 = icmp ugt i64 %i.kj, -32
  %or.cond484 = or i1 %min.iters.check299, %diff.check298
  br i1 %or.cond484, label %.lr.ph.i131.preheader, label %vector.main.loop.iter.check300

vector.main.loop.iter.check300:                   ; preds = %iter.check314
  %min.iters.check301 = icmp ult i64 %4, 16
  br i1 %min.iters.check301, label %vec.epilog.ph318, label %vector.ph302

vector.ph302:                                     ; preds = %vector.main.loop.iter.check300
  %i.kk = and i64 %4, 12
  %n.vec303 = and i64 %4, -16                     ; 4 uses
  %broadcast.splatinsert304 = insertelement <8 x i16> poison, i16 %i.ki, i64 0
  %broadcast.splat305 = shufflevector <8 x i16> %broadcast.splatinsert304, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body306

vector.body306:                                   ; preds = %vector.ph302, %vector.body306
  %index307 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body306 ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index307 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %wide.load308 = load <8 x i16>, ptr %i.kl, align 2, !tbaa !75
  %wide.load309 = load <8 x i16>, ptr %i.km, align 2, !tbaa !75
  %i.kn = add <8 x i16> %wide.load308, %broadcast.splat305
  %i.ko = add <8 x i16> %wide.load309, %broadcast.splat305
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index307 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store <8 x i16> %i.kn, ptr %i.kp, align 2, !tbaa !75
  store <8 x i16> %i.ko, ptr %i.kq, align 2, !tbaa !75
  %index.next310 = add nuw i64 %index307, 16      ; 2 uses
  %i.kr = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.kr, label %middle.block311, label %vector.body306, !llvm.loop !43

middle.block311:                                  ; preds = %vector.body306
  %cmp.n312 = icmp eq i64 %4, %n.vec303
  br i1 %cmp.n312, label %rangeUnpack_uint64_t_uint64_t.exit, label %vec.epilog.iter.check316

vec.epilog.iter.check316:                         ; preds = %middle.block311
  %min.epilog.iters.check317 = icmp eq i64 %i.kk, 0
  br i1 %min.epilog.iters.check317, label %.lr.ph.i131.preheader, label %vec.epilog.ph318, !prof !81

vec.epilog.ph318:                                 ; preds = %vector.main.loop.iter.check300, %vec.epilog.iter.check316
  %vec.epilog.resume.val313 = phi i64 [ %n.vec303, %vec.epilog.iter.check316 ], [ 0, %vector.main.loop.iter.check300 ]
  %n.vec319 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert320 = insertelement <4 x i16> poison, i16 %i.ki, i64 0
  %broadcast.splat321 = shufflevector <4 x i16> %broadcast.splatinsert320, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body322

vec.epilog.vector.body322:                        ; preds = %vec.epilog.vector.body322, %vec.epilog.ph318
  %index323 = phi i64 [ %vec.epilog.resume.val313, %vec.epilog.ph318 ], [ %index.next325, %vec.epilog.vector.body322 ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index323
  %wide.load324 = load <4 x i16>, ptr %i.ks, align 2, !tbaa !75
  %i.kt = add <4 x i16> %wide.load324, %broadcast.splat321
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index323
  store <4 x i16> %i.kt, ptr %i.ku, align 2, !tbaa !75
  %index.next325 = add nuw i64 %index323, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next325, %n.vec319
  br i1 %i.kv, label %vec.epilog.middle.block326, label %vec.epilog.vector.body322, !llvm.loop !44

vec.epilog.middle.block326:                       ; preds = %vec.epilog.vector.body322
  %cmp.n327 = icmp eq i64 %4, %n.vec319
  br i1 %cmp.n327, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i131.preheader

.lr.ph.i131.preheader:                            ; preds = %iter.check314, %vec.epilog.iter.check316, %vec.epilog.middle.block326
  %.012.i132.ph = phi i64 [ 0, %iter.check314 ], [ %n.vec303, %vec.epilog.iter.check316 ], [ %n.vec319, %vec.epilog.middle.block326 ] ; 3 uses
  %xtraiter517.a = and i64 %4, 3                  ; 2 uses
  %lcmp.mod518.not.a = icmp eq i64 %xtraiter517.a, 0
  br i1 %lcmp.mod518.not.a, label %.lr.ph.i131.prol.loopexit, label %.lr.ph.i131.prol

.lr.ph.i131.prol:                                 ; preds = %.lr.ph.i131.preheader, %.lr.ph.i131.prol
  %.012.i132.prol = phi i64 [ %i.la, %.lr.ph.i131.prol ], [ %.012.i132.ph, %.lr.ph.i131.preheader ] ; 3 uses
  %prol.iter519.a = phi i64 [ %prol.iter519.next.a, %.lr.ph.i131.prol ], [ 0, %.lr.ph.i131.preheader ]
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.012.i132.prol
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !75
  %i.ky = add i16 %i.kx, %i.ki
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i132.prol
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !75
  %i.la = add nuw i64 %.012.i132.prol, 1          ; 2 uses
  %prol.iter519.next.a = add i64 %prol.iter519.a, 1 ; 2 uses
  %prol.iter519.cmp.not.a = icmp eq i64 %prol.iter519.next.a, %xtraiter517.a
  br i1 %prol.iter519.cmp.not.a, label %.lr.ph.i131.prol.loopexit, label %.lr.ph.i131.prol, !llvm.loop !45

.lr.ph.i131.prol.loopexit:                        ; preds = %.lr.ph.i131.prol, %.lr.ph.i131.preheader
  %.012.i132.unr = phi i64 [ %.012.i132.ph, %.lr.ph.i131.preheader ], [ %i.la, %.lr.ph.i131.prol ]
  %i.lb = sub i64 %.012.i132.ph, %4
  %i.lc = icmp ugt i64 %i.lb, -4
  br i1 %i.lc, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.prol.loopexit, %.lr.ph.i131
  %.012.i132 = phi i64 [ %i.lw, %.lr.ph.i131 ], [ %.012.i132.unr, %.lr.ph.i131.prol.loopexit ] ; 6 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.012.i132
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !75
  %i.lf = add i16 %i.le, %i.ki
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i132
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !75
  %i.lh = add nuw i64 %.012.i132, 1               ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !75
  %i.lk = add i16 %i.lj, %i.ki
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lh
  store i16 %i.lk, ptr %i.ll, align 2, !tbaa !75
  %i.lm = add nuw i64 %.012.i132, 2               ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !75
  %i.lp = add i16 %i.lo, %i.ki
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lm
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !75
  %i.lr = add nuw i64 %.012.i132, 3               ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !75
  %i.lu = add i16 %i.lt, %i.ki
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.lr
  store i16 %i.lu, ptr %i.lv, align 2, !tbaa !75
  %i.lw = add nuw i64 %.012.i132, 4               ; 2 uses
  %exitcond.not.i133.3 = icmp eq i64 %i.lw, %4
  br i1 %exitcond.not.i133.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i131, !llvm.loop !46

bb.s:                                             ; preds = %bb.r
  %i.lx = shl i64 %4, 1
  br label %rangeUnpack_uint64_t_uint64_t.exit.sink.split

bb.t:                                             ; preds = %bb.q
  %or.cond17 = and i1 %i.kh, %i.cs
  br i1 %or.cond17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ly = trunc i64 %5 to i16                     ; 8 uses
  %.not.i134 = icmp eq i16 %i.ly, 0
  %.not23.i135 = icmp eq i64 %4, 0                ; 2 uses
  br i1 %.not.i134, label %.preheader.i140, label %.preheader17.i136

.preheader17.i136:                                ; preds = %bb.u
  br i1 %.not23.i135, label %rangeUnpack_uint64_t_uint64_t.exit, label %iter.check247

iter.check247:                                    ; preds = %.preheader17.i136
  %min.iters.check231 = icmp ult i64 %4, 4
  br i1 %min.iters.check231, label %.lr.ph.i137.preheader, label %vector.memcheck232

vector.memcheck232:                               ; preds = %iter.check247
  %i.lz = shl i64 %4, 1
  %i.ma = getelementptr i8, ptr %0, i64 %i.lz
  %i.mb = getelementptr i8, ptr %2, i64 %4
  %bound0 = icmp ult ptr %0, %i.mb
  %bound1 = icmp ult ptr %2, %i.ma
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check233

vector.main.loop.iter.check233:                   ; preds = %vector.memcheck232
  %min.iters.check234 = icmp ult i64 %4, 16
  br i1 %min.iters.check234, label %vec.epilog.ph251, label %vector.ph235

vector.ph235:                                     ; preds = %vector.main.loop.iter.check233
  %i.mc = and i64 %4, 12
  %n.vec236 = and i64 %4, -16                     ; 4 uses
  %broadcast.splatinsert237 = insertelement <8 x i16> poison, i16 %i.ly, i64 0
  %broadcast.splat238 = shufflevector <8 x i16> %broadcast.splatinsert237, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.ph235, %vector.body239
  %index240 = phi i64 [ 0, %vector.ph235 ], [ %index.next243, %vector.body239 ] ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 %index240 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %wide.load241 = load <8 x i8>, ptr %i.md, align 1, !tbaa !76, !alias.scope !82
  %wide.load242 = load <8 x i8>, ptr %i.me, align 1, !tbaa !76, !alias.scope !82
  %i.mf = zext <8 x i8> %wide.load241 to <8 x i16>
  %i.mg = zext <8 x i8> %wide.load242 to <8 x i16>
  %i.mh = add <8 x i16> %broadcast.splat238, %i.mf
  %i.mi = add <8 x i16> %broadcast.splat238, %i.mg
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index240 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store <8 x i16> %i.mh, ptr %i.mj, align 2, !tbaa !75, !alias.scope !83, !noalias !82
  store <8 x i16> %i.mi, ptr %i.mk, align 2, !tbaa !75, !alias.scope !83, !noalias !82
  %index.next243 = add nuw i64 %index240, 16      ; 2 uses
  %i.ml = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.ml, label %middle.block244, label %vector.body239, !llvm.loop !50

middle.block244:                                  ; preds = %vector.body239
  %cmp.n245 = icmp eq i64 %4, %n.vec236
  br i1 %cmp.n245, label %rangeUnpack_uint64_t_uint64_t.exit, label %vec.epilog.iter.check249

vec.epilog.iter.check249:                         ; preds = %middle.block244
  %min.epilog.iters.check250 = icmp eq i64 %i.mc, 0
  br i1 %min.epilog.iters.check250, label %.lr.ph.i137.preheader, label %vec.epilog.ph251, !prof !81

vec.epilog.ph251:                                 ; preds = %vector.main.loop.iter.check233, %vec.epilog.iter.check249
  %vec.epilog.resume.val246 = phi i64 [ %n.vec236, %vec.epilog.iter.check249 ], [ 0, %vector.main.loop.iter.check233 ]
  %n.vec252 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert253 = insertelement <4 x i16> poison, i16 %i.ly, i64 0
  %broadcast.splat254 = shufflevector <4 x i16> %broadcast.splatinsert253, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body255

vec.epilog.vector.body255:                        ; preds = %vec.epilog.vector.body255, %vec.epilog.ph251
  %index256 = phi i64 [ %vec.epilog.resume.val246, %vec.epilog.ph251 ], [ %index.next258, %vec.epilog.vector.body255 ] ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 %index256
  %wide.load257 = load <4 x i8>, ptr %i.mm, align 1, !tbaa !76, !alias.scope !82
  %i.mn = zext <4 x i8> %wide.load257 to <4 x i16>
  %i.mo = add <4 x i16> %broadcast.splat254, %i.mn
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index256
  store <4 x i16> %i.mo, ptr %i.mp, align 2, !tbaa !75, !alias.scope !83, !noalias !82
  %index.next258 = add nuw i64 %index256, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next258, %n.vec252
  br i1 %i.mq, label %vec.epilog.middle.block259, label %vec.epilog.vector.body255, !llvm.loop !51
end_hunk_2
begin_hunk_3_@rangePackDecode:bb.a
  br i1 %cmp.n260, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %iter.check247, %vector.memcheck232, %vec.epilog.iter.check249, %vec.epilog.middle.block259
  %.01519.i138.ph = phi i64 [ 0, %iter.check247 ], [ 0, %vector.memcheck232 ], [ %n.vec236, %vec.epilog.iter.check249 ], [ %n.vec252, %vec.epilog.middle.block259 ] ; 3 uses
  %xtraiter511 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137.prol
  %.01519.i138.prol = phi i64 [ %i.mw, %.lr.ph.i137.prol ], [ %.01519.i138.ph, %.lr.ph.i137.preheader ] ; 3 uses
  %prol.iter513 = phi i64 [ %prol.iter513.next, %.lr.ph.i137.prol ], [ 0, %.lr.ph.i137.preheader ]
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i138.prol
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !76
  %i.mt = zext i8 %i.ms to i16
  %i.mu = add i16 %i.mt, %i.ly
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01519.i138.prol
  store i16 %i.mu, ptr %i.mv, align 2, !tbaa !75
  %i.mw = add nuw i64 %.01519.i138.prol, 1        ; 2 uses
  %prol.iter513.next = add i64 %prol.iter513, 1   ; 2 uses
  %prol.iter513.cmp.not = icmp eq i64 %prol.iter513.next, %xtraiter511
  br i1 %prol.iter513.cmp.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol, !llvm.loop !52

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.01519.i138.unr = phi i64 [ %.01519.i138.ph, %.lr.ph.i137.preheader ], [ %i.mw, %.lr.ph.i137.prol ]
  %i.mx = sub i64 %.01519.i138.ph, %4
  %i.my = icmp ugt i64 %i.mx, -4
  br i1 %i.my, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i137

.preheader.i140:                                  ; preds = %bb.u
  br i1 %.not23.i135, label %rangeUnpack_uint64_t_uint64_t.exit, label %iter.check284

iter.check284:                                    ; preds = %.preheader.i140
  %min.iters.check267 = icmp ult i64 %4, 4
  br i1 %min.iters.check267, label %.lr.ph21.i141.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %iter.check284
  %i.mz = shl i64 %4, 1
  %i.na = getelementptr i8, ptr %0, i64 %i.mz
  %i.nb = getelementptr i8, ptr %2, i64 %4
  %bound0269 = icmp ult ptr %0, %i.nb
  %bound1270 = icmp ult ptr %2, %i.na
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %.lr.ph21.i141.preheader, label %vector.main.loop.iter.check272

vector.main.loop.iter.check272:                   ; preds = %vector.memcheck268
  %min.iters.check273 = icmp ult i64 %4, 16
  br i1 %min.iters.check273, label %vec.epilog.ph288, label %vector.ph274

vector.ph274:                                     ; preds = %vector.main.loop.iter.check272
  %i.nc = and i64 %4, 12
  %n.vec275 = and i64 %4, -16                     ; 4 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.ph274, %vector.body276
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next280, %vector.body276 ] ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 %index277 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %wide.load278 = load <8 x i8>, ptr %i.nd, align 1, !tbaa !76, !alias.scope !84
  %wide.load279 = load <8 x i8>, ptr %i.ne, align 1, !tbaa !76, !alias.scope !84
  %i.nf = zext <8 x i8> %wide.load278 to <8 x i16>
  %i.ng = zext <8 x i8> %wide.load279 to <8 x i16>
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index277 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store <8 x i16> %i.nf, ptr %i.nh, align 2, !tbaa !75, !alias.scope !85, !noalias !84
  store <8 x i16> %i.ng, ptr %i.ni, align 2, !tbaa !75, !alias.scope !85, !noalias !84
  %index.next280 = add nuw i64 %index277, 16      ; 2 uses
  %i.nj = icmp eq i64 %index.next280, %n.vec275
  br i1 %i.nj, label %middle.block281, label %vector.body276, !llvm.loop !56

middle.block281:                                  ; preds = %vector.body276
  %cmp.n282 = icmp eq i64 %4, %n.vec275
  br i1 %cmp.n282, label %rangeUnpack_uint64_t_uint64_t.exit, label %vec.epilog.iter.check286

vec.epilog.iter.check286:                         ; preds = %middle.block281
  %min.epilog.iters.check287 = icmp eq i64 %i.nc, 0
  br i1 %min.epilog.iters.check287, label %.lr.ph21.i141.preheader, label %vec.epilog.ph288, !prof !81

vec.epilog.ph288:                                 ; preds = %vector.main.loop.iter.check272, %vec.epilog.iter.check286
  %vec.epilog.resume.val283 = phi i64 [ %n.vec275, %vec.epilog.iter.check286 ], [ 0, %vector.main.loop.iter.check272 ]
  %n.vec289 = and i64 %4, -4                      ; 3 uses
  br label %vec.epilog.vector.body290

vec.epilog.vector.body290:                        ; preds = %vec.epilog.vector.body290, %vec.epilog.ph288
  %index291 = phi i64 [ %vec.epilog.resume.val283, %vec.epilog.ph288 ], [ %index.next293, %vec.epilog.vector.body290 ] ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 %index291
  %wide.load292 = load <4 x i8>, ptr %i.nk, align 1, !tbaa !76, !alias.scope !84
  %i.nl = zext <4 x i8> %wide.load292 to <4 x i16>
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index291
  store <4 x i16> %i.nl, ptr %i.nm, align 2, !tbaa !75, !alias.scope !85, !noalias !84
  %index.next293 = add nuw i64 %index291, 4       ; 2 uses
  %i.nn = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.nn, label %vec.epilog.middle.block294, label %vec.epilog.vector.body290, !llvm.loop !57

vec.epilog.middle.block294:                       ; preds = %vec.epilog.vector.body290
  %cmp.n295 = icmp eq i64 %4, %n.vec289
  br i1 %cmp.n295, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i141.preheader

.lr.ph21.i141.preheader:                          ; preds = %iter.check284, %vector.memcheck268, %vec.epilog.iter.check286, %vec.epilog.middle.block294
  %.020.i142.ph = phi i64 [ 0, %iter.check284 ], [ 0, %vector.memcheck268 ], [ %n.vec275, %vec.epilog.iter.check286 ], [ %n.vec289, %vec.epilog.middle.block294 ] ; 3 uses
  %xtraiter514 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph21.i141.prol.loopexit, label %.lr.ph21.i141.prol

.lr.ph21.i141.prol:                               ; preds = %.lr.ph21.i141.preheader, %.lr.ph21.i141.prol
  %.020.i142.prol = phi i64 [ %i.ns, %.lr.ph21.i141.prol ], [ %.020.i142.ph, %.lr.ph21.i141.preheader ] ; 3 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %.lr.ph21.i141.prol ], [ 0, %.lr.ph21.i141.preheader ]
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i142.prol
  %i.np = load i8, ptr %i.no, align 1, !tbaa !76
  %i.nq = zext i8 %i.np to i16
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.020.i142.prol
  store i16 %i.nq, ptr %i.nr, align 2, !tbaa !75
  %i.ns = add nuw i64 %.020.i142.prol, 1          ; 2 uses
  %prol.iter516.next = add i64 %prol.iter516, 1   ; 2 uses
  %prol.iter516.cmp.not = icmp eq i64 %prol.iter516.next, %xtraiter514
  br i1 %prol.iter516.cmp.not, label %.lr.ph21.i141.prol.loopexit, label %.lr.ph21.i141.prol, !llvm.loop !58

.lr.ph21.i141.prol.loopexit:                      ; preds = %.lr.ph21.i141.prol, %.lr.ph21.i141.preheader
  %.020.i142.unr = phi i64 [ %.020.i142.ph, %.lr.ph21.i141.preheader ], [ %i.ns, %.lr.ph21.i141.prol ]
  %i.nt = sub i64 %.020.i142.ph, %4
  %i.nu = icmp ugt i64 %i.nt, -4
  br i1 %i.nu, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i141

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.01519.i138 = phi i64 [ %i.os, %.lr.ph.i137 ], [ %.01519.i138.unr, %.lr.ph.i137.prol.loopexit ] ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i138
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !76
  %i.nx = zext i8 %i.nw to i16
  %i.ny = add i16 %i.nx, %i.ly
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01519.i138
  store i16 %i.ny, ptr %i.nz, align 2, !tbaa !75
  %i.oa = add nuw i64 %.01519.i138, 1             ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !76
  %i.od = zext i8 %i.oc to i16
  %i.oe = add i16 %i.od, %i.ly
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.oa
  store i16 %i.oe, ptr %i.of, align 2, !tbaa !75
  %i.og = add nuw i64 %.01519.i138, 2             ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !76
  %i.oj = zext i8 %i.oi to i16
  %i.ok = add i16 %i.oj, %i.ly
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.og
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !75
  %i.om = add nuw i64 %.01519.i138, 3             ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !76
  %i.op = zext i8 %i.oo to i16
  %i.oq = add i16 %i.op, %i.ly
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.om
  store i16 %i.oq, ptr %i.or, align 2, !tbaa !75
  %i.os = add nuw i64 %.01519.i138, 4             ; 2 uses
  %exitcond.not.i139.3 = icmp eq i64 %i.os, %4
  br i1 %exitcond.not.i139.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i137, !llvm.loop !59

.lr.ph21.i141:                                    ; preds = %.lr.ph21.i141.prol.loopexit, %.lr.ph21.i141
  %.020.i142 = phi i64 [ %i.pm, %.lr.ph21.i141 ], [ %.020.i142.unr, %.lr.ph21.i141.prol.loopexit ] ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i142
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !76
  %i.ov = zext i8 %i.ou to i16
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.020.i142
  store i16 %i.ov, ptr %i.ow, align 2, !tbaa !75
  %i.ox = add nuw i64 %.020.i142, 1               ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !76
  %i.pa = zext i8 %i.oz to i16
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ox
  store i16 %i.pa, ptr %i.pb, align 2, !tbaa !75
  %i.pc = add nuw i64 %.020.i142, 2               ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !76
  %i.pf = zext i8 %i.pe to i16
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pc
  store i16 %i.pf, ptr %i.pg, align 2, !tbaa !75
  %i.ph = add nuw i64 %.020.i142, 3               ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !76
  %i.pk = zext i8 %i.pj to i16
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ph
  store i16 %i.pk, ptr %i.pl, align 2, !tbaa !75
  %i.pm = add nuw i64 %.020.i142, 4               ; 2 uses
  %exitcond25.not.i143.3 = icmp eq i64 %i.pm, %4
  br i1 %exitcond25.not.i143.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i141, !llvm.loop !60

bb.v:                                             ; preds = %bb.t
  %i.pn = icmp eq i64 %1, 1
  %or.cond19 = and i1 %i.pn, %i.cs
  br i1 %or.cond19, label %bb.w, label %rangeUnpack_uint64_t_uint64_t.exit

bb.w:                                             ; preds = %bb.v
  %i.po = trunc i64 %5 to i8                      ; 8 uses
  %.not.i144 = icmp eq i8 %i.po, 0
  br i1 %.not.i144, label %rangeUnpack_uint64_t_uint64_t.exit.sink.split, label %.preheader.i145

.preheader.i145:                                  ; preds = %bb.w
  %.not13.i146 = icmp eq i64 %4, 0
  br i1 %.not13.i146, label %rangeUnpack_uint64_t_uint64_t.exit, label %iter.check

iter.check:                                       ; preds = %.preheader.i145
  %min.iters.check = icmp ult i64 %4, 4
  %i.pp = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.pp, -32
  %or.cond485 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond485, label %.lr.ph.i147.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check220 = icmp ult i64 %4, 32
  br i1 %min.iters.check220, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pq = and i64 %4, 28
  %n.vec = and i64 %4, -32                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.po, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %wide.load = load <16 x i8>, ptr %i.pr, align 1, !tbaa !76
  %wide.load221 = load <16 x i8>, ptr %i.ps, align 1, !tbaa !76
  %i.pt = add <16 x i8> %wide.load, %broadcast.splat
  %i.pu = add <16 x i8> %wide.load221, %broadcast.splat
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <16 x i8> %i.pt, ptr %i.pv, align 1, !tbaa !76
  store <16 x i8> %i.pu, ptr %i.pw, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.px = icmp eq i64 %index.next, %n.vec
  br i1 %i.px, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %rangeUnpack_uint64_t_uint64_t.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i147.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec222 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert223 = insertelement <4 x i8> poison, i8 %i.po, i64 0
  %broadcast.splat224 = shufflevector <4 x i8> %broadcast.splatinsert223, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next227, %vec.epilog.vector.body ] ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 %index225
  %wide.load226 = load <4 x i8>, ptr %i.py, align 1, !tbaa !76
  %i.pz = add <4 x i8> %wide.load226, %broadcast.splat224
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 %index225
  store <4 x i8> %i.pz, ptr %i.qa, align 1, !tbaa !76
  %index.next227 = add nuw i64 %index225, 4       ; 2 uses
  %i.qb = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.qb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n228 = icmp eq i64 %4, %n.vec222
  br i1 %cmp.n228, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i147.preheader

.lr.ph.i147.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i148.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec222, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i147.prol.loopexit, label %.lr.ph.i147.prol

.lr.ph.i147.prol:                                 ; preds = %.lr.ph.i147.preheader, %.lr.ph.i147.prol
  %.012.i148.prol = phi i64 [ %i.qg, %.lr.ph.i147.prol ], [ %.012.i148.ph, %.lr.ph.i147.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i147.prol ], [ 0, %.lr.ph.i147.preheader ]
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 %.012.i148.prol
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !76
  %i.qe = add i8 %i.qd, %i.po
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i148.prol
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !76
  %i.qg = add nuw i64 %.012.i148.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i147.prol.loopexit, label %.lr.ph.i147.prol, !llvm.loop !63

.lr.ph.i147.prol.loopexit:                        ; preds = %.lr.ph.i147.prol, %.lr.ph.i147.preheader
  %.012.i148.unr = phi i64 [ %.012.i148.ph, %.lr.ph.i147.preheader ], [ %i.qg, %.lr.ph.i147.prol ]
  %i.qh = sub i64 %.012.i148.ph, %4
  %i.qi = icmp ugt i64 %i.qh, -4
  br i1 %i.qi, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.lr.ph.i147.prol.loopexit, %.lr.ph.i147
  %.012.i148 = phi i64 [ %i.rc, %.lr.ph.i147 ], [ %.012.i148.unr, %.lr.ph.i147.prol.loopexit ] ; 6 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %2, i64 %.012.i148
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !76
  %i.ql = add i8 %i.qk, %i.po
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i148
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !76
  %i.qn = add nuw i64 %.012.i148, 1               ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !76
  %i.qq = add i8 %i.qp, %i.po
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 %i.qn
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !76
  %i.qs = add nuw i64 %.012.i148, 2               ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !76
  %i.qv = add i8 %i.qu, %i.po
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 %i.qs
  store i8 %i.qv, ptr %i.qw, align 1, !tbaa !76
  %i.qx = add nuw i64 %.012.i148, 3               ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !76
  %i.ra = add i8 %i.qz, %i.po
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 %i.qx
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !76
  %i.rc = add nuw i64 %.012.i148, 4               ; 2 uses
  %exitcond.not.i149.3 = icmp eq i64 %i.rc, %4
  br i1 %exitcond.not.i149.3, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i147, !llvm.loop !64

rangeUnpack_uint64_t_uint64_t.exit.sink.split:    ; preds = %bb.w, %bb.c, %bb.l, %bb.s
  %.sink = phi i64 [ %i.an, %bb.c ], [ %i.lx, %bb.s ], [ %i.ga, %bb.l ], [ %4, %bb.w ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %.sink, i1 false)
  br label %rangeUnpack_uint64_t_uint64_t.exit

rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa: ; preds = %.lr.ph21.i99
  %lcmp.mod534.not = icmp eq i64 %xtraiter532.a, 0
  br i1 %lcmp.mod534.not, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i99.epil.preheader

.lr.ph21.i99.epil.preheader:                      ; preds = %rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa, %.lr.ph21.i99.preheader
  %.020.i100.epil.init = phi i64 [ 0, %.lr.ph21.i99.preheader ], [ %i.eo, %rangeUnpack_uint64_t_uint64_t.exit.loopexit495.unr-lcssa ]
  %lcmp.mod535 = icmp ne i64 %xtraiter532.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod535)
  br label %.lr.ph21.i99.epil

.lr.ph21.i99.epil:                                ; preds = %.lr.ph21.i99.epil, %.lr.ph21.i99.epil.preheader
  %.020.i100.epil = phi i64 [ %i.rh, %.lr.ph21.i99.epil ], [ %.020.i100.epil.init, %.lr.ph21.i99.epil.preheader ] ; 3 uses
  %epil.iter533 = phi i64 [ %epil.iter533.next, %.lr.ph21.i99.epil ], [ 0, %.lr.ph21.i99.epil.preheader ]
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i100.epil
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !76
  %i.rf = zext i8 %i.re to i64
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020.i100.epil
  store i64 %i.rf, ptr %i.rg, align 8, !tbaa !68
  %i.rh = add nuw i64 %.020.i100.epil, 1
  %epil.iter533.next = add i64 %epil.iter533, 1   ; 2 uses
  %epil.iter533.cmp.not = icmp eq i64 %epil.iter533.next, %xtraiter532.a
  br i1 %epil.iter533.cmp.not, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph21.i99.epil, !llvm.loop !65

rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa: ; preds = %.lr.ph.i95
  %lcmp.mod530.not = icmp eq i64 %xtraiter529.a, 0
  br i1 %lcmp.mod530.not, label %rangeUnpack_uint64_t_uint64_t.exit, label %.lr.ph.i95.epil.preheader

.lr.ph.i95.epil.preheader:                        ; preds = %rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa, %.lr.ph.i95.preheader
  %.01519.i96.epil.init = phi i64 [ 0, %.lr.ph.i95.preheader ], [ %i.du, %rangeUnpack_uint64_t_uint64_t.exit.loopexit496.unr-lcssa ]
  %lcmp.mod531 = icmp ne i64 %xtraiter529.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod531)
  br label %.lr.ph.i95.epil

.lr.ph.i95.epil:                                  ; preds = %.lr.ph.i95.epil, %.lr.ph.i95.epil.preheader
  %.01519.i96.epil = phi i64 [ %i.rn, %.lr.ph.i95.epil ], [ %.01519.i96.epil.init, %.lr.ph.i95.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i95.epil ], [ 0, %.lr.ph.i95.epil.preheader ]
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 %.01519.i96.epil
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !76
  %i.rk = zext i8 %i.rj to i64
  %i.rl = add i64 %5, %i.rk
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i96.epil
  store i64 %i.rl, ptr %i.rm, align 8, !tbaa !68
  %i.rn = add nuw i64 %.01519.i96.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter529.a
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
