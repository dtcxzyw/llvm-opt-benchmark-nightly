Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/lzma_decoder?download=true
inline.NumInlined: 27
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@switch.table.lzma_decode = private unnamed_addr constant [19 x i8] c"\09\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\09", align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 6) i32 @lzma_lzma_decoder_create(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lzma_alloc(i64 noundef 28352, ptr noundef %1) #8 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !11
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @lzma_decode, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @lzma_decoder_reset, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @lzma_decoder_uncompressed, ptr %i.g, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = load i32, ptr %2, align 8, !tbaa !17
  %i.i = zext i32 %i.h to i64
  store i64 %i.i, ptr %3, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 5, %bb.b ]
  ret i32 %.0
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 10) i32 @lzma_decode(ptr noundef %0, ptr noalias nofree noundef captures(none) %1, ptr noalias noundef %2, ptr noalias nofree noundef captures(none) %3, i64 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28268 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28276 ; 4 uses
  %.promoted.i = load i32, ptr %i.b, align 4, !tbaa !75, !noalias !76 ; 2 uses
  %.not15.i = icmp eq i32 %.promoted.i, 0
  %.sroa.230.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 28272 ; 3 uses
  br i1 %.not15.i, label %..loopexit1608_crit_edge, label %.lr.ph.i

..loopexit1608_crit_edge:                         ; preds = %bb.a
  %.sroa.230.0.copyload.pre = load i32, ptr %.sroa.230.0..sroa_idx.phi.trans.insert, align 4, !tbaa !77
  %.pre = load i64, ptr %3, align 8, !tbaa !78
  br label %.loopexit1608

.lr.ph.i:                                         ; preds = %bb.a
  %.promoted20.i = load i64, ptr %3, align 8, !tbaa !78, !alias.scope !74, !noalias !73
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %i.c = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.d = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.e = icmp eq i64 %i.c, %4
  br i1 %i.e, label %rc_read_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %i.d, 5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26, !alias.scope !73, !noalias !74 ; 2 uses
  br i1 %i.f, label %bb.d, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.c
  %i.i = zext i8 %i.h to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not14.i = icmp eq i8 %i.h, 0
  br i1 %.not14.i, label %bb.e, label %rc_read_init.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge21.i
  %i.j = phi i32 [ %i.i, %._crit_edge21.i ], [ 0, %bb.d ]
  %i.k = load i32, ptr %.sroa.230.0..sroa_idx.phi.trans.insert, align 4, !tbaa !79, !noalias !76
  %i.l = shl i32 %i.k, 8
  %i.m = or disjoint i32 %i.l, %i.j               ; 2 uses
  store i32 %i.m, ptr %.sroa.230.0..sroa_idx.phi.trans.insert, align 4, !tbaa !79, !noalias !76
  %i.n = add i64 %i.c, 1                          ; 3 uses
  store i64 %i.n, ptr %3, align 8, !tbaa !78, !alias.scope !74, !noalias !73
  %i.o = add i32 %i.d, -1                         ; 3 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !75, !noalias !76
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %.loopexit1608, label %bb.b, !llvm.loop !55

.loopexit1608:                                    ; preds = %bb.e, %..loopexit1608_crit_edge
  %i.p = phi i64 [ %.pre, %..loopexit1608_crit_edge ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.230.0.copyload = phi i32 [ %.sroa.230.0.copyload.pre, %..loopexit1608_crit_edge ], [ %i.m, %bb.e ] ; 24 uses
  %.sroa.0.0.copyload1459 = load ptr, ptr %1, align 8, !tbaa !80 ; 37 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !78 ; 28 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !78 ; 24 uses
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.66.0.copyload = load i64, ptr %.sroa.66.0..sroa_idx, align 8, !tbaa !78 ; 2 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8, !tbaa !78 ; 4 uses
  %.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.80.0.copyload = load i8, ptr %.sroa.80.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4, !tbaa !77 ; 24 uses
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28272 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 25 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 41 uses
  %gepdiff = sub nsw i64 %4, %i.p
  %i.s = icmp slt i64 %gepdiff, 21
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -20
  %i.u = select i1 %i.s, ptr %i.q, ptr %i.t       ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28280 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !82   ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28284 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83   ; 24 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28288 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !84  ; 24 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28292 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !85 ; 24 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28296 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !86 ; 24 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28300
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28328 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87 ; 24 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28336 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !88 ; 24 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28340 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !89 ; 24 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28344 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !90 ; 24 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28348 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !91 ; 24 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28308
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !34 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28304
  %i.au = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.av = trunc i64 %.sroa.17.0.copyload to i32
  %i.aw = and i32 %i.ag, %i.av                    ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28312 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !36 ; 3 uses
  %i.az = icmp eq i64 %i.ay, -1                   ; 23 uses
  %i.ba = sub i64 %.sroa.66.0.copyload, %.sroa.17.0.copyload
  %.not1408 = icmp ugt i64 %i.ay, %i.ba
  %or.cond1558 = select i1 %i.az, i1 true, i1 %.not1408 ; 2 uses
  %i.bb = add i64 %i.ay, %.sroa.17.0.copyload
  %.sroa.66.0 = select i1 %or.cond1558, i64 %.sroa.66.0.copyload, i64 %i.bb ; 13 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28324 ; 27 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !37
  switch i32 %i.bd, label %.loopexit1573 [
    i32 0, label %.loopexit1572
    i32 1, label %.loopexit1572
    i32 2, label %bb.br
    i32 3, label %bb.ca
    i32 4, label %.loopexit1605
    i32 5, label %bb.cl
    i32 6, label %bb.cr
    i32 7, label %bb.cy
    i32 8, label %bb.df
    i32 9, label %bb.dp
    i32 10, label %bb.eb
    i32 11, label %bb.el
    i32 12, label %bb.es
    i32 13, label %bb.fc
    i32 14, label %bb.fi
    i32 16, label %bb.fo
    i32 15, label %dict_get.exit1429
    i32 17, label %bb.fx
    i32 18, label %bb.ge
    i32 19, label %bb.gm
    i32 20, label %bb.gt
    i32 21, label %bb.ha
    i32 22, label %bb.hk
  ]

bb.f:                                             ; preds = %.lr.ph, %dict_get.exit1424
  %i.be = phi i32 [ %i.dk, %.lr.ph ], [ %i.jt, %dict_get.exit1424 ]
  %.sroa.230.01835 = phi i32 [ %.sroa.230.0.ph16031874, %.lr.ph ], [ %.sroa.230.10, %dict_get.exit1424 ] ; 2 uses
  %.sroa.0.01834 = phi i32 [ %.sroa.0.0.ph16021873, %.lr.ph ], [ %i.jd, %dict_get.exit1424 ] ; 3 uses
  %.09721833 = phi ptr [ %.0972.ph16011872, %.lr.ph ], [ %.10, %dict_get.exit1424 ] ; 3 uses
  %.09751832 = phi i32 [ %.0975.ph16001871, %.lr.ph ], [ %i.jk, %dict_get.exit1424 ] ; 9 uses
  %.sroa.17.01831 = phi i64 [ %.sroa.17.0.ph15931868, %.lr.ph ], [ %i.jq, %dict_get.exit1424 ] ; 22 uses
  %.sroa.55.01830 = phi i64 [ %.sroa.55.0.ph15921867, %.lr.ph ], [ %.sroa.55.28, %dict_get.exit1424 ] ; 7 uses
  %i.bf = icmp ult i32 %.sroa.0.01834, 16777216
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = shl nuw i32 %.sroa.0.01834, 8
  %i.bh = shl i32 %.sroa.230.01835, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.09721833, i64 1
  %i.bj = load i8, ptr %.09721833, align 1, !tbaa !26
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1973 = phi ptr [ %i.bi, %bb.g ], [ %.09721833, %bb.f ] ; 5 uses
  %.sroa.0.1 = phi i32 [ %i.bg, %bb.g ], [ %.sroa.0.01834, %bb.f ] ; 2 uses
  %.sroa.230.1 = phi i32 [ %i.bl, %bb.g ], [ %.sroa.230.01835, %bb.f ] ; 4 uses
  %i.bm = lshr i32 %.sroa.0.1, 11
  %i.bn = zext i32 %.09751832 to i64              ; 6 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.ahe, i64 %i.bn
  %i.bp = zext i32 %i.be to i64                   ; 6 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp ; 3 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !38 ; 4 uses
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = mul i32 %i.bm, %i.bs                    ; 5 uses
  %i.bu = icmp ult i32 %.sroa.230.1, %i.bt
  br i1 %i.bu, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bv = sub nsw i32 2048, %i.bs
  %i.bw = lshr i32 %i.bv, 5
  %i.bx = trunc i32 %i.bw to i16
  %i.by = add i16 %i.br, %i.bx
  store i16 %i.by, ptr %i.bq, align 2, !tbaa !38
  %i.bz = shl i64 %.sroa.17.01831, 8
  %i.ca = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.01831 ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !26
  %i.cd = zext i8 %i.cc to i64
  %i.ce = or disjoint i64 %i.bz, %i.cd
  %i.cf = and i64 %i.ce, %i.ahi
  %i.cg = shl i64 %i.cf, %i.ahj
  %.idx1413 = mul i64 %i.cg, 6
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.idx1413 ; 4 uses
  %i.ci = icmp ult i32 %.09751832, 7
  br i1 %i.ci, label %bb.j, label %dict_get.exit

bb.j:                                             ; preds = %bb.i
  %i.cj = tail call i32 @llvm.usub.sat.i32(i32 %.09751832, i32 3)
  %i.ck = tail call { i32, i32, i32, i32, i32, i32, i32, ptr } asm "movzwl\092($8), $4\0A\09mov\09$$2, $6\0A\09movzwl\094($8), $5\0A\09cmp\09$10, $0\0A\09jae\091f\0A\09shl\09$11, $1\0A\09mov\09($7), ${1:b}\0A\09shl\09$11, $0\0A\09inc\09$7\0A1:\0Amov\09$0, $2\0A\09shr\09$12, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09movzwl\096($8), $2\0A\09cmovae\09$2, $5\0A\09lea\09${13:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09sbb\09$$-1, $6\0A\09shr\09$14, $2\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($8, ${3:q}, 1)\0A\09movzwl\09($8, ${6:q}, 4), $4\0A\09cmp\09$10, $0\0A\09jae\091f\0A\09shl\09$11, $1\0A\09mov\09($7), ${1:b}\0A\09shl\09$11, $0\0A\09inc\09$7\0A1:\0Amov\09$0, $2\0A\09shr\09$12, $0\0A\09imul\09$5, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09movzwl\092($8, ${6:q}, 4), $2\0A\09lea\09(${6:q}, ${6:q}), $6\0A\09cmovae\09$2, $4\0A\09lea\09${13:c}(${5:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$5, $2\0A\09sbb\09$$-1, $6\0A\09shr\09$14, $2\0A\09sub\09$2, $5\0A\09mov\09${5:w}, ($8, ${3:q}, 1)\0A\09movzwl\09($8, ${6:q}, 4), $5\0A\09cmp\09$10, $0\0A\09jae\091f\0A\09shl\09$11, $1\0A\09mov\09($7), ${1:b}\0A\09shl\09$11, $0\0A\09inc\09$7\0A1:\0Amov\09$0, $2\0A\09shr\09$12, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09movzwl\092($8, ${6:q}, 4), $2\0A\09lea\09(${6:q}, ${6:q}), $6\0A\09cmovae\09$2, $5\0A\09lea\09${13:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09sbb\09$$-1, $6\0A\09shr\09$14, $2\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($8, ${3:q}, 1)\0A\09movzwl\09($8, ${6:q}, 4), $4\0A\09cmp\09$10, $0\0A\09jae\091f\0A\09shl\09$11, $1\0A\09mov\09($7), ${1:b}\0A\09shl\09$11, $0\0A\09inc\09$7\0A1:\0Amov\09$0, $2\0A\09shr\09$12, $0\0A\09imul\09$5, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09movzwl\092($8, ${6:q}, 4), $2\0A\09lea\09(${6:q}, ${6:q}), $6\0A\09cmovae\09$2, $4\0A\09lea\09${13:c}(${5:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$5, $2\0A\09sbb\09$$-1, $6\0A\09shr\09$14, $2\0A\09sub\09$2, $5\0A\09mov\09${5:w}, ($8, ${3:q}, 1)\0A\09movzwl\09($8, ${6:q}, 4), $5\0A\09cmp\09$10, $0\0A\09jae\091f\0A\09shl\09$11, $1\0A\09mov\09($7), ${1:b}\0A\09shl\09$11, $0\0A\09inc\09$7\0A1:\0Amov\09$0, $2\0A\09shr\09$12, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09movzwl\092($8, ${6:q}, 4), $2\0A\09lea\09(${6:q}, ${6:q}), $6\0A\09cmovae\09$2, $5\0A\09lea\09${13:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09sbb\09$$-1, $6\0A\09shr\09$14, $2\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($8, ${3:q}, 1)\0A\09movzwl\09($8, ${6:q}, 4), $4\0A\09cmp\09$10, $0\0A\09jae\091f\0A\09shl\09$11, $1\0A\09mov\09($7), ${1:b}\0A\09shl\09$11, $0\0A\09inc\09$7\0A1:\0Amov\09$0, $2\0A\09shr\09$12, $0\0A\09imul\09$5, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09movzwl\092($8, ${6:q}, 4), $2\0A\09lea\09(${6:q}, ${6:q}), $6\0A\09cmovae\09$2, $4\0A\09lea\09${13:c}(${5:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$5, $2\0A\09sbb\09$$-1, $6\0A\09shr\09$14, $2\0A\09sub\09$2, $5\0A\09mov\09${5:w}, ($8, ${3:q}, 1)\0A\09movzwl\09($8, ${6:q}, 4), $5\0A\09cmp\09$10, $0\0A\09jae\091f\0A\09shl\09$11, $1\0A\09mov\09($7), ${1:b}\0A\09shl\09$11, $0\0A\09inc\09$7\0A1:\0Amov\09$0, $2\0A\09shr\09$12, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09movzwl\092($8, ${6:q}, 4), $2\0A\09lea\09(${6:q}, ${6:q}), $6\0A\09cmovae\09$2, $5\0A\09lea\09${13:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09sbb\09$$-1, $6\0A\09shr\09$14, $2\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($8, ${3:q}, 1)\0A\09add\09$6, $6\0A\09cmp\09$10, $0\0A\09jae\091f\0A\09shl\09$11, $1\0A\09mov\09($7), ${1:b}\0A\09shl\09$11, $0\0A\09inc\09$7\0A1:\0Amov\09$0, $2\0A\09shr\09$12, $0\0A\09imul\09$5, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${13:c}(${5:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$5, $2\0A\09sbb\09$9, $6\0A\09shr\09$14, $2\0A\09sub\09$2, $5\0A\09mov\09${5:w}, ($8, ${3:q}, 1)\0A\09", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,n,n,n,n,n,n,0,1,7,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ch, i32 -1, i32 16777216, i32 8, i32 11, i32 -2017, i32 5, i32 %i.bt, i32 %.sroa.230.1, ptr %.1973) #8, !srcloc !92 ; 4 uses
  %i.cl = extractvalue { i32, i32, i32, i32, i32, i32, i32, ptr } %i.ck, 0
  %i.cm = extractvalue { i32, i32, i32, i32, i32, i32, i32, ptr } %i.ck, 1
  %i.cn = extractvalue { i32, i32, i32, i32, i32, i32, i32, ptr } %i.ck, 6
  %i.co = extractvalue { i32, i32, i32, i32, i32, i32, i32, ptr } %i.ck, 7
  br label %dict_put.exit

dict_get.exit:                                    ; preds = %bb.i
  %i.cp = icmp ult i32 %.09751832, 10
  %.v1414 = select i1 %i.cp, i32 -3, i32 -6
  %i.cq = add i32 %.v1414, %.09751832
  %i.cr = icmp ugt i64 %.sroa.17.01831, %i.qx
  %spec.select = select i1 %i.cr, i64 0, i64 %.pre-phi
  %i.cs = getelementptr i8, ptr %i.ca, i64 %i.qy
  %i.ct = getelementptr i8, ptr %i.cs, i64 %spec.select
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1                ; 2 uses
  %i.cx = tail call { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr } asm "add\09$8, $6\0A\09and\09$8, $5\0A\09add\09$5, $6\0A\09movzwl\09($10, ${6:q}, 2), $4\0A\09add\09$6, $6\0A\09xor\09$5, $8\0A\09add\09$7, $7\0A\09cmp\09$11, $0\0A\09jae\091f\0A\09shl\09$12, $1\0A\09mov\09($9), ${1:b}\0A\09shl\09$12, $0\0A\09inc\09$9\0A1:\0Amov\09$0, $2\0A\09shr\09$13, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${14:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09cmovae\09$5, $8\0A\09mov\09$7, $5\0A\09sbb\09$$-1, $6\0A\09shr\09$15, $2\0A\09and\09$$0x1FF, $6\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($10, ${3:q}, 1)\0A\09add\09$8, $6\0A\09and\09$8, $5\0A\09add\09$5, $6\0A\09movzwl\09($10, ${6:q}, 2), $4\0A\09add\09$6, $6\0A\09xor\09$5, $8\0A\09add\09$7, $7\0A\09cmp\09$11, $0\0A\09jae\091f\0A\09shl\09$12, $1\0A\09mov\09($9), ${1:b}\0A\09shl\09$12, $0\0A\09inc\09$9\0A1:\0Amov\09$0, $2\0A\09shr\09$13, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${14:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09cmovae\09$5, $8\0A\09mov\09$7, $5\0A\09sbb\09$$-1, $6\0A\09shr\09$15, $2\0A\09and\09$$0x1FF, $6\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($10, ${3:q}, 1)\0A\09add\09$8, $6\0A\09and\09$8, $5\0A\09add\09$5, $6\0A\09movzwl\09($10, ${6:q}, 2), $4\0A\09add\09$6, $6\0A\09xor\09$5, $8\0A\09add\09$7, $7\0A\09cmp\09$11, $0\0A\09jae\091f\0A\09shl\09$12, $1\0A\09mov\09($9), ${1:b}\0A\09shl\09$12, $0\0A\09inc\09$9\0A1:\0Amov\09$0, $2\0A\09shr\09$13, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${14:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09cmovae\09$5, $8\0A\09mov\09$7, $5\0A\09sbb\09$$-1, $6\0A\09shr\09$15, $2\0A\09and\09$$0x1FF, $6\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($10, ${3:q}, 1)\0A\09add\09$8, $6\0A\09and\09$8, $5\0A\09add\09$5, $6\0A\09movzwl\09($10, ${6:q}, 2), $4\0A\09add\09$6, $6\0A\09xor\09$5, $8\0A\09add\09$7, $7\0A\09cmp\09$11, $0\0A\09jae\091f\0A\09shl\09$12, $1\0A\09mov\09($9), ${1:b}\0A\09shl\09$12, $0\0A\09inc\09$9\0A1:\0Amov\09$0, $2\0A\09shr\09$13, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${14:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09cmovae\09$5, $8\0A\09mov\09$7, $5\0A\09sbb\09$$-1, $6\0A\09shr\09$15, $2\0A\09and\09$$0x1FF, $6\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($10, ${3:q}, 1)\0A\09add\09$8, $6\0A\09and\09$8, $5\0A\09add\09$5, $6\0A\09movzwl\09($10, ${6:q}, 2), $4\0A\09add\09$6, $6\0A\09xor\09$5, $8\0A\09add\09$7, $7\0A\09cmp\09$11, $0\0A\09jae\091f\0A\09shl\09$12, $1\0A\09mov\09($9), ${1:b}\0A\09shl\09$12, $0\0A\09inc\09$9\0A1:\0Amov\09$0, $2\0A\09shr\09$13, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${14:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09cmovae\09$5, $8\0A\09mov\09$7, $5\0A\09sbb\09$$-1, $6\0A\09shr\09$15, $2\0A\09and\09$$0x1FF, $6\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($10, ${3:q}, 1)\0A\09add\09$8, $6\0A\09and\09$8, $5\0A\09add\09$5, $6\0A\09movzwl\09($10, ${6:q}, 2), $4\0A\09add\09$6, $6\0A\09xor\09$5, $8\0A\09add\09$7, $7\0A\09cmp\09$11, $0\0A\09jae\091f\0A\09shl\09$12, $1\0A\09mov\09($9), ${1:b}\0A\09shl\09$12, $0\0A\09inc\09$9\0A1:\0Amov\09$0, $2\0A\09shr\09$13, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${14:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09cmovae\09$5, $8\0A\09mov\09$7, $5\0A\09sbb\09$$-1, $6\0A\09shr\09$15, $2\0A\09and\09$$0x1FF, $6\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($10, ${3:q}, 1)\0A\09add\09$8, $6\0A\09and\09$8, $5\0A\09add\09$5, $6\0A\09movzwl\09($10, ${6:q}, 2), $4\0A\09add\09$6, $6\0A\09xor\09$5, $8\0A\09add\09$7, $7\0A\09cmp\09$11, $0\0A\09jae\091f\0A\09shl\09$12, $1\0A\09mov\09($9), ${1:b}\0A\09shl\09$12, $0\0A\09inc\09$9\0A1:\0Amov\09$0, $2\0A\09shr\09$13, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${14:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09cmovae\09$5, $8\0A\09mov\09$7, $5\0A\09sbb\09$$-1, $6\0A\09shr\09$15, $2\0A\09and\09$$0x1FF, $6\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($10, ${3:q}, 1)\0A\09add\09$8, $6\0A\09and\09$8, $5\0A\09add\09$5, $6\0A\09movzwl\09($10, ${6:q}, 2), $4\0A\09add\09$6, $6\0A\09cmp\09$11, $0\0A\09jae\091f\0A\09shl\09$12, $1\0A\09mov\09($9), ${1:b}\0A\09shl\09$12, $0\0A\09inc\09$9\0A1:\0Amov\09$0, $2\0A\09shr\09$13, $0\0A\09imul\09$4, $0\0A\09sub\09$0, $2\0A\09mov\09$1, $3\0A\09sub\09$0, $1\0A\09cmovae\09$2, $0\0A\09lea\09${14:c}(${4:q}), $2\0A\09cmovb\09$3, $1\0A\09mov\09$6, $3\0A\09cmovae\09$4, $2\0A\09sbb\09$$-1, $6\0A\09shr\09$15, $2\0A\09and\09$$0x1FF, $6\0A\09sub\09$2, $4\0A\09mov\09${4:w}, ($10, ${3:q}, 1)\0A\09", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,n,n,n,n,n,0,1,5,6,7,8,9,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ch, i32 16777216, i32 8, i32 11, i32 -2017, i32 5, i32 %i.bt, i32 %.sroa.230.1, i32 %i.cw, i32 1, i32 %i.cw, i32 256, ptr %.1973) #8, !srcloc !93 ; 4 uses
  %i.cy = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr } %i.cx, 0
  %i.cz = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr } %i.cx, 1
  %i.da = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr } %i.cx, 6
  %i.db = extractvalue { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr } %i.cx, 9
  br label %dict_put.exit

dict_put.exit:                                    ; preds = %dict_get.exit, %bb.j
  %.11167 = phi i32 [ %i.cn, %bb.j ], [ %i.da, %dict_get.exit ] ; 3 uses
  %.1976 = phi i32 [ %i.cj, %bb.j ], [ %i.cq, %dict_get.exit ] ; 2 uses
  %.2974 = phi ptr [ %i.co, %bb.j ], [ %i.db, %dict_get.exit ] ; 3 uses
  %.sroa.0.2 = phi i32 [ %i.cl, %bb.j ], [ %i.cy, %dict_get.exit ] ; 2 uses
  %.sroa.230.2 = phi i32 [ %i.cm, %bb.j ], [ %i.cz, %dict_get.exit ] ; 2 uses
  %i.dc = trunc i32 %.11167 to i8
  %i.dd = add i64 %.sroa.17.01831, 1              ; 4 uses
  store i8 %i.dc, ptr %i.ca, align 1, !tbaa !26
  %i.de = add i64 %.sroa.17.01831, -575
  %spec.select1559 = select i1 %.pre-phi2234, i64 %.sroa.55.01830, i64 %i.de ; 2 uses
  %i.df = trunc i64 %i.dd to i32
  %i.dg = and i32 %i.ag, %i.df                    ; 2 uses
  %i.dh = icmp uge ptr %.2974, %i.u
  %i.di = icmp eq i64 %i.dd, %.sroa.66.0
  %i.dj = select i1 %i.dh, i1 true, i1 %i.di, !prof !94
  br i1 %i.dj, label %.loopexit1572, label %.lr.ph, !prof !95

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %dict_put.exit
  %i.dk = phi i32 [ %i.qt, %.lr.ph.lr.ph ], [ %i.dg, %dict_put.exit ]
  %.sroa.230.0.ph16031874 = phi i32 [ %.sroa.230.0.ph1590, %.lr.ph.lr.ph ], [ %.sroa.230.2, %dict_put.exit ]
  %.sroa.0.0.ph16021873 = phi i32 [ %.sroa.0.0.ph1589, %.lr.ph.lr.ph ], [ %.sroa.0.2, %dict_put.exit ]
  %.0972.ph16011872 = phi ptr [ %.0972.ph1588, %.lr.ph.lr.ph ], [ %.2974, %dict_put.exit ]
  %.0975.ph16001871 = phi i32 [ %.0975.ph1587, %.lr.ph.lr.ph ], [ %.1976, %dict_put.exit ]
  %.01135.ph15951870 = phi ptr [ %.01135.ph1582, %.lr.ph.lr.ph ], [ %i.ch, %dict_put.exit ] ; 5 uses
  %.01166.ph15941869 = phi i32 [ %.01166.ph1581, %.lr.ph.lr.ph ], [ %.11167, %dict_put.exit ] ; 2 uses
  %.sroa.17.0.ph15931868 = phi i64 [ %.sroa.17.0.ph1576, %.lr.ph.lr.ph ], [ %i.dd, %dict_put.exit ]
  %.sroa.55.0.ph15921867 = phi i64 [ %.sroa.55.0.ph1575, %.lr.ph.lr.ph ], [ %spec.select1559, %dict_put.exit ]
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.dl = sub i32 %.sroa.0.1, %i.bt               ; 3 uses
  %i.dm = sub nuw i32 %.sroa.230.1, %i.bt         ; 2 uses
  %i.dn = lshr i16 %i.br, 5
  %i.do = sub nuw i16 %i.br, %i.dn
  store i16 %i.do, ptr %i.bq, align 2, !tbaa !38
  %i.dp = icmp ult i32 %i.dl, 16777216
  br i1 %i.dp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dq = shl nuw i32 %i.dl, 8
  %i.dr = shl i32 %i.dm, 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.1973, i64 1
  %i.dt = load i8, ptr %.1973, align 1, !tbaa !26
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.dr, %i.du
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3 = phi ptr [ %i.ds, %bb.l ], [ %.1973, %bb.k ] ; 7 uses
  %.sroa.0.3 = phi i32 [ %i.dq, %bb.l ], [ %i.dl, %bb.k ] ; 2 uses
  %.sroa.230.3 = phi i32 [ %i.dv, %bb.l ], [ %i.dm, %bb.k ] ; 4 uses
  %i.dw = lshr i32 %.sroa.0.3, 11
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.ahf, i64 %i.bn ; 3 uses
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !38 ; 4 uses
  %i.dz = zext i16 %i.dy to i32                   ; 2 uses
  %i.ea = mul i32 %i.dw, %i.dz                    ; 6 uses
  %i.eb = icmp ult i32 %.sroa.230.3, %i.ea
  br i1 %i.eb, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.ec = sub nsw i32 2048, %i.dz
  %i.ed = lshr i32 %i.ec, 5
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = add i16 %i.dy, %i.ee
  store i16 %i.ef, ptr %i.dx, align 2, !tbaa !38
  %i.eg = icmp ult i32 %.09751832, 7
  %i.eh = select i1 %i.eg, i32 7, i32 10          ; 3 uses
  %i.ei = icmp ult i32 %i.ea, 16777216
  br i1 %i.ei, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ej = shl nuw i32 %i.ea, 8
  %i.ek = shl nuw i32 %.sroa.230.3, 8
  %i.el = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.em = load i8, ptr %.3, align 1, !tbaa !26
  %i.en = zext i8 %i.em to i32
  %i.eo = or disjoint i32 %i.ek, %i.en
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.4 = phi ptr [ %i.el, %bb.o ], [ %.3, %bb.n ]  ; 4 uses
  %.sroa.0.4 = phi i32 [ %i.ej, %bb.o ], [ %i.ea, %bb.n ] ; 2 uses
  %.sroa.230.4 = phi i32 [ %i.eo, %bb.o ], [ %.sroa.230.3, %bb.n ] ; 3 uses
  %i.ep = lshr i32 %.sroa.0.4, 11
  %i.eq = load i16, ptr %i.ahr, align 4, !tbaa !39 ; 4 uses
  %i.er = zext i16 %i.eq to i32                   ; 2 uses
  %i.es = mul i32 %i.ep, %i.er                    ; 4 uses
  %i.et = icmp ult i32 %.sroa.230.4, %i.es
  br i1 %i.et, label %bb.q, label %bb.r

end_hunk_0
begin_hunk_1_@lzma_decode:bb.a
  %i.om = add nuw nsw i64 %i.oe, 4294967295
  %i.on = and i64 %i.om, 4294967295               ; 3 uses
  %i.oo = add nuw nsw i64 %i.on, 1                ; 5 uses
  %min.iters.check2972 = icmp samesign ult i64 %i.on, 3
  %i.op = sub i64 %i.oh, %i.ok
  %diff.check2971 = icmp ult i64 %i.op, 31
  %or.cond3002 = select i1 %min.iters.check2972, i1 true, i1 %diff.check2971
  br i1 %or.cond3002, label %.preheader.i.preheader, label %vector.main.loop.iter.check2973

vector.main.loop.iter.check2973:                  ; preds = %iter.check2987
  %min.iters.check2974 = icmp samesign ult i64 %i.on, 31
  br i1 %min.iters.check2974, label %vec.epilog.ph2991, label %vector.ph2975

vector.ph2975:                                    ; preds = %vector.main.loop.iter.check2973
  %i.oq = and i64 %i.oo, 28
  %n.vec2976 = and i64 %i.oo, 8589934560          ; 6 uses
  %i.or = add i64 %.sroa.17.01831, %n.vec2976     ; 2 uses
  %i.os = trunc i64 %n.vec2976 to i32
  %i.ot = sub i32 %i.of, %i.os
  %i.ou = add i64 %.0.i1427, %n.vec2976
  %i.ov = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.0.i1427
  %i.ow = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.01831
  br label %vector.body2977

vector.body2977:                                  ; preds = %vector.ph2975, %vector.body2977
  %index2978 = phi i64 [ 0, %vector.ph2975 ], [ %index.next2981, %vector.body2977 ] ; 3 uses
  %i.ox = getelementptr i8, ptr %i.ov, i64 %index2978 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load2979 = load <16 x i8>, ptr %i.ox, align 1, !tbaa !26
  %wide.load2980 = load <16 x i8>, ptr %i.oy, align 1, !tbaa !26
  %i.oz = getelementptr i8, ptr %i.ow, i64 %index2978 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store <16 x i8> %wide.load2979, ptr %i.oz, align 1, !tbaa !26
  store <16 x i8> %wide.load2980, ptr %i.pa, align 1, !tbaa !26
  %index.next2981 = add nuw i64 %index2978, 32    ; 2 uses
  %i.pb = icmp eq i64 %index.next2981, %n.vec2976
  br i1 %i.pb, label %middle.block2982, label %vector.body2977, !llvm.loop !57

middle.block2982:                                 ; preds = %vector.body2977
  %cmp.n2983 = icmp eq i64 %i.oo, %n.vec2976
  br i1 %cmp.n2983, label %.loopexit.i, label %vec.epilog.iter.check2989

vec.epilog.iter.check2989:                        ; preds = %middle.block2982
  %min.epilog.iters.check2990 = icmp eq i64 %i.oq, 0
  br i1 %min.epilog.iters.check2990, label %.preheader.i.preheader, label %vec.epilog.ph2991, !prof !108

vec.epilog.ph2991:                                ; preds = %vector.main.loop.iter.check2973, %vec.epilog.iter.check2989
  %vec.epilog.resume.val2984 = phi i64 [ %n.vec2976, %vec.epilog.iter.check2989 ], [ 0, %vector.main.loop.iter.check2973 ]
  %n.vec2992 = and i64 %i.oo, 8589934588          ; 5 uses
  %i.pc = add i64 %.sroa.17.01831, %n.vec2992     ; 2 uses
  %i.pd = trunc i64 %n.vec2992 to i32
  %i.pe = sub i32 %i.of, %i.pd
  %i.pf = add i64 %.0.i1427, %n.vec2992
  %i.pg = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.0.i1427
  %i.ph = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.01831
  br label %vec.epilog.vector.body2993

vec.epilog.vector.body2993:                       ; preds = %vec.epilog.vector.body2993, %vec.epilog.ph2991
  %index2994 = phi i64 [ %vec.epilog.resume.val2984, %vec.epilog.ph2991 ], [ %index.next2996, %vec.epilog.vector.body2993 ] ; 3 uses
  %i.pi = getelementptr i8, ptr %i.pg, i64 %index2994
  %wide.load2995 = load <4 x i8>, ptr %i.pi, align 1, !tbaa !26
  %i.pj = getelementptr i8, ptr %i.ph, i64 %index2994
  store <4 x i8> %wide.load2995, ptr %i.pj, align 1, !tbaa !26
  %index.next2996 = add nuw i64 %index2994, 4     ; 2 uses
  %i.pk = icmp eq i64 %index.next2996, %n.vec2992
  br i1 %i.pk, label %vec.epilog.middle.block2997, label %vec.epilog.vector.body2993, !llvm.loop !58

vec.epilog.middle.block2997:                      ; preds = %vec.epilog.vector.body2993
  %cmp.n2998 = icmp eq i64 %i.oo, %n.vec2992
  br i1 %cmp.n2998, label %.loopexit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check2987, %vec.epilog.iter.check2989, %vec.epilog.middle.block2997
  %.sroa.17.28.ph = phi i64 [ %.sroa.17.01831, %iter.check2987 ], [ %i.or, %vec.epilog.iter.check2989 ], [ %i.pc, %vec.epilog.middle.block2997 ] ; 2 uses
  %.031.i.ph = phi i32 [ %i.of, %iter.check2987 ], [ %i.ot, %vec.epilog.iter.check2989 ], [ %i.pe, %vec.epilog.middle.block2997 ] ; 4 uses
  %.1.i.ph = phi i64 [ %.0.i1427, %iter.check2987 ], [ %i.ou, %vec.epilog.iter.check2989 ], [ %i.pf, %vec.epilog.middle.block2997 ] ; 2 uses
  %i.pl = add i32 %.031.i.ph, -1
  %xtraiter3305 = and i32 %.031.i.ph, 3           ; 2 uses
  %lcmp.mod3306.not = icmp eq i32 %xtraiter3305, 0
  br i1 %lcmp.mod3306.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.sroa.17.28.prol = phi i64 [ %i.pp, %.preheader.i.prol ], [ %.sroa.17.28.ph, %.preheader.i.preheader ] ; 2 uses
  %.031.i.prol = phi i32 [ %i.pr, %.preheader.i.prol ], [ %.031.i.ph, %.preheader.i.preheader ]
  %.1.i.prol = phi i64 [ %i.pm, %.preheader.i.prol ], [ %.1.i.ph, %.preheader.i.preheader ] ; 2 uses
  %prol.iter3307 = phi i32 [ %prol.iter3307.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.pm = add i64 %.1.i.prol, 1                   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i.prol
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !26
  %i.pp = add i64 %.sroa.17.28.prol, 1            ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.28.prol
  store i8 %i.po, ptr %i.pq, align 1, !tbaa !26
  %i.pr = add i32 %.031.i.prol, -1                ; 2 uses
  %prol.iter3307.next = add i32 %prol.iter3307, 1 ; 2 uses
  %prol.iter3307.cmp.not = icmp eq i32 %prol.iter3307.next, %xtraiter3305
  br i1 %prol.iter3307.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !59

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa3157.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.pp, %.preheader.i.prol ]
  %.sroa.17.28.unr = phi i64 [ %.sroa.17.28.ph, %.preheader.i.preheader ], [ %i.pp, %.preheader.i.prol ]
  %.031.i.unr = phi i32 [ %.031.i.ph, %.preheader.i.preheader ], [ %i.pr, %.preheader.i.prol ]
  %.1.i.unr = phi i64 [ %.1.i.ph, %.preheader.i.preheader ], [ %i.pm, %.preheader.i.prol ]
  %i.ps = icmp ult i32 %i.pl, 3
  br i1 %i.ps, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.sroa.17.28 = phi i64 [ %i.qk, %.preheader.i ], [ %.sroa.17.28.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.031.i = phi i32 [ %i.qn, %.preheader.i ], [ %.031.i.unr, %.preheader.i.prol.loopexit ]
  %.1.i = phi i64 [ %i.qg, %.preheader.i ], [ %.1.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !26
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.28
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !26
  %i.pw = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i
  %i.px = getelementptr i8, ptr %i.pw, i64 1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !26
  %i.pz = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.28
  %i.qa = getelementptr i8, ptr %i.pz, i64 1
  store i8 %i.py, ptr %i.qa, align 1, !tbaa !26
  %i.qb = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i
  %i.qc = getelementptr i8, ptr %i.qb, i64 2
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !26
  %i.qe = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.28
  %i.qf = getelementptr i8, ptr %i.qe, i64 2
  store i8 %i.qd, ptr %i.qf, align 1, !tbaa !26
  %i.qg = add i64 %.1.i, 4
  %i.qh = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i
  %i.qi = getelementptr i8, ptr %i.qh, i64 3
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !26
  %i.qk = add i64 %.sroa.17.28, 4                 ; 2 uses
  %i.ql = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.28
  %i.qm = getelementptr i8, ptr %i.ql, i64 3
  store i8 %i.qj, ptr %i.qm, align 1, !tbaa !26
  %i.qn = add i32 %.031.i, -4                     ; 2 uses
  %.not36.i.3 = icmp eq i32 %i.qn, 0
  br i1 %.not36.i.3, label %.loopexit.i, label %.preheader.i, !llvm.loop !60

bb.bc:                                            ; preds = %bb.bb
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.01831
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.0.i1427
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qo, ptr align 1 %i.qp, i64 %i.oe, i1 false)
  %i.qq = add i64 %i.oe, %.sroa.17.01831
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block2982, %vec.epilog.middle.block2997, %bb.bc
  %.sroa.17.27 = phi i64 [ %i.qq, %bb.bc ], [ %i.pc, %vec.epilog.middle.block2997 ], [ %i.or, %middle.block2982 ], [ %.lcssa3157.unr, %.preheader.i.prol.loopexit ], [ %i.qk, %.preheader.i ] ; 3 uses
  %i.qr = add i64 %.sroa.17.27, -576
  %spec.select1561 = select i1 %.pre-phi2234, i64 %.sroa.55.01830, i64 %i.qr ; 2 uses
  %.not1571 = icmp eq i32 %i.og, 0
  br i1 %.not1571, label %.outer, label %bb.bd, !prof !103

.outer:                                           ; preds = %.preheader, %.loopexit.i
  %.sroa.55.0.ph1575 = phi i64 [ %.sroa.55.0.ph, %.preheader ], [ %spec.select1561, %.loopexit.i ] ; 2 uses
  %.sroa.17.0.ph1576 = phi i64 [ %.sroa.17.0.ph, %.preheader ], [ %.sroa.17.27, %.loopexit.i ] ; 4 uses
  %.0.ph1577 = phi i32 [ %.0.ph, %.preheader ], [ 0, %.loopexit.i ] ; 4 uses
  %.01245.ph1579 = phi i32 [ %.01245.ph, %.preheader ], [ %.31248, %.loopexit.i ] ; 10 uses
  %.01212.ph1580 = phi i32 [ %.01212.ph, %.preheader ], [ %.31215, %.loopexit.i ] ; 8 uses
  %.01166.ph1581 = phi i32 [ %.01166.ph, %.preheader ], [ %.41170, %.loopexit.i ] ; 2 uses
  %.01135.ph1582 = phi ptr [ %.01135.ph, %.preheader ], [ %.21137, %.loopexit.i ] ; 2 uses
  %.01104.ph1583 = phi i32 [ %.01104.ph, %.preheader ], [ %.21106, %.loopexit.i ] ; 8 uses
  %.01073.ph1584 = phi i32 [ %.01073.ph, %.preheader ], [ %.21075, %.loopexit.i ] ; 11 uses
  %.01042.ph1585 = phi i32 [ %.01042.ph, %.preheader ], [ %.21044, %.loopexit.i ] ; 11 uses
  %.01006.ph1586 = phi i32 [ %.01006.ph, %.preheader ], [ %.41010, %.loopexit.i ] ; 12 uses
  %.0975.ph1587 = phi i32 [ %.0975.ph, %.preheader ], [ %.2977, %.loopexit.i ] ; 2 uses
  %.0972.ph1588 = phi ptr [ %.0972.ph, %.preheader ], [ %.16, %.loopexit.i ] ; 3 uses
  %.sroa.0.0.ph1589 = phi i32 [ %.sroa.0.0.ph, %.preheader ], [ %.sroa.0.16, %.loopexit.i ] ; 2 uses
  %.sroa.230.0.ph1590 = phi i32 [ %.sroa.230.0.ph, %.preheader ], [ %.sroa.230.16, %.loopexit.i ] ; 2 uses
  %i.qs = trunc i64 %.sroa.17.0.ph1576 to i32
  %i.qt = and i32 %i.ag, %i.qs                    ; 2 uses
  %i.qu = icmp uge ptr %.0972.ph1588, %i.u
  %i.qv = icmp eq i64 %.sroa.17.0.ph1576, %.sroa.66.0
  %i.qw = select i1 %i.qu, i1 true, i1 %i.qv, !prof !94
  br i1 %i.qw, label %.loopexit1572, label %.lr.ph.lr.ph, !prof !110

.lr.ph.lr.ph:                                     ; preds = %.outer
  %i.qx = zext i32 %.01006.ph1586 to i64          ; 3 uses
  %i.qy = xor i64 %i.qx, -1                       ; 2 uses
  br label %.lr.ph

bb.bd:                                            ; preds = %.loopexit.i
  store i32 22, ptr %i.bc, align 4, !tbaa !37
  br label %.loopexit1573

.loopexit1572:                                    ; preds = %.outer, %dict_put.exit, %dict_get.exit1424, %.loopexit1608, %.loopexit1608
  %.sroa.55.1 = phi i64 [ %.sroa.55.0.copyload, %.loopexit1608 ], [ %.sroa.55.0.copyload, %.loopexit1608 ], [ %spec.select1559, %dict_put.exit ], [ %.sroa.55.28, %dict_get.exit1424 ], [ %.sroa.55.0.ph1575, %.outer ] ; 7 uses
  %.sroa.17.1 = phi i64 [ %.sroa.17.0.copyload, %.loopexit1608 ], [ %.sroa.17.0.copyload, %.loopexit1608 ], [ %i.dd, %dict_put.exit ], [ %i.jq, %dict_get.exit1424 ], [ %.sroa.17.0.ph1576, %.outer ] ; 8 uses
  %.31504 = phi i32 [ %i.aq, %.loopexit1608 ], [ %i.aq, %.loopexit1608 ], [ %.0.ph1577, %dict_put.exit ], [ %.0.ph1577, %dict_get.exit1424 ], [ %.0.ph1577, %.outer ] ; 6 uses
  %.11296 = phi i1 [ %i.az, %.loopexit1608 ], [ %i.az, %.loopexit1608 ], [ %.01295.ph, %dict_put.exit ], [ %.01295.ph, %dict_get.exit1424 ], [ %.01295.ph, %.outer ]
  %.01282 = phi i32 [ %i.aw, %.loopexit1608 ], [ %i.aw, %.loopexit1608 ], [ %i.dg, %dict_put.exit ], [ %i.jt, %dict_get.exit1424 ], [ %i.qt, %.outer ] ; 2 uses
  %.41249 = phi i32 [ %i.ao, %.loopexit1608 ], [ %i.ao, %.loopexit1608 ], [ %.01245.ph1579, %dict_put.exit ], [ %.01245.ph1579, %dict_get.exit1424 ], [ %.01245.ph1579, %.outer ] ; 6 uses
  %.41216 = phi i32 [ %i.am, %.loopexit1608 ], [ %i.am, %.loopexit1608 ], [ %.01212.ph1580, %dict_put.exit ], [ %.01212.ph1580, %dict_get.exit1424 ], [ %.01212.ph1580, %.outer ] ; 7 uses
  %.51171 = phi i32 [ %i.ak, %.loopexit1608 ], [ %i.ak, %.loopexit1608 ], [ %.11167, %dict_put.exit ], [ %.01166.ph15941869, %dict_get.exit1424 ], [ %.01166.ph1581, %.outer ] ; 5 uses
  %.31138 = phi ptr [ %i.ai, %.loopexit1608 ], [ %i.ai, %.loopexit1608 ], [ %i.ch, %dict_put.exit ], [ %.01135.ph15951870, %dict_get.exit1424 ], [ %.01135.ph1582, %.outer ] ; 5 uses
  %.31107 = phi i32 [ %i.ae, %.loopexit1608 ], [ %i.ae, %.loopexit1608 ], [ %.01104.ph1583, %dict_put.exit ], [ %.01104.ph1583, %dict_get.exit1424 ], [ %.01104.ph1583, %.outer ] ; 7 uses
  %.31076 = phi i32 [ %i.ac, %.loopexit1608 ], [ %i.ac, %.loopexit1608 ], [ %.01073.ph1584, %dict_put.exit ], [ %.01073.ph1584, %dict_get.exit1424 ], [ %.01073.ph1584, %.outer ] ; 7 uses
  %.31045 = phi i32 [ %i.aa, %.loopexit1608 ], [ %i.aa, %.loopexit1608 ], [ %.01042.ph1585, %dict_put.exit ], [ %.01042.ph1585, %dict_get.exit1424 ], [ %.01042.ph1585, %.outer ] ; 7 uses
  %.51011 = phi i32 [ %i.y, %.loopexit1608 ], [ %i.y, %.loopexit1608 ], [ %.01006.ph1586, %dict_put.exit ], [ %.01006.ph1586, %dict_get.exit1424 ], [ %.01006.ph1586, %.outer ] ; 8 uses
  %.3978 = phi i32 [ %i.w, %.loopexit1608 ], [ %i.w, %.loopexit1608 ], [ %.1976, %dict_put.exit ], [ %i.jk, %dict_get.exit1424 ], [ %.0975.ph1587, %.outer ] ; 10 uses
  %.17 = phi ptr [ %i.q, %.loopexit1608 ], [ %i.q, %.loopexit1608 ], [ %.2974, %dict_put.exit ], [ %.10, %dict_get.exit1424 ], [ %.0972.ph1588, %.outer ] ; 5 uses
  %.sroa.0.17 = phi i32 [ %.sroa.0.0.copyload, %.loopexit1608 ], [ %.sroa.0.0.copyload, %.loopexit1608 ], [ %.sroa.0.2, %dict_put.exit ], [ %i.jd, %dict_get.exit1424 ], [ %.sroa.0.0.ph1589, %.outer ] ; 5 uses
  %.sroa.230.17 = phi i32 [ %.sroa.230.0.copyload, %.loopexit1608 ], [ %.sroa.230.0.copyload, %.loopexit1608 ], [ %.sroa.230.2, %dict_put.exit ], [ %.sroa.230.10, %dict_get.exit1424 ], [ %.sroa.230.0.ph1590, %.outer ] ; 4 uses
  %i.qz = icmp ne i64 %.sroa.17.1, %.sroa.66.0
  %.not1567 = select i1 %or.cond1558, i1 true, i1 %i.qz
  br i1 %.not1567, label %bb.bk, label %bb.be, !prof !103

bb.be:                                            ; preds = %.loopexit1572
  %i.ra = icmp ult i32 %.sroa.0.17, 16777216
  br i1 %i.ra, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.rb = icmp eq ptr %.17, %i.r
  br i1 %i.rb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.bc, align 4, !tbaa !37
  br label %.loopexit1573

bb.bh:                                            ; preds = %bb.bf
  %i.rc = shl nuw i32 %.sroa.0.17, 8
  %i.rd = shl i32 %.sroa.230.17, 8
  %i.re = getelementptr inbounds nuw i8, ptr %.17, i64 1
  %i.rf = load i8, ptr %.17, align 1, !tbaa !26
  %i.rg = zext i8 %i.rf to i32
  %i.rh = or disjoint i32 %i.rd, %i.rg
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.18 = phi ptr [ %i.re, %bb.bh ], [ %.17, %bb.be ] ; 3 uses
  %.sroa.0.18 = phi i32 [ %i.rc, %bb.bh ], [ %.sroa.0.17, %bb.be ] ; 3 uses
  %.sroa.230.18 = phi i32 [ %i.rh, %bb.bh ], [ %.sroa.230.17, %bb.be ] ; 3 uses
  %i.ri = icmp eq i32 %.sroa.230.18, 0
  br i1 %i.ri, label %.loopexit1573, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 28320
  %i.rk = load i8, ptr %i.rj, align 8, !tbaa !45, !range !111, !noundef !112
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.bk, label %.loopexit1573

bb.bk:                                            ; preds = %bb.bj, %.loopexit1572
  %.21297 = phi i1 [ %.11296, %.loopexit1572 ], [ true, %bb.bj ] ; 3 uses
  %.19 = phi ptr [ %.17, %.loopexit1572 ], [ %.18, %bb.bj ] ; 4 uses
  %.sroa.0.19 = phi i32 [ %.sroa.0.17, %.loopexit1572 ], [ %.sroa.0.18, %bb.bj ] ; 4 uses
  %.sroa.230.19 = phi i32 [ %.sroa.230.17, %.loopexit1572 ], [ %.sroa.230.18, %bb.bj ] ; 3 uses
  %i.rm = icmp ult i32 %.sroa.0.19, 16777216
  br i1 %i.rm, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.rn = icmp eq ptr %.19, %i.r
  br i1 %i.rn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 1, ptr %i.bc, align 4, !tbaa !37
  br label %.loopexit1573

bb.bn:                                            ; preds = %bb.bl
  %i.ro = shl nuw i32 %.sroa.0.19, 8
  %i.rp = shl i32 %.sroa.230.19, 8
  %i.rq = getelementptr inbounds nuw i8, ptr %.19, i64 1
  %i.rr = load i8, ptr %.19, align 1, !tbaa !26
  %i.rs = zext i8 %i.rr to i32
  %i.rt = or disjoint i32 %i.rp, %i.rs
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %.20 = phi ptr [ %i.rq, %bb.bn ], [ %.19, %bb.bk ] ; 3 uses
  %.sroa.0.20 = phi i32 [ %i.ro, %bb.bn ], [ %.sroa.0.19, %bb.bk ] ; 2 uses
  %.sroa.230.20 = phi i32 [ %i.rt, %bb.bn ], [ %.sroa.230.19, %bb.bk ] ; 4 uses
  %i.ru = lshr i32 %.sroa.0.20, 11
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 24576
  %i.rw = zext i32 %.3978 to i64
  %i.rx = getelementptr inbounds nuw [32 x i8], ptr %i.rv, i64 %i.rw
  %i.ry = zext i32 %.01282 to i64
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %i.ry ; 3 uses
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !38 ; 4 uses
  %i.sb = zext i16 %i.sa to i32                   ; 2 uses
  %i.sc = mul i32 %i.ru, %i.sb                    ; 5 uses
  %i.sd = icmp ult i32 %.sroa.230.20, %i.sc
  br i1 %i.sd, label %bb.bp, label %bb.ck

bb.bp:                                            ; preds = %bb.bo
  %i.se = sub nsw i32 2048, %i.sb
  %i.sf = lshr i32 %i.se, 5
  %i.sg = trunc i32 %i.sf to i16
  %i.sh = add i16 %i.sa, %i.sg
  store i16 %i.sh, ptr %i.rz, align 2, !tbaa !38
  %i.si = shl i64 %.sroa.17.1, 8
  %i.sj = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.1 ; 2 uses
  %i.sk = getelementptr i8, ptr %i.sj, i64 -1
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !26
  %i.sm = zext i8 %i.sl to i64
  %i.sn = or disjoint i64 %i.si, %i.sm
  %i.so = zext i32 %i.as to i64
  %i.sp = and i64 %i.sn, %i.so
  %i.sq = zext nneg i32 %i.au to i64
  %i.sr = shl i64 %i.sp, %i.sq
  %.idx = mul i64 %i.sr, 6
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.st = icmp ult i32 %.3978, 7
  br i1 %i.st, label %bb.bq, label %dict_get.exit1428

bb.bq:                                            ; preds = %bb.bp
  %i.su = tail call i32 @llvm.usub.sat.i32(i32 %.3978, i32 3)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.loopexit1608
  %.sroa.55.2 = phi i64 [ %.sroa.55.1, %bb.bq ], [ %.sroa.55.0.copyload, %.loopexit1608 ] ; 2 uses
  %.sroa.17.2 = phi i64 [ %.sroa.17.1, %bb.bq ], [ %.sroa.17.0.copyload, %.loopexit1608 ] ; 2 uses
  %.41505 = phi i32 [ %.31504, %bb.bq ], [ %i.aq, %.loopexit1608 ] ; 2 uses
  %.31298 = phi i1 [ %.21297, %bb.bq ], [ %i.az, %.loopexit1608 ]
  %.51250 = phi i32 [ %.41249, %bb.bq ], [ %i.ao, %.loopexit1608 ] ; 2 uses
  %.51217 = phi i32 [ %.41216, %bb.bq ], [ %i.am, %.loopexit1608 ] ; 2 uses
  %.61172 = phi i32 [ 1, %bb.bq ], [ %i.ak, %.loopexit1608 ]
  %.41139 = phi ptr [ %i.ss, %bb.bq ], [ %i.ai, %.loopexit1608 ] ; 3 uses
  %.41108 = phi i32 [ %.31107, %bb.bq ], [ %i.ae, %.loopexit1608 ] ; 2 uses
  %.41077 = phi i32 [ %.31076, %bb.bq ], [ %i.ac, %.loopexit1608 ] ; 2 uses
  %.41046 = phi i32 [ %.31045, %bb.bq ], [ %i.aa, %.loopexit1608 ] ; 2 uses
  %.61012 = phi i32 [ %.51011, %bb.bq ], [ %i.y, %.loopexit1608 ] ; 2 uses
  %.4979 = phi i32 [ %i.su, %bb.bq ], [ %i.w, %.loopexit1608 ] ; 2 uses
  %.21 = phi ptr [ %.20, %bb.bq ], [ %i.q, %.loopexit1608 ]
  %.sroa.0.21 = phi i32 [ %i.sc, %bb.bq ], [ %.sroa.0.0.copyload, %.loopexit1608 ]
  %.sroa.230.21 = phi i32 [ %.sroa.230.20, %bb.bq ], [ %.sroa.230.0.copyload, %.loopexit1608 ]
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bz, %bb.br
  %.71173 = phi i32 [ %.61172, %bb.br ], [ %.81174, %bb.bz ] ; 3 uses
  %.22 = phi ptr [ %.21, %bb.br ], [ %.23, %bb.bz ] ; 4 uses
  %.sroa.0.22 = phi i32 [ %.sroa.0.21, %bb.br ], [ %.sroa.0.24, %bb.bz ] ; 4 uses
  %.sroa.230.22 = phi i32 [ %.sroa.230.21, %bb.br ], [ %.sroa.230.24, %bb.bz ] ; 3 uses
  %i.sv = icmp ult i32 %.sroa.0.22, 16777216
  br i1 %i.sv, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.sw = icmp eq ptr %.22, %i.r
  br i1 %i.sw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 2, ptr %i.bc, align 4, !tbaa !37
  br label %.loopexit1573

bb.bv:                                            ; preds = %bb.bt
  %i.sx = shl nuw i32 %.sroa.0.22, 8
  %i.sy = shl i32 %.sroa.230.22, 8
  %i.sz = getelementptr inbounds nuw i8, ptr %.22, i64 1
  %i.ta = load i8, ptr %.22, align 1, !tbaa !26
  %i.tb = zext i8 %i.ta to i32
  %i.tc = or disjoint i32 %i.sy, %i.tb
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.23 = phi ptr [ %i.sz, %bb.bv ], [ %.22, %bb.bs ] ; 2 uses
  %.sroa.0.23 = phi i32 [ %i.sx, %bb.bv ], [ %.sroa.0.22, %bb.bs ] ; 2 uses
  %.sroa.230.23 = phi i32 [ %i.tc, %bb.bv ], [ %.sroa.230.22, %bb.bs ] ; 3 uses
  %i.td = lshr i32 %.sroa.0.23, 11
  %i.te = zext i32 %.71173 to i64
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %.41139, i64 %i.te ; 2 uses
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !38 ; 4 uses
  %i.th = zext i16 %i.tg to i32                   ; 2 uses
  %i.ti = mul i32 %i.td, %i.th                    ; 4 uses
  %i.tj = icmp ult i32 %.sroa.230.23, %i.ti
  %i.tk = shl i32 %.71173, 1                      ; 2 uses
  br i1 %i.tj, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.tl = sub nsw i32 2048, %i.th
  %i.tm = lshr i32 %i.tl, 5
  %i.tn = trunc i32 %i.tm to i16
  %i.to = add i16 %i.tg, %i.tn
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.tp = sub i32 %.sroa.0.23, %i.ti
  %i.tq = sub nuw i32 %.sroa.230.23, %i.ti
  %i.tr = lshr i16 %i.tg, 5
  %i.ts = sub nuw i16 %i.tg, %i.tr
  %i.tt = or disjoint i32 %i.tk, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %.sink = phi i16 [ %i.to, %bb.bx ], [ %i.ts, %bb.by ]
  %.81174 = phi i32 [ %i.tk, %bb.bx ], [ %i.tt, %bb.by ] ; 3 uses
  %.sroa.0.24 = phi i32 [ %i.ti, %bb.bx ], [ %i.tp, %bb.by ] ; 2 uses
  %.sroa.230.24 = phi i32 [ %.sroa.230.23, %bb.bx ], [ %i.tq, %bb.by ] ; 2 uses
  store i16 %.sink, ptr %i.tf, align 2, !tbaa !38
  %i.tu = icmp ult i32 %.81174, 256
  br i1 %i.tu, label %bb.bs, label %.loopexit1605, !llvm.loop !61

dict_get.exit1428:                                ; preds = %bb.bp
  %i.tv = icmp ult i32 %.3978, 10
  %.v = select i1 %i.tv, i32 -3, i32 -6
  %i.tw = add i32 %.v, %.3978
  %i.tx = zext i32 %.51011 to i64                 ; 2 uses
  %i.ty = icmp ugt i64 %.sroa.17.1, %i.tx
  %i.tz = add i64 %.sroa.74.0.copyload, -288
  %spec.select1562 = select i1 %i.ty, i64 0, i64 %i.tz
  %i.ua = xor i64 %i.tx, -1
  %i.ub = getelementptr i8, ptr %i.sj, i64 %i.ua
  %i.uc = getelementptr i8, ptr %i.ub, i64 %spec.select1562
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !26
  %i.ue = zext i8 %i.ud to i32
  %i.uf = shl nuw nsw i32 %i.ue, 1
  br label %bb.ca
end_hunk_1
begin_hunk_2_@lzma_decode:bb.a
  %.sroa.230.79 = phi i32 [ %.sroa.230.78, %bb.hg ], [ %i.amy, %bb.hh ] ; 2 uses
  store i16 %.sink2230, ptr %i.amn, align 2, !tbaa !38
  %i.anc = icmp ult i32 %.431209, %.301242
  br i1 %i.anc, label %bb.hb, label %bb.hj, !llvm.loop !68

bb.hj:                                            ; preds = %bb.hi
  %i.and = sub i32 %.281529, %.301242
  %i.ane = add i32 %i.and, %.431209
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %.loopexit1607, %.loopexit1608
  %.sroa.55.25 = phi i64 [ %.sroa.55.15, %.loopexit1607 ], [ %.sroa.55.24, %bb.hj ], [ %.sroa.55.0.copyload, %.loopexit1608 ]
  %.sroa.17.25 = phi i64 [ %.sroa.17.15, %.loopexit1607 ], [ %.sroa.17.24, %bb.hj ], [ %.sroa.17.0.copyload, %.loopexit1608 ] ; 10 uses
  %.291530 = phi i32 [ %.191520, %.loopexit1607 ], [ %i.ane, %bb.hj ], [ %i.aq, %.loopexit1608 ] ; 2 uses
  %.271322 = phi i1 [ %.161311, %.loopexit1607 ], [ %.261321, %bb.hj ], [ %i.az, %.loopexit1608 ]
  %.351280 = phi i32 [ %.241269, %.loopexit1607 ], [ %.341279, %bb.hj ], [ %i.ao, %.loopexit1608 ] ; 2 uses
  %.311243 = phi i32 [ %.201232, %.loopexit1607 ], [ %.301242, %bb.hj ], [ %i.am, %.loopexit1608 ] ; 2 uses
  %.441210 = phi i32 [ %.321198, %.loopexit1607 ], [ %.431209, %bb.hj ], [ %i.ak, %.loopexit1608 ] ; 2 uses
  %.291164 = phi ptr [ %.181153, %.loopexit1607 ], [ %.281163, %bb.hj ], [ %i.ai, %.loopexit1608 ] ; 2 uses
  %.291133 = phi i32 [ %.181122, %.loopexit1607 ], [ %.281132, %bb.hj ], [ %i.ae, %.loopexit1608 ] ; 2 uses
  %.291102 = phi i32 [ %.181091, %.loopexit1607 ], [ %.281101, %bb.hj ], [ %i.ac, %.loopexit1608 ] ; 2 uses
  %.291071 = phi i32 [ %.181060, %.loopexit1607 ], [ %.281070, %bb.hj ], [ %i.aa, %.loopexit1608 ] ; 2 uses
  %.341040 = phi i32 [ %.231029, %.loopexit1607 ], [ %.331039, %bb.hj ], [ %i.y, %.loopexit1608 ] ; 4 uses
  %.291004 = phi i32 [ %.18993, %.loopexit1607 ], [ %.281003, %bb.hj ], [ %i.w, %.loopexit1608 ] ; 2 uses
  %.73 = phi ptr [ %.54, %.loopexit1607 ], [ %.72, %bb.hj ], [ %i.q, %.loopexit1608 ] ; 2 uses
  %.sroa.0.80 = phi i32 [ %.sroa.0.60, %.loopexit1607 ], [ %.sroa.0.79, %bb.hj ], [ %.sroa.0.0.copyload, %.loopexit1608 ] ; 2 uses
  %.sroa.230.80 = phi i32 [ %.sroa.230.60, %.loopexit1607 ], [ %.sroa.230.79, %bb.hj ], [ %.sroa.230.0.copyload, %.loopexit1608 ] ; 2 uses
  %i.anf = sub i64 %.sroa.66.0, %.sroa.17.25
  %i.ang = zext i32 %.291530 to i64
  %i.anh = tail call i64 @llvm.umin.i64(i64 %i.anf, i64 %i.ang) ; 4 uses
  %i.ani = trunc nuw i64 %i.anh to i32            ; 5 uses
  %i.anj = sub nuw i32 %.291530, %i.ani           ; 2 uses
  %i.ank = zext i32 %.341040 to i64               ; 3 uses
  %i.anl = xor i64 %i.ank, -1
  %i.anm = add i64 %.sroa.17.25, %i.anl
  %.not.i1431 = icmp ugt i64 %.sroa.17.25, %i.ank
  %i.ann = add i64 %.sroa.74.0.copyload, -288     ; 2 uses
  %i.ano = select i1 %.not.i1431, i64 0, i64 %i.ann ; 2 uses
  %.0.i1432 = add i64 %i.anm, %i.ano              ; 6 uses
  %i.anp = icmp ult i32 %.341040, %i.ani
  br i1 %i.anp, label %iter.check, label %bb.hl

iter.check:                                       ; preds = %bb.hk
  %i.anq = add nuw nsw i64 %i.anh, 4294967295
  %i.anr = and i64 %i.anq, 4294967295             ; 3 uses
  %i.ans = add nuw nsw i64 %i.anr, 1              ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.anr, 3
  %i.ant = sub i64 %i.ank, %i.ano
  %diff.check = icmp ult i64 %i.ant, 31
  %or.cond3003 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond3003, label %.preheader.i1434.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2958 = icmp samesign ult i64 %i.anr, 31
  br i1 %min.iters.check2958, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.anu = and i64 %i.ans, 28
  %n.vec = and i64 %i.ans, 8589934560             ; 6 uses
  %i.anv = add i64 %.sroa.17.25, %n.vec           ; 2 uses
  %i.anw = trunc i64 %n.vec to i32
  %i.anx = sub i32 %i.ani, %i.anw
  %i.any = add i64 %.0.i1432, %n.vec
  %i.anz = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.0.i1432
  %i.aoa = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.25
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aob = getelementptr i8, ptr %i.anz, i64 %index ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  %wide.load = load <16 x i8>, ptr %i.aob, align 1, !tbaa !26
  %wide.load2959 = load <16 x i8>, ptr %i.aoc, align 1, !tbaa !26
  %i.aod = getelementptr i8, ptr %i.aoa, i64 %index ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  store <16 x i8> %wide.load, ptr %i.aod, align 1, !tbaa !26
  store <16 x i8> %wide.load2959, ptr %i.aoe, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aof = icmp eq i64 %index.next, %n.vec
  br i1 %i.aof, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ans, %n.vec
  br i1 %cmp.n, label %.loopexit.i1433, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.anu, 0
  br i1 %min.epilog.iters.check, label %.preheader.i1434.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2962 = and i64 %i.ans, 8589934588         ; 5 uses
  %i.aog = add i64 %.sroa.17.25, %n.vec2962       ; 2 uses
  %i.aoh = trunc i64 %n.vec2962 to i32
  %i.aoi = sub i32 %i.ani, %i.aoh
  %i.aoj = add i64 %.0.i1432, %n.vec2962
  %i.aok = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.0.i1432
  %i.aol = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.25
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2963 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2965, %vec.epilog.vector.body ] ; 3 uses
  %i.aom = getelementptr i8, ptr %i.aok, i64 %index2963
  %wide.load2964 = load <4 x i8>, ptr %i.aom, align 1, !tbaa !26
  %i.aon = getelementptr i8, ptr %i.aol, i64 %index2963
  store <4 x i8> %wide.load2964, ptr %i.aon, align 1, !tbaa !26
  %index.next2965 = add nuw i64 %index2963, 4     ; 2 uses
  %i.aoo = icmp eq i64 %index.next2965, %n.vec2962
  br i1 %i.aoo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2966 = icmp eq i64 %i.ans, %n.vec2962
  br i1 %cmp.n2966, label %.loopexit.i1433, label %.preheader.i1434.preheader

.preheader.i1434.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.17.32.ph = phi i64 [ %.sroa.17.25, %iter.check ], [ %i.anv, %vec.epilog.iter.check ], [ %i.aog, %vec.epilog.middle.block ] ; 2 uses
  %.031.i1435.ph = phi i32 [ %i.ani, %iter.check ], [ %i.anx, %vec.epilog.iter.check ], [ %i.aoi, %vec.epilog.middle.block ] ; 4 uses
  %.1.i1436.ph = phi i64 [ %.0.i1432, %iter.check ], [ %i.any, %vec.epilog.iter.check ], [ %i.aoj, %vec.epilog.middle.block ] ; 2 uses
  %i.aop = add i32 %.031.i1435.ph, -1
  %xtraiter = and i32 %.031.i1435.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i1434.prol.loopexit, label %.preheader.i1434.prol

.preheader.i1434.prol:                            ; preds = %.preheader.i1434.preheader, %.preheader.i1434.prol
  %.sroa.17.32.prol = phi i64 [ %i.aot, %.preheader.i1434.prol ], [ %.sroa.17.32.ph, %.preheader.i1434.preheader ] ; 2 uses
  %.031.i1435.prol = phi i32 [ %i.aov, %.preheader.i1434.prol ], [ %.031.i1435.ph, %.preheader.i1434.preheader ]
  %.1.i1436.prol = phi i64 [ %i.aoq, %.preheader.i1434.prol ], [ %.1.i1436.ph, %.preheader.i1434.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i1434.prol ], [ 0, %.preheader.i1434.preheader ]
  %i.aoq = add i64 %.1.i1436.prol, 1              ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i1436.prol
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !26
  %i.aot = add i64 %.sroa.17.32.prol, 1           ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.32.prol
  store i8 %i.aos, ptr %i.aou, align 1, !tbaa !26
  %i.aov = add i32 %.031.i1435.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i1434.prol.loopexit, label %.preheader.i1434.prol, !llvm.loop !71

.preheader.i1434.prol.loopexit:                   ; preds = %.preheader.i1434.prol, %.preheader.i1434.preheader
  %.lcssa3276.unr = phi i64 [ poison, %.preheader.i1434.preheader ], [ %i.aot, %.preheader.i1434.prol ]
  %.sroa.17.32.unr = phi i64 [ %.sroa.17.32.ph, %.preheader.i1434.preheader ], [ %i.aot, %.preheader.i1434.prol ]
  %.031.i1435.unr = phi i32 [ %.031.i1435.ph, %.preheader.i1434.preheader ], [ %i.aov, %.preheader.i1434.prol ]
  %.1.i1436.unr = phi i64 [ %.1.i1436.ph, %.preheader.i1434.preheader ], [ %i.aoq, %.preheader.i1434.prol ]
  %i.aow = icmp ult i32 %i.aop, 3
  br i1 %i.aow, label %.loopexit.i1433, label %.preheader.i1434

.preheader.i1434:                                 ; preds = %.preheader.i1434.prol.loopexit, %.preheader.i1434
  %.sroa.17.32 = phi i64 [ %i.apo, %.preheader.i1434 ], [ %.sroa.17.32.unr, %.preheader.i1434.prol.loopexit ] ; 5 uses
  %.031.i1435 = phi i32 [ %i.apr, %.preheader.i1434 ], [ %.031.i1435.unr, %.preheader.i1434.prol.loopexit ]
  %.1.i1436 = phi i64 [ %i.apk, %.preheader.i1434 ], [ %.1.i1436.unr, %.preheader.i1434.prol.loopexit ] ; 5 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i1436
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !26
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.32
  store i8 %i.aoy, ptr %i.aoz, align 1, !tbaa !26
  %i.apa = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i1436
  %i.apb = getelementptr i8, ptr %i.apa, i64 1
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !26
  %i.apd = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.32
  %i.ape = getelementptr i8, ptr %i.apd, i64 1
  store i8 %i.apc, ptr %i.ape, align 1, !tbaa !26
  %i.apf = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i1436
  %i.apg = getelementptr i8, ptr %i.apf, i64 2
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !26
  %i.api = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.32
  %i.apj = getelementptr i8, ptr %i.api, i64 2
  store i8 %i.aph, ptr %i.apj, align 1, !tbaa !26
  %i.apk = add i64 %.1.i1436, 4
  %i.apl = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.1.i1436
  %i.apm = getelementptr i8, ptr %i.apl, i64 3
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !26
  %i.apo = add i64 %.sroa.17.32, 4                ; 2 uses
  %i.app = getelementptr i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.32
  %i.apq = getelementptr i8, ptr %i.app, i64 3
  store i8 %i.apn, ptr %i.apq, align 1, !tbaa !26
  %i.apr = add i32 %.031.i1435, -4                ; 2 uses
  %.not36.i1437.3 = icmp eq i32 %i.apr, 0
  br i1 %.not36.i1437.3, label %.loopexit.i1433, label %.preheader.i1434, !llvm.loop !72

bb.hl:                                            ; preds = %bb.hk
  %i.aps = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.sroa.17.25
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1459, i64 %.0.i1432
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aps, ptr align 1 %i.apt, i64 %i.anh, i1 false)
  %i.apu = add i64 %i.anh, %.sroa.17.25
  br label %.loopexit.i1433

.loopexit.i1433:                                  ; preds = %.preheader.i1434.prol.loopexit, %.preheader.i1434, %middle.block, %vec.epilog.middle.block, %bb.hl
  %.sroa.17.31 = phi i64 [ %i.apu, %bb.hl ], [ %i.aog, %vec.epilog.middle.block ], [ %i.anv, %middle.block ], [ %.lcssa3276.unr, %.preheader.i1434.prol.loopexit ], [ %i.apo, %.preheader.i1434 ] ; 3 uses
  %i.apv = trunc nuw i8 %.sroa.80.0.copyload to i1 ; 2 uses
  %i.apw = add i64 %.sroa.17.31, -576
  %spec.select1566 = select i1 %i.apv, i64 %.sroa.55.25, i64 %i.apw ; 2 uses
  %.not1568 = icmp eq i32 %i.anj, 0
  br i1 %.not1568, label %.preheader, label %bb.hm, !prof !103

bb.hm:                                            ; preds = %.loopexit.i1433
  store i32 22, ptr %i.bc, align 4, !tbaa !37
  br label %.loopexit1573

.loopexit1573:                                    ; preds = %.loopexit, %bb.ab, %bb.ch, %bb.fh, %.loopexit1607, %.loopexit1574, %bb.bj, %bb.bi, %.loopexit1608, %bb.hm, %bb.hd, %bb.gv, %bb.go, %bb.gg, %bb.fz, %bb.fu, %bb.fq, %bb.fk, %bb.fg, %bb.fe, %bb.ev, %bb.eo, %bb.ee, %bb.ds, %bb.di, %bb.da, %bb.ct, %bb.cn, %bb.cj, %bb.bu, %bb.bm, %bb.bg, %bb.bd
  %.sroa.55.26 = phi i64 [ %.sroa.55.0.copyload, %.loopexit1608 ], [ %.sroa.55.1, %bb.bg ], [ %.sroa.55.1, %bb.bi ], [ %.sroa.55.1, %bb.bm ], [ %.sroa.55.2, %bb.bu ], [ %.sroa.55.4, %bb.cj ], [ %spec.select1561, %bb.bd ], [ 0, %bb.fh ], [ %.sroa.55.14, %bb.fe ], [ %.sroa.55.14, %bb.fg ], [ %.sroa.55.13, %.loopexit1574 ], [ %.sroa.55.1, %bb.bj ], [ %.sroa.55.3, %bb.ch ], [ %.sroa.55.5, %bb.cn ], [ %.sroa.55.6, %bb.ct ], [ %.sroa.55.8, %bb.di ], [ %.sroa.55.9, %bb.ds ], [ %spec.select1566, %bb.hm ], [ %.sroa.55.15, %.loopexit1607 ], [ %.sroa.55.10, %bb.ee ], [ %.sroa.55.11, %bb.eo ], [ %.sroa.55.12, %bb.ev ], [ %.sroa.55.7, %bb.da ], [ %.sroa.55.16, %bb.fk ], [ %.sroa.55.17, %bb.fq ], [ %.sroa.55.18, %bb.fu ], [ %.sroa.55.22, %bb.go ], [ %.sroa.55.24, %bb.hd ], [ %.sroa.55.23, %bb.gv ], [ %.sroa.55.19, %bb.fz ], [ %.sroa.55.20, %bb.gg ], [ 0, %bb.ab ], [ %.sroa.55.01830, %.loopexit ]
  %.sroa.17.26 = phi i64 [ %.sroa.17.0.copyload, %.loopexit1608 ], [ %.sroa.66.0, %bb.bg ], [ %.sroa.66.0, %bb.bi ], [ %.sroa.17.1, %bb.bm ], [ %.sroa.17.2, %bb.bu ], [ %.sroa.66.0, %bb.cj ], [ %.sroa.17.27, %bb.bd ], [ %.sroa.17.5, %bb.fh ], [ %.sroa.17.14, %bb.fe ], [ %.sroa.17.14, %bb.fg ], [ %.sroa.17.13, %.loopexit1574 ], [ %.sroa.66.0, %bb.bj ], [ %.sroa.17.3, %bb.ch ], [ %.sroa.17.5, %bb.cn ], [ %.sroa.17.6, %bb.ct ], [ %.sroa.17.8, %bb.di ], [ %.sroa.17.9, %bb.ds ], [ %.sroa.17.31, %bb.hm ], [ %.sroa.17.15, %.loopexit1607 ], [ %.sroa.17.10, %bb.ee ], [ %.sroa.17.11, %bb.eo ], [ %.sroa.17.12, %bb.ev ], [ %.sroa.17.7, %bb.da ], [ %.sroa.17.16, %bb.fk ], [ %.sroa.17.17, %bb.fq ], [ %.sroa.66.0, %bb.fu ], [ %.sroa.17.22, %bb.go ], [ %.sroa.17.24, %bb.hd ], [ %.sroa.17.23, %bb.gv ], [ %.sroa.17.19, %bb.fz ], [ %.sroa.17.20, %bb.gg ], [ %.sroa.17.01831, %bb.ab ], [ %.sroa.17.01831, %.loopexit ] ; 2 uses
  %.301531 = phi i32 [ %i.aq, %.loopexit1608 ], [ %.31504, %bb.bg ], [ %.31504, %bb.bi ], [ %.31504, %bb.bm ], [ %.41505, %bb.bu ], [ %.81509, %bb.cj ], [ %i.og, %bb.bd ], [ %.91510, %bb.fh ], [ %.181519, %bb.fe ], [ %.181519, %bb.fg ], [ %.171518, %.loopexit1574 ], [ %.31504, %bb.bj ], [ %.61507, %bb.ch ], [ %.91510, %bb.cn ], [ %.101511, %bb.ct ], [ %.121513, %bb.di ], [ %.131514, %bb.ds ], [ %i.anj, %bb.hm ], [ %.191520, %.loopexit1607 ], [ %.141515, %bb.ee ], [ %.151516, %bb.eo ], [ %.161517, %bb.ev ], [ %.111512, %bb.da ], [ %.201521, %bb.fk ], [ %.211522, %bb.fq ], [ %.221523, %bb.fu ], [ %.261527, %bb.go ], [ %.281529, %bb.hd ], [ %.271528, %bb.gv ], [ %.231524, %bb.fz ], [ %.241525, %bb.gg ], [ %.0.ph1577, %bb.ab ], [ %.1, %.loopexit ]
  %.01293 = phi i32 [ 0, %.loopexit1608 ], [ 0, %bb.bg ], [ 1, %bb.bi ], [ 0, %bb.bm ], [ 0, %bb.bu ], [ 0, %bb.cj ], [ 0, %bb.bd ], [ 9, %bb.fh ], [ 0, %bb.fe ], [ %i.aet, %bb.fg ], [ 9, %.loopexit1574 ], [ 9, %bb.bj ], [ 0, %bb.ch ], [ 0, %bb.cn ], [ 0, %bb.ct ], [ 0, %bb.di ], [ 0, %bb.ds ], [ 0, %bb.hm ], [ 9, %.loopexit1607 ], [ 0, %bb.ee ], [ 0, %bb.eo ], [ 0, %bb.ev ], [ 0, %bb.da ], [ 0, %bb.fk ], [ 0, %bb.fq ], [ 0, %bb.fu ], [ 0, %bb.go ], [ 0, %bb.hd ], [ 0, %bb.gv ], [ 0, %bb.fz ], [ 0, %bb.gg ], [ 9, %bb.ab ], [ 9, %.loopexit ] ; 3 uses
  %.361281 = phi i32 [ %i.ao, %.loopexit1608 ], [ %.41249, %bb.bg ], [ %.41249, %bb.bi ], [ %.41249, %bb.bm ], [ %.51250, %bb.bu ], [ %.101255, %bb.cj ], [ %.31248, %bb.bd ], [ %.111256, %bb.fh ], [ %.231268, %bb.fe ], [ %.231268, %bb.fg ], [ %.221267, %.loopexit1574 ], [ %.41249, %bb.bj ], [ %.71252, %bb.ch ], [ %.111256, %bb.cn ], [ %.121257, %bb.ct ], [ %.151260, %bb.di ], [ %.161261, %bb.ds ], [ %.351280, %bb.hm ], [ %.241269, %.loopexit1607 ], [ %.181263, %bb.ee ], [ %.191264, %bb.eo ], [ %.211266, %bb.ev ], [ %.131258, %bb.da ], [ %.251270, %bb.fk ], [ %.261271, %bb.fq ], [ %.271272, %bb.fu ], [ %.311276, %bb.go ], [ %.341279, %bb.hd ], [ %.321277, %bb.gv ], [ %.281273, %bb.fz ], [ %.291274, %bb.gg ], [ %.01245.ph1579, %bb.ab ], [ %.21247, %.loopexit ]
  %.321244 = phi i32 [ %i.am, %.loopexit1608 ], [ %.41216, %bb.bg ], [ %.41216, %bb.bi ], [ %.41216, %bb.bm ], [ %.51217, %bb.bu ], [ %.71219, %bb.cj ], [ %.31215, %bb.bd ], [ %.81220, %bb.fh ], [ %.191231, %bb.fe ], [ %.191231, %bb.fg ], [ %.181230, %.loopexit1574 ], [ %.41216, %bb.bj ], [ %.61218, %bb.ch ], [ %.81220, %bb.cn ], [ %.91221, %bb.ct ], [ %.121224, %bb.di ], [ %.131225, %bb.ds ], [ %.311243, %bb.hm ], [ %.201232, %.loopexit1607 ], [ %.141226, %bb.ee ], [ %.161228, %bb.eo ], [ %.171229, %bb.ev ], [ %.101222, %bb.da ], [ %.211233, %bb.fk ], [ %.221234, %bb.fq ], [ %.231235, %bb.fu ], [ %.271239, %bb.go ], [ %.301242, %bb.hd ], [ %.281240, %bb.gv ], [ %.241236, %bb.fz ], [ %.251237, %bb.gg ], [ %.01212.ph1580, %bb.ab ], [ %.21214, %.loopexit ]
  %.451211 = phi i32 [ %i.ak, %.loopexit1608 ], [ %.51171, %bb.bg ], [ %.51171, %bb.bi ], [ %.51171, %bb.bm ], [ %.71173, %bb.bu ], [ %.131179, %bb.cj ], [ %.41170, %bb.bd ], [ %.141180, %bb.fh ], [ %.311197, %bb.fe ], [ %.311197, %bb.fg ], [ %.301196, %.loopexit1574 ], [ %.51171, %bb.bj ], [ %.101176, %bb.ch ], [ %.141180, %bb.cn ], [ %.151181, %bb.ct ], [ %.181184, %bb.di ], [ %.211187, %bb.ds ], [ %.441210, %bb.hm ], [ %.321198, %.loopexit1607 ], [ %.241190, %bb.ee ], [ %.261192, %bb.eo ], [ %.281194, %bb.ev ], [ %.161182, %bb.da ], [ %.331199, %bb.fk ], [ %.341200, %bb.fq ], [ %.351201, %bb.fu ], [ %.391205, %bb.go ], [ %.421208, %bb.hd ], [ %.401206, %bb.gv ], [ %.361202, %bb.fz ], [ %.371203, %bb.gg ], [ %.01166.ph15941869, %bb.ab ], [ %.31169, %.loopexit ]
  %.301165 = phi ptr [ %i.ai, %.loopexit1608 ], [ %.31138, %bb.bg ], [ %.31138, %bb.bi ], [ %.31138, %bb.bm ], [ %.41139, %bb.bu ], [ %.61141, %bb.cj ], [ %.21137, %bb.bd ], [ %.71142, %bb.fh ], [ %.171152, %bb.fe ], [ %.171152, %bb.fg ], [ %.161151, %.loopexit1574 ], [ %.31138, %bb.bj ], [ %.51140, %bb.ch ], [ %.71142, %bb.cn ], [ %.81143, %bb.ct ], [ %.111146, %bb.di ], [ %.121147, %bb.ds ], [ %.291164, %bb.hm ], [ %.181153, %.loopexit1607 ], [ %.131148, %bb.ee ], [ %.141149, %bb.eo ], [ %.151150, %bb.ev ], [ %.91144, %bb.da ], [ %.191154, %bb.fk ], [ %.201155, %bb.fq ], [ %.211156, %bb.fu ], [ %.251160, %bb.go ], [ %.281163, %bb.hd ], [ %.261161, %bb.gv ], [ %.221157, %bb.fz ], [ %.231158, %bb.gg ], [ %.01135.ph15951870, %bb.ab ], [ %.11136, %.loopexit ]
  %.301134 = phi i32 [ %i.ae, %.loopexit1608 ], [ %.31107, %bb.bg ], [ %.31107, %bb.bi ], [ %.31107, %bb.bm ], [ %.41108, %bb.bu ], [ %.61110, %bb.cj ], [ %.21106, %bb.bd ], [ %.71111, %bb.fh ], [ %.171121, %bb.fe ], [ %.171121, %bb.fg ], [ %.161120, %.loopexit1574 ], [ %.31107, %bb.bj ], [ %.51109, %bb.ch ], [ %.71111, %bb.cn ], [ %.81112, %bb.ct ], [ %.111115, %bb.di ], [ %.121116, %bb.ds ], [ %.291133, %bb.hm ], [ %.181122, %.loopexit1607 ], [ %.131117, %bb.ee ], [ %.141118, %bb.eo ], [ %.151119, %bb.ev ], [ %.91113, %bb.da ], [ %.191123, %bb.fk ], [ %.201124, %bb.fq ], [ %.211125, %bb.fu ], [ %.251129, %bb.go ], [ %.281132, %bb.hd ], [ %.261130, %bb.gv ], [ %.221126, %bb.fz ], [ %.231127, %bb.gg ], [ %.01104.ph1583, %bb.ab ], [ %.01073.ph1584, %.loopexit ]
  %.301103 = phi i32 [ %i.ac, %.loopexit1608 ], [ %.31076, %bb.bg ], [ %.31076, %bb.bi ], [ %.31076, %bb.bm ], [ %.41077, %bb.bu ], [ %.61079, %bb.cj ], [ %.21075, %bb.bd ], [ %.71080, %bb.fh ], [ %.171090, %bb.fe ], [ %.171090, %bb.fg ], [ %.161089, %.loopexit1574 ], [ %.31076, %bb.bj ], [ %.51078, %bb.ch ], [ %.71080, %bb.cn ], [ %.81081, %bb.ct ], [ %.111084, %bb.di ], [ %.121085, %bb.ds ], [ %.291102, %bb.hm ], [ %.181091, %.loopexit1607 ], [ %.131086, %bb.ee ], [ %.141087, %bb.eo ], [ %.151088, %bb.ev ], [ %.91082, %bb.da ], [ %.191092, %bb.fk ], [ %.201093, %bb.fq ], [ %.211094, %bb.fu ], [ %.251098, %bb.go ], [ %.281101, %bb.hd ], [ %.261099, %bb.gv ], [ %.221095, %bb.fz ], [ %.231096, %bb.gg ], [ %.01073.ph1584, %bb.ab ], [ %.01042.ph1585, %.loopexit ]
  %.301072 = phi i32 [ %i.aa, %.loopexit1608 ], [ %.31045, %bb.bg ], [ %.31045, %bb.bi ], [ %.31045, %bb.bm ], [ %.41046, %bb.bu ], [ %.61048, %bb.cj ], [ %.21044, %bb.bd ], [ %.71049, %bb.fh ], [ %.171059, %bb.fe ], [ %.171059, %bb.fg ], [ %.161058, %.loopexit1574 ], [ %.31045, %bb.bj ], [ %.51047, %bb.ch ], [ %.71049, %bb.cn ], [ %.81050, %bb.ct ], [ %.111053, %bb.di ], [ %.121054, %bb.ds ], [ %.291071, %bb.hm ], [ %.181060, %.loopexit1607 ], [ %.131055, %bb.ee ], [ %.141056, %bb.eo ], [ %.151057, %bb.ev ], [ %.91051, %bb.da ], [ %.191061, %bb.fk ], [ %.201062, %bb.fq ], [ %.211063, %bb.fu ], [ %.251067, %bb.go ], [ %.281070, %bb.hd ], [ %.261068, %bb.gv ], [ %.221064, %bb.fz ], [ %.231065, %bb.gg ], [ %.01042.ph1585, %bb.ab ], [ %.01006.ph1586, %.loopexit ]
  %.351041 = phi i32 [ %i.y, %.loopexit1608 ], [ %.51011, %bb.bg ], [ %.51011, %bb.bi ], [ %.51011, %bb.bm ], [ %.61012, %bb.bu ], [ %.81014, %bb.cj ], [ %.41010, %bb.bd ], [ %.91015, %bb.fh ], [ %.221028, %bb.fe ], [ %.221028, %bb.fg ], [ -1, %.loopexit1574 ], [ %.51011, %bb.bj ], [ %.71013, %bb.ch ], [ %.91015, %bb.cn ], [ %.101016, %bb.ct ], [ %.131019, %bb.di ], [ %.141020, %bb.ds ], [ %.341040, %bb.hm ], [ %.231029, %.loopexit1607 ], [ %.161022, %bb.ee ], [ %.191025, %bb.eo ], [ %.201026, %bb.ev ], [ %.111017, %bb.da ], [ %.241030, %bb.fk ], [ %.251031, %bb.fq ], [ %.261032, %bb.fu ], [ %.301036, %bb.go ], [ %.331039, %bb.hd ], [ %.311037, %bb.gv ], [ %.271033, %bb.fz ], [ %.281034, %bb.gg ], [ %.01006.ph1586, %bb.ab ], [ %.21008, %.loopexit ]
  %.301005 = phi i32 [ %i.w, %.loopexit1608 ], [ %.3978, %bb.bg ], [ %.3978, %bb.bi ], [ %.3978, %bb.bm ], [ %.4979, %bb.bu ], [ %.6981, %bb.cj ], [ %.2977, %bb.bd ], [ %.7982, %bb.fh ], [ %.17992, %bb.fe ], [ %.17992, %bb.fg ], [ %.16991, %.loopexit1574 ], [ %.3978, %bb.bj ], [ %.5980, %bb.ch ], [ %.7982, %bb.cn ], [ %.8983, %bb.ct ], [ %.11986, %bb.di ], [ %.12987, %bb.ds ], [ %.291004, %bb.hm ], [ %.18993, %.loopexit1607 ], [ %.13988, %bb.ee ], [ %.14989, %bb.eo ], [ %.15990, %bb.ev ], [ %.9984, %bb.da ], [ %.19994, %bb.fk ], [ %.20995, %bb.fq ], [ %.21996, %bb.fu ], [ %.251000, %bb.go ], [ %.281003, %bb.hd ], [ %.261001, %bb.gv ], [ %.22997, %bb.fz ], [ %.23998, %bb.gg ], [ %.09751832, %bb.ab ], [ %i.eh, %.loopexit ]
  %.74 = phi ptr [ %i.q, %.loopexit1608 ], [ %i.r, %bb.bg ], [ %.18, %bb.bi ], [ %i.r, %bb.bm ], [ %i.r, %bb.bu ], [ %.28, %bb.cj ], [ %.16, %bb.bd ], [ %.30, %bb.fh ], [ %i.r, %bb.fe ], [ %.53, %bb.fg ], [ %.51, %.loopexit1574 ], [ %.18, %bb.bj ], [ %i.r, %bb.ch ], [ %i.r, %bb.cn ], [ %i.r, %bb.ct ], [ %i.r, %bb.di ], [ %i.r, %bb.ds ], [ %.73, %bb.hm ], [ %.54, %.loopexit1607 ], [ %i.r, %bb.ee ], [ %i.r, %bb.eo ], [ %i.r, %bb.ev ], [ %i.r, %bb.da ], [ %i.r, %bb.fk ], [ %i.r, %bb.fq ], [ %.59, %bb.fu ], [ %i.r, %bb.go ], [ %i.r, %bb.hd ], [ %i.r, %bb.gv ], [ %i.r, %bb.fz ], [ %i.r, %bb.gg ], [ %.3, %bb.ab ], [ %.8, %.loopexit ]
  %.sroa.0.81 = phi i32 [ %.sroa.0.0.copyload, %.loopexit1608 ], [ %.sroa.0.17, %bb.bg ], [ %.sroa.0.18, %bb.bi ], [ %.sroa.0.19, %bb.bm ], [ %.sroa.0.22, %bb.bu ], [ %.sroa.0.30, %bb.cj ], [ %.sroa.0.16, %bb.bd ], [ %i.aew, %bb.fh ], [ %.sroa.0.58, %bb.fe ], [ %.sroa.0.59, %bb.fg ], [ %.sroa.0.57, %.loopexit1574 ], [ %.sroa.0.18, %bb.bj ], [ %.sroa.0.26, %bb.ch ], [ %.sroa.0.31, %bb.cn ], [ %.sroa.0.33, %bb.ct ], [ %.sroa.0.39, %bb.di ], [ %.sroa.0.43, %bb.ds ], [ %.sroa.0.80, %bb.hm ], [ %.sroa.0.60, %.loopexit1607 ], [ %.sroa.0.47, %bb.ee ], [ %.sroa.0.51, %bb.eo ], [ %.sroa.0.54, %bb.ev ], [ %.sroa.0.35, %bb.da ], [ %.sroa.0.61, %bb.fk ], [ %.sroa.0.63, %bb.fq ], [ %.sroa.0.65, %bb.fu ], [ %.sroa.0.71, %bb.go ], [ %.sroa.0.77, %bb.hd ], [ %.sroa.0.73, %bb.gv ], [ %.sroa.0.66, %bb.fz ], [ %.sroa.0.68, %bb.gg ], [ %i.hw, %bb.ab ], [ %.sroa.0.8, %.loopexit ]
  %.sroa.230.81 = phi i32 [ %.sroa.230.0.copyload, %.loopexit1608 ], [ %.sroa.230.17, %bb.bg ], [ 0, %bb.bi ], [ %.sroa.230.19, %bb.bm ], [ %.sroa.230.22, %bb.bu ], [ %.sroa.230.30, %bb.cj ], [ %.sroa.230.16, %bb.bd ], [ %i.aex, %bb.fh ], [ %.sroa.230.58, %bb.fe ], [ %.sroa.230.59, %bb.fg ], [ %.sroa.230.57, %.loopexit1574 ], [ %.sroa.230.18, %bb.bj ], [ %.sroa.230.26, %bb.ch ], [ %.sroa.230.31, %bb.cn ], [ %.sroa.230.33, %bb.ct ], [ %.sroa.230.39, %bb.di ], [ %.sroa.230.43, %bb.ds ], [ %.sroa.230.80, %bb.hm ], [ %.sroa.230.60, %.loopexit1607 ], [ %.sroa.230.47, %bb.ee ], [ %.sroa.230.51, %bb.eo ], [ %.sroa.230.54, %bb.ev ], [ %.sroa.230.35, %bb.da ], [ %.sroa.230.61, %bb.fk ], [ %.sroa.230.63, %bb.fq ], [ %.sroa.230.65, %bb.fu ], [ %.sroa.230.71, %bb.go ], [ %.sroa.230.77, %bb.hd ], [ %.sroa.230.73, %bb.gv ], [ %.sroa.230.66, %bb.fz ], [ %.sroa.230.68, %bb.gg ], [ %i.hx, %bb.ab ], [ %.sroa.230.8, %.loopexit ]
  store i64 %.sroa.17.26, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !114
  store i64 %.sroa.55.26, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !115
  store i32 %.sroa.0.81, ptr %i.a, align 4, !tbaa !77
  store i32 %.sroa.230.81, ptr %.sroa.230.0..sroa_idx, align 8, !tbaa !77
  store i32 0, ptr %i.b, align 4, !tbaa !77
  %i.apx = ptrtoint ptr %.74 to i64
  %i.apy = ptrtoint ptr %2 to i64
  %i.apz = sub i64 %i.apx, %i.apy
  store i64 %i.apz, ptr %3, align 8, !tbaa !78
  store i32 %.301005, ptr %i.v, align 8, !tbaa !82
  store i32 %.351041, ptr %i.x, align 4, !tbaa !83
  store i32 %.301072, ptr %i.z, align 8, !tbaa !84
  store i32 %.301103, ptr %i.ab, align 4, !tbaa !85
  store i32 %.301134, ptr %i.ad, align 8, !tbaa !86
  store ptr %.301165, ptr %i.ah, align 8, !tbaa !87
  store i32 %.451211, ptr %i.aj, align 8, !tbaa !88
  store i32 %.321244, ptr %i.al, align 4, !tbaa !89
  store i32 %.361281, ptr %i.an, align 8, !tbaa !90
  store i32 %.301531, ptr %i.ap, align 4, !tbaa !91
  %i.aqa = load i64, ptr %i.ax, align 8, !tbaa !36 ; 2 uses
  %.not1415 = icmp eq i64 %i.aqa, -1
  br i1 %.not1415, label %bb.hp, label %bb.hn

bb.hn:                                            ; preds = %.loopexit1573
  %.neg1416 = sub i64 %.sroa.17.0.copyload, %.sroa.17.26
  %i.aqb = add i64 %i.aqa, %.neg1416              ; 2 uses
  store i64 %i.aqb, ptr %i.ax, align 8, !tbaa !36
  %i.aqc = icmp eq i64 %i.aqb, 0
  %i.aqd = icmp eq i32 %.01293, 0
  %or.cond = select i1 %i.aqc, i1 %i.aqd, i1 false
  br i1 %or.cond, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.aqe = load i32, ptr %i.bc, align 4, !tbaa !37
  %switch.tableidx = add i32 %i.aqe, -4           ; 2 uses
  %i.aqf = icmp ult i32 %switch.tableidx, 19
  br i1 %i.aqf, label %switch.lookup, label %rc_read_init.exit

bb.hp:                                            ; preds = %bb.hn, %.loopexit1573
  %i.aqg = icmp eq i32 %.01293, 1
  br i1 %i.aqg, label %bb.hq, label %rc_read_init.exit

bb.hq:                                            ; preds = %bb.hp
  store i32 -1, ptr %i.a, align 4, !tbaa !46
  store i32 0, ptr %.sroa.230.0..sroa_idx, align 8, !tbaa !47
  store i32 5, ptr %i.b, align 4, !tbaa !48
  store i32 1, ptr %i.bc, align 4, !tbaa !37
  br label %rc_read_init.exit

switch.lookup:                                    ; preds = %bb.ho
  %i.aqh = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lzma_decode, i64 %i.aqh
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %rc_read_init.exit

rc_read_init.exit:                                ; preds = %bb.d, %bb.b, %switch.lookup, %bb.ho, %bb.hq, %bb.hp
  %.2 = phi i32 [ 0, %bb.ho ], [ %switch.ext, %switch.lookup ], [ 1, %bb.hq ], [ %.01293, %bb.hp ], [ 9, %bb.d ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @lzma_decoder_reset(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %notmask = shl nsw i32 -1, %i.b                 ; 2 uses
  %i.c = xor i32 %notmask, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28300
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.i = add i32 %i.h, %i.f                       ; 2 uses
  %.not.i = icmp ugt i32 %i.i, 23
  br i1 %.not.i, label %literal_init.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.j = shl i32 768, %i.i
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1)
  %umax.i = zext i32 %i.k to i64                  ; 3 uses
  %n.vec = and i64 %umax.i, 4294967040            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %iter.check, %vector.body
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <8 x i16> splat (i16 1024), ptr %i.l, align 2, !tbaa !38
  store <8 x i16> splat (i16 1024), ptr %i.m, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umax.i
  br i1 %cmp.n, label %literal_init.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %middle.block, %.lr.ph.i
  %.06.i = phi i64 [ %i.p, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06.i
  store i16 1024, ptr %i.o, align 2, !tbaa !38
  %i.p = add nuw nsw i64 %.06.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %umax.i
  br i1 %exitcond.not.i, label %literal_init.exit, label %.lr.ph.i, !llvm.loop !117

literal_init.exit:                                ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28304
  store i32 %i.f, ptr %i.q, align 8, !tbaa !35
  %i.r = shl i32 256, %i.h
  %i.s = lshr i32 256, %i.f
  %i.t = sub i32 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28308
  store i32 %i.t, ptr %i.u, align 4, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  store i32 %i.c, ptr %i.d, align 4, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28268
  store i32 -1, ptr %i.w, align 4, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28272
  store i32 0, ptr %i.x, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28276
  store i32 5, ptr %i.y, align 4, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24576 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 25056 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24960
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24984
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 25008
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25032
  %i.af = sub i32 0, %notmask                     ; 13 uses
  %wide.trip.count = zext i32 %i.af to i64        ; 36 uses
  %min.iters.check183 = icmp ult i32 %i.af, 8
  br i1 %min.iters.check183, label %scalar.ph.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %literal_init.exit
  %n.vec185 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next188, %vector.body186 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index187
  store <8 x i16> splat (i16 1024), ptr %i.ag, align 2, !tbaa !38
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index187
  store <8 x i16> splat (i16 1024), ptr %i.ah, align 2, !tbaa !38
  %index.next188 = add nuw i64 %index187, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next188, %n.vec185
  br i1 %i.ai, label %middle.block189, label %vector.body186, !llvm.loop !118

middle.block189:                                  ; preds = %vector.body186
  %cmp.n190 = icmp eq i64 %n.vec185, %wide.trip.count
  br i1 %cmp.n190, label %.preheader119.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %literal_init.exit, %middle.block189
  %indvars.iv.ph = phi i64 [ 0, %literal_init.exit ], [ %n.vec185, %middle.block189 ]
  br label %scalar.ph

.preheader119.1:                                  ; preds = %scalar.ph, %middle.block189
  store i16 1024, ptr %i.ab, align 8, !tbaa !38
  store i16 1024, ptr %i.ac, align 8, !tbaa !38
  store i16 1024, ptr %i.ad, align 8, !tbaa !38
  store i16 1024, ptr %i.ae, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24608 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 25088 ; 2 uses
  %min.iters.check193 = icmp ult i32 %i.af, 8
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %.preheader119.1
  %n.vec195 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next198, %vector.body196 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %index197
  store <8 x i16> splat (i16 1024), ptr %i.al, align 2, !tbaa !38
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index197
  store <8 x i16> splat (i16 1024), ptr %i.am, align 2, !tbaa !38
  %index.next198 = add nuw i64 %index197, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next198, %n.vec195
  br i1 %i.an, label %middle.block199, label %vector.body196, !llvm.loop !119

middle.block199:                                  ; preds = %vector.body196
  %cmp.n200 = icmp eq i64 %n.vec195, %wide.trip.count
  br i1 %cmp.n200, label %.preheader119.2, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %.preheader119.1, %middle.block199
  %indvars.iv.1.ph = phi i64 [ 0, %.preheader119.1 ], [ %n.vec195, %middle.block199 ]
end_hunk_2
