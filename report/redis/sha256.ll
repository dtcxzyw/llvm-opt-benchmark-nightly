Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sha256?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sha256_transform:.lr.ph.preheader
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !12 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !12 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %bb.a
  %indvars.iv116 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next117, %bb.a ] ; 3 uses
  %.088106 = phi i32 [ %i.bs, %._crit_edge ], [ %.089105, %bb.a ]
  %.089105 = phi i32 [ %i.bq, %._crit_edge ], [ %.090104, %bb.a ] ; 3 uses
  %.090104 = phi i32 [ %i.bo, %._crit_edge ], [ %.091103, %bb.a ] ; 3 uses
  %.091103 = phi i32 [ %i.bm, %._crit_edge ], [ %i.cu, %bb.a ] ; 10 uses
  %.092102 = phi i32 [ %i.bk, %._crit_edge ], [ %.093101, %bb.a ]
  %.093101 = phi i32 [ %i.bi, %._crit_edge ], [ %.094100, %bb.a ] ; 4 uses
  %.094100 = phi i32 [ %i.bg, %._crit_edge ], [ %.09599, %bb.a ] ; 4 uses
  %.09599 = phi i32 [ %i.be, %._crit_edge ], [ %i.cv, %bb.a ] ; 9 uses
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %.091103, i32 %.091103, i32 26)
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %.091103, i32 %.091103, i32 21)
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %.091103, i32 %.091103, i32 7)
  %i.bx = xor i32 %i.bv, %i.bw
  %i.by = add i32 %.088106, %i.bx
  %i.bz = and i32 %.090104, %.091103
  %i.ca = xor i32 %.091103, -1
  %i.cb = and i32 %.089105, %i.ca
  %i.cc = or i32 %i.cb, %i.bz
  %i.cd = add i32 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @k, i64 %indvars.iv116
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !12
  %i.cg = add i32 %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv116
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12
  %i.cj = add i32 %i.cg, %i.ci                    ; 2 uses
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %.09599, i32 %.09599, i32 30)
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %.09599, i32 %.09599, i32 19)
  %i.cm = xor i32 %i.ck, %i.cl
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %.09599, i32 %.09599, i32 10)
  %i.co = xor i32 %i.cm, %i.cn
  %i.cp = xor i32 %.093101, %.094100
  %i.cq = and i32 %i.cp, %.09599
  %i.cr = and i32 %.093101, %.094100
  %i.cs = xor i32 %i.cq, %i.cr
  %i.ct = add i32 %i.cs, %i.co
  %i.cu = add i32 %i.cj, %.092102                 ; 2 uses
  %i.cv = add i32 %i.ct, %i.cj                    ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, 64
  br i1 %exitcond119.not, label %bb.b, label %bb.a, !llvm.loop !20

bb.b:                                             ; preds = %bb.a
  %i.cw = add i32 %i.cv, %i.be
  store i32 %i.cw, ptr %i.bd, align 8, !tbaa !12
  %i.cx = add i32 %.09599, %i.bg
  store i32 %i.cx, ptr %i.bf, align 4, !tbaa !12
  %i.cy = add i32 %.094100, %i.bi
  store i32 %i.cy, ptr %i.bh, align 8, !tbaa !12
  %i.cz = add i32 %.093101, %i.bk
  store i32 %i.cz, ptr %i.bj, align 4, !tbaa !12
  %i.da = add i32 %i.cu, %i.bm
  store i32 %i.da, ptr %i.bl, align 8, !tbaa !12
  %i.db = add i32 %.091103, %i.bo
  store i32 %i.db, ptr %i.bn, align 4, !tbaa !12
  %i.dc = add i32 %.090104, %i.bq
  store i32 %i.dc, ptr %i.bp, align 8, !tbaa !12
  %i.dd = add i32 %.089105, %i.bs
  store i32 %i.dd, ptr %i.br, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha256_init(ptr nofree noundef writeonly captures(none) initializes((64, 68), (72, 112)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.d, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.c = phi i32 [ %.pre, %.lr.ph ], [ %i.n, %bb.d ]
  %i.d = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.d ]
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !13
  %i.i = load i32, ptr %i.a, align 8, !tbaa !17
  %i.j = add i32 %i.i, 1                          ; 3 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !17
  %i.k = icmp eq i32 %i.j, 64
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !18
  %i.m = add i64 %i.l, 512
  store i64 %i.m, ptr %i.b, align 8, !tbaa !18
  store i32 0, ptr %i.a, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.j, %bb.b ], [ 0, %bb.c ]
  %i.o = add i32 %.013, 1                         ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_final(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = icmp ult i32 %i.b, 56
  %i.d = zext i32 %i.b to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 -128, ptr %i.e, align 1, !tbaa !13
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 55
  br i1 %.not, label %.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  %scevgep77 = getelementptr i8, ptr %i.f, i64 1
  %narrow = sub nuw nsw i32 55, %i.b
  %i.g = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 %i.g, i1 false), !tbaa !13
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.170 = add i32 %i.b, 1                         ; 2 uses
  %i.h = icmp ult i32 %.170, 64
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = zext nneg i32 %.170 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.i
  %i.j = sub nsw i32 62, %i.b
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph74.preheader, %bb.b, %._crit_edge
  %i.m = load i32, ptr %i.a, align 8, !tbaa !17
  %i.n = shl i32 %i.m, 3
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %i.r = add i64 %i.q, %i.o                       ; 9 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !18
  %2 = trunc i64 %i.r to i8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %2, ptr %3, align 1, !tbaa !13
  %4 = lshr i64 %i.r, 8
  %5 = trunc i64 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i8 %5, ptr %6, align 2, !tbaa !13
  %7 = lshr i64 %i.r, 16
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %8, ptr %9, align 1, !tbaa !13
  %10 = lshr i64 %i.r, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %11, ptr %12, align 4, !tbaa !13
  %13 = lshr i64 %i.r, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %14, ptr %15, align 1, !tbaa !13
  %16 = lshr i64 %i.r, 40
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %17, ptr %18, align 2, !tbaa !13
  %19 = lshr i64 %i.r, 48
  %20 = trunc i64 %19 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %20, ptr %i.s, align 1, !tbaa !13
  %21 = lshr i64 %i.r, 56
  %22 = trunc nuw i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %22, ptr %23, align 8, !tbaa !13
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !12
  %i.ac = lshr i32 %i.ab, 24
  %i.ad = trunc nuw i32 %i.ac to i8
  store i8 %i.ad, ptr %1, align 1, !tbaa !13
  %i.ae = load i32, ptr %i.u, align 4, !tbaa !12
  %i.af = lshr i32 %i.ae, 24
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !13
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !12
  %i.aj = lshr i32 %i.ai, 24
  %i.ak = trunc nuw i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !13
  %i.am = load i32, ptr %i.w, align 4, !tbaa !12
  %i.an = lshr i32 %i.am, 24
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !13
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !12
  %i.ar = lshr i32 %i.aq, 24
  %i.as = trunc nuw i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.as, ptr %i.at, align 1, !tbaa !13
  %i.au = load i32, ptr %i.y, align 4, !tbaa !12
  %i.av = lshr i32 %i.au, 24
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !13
  %i.ay = load i32, ptr %i.z, align 8, !tbaa !12
  %i.az = lshr i32 %i.ay, 24
  %i.ba = trunc nuw i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !13
  %i.bc = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.bd = lshr i32 %i.bc, 24
  %i.be = trunc nuw i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !13
  %i.bg = load i32, ptr %i.t, align 8, !tbaa !12
  %i.bh = lshr i32 %i.bg, 16
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !13
  %i.bk = load i32, ptr %i.u, align 4, !tbaa !12
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !13
  %i.bo = load i32, ptr %i.v, align 8, !tbaa !12
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !13
  %i.bs = load i32, ptr %i.w, align 4, !tbaa !12
  %i.bt = lshr i32 %i.bs, 16
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !13
  %i.bw = load i32, ptr %i.x, align 8, !tbaa !12
  %i.bx = lshr i32 %i.bw, 16
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !13
  %i.ca = load i32, ptr %i.y, align 4, !tbaa !12
  %i.cb = lshr i32 %i.ca, 16
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !13
  %i.ce = load i32, ptr %i.z, align 8, !tbaa !12
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !13
  %i.ci = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !13
  %i.cm = load i32, ptr %i.t, align 8, !tbaa !12
  %i.cn = lshr i32 %i.cm, 8
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !13
  %i.cq = load i32, ptr %i.u, align 4, !tbaa !12
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !13
  %i.cu = load i32, ptr %i.v, align 8, !tbaa !12
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !13
  %i.cy = load i32, ptr %i.w, align 4, !tbaa !12
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.da, ptr %i.db, align 1, !tbaa !13
  %i.dc = load i32, ptr %i.x, align 8, !tbaa !12
  %i.dd = lshr i32 %i.dc, 8
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.de, ptr %i.df, align 1, !tbaa !13
  %i.dg = load i32, ptr %i.y, align 4, !tbaa !12
  %i.dh = lshr i32 %i.dg, 8
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !13
  %i.dk = load i32, ptr %i.z, align 8, !tbaa !12
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !13
  %i.do = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.dp = lshr i32 %i.do, 8
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !13
  %i.ds = load i32, ptr %i.t, align 8, !tbaa !12
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !13
  %i.dv = load i32, ptr %i.u, align 4, !tbaa !12
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !13
  %i.dy = load i32, ptr %i.v, align 8, !tbaa !12
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !13
  %i.eb = load i32, ptr %i.w, align 4, !tbaa !12
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !13
  %i.ee = load i32, ptr %i.x, align 8, !tbaa !12
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !13
  %i.eh = load i32, ptr %i.y, align 4, !tbaa !12
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !13
  %i.ek = load i32, ptr %i.z, align 8, !tbaa !12
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.el, ptr %i.em, align 1, !tbaa !13
  %i.en = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"long long", !10, i64 0}
!16 = !{!"", !10, i64 0, !11, i64 64, !15, i64 72, !10, i64 80}
!17 = !{!16, !11, i64 64}
!18 = !{!16, !15, i64 72}
!19 = distinct !{!19, !14}
end_hunk_0
