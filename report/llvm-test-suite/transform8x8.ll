Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/transform8x8?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@RDCost_for_8x8IntraBlocks:bb.a
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = add nsw i32 %i.n, %i.e
  %i.p = load ptr, ptr @imgY_org, align 8, !tbaa !32
  %i.q = load ptr, ptr @enc_picture, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6440
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 14216
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.v = load ptr, ptr @input, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4016
  %i.x = load i32, ptr %i.w, align 8, !tbaa !77
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @assignSE2partition, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.ab = call i32 @dct_luma8x8(i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 1)
  store i32 %i.ab, ptr %0, align 4, !tbaa !4
  %i.ac = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78 ; 8 uses
  %i.af = sext i32 %i.i to i64                    ; 9 uses
  %i.ag = sext i32 %i.o to i64
  %i.ah = sext i32 %i.l to i64
  %indvars.iv.next = add nsw i64 %i.af, 1         ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.p, i64 %i.ag
  %invariant.gep64 = getelementptr [8 x i8], ptr %i.s, i64 %i.ah
  %indvars.iv.next.1 = add nsw i64 %i.af, 2       ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %i.af, 3       ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %i.af, 4       ; 2 uses
  %indvars.iv.next.4 = add nsw i64 %i.af, 5       ; 2 uses
  %indvars.iv.next.5 = add nsw i64 %i.af, 6       ; 2 uses
  %indvars.iv.next.6 = add nsw i64 %i.af, 7       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next61, %bb.b ] ; 3 uses
  %.04556 = phi i64 [ 0, %bb.a ], [ %i.dt, %bb.b ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ai = load ptr, ptr %gep, align 8, !tbaa !49  ; 8 uses
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.af
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !51
  %i.al = zext i16 %i.ak to i64
  %gep65 = getelementptr [8 x i8], ptr %invariant.gep64, i64 %indvars.iv
  %i.am = load ptr, ptr %gep65, align 8, !tbaa !49 ; 8 uses
  %i.an = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.af
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !51
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub nsw i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = sext i32 %i.as to i64
  %i.au = add nsw i64 %.04556, %i.at
  %i.av = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv.next
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !51
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !51
  %i.ba = zext i16 %i.az to i64
  %i.bb = sub nsw i64 %i.ax, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = sext i32 %i.bd to i64
  %i.bf = add nsw i64 %i.au, %i.be
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv.next.1
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !51
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.next.1
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !51
  %i.bl = zext i16 %i.bk to i64
  %i.bm = sub nsw i64 %i.bi, %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add nsw i64 %i.bf, %i.bp
  %i.br = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv.next.2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !51
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.next.2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !51
  %i.bw = zext i16 %i.bv to i64
  %i.bx = sub nsw i64 %i.bt, %i.bw
  %i.by = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i64 %i.bq, %i.ca
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv.next.3
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !51
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.next.3
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !51
  %i.ch = zext i16 %i.cg to i64
  %i.ci = sub nsw i64 %i.ce, %i.ch
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i64 %i.cb, %i.cl
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv.next.4
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !51
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.next.4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !51
  %i.cs = zext i16 %i.cr to i64
  %i.ct = sub nsw i64 %i.cp, %i.cs
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i64 %i.cm, %i.cw
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv.next.5
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !51
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.next.5
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !51
  %i.dd = zext i16 %i.dc to i64
  %i.de = sub nsw i64 %i.da, %i.dd
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = sext i32 %i.dg to i64
  %i.di = add nsw i64 %i.cx, %i.dh
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv.next.6
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !51
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.next.6
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !51
  %i.do = zext i16 %i.dn to i64
  %i.dp = sub nsw i64 %i.dl, %i.do
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = add nsw i64 %i.di, %i.ds                ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next61, 8
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !79

bb.c:                                             ; preds = %bb.b
  %i.du = icmp eq i32 %5, %2
  %i.dv = icmp sge i32 %2, %5
  %i.dw = sext i1 %i.dv to i32
  %i.dx = add nsw i32 %2, %i.dw
  %i.dy = select i1 %i.du, i32 -1, i32 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !80
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %1, ptr %i.ea, align 8, !tbaa !82
  store i32 4, ptr %6, align 8, !tbaa !83
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !84
  %.not = icmp eq i32 %i.ec, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !85
  %. = select i1 %.not, i64 64, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [104 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = load ptr, ptr @writeIntraPredMode, align 8, !tbaa !8
  call void %i.ej(ptr noundef nonnull %6, ptr noundef %i.ei) #8
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !88 ; 2 uses
  %i.em = load ptr, ptr @input, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4008
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !89
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.eq = call i32 @writeCoeff4x4_CAVLC(i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #8
  %i.er = add nsw i32 %i.eq, %i.el
  %i.es = call i32 @writeCoeff4x4_CAVLC(i32 noundef 0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #8
  %i.et = add nsw i32 %i.es, %i.er
  %i.eu = call i32 @writeCoeff4x4_CAVLC(i32 noundef 0, i32 noundef %1, i32 noundef 2, i32 noundef 0) #8
  %i.ev = add nsw i32 %i.eu, %i.et
  %i.ew = call i32 @writeCoeff4x4_CAVLC(i32 noundef 0, i32 noundef %1, i32 noundef 3, i32 noundef 0) #8
  %i.ex = add nsw i32 %i.ew, %i.ev
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ey = call i32 @writeLumaCoeff8x8_CABAC(i32 noundef %1, i32 noundef 1) #8
  %i.ez = add nsw i32 %i.ey, %i.el
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.d
  %.147 = phi i32 [ %i.ez, %bb.d ], [ %i.ex, %.preheader.preheader ]
  %i.fa = sitofp i64 %i.dt to double
  %i.fb = sitofp i32 %.147 to double
  %i.fc = call double @llvm.fmuladd.f64(double %3, double %i.fb, double %i.fa)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret double %i.fc
}

declare void @reset_coding_state_cs_cm() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @dct_luma8x8(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x [8 x i32]], align 16         ; 23 uses
  %i.b = alloca [4 x i32], align 16               ; 12 uses
  %i.c = alloca [4 x i32], align 16               ; 10 uses
  %i.d = shl i32 %0, 3
  %i.e = and i32 %i.d, 8                          ; 6 uses
  %i.f = shl nsw i32 %0, 2
  %i.g = and i32 %i.f, -8                         ; 4 uses
  %i.h = load ptr, ptr @img, align 8, !tbaa !8    ; 34 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 14160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 14224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [536 x i8], ptr %i.s, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !90   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 15540
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !91
  %i.ac = icmp eq i32 %i.ab, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = phi i1 [ false, %bb.a ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 428
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !92
  %.not = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not, ptr @SNGL_SCAN8x8, ptr @FIELD_SCAN8x8 ; 2 uses
  %i.ah = load ptr, ptr @qp_per_matrix, align 8, !tbaa !56
  %i.ai = sext i32 %i.y to i64                    ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 4 uses
  %i.al = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !56
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ai
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = add nsw i32 %i.ak, 16                   ; 3 uses
  %i.ap = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !52
  %i.aq = sext i32 %2 to i64                      ; 5 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = sext i32 %i.an to i64                   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.aw = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !52
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.aq
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !53
  %i.az = sext i32 %i.ak to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.bc = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !52
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.aq
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.at
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54
  br i1 %i.ad, label %bb.s, label %.preheader505

.preheader505:                                    ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 13136 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader505
  %index = phi i64 [ 0, %.preheader505 ], [ %index.next, %vector.body ] ; 13 uses
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %index ; 8 uses
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %index ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %index ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %index ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 192
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !4
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !4
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !4
  %i.ca = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bx, i64 1
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.by, i64 2
  %i.cd = insertelement <4 x i32> %i.cc, i32 %i.bz, i64 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 156
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 220
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cj = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ck = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.cl = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cm = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cj, i64 1
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.ck, i64 2
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.cl, i64 3 ; 2 uses
  %i.cq = add nsw <4 x i32> %i.cp, %i.cd          ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 68
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 132
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 196
  %i.cv = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.cw = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cy = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cz = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 1
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cx, i64 2
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cy, i64 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.df = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 216
  %i.dh = load i32, ptr %i.dd, align 8, !tbaa !4
  %i.di = load i32, ptr %i.de, align 8, !tbaa !4
  %i.dj = load i32, ptr %i.df, align 8, !tbaa !4
  %i.dk = load i32, ptr %i.dg, align 8, !tbaa !4
  %i.dl = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.di, i64 1
  %i.dn = insertelement <4 x i32> %i.dm, i32 %i.dj, i64 2
  %i.do = insertelement <4 x i32> %i.dn, i32 %i.dk, i64 3 ; 2 uses
  %i.dp = add nsw <4 x i32> %i.do, %i.dc          ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  %i.du = load i32, ptr %i.dq, align 8, !tbaa !4
  %i.dv = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.dw = load i32, ptr %i.ds, align 8, !tbaa !4
  %i.dx = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.dy = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %i.dz = insertelement <4 x i32> %i.dy, i32 %i.dv, i64 1
  %i.ea = insertelement <4 x i32> %i.dz, i32 %i.dw, i64 2
  %i.eb = insertelement <4 x i32> %i.ea, i32 %i.dx, i64 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 84
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bs, i64 148
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bu, i64 212
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.eh = load i32, ptr %i.ed, align 4, !tbaa !4
  %i.ei = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.ek = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %i.el = insertelement <4 x i32> %i.ek, i32 %i.eh, i64 1
  %i.em = insertelement <4 x i32> %i.el, i32 %i.ei, i64 2
  %i.en = insertelement <4 x i32> %i.em, i32 %i.ej, i64 3 ; 2 uses
  %i.eo = add nsw <4 x i32> %i.en, %i.eb          ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bq, i64 76
  %i.er = getelementptr inbounds nuw i8, ptr %i.bs, i64 140
  %i.es = getelementptr inbounds nuw i8, ptr %i.bu, i64 204
  %i.et = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.eu = load i32, ptr %i.eq, align 4, !tbaa !4
  %i.ev = load i32, ptr %i.er, align 4, !tbaa !4
  %i.ew = load i32, ptr %i.es, align 4, !tbaa !4
  %i.ex = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 3 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bu, i64 208
  %i.ff = load i32, ptr %i.fb, align 8, !tbaa !4
  %i.fg = load i32, ptr %i.fc, align 8, !tbaa !4
  %i.fh = load i32, ptr %i.fd, align 8, !tbaa !4
  %i.fi = load i32, ptr %i.fe, align 8, !tbaa !4
  %i.fj = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fg, i64 1
  %i.fl = insertelement <4 x i32> %i.fk, i32 %i.fh, i64 2
  %i.fm = insertelement <4 x i32> %i.fl, i32 %i.fi, i64 3 ; 2 uses
  %i.fn = add nsw <4 x i32> %i.fm, %i.fa          ; 2 uses
  %i.fo = add nsw <4 x i32> %i.fn, %i.cq          ; 2 uses
  %i.fp = add nsw <4 x i32> %i.eo, %i.dp          ; 2 uses
  %i.fq = sub nsw <4 x i32> %i.cq, %i.fn          ; 2 uses
  %i.fr = sub nsw <4 x i32> %i.dp, %i.eo          ; 2 uses
  %i.fs = sub nsw <4 x i32> %i.cd, %i.cp          ; 4 uses
  %i.ft = sub nsw <4 x i32> %i.dc, %i.do          ; 4 uses
  %i.fu = sub nsw <4 x i32> %i.eb, %i.en          ; 4 uses
  %i.fv = sub nsw <4 x i32> %i.fa, %i.fm          ; 4 uses
  %i.fw = ashr <4 x i32> %i.fs, splat (i32 1)
  %i.fx = add <4 x i32> %i.fw, %i.fs
  %i.fy = add <4 x i32> %i.fx, %i.ft
  %i.fz = add <4 x i32> %i.fy, %i.fu              ; 2 uses
  %i.ga = ashr <4 x i32> %i.fu, splat (i32 1)
  %i.gb = add <4 x i32> %i.fu, %i.ga
  %i.gc = add <4 x i32> %i.gb, %i.fv
  %i.gd = sub <4 x i32> %i.fs, %i.gc              ; 2 uses
  %i.ge = ashr <4 x i32> %i.ft, splat (i32 1)
  %i.gf = add <4 x i32> %i.ft, %i.ge
  %i.gg = sub <4 x i32> %i.fs, %i.gf
  %i.gh = add <4 x i32> %i.gg, %i.fv              ; 2 uses
  %i.gi = sub nsw <4 x i32> %i.ft, %i.fu
  %i.gj = ashr <4 x i32> %i.fv, splat (i32 1)
  %i.gk = add <4 x i32> %i.fv, %i.gi
  %i.gl = add <4 x i32> %i.gk, %i.gj              ; 2 uses
  %i.gm = add nsw <4 x i32> %i.fo, %i.fp
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x i32> %i.gm, ptr %i.gn, align 16, !tbaa !4
  %i.go = ashr <4 x i32> %i.fr, splat (i32 1)
  %i.gp = add nsw <4 x i32> %i.fq, %i.go
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index
  store <4 x i32> %i.gp, ptr %i.gq, align 16, !tbaa !4
  %i.gr = sub nsw <4 x i32> %i.fo, %i.fp
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index
end_hunk_0
begin_hunk_1_@dct_luma8x8:bb.a
  %i.hi = icmp eq i64 %index.next, 8
  br i1 %i.hi, label %.preheader504, label %vector.body, !llvm.loop !95

.preheader504:                                    ; preds = %vector.body
  %i.hj = getelementptr inbounds nuw i8, ptr %i.h, i64 13264
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 13392
  %i.hl = getelementptr inbounds nuw i8, ptr %i.h, i64 13520
  %i.hm = getelementptr inbounds nuw i8, ptr %i.h, i64 13200
  %i.hn = getelementptr inbounds nuw i8, ptr %i.h, i64 13328
  %i.ho = getelementptr inbounds nuw i8, ptr %i.h, i64 13456
  %i.hp = getelementptr inbounds nuw i8, ptr %i.h, i64 13584
  br label %vector.body577

vector.body577:                                   ; preds = %vector.body577, %.preheader504
  %index578 = phi i64 [ 0, %.preheader504 ], [ %index.next579, %vector.body577 ] ; 13 uses
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %index578 ; 8 uses
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %index578 ; 8 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %index578 ; 8 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %index578 ; 8 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 96
  %i.hx = load i32, ptr %i.hq, align 16, !tbaa !4
  %i.hy = load i32, ptr %i.hs, align 16, !tbaa !4
  %i.hz = load i32, ptr %i.hu, align 16, !tbaa !4
  %i.ia = load i32, ptr %i.hw, align 16, !tbaa !4
  %i.ib = insertelement <4 x i32> poison, i32 %i.hx, i64 0
  %i.ic = insertelement <4 x i32> %i.ib, i32 %i.hy, i64 1
  %i.id = insertelement <4 x i32> %i.ic, i32 %i.hz, i64 2
  %i.ie = insertelement <4 x i32> %i.id, i32 %i.ia, i64 3 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 28
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hr, i64 60
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 92
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hv, i64 124
  %i.ij = load i32, ptr %i.if, align 4, !tbaa !4
  %i.ik = load i32, ptr %i.ig, align 4, !tbaa !4
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !4
  %i.im = load i32, ptr %i.ii, align 4, !tbaa !4
  %i.in = insertelement <4 x i32> poison, i32 %i.ij, i64 0
  %i.io = insertelement <4 x i32> %i.in, i32 %i.ik, i64 1
  %i.ip = insertelement <4 x i32> %i.io, i32 %i.il, i64 2
  %i.iq = insertelement <4 x i32> %i.ip, i32 %i.im, i64 3 ; 2 uses
  %i.ir = add nsw <4 x i32> %i.iq, %i.ie          ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.hr, i64 36
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ht, i64 68
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hv, i64 100
  %i.iw = load i32, ptr %i.is, align 4, !tbaa !4
  %i.ix = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iy = load i32, ptr %i.iu, align 4, !tbaa !4
  %i.iz = load i32, ptr %i.iv, align 4, !tbaa !4
  %i.ja = insertelement <4 x i32> poison, i32 %i.iw, i64 0
  %i.jb = insertelement <4 x i32> %i.ja, i32 %i.ix, i64 1
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iy, i64 2
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iz, i64 3 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hv, i64 120
  %i.ji = load i32, ptr %i.je, align 8, !tbaa !4
  %i.jj = load i32, ptr %i.jf, align 8, !tbaa !4
  %i.jk = load i32, ptr %i.jg, align 8, !tbaa !4
  %i.jl = load i32, ptr %i.jh, align 8, !tbaa !4
  %i.jm = insertelement <4 x i32> poison, i32 %i.ji, i64 0
  %i.jn = insertelement <4 x i32> %i.jm, i32 %i.jj, i64 1
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.jk, i64 2
  %i.jp = insertelement <4 x i32> %i.jo, i32 %i.jl, i64 3 ; 2 uses
  %i.jq = add nsw <4 x i32> %i.jp, %i.jd          ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hv, i64 104
  %i.jv = load i32, ptr %i.jr, align 8, !tbaa !4
  %i.jw = load i32, ptr %i.js, align 8, !tbaa !4
  %i.jx = load i32, ptr %i.jt, align 8, !tbaa !4
  %i.jy = load i32, ptr %i.ju, align 8, !tbaa !4
  %i.jz = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %i.ka = insertelement <4 x i32> %i.jz, i32 %i.jw, i64 1
  %i.kb = insertelement <4 x i32> %i.ka, i32 %i.jx, i64 2
  %i.kc = insertelement <4 x i32> %i.kb, i32 %i.jy, i64 3 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hr, i64 52
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ht, i64 84
  %i.kg = getelementptr inbounds nuw i8, ptr %i.hv, i64 116
  %i.kh = load i32, ptr %i.kd, align 4, !tbaa !4
  %i.ki = load i32, ptr %i.ke, align 4, !tbaa !4
  %i.kj = load i32, ptr %i.kf, align 4, !tbaa !4
  %i.kk = load i32, ptr %i.kg, align 4, !tbaa !4
  %i.kl = insertelement <4 x i32> poison, i32 %i.kh, i64 0
  %i.km = insertelement <4 x i32> %i.kl, i32 %i.ki, i64 1
  %i.kn = insertelement <4 x i32> %i.km, i32 %i.kj, i64 2
  %i.ko = insertelement <4 x i32> %i.kn, i32 %i.kk, i64 3 ; 2 uses
  %i.kp = add nsw <4 x i32> %i.ko, %i.kc          ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hr, i64 44
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ht, i64 76
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hv, i64 108
  %i.ku = load i32, ptr %i.kq, align 4, !tbaa !4
  %i.kv = load i32, ptr %i.kr, align 4, !tbaa !4
  %i.kw = load i32, ptr %i.ks, align 4, !tbaa !4
  %i.kx = load i32, ptr %i.kt, align 4, !tbaa !4
  %i.ky = insertelement <4 x i32> poison, i32 %i.ku, i64 0
  %i.kz = insertelement <4 x i32> %i.ky, i32 %i.kv, i64 1
  %i.la = insertelement <4 x i32> %i.kz, i32 %i.kw, i64 2
  %i.lb = insertelement <4 x i32> %i.la, i32 %i.kx, i64 3 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.le = getelementptr inbounds nuw i8, ptr %i.ht, i64 80
  %i.lf = getelementptr inbounds nuw i8, ptr %i.hv, i64 112
  %i.lg = load i32, ptr %i.lc, align 16, !tbaa !4
  %i.lh = load i32, ptr %i.ld, align 16, !tbaa !4
  %i.li = load i32, ptr %i.le, align 16, !tbaa !4
  %i.lj = load i32, ptr %i.lf, align 16, !tbaa !4
  %i.lk = insertelement <4 x i32> poison, i32 %i.lg, i64 0
  %i.ll = insertelement <4 x i32> %i.lk, i32 %i.lh, i64 1
  %i.lm = insertelement <4 x i32> %i.ll, i32 %i.li, i64 2
  %i.ln = insertelement <4 x i32> %i.lm, i32 %i.lj, i64 3 ; 2 uses
  %i.lo = add nsw <4 x i32> %i.ln, %i.lb          ; 2 uses
  %i.lp = add nsw <4 x i32> %i.lo, %i.ir          ; 2 uses
  %i.lq = add nsw <4 x i32> %i.kp, %i.jq          ; 2 uses
  %i.lr = sub nsw <4 x i32> %i.ir, %i.lo          ; 2 uses
  %i.ls = sub nsw <4 x i32> %i.jq, %i.kp          ; 2 uses
  %i.lt = sub nsw <4 x i32> %i.ie, %i.iq          ; 4 uses
  %i.lu = sub nsw <4 x i32> %i.jd, %i.jp          ; 4 uses
  %i.lv = sub nsw <4 x i32> %i.kc, %i.ko          ; 4 uses
  %i.lw = sub nsw <4 x i32> %i.lb, %i.ln          ; 4 uses
  %i.lx = ashr <4 x i32> %i.lt, splat (i32 1)
  %i.ly = add <4 x i32> %i.lx, %i.lt
  %i.lz = add <4 x i32> %i.ly, %i.lu
  %i.ma = add <4 x i32> %i.lz, %i.lv              ; 2 uses
  %i.mb = ashr <4 x i32> %i.lv, splat (i32 1)
  %i.mc = add <4 x i32> %i.lv, %i.mb
  %i.md = add <4 x i32> %i.mc, %i.lw
  %i.me = sub <4 x i32> %i.lt, %i.md              ; 2 uses
  %i.mf = ashr <4 x i32> %i.lu, splat (i32 1)
  %i.mg = add <4 x i32> %i.lu, %i.mf
  %i.mh = sub <4 x i32> %i.lt, %i.mg
  %i.mi = add <4 x i32> %i.mh, %i.lw              ; 2 uses
  %i.mj = sub nsw <4 x i32> %i.lu, %i.lv
  %i.mk = ashr <4 x i32> %i.lw, splat (i32 1)
  %i.ml = add <4 x i32> %i.lw, %i.mj
  %i.mm = add <4 x i32> %i.ml, %i.mk              ; 2 uses
  %i.mn = add nsw <4 x i32> %i.lp, %i.lq
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index578
  store <4 x i32> %i.mn, ptr %i.mo, align 4, !tbaa !4
  %i.mp = ashr <4 x i32> %i.ls, splat (i32 1)
  %i.mq = add nsw <4 x i32> %i.lr, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index578
  store <4 x i32> %i.mq, ptr %i.mr, align 4, !tbaa !4
  %i.ms = sub nsw <4 x i32> %i.lp, %i.lq
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %index578
  store <4 x i32> %i.ms, ptr %i.mt, align 4, !tbaa !4
  %i.mu = ashr <4 x i32> %i.lr, splat (i32 1)
  %i.mv = sub nsw <4 x i32> %i.mu, %i.ls
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index578
  store <4 x i32> %i.mv, ptr %i.mw, align 4, !tbaa !4
  %i.mx = ashr <4 x i32> %i.mm, splat (i32 2)
  %i.my = add nsw <4 x i32> %i.mx, %i.ma
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index578
  store <4 x i32> %i.my, ptr %i.mz, align 4, !tbaa !4
  %i.na = ashr <4 x i32> %i.mi, splat (i32 2)
  %i.nb = add nsw <4 x i32> %i.me, %i.na
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index578
  store <4 x i32> %i.nb, ptr %i.nc, align 4, !tbaa !4
  %i.nd = ashr <4 x i32> %i.me, splat (i32 2)
  %i.ne = sub nsw <4 x i32> %i.mi, %i.nd
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %index578
  store <4 x i32> %i.ne, ptr %i.nf, align 4, !tbaa !4
  %i.ng = ashr <4 x i32> %i.ma, splat (i32 2)
  %i.nh = sub nsw <4 x i32> %i.ng, %i.mm
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %index578
  store <4 x i32> %i.nh, ptr %i.ni, align 4, !tbaa !4
  %index.next579 = add nuw i64 %index578, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next579, 8
  br i1 %i.nj, label %middle.block580, label %vector.body577, !llvm.loop !98

middle.block580:                                  ; preds = %vector.body577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 -1, i64 16, i1 false)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 15260
  %i.nl = add nsw i32 %i.ak, 17
  %i.nm = shl nuw i32 1, %i.ao
  %i.nn = getelementptr inbounds nuw i8, ptr %i.h, i64 14184
  %i.no = getelementptr inbounds nuw i8, ptr %i.w, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.np = load ptr, ptr @input, align 8           ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4008
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 4180 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %middle.block580, %bb.r
  %indvars.iv530 = phi i64 [ 0, %middle.block580 ], [ %indvars.iv.next531, %bb.r ] ; 3 uses
  %.0511 = phi i32 [ 0, %middle.block580 ], [ %.1, %bb.r ]
  %.0431510 = phi i32 [ -1, %middle.block580 ], [ %.2433, %bb.r ]
  %.0436509 = phi i32 [ 0, %middle.block580 ], [ %.2438, %bb.r ] ; 4 uses
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv530 ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 2, !tbaa !47  ; 2 uses
  %i.nu = zext i8 %i.nt to i32
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !47  ; 2 uses
  %i.nx = zext i8 %i.nw to i32
  %i.ny = and i64 %indvars.iv530, 3               ; 6 uses
  %i.nz = add nsw i32 %.0431510, 1                ; 4 uses
  %.0..sroa_stride586 = shl nuw nsw i64 %i.ny, 2
  %.0..sroa_idx588 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0..sroa_stride586
  %i.oa = load i32, ptr %.0..sroa_idx588, align 4, !tbaa !4
  %i.ob = add nsw i32 %i.oa, 1                    ; 3 uses
  %.0..sroa_stride583 = shl nuw nsw i64 %i.ny, 2
  %.0..sroa_idx585 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0..sroa_stride583
  store i32 %i.ob, ptr %.0..sroa_idx585, align 4, !tbaa !4
  %i.oc = zext i8 %i.nw to i64                    ; 4 uses
  %i.od = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %i.oc
  %i.oe = zext i8 %i.nt to i64                    ; 4 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.oe ; 5 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !4
  %i.oh = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.og, i1 true)
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.oc
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !56
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.oe
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !4
  %i.om = mul nsw i32 %i.ol, %i.oh                ; 2 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.oc
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !56
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.oe
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !4
  %i.or = add nsw i32 %i.oq, %i.om
  %i.os = ashr i32 %i.or, %i.ao                   ; 7 uses
  %i.ot = load i32, ptr %i.nk, align 4, !tbaa !67
  %.not457 = icmp eq i32 %i.ot, 0
  br i1 %.not457, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ou = icmp eq i32 %i.os, 0
  br i1 %i.ou, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ov = load i32, ptr @AdaptRndWeight, align 4, !tbaa !4
  %i.ow = shl i32 %i.os, %i.ao
  %i.ox = sub nsw i32 %i.om, %i.ow
  %i.oy = mul nsw i32 %i.ov, %i.ox
  %i.oz = add nsw i32 %i.oy, %i.nm
  %i.pa = ashr i32 %i.oz, %i.nl
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.pb = phi i32 [ %i.pa, %bb.f ], [ 0, %bb.e ]
  %i.pc = load ptr, ptr %i.nn, align 8, !tbaa !68
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.pc, i64 %i.aq
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !54
  %i.pf = add nsw i32 %i.g, %i.nx
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.pe, i64 %i.pg
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !56
  %i.pj = add nuw nsw i32 %i.e, %i.nu
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.pk
  store i32 %i.pb, ptr %i.pl, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.not458 = icmp eq i32 %i.os, 0
  br i1 %.not458, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.pm = load i32, ptr %i.no, align 8, !tbaa !99
  %.not459 = icmp eq i32 %i.pm, 0
  br i1 %.not459, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.pn = load i32, ptr %i.nq, align 8, !tbaa !89
  %i.po = icmp eq i32 %i.pn, 0
  br i1 %i.po, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.pp = icmp sgt i32 %i.os, 1
  br i1 %i.pp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.pq = load i32, ptr %i.nr, align 4, !tbaa !100
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr inbounds [64 x i8], ptr @COEFF_COST8x8, i64 %i.pr
  %i.pt = sext i32 %i.ob to i64
  %i.pu = getelementptr inbounds i8, ptr %i.ps, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !47
  %i.pw = zext i8 %i.pv to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.px = phi i32 [ %i.pw, %bb.l ], [ 999999, %bb.k ]
  %i.py = load i32, ptr %1, align 4, !tbaa !4
  %i.pz = add nsw i32 %i.py, %i.px
  store i32 %i.pz, ptr %1, align 4, !tbaa !4
  %i.qa = load i32, ptr %i.of, align 4, !tbaa !4
  %i.qb = icmp slt i32 %i.qa, 0
  %i.qc = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 range(i32 1, 0) %i.os, i1 true) ; 3 uses
  %i.qd = sub nsw i32 0, %i.qc                    ; 2 uses
  %i.qe = select i1 %i.qb, i32 %i.qd, i32 %i.qc
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ny
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !54 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !56
  %.0..sroa_stride602 = shl nuw nsw i64 %i.ny, 2
  %.0..sroa_idx604 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0..sroa_stride602
  %i.qi = load i32, ptr %.0..sroa_idx604, align 4, !tbaa !4 ; 2 uses
  %i.qj = sext i32 %i.qi to i64                   ; 2 uses
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.qj
  store i32 %i.qe, ptr %i.qk, align 4, !tbaa !4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !56
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.qj
  store i32 %i.ob, ptr %i.qn, align 4, !tbaa !4
  %i.qo = add nsw i32 %i.qi, 1
  %.0..sroa_stride599 = shl nuw nsw i64 %i.ny, 2
  %.0..sroa_idx601 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0..sroa_stride599
  store i32 %i.qo, ptr %.0..sroa_idx601, align 4, !tbaa !4
  %.0..sroa_stride = shl nuw nsw i64 %i.ny, 2
  %.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0..sroa_stride
  store i32 -1, ptr %.0..sroa_idx, align 4, !tbaa !4
  br label %bb.q

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.qp = icmp sgt i32 %i.os, 1
  br i1 %i.qp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.qq = load i32, ptr %i.nr, align 4, !tbaa !100
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds [64 x i8], ptr @COEFF_COST8x8, i64 %i.qr
  %i.qt = sext i32 %i.nz to i64
  %i.qu = getelementptr inbounds i8, ptr %i.qs, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !47
  %i.qw = zext i8 %i.qv to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.qx = phi i32 [ %i.qw, %bb.o ], [ 999999, %bb.n ]
  %i.qy = load i32, ptr %1, align 4, !tbaa !4
  %i.qz = add nsw i32 %i.qy, %i.qx
  store i32 %i.qz, ptr %1, align 4, !tbaa !4
  %i.ra = load i32, ptr %i.of, align 4, !tbaa !4
  %i.rb = icmp slt i32 %i.ra, 0
  %i.rc = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 range(i32 1, 0) %i.os, i1 true) ; 3 uses
  %i.rd = sub nsw i32 0, %i.rc                    ; 2 uses
  %i.re = select i1 %i.rb, i32 %i.rd, i32 %i.rc
  %i.rf = sext i32 %.0436509 to i64               ; 2 uses
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.rf
  store i32 %i.re, ptr %i.rg, align 4, !tbaa !4
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.rf
  store i32 %i.nz, ptr %i.rh, align 4, !tbaa !4
  %i.ri = add nsw i32 %.0436509, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pre-phi568 = phi i32 [ %i.rd, %bb.p ], [ %i.qd, %bb.m ]
  %.pre-phi = phi i32 [ %i.rc, %bb.p ], [ %i.qc, %bb.m ]
  %.1437 = phi i32 [ %i.ri, %bb.p ], [ %.0436509, %bb.m ]
  %.1432 = phi i32 [ -1, %bb.p ], [ %i.nz, %bb.m ]
  %i.rj = load i32, ptr %i.of, align 4, !tbaa !4
  %i.rk = icmp slt i32 %i.rj, 0
  %i.rl = select i1 %i.rk, i32 %.pre-phi568, i32 %.pre-phi
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.oc
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !56
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %i.oe
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !4
  %i.rq = mul nsw i32 %i.rl, %i.rp
  %i.rr = shl i32 %i.rq, %i.ak
  %i.rs = add nsw i32 %i.rr, 32
  %i.rt = ashr i32 %i.rs, 6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %.0444 = phi i32 [ %i.rt, %bb.q ], [ 0, %bb.h ]
  %.2438 = phi i32 [ %.1437, %bb.q ], [ %.0436509, %bb.h ] ; 2 uses
  %.2433 = phi i32 [ %.1432, %bb.q ], [ %i.nz, %bb.h ]
  %.1 = phi i32 [ 1, %bb.q ], [ %.0511, %bb.h ]   ; 2 uses
  store i32 %.0444, ptr %i.of, align 4, !tbaa !4
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond533.not = icmp eq i64 %indvars.iv.next531, 64
  br i1 %exitcond533.not, label %.loopexit502, label %bb.d, !llvm.loop !101

bb.s:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 -1, i64 16, i1 false)
  %i.ru = getelementptr inbounds nuw i8, ptr %i.h, i64 13136
  %i.rv = getelementptr inbounds nuw i8, ptr %i.h, i64 15260
  %i.rw = getelementptr inbounds nuw i8, ptr %i.h, i64 14184
  %i.rx = getelementptr inbounds nuw i8, ptr %i.w, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ry = load ptr, ptr @input, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 4008
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.aa
  %indvars.iv534 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next535, %bb.aa ] ; 3 uses
  %.2515 = phi i32 [ 0, %bb.s ], [ %.3, %bb.aa ]
  %.3434514 = phi i32 [ -1, %bb.s ], [ %.5, %bb.aa ]
  %.3439513 = phi i32 [ 0, %bb.s ], [ %.5441, %bb.aa ] ; 4 uses
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv534 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 2, !tbaa !47  ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 1
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !47  ; 2 uses
  %i.se = and i64 %indvars.iv534, 3               ; 6 uses
  %i.sf = add nsw i32 %.3434514, 1                ; 3 uses
  %.0..sroa_stride595 = shl nuw nsw i64 %i.se, 2
  %.0..sroa_idx597 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0..sroa_stride595
  %i.sg = load i32, ptr %.0..sroa_idx597, align 4, !tbaa !4
  %i.sh = add nsw i32 %i.sg, 1                    ; 2 uses
  %.0..sroa_stride592 = shl nuw nsw i64 %i.se, 2
  %.0..sroa_idx594 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0..sroa_stride592
  store i32 %i.sh, ptr %.0..sroa_idx594, align 4, !tbaa !4
  %i.si = zext i8 %i.sd to i64
  %i.sj = getelementptr inbounds nuw [64 x i8], ptr %i.ru, i64 %i.si
  %i.sk = zext i8 %i.sb to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.sk ; 3 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !4  ; 2 uses
  %i.sn = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sm, i1 true) ; 4 uses
  %i.so = load i32, ptr %i.rv, align 4, !tbaa !67
  %.not462 = icmp eq i32 %i.so, 0
  br i1 %.not462, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.sp = zext i8 %i.sb to i32
  %i.sq = zext i8 %i.sd to i32
  %i.sr = load ptr, ptr %i.rw, align 8, !tbaa !68
  %i.ss = getelementptr inbounds [8 x i8], ptr %i.sr, i64 %i.aq
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !54
  %i.su = add nsw i32 %i.g, %i.sq
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.sv
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !56
  %i.sy = add nuw nsw i32 %i.e, %i.sp
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.sz
  store i32 0, ptr %i.ta, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not463 = icmp eq i32 %i.sm, 0
  br i1 %.not463, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.tb = load i32, ptr %i.rx, align 8, !tbaa !99
  %.not464 = icmp eq i32 %i.tb, 0
  br i1 %.not464, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.tc = load i32, ptr %i.rz, align 8, !tbaa !89
  %i.td = icmp eq i32 %i.tc, 0
  br i1 %i.td, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.te = load i32, ptr %1, align 4, !tbaa !4
  %i.tf = add nsw i32 %i.te, 999999
  store i32 %i.tf, ptr %1, align 4, !tbaa !4
  %i.tg = load i32, ptr %i.sl, align 4, !tbaa !4
  %i.th = icmp slt i32 %i.tg, 0
  %i.ti = sub nsw i32 0, %i.sn
  %i.tj = select i1 %i.th, i32 %i.ti, i32 %i.sn
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.se
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !54 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !56
  %.0..sroa_stride609 = shl nuw nsw i64 %i.se, 2
  %.0..sroa_idx611 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0..sroa_stride609
  %i.tn = load i32, ptr %.0..sroa_idx611, align 4, !tbaa !4 ; 2 uses
  %i.to = sext i32 %i.tn to i64                   ; 2 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.to
  store i32 %i.tj, ptr %i.tp, align 4, !tbaa !4
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !56
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.to
  store i32 %i.sh, ptr %i.ts, align 4, !tbaa !4
  %i.tt = add nsw i32 %i.tn, 1
  %.0..sroa_stride606 = shl nuw nsw i64 %i.se, 2
  %.0..sroa_idx608 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0..sroa_stride606
  store i32 %i.tt, ptr %.0..sroa_idx608, align 4, !tbaa !4
  %.0..sroa_stride589 = shl nuw nsw i64 %i.se, 2
  %.0..sroa_idx591 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0..sroa_stride589
  store i32 -1, ptr %.0..sroa_idx591, align 4, !tbaa !4
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.tu = load i32, ptr %1, align 4, !tbaa !4
  %i.tv = add nsw i32 %i.tu, 999999
  store i32 %i.tv, ptr %1, align 4, !tbaa !4
  %i.tw = load i32, ptr %i.sl, align 4, !tbaa !4
  %i.tx = icmp slt i32 %i.tw, 0
  %i.ty = sub nsw i32 0, %i.sn
  %i.tz = select i1 %i.tx, i32 %i.ty, i32 %i.sn
  %i.ua = sext i32 %.3439513 to i64               ; 2 uses
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ua
  store i32 %i.tz, ptr %i.ub, align 4, !tbaa !4
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ua
  store i32 %i.sf, ptr %i.uc, align 4, !tbaa !4
  %i.ud = add nsw i32 %.3439513, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.v
  %.5441 = phi i32 [ %.3439513, %bb.v ], [ %.3439513, %bb.y ], [ %i.ud, %bb.z ] ; 2 uses
  %.5 = phi i32 [ %i.sf, %bb.v ], [ %i.sf, %bb.y ], [ -1, %bb.z ]
  %.3 = phi i32 [ %.2515, %bb.v ], [ 1, %bb.y ], [ 1, %bb.z ] ; 2 uses
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %exitcond537.not = icmp eq i64 %indvars.iv.next535, 64
  br i1 %exitcond537.not, label %.loopexit502, label %bb.t, !llvm.loop !102

.loopexit502:                                     ; preds = %bb.r, %bb.aa
  %.6 = phi i32 [ %.5441, %bb.aa ], [ %.2438, %bb.r ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.aa ], [ %.1, %bb.r ]
  %i.ue = getelementptr inbounds nuw i8, ptr %i.w, i64 472
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !99
  %.not460 = icmp eq i32 %i.uf, 0
  br i1 %.not460, label %.loopexit501, label %bb.ab

bb.ab:                                            ; preds = %.loopexit502
  %i.ug = load ptr, ptr @input, align 8, !tbaa !8
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 4008
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !89
  %.not461 = icmp eq i32 %i.ui, 0
  br i1 %.not461, label %.preheader500.preheader, label %.loopexit501

.preheader500.preheader:                          ; preds = %bb.ab
  %i.uj = load i32, ptr %i.b, align 16, !tbaa !4
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.uk
  store i32 0, ptr %i.ul, align 4, !tbaa !4
  %i.um = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !54
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !56
  %i.up = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !4
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.ur
  store i32 0, ptr %i.us, align 4, !tbaa !4
  %i.ut = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !54
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !56
  %i.uw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !4
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.uy
  store i32 0, ptr %i.uz, align 4, !tbaa !4
  %i.va = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !54
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !56
  %i.vd = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !4
  br label %.loopexit501

.loopexit501:                                     ; preds = %.loopexit502, %bb.ab, %.preheader500.preheader
  %.sink = phi i32 [ %i.ve, %.preheader500.preheader ], [ %.6, %bb.ab ], [ %.6, %.loopexit502 ]
  %.sink572 = phi ptr [ %i.vc, %.preheader500.preheader ], [ %i.o, %bb.ab ], [ %i.o, %.loopexit502 ]
  %i.vf = sext i32 %.sink to i64
  %i.vg = getelementptr inbounds [4 x i8], ptr %.sink572, i64 %i.vf
  store i32 0, ptr %i.vg, align 4, !tbaa !4
  br i1 %i.ad, label %.preheader, label %.preheader499

.preheader499:                                    ; preds = %.loopexit501
  %i.vh = getelementptr inbounds nuw i8, ptr %i.h, i64 13136 ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.vj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.vl = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.vm = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.vn = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.vo = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  br label %bb.ac

.preheader:                                       ; preds = %.loopexit501
  %i.vp = getelementptr inbounds nuw i8, ptr %i.h, i64 180
  %i.vq = getelementptr inbounds nuw i8, ptr %i.h, i64 13136
  %i.vr = getelementptr inbounds nuw i8, ptr %i.h, i64 12624
  %i.vs = load ptr, ptr @enc_picture, align 8, !tbaa !58
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 6440
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !60
  %i.vv = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.vw = zext nneg i32 %i.e to i64               ; 8 uses
  %i.vx = sext i32 %i.g to i64
  %.pre567 = load i32, ptr %i.vv, align 8, !tbaa !10
  %i.vy = or disjoint i64 %i.vw, 1                ; 2 uses
  %i.vz = trunc nuw nsw i64 %i.vy to i32
  %i.wa = or disjoint i64 %i.vw, 2                ; 2 uses
  %i.wb = trunc nuw nsw i64 %i.wa to i32
  %i.wc = or disjoint i64 %i.vw, 3                ; 2 uses
  %i.wd = trunc nuw nsw i64 %i.wc to i32
  %i.we = or disjoint i64 %i.vw, 4                ; 2 uses
  %i.wf = trunc nuw nsw i64 %i.we to i32
  %i.wg = or disjoint i64 %i.vw, 5                ; 2 uses
  %i.wh = trunc nuw nsw i64 %i.wg to i32
  %i.wi = or disjoint i64 %i.vw, 6                ; 2 uses
  %i.wj = trunc nuw nsw i64 %i.wi to i32
  %i.wk = or disjoint i64 %i.vw, 7                ; 2 uses
  %i.wl = trunc nuw nsw i64 %i.wk to i32
  br label %bb.af

.preheader498:                                    ; preds = %bb.ac
  %i.wm = getelementptr inbounds nuw i8, ptr %i.h, i64 13200
  %i.wn = getelementptr inbounds nuw i8, ptr %i.h, i64 13264
  %i.wo = getelementptr inbounds nuw i8, ptr %i.h, i64 13328
  %i.wp = getelementptr inbounds nuw i8, ptr %i.h, i64 13392
  %i.wq = getelementptr inbounds nuw i8, ptr %i.h, i64 13456
  %i.wr = getelementptr inbounds nuw i8, ptr %i.h, i64 13520
  %i.ws = getelementptr inbounds nuw i8, ptr %i.h, i64 13584
  br label %bb.ad

bb.ac:                                            ; preds = %.preheader499, %bb.ac
  %indvars.iv542 = phi i64 [ 0, %.preheader499 ], [ %indvars.iv.next543, %bb.ac ] ; 10 uses
  %i.wt = getelementptr inbounds nuw [64 x i8], ptr %i.vh, i64 %indvars.iv542 ; 8 uses
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !4  ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !4  ; 2 uses
  %i.wx = add nsw i32 %i.ww, %i.wu                ; 2 uses
  %i.wy = sub nsw i32 %i.wu, %i.ww                ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !4  ; 2 uses
  %i.xb = ashr i32 %i.xa, 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !4  ; 2 uses
  %i.xe = sub nsw i32 %i.xb, %i.xd                ; 2 uses
  %i.xf = ashr i32 %i.xd, 1
  %i.xg = add nsw i32 %i.xf, %i.xa                ; 2 uses
  %i.xh = add nsw i32 %i.xg, %i.wx                ; 2 uses
  %i.xi = add nsw i32 %i.xe, %i.wy                ; 2 uses
  %i.xj = sub nsw i32 %i.wy, %i.xe                ; 2 uses
  %i.xk = sub nsw i32 %i.wx, %i.xg                ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wt, i64 12
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !4  ; 4 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wt, i64 20
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !4  ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wt, i64 28
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !4  ; 4 uses
  %i.xr = ashr i32 %i.xq, 1
  %i.xs = add i32 %i.xm, %i.xq
  %i.xt = add i32 %i.xs, %i.xr
  %i.xu = sub i32 %i.xo, %i.xt                    ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !4  ; 4 uses
  %i.xx = ashr i32 %i.xm, 1
  %i.xy = add i32 %i.xx, %i.xm
  %i.xz = sub i32 %i.xq, %i.xy
  %i.ya = add i32 %i.xz, %i.xw                    ; 2 uses
  %i.yb = ashr i32 %i.xo, 1
  %i.yc = add i32 %i.xq, %i.xo
  %i.yd = add i32 %i.yc, %i.yb
  %i.ye = sub i32 %i.yd, %i.xw                    ; 2 uses
  %i.yf = add nsw i32 %i.xo, %i.xm
  %i.yg = add nsw i32 %i.yf, %i.xw
  %i.yh = ashr i32 %i.xw, 1
  %i.yi = add nsw i32 %i.yg, %i.yh                ; 2 uses
  %i.yj = ashr i32 %i.yi, 2
  %i.yk = add nsw i32 %i.yj, %i.xu                ; 2 uses
  %i.yl = ashr i32 %i.xu, 2
  %i.ym = sub nsw i32 %i.yi, %i.yl                ; 2 uses
  %i.yn = ashr i32 %i.ye, 2
  %i.yo = add nsw i32 %i.yn, %i.ya                ; 2 uses
  %i.yp = ashr i32 %i.ya, 2
  %i.yq = sub nsw i32 %i.yp, %i.ye                ; 2 uses
  %i.yr = add nsw i32 %i.ym, %i.xh
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv542
  store i32 %i.yr, ptr %i.ys, align 4, !tbaa !4
  %i.yt = add nsw i32 %i.yq, %i.xi
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv542
  store i32 %i.yt, ptr %i.yu, align 4, !tbaa !4
  %i.yv = add nsw i32 %i.yo, %i.xj
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv542
  store i32 %i.yv, ptr %i.yw, align 4, !tbaa !4
  %i.yx = add nsw i32 %i.yk, %i.xk
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv542
  store i32 %i.yx, ptr %i.yy, align 4, !tbaa !4
  %i.yz = sub nsw i32 %i.xk, %i.yk
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv542
  store i32 %i.yz, ptr %i.za, align 4, !tbaa !4
  %i.zb = sub nsw i32 %i.xj, %i.yo
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %indvars.iv542
  store i32 %i.zb, ptr %i.zc, align 4, !tbaa !4
  %i.zd = sub nsw i32 %i.xi, %i.yq
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %indvars.iv542
  store i32 %i.zd, ptr %i.ze, align 4, !tbaa !4
  %i.zf = sub nsw i32 %i.xh, %i.ym
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %indvars.iv542
end_hunk_1
begin_hunk_2_@dct_luma8x8:bb.a
  %i.aex = load i16, ptr %i.aew, align 2, !tbaa !51
  %i.aey = zext i16 %i.aex to i32
  %i.aez = shl nuw nsw i32 %i.aey, 6
  %i.afa = add i32 %i.aev, 32
  %i.afb = add i32 %i.afa, %i.aez
  %i.afc = ashr i32 %i.afb, 6
  %i.afd = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.afc, i32 0)
  %i.afe = tail call noundef i32 @llvm.smin.i32(i32 %i.afd, i32 %i.act) ; 2 uses
  store i32 %i.afe, ptr %i.aeu, align 4, !tbaa !4
  %i.aff = trunc i32 %i.afe to i16
  %i.afg = add nsw i32 %i.acs, %i.zv
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [2 x i8], ptr %i.adb, i64 %i.afh
  store i16 %i.aff, ptr %i.afi, align 2, !tbaa !51
  %i.afj = getelementptr inbounds nuw i8, ptr %i.acx, i64 16 ; 2 uses
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !4
  %i.afl = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %i.zw
  %i.afm = load i16, ptr %i.afl, align 2, !tbaa !51
  %i.afn = zext i16 %i.afm to i32
  %i.afo = shl nuw nsw i32 %i.afn, 6
  %i.afp = add i32 %i.afk, 32
  %i.afq = add i32 %i.afp, %i.afo
  %i.afr = ashr i32 %i.afq, 6
  %i.afs = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.afr, i32 0)
  %i.aft = tail call noundef i32 @llvm.smin.i32(i32 %i.afs, i32 %i.act) ; 2 uses
  store i32 %i.aft, ptr %i.afj, align 4, !tbaa !4
  %i.afu = trunc i32 %i.aft to i16
  %i.afv = add nsw i32 %i.acs, %i.zx
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [2 x i8], ptr %i.adb, i64 %i.afw
  store i16 %i.afu, ptr %i.afx, align 2, !tbaa !51
  %i.afy = load i32, ptr %i.zi, align 8, !tbaa !104 ; 4 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.acx, i64 20 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !4
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %i.zy
  %i.agc = load i16, ptr %i.agb, align 2, !tbaa !51
  %i.agd = zext i16 %i.agc to i32
  %i.age = shl nuw nsw i32 %i.agd, 6
  %i.agf = add i32 %i.aga, 32
  %i.agg = add i32 %i.agf, %i.age
  %i.agh = ashr i32 %i.agg, 6
  %i.agi = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.agh, i32 0)
  %i.agj = tail call noundef i32 @llvm.smin.i32(i32 %i.agi, i32 %i.afy) ; 2 uses
  store i32 %i.agj, ptr %i.afz, align 4, !tbaa !4
  %i.agk = trunc i32 %i.agj to i16
  %i.agl = load i32, ptr %i.zn, align 8, !tbaa !10 ; 4 uses
  %i.agm = add nsw i32 %i.agl, %i.zz
  %i.agn = sext i32 %i.agm to i64
  %i.ago = getelementptr inbounds [2 x i8], ptr %i.adb, i64 %i.agn
  store i16 %i.agk, ptr %i.ago, align 2, !tbaa !51
  %i.agp = getelementptr inbounds nuw i8, ptr %i.acx, i64 24 ; 2 uses
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !4
  %i.agr = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %i.aaa
  %i.ags = load i16, ptr %i.agr, align 2, !tbaa !51
  %i.agt = zext i16 %i.ags to i32
  %i.agu = shl nuw nsw i32 %i.agt, 6
  %i.agv = add i32 %i.agq, 32
  %i.agw = add i32 %i.agv, %i.agu
  %i.agx = ashr i32 %i.agw, 6
  %i.agy = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.agx, i32 0)
  %i.agz = tail call noundef i32 @llvm.smin.i32(i32 %i.agy, i32 %i.afy) ; 2 uses
  store i32 %i.agz, ptr %i.agp, align 4, !tbaa !4
  %i.aha = trunc i32 %i.agz to i16
  %i.ahb = add nsw i32 %i.agl, %i.aab
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds [2 x i8], ptr %i.adb, i64 %i.ahc
  store i16 %i.aha, ptr %i.ahd, align 2, !tbaa !51
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.acx, i64 28 ; 2 uses
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !4
  %i.ahg = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %i.aac
  %i.ahh = load i16, ptr %i.ahg, align 2, !tbaa !51
  %i.ahi = zext i16 %i.ahh to i32
  %i.ahj = shl nuw nsw i32 %i.ahi, 6
  %i.ahk = add i32 %i.ahf, 32
  %i.ahl = add i32 %i.ahk, %i.ahj
  %i.ahm = ashr i32 %i.ahl, 6
  %i.ahn = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ahm, i32 0)
  %i.aho = tail call noundef i32 @llvm.smin.i32(i32 %i.ahn, i32 %i.afy) ; 2 uses
  store i32 %i.aho, ptr %i.ahe, align 4, !tbaa !4
  %i.ahp = trunc i32 %i.aho to i16
  %i.ahq = add nsw i32 %i.agl, %i.aad
  %i.ahr = sext i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds [2 x i8], ptr %i.adb, i64 %i.ahr
  store i16 %i.ahp, ptr %i.ahs, align 2, !tbaa !51
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next555, 8
  br i1 %exitcond557.not, label %.loopexit, label %bb.ae, !llvm.loop !106

bb.af:                                            ; preds = %.preheader, %bb.af
  %i.aht = phi i32 [ %.pre567, %.preheader ], [ %i.akq, %bb.af ] ; 6 uses
  %indvars.iv562 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next563, %bb.af ] ; 3 uses
  %i.ahu = or disjoint i64 %indvars.iv562, %i.vx  ; 2 uses
  %i.ahv = load i32, ptr %i.vp, align 4, !tbaa !29
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw [64 x i8], ptr %i.vq, i64 %indvars.iv562 ; 9 uses
  %i.ahy = getelementptr inbounds [32 x i8], ptr %i.vr, i64 %i.ahu ; 8 uses
  %i.ahz = getelementptr [8 x i8], ptr %i.vu, i64 %i.ahu
  %i.aia = getelementptr [8 x i8], ptr %i.ahz, i64 %i.ahw
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !49 ; 8 uses
  %i.aic = load i32, ptr %i.ahx, align 4, !tbaa !4
  %i.aid = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.vw
  %i.aie = load i16, ptr %i.aid, align 2, !tbaa !51
  %i.aif = zext i16 %i.aie to i32
  %i.aig = add nsw i32 %i.aic, %i.aif             ; 2 uses
  store i32 %i.aig, ptr %i.ahx, align 4, !tbaa !4
  %i.aih = trunc i32 %i.aig to i16
  %i.aii = add nsw i32 %i.aht, %i.e
  %i.aij = sext i32 %i.aii to i64
  %i.aik = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.aij
  store i16 %i.aih, ptr %i.aik, align 2, !tbaa !51
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahx, i64 4 ; 2 uses
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !4
  %i.ain = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.vy
  %i.aio = load i16, ptr %i.ain, align 2, !tbaa !51
  %i.aip = zext i16 %i.aio to i32
  %i.aiq = add nsw i32 %i.aim, %i.aip             ; 2 uses
  store i32 %i.aiq, ptr %i.ail, align 4, !tbaa !4
  %i.air = trunc i32 %i.aiq to i16
  %i.ais = add nsw i32 %i.aht, %i.vz
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.ait
  store i16 %i.air, ptr %i.aiu, align 2, !tbaa !51
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8 ; 2 uses
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !4
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.wa
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !51
  %i.aiz = zext i16 %i.aiy to i32
  %i.aja = add nsw i32 %i.aiw, %i.aiz             ; 2 uses
  store i32 %i.aja, ptr %i.aiv, align 4, !tbaa !4
  %i.ajb = trunc i32 %i.aja to i16
  %i.ajc = add nsw i32 %i.aht, %i.wb
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.ajd
  store i16 %i.ajb, ptr %i.aje, align 2, !tbaa !51
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ahx, i64 12 ; 2 uses
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !4
  %i.ajh = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.wc
  %i.aji = load i16, ptr %i.ajh, align 2, !tbaa !51
  %i.ajj = zext i16 %i.aji to i32
  %i.ajk = add nsw i32 %i.ajg, %i.ajj             ; 2 uses
  store i32 %i.ajk, ptr %i.ajf, align 4, !tbaa !4
  %i.ajl = trunc i32 %i.ajk to i16
  %i.ajm = add nsw i32 %i.aht, %i.wd
  %i.ajn = sext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.ajn
  store i16 %i.ajl, ptr %i.ajo, align 2, !tbaa !51
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16 ; 2 uses
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !4
  %i.ajr = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.we
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !51
  %i.ajt = zext i16 %i.ajs to i32
  %i.aju = add nsw i32 %i.ajq, %i.ajt             ; 2 uses
  store i32 %i.aju, ptr %i.ajp, align 4, !tbaa !4
  %i.ajv = trunc i32 %i.aju to i16
  %i.ajw = add nsw i32 %i.aht, %i.wf
  %i.ajx = sext i32 %i.ajw to i64
  %i.ajy = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.ajx
  store i16 %i.ajv, ptr %i.ajy, align 2, !tbaa !51
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 20 ; 2 uses
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !4
  %i.akb = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.wg
  %i.akc = load i16, ptr %i.akb, align 2, !tbaa !51
  %i.akd = zext i16 %i.akc to i32
  %i.ake = add nsw i32 %i.aka, %i.akd             ; 2 uses
  store i32 %i.ake, ptr %i.ajz, align 4, !tbaa !4
  %i.akf = trunc i32 %i.ake to i16
  %i.akg = add nsw i32 %i.aht, %i.wh
  %i.akh = sext i32 %i.akg to i64
  %i.aki = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.akh
  store i16 %i.akf, ptr %i.aki, align 2, !tbaa !51
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ahx, i64 24 ; 2 uses
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !4
  %i.akl = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.wi
  %i.akm = load i16, ptr %i.akl, align 2, !tbaa !51
  %i.akn = zext i16 %i.akm to i32
  %i.ako = add nsw i32 %i.akk, %i.akn             ; 2 uses
  store i32 %i.ako, ptr %i.akj, align 4, !tbaa !4
  %i.akp = trunc i32 %i.ako to i16
  %i.akq = load i32, ptr %i.vv, align 8, !tbaa !10 ; 3 uses
  %i.akr = add nsw i32 %i.akq, %i.wj
  %i.aks = sext i32 %i.akr to i64
  %i.akt = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.aks
  store i16 %i.akp, ptr %i.akt, align 2, !tbaa !51
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ahx, i64 28 ; 2 uses
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !4
  %i.akw = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.wk
  %i.akx = load i16, ptr %i.akw, align 2, !tbaa !51
  %i.aky = zext i16 %i.akx to i32
  %i.akz = add nsw i32 %i.akv, %i.aky             ; 2 uses
  store i32 %i.akz, ptr %i.aku, align 4, !tbaa !4
  %i.ala = trunc i32 %i.akz to i16
  %i.alb = add nsw i32 %i.akq, %i.wl
  %i.alc = sext i32 %i.alb to i64
  %i.ald = getelementptr inbounds [2 x i8], ptr %i.aib, i64 %i.alc
  store i16 %i.ala, ptr %i.ald, align 2, !tbaa !51
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, 8
  br i1 %exitcond565.not, label %.loopexit, label %bb.af, !llvm.loop !107

.loopexit:                                        ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @LowPassForIntra8x8Pred(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i16, ptr %0, align 2 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 2 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 4 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %0, i64 6 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr i8, ptr %0, i64 20 ; 3 uses
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2 ; 2 uses
  %i.a = load <6 x i16>, ptr %.sroa.10.0..sroa_idx, align 2
  %i.b = load <8 x i16>, ptr %.sroa.9.0..sroa_idx, align 2
  %i.c = load <8 x i16>, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr i8, ptr %0, i64 22
  %.sroa.21.0..sroa_idx = getelementptr i8, ptr %0, i64 28 ; 3 uses
  %i.d = load <3 x i16>, ptr %.sroa.17.0..sroa_idx, align 2
  %i.e = shufflevector <3 x i16> %i.d, <3 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.f = load <4 x i16>, ptr %.sroa.17.0..sroa_idx, align 2
  %i.g = load <4 x i16>, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.22.0..sroa_idx = getelementptr i8, ptr %0, i64 30 ; 2 uses
  %i.h = load <2 x i16>, ptr %.sroa.21.0..sroa_idx, align 2
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.23.0.copyload = load i16, ptr %.sroa.23.0..sroa_idx, align 2
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 6 uses
  %.sroa.26.0..sroa_idx = getelementptr i8, ptr %0, i64 36 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr i8, ptr %0, i64 38
  %.sroa.28.0..sroa_idx = getelementptr i8, ptr %0, i64 40
  %.sroa.29.0..sroa_idx = getelementptr i8, ptr %0, i64 42
  %i.i = load <8 x i16>, ptr %.sroa.24.0..sroa_idx, align 2 ; 3 uses
  %i.j = icmp ne i32 %2, 0                        ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i16 %.sroa.0.0.copyload to i32
  %i.l = zext i16 %.sroa.9.0.copyload to i32      ; 3 uses
  %i.m = add nuw nsw i32 %i.k, 2
  %i.n = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.m, %i.o
  %i.q = add nuw nsw i32 %i.p, %i.l
  %.pre119 = add nuw nsw i32 %i.l, 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = zext i16 %.sroa.9.0.copyload to i32      ; 2 uses
  %i.s = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.t = mul nuw nsw i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.r, 2                  ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi120 = phi i32 [ %i.u, %bb.d ], [ %.pre119, %bb.c ]
  %.pre-phi118 = phi i32 [ %i.r, %bb.d ], [ %i.l, %bb.c ]
  %.pre-phi = phi i32 [ %i.s, %bb.d ], [ %i.n, %bb.c ]
  %.sroa.7.0.in.in = phi i32 [ %i.v, %bb.d ], [ %i.q, %bb.c ]
  %.sroa.7.0.in = lshr i32 %.sroa.7.0.in.in, 2
  %.sroa.7.0 = trunc nuw i32 %.sroa.7.0.in to i16
  %i.w = zext <6 x i16> %i.a to <6 x i32>
  %i.x = zext <8 x i16> %i.c to <8 x i32>         ; 3 uses
  %i.y = insertelement <8 x i32> poison, i32 %.pre-phi, i64 0
  %i.z = insertelement <8 x i32> %i.y, i32 %.pre-phi120, i64 1
  %i.aa = shufflevector <6 x i32> %i.w, <6 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.ab = shufflevector <8 x i32> %i.z, <8 x i32> %i.aa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 3 uses
  %i.ac = zext <4 x i16> %i.e to <4 x i32>        ; 3 uses
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.x, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 6, i32 7, i32 14>
  %i.ae = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ad, <8 x i32> <i32 poison, i32 2, i32 3, i32 4, i32 12, i32 13, i32 14, i32 15>
  %i.af = insertelement <8 x i32> %i.ae, i32 %.pre-phi118, i64 0
  %i.ag = shl nuw nsw <8 x i32> %i.af, splat (i32 1)
  %i.ah = add nuw nsw <8 x i32> %i.ab, <i32 2, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = add nuw nsw <8 x i32> %i.ai, %i.x
  %i.ak = lshr <8 x i32> %i.aj, splat (i32 2)
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  %i.am = zext <4 x i16> %i.g to <4 x i32>        ; 2 uses
  %i.an = shufflevector <8 x i32> %i.x, <8 x i32> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x i32> %i.ac, <4 x i32> %i.am, <4 x i32> <i32 poison, i32 2, i32 3, i32 6> ; 2 uses
  %i.ap = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aq = insertelement <4 x i32> %i.ao, i32 2, i64 0
  %i.ar = add nuw nsw <4 x i32> %i.ap, %i.aq
  %i.as = shufflevector <4 x i32> %i.ac, <4 x i32> <i32 poison, i32 2, i32 2, i32 2>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.at = add nuw nsw <4 x i32> %i.as, %i.ac
  %i.au = add nuw nsw <4 x i32> %i.at, %i.ar
  %i.av = add nuw nsw <4 x i32> %i.au, %i.am
  %i.aw = lshr <4 x i32> %i.av, splat (i32 2)
  %i.ax = trunc <4 x i32> %i.aw to <4 x i16>
  %i.ay = getelementptr i8, ptr %0, i64 26
  %i.az = load <2 x i16>, ptr %i.ay, align 2, !tbaa !51
  %i.ba = load <2 x i16>, ptr %.sroa.21.0..sroa_idx, align 2, !tbaa !51
  %i.bb = zext <2 x i16> %i.az to <2 x i32>
  %i.bc = load <2 x i16>, ptr %.sroa.22.0..sroa_idx, align 2, !tbaa !51
  %i.bd = load i16, ptr %.sroa.22.0..sroa_idx, align 2, !tbaa !51
  %i.be = zext <2 x i16> %i.ba to <2 x i32>
  %i.bf = zext <2 x i16> %i.bc to <2 x i32>       ; 2 uses
  %i.bg = zext i16 %i.bd to i32
  %i.bh = shl nuw nsw <2 x i32> %i.be, splat (i32 1)
  %i.bi = add nuw nsw <2 x i32> %i.bb, splat (i32 2)
  %i.bj = add nuw nsw <2 x i32> %i.bi, %i.bh
  %i.bk = add nuw nsw <2 x i32> %i.bj, %i.bf
  %i.bl = lshr <2 x i32> %i.bk, splat (i32 2)
  %i.bm = trunc <2 x i32> %i.bl to <2 x i16>
  %i.bn = extractelement <2 x i32> %i.bf, i64 1
  %i.bo = mul nuw nsw i32 %i.bn, 3
  %i.bp = add nuw nsw i32 %i.bg, 2
  %i.bq = add nuw nsw i32 %i.bp, %i.bo
  %i.br = lshr i32 %i.bq, 2
  %i.bs = trunc nuw i32 %i.br to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.sroa.23.0 = phi i16 [ %i.bs, %bb.e ], [ %.sroa.23.0.copyload, %bb.a ]
  %.sroa.7.1 = phi i16 [ %.sroa.7.0, %bb.e ], [ %.sroa.7.0.copyload, %bb.a ]
  %i.bt = phi <8 x i16> [ %i.al, %bb.e ], [ %i.b, %bb.a ]
  %i.bu = phi <4 x i16> [ %i.ax, %bb.e ], [ %i.f, %bb.a ]
  %i.bv = phi <2 x i16> [ %i.bm, %bb.e ], [ %i.h, %bb.a ]
  %.not56 = icmp eq i32 %1, 0
  br i1 %.not56, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = icmp ne i32 %3, 0                       ; 2 uses
  %or.cond = and i1 %i.j, %i.bw
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bx = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !51
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = load i16, ptr %0, align 2, !tbaa !51
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !51
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.by, 2
  %i.cf = add nuw nsw i32 %i.ce, %i.cb
  %i.cg = add nuw nsw i32 %i.cf, %i.cd
  %i.ch = lshr i32 %i.cg, 2
  %i.ci = trunc nuw i32 %i.ch to i16
  br label %.thread61

bb.i:                                             ; preds = %bb.g
  br i1 %i.j, label %.thread62, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.bw, label %bb.k, label %.thread59

bb.k:                                             ; preds = %bb.j
  %i.cj = load i16, ptr %0, align 2, !tbaa !51
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = mul nuw nsw i32 %i.ck, 3
  %i.cm = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !51
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = add nuw nsw i32 %i.cn, 2
  %i.cp = add nuw nsw i32 %i.co, %i.cl
  %i.cq = lshr i32 %i.cp, 2
  %i.cr = trunc nuw i32 %i.cq to i16
  br label %.thread61

bb.l:                                             ; preds = %bb.f
  %.not57 = icmp eq i32 %3, 0
  br i1 %.not57, label %.thread59, label %bb.m

.thread62:                                        ; preds = %bb.i
  %i.cs = load i16, ptr %0, align 2, !tbaa !51
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = mul nuw nsw i32 %i.ct, 3
  %i.cv = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !51
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cw, 2
  %i.cy = add nuw nsw i32 %i.cx, %i.cu
  %i.cz = lshr i32 %i.cy, 2
  %i.da = trunc nuw i32 %i.cz to i16              ; 2 uses
  %.not5763 = icmp eq i32 %3, 0
  br i1 %.not5763, label %.thread59, label %.thread62..thread61_crit_edge

.thread62..thread61_crit_edge:                    ; preds = %.thread62
  %.pre = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !51
  %.pre126 = zext i16 %.pre to i32
  br label %.thread61

.thread61:                                        ; preds = %.thread62..thread61_crit_edge, %bb.h, %bb.k
  %.pre-phi127 = phi i32 [ %.pre126, %.thread62..thread61_crit_edge ], [ %i.by, %bb.h ], [ %i.cn, %bb.k ] ; 2 uses
  %.pre-phi125 = phi i32 [ %i.ct, %.thread62..thread61_crit_edge ], [ %i.ca, %bb.h ], [ %i.ck, %bb.k ]
  %.sroa.0.0 = phi i16 [ %i.da, %.thread62..thread61_crit_edge ], [ %i.ci, %bb.h ], [ %i.cr, %bb.k ]
  %i.db = shl nuw nsw i32 %.pre-phi127, 1
  %i.dc = load i16, ptr %.sroa.26.0..sroa_idx, align 2, !tbaa !51
  %i.dd = zext i16 %i.dc to i32                   ; 3 uses
  %i.de = add nuw nsw i32 %.pre-phi125, 2
  %i.df = add nuw nsw i32 %i.de, %i.db
  %i.dg = add nuw nsw i32 %i.df, %i.dd
  %.pre123 = add nuw nsw i32 %i.dd, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.l
end_hunk_2
