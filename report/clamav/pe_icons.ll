Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@makebmp:bb.a
bb.o:                                             ; preds = %.preheader, %bb.p
  %.0.in = phi i32 [ %.0, %bb.p ], [ %3, %.preheader ]
  %.0 = add i32 %.0.in, -1                        ; 3 uses
  %i.y = icmp ult i32 %.0, %3
  br i1 %i.y, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.z = mul i32 %.0, %2
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aa
  %i.ac = tail call i64 @fwrite(ptr noundef nonnull %i.ab, i64 noundef %i.v, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not42 = icmp eq i64 %i.ac, 0
  br i1 %.not42, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.ae = tail call i32 @cli_unlink(ptr noundef nonnull %i.g) #13 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.af = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34, ptr noundef %0, ptr noundef nonnull %i.g) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @free(ptr noundef nonnull %i.g) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.a, %bb.s, %bb.n, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @getmetrics(i32 noundef range(i32 16, 257) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 9 uses
  %i.b = alloca [6 x i32], align 16               ; 15 uses
  %i.c = alloca [6 x i32], align 16               ; 15 uses
  %i.d = alloca [6 x i32], align 16               ; 9 uses
  %i.e = alloca [6 x i32], align 16               ; 11 uses
  %i.f = alloca [6 x i32], align 16               ; 11 uses
  %i.g = alloca [125 x i8], align 16              ; 62 uses
  %i.h = lshr i32 %0, 2                           ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.i = zext nneg i32 %0 to i64                  ; 21 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = mul nuw nsw i64 %i.j, %i.i               ; 2 uses
  %i.l = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 20 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = mul nuw nsw i32 %0, %0
  %i.n = shl nuw nsw i32 %i.m, 3
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35, i32 noundef %i.n) #13
  br label %bb.cv

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %2, i8 0, i64 248, i1 false)
  %i.o = sub nsw i32 %0, %i.h                     ; 4 uses
  %i.p = add nsw i32 %i.h, -1                     ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 228 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 4 uses
  %i.u = zext nneg i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 10 uses
  %wide.trip.count1528 = zext nneg i32 %i.h to i64
  %wide.trip.count1538 = zext nneg i32 %i.h to i64 ; 2 uses
  br label %.preheader1187

.preheader1187:                                   ; preds = %bb.c, %bb.t
  %.08851213 = phi i32 [ 0, %bb.c ], [ %i.hd, %bb.t ] ; 8 uses
  %i.v = icmp eq i32 %.08851213, 0
  %i.w = mul i32 %.08851213, %0                   ; 2 uses
  %i.x = add i32 %.08851213, %0
  %i.y = mul i32 %i.x, %0                         ; 2 uses
  %i.z = add i32 %i.w, -1
  %i.aa = add i32 %i.y, -1
  %i.ab = add nsw i32 %.08851213, -1              ; 2 uses
  %i.ac = mul i32 %i.ab, %0                       ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  %i.af = add i32 %i.ab, %0
  %i.ag = mul i32 %i.af, %0
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ah
  %i.aj = add i32 %i.p, %.08851213
  %i.ak = mul i32 %i.aj, %0
  br label %bb.d

.preheader1181:                                   ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 5 uses
  %i.an = xor i32 %i.h, -1
  %i.ao = add nsw i32 %0, %i.an                   ; 3 uses
  %.not1471 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 4 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1) ; 3 uses
  %wide.trip.count1563 = zext i32 %i.ao to i64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %.preheader1180.lr.ph

bb.d:                                             ; preds = %.preheader1187, %.loopexit1184
  %.08761211 = phi i32 [ 0, %.preheader1187 ], [ %i.hc, %.loopexit1184 ] ; 8 uses
  %i.bh = or i32 %.08761211, %.08851213
  %or.cond = icmp eq i32 %i.bh, 0
  br i1 %or.cond, label %.preheader1182.us, label %bb.i

.preheader1182.us:                                ; preds = %bb.d, %._crit_edge.us
  %indvars.iv1535 = phi i64 [ %indvars.iv.next1536, %._crit_edge.us ], [ 0, %bb.d ] ; 2 uses
  %.08951207.us = phi i32 [ %i.by, %._crit_edge.us ], [ 0, %bb.d ]
  %.09001206.us = phi i32 [ %i.bx, %._crit_edge.us ], [ 0, %bb.d ]
  %i.bi = mul nuw nsw i64 %indvars.iv1535, %i.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  br label %bb.e

bb.e:                                             ; preds = %.preheader1182.us, %bb.h
  %indvars.iv1530 = phi i64 [ 0, %.preheader1182.us ], [ %indvars.iv.next1531, %bb.h ] ; 2 uses
  %.18961201.us = phi i32 [ %.08951207.us, %.preheader1182.us ], [ %i.by, %bb.h ]
  %.19011200.us = phi i32 [ %.09001206.us, %.preheader1182.us ], [ %i.bx, %bb.h ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv1530
  %i.bj = load i32, ptr %gep, align 4, !tbaa !56  ; 3 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = and i32 %i.bk, 255                      ; 4 uses
  %i.bm = lshr i32 %i.bj, 8
  %i.bn = and i32 %i.bm, 255                      ; 4 uses
  %i.bo = and i32 %i.bj, 255                      ; 4 uses
  %..i.us = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.bo)
  %spec.select.i.us = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 %..i.us) ; 2 uses
  %.44.i.us = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bo)
  %i.bp = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 %.44.i.us) ; 6 uses
  %i.bq = sub nuw nsw i32 %i.bp, %spec.select.i.us ; 2 uses
  %.not.i.us = icmp eq i32 %i.bp, %spec.select.i.us
  br i1 %.not.i.us, label %hsv.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = trunc nuw nsw i32 %i.bq to i16
  %.lhs.trunc1102.us = mul nuw i16 %i.br, 255
  %.rhs.trunc1103.us = trunc nuw nsw i32 %i.bp to i16
  %i.bs = udiv i16 %.lhs.trunc1102.us, %.rhs.trunc1103.us
  %.zext1104.us = zext i16 %i.bs to i32
  br label %hsv.exit.us

hsv.exit.us:                                      ; preds = %bb.f, %bb.e
  %storemerge.i.us = phi i32 [ %.zext1104.us, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.bt = mul nuw nsw i32 %storemerge.i.us, %i.bp
  %i.bu = mul i32 %i.bt, %storemerge.i.us
  %i.bv = uitofp i32 %i.bu to double
  %sqrt.us = tail call double @llvm.sqrt.f64(double %i.bv)
  %i.bw = fptoui double %sqrt.us to i32
  %i.bx = add i32 %.19011200.us, %i.bw            ; 3 uses
  %i.by = add i32 %i.bp, %.18961201.us            ; 3 uses
  %i.bz = icmp samesign ugt i32 %storemerge.i.us, 85
  %i.ca = icmp samesign ugt i32 %i.bp, 85
  %or.cond3.us = and i1 %i.ca, %i.bz
  br i1 %or.cond3.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %hsv.exit.us
  %i.cb = sub nsw i32 %i.bn, %i.bo
  %4 = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %.rhs.trunc.us.a = trunc nsw i32 %4 to i16
  %.rhs.trunc.us = trunc nuw nsw i32 %i.bq to i16
  %i.cc = sub nsw i32 %i.bl, %i.bo
  %i.cd = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.ce = trunc nsw i32 %i.cd to i16
  %5 = sub nsw i32 %i.bl, %i.bn
  %i.cf = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %i.cg = trunc nsw i32 %i.cf to i16
  %6 = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %.rhs.trunc.us.a, i64 0
  %7 = insertelement <4 x i16> %6, i16 %i.ce, i64 1
  %8 = insertelement <4 x i16> %7, i16 %i.cg, i64 2
  %9 = mul nuw nsw <4 x i16> %8, <i16 100, i16 100, i16 100, i16 0>
  %10 = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc.us, i64 0
  %11 = shufflevector <4 x i16> %10, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %12 = udiv <4 x i16> %9, %11
  %13 = zext <4 x i16> %12 to <4 x i32>
  %i.ch = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.ci = sub <4 x i32> %i.ch, %13
  %i.cj = add <4 x i32> %i.ci, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.cj, ptr %i.r, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %hsv.exit.us
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1 ; 2 uses
  %exitcond1534.not = icmp eq i64 %indvars.iv.next1531, %wide.trip.count1538
  br i1 %exitcond1534.not, label %._crit_edge.us, label %bb.e

._crit_edge.us:                                   ; preds = %bb.h
  %indvars.iv.next1536 = add nuw nsw i64 %indvars.iv1535, 1 ; 2 uses
  %exitcond1539.not = icmp eq i64 %indvars.iv.next1536, %wide.trip.count1538
  br i1 %exitcond1539.not, label %.loopexit1184, label %.preheader1182.us

bb.i:                                             ; preds = %bb.d
  %.not975 = icmp eq i32 %.08761211, 0
  br i1 %.not975, label %.lr.ph1196.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ck = add i32 %i.aa, %.08761211
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !56
  %i.co = add i32 %i.z, %.08761211
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.28971191 = phi i32 [ %i.cn, %.lr.ph.preheader ], [ %i.ei, %bb.o ]
  %.29021190 = phi i32 [ %i.cr, %.lr.ph.preheader ], [ %i.eh, %bb.o ]
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ct = add i32 %.08851213, %i.cs
  %i.cu = mul i32 %i.ct, %0
  %i.cv = add i32 %i.cu, %.08761211               ; 2 uses
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !56 ; 3 uses
  %i.da = lshr i32 %i.cz, 16
  %i.db = and i32 %i.da, 255                      ; 2 uses
  %i.dc = lshr i32 %i.cz, 8
  %i.dd = and i32 %i.dc, 255                      ; 2 uses
  %i.de = and i32 %i.cz, 255                      ; 2 uses
  %..i1021 = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 %i.de)
  %spec.select.i1022 = tail call i32 @llvm.umin.i32(i32 %i.db, i32 %..i1021) ; 2 uses
  %.44.i1023 = tail call i32 @llvm.umax.i32(i32 %i.dd, i32 %i.de)
  %i.df = tail call i32 @llvm.umax.i32(i32 %i.db, i32 %.44.i1023) ; 5 uses
  %.not.i1024 = icmp eq i32 %i.df, %spec.select.i1022
  br i1 %.not.i1024, label %hsv.exit1026, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dg = sub nuw nsw i32 %i.df, %spec.select.i1022
  %i.dh = trunc nuw nsw i32 %i.dg to i16
  %.lhs.trunc1132 = mul nuw i16 %i.dh, 255
  %.rhs.trunc1133 = trunc nuw nsw i32 %i.df to i16
  %i.di = udiv i16 %.lhs.trunc1132, %.rhs.trunc1133
  %.zext1134 = zext i16 %i.di to i32              ; 2 uses
  %i.dj = mul nuw nsw i32 %i.df, %.zext1134
  %i.dk = mul i32 %i.dj, %.zext1134
  %i.dl = uitofp i32 %i.dk to double
  %i.dm = tail call double @llvm.sqrt.f64(double %i.dl)
  %i.dn = fptoui double %i.dm to i32
  br label %hsv.exit1026

hsv.exit1026:                                     ; preds = %.lr.ph, %bb.j
  %storemerge.i1025 = phi i32 [ %i.dn, %bb.j ], [ 0, %.lr.ph ]
  %i.do = sub i32 %.29021190, %storemerge.i1025
  %i.dp = sub i32 %.28971191, %i.df
  %i.dq = add i32 %i.p, %i.cv
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !56 ; 3 uses
  %i.du = lshr i32 %i.dt, 16
  %i.dv = and i32 %i.du, 255                      ; 4 uses
  %i.dw = lshr i32 %i.dt, 8
  %i.dx = and i32 %i.dw, 255                      ; 4 uses
  %i.dy = and i32 %i.dt, 255                      ; 4 uses
  %..i1027 = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %i.dy)
  %spec.select.i1028 = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 %..i1027) ; 2 uses
  %.44.i1029 = tail call i32 @llvm.umax.i32(i32 %i.dx, i32 %i.dy)
  %i.dz = tail call i32 @llvm.umax.i32(i32 %i.dv, i32 %.44.i1029) ; 7 uses
  %i.ea = sub nuw nsw i32 %i.dz, %spec.select.i1028 ; 2 uses
  %.not.i1030 = icmp eq i32 %i.dz, %spec.select.i1028
  br i1 %.not.i1030, label %hsv.exit1032, label %bb.k

bb.k:                                             ; preds = %hsv.exit1026
  %i.eb = trunc nuw nsw i32 %i.ea to i16
  %.lhs.trunc1129 = mul nuw i16 %i.eb, 255
  %.rhs.trunc1130 = trunc nuw nsw i32 %i.dz to i16
  %i.ec = udiv i16 %.lhs.trunc1129, %.rhs.trunc1130
  %.zext1131 = zext i16 %i.ec to i32
  br label %hsv.exit1032

hsv.exit1032:                                     ; preds = %hsv.exit1026, %bb.k
  %storemerge.i1031 = phi i32 [ %.zext1131, %bb.k ], [ 0, %hsv.exit1026 ] ; 4 uses
  %i.ed = mul nuw nsw i32 %storemerge.i1031, %i.dz
  %i.ee = mul i32 %i.ed, %storemerge.i1031
  %i.ef = uitofp i32 %i.ee to double
  %sqrt1138 = tail call double @llvm.sqrt.f64(double %i.ef)
  %i.eg = fptoui double %sqrt1138 to i32
  %i.eh = add i32 %i.do, %i.eg                    ; 2 uses
  %i.ei = add i32 %i.dp, %i.dz                    ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %hsv.exit1032
  %i.ej = icmp eq i64 %indvars.iv, %i.u
  %i.ek = icmp samesign ugt i32 %storemerge.i1031, 85
  %or.cond5 = select i1 %i.ej, i1 %i.ek, i1 false
  %i.el = icmp samesign ugt i32 %i.dz, 85
  %or.cond1135 = select i1 %or.cond5, i1 %i.el, i1 false
  br i1 %or.cond1135, label %bb.n, label %bb.o

bb.m:                                             ; preds = %hsv.exit1032
  %.old4 = icmp samesign ugt i32 %storemerge.i1031, 85
  %.old = icmp samesign ugt i32 %i.dz, 85
  %or.cond1136 = select i1 %.old4, i1 %.old, i1 false
  br i1 %or.cond1136, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.em = sub nsw i32 %i.dx, %i.dy
  %14 = tail call i32 @llvm.abs.i32(i32 %i.em, i1 true)
  %.rhs.trunc1121.a = trunc nsw i32 %14 to i16
  %.rhs.trunc1121 = trunc nuw nsw i32 %i.ea to i16
  %i.en = sub nsw i32 %i.dv, %i.dy
  %i.eo = tail call i32 @llvm.abs.i32(i32 %i.en, i1 true)
  %i.ep = trunc nsw i32 %i.eo to i16
  %15 = sub nsw i32 %i.dv, %i.dx
  %i.eq = tail call i32 @llvm.abs.i32(i32 %15, i1 true)
  %i.er = trunc nsw i32 %i.eq to i16
  %16 = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %.rhs.trunc1121.a, i64 0
  %17 = insertelement <4 x i16> %16, i16 %i.ep, i64 1
  %18 = insertelement <4 x i16> %17, i16 %i.er, i64 2
  %19 = mul nuw nsw <4 x i16> %18, <i16 100, i16 100, i16 100, i16 0>
  %20 = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc1121, i64 0
  %21 = shufflevector <4 x i16> %20, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %22 = udiv <4 x i16> %19, %21
  %23 = zext <4 x i16> %22 to <4 x i32>
  %i.es = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.et = sub <4 x i32> %i.es, %23
  %i.eu = add <4 x i32> %i.et, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.eu, ptr %i.r, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1184, label %.lr.ph

.lr.ph1196.preheader:                             ; preds = %bb.i
  %i.ev = load i32, ptr %i.ai, align 4, !tbaa !56
  %i.ew = load i32, ptr %i.ae, align 4, !tbaa !56
  br label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.lr.ph1196.preheader, %bb.s
  %indvars.iv1525 = phi i64 [ 0, %.lr.ph1196.preheader ], [ %indvars.iv.next1526, %bb.s ] ; 2 uses
  %.38981195 = phi i32 [ %i.ev, %.lr.ph1196.preheader ], [ %i.gk, %bb.s ]
  %.39031194 = phi i32 [ %i.ew, %.lr.ph1196.preheader ], [ %i.gj, %bb.s ]
  %i.ex = trunc nuw nsw i64 %indvars.iv1525 to i32 ; 2 uses
  %i.ey = add i32 %i.ac, %i.ex
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !56 ; 3 uses
  %i.fc = lshr i32 %i.fb, 16
  %i.fd = and i32 %i.fc, 255                      ; 2 uses
  %i.fe = lshr i32 %i.fb, 8
  %i.ff = and i32 %i.fe, 255                      ; 2 uses
  %i.fg = and i32 %i.fb, 255                      ; 2 uses
  %..i1033 = tail call i32 @llvm.umin.i32(i32 %i.ff, i32 %i.fg)
  %spec.select.i1034 = tail call i32 @llvm.umin.i32(i32 %i.fd, i32 %..i1033) ; 2 uses
  %.44.i1035 = tail call i32 @llvm.umax.i32(i32 %i.ff, i32 %i.fg)
  %i.fh = tail call i32 @llvm.umax.i32(i32 %i.fd, i32 %.44.i1035) ; 5 uses
  %.not.i1036 = icmp eq i32 %i.fh, %spec.select.i1034
  br i1 %.not.i1036, label %hsv.exit1038, label %bb.p

bb.p:                                             ; preds = %.lr.ph1196
  %i.fi = sub nuw nsw i32 %i.fh, %spec.select.i1034
  %i.fj = trunc nuw nsw i32 %i.fi to i16
  %.lhs.trunc1117 = mul nuw i16 %i.fj, 255
  %.rhs.trunc1118 = trunc nuw nsw i32 %i.fh to i16
  %i.fk = udiv i16 %.lhs.trunc1117, %.rhs.trunc1118
  %.zext1119 = zext i16 %i.fk to i32              ; 2 uses
  %i.fl = mul nuw nsw i32 %i.fh, %.zext1119
  %i.fm = mul i32 %i.fl, %.zext1119
  %i.fn = uitofp i32 %i.fm to double
  %i.fo = tail call double @llvm.sqrt.f64(double %i.fn)
  %i.fp = fptoui double %i.fo to i32
  br label %hsv.exit1038

hsv.exit1038:                                     ; preds = %.lr.ph1196, %bb.p
  %storemerge.i1037 = phi i32 [ %i.fp, %bb.p ], [ 0, %.lr.ph1196 ]
  %i.fq = sub i32 %.39031194, %storemerge.i1037
  %i.fr = sub i32 %.38981195, %i.fh
  %i.fs = add i32 %i.ak, %i.ex
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !56 ; 3 uses
  %i.fw = lshr i32 %i.fv, 16
  %i.fx = and i32 %i.fw, 255                      ; 4 uses
  %i.fy = lshr i32 %i.fv, 8
  %i.fz = and i32 %i.fy, 255                      ; 4 uses
  %i.ga = and i32 %i.fv, 255                      ; 4 uses
  %..i1039 = tail call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.ga)
  %spec.select.i1040 = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %..i1039) ; 2 uses
  %.44.i1041 = tail call i32 @llvm.umax.i32(i32 %i.fz, i32 %i.ga)
  %i.gb = tail call i32 @llvm.umax.i32(i32 %i.fx, i32 %.44.i1041) ; 6 uses
  %i.gc = sub nuw nsw i32 %i.gb, %spec.select.i1040 ; 2 uses
  %.not.i1042 = icmp eq i32 %i.gb, %spec.select.i1040
  br i1 %.not.i1042, label %hsv.exit1044, label %bb.q

bb.q:                                             ; preds = %hsv.exit1038
  %i.gd = trunc nuw nsw i32 %i.gc to i16
  %.lhs.trunc1114 = mul nuw i16 %i.gd, 255
  %.rhs.trunc1115 = trunc nuw nsw i32 %i.gb to i16
  %i.ge = udiv i16 %.lhs.trunc1114, %.rhs.trunc1115
  %.zext1116 = zext i16 %i.ge to i32
  br label %hsv.exit1044

hsv.exit1044:                                     ; preds = %hsv.exit1038, %bb.q
  %storemerge.i1043 = phi i32 [ %.zext1116, %bb.q ], [ 0, %hsv.exit1038 ] ; 3 uses
  %i.gf = mul nuw nsw i32 %storemerge.i1043, %i.gb
  %i.gg = mul i32 %i.gf, %storemerge.i1043
  %i.gh = uitofp i32 %i.gg to double
  %sqrt1140 = tail call double @llvm.sqrt.f64(double %i.gh)
  %i.gi = fptoui double %sqrt1140 to i32
  %i.gj = add i32 %i.fq, %i.gi                    ; 2 uses
  %i.gk = add i32 %i.fr, %i.gb                    ; 2 uses
  %i.gl = icmp samesign ugt i32 %storemerge.i1043, 85
  %i.gm = icmp samesign ugt i32 %i.gb, 85
  %or.cond8 = and i1 %i.gm, %i.gl
  br i1 %or.cond8, label %bb.r, label %bb.s

bb.r:                                             ; preds = %hsv.exit1044
  %i.gn = sub nsw i32 %i.fz, %i.ga
  %24 = tail call i32 @llvm.abs.i32(i32 %i.gn, i1 true)
  %.rhs.trunc1106.a = trunc nsw i32 %24 to i16
  %.rhs.trunc1106 = trunc nuw nsw i32 %i.gc to i16
  %i.go = sub nsw i32 %i.fx, %i.ga
  %i.gp = tail call i32 @llvm.abs.i32(i32 %i.go, i1 true)
  %i.gq = trunc nsw i32 %i.gp to i16
  %25 = sub nsw i32 %i.fx, %i.fz
  %i.gr = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %i.gs = trunc nsw i32 %i.gr to i16
  %26 = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %.rhs.trunc1106.a, i64 0
  %27 = insertelement <4 x i16> %26, i16 %i.gq, i64 1
  %28 = insertelement <4 x i16> %27, i16 %i.gs, i64 2
  %29 = mul nuw nsw <4 x i16> %28, <i16 100, i16 100, i16 100, i16 0>
  %30 = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc1106, i64 0
  %31 = shufflevector <4 x i16> %30, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %32 = udiv <4 x i16> %29, %31
  %33 = zext <4 x i16> %32 to <4 x i32>
  %i.gt = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.gu = sub <4 x i32> %i.gt, %33
  %i.gv = add <4 x i32> %i.gu, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.gv, ptr %i.r, align 8, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %hsv.exit1044, %bb.r
  %indvars.iv.next1526 = add nuw nsw i64 %indvars.iv1525, 1 ; 2 uses
  %exitcond1529.not = icmp eq i64 %indvars.iv.next1526, %wide.trip.count1528
  br i1 %exitcond1529.not, label %.loopexit1184, label %.lr.ph1196

.loopexit1184:                                    ; preds = %bb.o, %bb.s, %._crit_edge.us
  %.4904 = phi i32 [ %i.gj, %bb.s ], [ %i.bx, %._crit_edge.us ], [ %i.eh, %bb.o ]
  %.4899 = phi i32 [ %i.gk, %bb.s ], [ %i.by, %._crit_edge.us ], [ %i.ei, %bb.o ]
  %i.gw = add i32 %.08761211, %i.w
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.gx
  store i32 %.4904, ptr %i.gy, align 4, !tbaa !56
  %i.gz = add i32 %.08761211, %i.y
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ha
  store i32 %.4899, ptr %i.hb, align 4, !tbaa !56
  %i.hc = add i32 %.08761211, 1                   ; 2 uses
  %.not974 = icmp ugt i32 %i.hc, %i.o
  br i1 %.not974, label %bb.t, label %bb.d

bb.t:                                             ; preds = %.loopexit1184
  %i.hd = add i32 %.08851213, 1                   ; 2 uses
  %.not964 = icmp ugt i32 %i.hd, %i.o
  br i1 %.not964, label %.preheader1181, label %.preheader1187

.preheader1175:                                   ; preds = %._crit_edge1244.split
  %i.he = mul nuw nsw i32 %i.h, %i.h              ; 24 uses
  %i.hf = load i32, ptr %i.ap, align 8, !tbaa !56
  %i.hg = udiv i32 %i.hf, %i.he
  store i32 %i.hg, ptr %i.ap, align 8, !tbaa !56
  %i.hh = load i32, ptr %i.al, align 4, !tbaa !56
  %i.hi = udiv i32 %i.hh, %i.he
  store i32 %i.hi, ptr %i.al, align 4, !tbaa !56
  %i.hj = load i32, ptr %i.au, align 8, !tbaa !56
  %i.hk = udiv i32 %i.hj, %i.he
  store i32 %i.hk, ptr %i.au, align 8, !tbaa !56
  %i.hl = load i32, ptr %i.am, align 4, !tbaa !56
  %i.hm = udiv i32 %i.hl, %i.he
  store i32 %i.hm, ptr %i.am, align 4, !tbaa !56
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !56
  %i.hp = udiv i32 %i.ho, %i.he
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !56
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !56
  %i.hs = udiv i32 %i.hr, %i.he
  store i32 %i.hs, ptr %i.hq, align 8, !tbaa !56
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !56
  %i.hv = udiv i32 %i.hu, %i.he
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !56
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !56
  %i.hy = udiv i32 %i.hx, %i.he
  store i32 %i.hy, ptr %i.hw, align 8, !tbaa !56
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !56
  %i.ib = udiv i32 %i.ia, %i.he
  store i32 %i.ib, ptr %i.hz, align 8, !tbaa !56
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !56
  %i.ie = udiv i32 %i.id, %i.he
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !56
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !56
  %i.ih = udiv i32 %i.ig, %i.he
  store i32 %i.ih, ptr %i.if, align 8, !tbaa !56
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 3 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !56
  %i.ik = udiv i32 %i.ij, %i.he
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !56
  %i.il = load i32, ptr %i.q, align 4, !tbaa !80  ; 4 uses
  %i.im = mul i32 %i.il, 100
  %i.in = mul nuw nsw i32 %0, %0                  ; 2 uses
  %i.io = udiv i32 %i.im, %i.in                   ; 2 uses
  %i.ip = icmp ugt i32 %i.io, 5                   ; 3 uses
  br i1 %i.ip, label %bb.an, label %bb.ao

.preheader1180.lr.ph:                             ; preds = %._crit_edge1244.split, %.preheader1181
  %indvars.iv1566 = phi i64 [ 0, %.preheader1181 ], [ %indvars.iv.next1567, %._crit_edge1244.split ] ; 22 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv1566 ; 2 uses
  store i32 -1, ptr %i.iq, align 4, !tbaa !56
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv1566 ; 2 uses
  store i32 -1, ptr %i.ir, align 4, !tbaa !56
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv1566 ; 2 uses
  %.not1472 = icmp eq i64 %indvars.iv1566, 0      ; 4 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv1566
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv1566
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv1566
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv1566
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv1566 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv1566
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv1566
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv1566
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv1566
  br i1 %.not1471, label %._crit_edge1244.split, label %.preheader1180.lr.ph.split

.preheader1180.lr.ph.split:                       ; preds = %.preheader1180.lr.ph
  %.promoted1245 = load i32, ptr %i.is, align 4, !tbaa !56
  %.promoted1252 = load i32, ptr %i.ix, align 4, !tbaa !56
  %exitcond1544.not = icmp eq i64 %indvars.iv1566, 1
  %exitcond1549.not = icmp eq i64 %indvars.iv1566, 1
  %exitcond1554.not = icmp eq i64 %indvars.iv1566, 1
  %exitcond1559.not = icmp eq i64 %indvars.iv1566, 1 ; 2 uses
  br label %.preheader1180

.preheader1180:                                   ; preds = %.preheader1180.lr.ph.split, %._crit_edge1239
  %.promoted12421259 = phi i32 [ -1, %.preheader1180.lr.ph.split ], [ %.promoted12421257, %._crit_edge1239 ] ; 2 uses
  %.promoted12411255 = phi i32 [ %.promoted1252, %.preheader1180.lr.ph.split ], [ %.promoted12411253, %._crit_edge1239 ] ; 2 uses
  %.promoted12401251 = phi i32 [ -1, %.preheader1180.lr.ph.split ], [ %.promoted12401249, %._crit_edge1239 ] ; 2 uses
  %.promoted1248 = phi i32 [ %.promoted1245, %.preheader1180.lr.ph.split ], [ %.promoted1246, %._crit_edge1239 ] ; 2 uses
  %.18861243 = phi i32 [ 0, %.preheader1180.lr.ph.split ], [ %i.na, %._crit_edge1239 ] ; 16 uses
  %i.jc = mul i32 %.18861243, %0
  %i.jd = add i32 %.18861243, %0
  %i.je = mul i32 %i.jd, %0
  %i.jf = add i32 %.18861243, %i.h                ; 8 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader1180, %bb.am
  %indvars.iv1560 = phi i64 [ 0, %.preheader1180 ], [ %indvars.iv.next1561, %bb.am ] ; 10 uses
  %.promoted12421258 = phi i32 [ %.promoted12421259, %.preheader1180 ], [ %.promoted12421257, %bb.am ] ; 2 uses
  %.promoted12411254 = phi i32 [ %.promoted12411255, %.preheader1180 ], [ %.promoted12411253, %bb.am ] ; 3 uses
  %.promoted12401250 = phi i32 [ %.promoted12401251, %.preheader1180 ], [ %.promoted12401249, %bb.am ] ; 3 uses
  %.promoted1247 = phi i32 [ %.promoted1248, %.preheader1180 ], [ %.promoted1246, %bb.am ] ; 3 uses
  %i.jg = phi i32 [ %.promoted12421259, %.preheader1180 ], [ %i.mz, %bb.am ] ; 3 uses
  %i.jh = phi i32 [ %.promoted12411255, %.preheader1180 ], [ %i.mc, %bb.am ] ; 4 uses
  %i.ji = phi i32 [ %.promoted12401251, %.preheader1180 ], [ %i.lh, %bb.am ] ; 4 uses
  %i.jj = phi i32 [ %.promoted1248, %.preheader1180 ], [ %i.km, %bb.am ] ; 4 uses
  %indvars1562 = trunc i64 %indvars.iv1560 to i32 ; 10 uses
  %i.jk = add i32 %i.jc, %indvars1562
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !56 ; 8 uses
  %i.jo = add i32 %i.je, %indvars1562
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !56 ; 8 uses
  %i.js = icmp ugt i32 %i.jn, %i.jj
  br i1 %i.js, label %.preheader1179, label %._crit_edge

.preheader1179:                                   ; preds = %bb.u
  br i1 %.not1472, label %._crit_edge.thread, label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.preheader1179
  %i.jt = add i32 %i.h, %indvars1562              ; 2 uses
  %i.ju = load i32, ptr %i.aq, align 4, !tbaa !56 ; 2 uses
  %i.jv = icmp ugt i32 %i.jt, %i.ju
  %i.jw = add i32 %i.ju, %i.h
  %i.jx = zext i32 %i.jw to i64
  %i.jy = icmp samesign ult i64 %indvars.iv1560, %i.jx
  %or.cond986 = and i1 %i.jv, %i.jy
  br i1 %or.cond986, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph1215
  %i.jz = load i32, ptr %i.ar, align 8, !tbaa !56 ; 2 uses
  %i.ka = icmp ugt i32 %i.jf, %i.jz
  %i.kb = add i32 %i.jz, %i.h
  %i.kc = icmp ult i32 %.18861243, %i.kb
  %or.cond989 = and i1 %i.ka, %i.kc
  br i1 %or.cond989, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph1215, %bb.v
  br i1 %exitcond1544.not, label %._crit_edge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kd = load i32, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %i.ke = icmp ugt i32 %i.jt, %i.kd
  %i.kf = add i32 %i.kd, %i.h
  %i.kg = zext i32 %i.kf to i64
  %i.kh = icmp samesign ult i64 %indvars.iv1560, %i.kg
  %or.cond986.1 = and i1 %i.ke, %i.kh
  br i1 %or.cond986.1, label %bb.y, label %._crit_edge.thread

bb.y:                                             ; preds = %bb.x
  %i.ki = load i32, ptr %i.ba, align 4, !tbaa !56 ; 2 uses
  %i.kj = icmp ugt i32 %i.jf, %i.ki
  %i.kk = add i32 %i.ki, %i.h
  %i.kl = icmp ult i32 %.18861243, %i.kk
  %or.cond989.1 = and i1 %i.kj, %i.kl
  br i1 %or.cond989.1, label %._crit_edge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.y, %bb.x, %.preheader1179
  store i32 %i.jn, ptr %i.is, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.it, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.iu, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.y, %._crit_edge.thread, %bb.u
  %.promoted1246 = phi i32 [ %.promoted1247, %bb.u ], [ %i.jn, %._crit_edge.thread ], [ %.promoted1247, %bb.y ], [ %.promoted1247, %bb.v ] ; 2 uses
  %i.km = phi i32 [ %i.jj, %bb.u ], [ %i.jn, %._crit_edge.thread ], [ %i.jj, %bb.y ], [ %i.jj, %bb.v ]
  %i.kn = icmp ult i32 %i.jn, %i.ji
  br i1 %i.kn, label %.preheader1178, label %._crit_edge1221

.preheader1178:                                   ; preds = %._crit_edge
  br i1 %.not1472, label %._crit_edge1221.thread, label %.lr.ph1220

end_hunk_0
