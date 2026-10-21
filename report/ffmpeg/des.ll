Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/des?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@av_des_crypt_mac:bb.a
  store i64 %i.ax, ptr %1, align 1, !tbaa !13
  %.not67 = icmp eq i32 %3, 1
  br i1 %.not67, label %._crit_edge.thread, label %.lr.ph.split.split.us.peel.next

.lr.ph.split.split.us.peel.next:                  ; preds = %bb.r
  %i.ay = add nsw i32 %3, -2
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split.us.peel.next, %bb.u
  %i.az = phi i32 [ %i.bh, %bb.u ], [ %i.ay, %.lr.ph.split.split.us.peel.next ] ; 2 uses
  %.03749.us52.pn = phi ptr [ %.03749.us52, %bb.u ], [ %1, %.lr.ph.split.split.us.peel.next ]
  %.03948.us53.pn = phi ptr [ %.03948.us53, %bb.u ], [ %2, %.lr.ph.split.split.us.peel.next ]
  %.03948.us53 = getelementptr inbounds nuw i8, ptr %.03948.us53.pn, i64 8 ; 2 uses
  %.03749.us52 = getelementptr inbounds nuw i8, ptr %.03749.us52.pn, i64 %spec.select.idx ; 2 uses
  %i.ba = load i64, ptr %.03948.us53, align 1, !tbaa !13
  %i.bb = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba) ; 2 uses
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !12
  %.not46.us = icmp eq i32 %i.bc, 0
  br i1 %.not46.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = tail call fastcc i64 @des_encdec(i64 noundef %i.bb, ptr noundef nonnull %i.g, i32 noundef 1)
  %i.be = tail call fastcc i64 @des_encdec(i64 noundef %i.bd, ptr noundef nonnull %i.h, i32 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.us = phi i64 [ %i.be, %bb.t ], [ %i.bb, %bb.s ]
  %i.bf = tail call fastcc i64 @des_encdec(i64 noundef %.0.us, ptr noundef nonnull %0, i32 noundef 1)
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %i.bf)
  store i64 %i.bg, ptr %.03749.us52, align 1, !tbaa !13
  %i.bh = add nsw i32 %i.az, -1
  %i.bi = icmp sgt i32 %i.az, 0
  br i1 %i.bi, label %bb.s, label %._crit_edge, !llvm.loop !19

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.y
  %i.bj = phi i32 [ %i.bu, %bb.y ], [ %i.d, %.lr.ph.split ] ; 2 uses
  %.03550 = phi i64 [ %i.bm, %bb.y ], [ %i.c, %.lr.ph.split ]
  %.03749 = phi ptr [ %spec.select, %bb.y ], [ %1, %.lr.ph.split ] ; 2 uses
  %.03948 = phi ptr [ %i.bt, %bb.y ], [ %2, %.lr.ph.split ] ; 3 uses
  %.not43 = icmp eq ptr %.03948, null
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split
  %i.bk = load i64, ptr %.03948, align 1, !tbaa !13
  %i.bl = tail call noundef i64 @llvm.bswap.i64(i64 %i.bk)
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split, %bb.v
  %i.bm = phi i64 [ %i.bl, %bb.v ], [ 0, %.lr.ph.split.split ] ; 4 uses
  %i.bn = load i32, ptr %i.f, align 8, !tbaa !12
  %.not46 = icmp eq i32 %i.bn, 0
  br i1 %.not46, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = tail call fastcc i64 @des_encdec(i64 noundef %i.bm, ptr noundef nonnull %i.g, i32 noundef 1)
  %i.bp = tail call fastcc i64 @des_encdec(i64 noundef %i.bo, ptr noundef nonnull %i.h, i32 noundef 0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0 = phi i64 [ %i.bp, %bb.x ], [ %i.bm, %bb.w ]
  %i.bq = tail call fastcc i64 @des_encdec(i64 noundef %.0, ptr noundef nonnull %0, i32 noundef 1)
  %i.br = xor i64 %i.bq, %.03550
  %i.bs = tail call noundef i64 @llvm.bswap.i64(i64 %i.br)
  store i64 %i.bs, ptr %.03749, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.03948, i64 8
  %spec.select = getelementptr inbounds nuw i8, ptr %.03749, i64 %spec.select.idx
  %i.bu = add nsw i32 %i.bj, -1
  %i.bv = icmp sgt i32 %i.bj, 0
  br i1 %i.bv, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.y, %bb.u, %bb.n, %bb.j, %bb.c
  %.035.lcssa = phi i64 [ %i.c, %bb.c ], [ 0, %bb.u ], [ %.034.us, %bb.n ], [ 0, %bb.j ], [ %i.bm, %bb.y ]
  br i1 %.not, label %._crit_edge.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.bw = tail call noundef i64 @llvm.bswap.i64(i64 %.035.lcssa)
  store i64 %i.bw, ptr %4, align 1, !tbaa !13
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %bb.r, %bb.z, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @av_des_mac(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %av_des_crypt_mac.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i, %bb.e
  %.in = phi i32 [ %i.e, %bb.e ], [ %3, %.lr.ph.i ] ; 2 uses
  %.03550.us.i = phi i64 [ %.034.us.i, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %.03948.us.i = phi ptr [ %i.o, %bb.e ], [ %2, %.lr.ph.i ] ; 3 uses
  %i.e = add nsw i32 %.in, -1
  %.not43.us.i = icmp eq ptr %.03948.us.i, null
  br i1 %.not43.us.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.i
  %i.f = load i64, ptr %.03948.us.i, align 1, !tbaa !13
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %.03550.us.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split.i
  %i.i = phi i64 [ %i.h, %bb.b ], [ %.03550.us.i, %.lr.ph.split.us.split.i ]
  %i.j = tail call fastcc i64 @des_encdec(i64 noundef %i.i, ptr noundef readonly %0, i32 noundef 0) ; 2 uses
  %i.k = load i32, ptr %i.b, align 8, !tbaa !12
  %.not45.us.i = icmp eq i32 %i.k, 0
  br i1 %.not45.us.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc i64 @des_encdec(i64 noundef %i.j, ptr noundef nonnull readonly %i.d, i32 noundef 1)
  %i.m = tail call fastcc i64 @des_encdec(i64 noundef %i.l, ptr noundef nonnull readonly %i.c, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034.us.i = phi i64 [ %i.m, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %.034.us.i)
  store i64 %i.n, ptr %1, align 1, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.03948.us.i, i64 8
  %i.p = icmp samesign ugt i32 %.in, 1
  br i1 %i.p, label %.lr.ph.split.us.split.i, label %av_des_crypt_mac.exit, !llvm.loop !1

av_des_crypt_mac.exit:                            ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @des_encdec(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.b ]
  %.0710.i = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.b ]
  %.089.i = phi ptr [ @IP_shuffle, %bb.a ], [ %i.r, %bb.b ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.089.i, i64 1
  %i.b = load i8, ptr %.089.i, align 1, !tbaa !13
  %i.c = zext nneg i8 %i.b to i64
  %i.d = lshr i64 %0, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %.089.i, i64 2
  %i.f = load i8, ptr %i.a, align 1, !tbaa !13
  %i.g = zext nneg i8 %i.f to i64
  %i.h = lshr i64 %0, %i.g
  %i.i = and i64 %i.h, 1
  %i.j = shl i64 %.011.i, 2
  %i.k = shl i64 %i.d, 1
  %i.l = and i64 %i.k, 2
  %reass.add.i.1 = or disjoint i64 %i.j, %i.l
  %i.m = or disjoint i64 %i.i, %reass.add.i.1
  %i.n = getelementptr inbounds nuw i8, ptr %.089.i, i64 3
  %i.o = load i8, ptr %i.e, align 1, !tbaa !13
  %i.p = zext nneg i8 %i.o to i64
  %i.q = lshr i64 %0, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.089.i, i64 4
  %i.s = load i8, ptr %i.n, align 1, !tbaa !13
  %i.t = zext nneg i8 %i.s to i64
  %i.u = lshr i64 %0, %i.t
  %i.v = and i64 %i.u, 1
  %i.w = shl i64 %i.m, 2
  %i.x = shl i64 %i.q, 1
  %i.y = and i64 %i.x, 2
  %reass.add.i.3 = or disjoint i64 %i.w, %i.y
  %i.z = or disjoint i64 %i.v, %reass.add.i.3     ; 2 uses
  %i.aa = add nuw nsw i32 %.0710.i, 4             ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.aa, 64
  br i1 %exitcond.not.i.3, label %shuffle.exit.preheader, label %bb.b, !llvm.loop !0

shuffle.exit.preheader:                           ; preds = %bb.b
  %.not = icmp eq i32 %2, 0
  %i.ab = select i1 %.not, i32 0, i32 15
  br label %shuffle.exit

shuffle.exit:                                     ; preds = %shuffle.exit.preheader, %shuffle.exit
  %.019 = phi i64 [ %i.cm, %shuffle.exit ], [ %i.z, %shuffle.exit.preheader ] ; 3 uses
  %.01518 = phi i32 [ %i.cn, %shuffle.exit ], [ 0, %shuffle.exit.preheader ] ; 2 uses
  %i.ac = trunc i64 %.019 to i32                  ; 4 uses
  %i.ad = xor i32 %.01518, %i.ab
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16 ; 8 uses
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 1)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = xor i64 %i.ag, %i.ai
  %i.ak = and i64 %i.aj, 63
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @S_boxes_P_shuffle, i64 1792), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !23
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 29) ; 7 uses
  %i.ao = lshr i64 %i.ag, 6
  %i.ap = zext i32 %i.an to i64
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = and i64 %i.aq, 63
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @S_boxes_P_shuffle, i64 1536), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = lshr i32 %i.an, 4
  %i.av = lshr i64 %i.ag, 12
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = xor i64 %i.av, %i.aw
  %i.ay = and i64 %i.ax, 63
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @S_boxes_P_shuffle, i64 1280), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !23
  %i.bb = lshr i32 %i.an, 8
  %i.bc = lshr i64 %i.ag, 18
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = xor i64 %i.bc, %i.bd
  %i.bf = and i64 %i.be, 63
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @S_boxes_P_shuffle, i64 1024), i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23
  %i.bi = lshr i32 %i.an, 12
  %i.bj = lshr i64 %i.ag, 24
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = xor i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bl, 63
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @S_boxes_P_shuffle, i64 768), i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !23
  %i.bp = lshr i32 %i.an, 16
  %i.bq = lshr i64 %i.ag, 30
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = xor i64 %i.bq, %i.br
  %i.bt = and i64 %i.bs, 63
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @S_boxes_P_shuffle, i64 512), i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !23
  %i.bw = lshr i32 %i.an, 20
  %i.bx = lshr i64 %i.ag, 36
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, 63
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @S_boxes_P_shuffle, i64 256), i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23
  %i.cd = lshr i32 %i.an, 24
  %i.ce = lshr i64 %i.ag, 42
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = xor i64 %i.ce, %i.cf
  %i.ch = and i64 %i.cg, 63
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @S_boxes_P_shuffle, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !23
  %3 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %4 = insertelement <8 x i32> %3, i32 %i.am, i64 1
  %5 = insertelement <8 x i32> %4, i32 %i.ba, i64 2
  %6 = insertelement <8 x i32> %5, i32 %i.bh, i64 3
  %7 = insertelement <8 x i32> %6, i32 %i.bo, i64 4
  %8 = insertelement <8 x i32> %7, i32 %i.bv, i64 5
  %9 = insertelement <8 x i32> %8, i32 %i.cc, i64 6
  %10 = insertelement <8 x i32> %9, i32 %i.cj, i64 7
  %11 = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %10)
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %.019, i64 %.019, i64 32)
  %i.cl = zext i32 %11 to i64
  %i.cm = xor i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = add nuw nsw i32 %.01518, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cn, 16
  br i1 %exitcond.not, label %bb.c, label %shuffle.exit, !llvm.loop !21

bb.c:                                             ; preds = %shuffle.exit
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.04.i = phi i64 [ 0, %bb.c ], [ %i.dp, %bb.d ]
  %.093.i = phi i32 [ 0, %bb.c ], [ %i.dr, %bb.d ]
  %.0102.i = phi i64 [ %i.co, %bb.c ], [ %i.dq, %bb.d ] ; 5 uses
  %.0111.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @IP_shuffle, i64 63), %bb.c ], [ %i.dl, %bb.d ] ; 5 uses
  %i.cp = and i64 %.0102.i, 1
  %i.cq = getelementptr inbounds i8, ptr %.0111.i, i64 -1
  %i.cr = load i8, ptr %.0111.i, align 1, !tbaa !13
  %i.cs = zext nneg i8 %i.cr to i64
  %i.ct = shl nuw i64 %i.cp, %i.cs
  %i.cu = or i64 %i.ct, %.04.i
  %i.cv = lshr i64 %.0102.i, 1
  %i.cw = and i64 %i.cv, 1
  %i.cx = getelementptr inbounds i8, ptr %.0111.i, i64 -2
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = shl nuw i64 %i.cw, %i.cz
  %i.db = or i64 %i.da, %i.cu
  %i.dc = lshr i64 %.0102.i, 2
  %i.dd = and i64 %i.dc, 1
  %i.de = getelementptr inbounds i8, ptr %.0111.i, i64 -3
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 %i.dd, %i.dg
  %i.di = or i64 %i.dh, %i.db
  %i.dj = lshr i64 %.0102.i, 3
  %i.dk = and i64 %i.dj, 1
  %i.dl = getelementptr inbounds i8, ptr %.0111.i, i64 -4
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = shl nuw i64 %i.dk, %i.dn
  %i.dp = or i64 %i.do, %i.di                     ; 2 uses
  %i.dq = lshr i64 %.0102.i, 4
  %i.dr = add nuw nsw i32 %.093.i, 4              ; 2 uses
  %exitcond.not.i16.3 = icmp eq i32 %i.dr, 64
  br i1 %exitcond.not.i16.3, label %shuffle_inv.exit, label %bb.d, !llvm.loop !22

shuffle_inv.exit:                                 ; preds = %bb.d
  ret i64 %i.dp
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"AVDES", !7, i64 0, !8, i64 384}
!12 = !{!11, !8, i64 384}
!13 = !{!7, !7, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"long", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14, !20}
!19 = distinct !{!19, !14, !20}
!20 = !{!"llvm.loop.peeled.count", i32 1}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = !{!8, !8, i64 0}
end_hunk_0
