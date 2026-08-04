inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Ppmd7_Construct:bb.a
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 256
  br i1 %exitcond52.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = add i32 %.241, -1                       ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0                    ; 2 uses
  %i.be = zext i1 %i.bd to i32
  %.1 = add i32 %.03042, %i.be                    ; 3 uses
  %i.bf = add i32 %.03042, -1
  %.3 = select i1 %i.bd, i32 %i.bf, i32 %i.bc
  %i.bg = trunc i32 %.1 to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next50
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  %i.bi = add i32 %.3, -1                         ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0                    ; 2 uses
  %i.bk = add i32 %.1, -1
  %.3.1 = select i1 %i.bj, i32 %i.bk, i32 %i.bi
  %i.bl = zext i1 %i.bj to i32
  %.1.1 = add i32 %.1, %i.bl
  %indvars.iv.next50.1 = add nuw nsw i64 %indvars.iv49, 2
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 940
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bm, i8 0, i64 64, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1004
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bn, i8 8, i64 192, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define void @Ppmd7_Free(ptr nofree noundef captures(none) initializes((52, 56)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.e, align 4, !tbaa !26
  store ptr null, ptr %i.c, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ppmd7_Alloc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %.not = icmp eq i32 %i.e, %1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call void %i.g(ptr noundef %2, ptr noundef %i.b) #8, !inline_history !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !26
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.i = and i32 %1, 3
  %i.j = sub nuw nsw i32 4, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = load ptr, ptr %2, align 8, !tbaa !29
  %i.m = and i32 %1, -4
  %i.n = add i32 %i.m, 16
  %i.o = zext i32 %i.n to i64
  %i.p = tail call ptr %i.l(ptr noundef nonnull %2, i64 noundef %i.o) #8 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.h, align 4, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ppmd7_Init(ptr nofree noundef captures(none) initializes((0, 28), (32, 40), (44, 52), (56, 60), (72, 104), (276, 428)) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.a, align 4, !tbaa !30
  tail call fastcc void @RestartModel(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1198
  store i8 7, ptr %i.c, align 2, !tbaa !31
  store i16 0, ptr %i.b, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1199
  store i8 64, ptr %i.d, align 1, !tbaa !33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @RestartModel(ptr nofree noundef captures(none) initializes((0, 28), (32, 36), (44, 52), (56, 60), (72, 104), (276, 428)) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(152) %i.a, i8 0, i64 152, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26   ; 3 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = udiv i32 %i.j, 96
  %i.o = mul nuw i32 %i.n, 84                     ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.r, ptr %i.s, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.u, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.w, ptr %i.x, align 8, !tbaa !37
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.w, i32 12)
  %spec.select = xor i32 %i.y, -1                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %spec.select, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.select, ptr %i.aa, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr inbounds i8, ptr %i.l, i64 -12 ; 4 uses
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !42
  store ptr %i.ac, ptr %0, align 8, !tbaa !43
  %i.ae = getelementptr inbounds i8, ptr %i.l, i64 -4
  store i32 0, ptr %i.ae, align 4, !tbaa !44
  store i16 256, ptr %i.ac, align 4, !tbaa !46
  %i.af = getelementptr inbounds i8, ptr %i.l, i64 -10
  store i16 257, ptr %i.af, align 2, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 1536
  store ptr %i.ah, ptr %i.t, align 8, !tbaa !49
  %i.ai = add i32 %i.j, %i.e
  %i.aj = sub i32 %i.ai, %i.o
  %i.ak = getelementptr inbounds i8, ptr %i.l, i64 -8
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !50
  br label %bb.b

.preheader69:                                     ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2800
  br label %.preheader68

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %indvars.iv ; 3 uses
  %i.ao = trunc i64 %indvars.iv to i8
  store i8 %i.ao, ptr %i.an, align 2, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 1, ptr %i.ap, align 1, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i32 0, ptr %i.aq, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw [6 x i8], ptr %i.ar, i64 %indvars.iv.next ; 3 uses
  %i.at = trunc i64 %indvars.iv.next to i8
  store i8 %i.at, ptr %i.as, align 2, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 1, ptr %i.au, align 1, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i32 0, ptr %i.av, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.preheader69, label %bb.b

.preheader68:                                     ; preds = %.preheader69, %.preheader68
  %indvars.iv84 = phi i64 [ 0, %.preheader69 ], [ %indvars.iv.next85, %.preheader68 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %indvars.iv84 ; 4 uses
  %i.ax = trunc i64 %indvars.iv84 to i32
  %i.ay = add i32 %i.ax, 2                        ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.bc = udiv i32 24657, %i.ay
  %i.bd = udiv i32 26162, %i.ay
  %i.be = udiv i32 23228, %i.ay
  %i.bf = udiv i32 25761, %i.ay
  %i.bg = udiv i32 18675, %i.ay
  %1 = udiv i32 22975, %i.ay
  %2 = udiv i32 7999, %i.ay
  %i.bh = udiv i32 15581, %i.ay
  %i.bi = trunc nuw nsw i32 %i.bc to i16
  %3 = trunc nuw nsw i32 %i.bd to i16
  %4 = trunc nuw nsw i32 %i.be to i16
  %5 = trunc nuw nsw i32 %i.bf to i16
  %6 = trunc nuw nsw i32 %i.bg to i16
  %7 = trunc nuw nsw i32 %1 to i16
  %i.bj = trunc nuw nsw i32 %2 to i16
  %8 = trunc nuw nsw i32 %i.bh to i16
  %9 = insertelement <8 x i16> poison, i16 %8, i64 0
  %10 = insertelement <8 x i16> %9, i16 %i.bj, i64 1
  %11 = insertelement <8 x i16> %10, i16 %7, i64 2
  %12 = insertelement <8 x i16> %11, i16 %6, i64 3
  %13 = insertelement <8 x i16> %12, i16 %5, i64 4
  %14 = insertelement <8 x i16> %13, i16 %4, i64 5
  %15 = insertelement <8 x i16> %14, i16 %3, i64 6
  %16 = insertelement <8 x i16> %15, i16 %i.bi, i64 7
  %17 = shufflevector <8 x i16> %16, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = sub nuw nsw <16 x i16> splat (i16 16384), %17 ; 4 uses
  store <16 x i16> %18, ptr %i.aw, align 2, !tbaa !54
  store <16 x i16> %18, ptr %i.az, align 2, !tbaa !54
  store <16 x i16> %18, ptr %i.ba, align 2, !tbaa !54
  store <16 x i16> %18, ptr %i.bb, align 2, !tbaa !54
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 128
  br i1 %exitcond87.not, label %.preheader67, label %.preheader68

.preheader67:                                     ; preds = %.preheader68
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1200
  br label %.preheader

.preheader:                                       ; preds = %.preheader67, %.preheader
  %indvars.iv92 = phi i64 [ 0, %.preheader67 ], [ %indvars.iv.next93, %.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.bk, i64 %indvars.iv92 ; 48 uses
  %i.bm = trunc i64 %indvars.iv92 to i16
  %i.bn = mul nuw nsw i16 %i.bm, 40
  %i.bo = add nuw nsw i16 %i.bn, 80               ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 3, ptr %i.bp, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.bl, align 2, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store i8 4, ptr %i.bq, align 1, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  store i8 3, ptr %i.bs, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.br, align 2, !tbaa !56
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  store i8 4, ptr %i.bt, align 1, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  store i8 3, ptr %i.bv, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.bu, align 2, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 11
  store i8 4, ptr %i.bw, align 1, !tbaa !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  store i8 3, ptr %i.by, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.bx, align 2, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 15
  store i8 4, ptr %i.bz, align 1, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 18
  store i8 3, ptr %i.cb, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.ca, align 2, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 19
  store i8 4, ptr %i.cc, align 1, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 22
  store i8 3, ptr %i.ce, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.cd, align 2, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 23
  store i8 4, ptr %i.cf, align 1, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 26
  store i8 3, ptr %i.ch, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.cg, align 2, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 27
  store i8 4, ptr %i.ci, align 1, !tbaa !57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 30
  store i8 3, ptr %i.ck, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.cj, align 2, !tbaa !56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 31
  store i8 4, ptr %i.cl, align 1, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 34
  store i8 3, ptr %i.cn, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.cm, align 2, !tbaa !56
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 35
  store i8 4, ptr %i.co, align 1, !tbaa !57
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 38
  store i8 3, ptr %i.cq, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.cp, align 2, !tbaa !56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 39
  store i8 4, ptr %i.cr, align 1, !tbaa !57
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 42
  store i8 3, ptr %i.ct, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.cs, align 2, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 43
  store i8 4, ptr %i.cu, align 1, !tbaa !57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 46
  store i8 3, ptr %i.cw, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.cv, align 2, !tbaa !56
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 47
  store i8 4, ptr %i.cx, align 1, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bl, i64 50
  store i8 3, ptr %i.cz, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.cy, align 2, !tbaa !56
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 51
  store i8 4, ptr %i.da, align 1, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 54
  store i8 3, ptr %i.dc, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.db, align 2, !tbaa !56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 55
  store i8 4, ptr %i.dd, align 1, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.bl, i64 58
  store i8 3, ptr %i.df, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.de, align 2, !tbaa !56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 59
  store i8 4, ptr %i.dg, align 1, !tbaa !57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bl, i64 60
  %i.di = getelementptr inbounds nuw i8, ptr %i.bl, i64 62
  store i8 3, ptr %i.di, align 2, !tbaa !55
  store i16 %i.bo, ptr %i.dh, align 2, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bl, i64 63
  store i8 4, ptr %i.dj, align 1, !tbaa !57
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 25
  br i1 %exitcond95.not, label %bb.c, label %.preheader

bb.c:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @Ppmd7_MakeEscFreq(ptr nofree noundef captures(ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not = icmp eq i16 %i.b, 256
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = sub i32 %i.c, %1                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.g = add i32 %i.d, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = load i16, ptr %i.r, align 4, !tbaa !46
  %i.t = zext i16 %i.s to i32
  %i.u = sub nsw i32 %i.t, %i.c
  %i.v = icmp ult i32 %i.d, %i.u
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !47
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.c, 11
  %i.ac = icmp samesign ugt i32 %i.ab, %i.aa
  %i.ad = select i1 %i.ac, i64 2, i64 0
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = icmp ugt i32 %1, %i.d
  %i.ag = select i1 %i.af, i64 4, i64 0
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !58
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ak ; 4 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !56 ; 2 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !55
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = lshr i32 %i.an, %i.aq                   ; 2 uses
  %i.as = trunc nuw i32 %i.ar to i16
  %i.at = sub i16 %i.am, %i.as
  store i16 %i.at, ptr %i.al, align 2, !tbaa !56
  %i.au = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1196
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 1, %bb.c ], [ %i.au, %bb.b ]
  %.0 = phi ptr [ %i.av, %bb.c ], [ %i.al, %bb.b ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !59
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ppmd7_Update1(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.CPpmd_State, align 2        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !53
  %i.e = add i8 %i.d, 4                           ; 2 uses
  store i8 %i.e, ptr %i.c, align 1, !tbaa !53
  %i.f = load ptr, ptr %0, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !47
  %i.i = add i16 %i.h, 4
  store i16 %i.i, ptr %i.g, align 2, !tbaa !47
end_hunk_0
