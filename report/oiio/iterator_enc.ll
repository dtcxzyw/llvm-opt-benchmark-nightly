inline.NumInlined: 22
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@VP8IteratorExport:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !71
  %i.ac = shl nsw i32 %i.f, 4
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !72
  %i.ag = shl nsw i32 %i.h, 4
  %i.ah = sub nsw i32 %i.af, %i.ag                ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 16) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 16) ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %ExportBlock.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !67 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.h
  %i.ao = add nsw i32 %i.an, %i.f
  %i.ap = shl nsw i32 %i.ao, 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq
  %i.as = sext i32 %spec.store.select to i64
  %i.at = sext i32 %i.am to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi i32 [ %spec.store.select1, %.lr.ph.i ], [ %i.au, %bb.c ] ; 2 uses
  %.069.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.aw, %bb.c ] ; 2 uses
  %.078.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.av, %bb.c ] ; 2 uses
  %i.au = add nsw i32 %.010.i, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i, ptr align 1 %.069.i, i64 %i.as, i1 false)
  %i.av = getelementptr inbounds i8, ptr %.078.i, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.069.i, i64 32
  %i.ax = icmp samesign ugt i32 %.010.i, 1
  br i1 %i.ax, label %bb.c, label %ExportBlock.exit, !llvm.loop !105

ExportBlock.exit:                                 ; preds = %bb.c, %bb.b
  %i.ay = add nsw i32 %spec.store.select1, 1
  %i.az = ashr i32 %i.ay, 1                       ; 6 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i43, label %ExportBlock.exit52

.lr.ph.i43:                                       ; preds = %ExportBlock.exit
  %i.bb = add nsw i32 %spec.store.select, 1
  %i.bc = ashr i32 %i.bb, 1
  %i.bd = load i32, ptr %i.q, align 4, !tbaa !69
  %i.be = sext i32 %i.bc to i64                   ; 6 uses
  %i.bf = sext i32 %i.bd to i64                   ; 5 uses
  %xtraiter = and i32 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i43, %.prol.preheader
  %.010.i44.prol = phi i32 [ %i.bg, %.prol.preheader ], [ %i.az, %.lr.ph.i43 ]
  %.069.i45.prol = phi ptr [ %i.bi, %.prol.preheader ], [ %i.k, %.lr.ph.i43 ] ; 2 uses
  %.078.i46.prol = phi ptr [ %i.bh, %.prol.preheader ], [ %i.w, %.lr.ph.i43 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i43 ]
  %i.bg = add nsw i32 %.010.i44.prol, -1          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i46.prol, ptr nonnull align 1 %.069.i45.prol, i64 %i.be, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.078.i46.prol, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.069.i45.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !106

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i43
  %.010.i44.unr = phi i32 [ %i.az, %.lr.ph.i43 ], [ %i.bg, %.prol.preheader ]
  %.069.i45.unr = phi ptr [ %i.k, %.lr.ph.i43 ], [ %i.bi, %.prol.preheader ]
  %.078.i46.unr = phi ptr [ %i.w, %.lr.ph.i43 ], [ %i.bh, %.prol.preheader ]
  %i.bj = icmp ult i32 %i.az, 4
  br i1 %i.bj, label %.lr.ph.i48, label %.lr.ph.i43.new

.lr.ph.i43.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i43.new
  %.010.i44 = phi i32 [ %i.bq, %.lr.ph.i43.new ], [ %.010.i44.unr, %.prol.loopexit ] ; 2 uses
  %.069.i45 = phi ptr [ %i.bs, %.lr.ph.i43.new ], [ %.069.i45.unr, %.prol.loopexit ] ; 5 uses
  %.078.i46 = phi ptr [ %i.br, %.lr.ph.i43.new ], [ %.078.i46.unr, %.prol.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i46, ptr nonnull align 1 %.069.i45, i64 %i.be, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %.078.i46, i64 %i.bf ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.069.i45, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.bl, i64 %i.be, i1 false)
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bf ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.069.i45, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.be, i1 false)
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bf ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.069.i45, i64 96
  %i.bq = add nsw i32 %.010.i44, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.bp, i64 %i.be, i1 false)
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %.069.i45, i64 128
  %i.bt = icmp sgt i32 %.010.i44, 4
  br i1 %i.bt, label %.lr.ph.i43.new, label %.lr.ph.i48, !llvm.loop !105

.lr.ph.i48:                                       ; preds = %.lr.ph.i43.new, %.prol.loopexit
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !69
  %i.bv = sext i32 %i.bu to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i48
  %.010.i49 = phi i32 [ %i.az, %.lr.ph.i48 ], [ %i.bw, %bb.d ] ; 2 uses
  %.069.i50 = phi ptr [ %i.l, %.lr.ph.i48 ], [ %i.by, %bb.d ] ; 2 uses
  %.078.i51 = phi ptr [ %i.z, %.lr.ph.i48 ], [ %i.bx, %bb.d ] ; 2 uses
  %i.bw = add nsw i32 %.010.i49, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i51, ptr nonnull align 1 %.069.i50, i64 %i.be, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %.078.i51, i64 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.069.i50, i64 32
  %i.bz = icmp samesign ugt i32 %.010.i49, 1
  br i1 %i.bz, label %bb.d, label %ExportBlock.exit52, !llvm.loop !105

ExportBlock.exit52:                               ; preds = %bb.d, %ExportBlock.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorNzToBytes(ptr nofree noundef captures(none) initializes((132, 200)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 9 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = lshr i32 %i.c, 12
  %.lobit = and i32 %i.h, 1
  store i32 %.lobit, ptr %i.f, align 4, !tbaa !3
  %i.i = lshr i32 %i.c, 13
  %.lobit37 = and i32 %i.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.lobit37, ptr %i.j, align 8, !tbaa !3
  %i.k = lshr i32 %i.c, 14
  %.lobit38 = and i32 %i.k, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.lobit38, ptr %i.l, align 4, !tbaa !3
  %i.m = lshr i32 %i.c, 15
  %.lobit39 = and i32 %i.m, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.lobit39, ptr %i.n, align 8, !tbaa !3
  %i.o = lshr i32 %i.c, 18
  %.lobit40 = and i32 %i.o, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.lobit40, ptr %i.p, align 4, !tbaa !3
  %i.q = lshr i32 %i.c, 19
  %.lobit41 = and i32 %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.lobit41, ptr %i.r, align 8, !tbaa !3
  %i.s = lshr i32 %i.c, 22
  %.lobit42 = and i32 %i.s, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.lobit42, ptr %i.t, align 4, !tbaa !3
  %i.u = lshr i32 %i.c, 23
  %.lobit43 = and i32 %i.u, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.lobit43, ptr %i.v, align 8, !tbaa !3
  %i.w = lshr i32 %i.c, 24
  %.lobit44 = and i32 %i.w, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %.lobit44, ptr %i.x, align 4, !tbaa !3
  %i.y = lshr i32 %i.e, 3
  %.lobit45 = and i32 %i.y, 1
  store i32 %.lobit45, ptr %i.g, align 8, !tbaa !3
  %i.z = lshr i32 %i.e, 7
  %.lobit46 = and i32 %i.z, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.lobit46, ptr %i.aa, align 4, !tbaa !3
  %i.ab = lshr i32 %i.e, 11
  %.lobit47 = and i32 %i.ab, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.lobit47, ptr %i.ac, align 8, !tbaa !3
  %i.ad = lshr i32 %i.e, 15
  %.lobit48 = and i32 %i.ad, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.lobit48, ptr %i.ae, align 4, !tbaa !3
  %i.af = lshr i32 %i.e, 17
  %.lobit49 = and i32 %i.af, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.lobit49, ptr %i.ag, align 8, !tbaa !3
  %i.ah = lshr i32 %i.e, 19
  %.lobit50 = and i32 %i.ah, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %.lobit50, ptr %i.ai, align 4, !tbaa !3
  %i.aj = lshr i32 %i.e, 21
  %.lobit51 = and i32 %i.aj, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.lobit51, ptr %i.ak, align 8, !tbaa !3
  %i.al = lshr i32 %i.e, 23
  %.lobit52 = and i32 %i.al, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %.lobit52, ptr %i.am, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorBytesToNz(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %1 = load <8 x i32>, ptr %i.a, align 4, !tbaa !3
  %2 = shl <8 x i32> %1, <i32 12, i32 13, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23> ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %4 = load <4 x i32>, ptr %3, align 4, !tbaa !3
  %5 = shl <4 x i32> %4, <i32 24, i32 3, i32 7, i32 11>
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = shl i32 %i.c, 17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = shl i32 %i.f, 21
  %6 = shufflevector <8 x i32> %2, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i32> %6, %5
  %7 = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <8 x i32> %7, <8 x i32> %2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.h = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %8)
  %op.rdx = or i32 %i.h, %i.d
  %op.rdx25 = or i32 %op.rdx, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  store i32 %op.rdx25, ptr %i.j, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorSaveBoundary(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 34 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = add nsw i32 %i.i, -1
  %i.k = icmp slt i32 %i.c, %i.j
  br i1 %i.k, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !45
  store i8 %i.n, ptr %i.o, align 1, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 47
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.q, ptr %i.s, align 1, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 79
  %i.u = load i8, ptr %i.t, align 1, !tbaa !43
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.u, ptr %i.w, align 1, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 111
  %i.y = load i8, ptr %i.x, align 1, !tbaa !43
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 143
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !43
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 175
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 207
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 239
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !43
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 271
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %i.as, ptr %i.au, align 1, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 303
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !43
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 335
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !43
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 367
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !43
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 399
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 431
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !43
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 13
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 463
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !43
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 14
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 495
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !43
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 15
  store i8 %i.bu, ptr %i.bw, align 1, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !44
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 31
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !43
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !42
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 55
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !43
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 63
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !43
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 87
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !43
  %i.cp = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 95
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !43
  %i.ct = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 119
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !43
  %i.cx = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 3
  store i8 %i.cw, ptr %i.cy, align 1, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 127
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !43
  %i.db = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 151
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !43
  %i.df = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !43
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 159
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !43
  %i.dj = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !43
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 183
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !43
  %i.dn = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  store i8 %i.dm, ptr %i.do, align 1, !tbaa !43
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 191
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !43
  %i.dr = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 5
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 215
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !43
  %i.dv = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 6
  store i8 %i.du, ptr %i.dw, align 1, !tbaa !43
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 223
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !43
  %i.dz = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 6
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !43
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 247
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !43
  %i.ed = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 7
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !43
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 255
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !43
  %i.eh = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 7
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !43
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !87
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 15
  %i.em = load i8, ptr %i.el, align 1, !tbaa !43
  %i.en = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -1
  store i8 %i.em, ptr %i.eo, align 1, !tbaa !43
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !88
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 7
  %i.es = load i8, ptr %i.er, align 1, !tbaa !43
  %i.et = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -1
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !43
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !88
end_hunk_0
begin_hunk_1_@VP8IteratorStartI4:.preheader31
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !43  ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.da, ptr %i.db, align 8, !tbaa !43
  %i.dc = load i32, ptr %0, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !39
  %i.df = add nsw i32 %i.de, -1
  %i.dg = icmp slt i32 %i.dc, %i.df
  br i1 %i.dg, label %.preheader, label %.preheader29

.preheader29:                                     ; preds = %.preheader31
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.da, ptr %i.dh, align 1, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.da, ptr %i.di, align 2, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.da, ptr %i.dj, align 1, !tbaa !43
  br label %.loopexit

.preheader:                                       ; preds = %.preheader31
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !43
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 17
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !43
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.do, ptr %i.dp, align 2, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !43
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bg, i64 19
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29, %.preheader
  %.sink = phi i8 [ %i.da, %.preheader29 ], [ %i.du, %.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 %.sink, ptr %i.dv, align 4, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !37 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3  ; 9 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ed = lshr i32 %i.dy, 12
  %.lobit.i = and i32 %i.ed, 1
  store i32 %.lobit.i, ptr %i.eb, align 4, !tbaa !3
  %i.ee = lshr i32 %i.dy, 13
  %.lobit37.i = and i32 %i.ee, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.lobit37.i, ptr %i.ef, align 8, !tbaa !3
  %i.eg = lshr i32 %i.dy, 14
  %.lobit38.i = and i32 %i.eg, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.lobit38.i, ptr %i.eh, align 4, !tbaa !3
  %i.ei = lshr i32 %i.dy, 15
  %.lobit39.i = and i32 %i.ei, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.lobit39.i, ptr %i.ej, align 8, !tbaa !3
  %i.ek = lshr i32 %i.dy, 18
  %.lobit40.i = and i32 %i.ek, 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.lobit40.i, ptr %i.el, align 4, !tbaa !3
  %i.em = lshr i32 %i.dy, 19
  %.lobit41.i = and i32 %i.em, 1
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.lobit41.i, ptr %i.en, align 8, !tbaa !3
  %i.eo = lshr i32 %i.dy, 22
  %.lobit42.i = and i32 %i.eo, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.lobit42.i, ptr %i.ep, align 4, !tbaa !3
  %i.eq = lshr i32 %i.dy, 23
  %.lobit43.i = and i32 %i.eq, 1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.lobit43.i, ptr %i.er, align 8, !tbaa !3
  %i.es = lshr i32 %i.dy, 24
  %.lobit44.i = and i32 %i.es, 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %.lobit44.i, ptr %i.et, align 4, !tbaa !3
  %i.eu = lshr i32 %i.ea, 3
  %.lobit45.i = and i32 %i.eu, 1
  store i32 %.lobit45.i, ptr %i.ec, align 8, !tbaa !3
  %i.ev = lshr i32 %i.ea, 7
  %.lobit46.i = and i32 %i.ev, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.lobit46.i, ptr %i.ew, align 4, !tbaa !3
  %i.ex = lshr i32 %i.ea, 11
  %.lobit47.i = and i32 %i.ex, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.lobit47.i, ptr %i.ey, align 8, !tbaa !3
  %i.ez = lshr i32 %i.ea, 15
  %.lobit48.i = and i32 %i.ez, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.lobit48.i, ptr %i.fa, align 4, !tbaa !3
  %i.fb = lshr i32 %i.ea, 17
  %.lobit49.i = and i32 %i.fb, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.lobit49.i, ptr %i.fc, align 8, !tbaa !3
  %i.fd = lshr i32 %i.ea, 19
  %.lobit50.i = and i32 %i.fd, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %.lobit50.i, ptr %i.fe, align 4, !tbaa !3
  %i.ff = lshr i32 %i.ea, 21
  %.lobit51.i = and i32 %i.ff, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.lobit51.i, ptr %i.fg, align 8, !tbaa !3
  %i.fh = lshr i32 %i.ea, 23
  %.lobit52.i = and i32 %i.fh, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %.lobit52.i, ptr %i.fi, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @VP8IteratorRotateI4(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @VP8Scan, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !109
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = load i8, ptr %i.j, align 1, !tbaa !43
  %i.l = getelementptr i8, ptr %i.i, i64 -4
  store i8 %i.k, ptr %i.l, align 1, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 97
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43
  %i.o = getelementptr i8, ptr %i.i, i64 -3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 98
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = getelementptr i8, ptr %i.i, i64 -2
  store i8 %i.q, ptr %i.r, align 1, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 99
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  %i.u = getelementptr i8, ptr %i.i, i64 -1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !43
  %i.v = load i32, ptr %i.a, align 8, !tbaa !107
  %i.w = and i32 %i.v, 3
  %.not = icmp eq i32 %i.w, 3
  br i1 %.not, label %.preheader.preheader, label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.y = getelementptr i8, ptr %i.i, i64 2
  %i.z = getelementptr i8, ptr %i.i, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !43
  store i8 %i.ab, ptr %i.i, align 1, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !43
  store i8 %i.ad, ptr %i.z, align 1, !tbaa !43
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !43
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !43
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %i.af = load i32, ptr %scevgep, align 1, !tbaa !43
  store i32 %i.af, ptr %i.i, align 1, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29.preheader, %.preheader.preheader
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !107
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !107
  %i.ai = icmp eq i32 %i.ah, 16
  br i1 %i.ai, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds i8, ptr @VP8TopLeftI4, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.027 = phi i32 [ 1, %bb.b ], [ 0, %.loopexit ]
  ret i32 %.027
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 40}
!8 = !{!"", !4, i64 0, !4, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !11, i64 40, !10, i64 48, !12, i64 56, !9, i64 64, !13, i64 72, !5, i64 80, !9, i64 120, !4, i64 128, !5, i64 132, !5, i64 168, !5, i64 208, !14, i64 304, !14, i64 312, !15, i64 320, !4, i64 328, !4, i64 332, !4, i64 336, !4, i64 340, !5, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !5, i64 400, !5, i64 488}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS10VP8Encoder", !10, i64 0}
!12 = !{!"p1 _ZTS12VP8BitWriter", !10, i64 0}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!8, !4, i64 0}
!17 = !{!8, !4, i64 4}
!18 = !{!19, !4, i64 60}
!19 = !{!"VP8Encoder", !20, i64 0, !21, i64 8, !22, i64 16, !23, i64 32, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !24, i64 64, !5, i64 112, !25, i64 496, !4, i64 536, !4, i64 540, !9, i64 544, !4, i64 552, !30, i64 560, !5, i64 608, !4, i64 3584, !4, i64 3588, !4, i64 3592, !4, i64 3596, !4, i64 3600, !4, i64 3604, !4, i64 3608, !4, i64 3612, !31, i64 3616, !5, i64 23512, !14, i64 23544, !4, i64 23552, !5, i64 23556, !5, i64 23604, !4, i64 23616, !4, i64 23620, !4, i64 23624, !4, i64 23628, !4, i64 23632, !4, i64 23636, !4, i64 23640, !10, i64 23648, !9, i64 23656, !13, i64 23664, !9, i64 23672, !9, i64 23680, !15, i64 23688, !9, i64 23696}
!20 = !{!"p1 _ZTS10WebPConfig", !10, i64 0}
!21 = !{!"p1 _ZTS11WebPPicture", !10, i64 0}
!22 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!23 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!24 = !{!"VP8BitWriter", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !9, i64 16, !14, i64 24, !14, i64 32, !4, i64 40}
!25 = !{!"", !26, i64 0, !27, i64 8, !29, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!26 = !{!"p1 _ZTS9VP8Tokens", !10, i64 0}
!27 = !{!"p2 _ZTS9VP8Tokens", !28, i64 0}
!28 = !{!"any p2 pointer", !10, i64 0}
!29 = !{!"p1 short", !10, i64 0}
!30 = !{!"", !10, i64 0, !4, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40}
!31 = !{!"", !5, i64 0, !5, i64 3, !5, i64 4, !5, i64 1060, !5, i64 5284, !5, i64 18344, !4, i64 19880, !4, i64 19884, !4, i64 19888}
!32 = !{!8, !12, i64 56}
!33 = !{!19, !9, i64 23656}
!34 = !{!19, !4, i64 56}
!35 = !{!8, !9, i64 64}
!36 = !{!19, !13, i64 23664}
!37 = !{!8, !13, i64 72}
!38 = !{!19, !10, i64 23648}
!39 = !{!19, !4, i64 48}
!40 = !{!8, !10, i64 48}
!41 = !{!9, !9, i64 0}
!42 = !{!8, !9, i64 376}
!43 = !{!5, !5, i64 0}
!44 = !{!8, !9, i64 368}
!45 = !{!8, !9, i64 360}
!46 = !{!8, !9, i64 352}
!47 = !{!8, !4, i64 336}
!48 = !{!8, !4, i64 332}
!49 = !{!8, !9, i64 8}
!50 = !{!8, !9, i64 16}
!51 = !{!8, !9, i64 24}
!52 = !{!8, !9, i64 32}
!53 = !{!19, !15, i64 23688}
!54 = !{!8, !15, i64 320}
!55 = !{!19, !4, i64 536}
!56 = !{!8, !4, i64 340}
!57 = !{!19, !9, i64 23696}
!58 = !{!10, !10, i64 0}
!59 = !{!19, !4, i64 52}
!60 = !{!19, !9, i64 23672}
!61 = !{!8, !4, i64 328}
!62 = !{!19, !21, i64 8}
!63 = !{!64, !10, i64 144}
!64 = !{!"WebPPicture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !4, i64 40, !4, i64 44, !9, i64 48, !4, i64 56, !5, i64 60, !13, i64 72, !4, i64 80, !5, i64 84, !10, i64 96, !10, i64 104, !4, i64 112, !9, i64 120, !65, i64 128, !4, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !9, i64 176, !9, i64 184, !5, i64 192, !10, i64 224, !10, i64 232, !5, i64 240}
!65 = !{!"p1 _ZTS12WebPAuxStats", !10, i64 0}
!66 = !{!64, !9, i64 16}
!67 = !{!64, !4, i64 40}
!68 = !{!64, !9, i64 24}
!69 = !{!64, !4, i64 44}
!70 = !{!64, !9, i64 32}
!71 = !{!64, !4, i64 8}
!72 = !{!64, !4, i64 12}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !74}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !76}
!81 = distinct !{!81, !76}
!82 = distinct !{!82, !76}
!83 = distinct !{!83, !76}
!84 = distinct !{!84, !74}
!85 = distinct !{!85, !76}
!86 = distinct !{!86, !76}
!87 = !{!8, !9, i64 384}
!88 = !{!8, !9, i64 392}
!89 = !{!"branch_weights", i32 4, i32 12}
!90 = distinct !{!90, !74, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = distinct !{!93, !76}
!94 = distinct !{!94, !74, !91}
!95 = distinct !{!95, !74, !91, !92}
!96 = !{!"branch_weights", i32 4, i32 28}
!97 = distinct !{!97, !74, !91, !92}
!98 = distinct !{!98, !76}
!99 = distinct !{!99, !74, !91}
!100 = distinct !{!100, !76}
!101 = !{!19, !20, i64 0}
!102 = !{!103, !4, i64 64}
!103 = !{!"WebPConfig", !4, i64 0, !104, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !104, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112}
!104 = !{!"float", !5, i64 0}
!105 = distinct !{!105, !74}
!106 = distinct !{!106, !76}
!107 = !{!8, !4, i64 128}
!108 = !{!8, !9, i64 120}
!109 = !{!110, !110, i64 0}
!110 = !{!"short", !5, i64 0}
end_hunk_1
