Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@makebmp:bb.a
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
  %.08851213 = phi i32 [ 0, %bb.c ], [ %i.ik, %bb.t ] ; 8 uses
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
  %.08761211 = phi i32 [ 0, %.preheader1187 ], [ %i.ij, %.loopexit1184 ] ; 8 uses
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
  %i.cc = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.cd = trunc nsw i32 %i.cc to i16
  %.rhs.trunc.us = trunc nuw nsw i32 %i.bq to i16
  %i.ce = sub nsw i32 %i.bl, %i.bo
  %i.cf = tail call i32 @llvm.abs.i32(i32 %i.ce, i1 true)
  %i.cg = trunc nsw i32 %i.cf to i16
  %i.ch = sub nsw i32 %i.bl, %i.bn
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cj = trunc nsw i32 %i.ci to i16
  %i.ck = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.cd, i64 0
  %i.cl = insertelement <4 x i16> %i.ck, i16 %i.cg, i64 1
  %i.cm = insertelement <4 x i16> %i.cl, i16 %i.cj, i64 2
  %i.cn = mul nuw nsw <4 x i16> %i.cm, <i16 100, i16 100, i16 100, i16 0>
  %i.co = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc.us, i64 0
  %i.cp = shufflevector <4 x i16> %i.co, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cq = udiv <4 x i16> %i.cn, %i.cp
  %i.cr = zext <4 x i16> %i.cq to <4 x i32>
  %i.cs = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.ct = sub <4 x i32> %i.cs, %i.cr
  %i.cu = add <4 x i32> %i.ct, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.cu, ptr %i.r, align 8, !tbaa !56
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
  %i.cv = add i32 %i.aa, %.08761211
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !56
  %i.cz = add i32 %i.z, %.08761211
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.28971191 = phi i32 [ %i.cy, %.lr.ph.preheader ], [ %i.et, %bb.o ]
  %.29021190 = phi i32 [ %i.dc, %.lr.ph.preheader ], [ %i.es, %bb.o ]
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32
  %i.de = add i32 %.08851213, %i.dd
  %i.df = mul i32 %i.de, %0
  %i.dg = add i32 %i.df, %.08761211               ; 2 uses
  %i.dh = add i32 %i.dg, -1
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !56 ; 3 uses
  %i.dl = lshr i32 %i.dk, 16
  %i.dm = and i32 %i.dl, 255                      ; 2 uses
  %i.dn = lshr i32 %i.dk, 8
  %i.do = and i32 %i.dn, 255                      ; 2 uses
  %i.dp = and i32 %i.dk, 255                      ; 2 uses
  %..i1021 = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %i.dp)
  %spec.select.i1022 = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 %..i1021) ; 2 uses
  %.44.i1023 = tail call i32 @llvm.umax.i32(i32 %i.do, i32 %i.dp)
  %i.dq = tail call i32 @llvm.umax.i32(i32 %i.dm, i32 %.44.i1023) ; 5 uses
  %.not.i1024 = icmp eq i32 %i.dq, %spec.select.i1022
  br i1 %.not.i1024, label %hsv.exit1026, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dr = sub nuw nsw i32 %i.dq, %spec.select.i1022
  %i.ds = trunc nuw nsw i32 %i.dr to i16
  %.lhs.trunc1132 = mul nuw i16 %i.ds, 255
  %.rhs.trunc1133 = trunc nuw nsw i32 %i.dq to i16
  %i.dt = udiv i16 %.lhs.trunc1132, %.rhs.trunc1133
  %.zext1134 = zext i16 %i.dt to i32              ; 2 uses
  %i.du = mul nuw nsw i32 %i.dq, %.zext1134
  %i.dv = mul i32 %i.du, %.zext1134
  %i.dw = uitofp i32 %i.dv to double
  %i.dx = tail call double @llvm.sqrt.f64(double %i.dw)
  %i.dy = fptoui double %i.dx to i32
  br label %hsv.exit1026

hsv.exit1026:                                     ; preds = %.lr.ph, %bb.j
  %storemerge.i1025 = phi i32 [ %i.dy, %bb.j ], [ 0, %.lr.ph ]
  %i.dz = sub i32 %.29021190, %storemerge.i1025
  %i.ea = sub i32 %.28971191, %i.dq
  %i.eb = add i32 %i.p, %i.dg
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !56 ; 3 uses
  %i.ef = lshr i32 %i.ee, 16
  %i.eg = and i32 %i.ef, 255                      ; 4 uses
  %i.eh = lshr i32 %i.ee, 8
  %i.ei = and i32 %i.eh, 255                      ; 4 uses
  %i.ej = and i32 %i.ee, 255                      ; 4 uses
  %..i1027 = tail call i32 @llvm.umin.i32(i32 %i.ei, i32 %i.ej)
  %spec.select.i1028 = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 %..i1027) ; 2 uses
  %.44.i1029 = tail call i32 @llvm.umax.i32(i32 %i.ei, i32 %i.ej)
  %i.ek = tail call i32 @llvm.umax.i32(i32 %i.eg, i32 %.44.i1029) ; 7 uses
  %i.el = sub nuw nsw i32 %i.ek, %spec.select.i1028 ; 2 uses
  %.not.i1030 = icmp eq i32 %i.ek, %spec.select.i1028
  br i1 %.not.i1030, label %hsv.exit1032, label %bb.k

bb.k:                                             ; preds = %hsv.exit1026
  %i.em = trunc nuw nsw i32 %i.el to i16
  %.lhs.trunc1129 = mul nuw i16 %i.em, 255
  %.rhs.trunc1130 = trunc nuw nsw i32 %i.ek to i16
  %i.en = udiv i16 %.lhs.trunc1129, %.rhs.trunc1130
  %.zext1131 = zext i16 %i.en to i32
  br label %hsv.exit1032

hsv.exit1032:                                     ; preds = %hsv.exit1026, %bb.k
  %storemerge.i1031 = phi i32 [ %.zext1131, %bb.k ], [ 0, %hsv.exit1026 ] ; 4 uses
  %i.eo = mul nuw nsw i32 %storemerge.i1031, %i.ek
  %i.ep = mul i32 %i.eo, %storemerge.i1031
  %i.eq = uitofp i32 %i.ep to double
  %sqrt1138 = tail call double @llvm.sqrt.f64(double %i.eq)
  %i.er = fptoui double %sqrt1138 to i32
  %i.es = add i32 %i.dz, %i.er                    ; 2 uses
  %i.et = add i32 %i.ea, %i.ek                    ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %hsv.exit1032
  %i.eu = icmp eq i64 %indvars.iv, %i.u
  %i.ev = icmp samesign ugt i32 %storemerge.i1031, 85
  %or.cond5 = select i1 %i.eu, i1 %i.ev, i1 false
  %i.ew = icmp samesign ugt i32 %i.ek, 85
  %or.cond1135 = select i1 %or.cond5, i1 %i.ew, i1 false
  br i1 %or.cond1135, label %bb.n, label %bb.o

bb.m:                                             ; preds = %hsv.exit1032
  %.old4 = icmp samesign ugt i32 %storemerge.i1031, 85
  %.old = icmp samesign ugt i32 %i.ek, 85
  %or.cond1136 = select i1 %.old4, i1 %.old, i1 false
  br i1 %or.cond1136, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ex = sub nsw i32 %i.ei, %i.ej
  %i.ey = tail call i32 @llvm.abs.i32(i32 %i.ex, i1 true)
  %i.ez = trunc nsw i32 %i.ey to i16
  %.rhs.trunc1121 = trunc nuw nsw i32 %i.el to i16
  %i.fa = sub nsw i32 %i.eg, %i.ej
  %i.fb = tail call i32 @llvm.abs.i32(i32 %i.fa, i1 true)
  %i.fc = trunc nsw i32 %i.fb to i16
  %i.fd = sub nsw i32 %i.eg, %i.ei
  %i.fe = tail call i32 @llvm.abs.i32(i32 %i.fd, i1 true)
  %i.ff = trunc nsw i32 %i.fe to i16
  %i.fg = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.ez, i64 0
  %i.fh = insertelement <4 x i16> %i.fg, i16 %i.fc, i64 1
  %i.fi = insertelement <4 x i16> %i.fh, i16 %i.ff, i64 2
  %i.fj = mul nuw nsw <4 x i16> %i.fi, <i16 100, i16 100, i16 100, i16 0>
  %i.fk = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc1121, i64 0
  %i.fl = shufflevector <4 x i16> %i.fk, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fm = udiv <4 x i16> %i.fj, %i.fl
  %i.fn = zext <4 x i16> %i.fm to <4 x i32>
  %i.fo = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.fp = sub <4 x i32> %i.fo, %i.fn
  %i.fq = add <4 x i32> %i.fp, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.fq, ptr %i.r, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1184, label %.lr.ph

.lr.ph1196.preheader:                             ; preds = %bb.i
  %i.fr = load i32, ptr %i.ai, align 4, !tbaa !56
  %i.fs = load i32, ptr %i.ae, align 4, !tbaa !56
  br label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.lr.ph1196.preheader, %bb.s
  %indvars.iv1525 = phi i64 [ 0, %.lr.ph1196.preheader ], [ %indvars.iv.next1526, %bb.s ] ; 2 uses
  %.38981195 = phi i32 [ %i.fr, %.lr.ph1196.preheader ], [ %i.hg, %bb.s ]
  %.39031194 = phi i32 [ %i.fs, %.lr.ph1196.preheader ], [ %i.hf, %bb.s ]
  %i.ft = trunc nuw nsw i64 %indvars.iv1525 to i32 ; 2 uses
  %i.fu = add i32 %i.ac, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !56 ; 3 uses
  %i.fy = lshr i32 %i.fx, 16
  %i.fz = and i32 %i.fy, 255                      ; 2 uses
  %i.ga = lshr i32 %i.fx, 8
  %i.gb = and i32 %i.ga, 255                      ; 2 uses
  %i.gc = and i32 %i.fx, 255                      ; 2 uses
  %..i1033 = tail call i32 @llvm.umin.i32(i32 %i.gb, i32 %i.gc)
  %spec.select.i1034 = tail call i32 @llvm.umin.i32(i32 %i.fz, i32 %..i1033) ; 2 uses
  %.44.i1035 = tail call i32 @llvm.umax.i32(i32 %i.gb, i32 %i.gc)
  %i.gd = tail call i32 @llvm.umax.i32(i32 %i.fz, i32 %.44.i1035) ; 5 uses
  %.not.i1036 = icmp eq i32 %i.gd, %spec.select.i1034
  br i1 %.not.i1036, label %hsv.exit1038, label %bb.p

bb.p:                                             ; preds = %.lr.ph1196
  %i.ge = sub nuw nsw i32 %i.gd, %spec.select.i1034
  %i.gf = trunc nuw nsw i32 %i.ge to i16
  %.lhs.trunc1117 = mul nuw i16 %i.gf, 255
  %.rhs.trunc1118 = trunc nuw nsw i32 %i.gd to i16
  %i.gg = udiv i16 %.lhs.trunc1117, %.rhs.trunc1118
  %.zext1119 = zext i16 %i.gg to i32              ; 2 uses
  %i.gh = mul nuw nsw i32 %i.gd, %.zext1119
  %i.gi = mul i32 %i.gh, %.zext1119
  %i.gj = uitofp i32 %i.gi to double
  %i.gk = tail call double @llvm.sqrt.f64(double %i.gj)
  %i.gl = fptoui double %i.gk to i32
  br label %hsv.exit1038

hsv.exit1038:                                     ; preds = %.lr.ph1196, %bb.p
  %storemerge.i1037 = phi i32 [ %i.gl, %bb.p ], [ 0, %.lr.ph1196 ]
  %i.gm = sub i32 %.39031194, %storemerge.i1037
  %i.gn = sub i32 %.38981195, %i.gd
  %i.go = add i32 %i.ak, %i.ft
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !56 ; 3 uses
  %i.gs = lshr i32 %i.gr, 16
  %i.gt = and i32 %i.gs, 255                      ; 4 uses
  %i.gu = lshr i32 %i.gr, 8
  %i.gv = and i32 %i.gu, 255                      ; 4 uses
  %i.gw = and i32 %i.gr, 255                      ; 4 uses
  %..i1039 = tail call i32 @llvm.umin.i32(i32 %i.gv, i32 %i.gw)
  %spec.select.i1040 = tail call i32 @llvm.umin.i32(i32 %i.gt, i32 %..i1039) ; 2 uses
  %.44.i1041 = tail call i32 @llvm.umax.i32(i32 %i.gv, i32 %i.gw)
  %i.gx = tail call i32 @llvm.umax.i32(i32 %i.gt, i32 %.44.i1041) ; 6 uses
  %i.gy = sub nuw nsw i32 %i.gx, %spec.select.i1040 ; 2 uses
  %.not.i1042 = icmp eq i32 %i.gx, %spec.select.i1040
  br i1 %.not.i1042, label %hsv.exit1044, label %bb.q

bb.q:                                             ; preds = %hsv.exit1038
  %i.gz = trunc nuw nsw i32 %i.gy to i16
  %.lhs.trunc1114 = mul nuw i16 %i.gz, 255
  %.rhs.trunc1115 = trunc nuw nsw i32 %i.gx to i16
  %i.ha = udiv i16 %.lhs.trunc1114, %.rhs.trunc1115
  %.zext1116 = zext i16 %i.ha to i32
  br label %hsv.exit1044

hsv.exit1044:                                     ; preds = %hsv.exit1038, %bb.q
  %storemerge.i1043 = phi i32 [ %.zext1116, %bb.q ], [ 0, %hsv.exit1038 ] ; 3 uses
  %i.hb = mul nuw nsw i32 %storemerge.i1043, %i.gx
  %i.hc = mul i32 %i.hb, %storemerge.i1043
  %i.hd = uitofp i32 %i.hc to double
  %sqrt1140 = tail call double @llvm.sqrt.f64(double %i.hd)
  %i.he = fptoui double %sqrt1140 to i32
  %i.hf = add i32 %i.gm, %i.he                    ; 2 uses
  %i.hg = add i32 %i.gn, %i.gx                    ; 2 uses
  %i.hh = icmp samesign ugt i32 %storemerge.i1043, 85
  %i.hi = icmp samesign ugt i32 %i.gx, 85
  %or.cond8 = and i1 %i.hi, %i.hh
  br i1 %or.cond8, label %bb.r, label %bb.s

bb.r:                                             ; preds = %hsv.exit1044
  %i.hj = sub nsw i32 %i.gv, %i.gw
  %i.hk = tail call i32 @llvm.abs.i32(i32 %i.hj, i1 true)
  %i.hl = trunc nsw i32 %i.hk to i16
  %.rhs.trunc1106 = trunc nuw nsw i32 %i.gy to i16
  %i.hm = sub nsw i32 %i.gt, %i.gw
  %i.hn = tail call i32 @llvm.abs.i32(i32 %i.hm, i1 true)
  %i.ho = trunc nsw i32 %i.hn to i16
  %i.hp = sub nsw i32 %i.gt, %i.gv
  %i.hq = tail call i32 @llvm.abs.i32(i32 %i.hp, i1 true)
  %i.hr = trunc nsw i32 %i.hq to i16
  %i.hs = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.hl, i64 0
  %i.ht = insertelement <4 x i16> %i.hs, i16 %i.ho, i64 1
  %i.hu = insertelement <4 x i16> %i.ht, i16 %i.hr, i64 2
  %i.hv = mul nuw nsw <4 x i16> %i.hu, <i16 100, i16 100, i16 100, i16 0>
  %i.hw = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc1106, i64 0
  %i.hx = shufflevector <4 x i16> %i.hw, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hy = udiv <4 x i16> %i.hv, %i.hx
  %i.hz = zext <4 x i16> %i.hy to <4 x i32>
  %i.ia = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.ib = sub <4 x i32> %i.ia, %i.hz
  %i.ic = add <4 x i32> %i.ib, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.ic, ptr %i.r, align 8, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %hsv.exit1044, %bb.r
  %indvars.iv.next1526 = add nuw nsw i64 %indvars.iv1525, 1 ; 2 uses
  %exitcond1529.not = icmp eq i64 %indvars.iv.next1526, %wide.trip.count1528
  br i1 %exitcond1529.not, label %.loopexit1184, label %.lr.ph1196

.loopexit1184:                                    ; preds = %bb.o, %bb.s, %._crit_edge.us
  %.4904 = phi i32 [ %i.hf, %bb.s ], [ %i.bx, %._crit_edge.us ], [ %i.es, %bb.o ]
  %.4899 = phi i32 [ %i.hg, %bb.s ], [ %i.by, %._crit_edge.us ], [ %i.et, %bb.o ]
  %i.id = add i32 %.08761211, %i.w
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ie
  store i32 %.4904, ptr %i.if, align 4, !tbaa !56
  %i.ig = add i32 %.08761211, %i.y
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ih
  store i32 %.4899, ptr %i.ii, align 4, !tbaa !56
  %i.ij = add i32 %.08761211, 1                   ; 2 uses
  %.not974 = icmp ugt i32 %i.ij, %i.o
  br i1 %.not974, label %bb.t, label %bb.d

bb.t:                                             ; preds = %.loopexit1184
  %i.ik = add i32 %.08851213, 1                   ; 2 uses
  %.not964 = icmp ugt i32 %i.ik, %i.o
  br i1 %.not964, label %.preheader1181, label %.preheader1187

.preheader1175:                                   ; preds = %._crit_edge1244.split
  %i.il = mul nuw nsw i32 %i.h, %i.h              ; 24 uses
  %i.im = load i32, ptr %i.ap, align 8, !tbaa !56
  %i.in = udiv i32 %i.im, %i.il
  store i32 %i.in, ptr %i.ap, align 8, !tbaa !56
  %i.io = load i32, ptr %i.al, align 4, !tbaa !56
  %i.ip = udiv i32 %i.io, %i.il
  store i32 %i.ip, ptr %i.al, align 4, !tbaa !56
  %i.iq = load i32, ptr %i.au, align 8, !tbaa !56
  %i.ir = udiv i32 %i.iq, %i.il
  store i32 %i.ir, ptr %i.au, align 8, !tbaa !56
  %i.is = load i32, ptr %i.am, align 4, !tbaa !56
  %i.it = udiv i32 %i.is, %i.il
  store i32 %i.it, ptr %i.am, align 4, !tbaa !56
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !56
  %i.iw = udiv i32 %i.iv, %i.il
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !56
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !56
  %i.iz = udiv i32 %i.iy, %i.il
  store i32 %i.iz, ptr %i.ix, align 8, !tbaa !56
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !56
  %i.jc = udiv i32 %i.jb, %i.il
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !56
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !56
  %i.jf = udiv i32 %i.je, %i.il
  store i32 %i.jf, ptr %i.jd, align 8, !tbaa !56
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !56
  %i.ji = udiv i32 %i.jh, %i.il
  store i32 %i.ji, ptr %i.jg, align 8, !tbaa !56
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !56
  %i.jl = udiv i32 %i.jk, %i.il
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !56
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !56
  %i.jo = udiv i32 %i.jn, %i.il
  store i32 %i.jo, ptr %i.jm, align 8, !tbaa !56
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 3 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !56
  %i.jr = udiv i32 %i.jq, %i.il
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !56
  %i.js = load i32, ptr %i.q, align 4, !tbaa !80  ; 4 uses
  %i.jt = mul i32 %i.js, 100
  %i.ju = mul nuw nsw i32 %0, %0                  ; 2 uses
  %i.jv = udiv i32 %i.jt, %i.ju                   ; 2 uses
  %i.jw = icmp ugt i32 %i.jv, 5                   ; 3 uses
  br i1 %i.jw, label %bb.an, label %bb.ao

.preheader1180.lr.ph:                             ; preds = %._crit_edge1244.split, %.preheader1181
  %indvars.iv1566 = phi i64 [ 0, %.preheader1181 ], [ %indvars.iv.next1567, %._crit_edge1244.split ] ; 22 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv1566 ; 2 uses
  store i32 -1, ptr %i.jx, align 4, !tbaa !56
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv1566 ; 2 uses
  store i32 -1, ptr %i.jy, align 4, !tbaa !56
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv1566 ; 2 uses
  %.not1472 = icmp eq i64 %indvars.iv1566, 0      ; 4 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv1566
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv1566
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv1566
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv1566
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv1566 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv1566
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv1566
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv1566
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv1566
  br i1 %.not1471, label %._crit_edge1244.split, label %.preheader1180.lr.ph.split

.preheader1180.lr.ph.split:                       ; preds = %.preheader1180.lr.ph
  %.promoted1245 = load i32, ptr %i.jz, align 4, !tbaa !56
  %.promoted1252 = load i32, ptr %i.ke, align 4, !tbaa !56
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
  %.18861243 = phi i32 [ 0, %.preheader1180.lr.ph.split ], [ %i.oh, %._crit_edge1239 ] ; 16 uses
  %i.kj = mul i32 %.18861243, %0
  %i.kk = add i32 %.18861243, %0
  %i.kl = mul i32 %i.kk, %0
  %i.km = add i32 %.18861243, %i.h                ; 8 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader1180, %bb.am
  %indvars.iv1560 = phi i64 [ 0, %.preheader1180 ], [ %indvars.iv.next1561, %bb.am ] ; 10 uses
  %.promoted12421258 = phi i32 [ %.promoted12421259, %.preheader1180 ], [ %.promoted12421257, %bb.am ] ; 2 uses
  %.promoted12411254 = phi i32 [ %.promoted12411255, %.preheader1180 ], [ %.promoted12411253, %bb.am ] ; 3 uses
  %.promoted12401250 = phi i32 [ %.promoted12401251, %.preheader1180 ], [ %.promoted12401249, %bb.am ] ; 3 uses
  %.promoted1247 = phi i32 [ %.promoted1248, %.preheader1180 ], [ %.promoted1246, %bb.am ] ; 3 uses
  %i.kn = phi i32 [ %.promoted12421259, %.preheader1180 ], [ %i.og, %bb.am ] ; 3 uses
  %i.ko = phi i32 [ %.promoted12411255, %.preheader1180 ], [ %i.nj, %bb.am ] ; 4 uses
  %i.kp = phi i32 [ %.promoted12401251, %.preheader1180 ], [ %i.mo, %bb.am ] ; 4 uses
  %i.kq = phi i32 [ %.promoted1248, %.preheader1180 ], [ %i.lt, %bb.am ] ; 4 uses
  %indvars1562 = trunc i64 %indvars.iv1560 to i32 ; 10 uses
  %i.kr = add i32 %i.kj, %indvars1562
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !56 ; 8 uses
  %i.kv = add i32 %i.kl, %indvars1562
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !56 ; 8 uses
  %i.kz = icmp ugt i32 %i.ku, %i.kq
  br i1 %i.kz, label %.preheader1179, label %._crit_edge

.preheader1179:                                   ; preds = %bb.u
  br i1 %.not1472, label %._crit_edge.thread, label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.preheader1179
  %i.la = add i32 %i.h, %indvars1562              ; 2 uses
  %i.lb = load i32, ptr %i.aq, align 4, !tbaa !56 ; 2 uses
  %i.lc = icmp ugt i32 %i.la, %i.lb
  %i.ld = add i32 %i.lb, %i.h
  %i.le = zext i32 %i.ld to i64
  %i.lf = icmp samesign ult i64 %indvars.iv1560, %i.le
  %or.cond986 = and i1 %i.lc, %i.lf
  br i1 %or.cond986, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph1215
  %i.lg = load i32, ptr %i.ar, align 8, !tbaa !56 ; 2 uses
  %i.lh = icmp ugt i32 %i.km, %i.lg
  %i.li = add i32 %i.lg, %i.h
  %i.lj = icmp ult i32 %.18861243, %i.li
  %or.cond989 = and i1 %i.lh, %i.lj
  br i1 %or.cond989, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph1215, %bb.v
  br i1 %exitcond1544.not, label %._crit_edge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.lk = load i32, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %i.ll = icmp ugt i32 %i.la, %i.lk
  %i.lm = add i32 %i.lk, %i.h
  %i.ln = zext i32 %i.lm to i64
  %i.lo = icmp samesign ult i64 %indvars.iv1560, %i.ln
  %or.cond986.1 = and i1 %i.ll, %i.lo
  br i1 %or.cond986.1, label %bb.y, label %._crit_edge.thread

bb.y:                                             ; preds = %bb.x
  %i.lp = load i32, ptr %i.ba, align 4, !tbaa !56 ; 2 uses
  %i.lq = icmp ugt i32 %i.km, %i.lp
  %i.lr = add i32 %i.lp, %i.h
  %i.ls = icmp ult i32 %.18861243, %i.lr
  %or.cond989.1 = and i1 %i.lq, %i.ls
  br i1 %or.cond989.1, label %._crit_edge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.y, %bb.x, %.preheader1179
  store i32 %i.ku, ptr %i.jz, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.ka, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.kb, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.y, %._crit_edge.thread, %bb.u
  %.promoted1246 = phi i32 [ %.promoted1247, %bb.u ], [ %i.ku, %._crit_edge.thread ], [ %.promoted1247, %bb.y ], [ %.promoted1247, %bb.v ] ; 2 uses
  %i.lt = phi i32 [ %i.kq, %bb.u ], [ %i.ku, %._crit_edge.thread ], [ %i.kq, %bb.y ], [ %i.kq, %bb.v ]
  %i.lu = icmp ult i32 %i.ku, %i.kp
  br i1 %i.lu, label %.preheader1178, label %._crit_edge1221

.preheader1178:                                   ; preds = %._crit_edge
end_hunk_0
