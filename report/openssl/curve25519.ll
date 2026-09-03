Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/curve25519?download=true
inline.NumInlined: 218
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@x25519_sc_reduce:bb.a
  %i.rq = lshr i64 %i.qh, 19
  %i.rr = shl nuw nsw i64 %i.qk, 2
  %i.rs = or disjoint i64 %i.rr, %i.rq
  %i.rt = trunc i64 %i.rs to i8
  store i8 %i.rt, ptr %i.l, align 1, !tbaa !8
  %i.ru = lshr i64 %i.qg, 6
  %i.rv = trunc i64 %i.ru to i8
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !8
  %i.rx = lshr i64 %i.qk, 14
  %i.ry = shl nuw nsw i64 %i.qn, 7
  %i.rz = or disjoint i64 %i.ry, %i.rx
  %i.sa = trunc i64 %i.rz to i8
  store i8 %i.sa, ptr %i.o, align 1, !tbaa !8
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sc = lshr i64 %i.qj, 1
  %i.sd = trunc i64 %i.sc to i16
  store i16 %i.sd, ptr %i.sb, align 1
  %i.se = lshr i64 %i.qn, 17
  %i.sf = shl nuw nsw i64 %i.qq, 4
  %i.sg = or disjoint i64 %i.sf, %i.se
  %i.sh = trunc i64 %i.sg to i8
  store i8 %i.sh, ptr %i.z, align 1, !tbaa !8
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.sj = lshr i64 %i.qm, 4
  %i.sk = trunc i64 %i.sj to i16
  store i16 %i.sk, ptr %i.si, align 1
  %i.sl = lshr i64 %i.qq, 20
  %i.sm = shl nuw nsw i64 %i.qt, 1
  %i.sn = or disjoint i64 %i.sm, %i.sl
  %i.so = trunc i64 %i.sn to i8
  store i8 %i.so, ptr %i.ae, align 1, !tbaa !8
  %i.sp = lshr i64 %i.qp, 7
  %i.sq = trunc i64 %i.sp to i8
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !8
  %i.ss = lshr i64 %i.qt, 15
  %i.st = shl nuw nsw i64 %i.qw, 6
  %i.su = or disjoint i64 %i.st, %i.ss
  %i.sv = trunc i64 %i.su to i8
  store i8 %i.sv, ptr %i.ah, align 1, !tbaa !8
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sx = lshr i64 %i.qs, 2
  %i.sy = trunc i64 %i.sx to i16
  store i16 %i.sy, ptr %i.sw, align 1
  %i.sz = lshr i64 %i.qw, 18
  %i.ta = shl nsw i64 %i.qv, 3
  %i.tb = or disjoint i64 %i.ta, %i.sz
  %i.tc = trunc i64 %i.tb to i8
  store i8 %i.tc, ptr %i.as, align 1, !tbaa !8
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.te = lshr i64 %i.qv, 5
  %i.tf = trunc i64 %i.te to i16
  store i16 %i.tf, ptr %i.td, align 1
  %i.tg = trunc i64 %i.qy to i16
  store i16 %i.tg, ptr %i.bb, align 1
  %i.th = lshr i64 %i.qy, 16
  %i.ti = and i64 %i.th, 31
  %i.tj = shl nuw nsw i64 %i.rd, 5
  %i.tk = or disjoint i64 %i.tj, %i.ti
  %i.tl = trunc i64 %i.tk to i8
  store i8 %i.tl, ptr %i.be, align 1, !tbaa !8
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tn = lshr i64 %i.ra, 3
  %i.to = trunc i64 %i.tn to i16
  store i16 %i.to, ptr %i.tm, align 1
  %i.tp = lshr i64 %i.rd, 19
  %i.tq = shl nuw nsw i64 %i.rg, 2
  %i.tr = or disjoint i64 %i.tq, %i.tp
  %i.ts = trunc i64 %i.tr to i8
  store i8 %i.ts, ptr %i.bn, align 1, !tbaa !8
  %i.tt = lshr i64 %i.rc, 6
  %i.tu = trunc i64 %i.tt to i8
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !8
  %i.tw = lshr i64 %i.rg, 14
  %i.tx = shl nsw i64 %i.rf, 7
  %i.ty = or disjoint i64 %i.tx, %i.tw
  %i.tz = trunc i64 %i.ty to i8
  store i8 %i.tz, ptr %i.bq, align 1, !tbaa !8
  %i.ua = lshr i64 %i.rf, 1
  %i.ub = trunc i64 %i.ua to i8
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.ub, ptr %i.uc, align 1, !tbaa !8
  %i.ud = lshr i64 %i.rf, 9
  %i.ue = trunc i64 %i.ud to i8
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !8
  %i.ug = lshr i64 %i.rf, 17
  %i.uh = trunc i64 %i.ug to i8
  store i8 %i.uh, ptr %i.cb, align 1, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ge_scalarmult_base(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
.preheader.preheader:
  %2 = alloca %struct.ge_p2, align 4              ; 6 uses
  %i.a = alloca [64 x i8], align 16               ; 12 uses
  %3 = alloca %struct.ge_p1p1, align 4            ; 20 uses
  %4 = alloca %struct.ge_p2, align 4              ; 10 uses
  %5 = alloca %struct.ge_precomp, align 4         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.b = load <8 x i8>, ptr %1, align 1, !tbaa !8
  %i.c = shufflevector <8 x i8> %i.b, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.d = and <16 x i8> %i.c, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.e = lshr <16 x i8> %i.c, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.f = shufflevector <16 x i8> %i.d, <16 x i8> %i.e, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.f, ptr %i.a, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load <8 x i8>, ptr %i.g, align 1, !tbaa !8
  %i.j = shufflevector <8 x i8> %i.i, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.k = and <16 x i8> %i.j, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.l = lshr <16 x i8> %i.j, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.m = shufflevector <16 x i8> %i.k, <16 x i8> %i.l, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.m, ptr %i.h, align 16, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = load <8 x i8>, ptr %i.n, align 1, !tbaa !8
  %i.q = shufflevector <8 x i8> %i.p, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.r = and <16 x i8> %i.q, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.s = lshr <16 x i8> %i.q, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.t = shufflevector <16 x i8> %i.r, <16 x i8> %i.s, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.t, ptr %i.o, align 16, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.w = load <8 x i8>, ptr %i.u, align 1, !tbaa !8
  %i.x = shufflevector <8 x i8> %i.w, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.y = and <16 x i8> %i.x, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.z = lshr <16 x i8> %i.x, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.aa = shufflevector <16 x i8> %i.y, <16 x i8> %i.z, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.aa, ptr %i.v, align 16, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.1, %.preheader.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %.preheader.1 ] ; 4 uses
  %.03133 = phi i8 [ 0, %.preheader.preheader ], [ %i.an, %.preheader.1 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !8
  %i.ad = add i8 %i.ac, %.03133                   ; 2 uses
  %i.ae = add i8 %i.ad, 8                         ; 2 uses
  %i.af = ashr i8 %i.ae, 4                        ; 2 uses
  %i.ag = and i8 %i.ae, -16
  %i.ah = sub i8 %i.ad, %i.ag
  store i8 %i.ah, ptr %i.ab, align 2, !tbaa !8
  %exitcond.not = icmp eq i64 %indvars.iv, 62
  br i1 %exitcond.not, label %bb.a, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = add i8 %i.ak, %i.af                     ; 2 uses
  %i.am = add i8 %i.al, 8                         ; 2 uses
  %i.an = ashr i8 %i.am, 4
  %i.ao = and i8 %i.am, -16
  %i.ap = sub i8 %i.al, %i.ao
  store i8 %i.ap, ptr %i.aj, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader

bb.a:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 63 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = add i8 %i.ar, %i.af
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.au, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.at, align 4, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.aw, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.av, align 4, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ax, i8 0, i64 40, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv38 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next39, %bb.b ] ; 4 uses
  %i.bb = lshr i64 %indvars.iv38, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv38
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = trunc nuw nsw i64 %i.bb to i32
  call fastcc void @table_select(ptr noundef %5, i32 noundef %i.be, i8 noundef signext %i.bd)
  call fastcc void @ge_madd(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %5)
  call fastcc void @fe_mul(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @fe_mul(ptr noundef %i.at, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @fe_mul(ptr noundef %i.av, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @fe_mul(ptr noundef %i.ax, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.az)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 2
  %i.bf = icmp samesign ult i64 %indvars.iv38, 62
  br i1 %i.bf, label %bb.b, label %bb.c, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %2, ptr noundef nonnull readonly align 4 dereferenceable(40) %0, i64 40, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bg, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.at, i64 40, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bh, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.av, i64 40, i1 false)
  call fastcc void @ge_p2_dbl(ptr noundef nonnull %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call fastcc void @fe_mul(ptr noundef nonnull %4, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call fastcc void @fe_mul(ptr noundef %i.bi, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  call fastcc void @fe_mul(ptr noundef %i.bj, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @ge_p2_dbl(ptr noundef %3, ptr noundef %4)
  call fastcc void @fe_mul(ptr noundef nonnull %4, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @fe_mul(ptr noundef %i.bi, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @fe_mul(ptr noundef %i.bj, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @ge_p2_dbl(ptr noundef %3, ptr noundef %4)
  call fastcc void @fe_mul(ptr noundef nonnull %4, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @fe_mul(ptr noundef %i.bi, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @fe_mul(ptr noundef %i.bj, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @ge_p2_dbl(ptr noundef %3, ptr noundef %4)
  call fastcc void @fe_mul(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @fe_mul(ptr noundef %i.at, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @fe_mul(ptr noundef %i.av, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @fe_mul(ptr noundef %i.ax, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.az)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv41 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next42, %bb.d ] ; 4 uses
  %i.bk = lshr exact i64 %indvars.iv41, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv41
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !8
  %i.bn = trunc nuw nsw i64 %i.bk to i32
  call fastcc void @table_select(ptr noundef %5, i32 noundef %i.bn, i8 noundef signext %i.bm)
  call fastcc void @ge_madd(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %5)
  call fastcc void @fe_mul(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @fe_mul(ptr noundef %i.at, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @fe_mul(ptr noundef %i.av, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @fe_mul(ptr noundef %i.ax, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.az)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 2
  %i.bo = icmp samesign ult i64 %indvars.iv41, 62
  br i1 %i.bo, label %bb.d, label %bb.e, !llvm.loop !13

bb.e:                                             ; preds = %bb.d
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ge_p3_tobytes(ptr nofree noundef captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [10 x i32], align 16              ; 5 uses
  %i.c = alloca [10 x i32], align 16              ; 4 uses
  %i.d = alloca [10 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  call fastcc void @fe_invert(ptr noundef %i.b, ptr noundef %i.e)
  call fastcc void @fe_mul(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call fastcc void @fe_mul(ptr noundef %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b)
  call fastcc void @fe_tobytes(ptr noundef %0, ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @fe_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.c)
  %i.g = load i8, ptr %i.a, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = shl i8 %i.g, 7
  %i.k = xor i8 %i.i, %i.j
  store i8 %i.k, ptr %i.h, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sc_muladd(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = load i16, ptr %1, align 1
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 16
  %.masked = and i64 %i.f, 2031616
  %i.g = or disjoint i64 %.masked, %i.b           ; 12 uses
  %i.h = load i32, ptr %i.c, align 1
  %i.i = lshr i32 %i.h, 5
  %i.j = and i32 %i.i, 2097151
  %i.k = zext nneg i32 %i.j to i64                ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = or disjoint i64 %i.r, %i.n
  %i.t = lshr i64 %i.s, 2
  %i.u = and i64 %i.t, 2097151                    ; 12 uses
  %i.v = load i32, ptr %i.o, align 1
  %i.w = lshr i32 %i.v, 7
  %i.x = and i32 %i.w, 2097151
  %i.y = zext nneg i32 %i.x to i64                ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = and i32 %i.ab, 2097151
  %i.ad = zext nneg i32 %i.ac to i64              ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 16
  %i.al = or disjoint i64 %i.ak, %i.ag
  %i.am = lshr i64 %i.al, 1
  %i.an = and i64 %i.am, 2097151                  ; 12 uses
  %i.ao = load i32, ptr %i.ah, align 1
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = and i32 %i.ap, 2097151
  %i.ar = zext nneg i32 %i.aq to i64              ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.at = load i16, ptr %i.as, align 1
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 16
  %i.az = or disjoint i64 %i.ay, %i.au
  %i.ba = lshr i64 %i.az, 3                       ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 23 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 16
  %.masked949 = and i64 %i.bh, 2031616
  %i.bi = or disjoint i64 %.masked949, %i.bd      ; 12 uses
  %i.bj = load i32, ptr %i.be, align 1
  %i.bk = lshr i32 %i.bj, 5
  %i.bl = and i32 %i.bk, 2097151
  %i.bm = zext nneg i32 %i.bl to i64              ; 12 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 16
  %i.bu = or disjoint i64 %i.bt, %i.bp
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = and i64 %i.bv, 2097151                  ; 12 uses
  %i.bx = load i32, ptr %i.bq, align 1
  %i.by = lshr i32 %i.bx, 7
  %i.bz = zext nneg i32 %i.by to i64              ; 12 uses
  %i.ca = load i16, ptr %2, align 1
  %i.cb = zext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 16
  %.masked950 = and i64 %i.cf, 2031616
  %i.cg = or disjoint i64 %.masked950, %i.cb      ; 12 uses
  %i.ch = load i32, ptr %i.cc, align 1
  %i.ci = lshr i32 %i.ch, 5
  %i.cj = and i32 %i.ci, 2097151
  %i.ck = zext nneg i32 %i.cj to i64              ; 12 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 16
  %i.cs = or disjoint i64 %i.cr, %i.cn
  %i.ct = lshr i64 %i.cs, 2
  %i.cu = and i64 %i.ct, 2097151                  ; 12 uses
  %i.cv = load i32, ptr %i.co, align 1
  %i.cw = lshr i32 %i.cv, 7
  %i.cx = and i32 %i.cw, 2097151
  %i.cy = zext nneg i32 %i.cx to i64              ; 12 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.da = load i32, ptr %i.cz, align 1
  %i.db = lshr i32 %i.da, 4
  %i.dc = and i32 %i.db, 2097151
  %i.dd = zext nneg i32 %i.dc to i64              ; 12 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.df = load i16, ptr %i.de, align 1
  %i.dg = zext i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 16
  %i.dl = or disjoint i64 %i.dk, %i.dg
  %i.dm = lshr i64 %i.dl, 1
  %i.dn = and i64 %i.dm, 2097151                  ; 12 uses
  %i.do = load i32, ptr %i.dh, align 1
  %i.dp = lshr i32 %i.do, 6
  %i.dq = and i32 %i.dp, 2097151
  %i.dr = zext nneg i32 %i.dq to i64              ; 12 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.dt = load i16, ptr %i.ds, align 1
  %i.du = zext i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8
  %i.dx = zext i8 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 16
  %i.dz = or disjoint i64 %i.dy, %i.du
  %i.ea = lshr i64 %i.dz, 3                       ; 12 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.ec = load i16, ptr %i.eb, align 1
  %i.ed = zext i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 23 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.eg = zext i8 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 16
  %.masked951 = and i64 %i.eh, 2031616
  %i.ei = or disjoint i64 %.masked951, %i.ed      ; 12 uses
  %i.ej = load i32, ptr %i.ee, align 1
  %i.ek = lshr i32 %i.ej, 5
  %i.el = and i32 %i.ek, 2097151
  %i.em = zext nneg i32 %i.el to i64              ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.eo = load i16, ptr %i.en, align 1
  %i.ep = zext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !8
  %i.es = zext i8 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 16
  %i.eu = or disjoint i64 %i.et, %i.ep
  %i.ev = lshr i64 %i.eu, 2
end_hunk_0
begin_hunk_1_@ge_frombytes_vartime:bb.a
  %i.de = add nuw nsw i64 %i.bs, 16777216         ; 2 uses
  %i.df = lshr i64 %i.de, 25
  %i.dg = add nuw nsw i64 %i.cb, %i.df            ; 2 uses
  %i.dh = and i64 %i.de, 1040187392
  %i.di = add nuw nsw i64 %i.co, 33554432         ; 2 uses
  %i.dj = lshr i64 %i.di, 26
  %i.dk = add nsw i64 %i.cu, %i.dj
  %i.dl = and i64 %i.di, 4227858432
  %i.dm = sub nsw i64 %i.co, %i.dl
  %i.dn = add nuw nsw i64 %i.cs, 33554432         ; 2 uses
  %i.do = lshr i64 %i.dn, 26
  %i.dp = add nuw nsw i64 %i.do, %i.ao
  %i.dq = sub nsw i64 %i.dp, %i.cy
  %i.dr = and i64 %i.dn, 4227858432
  %i.ds = sub nsw i64 %i.cs, %i.dr
  %i.dt = add nuw nsw i64 %i.cx, 33554432         ; 2 uses
  %i.du = lshr i64 %i.dt, 26
  %i.dv = add nsw i64 %i.dd, %i.du
  %i.dw = and i64 %i.dt, 4227858432
  %i.dx = sub nsw i64 %i.cx, %i.dw
  %i.dy = add nuw nsw i64 %i.db, 33554432         ; 2 uses
  %i.dz = lshr i64 %i.dy, 26
  %i.ea = add nuw nsw i64 %i.dz, %i.bs
  %i.eb = sub nsw i64 %i.ea, %i.dh
  %i.ec = and i64 %i.dy, 4227858432
  %i.ed = sub nsw i64 %i.db, %i.ec
  %i.ee = add nuw nsw i64 %i.dg, 33554432         ; 2 uses
  %i.ef = lshr i64 %i.ee, 26
  %i.eg = add nuw nsw i64 %i.ef, %i.ck
  %i.eh = sub nsw i64 %i.eg, %i.cp
  %i.ei = and i64 %i.ee, 4227858432
  %i.ej = sub nsw i64 %i.dg, %i.ei
  %i.ek = trunc i64 %i.dm to i32
  store i32 %i.ek, ptr %i.l, align 4, !tbaa !9
  %i.el = trunc nsw i64 %i.dk to i32
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.el, ptr %i.em, align 4, !tbaa !9
  %i.en = trunc nsw i64 %i.ds to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !9
  %i.ep = trunc nsw i64 %i.dq to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !9
  %i.er = trunc nsw i64 %i.dx to i32
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.er, ptr %i.es, align 4, !tbaa !9
  %i.et = trunc i64 %i.dv to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !9
  %i.ev = trunc i64 %i.ed to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !9
  %i.ex = trunc nsw i64 %i.eb to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !9
  %i.ez = trunc nsw i64 %i.ej to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !9
  %i.fb = trunc nsw i64 %i.eh to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.fe, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.fd, align 4, !tbaa !9
  call fastcc void @fe_sq(ptr noundef %i.g, ptr noundef %i.l)
  call fastcc void @fe_mul(ptr noundef %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull @d)
  %i.ff = load i32, ptr %i.g, align 16, !tbaa !9
  %i.fg = add nsw i32 %i.ff, -1
  store i32 %i.fg, ptr %i.g, align 16, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.fp = load i32, ptr %i.h, align 16, !tbaa !9
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.h, align 16, !tbaa !9
  call fastcc void @fe_mul(ptr noundef %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef nonnull readonly %i.i)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_mul(ptr noundef %i.e, ptr noundef nonnull readonly %i.i, ptr noundef nonnull %i.e)
  call fastcc void @fe_mul(ptr noundef %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_mul(ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_mul(ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_mul(ptr noundef %i.e, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  call fastcc void @fe_mul(ptr noundef %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_mul(ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_mul(ptr noundef %i.e, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.e)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.626.i = phi i32 [ 1, %bb.a ], [ %i.fr, %bb.b ]
  call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.f)
  %i.fr = add nuw nsw i32 %.626.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fr, 100
  br i1 %exitcond.not.i, label %fe_pow22523.exit, label %bb.b, !llvm.loop !14

fe_pow22523.exit:                                 ; preds = %bb.b
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call fastcc void @fe_mul(ptr noundef %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.e)
  call fastcc void @fe_mul(ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull readonly %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call fastcc void @fe_mul(ptr noundef %0, ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  call fastcc void @fe_sq(ptr noundef %i.j, ptr noundef %0)
  call fastcc void @fe_mul(ptr noundef %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
  %i.ft = load i32, ptr %i.j, align 16, !tbaa !9  ; 2 uses
  %i.fu = load i32, ptr %i.g, align 16, !tbaa !9  ; 2 uses
  %i.fv = sub nsw i32 %i.ft, %i.fu
  store i32 %i.fv, ptr %i.k, align 16, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !9  ; 2 uses
  %i.fy = load i32, ptr %i.fs, align 4, !tbaa !9  ; 2 uses
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !9
  %i.gb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !9  ; 2 uses
  %i.gd = load i32, ptr %i.fh, align 8, !tbaa !9  ; 2 uses
  %i.ge = sub nsw i32 %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i32 %i.ge, ptr %i.gf, align 8, !tbaa !9
  %i.gg = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !9  ; 2 uses
  %i.gi = load i32, ptr %i.fi, align 4, !tbaa !9  ; 2 uses
  %i.gj = sub nsw i32 %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !9
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gm = load i32, ptr %i.gl, align 16, !tbaa !9 ; 2 uses
  %i.gn = load i32, ptr %i.fj, align 16, !tbaa !9 ; 2 uses
  %i.go = sub nsw i32 %i.gm, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i32 %i.go, ptr %i.gp, align 16, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !9  ; 2 uses
  %i.gs = load i32, ptr %i.fk, align 4, !tbaa !9  ; 2 uses
  %i.gt = sub nsw i32 %i.gr, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !9
  %i.gv = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !9  ; 2 uses
  %i.gx = load i32, ptr %i.fl, align 8, !tbaa !9  ; 2 uses
  %i.gy = sub nsw i32 %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !9  ; 2 uses
  %i.hc = load i32, ptr %i.fm, align 4, !tbaa !9  ; 2 uses
  %i.hd = sub nsw i32 %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !9
  %i.hf = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.hg = load i32, ptr %i.hf, align 16, !tbaa !9 ; 2 uses
  %i.hh = load i32, ptr %i.fn, align 16, !tbaa !9 ; 2 uses
  %i.hi = sub nsw i32 %i.hg, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i32 %i.hi, ptr %i.hj, align 16, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !9  ; 2 uses
  %i.hm = load i32, ptr %i.fo, align 4, !tbaa !9  ; 2 uses
  %i.hn = sub nsw i32 %i.hl, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call fastcc void @fe_tobytes(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.k)
  %i.hp = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.c, ptr noundef nonnull @fe_isnonzero.zero, i64 noundef 32) #7
  %.not21 = icmp eq i32 %i.hp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %fe_pow22523.exit
  %i.hq = add nsw i32 %i.fu, %i.ft
  store i32 %i.hq, ptr %i.k, align 16, !tbaa !9
  %i.hr = add nsw i32 %i.fy, %i.fx
  store i32 %i.hr, ptr %i.ga, align 4, !tbaa !9
  %i.hs = add nsw i32 %i.gd, %i.gc
  store i32 %i.hs, ptr %i.gf, align 8, !tbaa !9
  %i.ht = add nsw i32 %i.gi, %i.gh
  store i32 %i.ht, ptr %i.gk, align 4, !tbaa !9
  %i.hu = add nsw i32 %i.gn, %i.gm
  store i32 %i.hu, ptr %i.gp, align 16, !tbaa !9
  %i.hv = add nsw i32 %i.gs, %i.gr
  store i32 %i.hv, ptr %i.gu, align 4, !tbaa !9
  %i.hw = add nsw i32 %i.gx, %i.gw
  store i32 %i.hw, ptr %i.gz, align 8, !tbaa !9
  %i.hx = add nsw i32 %i.hc, %i.hb
  store i32 %i.hx, ptr %i.he, align 4, !tbaa !9
  %i.hy = add nsw i32 %i.hh, %i.hg
  store i32 %i.hy, ptr %i.hj, align 16, !tbaa !9
  %i.hz = add nsw i32 %i.hm, %i.hl
  store i32 %i.hz, ptr %i.ho, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call fastcc void @fe_tobytes(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.k)
  %i.ia = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull @fe_isnonzero.zero, i64 noundef 32) #7
  %.not = icmp eq i32 %i.ia, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call fastcc void @fe_mul(ptr noundef %0, ptr noundef nonnull %0, ptr noundef nonnull @sqrtm1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %fe_pow22523.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @fe_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %0)
  %i.ib = load i8, ptr %i.a, align 16, !tbaa !8
  %i.ic = and i8 %i.ib, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.id = load i8, ptr %i.cf, align 1, !tbaa !8
  %i.ie = lshr i8 %i.id, 7
  %.not20 = icmp eq i8 %i.ic, %i.ie
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.if = load <4 x i32>, ptr %0, align 4, !tbaa !9
  %i.ig = sub nsw <4 x i32> zeroinitializer, %i.if
  store <4 x i32> %i.ig, ptr %0, align 4, !tbaa !9
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ii = load <4 x i32>, ptr %i.ih, align 4, !tbaa !9
  %i.ij = sub nsw <4 x i32> zeroinitializer, %i.ii
  store <4 x i32> %i.ij, ptr %i.ih, align 4, !tbaa !9
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.il = load <2 x i32>, ptr %i.ik, align 4, !tbaa !9
  %i.im = sub nsw <2 x i32> zeroinitializer, %i.il
  store <2 x i32> %i.im, ptr %i.ik, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 120
  call fastcc void @fe_mul(ptr noundef %i.in, ptr noundef nonnull %0, ptr noundef nonnull %i.l)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  ret i32 %.0
}
end_hunk_1
begin_hunk_2_@ossl_ed25519_verify:bb.a

bb.m:                                             ; preds = %.preheader.8
  %.not88 = icmp eq i8 %i.at, 88
  br i1 %.not88, label %.preheader.9, label %.thread

.preheader.9:                                     ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8   ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 18
  br i1 %i.ax, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.preheader.9
  %.not89 = icmp eq i8 %i.aw, 18
  br i1 %.not89, label %.preheader.10, label %.thread

.preheader.10:                                    ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 2 uses
  %i.ba = icmp ult i8 %i.az, 99
  br i1 %i.ba, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.preheader.10
  %.not90 = icmp eq i8 %i.az, 99
  br i1 %.not90, label %.preheader.11, label %.thread

.preheader.11:                                    ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8   ; 2 uses
  %i.bd = icmp ult i8 %i.bc, 26
  br i1 %i.bd, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.preheader.11
  %.not91 = icmp eq i8 %i.bc, 26
  br i1 %.not91, label %.preheader.12, label %.thread

.preheader.12:                                    ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8   ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 92
  br i1 %i.bg, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.preheader.12
  %.not92 = icmp eq i8 %i.bf, 92
  br i1 %.not92, label %.preheader.13, label %.thread

.preheader.13:                                    ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8   ; 2 uses
  %i.bj = icmp ult i8 %i.bi, -11
  br i1 %i.bj, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader.13
  %.not93 = icmp eq i8 %i.bi, -11
  br i1 %.not93, label %.preheader.14, label %.thread

.preheader.14:                                    ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8   ; 2 uses
  %i.bm = icmp ult i8 %i.bl, -45
  br i1 %i.bm, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.preheader.14
  %.not94 = icmp eq i8 %i.bl, -45
  br i1 %.not94, label %.preheader.15, label %.thread

.preheader.15:                                    ; preds = %bb.s
  %i.bn = load i8, ptr %i.i, align 1, !tbaa !8
  %i.bo = icmp ult i8 %i.bn, -19
  br i1 %i.bo, label %.loopexit, label %.thread

bb.t:                                             ; preds = %.preheader.preheader
  %.not80 = icmp eq i8 %i.v, 20
  br i1 %.not80, label %.preheader.1, label %.thread

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %.preheader.14, %.preheader.15, %bb.d
  %i.bp = call fastcc i32 @ge_frombytes_vartime(ptr noundef %11, ptr noundef %3)
  %.not54 = icmp eq i32 %i.bp, 0
  br i1 %.not54, label %bb.u, label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.bq = load <4 x i32>, ptr %11, align 16, !tbaa !9
  %i.br = sub nsw <4 x i32> zeroinitializer, %i.bq
  store <4 x i32> %i.br, ptr %11, align 16, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bt = load <4 x i32>, ptr %i.bs, align 16, !tbaa !9
  %i.bu = sub nsw <4 x i32> zeroinitializer, %i.bt
  store <4 x i32> %i.bu, ptr %i.bs, align 16, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.bw = load <2 x i32>, ptr %i.bv, align 16, !tbaa !9
  %i.bx = sub nsw <2 x i32> zeroinitializer, %i.bw
  store <2 x i32> %i.bx, ptr %i.bv, align 16, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 120 ; 2 uses
  %i.bz = load <4 x i32>, ptr %i.by, align 8, !tbaa !9
  %i.ca = sub nsw <4 x i32> zeroinitializer, %i.bz
  store <4 x i32> %i.ca, ptr %i.by, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 2 uses
  %i.cc = load <4 x i32>, ptr %i.cb, align 8, !tbaa !9
  %i.cd = sub nsw <4 x i32> zeroinitializer, %i.cc
  store <4 x i32> %i.cd, ptr %i.cb, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 152 ; 2 uses
  %i.cf = load <2 x i32>, ptr %i.ce, align 8, !tbaa !9
  %i.cg = sub nsw <2 x i32> zeroinitializer, %i.cf
  store <2 x i32> %i.cg, ptr %i.ce, align 8, !tbaa !9
  %i.ch = tail call ptr @EVP_MD_fetch(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %10) #7 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = tail call ptr @EVP_MD_CTX_new() #7      ; 7 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = tail call fastcc i32 @hash_init_with_dom(ptr noundef %i.cj, ptr noundef %i.ch, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %7, i64 noundef %spec.select)
  %.not55 = icmp eq i32 %i.cl, 0
  br i1 %.not55, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cj, ptr noundef nonnull %2, i64 noundef 32) #7
  %.not56 = icmp eq i32 %i.cm, 0
  br i1 %.not56, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cj, ptr noundef %3, i64 noundef 32) #7
  %.not57 = icmp eq i32 %i.cn, 0
  br i1 %.not57, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cj, ptr noundef %0, i64 noundef %1) #7
  %.not58 = icmp eq i32 %i.co, 0
  br i1 %.not58, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #7
  %.not59 = icmp eq i32 %i.cp, 0
  br i1 %.not59, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @x25519_sc_reduce(ptr noundef %i.c)
  call fastcc void @ge_double_scalarmult_vartime(ptr noundef %12, ptr noundef %i.c, ptr noundef %11, ptr noundef nonnull %i.i)
  call fastcc void @ge_tobytes(ptr noundef %i.b, ptr noundef %12)
  %i.cq = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %2, i64 noundef 32) #7
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.v, %bb.ab
  %.0 = phi i32 [ 0, %bb.v ], [ %i.cs, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ]
  call void @EVP_MD_free(ptr noundef nonnull %i.ch) #7
  call void @EVP_MD_CTX_free(ptr noundef %i.cj) #7
  br label %.thread

.thread:                                          ; preds = %.preheader.15, %bb.t, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.u, %.loopexit, %bb.e, %bb.c, %bb.b, %bb.a, %bb.ac
  %.047 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %.0, %bb.ac ], [ 0, %bb.u ], [ 0, %.loopexit ], [ 0, %bb.t ], [ 0, %bb.f ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.preheader.15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  ret i32 %.047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ge_double_scalarmult_vartime(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #4 {
vector.ph:
  %4 = alloca %struct.ge_p2, align 4              ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 19 uses
  %i.b = alloca [256 x i8], align 16              ; 19 uses
  %5 = alloca [8 x %struct.ge_cached], align 16   ; 13 uses
  %6 = alloca %struct.ge_p1p1, align 16           ; 80 uses
  %7 = alloca %struct.ge_p3, align 4              ; 47 uses
  %8 = alloca %struct.ge_p3, align 4              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.c = lshr exact i64 %index, 3
  %i.d = and i64 %i.c, 536870911
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.f, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.g = and <8 x i8> %vec.ind, splat (i8 7)
  %i.h = lshr <8 x i8> %broadcast.splat, %i.g
  %i.i = and <8 x i8> %i.h, splat (i8 1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <8 x i8> %i.i, ptr %i.j, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i8> %vec.ind, splat (i8 8)
  %i.k = icmp eq i64 %index.next, 256
  br i1 %i.k, label %.preheader63.i, label %vector.body, !llvm.loop !15

.preheader63.i:                                   ; preds = %vector.body, %.loopexit62.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %.loopexit62.i ], [ 0, %vector.body ] ; 3 uses
  %indvars.iv87.i = phi i32 [ %indvars.iv.next88.i, %.loopexit62.i ], [ 254, %vector.body ] ; 3 uses
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %.loopexit62.i ], [ 1, %vector.body ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv90.i ; 19 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %.not.i = icmp ne i8 %i.m, 0
  %i.n = icmp samesign ult i64 %indvars.iv90.i, 255
  %or.cond.i = select i1 %.not.i, i1 %i.n, i1 false
  br i1 %or.cond.i, label %.lr.ph67.preheader.i, label %.loopexit62.i

.lr.ph67.preheader.i:                             ; preds = %.preheader63.i
  %umin.i = tail call i32 @llvm.umin.i32(i32 %indvars.iv87.i, i32 5)
  %i.o = add nuw nsw i32 %umin.i, 2               ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv74.i ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %.not60.i = icmp eq i8 %i.q, 0
  br i1 %.not60.i, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph67.preheader.i
  %i.r = load i8, ptr %i.l, align 1, !tbaa !8
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %i.t = sext i8 %i.q to i32
  %i.u = shl nsw i32 %i.t, 1                      ; 2 uses
  %i.v = add nsw i32 %i.u, %i.s                   ; 2 uses
  %i.w = icmp slt i32 %i.v, 16
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = trunc i32 %i.v to i8
  store i8 %i.x, ptr %i.l, align 1, !tbaa !8
  store i8 0, ptr %i.p, align 1, !tbaa !8
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.a
  %i.y = sub nsw i32 %i.s, %i.u                   ; 2 uses
  %i.z = icmp sgt i32 %i.y, -16
  br i1 %i.z, label %.lr.ph.preheader.i, label %.loopexit62.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.aa = trunc i32 %i.y to i8
  store i8 %i.aa, ptr %i.l, align 1, !tbaa !8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv78.i = phi i64 [ %indvars.iv74.i, %.lr.ph.preheader.i ], [ %indvars.iv.next79.i, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv78.i ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %.not61.i = icmp eq i8 %i.ac, 0
  br i1 %.not61.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.ab, align 1, !tbaa !8
  br label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.ab, align 1, !tbaa !8
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next79.i, 256
  br i1 %exitcond81.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !16

.loopexit.i:                                      ; preds = %bb.e, %bb.d, %bb.b, %.lr.ph67.preheader.i
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i32 %indvars.iv87.i, 0
  br i1 %exitcond89.not.i, label %.loopexit62.i, label %.lr.ph67.i.1

.lr.ph67.i.1:                                     ; preds = %.loopexit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next77.i ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8   ; 2 uses
  %.not60.i.1 = icmp eq i8 %i.ae, 0
  br i1 %.not60.i.1, label %.loopexit.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph67.i.1
  %i.af = load i8, ptr %i.l, align 1, !tbaa !8
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = sext i8 %i.ae to i32
  %i.ai = shl nsw i32 %i.ah, 2                    ; 2 uses
  %i.aj = add nsw i32 %i.ai, %i.ag                ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 16
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.ag, %i.ai                ; 2 uses
  %i.am = icmp sgt i32 %i.al, -16
  br i1 %i.am, label %.lr.ph.preheader.i.1, label %.loopexit62.i

.lr.ph.preheader.i.1:                             ; preds = %bb.g
  %i.an = trunc i32 %i.al to i8
  store i8 %i.an, ptr %i.l, align 1, !tbaa !8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.preheader.i.1
  %indvars.iv78.i.1 = phi i64 [ %indvars.iv.next77.i, %.lr.ph.preheader.i.1 ], [ %indvars.iv.next79.i.1, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv78.i.1 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %.not61.i.1 = icmp eq i8 %i.ap, 0
  br i1 %.not61.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.1
  store i8 0, ptr %i.ao, align 1, !tbaa !8
  %indvars.iv.next79.i.1 = add nuw nsw i64 %indvars.iv78.i.1, 1 ; 2 uses
  %exitcond81.not.i.1 = icmp eq i64 %indvars.iv.next79.i.1, 256
  br i1 %exitcond81.not.i.1, label %.loopexit.i.1, label %.lr.ph.i.1, !llvm.loop !16

bb.i:                                             ; preds = %.lr.ph.i.1
  store i8 1, ptr %i.ao, align 1, !tbaa !8
  br label %.loopexit.i.1

bb.j:                                             ; preds = %bb.f
  %i.aq = trunc i32 %i.aj to i8
  store i8 %i.aq, ptr %i.l, align 1, !tbaa !8
  store i8 0, ptr %i.ad, align 1, !tbaa !8
  br label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %bb.h, %bb.j, %bb.i, %.lr.ph67.i.1
  %indvars.iv.next77.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %exitcond89.not.i.1 = icmp eq i32 %i.o, 3
  br i1 %exitcond89.not.i.1, label %.loopexit62.i, label %.lr.ph67.i.2

.lr.ph67.i.2:                                     ; preds = %.loopexit.i.1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next77.i.1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8   ; 2 uses
  %.not60.i.2 = icmp eq i8 %i.as, 0
  br i1 %.not60.i.2, label %.loopexit.i.2, label %bb.k

bb.k:                                             ; preds = %.lr.ph67.i.2
  %i.at = load i8, ptr %i.l, align 1, !tbaa !8
  %i.au = sext i8 %i.at to i32                    ; 2 uses
  %i.av = sext i8 %i.as to i32
  %i.aw = shl nsw i32 %i.av, 3                    ; 2 uses
  %i.ax = add nsw i32 %i.aw, %i.au                ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 16
  br i1 %i.ay, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = sub nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -16
  br i1 %i.ba, label %.lr.ph.preheader.i.2, label %.loopexit62.i

.lr.ph.preheader.i.2:                             ; preds = %bb.l
  %i.bb = trunc i32 %i.az to i8
  store i8 %i.bb, ptr %i.l, align 1, !tbaa !8
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m, %.lr.ph.preheader.i.2
  %indvars.iv78.i.2 = phi i64 [ %indvars.iv.next77.i.1, %.lr.ph.preheader.i.2 ], [ %indvars.iv.next79.i.2, %bb.m ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv78.i.2 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %.not61.i.2 = icmp eq i8 %i.bd, 0
  br i1 %.not61.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.2
  store i8 0, ptr %i.bc, align 1, !tbaa !8
  %indvars.iv.next79.i.2 = add nuw nsw i64 %indvars.iv78.i.2, 1 ; 2 uses
  %exitcond81.not.i.2 = icmp eq i64 %indvars.iv.next79.i.2, 256
  br i1 %exitcond81.not.i.2, label %.loopexit.i.2, label %.lr.ph.i.2, !llvm.loop !16

bb.n:                                             ; preds = %.lr.ph.i.2
  store i8 1, ptr %i.bc, align 1, !tbaa !8
  br label %.loopexit.i.2

bb.o:                                             ; preds = %bb.k
  %i.be = trunc i32 %i.ax to i8
  store i8 %i.be, ptr %i.l, align 1, !tbaa !8
  store i8 0, ptr %i.ar, align 1, !tbaa !8
  br label %.loopexit.i.2

.loopexit.i.2:                                    ; preds = %bb.m, %bb.o, %bb.n, %.lr.ph67.i.2
  %indvars.iv.next77.i.2 = add nuw nsw i64 %indvars.iv74.i, 3 ; 2 uses
  %exitcond89.not.i.2 = icmp eq i32 %i.o, 4
  br i1 %exitcond89.not.i.2, label %.loopexit62.i, label %.lr.ph67.i.3

.lr.ph67.i.3:                                     ; preds = %.loopexit.i.2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next77.i.2 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8   ; 2 uses
  %.not60.i.3 = icmp eq i8 %i.bg, 0
  br i1 %.not60.i.3, label %.loopexit.i.3, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.i.3
  %i.bh = load i8, ptr %i.l, align 1, !tbaa !8
  %i.bi = sext i8 %i.bh to i32                    ; 2 uses
  %i.bj = sext i8 %i.bg to i32
  %i.bk = shl nsw i32 %i.bj, 4                    ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.bi                ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 16
  br i1 %i.bm, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = sub nsw i32 %i.bi, %i.bk                ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -16
  br i1 %i.bo, label %.lr.ph.preheader.i.3, label %.loopexit62.i

.lr.ph.preheader.i.3:                             ; preds = %bb.q
  %i.bp = trunc i32 %i.bn to i8
  store i8 %i.bp, ptr %i.l, align 1, !tbaa !8
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.r, %.lr.ph.preheader.i.3
  %indvars.iv78.i.3 = phi i64 [ %indvars.iv.next77.i.2, %.lr.ph.preheader.i.3 ], [ %indvars.iv.next79.i.3, %bb.r ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv78.i.3 ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %.not61.i.3 = icmp eq i8 %i.br, 0
  br i1 %.not61.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.3
  store i8 0, ptr %i.bq, align 1, !tbaa !8
  %indvars.iv.next79.i.3 = add nuw nsw i64 %indvars.iv78.i.3, 1 ; 2 uses
  %exitcond81.not.i.3 = icmp eq i64 %indvars.iv.next79.i.3, 256
  br i1 %exitcond81.not.i.3, label %.loopexit.i.3, label %.lr.ph.i.3, !llvm.loop !16

bb.s:                                             ; preds = %.lr.ph.i.3
  store i8 1, ptr %i.bq, align 1, !tbaa !8
  br label %.loopexit.i.3

bb.t:                                             ; preds = %bb.p
  %i.bs = trunc i32 %i.bl to i8
  store i8 %i.bs, ptr %i.l, align 1, !tbaa !8
  store i8 0, ptr %i.bf, align 1, !tbaa !8
  br label %.loopexit.i.3

.loopexit.i.3:                                    ; preds = %bb.r, %bb.t, %bb.s, %.lr.ph67.i.3
  %indvars.iv.next77.i.3 = add nuw nsw i64 %indvars.iv74.i, 4 ; 2 uses
  %exitcond89.not.i.3 = icmp eq i32 %i.o, 5
  br i1 %exitcond89.not.i.3, label %.loopexit62.i, label %.lr.ph67.i.4

.lr.ph67.i.4:                                     ; preds = %.loopexit.i.3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next77.i.3 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8   ; 2 uses
  %.not60.i.4 = icmp eq i8 %i.bu, 0
  br i1 %.not60.i.4, label %.loopexit.i.4, label %bb.u

bb.u:                                             ; preds = %.lr.ph67.i.4
  %i.bv = load i8, ptr %i.l, align 1, !tbaa !8
  %i.bw = sext i8 %i.bv to i32                    ; 2 uses
  %i.bx = sext i8 %i.bu to i32
  %i.by = shl nsw i32 %i.bx, 5                    ; 2 uses
  %i.bz = add nsw i32 %i.by, %i.bw                ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 16
  br i1 %i.ca, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = sub nsw i32 %i.bw, %i.by                ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, -16
  br i1 %i.cc, label %.lr.ph.preheader.i.4, label %.loopexit62.i

.lr.ph.preheader.i.4:                             ; preds = %bb.v
  %i.cd = trunc i32 %i.cb to i8
  store i8 %i.cd, ptr %i.l, align 1, !tbaa !8
  br label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.w, %.lr.ph.preheader.i.4
  %indvars.iv78.i.4 = phi i64 [ %indvars.iv.next77.i.3, %.lr.ph.preheader.i.4 ], [ %indvars.iv.next79.i.4, %bb.w ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv78.i.4 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %.not61.i.4 = icmp eq i8 %i.cf, 0
  br i1 %.not61.i.4, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.4
  store i8 0, ptr %i.ce, align 1, !tbaa !8
  %indvars.iv.next79.i.4 = add nuw nsw i64 %indvars.iv78.i.4, 1 ; 2 uses
  %exitcond81.not.i.4 = icmp eq i64 %indvars.iv.next79.i.4, 256
  br i1 %exitcond81.not.i.4, label %.loopexit.i.4, label %.lr.ph.i.4, !llvm.loop !16

bb.x:                                             ; preds = %.lr.ph.i.4
  store i8 1, ptr %i.ce, align 1, !tbaa !8
  br label %.loopexit.i.4

bb.y:                                             ; preds = %bb.u
  %i.cg = trunc i32 %i.bz to i8
  store i8 %i.cg, ptr %i.l, align 1, !tbaa !8
  store i8 0, ptr %i.bt, align 1, !tbaa !8
  br label %.loopexit.i.4

.loopexit.i.4:                                    ; preds = %bb.w, %bb.y, %bb.x, %.lr.ph67.i.4
  %indvars.iv.next77.i.4 = add nuw nsw i64 %indvars.iv74.i, 5 ; 2 uses
  %exitcond89.not.i.4 = icmp eq i32 %i.o, 6
  br i1 %exitcond89.not.i.4, label %.loopexit62.i, label %.lr.ph67.i.5

.lr.ph67.i.5:                                     ; preds = %.loopexit.i.4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next77.i.4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8   ; 2 uses
  %.not60.i.5 = icmp eq i8 %i.ci, 0
  br i1 %.not60.i.5, label %.loopexit62.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph67.i.5
  %i.cj = load i8, ptr %i.l, align 1, !tbaa !8
  %i.ck = sext i8 %i.cj to i32                    ; 2 uses
  %i.cl = sext i8 %i.ci to i32
  %i.cm = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cn = add nsw i32 %i.cm, %i.ck                ; 2 uses
  %i.co = icmp slt i32 %i.cn, 16
  br i1 %i.co, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = sub nsw i32 %i.ck, %i.cm                ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, -16
  br i1 %i.cq, label %.lr.ph.preheader.i.5, label %.loopexit62.i

.lr.ph.preheader.i.5:                             ; preds = %bb.aa
  %i.cr = trunc i32 %i.cp to i8
  store i8 %i.cr, ptr %i.l, align 1, !tbaa !8
  br label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.ab, %.lr.ph.preheader.i.5
  %indvars.iv78.i.5 = phi i64 [ %indvars.iv.next77.i.4, %.lr.ph.preheader.i.5 ], [ %indvars.iv.next79.i.5, %bb.ab ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv78.i.5 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %.not61.i.5 = icmp eq i8 %i.ct, 0
  br i1 %.not61.i.5, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.5
  store i8 0, ptr %i.cs, align 1, !tbaa !8
  %indvars.iv.next79.i.5 = add nuw nsw i64 %indvars.iv78.i.5, 1 ; 2 uses
  %exitcond81.not.i.5 = icmp eq i64 %indvars.iv.next79.i.5, 256
  br i1 %exitcond81.not.i.5, label %.loopexit62.i, label %.lr.ph.i.5, !llvm.loop !16

bb.ac:                                            ; preds = %.lr.ph.i.5
  store i8 1, ptr %i.cs, align 1, !tbaa !8
  br label %.loopexit62.i

bb.ad:                                            ; preds = %bb.z
  %i.cu = trunc i32 %i.cn to i8
  store i8 %i.cu, ptr %i.l, align 1, !tbaa !8
  store i8 0, ptr %i.ch, align 1, !tbaa !8
  br label %.loopexit62.i

.loopexit62.i:                                    ; preds = %.loopexit.i, %bb.c, %bb.g, %.loopexit.i.1, %bb.l, %.loopexit.i.2, %bb.q, %.loopexit.i.3, %bb.v, %.loopexit.i.4, %bb.aa, %bb.ab, %bb.ad, %bb.ac, %.lr.ph67.i.5, %.preheader63.i
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1
  %indvars.iv.next88.i = add nsw i32 %indvars.iv87.i, -1
  %exitcond93.not.i = icmp eq i64 %indvars.iv.next91.i, 256
  br i1 %exitcond93.not.i, label %vector.body88, label %.preheader63.i, !llvm.loop !17

vector.body88:                                    ; preds = %.loopexit62.i, %vector.body88
  %index89 = phi i64 [ %index.next93, %vector.body88 ], [ 0, %.loopexit62.i ] ; 3 uses
  %vec.ind90 = phi <8 x i8> [ %vec.ind.next94, %vector.body88 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %.loopexit62.i ] ; 2 uses
  %i.cv = lshr exact i64 %index89, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %broadcast.splatinsert91 = insertelement <8 x i8> poison, i8 %i.cy, i64 0
  %broadcast.splat92 = shufflevector <8 x i8> %broadcast.splatinsert91, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cz = and <8 x i8> %vec.ind90, splat (i8 7)
  %i.da = lshr <8 x i8> %broadcast.splat92, %i.cz
  %i.db = and <8 x i8> %i.da, splat (i8 1)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 %index89
  store <8 x i8> %i.db, ptr %i.dc, align 8, !tbaa !8
  %index.next93 = add nuw i64 %index89, 8         ; 2 uses
  %vec.ind.next94 = add <8 x i8> %vec.ind90, splat (i8 8)
  %i.dd = icmp eq i64 %index.next93, 256
  br i1 %i.dd, label %.preheader63.i26, label %vector.body88, !llvm.loop !18

.preheader63.i26:                                 ; preds = %vector.body88, %.loopexit62.i32
  %indvars.iv90.i27 = phi i64 [ %indvars.iv.next91.i33, %.loopexit62.i32 ], [ 0, %vector.body88 ] ; 3 uses
  %indvars.iv87.i28 = phi i32 [ %indvars.iv.next88.i35, %.loopexit62.i32 ], [ 254, %vector.body88 ] ; 3 uses
  %indvars.iv74.i29 = phi i64 [ %indvars.iv.next75.i34, %.loopexit62.i32 ], [ 1, %vector.body88 ] ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv90.i27 ; 19 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %.not.i30 = icmp ne i8 %i.df, 0
  %i.dg = icmp samesign ult i64 %indvars.iv90.i27, 255
  %or.cond.i31 = select i1 %.not.i30, i1 %i.dg, i1 false
  br i1 %or.cond.i31, label %.lr.ph67.preheader.i37, label %.loopexit62.i32

.lr.ph67.preheader.i37:                           ; preds = %.preheader63.i26
  %umin.i38 = tail call i32 @llvm.umin.i32(i32 %indvars.iv87.i28, i32 5)
  %i.dh = add nuw nsw i32 %umin.i38, 2            ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv74.i29 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8   ; 2 uses
  %.not60.i43 = icmp eq i8 %i.dj, 0
  br i1 %.not60.i43, label %.loopexit.i50, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph67.preheader.i37
  %i.dk = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dl = sext i8 %i.dk to i32                    ; 2 uses
  %i.dm = sext i8 %i.dj to i32
  %i.dn = shl nsw i32 %i.dm, 1                    ; 2 uses
  %i.do = add nsw i32 %i.dn, %i.dl                ; 2 uses
  %i.dp = icmp slt i32 %i.do, 16
  br i1 %i.dp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dq = trunc i32 %i.do to i8
  store i8 %i.dq, ptr %i.de, align 1, !tbaa !8
  store i8 0, ptr %i.di, align 1, !tbaa !8
  br label %.loopexit.i50

bb.ag:                                            ; preds = %bb.ae
  %i.dr = sub nsw i32 %i.dl, %i.dn                ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, -16
  br i1 %i.ds, label %.lr.ph.preheader.i44, label %.loopexit62.i32

.lr.ph.preheader.i44:                             ; preds = %bb.ag
  %i.dt = trunc i32 %i.dr to i8
  store i8 %i.dt, ptr %i.de, align 1, !tbaa !8
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.ai, %.lr.ph.preheader.i44
  %indvars.iv78.i46 = phi i64 [ %indvars.iv74.i29, %.lr.ph.preheader.i44 ], [ %indvars.iv.next79.i48, %bb.ai ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78.i46 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !8
  %.not61.i47 = icmp eq i8 %i.dv, 0
  br i1 %.not61.i47, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i45
  store i8 1, ptr %i.du, align 1, !tbaa !8
  br label %.loopexit.i50

bb.ai:                                            ; preds = %.lr.ph.i45
  store i8 0, ptr %i.du, align 1, !tbaa !8
  %indvars.iv.next79.i48 = add nuw nsw i64 %indvars.iv78.i46, 1 ; 2 uses
  %exitcond81.not.i49 = icmp eq i64 %indvars.iv.next79.i48, 256
  br i1 %exitcond81.not.i49, label %.loopexit.i50, label %.lr.ph.i45, !llvm.loop !16

.loopexit.i50:                                    ; preds = %bb.ai, %bb.ah, %bb.af, %.lr.ph67.preheader.i37
  %indvars.iv.next77.i52 = add nuw nsw i64 %indvars.iv74.i29, 1 ; 2 uses
  %exitcond89.not.i53 = icmp eq i32 %indvars.iv87.i28, 0
  br i1 %exitcond89.not.i53, label %.loopexit62.i32, label %.lr.ph67.i40.1

.lr.ph67.i40.1:                                   ; preds = %.loopexit.i50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next77.i52 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !8   ; 2 uses
  %.not60.i43.1 = icmp eq i8 %i.dx, 0
  br i1 %.not60.i43.1, label %.loopexit.i50.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph67.i40.1
  %i.dy = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dz = sext i8 %i.dy to i32                    ; 2 uses
  %i.ea = sext i8 %i.dx to i32
  %i.eb = shl nsw i32 %i.ea, 2                    ; 2 uses
  %i.ec = add nsw i32 %i.eb, %i.dz                ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 16
  br i1 %i.ed, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = sub nsw i32 %i.dz, %i.eb                ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -16
  br i1 %i.ef, label %.lr.ph.preheader.i44.1, label %.loopexit62.i32

.lr.ph.preheader.i44.1:                           ; preds = %bb.ak
  %i.eg = trunc i32 %i.ee to i8
  store i8 %i.eg, ptr %i.de, align 1, !tbaa !8
  br label %.lr.ph.i45.1

.lr.ph.i45.1:                                     ; preds = %bb.al, %.lr.ph.preheader.i44.1
  %indvars.iv78.i46.1 = phi i64 [ %indvars.iv.next77.i52, %.lr.ph.preheader.i44.1 ], [ %indvars.iv.next79.i48.1, %bb.al ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78.i46.1 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !8
  %.not61.i47.1 = icmp eq i8 %i.ei, 0
  br i1 %.not61.i47.1, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i45.1
  store i8 0, ptr %i.eh, align 1, !tbaa !8
  %indvars.iv.next79.i48.1 = add nuw nsw i64 %indvars.iv78.i46.1, 1 ; 2 uses
  %exitcond81.not.i49.1 = icmp eq i64 %indvars.iv.next79.i48.1, 256
  br i1 %exitcond81.not.i49.1, label %.loopexit.i50.1, label %.lr.ph.i45.1, !llvm.loop !16

bb.am:                                            ; preds = %.lr.ph.i45.1
  store i8 1, ptr %i.eh, align 1, !tbaa !8
  br label %.loopexit.i50.1

bb.an:                                            ; preds = %bb.aj
  %i.ej = trunc i32 %i.ec to i8
  store i8 %i.ej, ptr %i.de, align 1, !tbaa !8
  store i8 0, ptr %i.dw, align 1, !tbaa !8
  br label %.loopexit.i50.1

.loopexit.i50.1:                                  ; preds = %bb.al, %bb.an, %bb.am, %.lr.ph67.i40.1
  %indvars.iv.next77.i52.1 = add nuw nsw i64 %indvars.iv74.i29, 2 ; 2 uses
  %exitcond89.not.i53.1 = icmp eq i32 %i.dh, 3
  br i1 %exitcond89.not.i53.1, label %.loopexit62.i32, label %.lr.ph67.i40.2

.lr.ph67.i40.2:                                   ; preds = %.loopexit.i50.1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next77.i52.1 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8   ; 2 uses
  %.not60.i43.2 = icmp eq i8 %i.el, 0
  br i1 %.not60.i43.2, label %.loopexit.i50.2, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph67.i40.2
  %i.em = load i8, ptr %i.de, align 1, !tbaa !8
  %i.en = sext i8 %i.em to i32                    ; 2 uses
  %i.eo = sext i8 %i.el to i32
  %i.ep = shl nsw i32 %i.eo, 3                    ; 2 uses
  %i.eq = add nsw i32 %i.ep, %i.en                ; 2 uses
  %i.er = icmp slt i32 %i.eq, 16
  br i1 %i.er, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = sub nsw i32 %i.en, %i.ep                ; 2 uses
  %i.et = icmp sgt i32 %i.es, -16
  br i1 %i.et, label %.lr.ph.preheader.i44.2, label %.loopexit62.i32

.lr.ph.preheader.i44.2:                           ; preds = %bb.ap
  %i.eu = trunc i32 %i.es to i8
  store i8 %i.eu, ptr %i.de, align 1, !tbaa !8
  br label %.lr.ph.i45.2

.lr.ph.i45.2:                                     ; preds = %bb.aq, %.lr.ph.preheader.i44.2
  %indvars.iv78.i46.2 = phi i64 [ %indvars.iv.next77.i52.1, %.lr.ph.preheader.i44.2 ], [ %indvars.iv.next79.i48.2, %bb.aq ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78.i46.2 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !8
  %.not61.i47.2 = icmp eq i8 %i.ew, 0
  br i1 %.not61.i47.2, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i45.2
  store i8 0, ptr %i.ev, align 1, !tbaa !8
  %indvars.iv.next79.i48.2 = add nuw nsw i64 %indvars.iv78.i46.2, 1 ; 2 uses
  %exitcond81.not.i49.2 = icmp eq i64 %indvars.iv.next79.i48.2, 256
  br i1 %exitcond81.not.i49.2, label %.loopexit.i50.2, label %.lr.ph.i45.2, !llvm.loop !16

bb.ar:                                            ; preds = %.lr.ph.i45.2
  store i8 1, ptr %i.ev, align 1, !tbaa !8
  br label %.loopexit.i50.2

bb.as:                                            ; preds = %bb.ao
  %i.ex = trunc i32 %i.eq to i8
  store i8 %i.ex, ptr %i.de, align 1, !tbaa !8
  store i8 0, ptr %i.ek, align 1, !tbaa !8
  br label %.loopexit.i50.2

.loopexit.i50.2:                                  ; preds = %bb.aq, %bb.as, %bb.ar, %.lr.ph67.i40.2
  %indvars.iv.next77.i52.2 = add nuw nsw i64 %indvars.iv74.i29, 3 ; 2 uses
  %exitcond89.not.i53.2 = icmp eq i32 %i.dh, 4
  br i1 %exitcond89.not.i53.2, label %.loopexit62.i32, label %.lr.ph67.i40.3

.lr.ph67.i40.3:                                   ; preds = %.loopexit.i50.2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next77.i52.2 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !8   ; 2 uses
  %.not60.i43.3 = icmp eq i8 %i.ez, 0
  br i1 %.not60.i43.3, label %.loopexit.i50.3, label %bb.at

bb.at:                                            ; preds = %.lr.ph67.i40.3
  %i.fa = load i8, ptr %i.de, align 1, !tbaa !8
  %i.fb = sext i8 %i.fa to i32                    ; 2 uses
  %i.fc = sext i8 %i.ez to i32
  %i.fd = shl nsw i32 %i.fc, 4                    ; 2 uses
  %i.fe = add nsw i32 %i.fd, %i.fb                ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 16
  br i1 %i.ff, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = sub nsw i32 %i.fb, %i.fd                ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, -16
  br i1 %i.fh, label %.lr.ph.preheader.i44.3, label %.loopexit62.i32

.lr.ph.preheader.i44.3:                           ; preds = %bb.au
  %i.fi = trunc i32 %i.fg to i8
  store i8 %i.fi, ptr %i.de, align 1, !tbaa !8
  br label %.lr.ph.i45.3

.lr.ph.i45.3:                                     ; preds = %bb.av, %.lr.ph.preheader.i44.3
  %indvars.iv78.i46.3 = phi i64 [ %indvars.iv.next77.i52.2, %.lr.ph.preheader.i44.3 ], [ %indvars.iv.next79.i48.3, %bb.av ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78.i46.3 ; 3 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !8
  %.not61.i47.3 = icmp eq i8 %i.fk, 0
  br i1 %.not61.i47.3, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i45.3
  store i8 0, ptr %i.fj, align 1, !tbaa !8
  %indvars.iv.next79.i48.3 = add nuw nsw i64 %indvars.iv78.i46.3, 1 ; 2 uses
  %exitcond81.not.i49.3 = icmp eq i64 %indvars.iv.next79.i48.3, 256
  br i1 %exitcond81.not.i49.3, label %.loopexit.i50.3, label %.lr.ph.i45.3, !llvm.loop !16

bb.aw:                                            ; preds = %.lr.ph.i45.3
  store i8 1, ptr %i.fj, align 1, !tbaa !8
  br label %.loopexit.i50.3

bb.ax:                                            ; preds = %bb.at
  %i.fl = trunc i32 %i.fe to i8
  store i8 %i.fl, ptr %i.de, align 1, !tbaa !8
  store i8 0, ptr %i.ey, align 1, !tbaa !8
  br label %.loopexit.i50.3

.loopexit.i50.3:                                  ; preds = %bb.av, %bb.ax, %bb.aw, %.lr.ph67.i40.3
  %indvars.iv.next77.i52.3 = add nuw nsw i64 %indvars.iv74.i29, 4 ; 2 uses
  %exitcond89.not.i53.3 = icmp eq i32 %i.dh, 5
  br i1 %exitcond89.not.i53.3, label %.loopexit62.i32, label %.lr.ph67.i40.4

.lr.ph67.i40.4:                                   ; preds = %.loopexit.i50.3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next77.i52.3 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8   ; 2 uses
  %.not60.i43.4 = icmp eq i8 %i.fn, 0
  br i1 %.not60.i43.4, label %.loopexit.i50.4, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph67.i40.4
  %i.fo = load i8, ptr %i.de, align 1, !tbaa !8
  %i.fp = sext i8 %i.fo to i32                    ; 2 uses
  %i.fq = sext i8 %i.fn to i32
  %i.fr = shl nsw i32 %i.fq, 5                    ; 2 uses
  %i.fs = add nsw i32 %i.fr, %i.fp                ; 2 uses
  %i.ft = icmp slt i32 %i.fs, 16
  br i1 %i.ft, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = sub nsw i32 %i.fp, %i.fr                ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, -16
  br i1 %i.fv, label %.lr.ph.preheader.i44.4, label %.loopexit62.i32

.lr.ph.preheader.i44.4:                           ; preds = %bb.az
  %i.fw = trunc i32 %i.fu to i8
  store i8 %i.fw, ptr %i.de, align 1, !tbaa !8
  br label %.lr.ph.i45.4

.lr.ph.i45.4:                                     ; preds = %bb.ba, %.lr.ph.preheader.i44.4
  %indvars.iv78.i46.4 = phi i64 [ %indvars.iv.next77.i52.3, %.lr.ph.preheader.i44.4 ], [ %indvars.iv.next79.i48.4, %bb.ba ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78.i46.4 ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !8
  %.not61.i47.4 = icmp eq i8 %i.fy, 0
  br i1 %.not61.i47.4, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i45.4
  store i8 0, ptr %i.fx, align 1, !tbaa !8
  %indvars.iv.next79.i48.4 = add nuw nsw i64 %indvars.iv78.i46.4, 1 ; 2 uses
  %exitcond81.not.i49.4 = icmp eq i64 %indvars.iv.next79.i48.4, 256
  br i1 %exitcond81.not.i49.4, label %.loopexit.i50.4, label %.lr.ph.i45.4, !llvm.loop !16

bb.bb:                                            ; preds = %.lr.ph.i45.4
  store i8 1, ptr %i.fx, align 1, !tbaa !8
  br label %.loopexit.i50.4

bb.bc:                                            ; preds = %bb.ay
  %i.fz = trunc i32 %i.fs to i8
  store i8 %i.fz, ptr %i.de, align 1, !tbaa !8
  store i8 0, ptr %i.fm, align 1, !tbaa !8
  br label %.loopexit.i50.4

.loopexit.i50.4:                                  ; preds = %bb.ba, %bb.bc, %bb.bb, %.lr.ph67.i40.4
  %indvars.iv.next77.i52.4 = add nuw nsw i64 %indvars.iv74.i29, 5 ; 2 uses
  %exitcond89.not.i53.4 = icmp eq i32 %i.dh, 6
  br i1 %exitcond89.not.i53.4, label %.loopexit62.i32, label %.lr.ph67.i40.5

.lr.ph67.i40.5:                                   ; preds = %.loopexit.i50.4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next77.i52.4 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !8   ; 2 uses
  %.not60.i43.5 = icmp eq i8 %i.gb, 0
  br i1 %.not60.i43.5, label %.loopexit62.i32, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph67.i40.5
  %i.gc = load i8, ptr %i.de, align 1, !tbaa !8
  %i.gd = sext i8 %i.gc to i32                    ; 2 uses
  %i.ge = sext i8 %i.gb to i32
  %i.gf = shl nsw i32 %i.ge, 6                    ; 2 uses
  %i.gg = add nsw i32 %i.gf, %i.gd                ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 16
  br i1 %i.gh, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gi = sub nsw i32 %i.gd, %i.gf                ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, -16
  br i1 %i.gj, label %.lr.ph.preheader.i44.5, label %.loopexit62.i32

.lr.ph.preheader.i44.5:                           ; preds = %bb.be
  %i.gk = trunc i32 %i.gi to i8
  store i8 %i.gk, ptr %i.de, align 1, !tbaa !8
  br label %.lr.ph.i45.5

.lr.ph.i45.5:                                     ; preds = %bb.bf, %.lr.ph.preheader.i44.5
  %indvars.iv78.i46.5 = phi i64 [ %indvars.iv.next77.i52.4, %.lr.ph.preheader.i44.5 ], [ %indvars.iv.next79.i48.5, %bb.bf ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78.i46.5 ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %.not61.i47.5 = icmp eq i8 %i.gm, 0
  br i1 %.not61.i47.5, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i45.5
  store i8 0, ptr %i.gl, align 1, !tbaa !8
  %indvars.iv.next79.i48.5 = add nuw nsw i64 %indvars.iv78.i46.5, 1 ; 2 uses
  %exitcond81.not.i49.5 = icmp eq i64 %indvars.iv.next79.i48.5, 256
  br i1 %exitcond81.not.i49.5, label %.loopexit62.i32, label %.lr.ph.i45.5, !llvm.loop !16

bb.bg:                                            ; preds = %.lr.ph.i45.5
  store i8 1, ptr %i.gl, align 1, !tbaa !8
  br label %.loopexit62.i32

bb.bh:                                            ; preds = %bb.bd
  %i.gn = trunc i32 %i.gg to i8
  store i8 %i.gn, ptr %i.de, align 1, !tbaa !8
  store i8 0, ptr %i.ga, align 1, !tbaa !8
  br label %.loopexit62.i32

.loopexit62.i32:                                  ; preds = %.loopexit.i50, %bb.ag, %bb.ak, %.loopexit.i50.1, %bb.ap, %.loopexit.i50.2, %bb.au, %.loopexit.i50.3, %bb.az, %.loopexit.i50.4, %bb.be, %bb.bf, %bb.bh, %bb.bg, %.lr.ph67.i40.5, %.preheader63.i26
  %indvars.iv.next91.i33 = add nuw nsw i64 %indvars.iv90.i27, 1 ; 2 uses
  %indvars.iv.next75.i34 = add nuw nsw i64 %indvars.iv74.i29, 1
  %indvars.iv.next88.i35 = add nsw i32 %indvars.iv87.i28, -1
  %exitcond93.not.i36 = icmp eq i64 %indvars.iv.next91.i33, 256
  br i1 %exitcond93.not.i36, label %slide.exit54, label %.preheader63.i26, !llvm.loop !17

slide.exit54:                                     ; preds = %.loopexit62.i32
  call fastcc void @ge_p3_to_cached(ptr noundef %5, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, ptr noundef nonnull readonly align 4 dereferenceable(40) %2, i64 40, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.go, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.gp, i64 40, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.gq, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.gr, i64 40, i1 false)
  call fastcc void @ge_p2_dbl(ptr noundef nonnull %6, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 30 uses
  call fastcc void @fe_mul(ptr noundef nonnull %8, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 35 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 32 uses
  call fastcc void @fe_mul(ptr noundef %i.gt, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 80
  call fastcc void @fe_mul(ptr noundef %i.gw, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 120
  call fastcc void @fe_mul(ptr noundef %i.gx, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %5)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 13 uses
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 13 uses
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 13 uses
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hb, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hb)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hc, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hc)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 480 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hd, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hd)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 640 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.he, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.he)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 800 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hf, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hf)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 960 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hg, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hg)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 1120
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hh, ptr noundef %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.hj, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.hi, align 4, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.hl, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.hk, align 4, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bm, %slide.exit54
  %.061 = phi i32 [ 255, %slide.exit54 ], [ %i.hx, %bb.bm ] ; 5 uses
  %i.hm = zext nneg i32 %.061 to i64              ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !8
  %.not = icmp eq i8 %i.ho, 0
  br i1 %.not, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hm
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !8
  %.not22 = icmp eq i8 %i.hq, 0
  br i1 %.not22, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.hr = add nsw i32 %.061, -1                   ; 4 uses
  %i.hs = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !8
  %.not.1 = icmp eq i8 %i.hu, 0
  br i1 %.not.1, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hs
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !8
  %.not22.1 = icmp eq i8 %i.hw, 0
  br i1 %.not22.1, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hx = add nsw i32 %.061, -2
  %.not75.1 = icmp eq i32 %i.hr, 0
  br i1 %.not75.1, label %._crit_edge, label %bb.bi, !llvm.loop !19

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bj
  %.061.lcssa = phi i32 [ %.061, %bb.bi ], [ %.061, %bb.bj ], [ %i.hr, %bb.bk ], [ %i.hr, %bb.bl ] ; 2 uses
  %i.hy = icmp sgt i32 %.061.lcssa, -1
  br i1 %i.hy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bn
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %6, i64 76 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 100 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 108 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 116 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 132 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %6, i64 148 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.jx = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.jy = zext nneg i32 %.061.lcssa to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph, %bb.bw
  %indvars.iv = phi i64 [ %i.jy, %.lr.ph ], [ %indvars.iv.next, %bb.bw ] ; 4 uses
  call fastcc void @ge_p2_dbl(ptr noundef %6, ptr noundef %0)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !8   ; 4 uses
  %i.kb = icmp sgt i8 %i.ka, 0
  br i1 %i.kb, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.kc = lshr i8 %i.ka, 1
  %i.kd = zext nneg i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [160 x i8], ptr %5, i64 %i.kd
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %7, ptr noundef %i.ke)
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.kf = icmp slt i8 %i.ka, 0
  br i1 %i.kf, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %.nonneg56 = sub i8 0, %i.ka
  %i.kg = lshr i8 %.nonneg56, 1
  %i.kh = zext nneg i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [160 x i8], ptr %5, i64 %i.kh ; 4 uses
  %i.kj = load i32, ptr %i.gy, align 4, !tbaa !9  ; 2 uses
  %i.kk = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.kl = add nsw i32 %i.kk, %i.kj
  store i32 %i.kl, ptr %6, align 16, !tbaa !9
  %i.km = load i32, ptr %i.hz, align 4, !tbaa !9  ; 2 uses
  %i.kn = load i32, ptr %i.ia, align 4, !tbaa !9  ; 2 uses
  %i.ko = add nsw i32 %i.kn, %i.km
  store i32 %i.ko, ptr %i.ib, align 4, !tbaa !9
  %i.kp = load i32, ptr %i.ic, align 4, !tbaa !9  ; 2 uses
  %i.kq = load i32, ptr %i.id, align 4, !tbaa !9  ; 2 uses
  %i.kr = add nsw i32 %i.kq, %i.kp
  store i32 %i.kr, ptr %i.ie, align 8, !tbaa !9
  %i.ks = load i32, ptr %i.if, align 4, !tbaa !9  ; 2 uses
  %i.kt = load i32, ptr %i.ig, align 4, !tbaa !9  ; 2 uses
  %i.ku = add nsw i32 %i.kt, %i.ks
  store i32 %i.ku, ptr %i.ih, align 4, !tbaa !9
  %i.kv = load i32, ptr %i.ii, align 4, !tbaa !9  ; 2 uses
  %i.kw = load i32, ptr %i.ij, align 4, !tbaa !9  ; 2 uses
  %i.kx = add nsw i32 %i.kw, %i.kv
  store i32 %i.kx, ptr %i.ik, align 16, !tbaa !9
  %i.ky = load i32, ptr %i.il, align 4, !tbaa !9  ; 2 uses
  %i.kz = load i32, ptr %i.im, align 4, !tbaa !9  ; 2 uses
  %i.la = add nsw i32 %i.kz, %i.ky
  store i32 %i.la, ptr %i.in, align 4, !tbaa !9
  %i.lb = load i32, ptr %i.io, align 4, !tbaa !9  ; 2 uses
  %i.lc = load i32, ptr %i.ip, align 4, !tbaa !9  ; 2 uses
  %i.ld = add nsw i32 %i.lc, %i.lb
  store i32 %i.ld, ptr %i.iq, align 8, !tbaa !9
  %i.le = load i32, ptr %i.ir, align 4, !tbaa !9  ; 2 uses
  %i.lf = load i32, ptr %i.is, align 4, !tbaa !9  ; 2 uses
  %i.lg = add nsw i32 %i.lf, %i.le
  store i32 %i.lg, ptr %i.it, align 4, !tbaa !9
  %i.lh = load i32, ptr %i.iu, align 4, !tbaa !9  ; 2 uses
  %i.li = load i32, ptr %i.iv, align 4, !tbaa !9  ; 2 uses
  %i.lj = add nsw i32 %i.li, %i.lh
  store i32 %i.lj, ptr %i.iw, align 16, !tbaa !9
  %i.lk = load i32, ptr %i.ix, align 4, !tbaa !9  ; 2 uses
  %i.ll = load i32, ptr %i.iy, align 4, !tbaa !9  ; 2 uses
  %i.lm = add nsw i32 %i.ll, %i.lk
  store i32 %i.lm, ptr %i.iz, align 4, !tbaa !9
  %i.ln = sub nsw i32 %i.kj, %i.kk
  store i32 %i.ln, ptr %i.gu, align 8, !tbaa !9
  %i.lo = sub nsw i32 %i.km, %i.kn
  store i32 %i.lo, ptr %i.ja, align 4, !tbaa !9
  %i.lp = sub nsw i32 %i.kp, %i.kq
  store i32 %i.lp, ptr %i.jb, align 16, !tbaa !9
  %i.lq = sub nsw i32 %i.ks, %i.kt
  store i32 %i.lq, ptr %i.jc, align 4, !tbaa !9
  %i.lr = sub nsw i32 %i.kv, %i.kw
  store i32 %i.lr, ptr %i.jd, align 8, !tbaa !9
  %i.ls = sub nsw i32 %i.ky, %i.kz
  store i32 %i.ls, ptr %i.je, align 4, !tbaa !9
  %i.lt = sub nsw i32 %i.lb, %i.lc
  store i32 %i.lt, ptr %i.jf, align 16, !tbaa !9
  %i.lu = sub nsw i32 %i.le, %i.lf
  store i32 %i.lu, ptr %i.jg, align 4, !tbaa !9
  %i.lv = sub nsw i32 %i.lh, %i.li
  store i32 %i.lv, ptr %i.jh, align 8, !tbaa !9
  %i.lw = sub nsw i32 %i.lk, %i.ll
  store i32 %i.lw, ptr %i.ji, align 4, !tbaa !9
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  call fastcc void @fe_mul(ptr noundef %i.gv, ptr noundef nonnull %6, ptr noundef nonnull readonly %i.lx)
  call fastcc void @fe_mul(ptr noundef %i.gu, ptr noundef nonnull %i.gu, ptr noundef nonnull readonly %i.ki)
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ki, i64 120
  call fastcc void @fe_mul(ptr noundef %i.gs, ptr noundef nonnull readonly %i.ly, ptr noundef nonnull readonly %i.ha)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ki, i64 80
  call fastcc void @fe_mul(ptr noundef nonnull %6, ptr noundef nonnull readonly %i.gz, ptr noundef nonnull readonly %i.lz)
  %i.ma = load i32, ptr %i.gv, align 16, !tbaa !9 ; 2 uses
  %i.mb = load i32, ptr %i.gu, align 8, !tbaa !9  ; 2 uses
  %i.mc = sub nsw i32 %i.ma, %i.mb
  %i.md = load i32, ptr %i.jj, align 4, !tbaa !9  ; 2 uses
  %i.me = load i32, ptr %i.ja, align 4, !tbaa !9  ; 2 uses
  %i.mf = sub nsw i32 %i.md, %i.me
  %i.mg = load i32, ptr %i.jk, align 8, !tbaa !9  ; 2 uses
  %i.mh = load i32, ptr %i.jb, align 16, !tbaa !9 ; 2 uses
  %i.mi = sub nsw i32 %i.mg, %i.mh
  %i.mj = load i32, ptr %i.jl, align 4, !tbaa !9  ; 2 uses
  %i.mk = load i32, ptr %i.jc, align 4, !tbaa !9  ; 2 uses
  %i.ml = sub nsw i32 %i.mj, %i.mk
  %i.mm = load i32, ptr %i.jm, align 16, !tbaa !9 ; 2 uses
  %i.mn = load i32, ptr %i.jd, align 8, !tbaa !9  ; 2 uses
  %i.mo = sub nsw i32 %i.mm, %i.mn
  %i.mp = load i32, ptr %i.jn, align 4, !tbaa !9  ; 2 uses
  %i.mq = load i32, ptr %i.je, align 4, !tbaa !9  ; 2 uses
  %i.mr = sub nsw i32 %i.mp, %i.mq
  %i.ms = load i32, ptr %i.jo, align 8, !tbaa !9  ; 2 uses
  %i.mt = load i32, ptr %i.jf, align 16, !tbaa !9 ; 2 uses
  %i.mu = sub nsw i32 %i.ms, %i.mt
  %i.mv = load i32, ptr %i.jp, align 4, !tbaa !9  ; 2 uses
  %i.mw = load i32, ptr %i.jg, align 4, !tbaa !9  ; 2 uses
  %i.mx = sub nsw i32 %i.mv, %i.mw
  %i.my = load i32, ptr %i.jq, align 16, !tbaa !9 ; 2 uses
  %i.mz = load i32, ptr %i.jh, align 8, !tbaa !9  ; 2 uses
  %i.na = sub nsw i32 %i.my, %i.mz
  %i.nb = load i32, ptr %i.jr, align 4, !tbaa !9  ; 2 uses
  %i.nc = load i32, ptr %i.ji, align 4, !tbaa !9  ; 2 uses
  %i.nd = sub nsw i32 %i.nb, %i.nc
  %i.ne = add nsw i32 %i.mb, %i.ma
  store i32 %i.ne, ptr %i.gu, align 8, !tbaa !9
  %i.nf = add nsw i32 %i.me, %i.md
  store i32 %i.nf, ptr %i.ja, align 4, !tbaa !9
  %i.ng = add nsw i32 %i.mh, %i.mg
  store i32 %i.ng, ptr %i.jb, align 16, !tbaa !9
  %i.nh = add nsw i32 %i.mk, %i.mj
  store i32 %i.nh, ptr %i.jc, align 4, !tbaa !9
  %i.ni = add nsw i32 %i.mn, %i.mm
  store i32 %i.ni, ptr %i.jd, align 8, !tbaa !9
end_hunk_2
begin_hunk_3_@ge_double_scalarmult_vartime:vector.ph
  %i.ol = add nsw <2 x i32> %i.oc, %i.ob
  store <2 x i32> %i.ol, ptr %i.jv, align 8, !tbaa !9
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %i.om = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.on = load i8, ptr %i.om, align 1, !tbaa !8   ; 4 uses
  %i.oo = icmp sgt i8 %i.on, 0
  br i1 %i.oo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.op = lshr i8 %i.on, 1
  %i.oq = zext nneg i8 %i.op to i64
  %i.or = getelementptr inbounds nuw [120 x i8], ptr @Bi, i64 %i.oq
  call fastcc void @ge_madd(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.or)
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.os = icmp slt i8 %i.on, 0
  br i1 %i.os, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %.nonneg = sub i8 0, %i.on
  %i.ot = lshr i8 %.nonneg, 1
  %i.ou = zext nneg i8 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [120 x i8], ptr @Bi, i64 %i.ou ; 3 uses
  %i.ow = load i32, ptr %i.gy, align 4, !tbaa !9  ; 2 uses
  %i.ox = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.oy = add nsw i32 %i.ox, %i.ow
  store i32 %i.oy, ptr %6, align 16, !tbaa !9
  %i.oz = load i32, ptr %i.hz, align 4, !tbaa !9  ; 2 uses
  %i.pa = load i32, ptr %i.ia, align 4, !tbaa !9  ; 2 uses
  %i.pb = add nsw i32 %i.pa, %i.oz
  store i32 %i.pb, ptr %i.ib, align 4, !tbaa !9
  %i.pc = load i32, ptr %i.ic, align 4, !tbaa !9  ; 2 uses
  %i.pd = load i32, ptr %i.id, align 4, !tbaa !9  ; 2 uses
  %i.pe = add nsw i32 %i.pd, %i.pc
  store i32 %i.pe, ptr %i.ie, align 8, !tbaa !9
  %i.pf = load i32, ptr %i.if, align 4, !tbaa !9  ; 2 uses
  %i.pg = load i32, ptr %i.ig, align 4, !tbaa !9  ; 2 uses
  %i.ph = add nsw i32 %i.pg, %i.pf
  store i32 %i.ph, ptr %i.ih, align 4, !tbaa !9
  %i.pi = load i32, ptr %i.ii, align 4, !tbaa !9  ; 2 uses
  %i.pj = load i32, ptr %i.ij, align 4, !tbaa !9  ; 2 uses
  %i.pk = add nsw i32 %i.pj, %i.pi
  store i32 %i.pk, ptr %i.ik, align 16, !tbaa !9
  %i.pl = load i32, ptr %i.il, align 4, !tbaa !9  ; 2 uses
  %i.pm = load i32, ptr %i.im, align 4, !tbaa !9  ; 2 uses
  %i.pn = add nsw i32 %i.pm, %i.pl
  store i32 %i.pn, ptr %i.in, align 4, !tbaa !9
  %i.po = load i32, ptr %i.io, align 4, !tbaa !9  ; 2 uses
  %i.pp = load i32, ptr %i.ip, align 4, !tbaa !9  ; 2 uses
  %i.pq = add nsw i32 %i.pp, %i.po
  store i32 %i.pq, ptr %i.iq, align 8, !tbaa !9
  %i.pr = load i32, ptr %i.ir, align 4, !tbaa !9  ; 2 uses
  %i.ps = load i32, ptr %i.is, align 4, !tbaa !9  ; 2 uses
  %i.pt = add nsw i32 %i.ps, %i.pr
  store i32 %i.pt, ptr %i.it, align 4, !tbaa !9
  %i.pu = load i32, ptr %i.iu, align 4, !tbaa !9  ; 2 uses
  %i.pv = load i32, ptr %i.iv, align 4, !tbaa !9  ; 2 uses
  %i.pw = add nsw i32 %i.pv, %i.pu
  store i32 %i.pw, ptr %i.iw, align 16, !tbaa !9
  %i.px = load i32, ptr %i.ix, align 4, !tbaa !9  ; 2 uses
  %i.py = load i32, ptr %i.iy, align 4, !tbaa !9  ; 2 uses
  %i.pz = add nsw i32 %i.py, %i.px
  store i32 %i.pz, ptr %i.iz, align 4, !tbaa !9
  %i.qa = sub nsw i32 %i.ow, %i.ox
  store i32 %i.qa, ptr %i.gu, align 8, !tbaa !9
  %i.qb = sub nsw i32 %i.oz, %i.pa
  store i32 %i.qb, ptr %i.ja, align 4, !tbaa !9
  %i.qc = sub nsw i32 %i.pc, %i.pd
  store i32 %i.qc, ptr %i.jb, align 16, !tbaa !9
  %i.qd = sub nsw i32 %i.pf, %i.pg
  store i32 %i.qd, ptr %i.jc, align 4, !tbaa !9
  %i.qe = sub nsw i32 %i.pi, %i.pj
  store i32 %i.qe, ptr %i.jd, align 8, !tbaa !9
  %i.qf = sub nsw i32 %i.pl, %i.pm
  store i32 %i.qf, ptr %i.je, align 4, !tbaa !9
  %i.qg = sub nsw i32 %i.po, %i.pp
  store i32 %i.qg, ptr %i.jf, align 16, !tbaa !9
  %i.qh = sub nsw i32 %i.pr, %i.ps
  store i32 %i.qh, ptr %i.jg, align 4, !tbaa !9
  %i.qi = sub nsw i32 %i.pu, %i.pv
  store i32 %i.qi, ptr %i.jh, align 8, !tbaa !9
  %i.qj = sub nsw i32 %i.px, %i.py
  store i32 %i.qj, ptr %i.ji, align 4, !tbaa !9
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  call fastcc void @fe_mul(ptr noundef %i.gv, ptr noundef nonnull %6, ptr noundef nonnull readonly %i.qk)
  call fastcc void @fe_mul(ptr noundef %i.gu, ptr noundef nonnull %i.gu, ptr noundef nonnull readonly %i.ov)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ov, i64 80
  call fastcc void @fe_mul(ptr noundef %i.gs, ptr noundef nonnull readonly %i.ql, ptr noundef nonnull readonly %i.ha)
  %i.qm = load i32, ptr %i.gv, align 16, !tbaa !9 ; 2 uses
  %i.qn = load i32, ptr %i.gu, align 8, !tbaa !9  ; 2 uses
  %i.qo = sub nsw i32 %i.qm, %i.qn
  store i32 %i.qo, ptr %6, align 16, !tbaa !9
  %i.qp = load i32, ptr %i.jj, align 4, !tbaa !9  ; 2 uses
  %i.qq = load i32, ptr %i.ja, align 4, !tbaa !9  ; 2 uses
  %i.qr = sub nsw i32 %i.qp, %i.qq
  store i32 %i.qr, ptr %i.ib, align 4, !tbaa !9
  %i.qs = load i32, ptr %i.jk, align 8, !tbaa !9  ; 2 uses
  %i.qt = load i32, ptr %i.jb, align 16, !tbaa !9 ; 2 uses
  %i.qu = sub nsw i32 %i.qs, %i.qt
  store i32 %i.qu, ptr %i.ie, align 8, !tbaa !9
  %i.qv = load i32, ptr %i.jl, align 4, !tbaa !9  ; 2 uses
  %i.qw = load i32, ptr %i.jc, align 4, !tbaa !9  ; 2 uses
  %i.qx = sub nsw i32 %i.qv, %i.qw
  store i32 %i.qx, ptr %i.ih, align 4, !tbaa !9
  %i.qy = load i32, ptr %i.jm, align 16, !tbaa !9 ; 2 uses
  %i.qz = load i32, ptr %i.jd, align 8, !tbaa !9  ; 2 uses
  %i.ra = sub nsw i32 %i.qy, %i.qz
  store i32 %i.ra, ptr %i.ik, align 16, !tbaa !9
  %i.rb = load i32, ptr %i.jn, align 4, !tbaa !9  ; 2 uses
  %i.rc = load i32, ptr %i.je, align 4, !tbaa !9  ; 2 uses
  %i.rd = sub nsw i32 %i.rb, %i.rc
  store i32 %i.rd, ptr %i.in, align 4, !tbaa !9
  %i.re = load i32, ptr %i.jo, align 8, !tbaa !9  ; 2 uses
  %i.rf = load i32, ptr %i.jf, align 16, !tbaa !9 ; 2 uses
  %i.rg = sub nsw i32 %i.re, %i.rf
  store i32 %i.rg, ptr %i.iq, align 8, !tbaa !9
  %i.rh = load i32, ptr %i.jp, align 4, !tbaa !9  ; 2 uses
  %i.ri = load i32, ptr %i.jg, align 4, !tbaa !9  ; 2 uses
  %i.rj = sub nsw i32 %i.rh, %i.ri
  store i32 %i.rj, ptr %i.it, align 4, !tbaa !9
  %i.rk = load i32, ptr %i.jq, align 16, !tbaa !9 ; 2 uses
  %i.rl = load i32, ptr %i.jh, align 8, !tbaa !9  ; 2 uses
  %i.rm = sub nsw i32 %i.rk, %i.rl
  store i32 %i.rm, ptr %i.iw, align 16, !tbaa !9
  %i.rn = load i32, ptr %i.jr, align 4, !tbaa !9  ; 2 uses
  %i.ro = load i32, ptr %i.ji, align 4, !tbaa !9  ; 2 uses
  %i.rp = sub nsw i32 %i.rn, %i.ro
  store i32 %i.rp, ptr %i.iz, align 4, !tbaa !9
  %i.rq = add nsw i32 %i.qn, %i.qm
  store i32 %i.rq, ptr %i.gu, align 8, !tbaa !9
  %i.rr = add nsw i32 %i.qq, %i.qp
  store i32 %i.rr, ptr %i.ja, align 4, !tbaa !9
  %i.rs = add nsw i32 %i.qt, %i.qs
  store i32 %i.rs, ptr %i.jb, align 16, !tbaa !9
  %i.rt = add nsw i32 %i.qw, %i.qv
  store i32 %i.rt, ptr %i.jc, align 4, !tbaa !9
  %i.ru = add nsw i32 %i.qz, %i.qy
  store i32 %i.ru, ptr %i.jd, align 8, !tbaa !9
  %i.rv = add nsw i32 %i.rc, %i.rb
  store i32 %i.rv, ptr %i.je, align 4, !tbaa !9
  %i.rw = add nsw i32 %i.rf, %i.re
  store i32 %i.rw, ptr %i.jf, align 16, !tbaa !9
  %i.rx = add nsw i32 %i.ri, %i.rh
  store i32 %i.rx, ptr %i.jg, align 4, !tbaa !9
  %i.ry = add nsw i32 %i.rl, %i.rk
  store i32 %i.ry, ptr %i.jh, align 8, !tbaa !9
  %i.rz = add nsw i32 %i.ro, %i.rn
  store i32 %i.rz, ptr %i.ji, align 4, !tbaa !9
  %i.sa = load <4 x i32>, ptr %i.gz, align 4, !tbaa !9
  %i.sb = shl nsw <4 x i32> %i.sa, splat (i32 1)  ; 3 uses
  %i.sc = load <4 x i32>, ptr %i.gs, align 8, !tbaa !9 ; 3 uses
  %i.sd = sub nsw <4 x i32> %i.sb, %i.sc
  store <4 x i32> %i.sd, ptr %i.gv, align 16, !tbaa !9
  %i.se = load <4 x i32>, ptr %i.jw, align 4, !tbaa !9
  %i.sf = shl nsw <4 x i32> %i.se, splat (i32 1)  ; 3 uses
  %i.sg = load <4 x i32>, ptr %i.jt, align 8, !tbaa !9 ; 3 uses
  %i.sh = sub nsw <4 x i32> %i.sf, %i.sg
  store <4 x i32> %i.sh, ptr %i.jm, align 16, !tbaa !9
  %i.si = shufflevector <4 x i32> %i.sc, <4 x i32> %i.sg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.sj = shufflevector <4 x i32> %i.sb, <4 x i32> %i.sf, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.sk = add nsw <4 x i32> %i.si, %i.sj
  store <4 x i32> %i.sk, ptr %i.js, align 4, !tbaa !9
  %foldExtExtBinop99 = add nsw <4 x i32> %i.sg, %i.sf
  %i.sl = extractelement <4 x i32> %foldExtExtBinop99, i64 3
  store i32 %i.sl, ptr %i.ju, align 4, !tbaa !9
  %i.sm = load <2 x i32>, ptr %i.jx, align 4, !tbaa !9
  %i.sn = shl nsw <2 x i32> %i.sm, splat (i32 1)  ; 3 uses
  %i.so = load <2 x i32>, ptr %i.jv, align 8, !tbaa !9 ; 3 uses
  %foldExtExtBinop101 = sub nsw <2 x i32> %i.sn, %i.so
  %i.sp = extractelement <2 x i32> %foldExtExtBinop101, i64 0
  store i32 %i.sp, ptr %i.jq, align 16, !tbaa !9
  %i.sq = shufflevector <2 x i32> %i.sn, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.sr = shufflevector <4 x i32> %i.sc, <4 x i32> %i.sq, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ss = shufflevector <2 x i32> %i.so, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.st = shufflevector <4 x i32> %i.sb, <4 x i32> %i.ss, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.su = sub nsw <4 x i32> %i.sr, %i.st
  %i.sv = add nsw <4 x i32> %i.sr, %i.st
  %i.sw = shufflevector <4 x i32> %i.su, <4 x i32> %i.sv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i32> %i.sw, ptr %i.jr, align 4, !tbaa !9
  %i.sx = add nsw <2 x i32> %i.so, %i.sn
  store <2 x i32> %i.sx, ptr %i.jv, align 8, !tbaa !9
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bt
  call fastcc void @fe_mul(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.hi, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.hk, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.sy = icmp sgt i64 %indvars.iv, 0
  br i1 %i.sy, label %bb.bo, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.bm, %bb.bw, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ge_tobytes(ptr nofree noundef nonnull captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [10 x i32], align 16              ; 5 uses
  %i.c = alloca [10 x i32], align 16              ; 4 uses
  %i.d = alloca [10 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  call fastcc void @fe_invert(ptr noundef %i.b, ptr noundef %i.e)
  call fastcc void @fe_mul(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call fastcc void @fe_mul(ptr noundef %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b)
  call fastcc void @fe_tobytes(ptr noundef nonnull %0, ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @fe_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.c)
  %i.g = load i8, ptr %i.a, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = shl i8 %i.g, 7
  %i.k = xor i8 %i.i, %i.j
  store i8 %i.k, ptr %i.h, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret void
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_ed25519_public_from_private(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [10 x i32], align 16              ; 5 uses
  %i.c = alloca [10 x i32], align 16              ; 4 uses
  %i.d = alloca [10 x i32], align 16              ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 8 uses
  %4 = alloca %struct.ge_p3, align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.f = tail call ptr @EVP_MD_fetch(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %3) #7 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @EVP_Digest(ptr noundef %2, i64 noundef 32, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.f, ptr noundef null) #7
  call void @EVP_MD_free(ptr noundef nonnull %i.f) #7
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.e, align 16, !tbaa !8
  %i.j = and i8 %i.i, -8
  store i8 %i.j, ptr %i.e, align 16, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 31 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, 64
  store i8 %i.n, ptr %i.k, align 1, !tbaa !8
  call fastcc void @ge_scalarmult_base(ptr noundef %4, ptr noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  call fastcc void @fe_invert(ptr noundef %i.b, ptr noundef readonly %i.o)
  call fastcc void @fe_mul(ptr noundef %i.c, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  call fastcc void @fe_mul(ptr noundef %i.d, ptr noundef nonnull readonly %i.p, ptr noundef nonnull %i.b)
  call fastcc void @fe_tobytes(ptr noundef %1, ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @fe_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.c)
  %i.q = load i8, ptr %i.a, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = shl i8 %i.q, 7
  %i.u = xor i8 %i.s, %i.t
  store i8 %i.u, ptr %i.r, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.0.ph = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 64) #7
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  ret i32 %.0
}

declare i32 @EVP_Digest(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_x25519(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @x25519_scalar_mult(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.a = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull @ossl_x25519.kZeros, ptr noundef %0, i64 noundef 32) #7
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x25519_scalar_mult(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  %i.b = alloca [5 x i64], align 16               ; 32 uses
  %i.c = alloca [5 x i64], align 16               ; 264 uses
  %i.d = alloca [5 x i64], align 16               ; 46 uses
  %i.e = alloca [4 x i64], align 16               ; 8 uses
  %i.f = alloca [4 x i64], align 16               ; 32 uses
  %i.g = alloca [4 x i64], align 16               ; 264 uses
  %i.h = alloca [4 x i64], align 16               ; 46 uses
  %i.i = alloca [4 x i64], align 16               ; 7 uses
  %i.j = alloca [4 x i64], align 16               ; 17 uses
  %i.k = alloca [4 x i64], align 16               ; 24 uses
  %i.l = alloca [4 x i64], align 16               ; 13 uses
  %i.m = alloca [4 x i64], align 16               ; 16 uses
  %i.n = alloca [4 x i64], align 16               ; 10 uses
  %i.o = alloca [4 x i64], align 16               ; 11 uses
  %i.p = alloca [32 x i8], align 16               ; 8 uses
  %i.q = alloca [5 x i64], align 16               ; 8 uses
  %i.r = alloca [5 x i64], align 16               ; 15 uses
  %i.s = alloca [5 x i64], align 16               ; 21 uses
  %i.t = alloca [5 x i64], align 16               ; 12 uses
  %i.u = alloca [5 x i64], align 16               ; 14 uses
  %i.v = alloca [5 x i64], align 16               ; 14 uses
  %i.w = alloca [5 x i64], align 16               ; 15 uses
  %i.x = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #7
  %i.y = tail call i32 @x25519_fe64_eligible() #7
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.p, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.z = load i8, ptr %i.p, align 16, !tbaa !8
  %i.aa = and i8 %i.z, -8
  store i8 %i.aa, ptr %i.p, align 16, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 31 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = and i8 %i.ac, 63
  %i.ae = or disjoint i8 %i.ad, 64
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !8
  %i.af = load i64, ptr %2, align 1               ; 2 uses
  store i64 %i.af, ptr %i.i, align 16, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 1            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i64, ptr %i.aj, align 1            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ak, ptr %i.al, align 16, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = and i64 %i.an, 9223372036854775807      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !28
  store i64 1, ptr %i.j, align 16, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store i64 %i.af, ptr %i.l, align 16, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store i64 %i.ah, ptr %i.ar, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 %i.ak, ptr %i.as, align 16, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store i64 %i.ao, ptr %i.at, align 8, !tbaa !28
  store i64 1, ptr %i.m, align 16, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.013.i = phi i32 [ 0, %bb.b ], [ %i.bj, %bb.c ]
  %.01112.i = phi i32 [ 254, %bb.b ], [ %i.dj, %bb.c ] ; 4 uses
  %i.bc = lshr i32 %.01112.i, 3
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = zext i8 %i.bf to i32
  %i.bh = and i32 %.01112.i, 7
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = and i32 %i.bi, 1                        ; 2 uses
  %i.bk = xor i32 %i.bj, %.013.i
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl                    ; 8 uses
  %i.bn = load i64, ptr %i.j, align 16, !tbaa !28 ; 2 uses
  %i.bo = load i64, ptr %i.l, align 16, !tbaa !28 ; 2 uses
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = and i64 %i.bp, %i.bm                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bn
  store i64 %i.br, ptr %i.j, align 16, !tbaa !28
  %i.bs = xor i64 %i.bq, %i.bo
  store i64 %i.bs, ptr %i.l, align 16, !tbaa !28
  %i.bt = load i64, ptr %i.aq, align 8, !tbaa !28 ; 2 uses
  %i.bu = load i64, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = and i64 %i.bv, %i.bm                    ; 2 uses
  %i.bx = xor i64 %i.bw, %i.bt
  store i64 %i.bx, ptr %i.aq, align 8, !tbaa !28
  %i.by = xor i64 %i.bw, %i.bu
  store i64 %i.by, ptr %i.ar, align 8, !tbaa !28
  %i.bz = load i64, ptr %i.av, align 16, !tbaa !28 ; 2 uses
  %i.ca = load i64, ptr %i.as, align 16, !tbaa !28 ; 2 uses
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = and i64 %i.cb, %i.bm                    ; 2 uses
  %i.cd = xor i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.av, align 16, !tbaa !28
  %i.ce = xor i64 %i.cc, %i.ca
  store i64 %i.ce, ptr %i.as, align 16, !tbaa !28
  %i.cf = load i64, ptr %i.aw, align 8, !tbaa !28 ; 2 uses
  %i.cg = load i64, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = and i64 %i.ch, %i.bm                    ; 2 uses
  %i.cj = xor i64 %i.ci, %i.cf
  store i64 %i.cj, ptr %i.aw, align 8, !tbaa !28
  %i.ck = xor i64 %i.ci, %i.cg
  store i64 %i.ck, ptr %i.at, align 8, !tbaa !28
  %i.cl = load i64, ptr %i.k, align 16, !tbaa !28 ; 2 uses
  %i.cm = load i64, ptr %i.m, align 16, !tbaa !28 ; 2 uses
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = and i64 %i.cn, %i.bm                    ; 2 uses
  %i.cp = xor i64 %i.co, %i.cl
  store i64 %i.cp, ptr %i.k, align 16, !tbaa !28
  %i.cq = xor i64 %i.co, %i.cm
  store i64 %i.cq, ptr %i.m, align 16, !tbaa !28
  %i.cr = load i64, ptr %i.ax, align 8, !tbaa !28 ; 2 uses
  %i.cs = load i64, ptr %i.au, align 8, !tbaa !28 ; 2 uses
  %i.ct = xor i64 %i.cs, %i.cr
  %i.cu = and i64 %i.ct, %i.bm                    ; 2 uses
  %i.cv = xor i64 %i.cu, %i.cr
  store i64 %i.cv, ptr %i.ax, align 8, !tbaa !28
  %i.cw = xor i64 %i.cu, %i.cs
  store i64 %i.cw, ptr %i.au, align 8, !tbaa !28
  %i.cx = load i64, ptr %i.ay, align 16, !tbaa !28 ; 2 uses
  %i.cy = load i64, ptr %i.az, align 16, !tbaa !28 ; 2 uses
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = and i64 %i.cz, %i.bm                    ; 2 uses
  %i.db = xor i64 %i.da, %i.cx
  store i64 %i.db, ptr %i.ay, align 16, !tbaa !28
  %i.dc = xor i64 %i.da, %i.cy
  store i64 %i.dc, ptr %i.az, align 16, !tbaa !28
  %i.dd = load i64, ptr %i.ba, align 8, !tbaa !28 ; 2 uses
  %i.de = load i64, ptr %i.bb, align 8, !tbaa !28 ; 2 uses
  %i.df = xor i64 %i.de, %i.dd
  %i.dg = and i64 %i.df, %i.bm                    ; 2 uses
  %i.dh = xor i64 %i.dg, %i.dd
  store i64 %i.dh, ptr %i.ba, align 8, !tbaa !28
  %i.di = xor i64 %i.dg, %i.de
  store i64 %i.di, ptr %i.bb, align 8, !tbaa !28
  call void @x25519_fe64_sub(ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #7
  call void @x25519_fe64_sub(ptr noundef nonnull %i.o, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #7
  call void @x25519_fe64_add(ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #7
  call void @x25519_fe64_add(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %i.n) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.o) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.o, ptr noundef nonnull %i.j) #7
  call void @x25519_fe64_add(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.k) #7
  call void @x25519_fe64_sub(ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.k) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.j, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n) #7
  call void @x25519_fe64_sub(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.k, ptr noundef nonnull %i.k) #7
  call void @x25519_fe64_mul121666(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l) #7
  call void @x25519_fe64_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.m, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.k, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n) #7
  %i.dj = add nsw i32 %.01112.i, -1
  %.not.i = icmp eq i32 %.01112.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !llvm.loop !23

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.e, ptr noundef nonnull %i.k) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.523.i.i = phi i32 [ 1, %bb.d ], [ %i.dk, %bb.e ]
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #7
  %i.dk = add nuw nsw i32 %.523.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dk, 100
  br i1 %exitcond.not.i.i, label %x25519_scalar_mulx.exit, label %bb.e, !llvm.loop !24

x25519_scalar_mulx.exit:                          ; preds = %bb.e
  call void @x25519_fe64_mul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_sqr(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.k, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @x25519_fe64_mul(ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #7
  call void @x25519_fe64_tobytes(ptr noundef %0, ptr noundef nonnull %i.j) #7
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.p, i64 noundef 32) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.x, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.dl = load i8, ptr %i.x, align 16, !tbaa !8
  %i.dm = and i8 %i.dl, -8
  store i8 %i.dm, ptr %i.x, align 16, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.x, i64 31 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8
  %i.dp = and i8 %i.do, 63
  %i.dq = or disjoint i8 %i.dp, 64
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !8
  %i.dr = load i32, ptr %2, align 1
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 32
  %i.dx = or disjoint i64 %i.dw, %i.ds
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 40
  %i.ec = or disjoint i64 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !8
  %i.ef = zext i8 %i.ee to i64                    ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 48
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !8
  %i.ep = zext i8 %i.eo to i64                    ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 45
  %i.er = shl nuw nsw i64 %i.em, 37
  %i.es = shl nuw nsw i64 %i.ej, 5
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.eu = load i32, ptr %i.et, align 1
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !8
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !8
  %i.fe = zext i8 %i.fd to i64                    ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 50
  %i.fg = shl nuw nsw i64 %i.fb, 42
  %i.fh = shl nuw nsw i64 %i.ey, 34
  %i.fi = shl nuw nsw i64 %i.ev, 2
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fk = load i32, ptr %i.fj, align 1
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !8
  %i.fr = zext i8 %i.fq to i64                    ; 2 uses
  %i.fs = shl nuw nsw i64 %i.fr, 47
  %i.ft = shl nuw nsw i64 %i.fo, 39
  %i.fu = shl nuw nsw i64 %i.fl, 7
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fw = load i32, ptr %i.fv, align 1
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !8
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !8
  %i.gd = zext i8 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 44
  %i.gf = shl nuw nsw i64 %i.ga, 36
  %i.gg = shl nuw nsw i64 %i.fx, 4
  %.masked28.i = and i64 %i.ge, 2234207627640832
  %i.gh = lshr i64 %i.ef, 3
  %.masked29.i = and i64 %i.eg, 1970324836974592
  %i.gi = or disjoint i64 %i.ec, %.masked29.i     ; 2 uses
  %i.gj = lshr i64 %i.ep, 6
  %.masked30.i = and i64 %i.eq, 2216615441596416
  %i.gk = or disjoint i64 %i.es, %i.gh
  %.masked.i = or disjoint i64 %i.gk, %i.er
  %i.gl = or disjoint i64 %.masked.i, %.masked30.i ; 2 uses
  %i.gm = lshr i64 %i.fe, 1
  %.masked31.i = and i64 %i.ff, 1125899906842624
  %i.gn = or disjoint i64 %i.fi, %i.gj
  %i.go = or disjoint i64 %i.gn, %i.fh
  %.masked26.i = or disjoint i64 %i.go, %i.fg
  %i.gp = or disjoint i64 %.masked26.i, %.masked31.i ; 2 uses
  %i.gq = lshr i64 %i.fr, 4
  %i.gr = or disjoint i64 %i.gg, %i.gq
  %i.gs = or disjoint i64 %i.gr, %i.gf
  %i.gt = or disjoint i64 %.masked28.i, %i.gs     ; 2 uses
  %.masked32.i = and i64 %i.fs, 2111062325329920
  %i.gu = or disjoint i64 %i.fu, %i.gm
  %.masked27.i = or disjoint i64 %i.gu, %i.ft
  %i.gv = or disjoint i64 %.masked27.i, %.masked32.i ; 2 uses
  store i64 %i.gi, ptr %i.q, align 16, !tbaa !28
  %i.gw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.gl, ptr %i.gw, align 8, !tbaa !28
  %i.gx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.gp, ptr %i.gx, align 16, !tbaa !28
  %i.gy = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.gv, ptr %i.gy, align 8, !tbaa !28
  %i.gz = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.gt, ptr %i.gz, align 16, !tbaa !28
  store i64 1, ptr %i.r, align 16, !tbaa !28
  %i.ha = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  store i64 %i.gi, ptr %i.t, align 16, !tbaa !28
  %i.hb = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store i64 %i.gl, ptr %i.hb, align 8, !tbaa !28
  %i.hc = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  store i64 %i.gp, ptr %i.hc, align 16, !tbaa !28
  %i.hd = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 4 uses
  store i64 %i.gv, ptr %i.hd, align 8, !tbaa !28
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 4 uses
  store i64 %i.gt, ptr %i.he, align 16, !tbaa !28
  store i64 1, ptr %i.u, align 16, !tbaa !28
  %i.hf = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i8 0, i64 32, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ht = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.035 = phi i32 [ 0, %bb.f ], [ %i.if, %bb.g ]
  %.01434 = phi i32 [ 254, %bb.f ], [ %i.np, %bb.g ] ; 4 uses
  %i.hy = lshr i32 %.01434, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !8
  %i.ic = zext i8 %i.ib to i32
  %i.id = and i32 %.01434, 7
  %i.ie = lshr i32 %i.ic, %i.id
  %i.if = and i32 %i.ie, 1                        ; 2 uses
  %i.ig = xor i32 %i.if, %.035
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = sub nsw i64 0, %i.ih                    ; 10 uses
  %i.ij = load i64, ptr %i.r, align 16, !tbaa !28 ; 2 uses
  %i.ik = load i64, ptr %i.t, align 16, !tbaa !28 ; 2 uses
  %i.il = xor i64 %i.ik, %i.ij
  %i.im = and i64 %i.il, %i.ii                    ; 2 uses
  %i.in = xor i64 %i.im, %i.ij                    ; 2 uses
  %i.io = xor i64 %i.im, %i.ik                    ; 3 uses
  store i64 %i.io, ptr %i.t, align 16, !tbaa !28
  %i.ip = load i64, ptr %i.ha, align 8, !tbaa !28 ; 2 uses
  %i.iq = load i64, ptr %i.hb, align 8, !tbaa !28 ; 2 uses
  %i.ir = xor i64 %i.iq, %i.ip
  %i.is = and i64 %i.ir, %i.ii                    ; 2 uses
  %i.it = xor i64 %i.is, %i.ip                    ; 2 uses
  %i.iu = xor i64 %i.is, %i.iq                    ; 3 uses
  store i64 %i.iu, ptr %i.hb, align 8, !tbaa !28
  %i.iv = load i64, ptr %i.hg, align 16, !tbaa !28 ; 2 uses
  %i.iw = load i64, ptr %i.hc, align 16, !tbaa !28 ; 2 uses
  %i.ix = xor i64 %i.iw, %i.iv
  %i.iy = and i64 %i.ix, %i.ii                    ; 2 uses
  %i.iz = xor i64 %i.iy, %i.iv                    ; 2 uses
  %i.ja = xor i64 %i.iy, %i.iw                    ; 3 uses
  store i64 %i.ja, ptr %i.hc, align 16, !tbaa !28
  %i.jb = load i64, ptr %i.hh, align 8, !tbaa !28 ; 2 uses
  %i.jc = load i64, ptr %i.hd, align 8, !tbaa !28 ; 2 uses
  %i.jd = xor i64 %i.jc, %i.jb
  %i.je = and i64 %i.jd, %i.ii                    ; 2 uses
  %i.jf = xor i64 %i.je, %i.jb                    ; 2 uses
  %i.jg = xor i64 %i.je, %i.jc                    ; 3 uses
  store i64 %i.jg, ptr %i.hd, align 8, !tbaa !28
  %i.jh = load i64, ptr %i.hi, align 16, !tbaa !28 ; 2 uses
  %i.ji = load i64, ptr %i.he, align 16, !tbaa !28 ; 2 uses
  %i.jj = xor i64 %i.ji, %i.jh
  %i.jk = and i64 %i.jj, %i.ii                    ; 2 uses
  %i.jl = xor i64 %i.jk, %i.jh                    ; 2 uses
  %i.jm = xor i64 %i.jk, %i.ji                    ; 3 uses
  store i64 %i.jm, ptr %i.he, align 16, !tbaa !28
  %i.jn = load i64, ptr %i.s, align 16, !tbaa !28 ; 2 uses
  %i.jo = load i64, ptr %i.u, align 16, !tbaa !28 ; 2 uses
  %i.jp = xor i64 %i.jo, %i.jn
  %i.jq = and i64 %i.jp, %i.ii                    ; 2 uses
  %i.jr = xor i64 %i.jq, %i.jn                    ; 2 uses
  %i.js = xor i64 %i.jq, %i.jo                    ; 3 uses
  store i64 %i.js, ptr %i.u, align 16, !tbaa !28
  %i.jt = load i64, ptr %i.hj, align 8, !tbaa !28 ; 2 uses
  %i.ju = load i64, ptr %i.hf, align 8, !tbaa !28 ; 2 uses
  %i.jv = xor i64 %i.ju, %i.jt
  %i.jw = and i64 %i.jv, %i.ii                    ; 2 uses
  %i.jx = xor i64 %i.jw, %i.jt                    ; 2 uses
  %i.jy = xor i64 %i.jw, %i.ju                    ; 3 uses
  store i64 %i.jy, ptr %i.hf, align 8, !tbaa !28
  %i.jz = load i64, ptr %i.hk, align 16, !tbaa !28 ; 2 uses
  %i.ka = load i64, ptr %i.hl, align 16, !tbaa !28 ; 2 uses
  %i.kb = xor i64 %i.ka, %i.jz
  %i.kc = and i64 %i.kb, %i.ii                    ; 2 uses
  %i.kd = xor i64 %i.kc, %i.jz                    ; 2 uses
  %i.ke = xor i64 %i.kc, %i.ka                    ; 3 uses
  store i64 %i.ke, ptr %i.hl, align 16, !tbaa !28
  %i.kf = load i64, ptr %i.hm, align 8, !tbaa !28 ; 2 uses
  %i.kg = load i64, ptr %i.hn, align 8, !tbaa !28 ; 2 uses
  %i.kh = xor i64 %i.kg, %i.kf
  %i.ki = and i64 %i.kh, %i.ii                    ; 2 uses
  %i.kj = xor i64 %i.ki, %i.kf                    ; 2 uses
  %i.kk = xor i64 %i.ki, %i.kg                    ; 3 uses
  store i64 %i.kk, ptr %i.hn, align 8, !tbaa !28
  %i.kl = load i64, ptr %i.ho, align 16, !tbaa !28 ; 2 uses
  %i.km = load i64, ptr %i.hp, align 16, !tbaa !28 ; 2 uses
  %i.kn = xor i64 %i.km, %i.kl
  %i.ko = and i64 %i.kn, %i.ii                    ; 2 uses
  %i.kp = xor i64 %i.ko, %i.kl                    ; 2 uses
  %i.kq = xor i64 %i.ko, %i.km                    ; 3 uses
  store i64 %i.kq, ptr %i.hp, align 16, !tbaa !28
  %i.kr = add i64 %i.io, 4503599627370458
  %i.ks = sub i64 %i.kr, %i.js
  store i64 %i.ks, ptr %i.v, align 16, !tbaa !28
  %i.kt = add i64 %i.iu, 4503599627370494
  %i.ku = sub i64 %i.kt, %i.jy
  store i64 %i.ku, ptr %i.hq, align 8, !tbaa !28
  %i.kv = add i64 %i.ja, 4503599627370494
  %i.kw = sub i64 %i.kv, %i.ke
  store i64 %i.kw, ptr %i.hr, align 16, !tbaa !28
  %i.kx = add i64 %i.jg, 4503599627370494
  %i.ky = sub i64 %i.kx, %i.kk
  store i64 %i.ky, ptr %i.hs, align 8, !tbaa !28
  %i.kz = add i64 %i.jm, 4503599627370494
  %i.la = sub i64 %i.kz, %i.kq
  store i64 %i.la, ptr %i.ht, align 16, !tbaa !28
  %i.lb = add i64 %i.in, 4503599627370458
  %i.lc = sub i64 %i.lb, %i.jr
  store i64 %i.lc, ptr %i.w, align 16, !tbaa !28
  %i.ld = add i64 %i.it, 4503599627370494
  %i.le = sub i64 %i.ld, %i.jx
  store i64 %i.le, ptr %i.hu, align 8, !tbaa !28
  %i.lf = add i64 %i.iz, 4503599627370494
  %i.lg = sub i64 %i.lf, %i.kd
  store i64 %i.lg, ptr %i.hv, align 16, !tbaa !28
  %i.lh = add i64 %i.jf, 4503599627370494
  %i.li = sub i64 %i.lh, %i.kj
  store i64 %i.li, ptr %i.hw, align 8, !tbaa !28
  %i.lj = add i64 %i.jl, 4503599627370494
  %i.lk = sub i64 %i.lj, %i.kp
  store i64 %i.lk, ptr %i.hx, align 16, !tbaa !28
  %i.ll = add i64 %i.jr, %i.in
  store i64 %i.ll, ptr %i.r, align 16, !tbaa !28
  %i.lm = add i64 %i.jx, %i.it
  store i64 %i.lm, ptr %i.ha, align 8, !tbaa !28
  %i.ln = add i64 %i.kd, %i.iz
  store i64 %i.ln, ptr %i.hg, align 16, !tbaa !28
  %i.lo = add i64 %i.kj, %i.jf
  store i64 %i.lo, ptr %i.hh, align 8, !tbaa !28
  %i.lp = add i64 %i.kp, %i.jl
  store i64 %i.lp, ptr %i.hi, align 16, !tbaa !28
  %i.lq = add i64 %i.js, %i.io
  store i64 %i.lq, ptr %i.s, align 16, !tbaa !28
  %i.lr = add i64 %i.jy, %i.iu
  store i64 %i.lr, ptr %i.hj, align 8, !tbaa !28
  %i.ls = add i64 %i.ke, %i.ja
  store i64 %i.ls, ptr %i.hk, align 16, !tbaa !28
  %i.lt = add i64 %i.kk, %i.jg
  store i64 %i.lt, ptr %i.hm, align 8, !tbaa !28
  %i.lu = add i64 %i.kq, %i.jm
  store i64 %i.lu, ptr %i.ho, align 16, !tbaa !28
  call void @x25519_fe51_mul(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.r) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.s, ptr noundef nonnull %i.s, ptr noundef nonnull %i.w) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.w, ptr noundef nonnull %i.r) #7
  %i.lv = load i64, ptr %i.u, align 16, !tbaa !28 ; 2 uses
  %i.lw = load i64, ptr %i.s, align 16, !tbaa !28 ; 2 uses
  %i.lx = add i64 %i.lw, %i.lv
  store i64 %i.lx, ptr %i.t, align 16, !tbaa !28
  %i.ly = load i64, ptr %i.hf, align 8, !tbaa !28 ; 2 uses
  %i.lz = load i64, ptr %i.hj, align 8, !tbaa !28 ; 2 uses
  %i.ma = add i64 %i.lz, %i.ly
  store i64 %i.ma, ptr %i.hb, align 8, !tbaa !28
  %i.mb = load i64, ptr %i.hl, align 16, !tbaa !28 ; 2 uses
  %i.mc = load i64, ptr %i.hk, align 16, !tbaa !28 ; 2 uses
  %i.md = add i64 %i.mc, %i.mb
  store i64 %i.md, ptr %i.hc, align 16, !tbaa !28
  %i.me = load i64, ptr %i.hn, align 8, !tbaa !28 ; 2 uses
  %i.mf = load i64, ptr %i.hm, align 8, !tbaa !28 ; 2 uses
  %i.mg = add i64 %i.mf, %i.me
  store i64 %i.mg, ptr %i.hd, align 8, !tbaa !28
  %i.mh = load i64, ptr %i.hp, align 16, !tbaa !28 ; 2 uses
  %i.mi = load i64, ptr %i.ho, align 16, !tbaa !28 ; 2 uses
  %i.mj = add i64 %i.mi, %i.mh
  store i64 %i.mj, ptr %i.he, align 16, !tbaa !28
  %i.mk = add i64 %i.lv, 4503599627370458
  %i.ml = sub i64 %i.mk, %i.lw
  store i64 %i.ml, ptr %i.s, align 16, !tbaa !28
  %i.mm = add i64 %i.ly, 4503599627370494
  %i.mn = sub i64 %i.mm, %i.lz
  store i64 %i.mn, ptr %i.hj, align 8, !tbaa !28
  %i.mo = add i64 %i.mb, 4503599627370494
  %i.mp = sub i64 %i.mo, %i.mc
  store i64 %i.mp, ptr %i.hk, align 16, !tbaa !28
  %i.mq = add i64 %i.me, 4503599627370494
  %i.mr = sub i64 %i.mq, %i.mf
  store i64 %i.mr, ptr %i.hm, align 8, !tbaa !28
  %i.ms = add i64 %i.mh, 4503599627370494
  %i.mt = sub i64 %i.ms, %i.mi
  store i64 %i.mt, ptr %i.ho, align 16, !tbaa !28
  call void @x25519_fe51_mul(ptr noundef nonnull %i.r, ptr noundef nonnull %i.w, ptr noundef nonnull %i.v) #7
  %i.mu = load <2 x i64>, ptr %i.w, align 16, !tbaa !28
  %i.mv = add <2 x i64> %i.mu, <i64 4503599627370458, i64 4503599627370494>
  %i.mw = load <2 x i64>, ptr %i.v, align 16, !tbaa !28
  %i.mx = sub <2 x i64> %i.mv, %i.mw
  store <2 x i64> %i.mx, ptr %i.w, align 16, !tbaa !28
  %i.my = load <2 x i64>, ptr %i.hv, align 16, !tbaa !28
  %i.mz = add <2 x i64> %i.my, splat (i64 4503599627370494)
  %i.na = load <2 x i64>, ptr %i.hr, align 16, !tbaa !28
  %i.nb = sub <2 x i64> %i.mz, %i.na
  store <2 x i64> %i.nb, ptr %i.hv, align 16, !tbaa !28
  %i.nc = load i64, ptr %i.hx, align 16, !tbaa !28
  %i.nd = add i64 %i.nc, 4503599627370494
  %i.ne = load i64, ptr %i.ht, align 16, !tbaa !28
  %i.nf = sub i64 %i.nd, %i.ne
  store i64 %i.nf, ptr %i.hx, align 16, !tbaa !28
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.s, ptr noundef nonnull %i.s) #7
  call void @x25519_fe51_mul121666(ptr noundef nonnull %i.u, ptr noundef nonnull %i.w) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.t, ptr noundef nonnull %i.t) #7
  %i.ng = load <2 x i64>, ptr %i.v, align 16, !tbaa !28
  %i.nh = load <2 x i64>, ptr %i.u, align 16, !tbaa !28
  %i.ni = add <2 x i64> %i.nh, %i.ng
  store <2 x i64> %i.ni, ptr %i.v, align 16, !tbaa !28
  %i.nj = load <2 x i64>, ptr %i.hr, align 16, !tbaa !28
  %i.nk = load <2 x i64>, ptr %i.hl, align 16, !tbaa !28
  %i.nl = add <2 x i64> %i.nk, %i.nj
  store <2 x i64> %i.nl, ptr %i.hr, align 16, !tbaa !28
  %i.nm = load i64, ptr %i.ht, align 16, !tbaa !28
  %i.nn = load i64, ptr %i.hp, align 16, !tbaa !28
  %i.no = add i64 %i.nn, %i.nm
  store i64 %i.no, ptr %i.ht, align 16, !tbaa !28
  call void @x25519_fe51_mul(ptr noundef nonnull %i.u, ptr noundef nonnull %i.q, ptr noundef nonnull %i.s) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.s, ptr noundef nonnull %i.w, ptr noundef nonnull %i.v) #7
  %i.np = add nsw i32 %.01434, -1
  %.not36 = icmp eq i32 %.01434, 0
  br i1 %.not36, label %bb.h, label %bb.g, !llvm.loop !25

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.a, ptr noundef nonnull %i.s) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.s, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.523.i = phi i32 [ 1, %bb.h ], [ %i.nq, %bb.i ]
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7
  %i.nq = add nuw nsw i32 %.523.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.nq, 100
  br i1 %exitcond.not.i, label %fe51_invert.exit, label %bb.i, !llvm.loop !26

fe51_invert.exit:                                 ; preds = %bb.i
  call void @x25519_fe51_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @x25519_fe51_mul(ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) #7
  %i.nr = load i64, ptr %i.r, align 16, !tbaa !28 ; 2 uses
  %i.ns = load i64, ptr %i.ha, align 8, !tbaa !28 ; 2 uses
  %i.nt = load i64, ptr %i.hg, align 16, !tbaa !28 ; 2 uses
  %i.nu = load i64, ptr %i.hh, align 8, !tbaa !28 ; 2 uses
  %i.nv = load i64, ptr %i.hi, align 16, !tbaa !28 ; 2 uses
  %i.nw = add i64 %i.nr, 19
  %i.nx = lshr i64 %i.nw, 51
  %i.ny = add i64 %i.nx, %i.ns
  %i.nz = lshr i64 %i.ny, 51
  %i.oa = add i64 %i.nz, %i.nt
  %i.ob = lshr i64 %i.oa, 51
  %i.oc = add i64 %i.ob, %i.nu
  %i.od = lshr i64 %i.oc, 51
  %i.oe = add i64 %i.od, %i.nv
  %i.of = lshr i64 %i.oe, 51
  %i.og = mul nuw nsw i64 %i.of, 19
  %i.oh = add i64 %i.og, %i.nr                    ; 8 uses
  %i.oi = lshr i64 %i.oh, 51
  %i.oj = add i64 %i.oi, %i.ns                    ; 8 uses
  %i.ok = lshr i64 %i.oj, 51
  %i.ol = add i64 %i.ok, %i.nt                    ; 9 uses
  %i.om = lshr i64 %i.ol, 51
  %i.on = add i64 %i.om, %i.nu                    ; 8 uses
  %i.oo = lshr i64 %i.on, 51
  %i.op = add i64 %i.oo, %i.nv                    ; 7 uses
  %i.oq = trunc i64 %i.oh to i8
  store i8 %i.oq, ptr %0, align 1, !tbaa !8
  %i.or = lshr i64 %i.oh, 8
  %i.os = trunc i64 %i.or to i8
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !8
  %i.ou = lshr i64 %i.oh, 16
  %i.ov = trunc i64 %i.ou to i8
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !8
  %i.ox = lshr i64 %i.oh, 24
  %i.oy = trunc i64 %i.ox to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !8
  %i.pa = lshr i64 %i.oh, 32
  %i.pb = trunc i64 %i.pa to i8
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !8
  %i.pd = lshr i64 %i.oh, 40
  %i.pe = trunc i64 %i.pd to i8
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !8
  %i.pg = lshr i64 %i.oh, 48
  %i.ph = and i64 %i.pg, 7
  %i.pi = shl i64 %i.oj, 3
  %i.pj = or disjoint i64 %i.pi, %i.ph
  %i.pk = trunc i64 %i.pj to i8
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !8
  %i.pm = lshr i64 %i.oj, 5
  %i.pn = trunc i64 %i.pm to i8
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !8
  %i.pp = lshr i64 %i.oj, 13
  %i.pq = trunc i64 %i.pp to i8
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !8
  %i.ps = lshr i64 %i.oj, 21
  %i.pt = trunc i64 %i.ps to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !8
  %i.pv = lshr i64 %i.oj, 29
  %i.pw = trunc i64 %i.pv to i8
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !8
  %i.py = lshr i64 %i.oj, 37
  %i.pz = trunc i64 %i.py to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !8
  %i.qb = lshr i64 %i.oj, 45
  %i.qc = and i64 %i.qb, 63
  %i.qd = shl i64 %i.ol, 6
  %i.qe = or disjoint i64 %i.qd, %i.qc
  %i.qf = trunc i64 %i.qe to i8
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !8
  %i.qh = lshr i64 %i.ol, 2
  %i.qi = trunc i64 %i.qh to i8
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !8
  %i.qk = lshr i64 %i.ol, 10
  %i.ql = trunc i64 %i.qk to i8
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !8
  %i.qn = lshr i64 %i.ol, 18
  %i.qo = trunc i64 %i.qn to i8
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !8
  %i.qq = lshr i64 %i.ol, 26
  %i.qr = trunc i64 %i.qq to i8
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !8
  %i.qt = lshr i64 %i.ol, 34
  %i.qu = trunc i64 %i.qt to i8
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !8
  %i.qw = lshr i64 %i.ol, 42
  %i.qx = trunc i64 %i.qw to i8
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.qx, ptr %i.qy, align 1, !tbaa !8
  %i.qz = lshr i64 %i.ol, 50
  %i.ra = and i64 %i.qz, 1
  %i.rb = shl i64 %i.on, 1
  %i.rc = or disjoint i64 %i.rb, %i.ra
  %i.rd = trunc i64 %i.rc to i8
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.rd, ptr %i.re, align 1, !tbaa !8
  %i.rf = lshr i64 %i.on, 7
  %i.rg = trunc i64 %i.rf to i8
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !8
  %i.ri = lshr i64 %i.on, 15
  %i.rj = trunc i64 %i.ri to i8
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !8
  %i.rl = lshr i64 %i.on, 23
  %i.rm = trunc i64 %i.rl to i8
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !8
  %i.ro = lshr i64 %i.on, 31
  %i.rp = trunc i64 %i.ro to i8
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !8
  %i.rr = lshr i64 %i.on, 39
  %i.rs = trunc i64 %i.rr to i8
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !8
  %i.ru = lshr i64 %i.on, 47
  %i.rv = and i64 %i.ru, 15
  %i.rw = shl i64 %i.op, 4
  %i.rx = or disjoint i64 %i.rw, %i.rv
  %i.ry = trunc i64 %i.rx to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !8
  %i.sa = lshr i64 %i.op, 4
  %i.sb = trunc i64 %i.sa to i8
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.sb, ptr %i.sc, align 1, !tbaa !8
  %i.sd = lshr i64 %i.op, 12
  %i.se = trunc i64 %i.sd to i8
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.se, ptr %i.sf, align 1, !tbaa !8
  %i.sg = lshr i64 %i.op, 20
  %i.sh = trunc i64 %i.sg to i8
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.sh, ptr %i.si, align 1, !tbaa !8
  %i.sj = lshr i64 %i.op, 28
  %i.sk = trunc i64 %i.sj to i8
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.sk, ptr %i.sl, align 1, !tbaa !8
  %i.sm = lshr i64 %i.op, 36
  %i.sn = trunc i64 %i.sm to i8
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !8
  %i.sp = lshr i64 %i.op, 44
  %i.sq = trunc i64 %i.sp to i8
  %i.sr = and i8 %i.sq, 127
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.x, i64 noundef 32) #7
  br label %bb.j

bb.j:                                             ; preds = %fe51_invert.exit, %x25519_scalar_mulx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_x25519_public_from_private(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %2 = alloca %struct.ge_p3, align 4              ; 23 uses
  %i.b = alloca [10 x i32], align 16              ; 15 uses
  %i.c = alloca [10 x i32], align 16              ; 13 uses
  %i.d = alloca [10 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = load i8, ptr %i.a, align 16, !tbaa !8
  %i.f = and i8 %i.e, -8
  store i8 %i.f, ptr %i.a, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, 64
  store i8 %i.j, ptr %i.g, align 1, !tbaa !8
  call fastcc void @ge_scalarmult_base(ptr noundef %2, ptr noundef %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i32, ptr %i.k, align 4, !tbaa !9    ; 2 uses
end_hunk_3
begin_hunk_4_@ossl_x25519_public_from_private:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9  ; 2 uses
  %i.ar = add nsw i32 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !9  ; 2 uses
  %i.ax = add nsw i32 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9  ; 2 uses
  %i.bd = add nsw i32 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !9  ; 2 uses
  %i.bj = add nsw i32 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.bj, ptr %i.bk, align 16, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !9  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9  ; 2 uses
  %i.bp = add nsw i32 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !9
  %i.br = sub nsw i32 %i.m, %i.n
  store i32 %i.br, ptr %i.c, align 16, !tbaa !9
  %i.bs = sub nsw i32 %i.q, %i.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !9
  %i.bu = sub nsw i32 %i.w, %i.y
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !9
  %i.bw = sub nsw i32 %i.ac, %i.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !9
  %i.by = sub nsw i32 %i.ai, %i.ak
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.by, ptr %i.bz, align 16, !tbaa !9
  %i.ca = sub nsw i32 %i.ao, %i.aq
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !9
  %i.cc = sub nsw i32 %i.au, %i.aw
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !9
  %i.ce = sub nsw i32 %i.ba, %i.bc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !9
  %i.cg = sub nsw i32 %i.bg, %i.bi
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.cg, ptr %i.ch, align 16, !tbaa !9
  %i.ci = sub nsw i32 %i.bm, %i.bo
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !9
  call fastcc void @fe_invert(ptr noundef %i.d, ptr noundef %i.c)
  call fastcc void @fe_mul(ptr noundef %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
  call fastcc void @fe_tobytes(ptr noundef %0, ptr noundef %i.b)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @fe_invert(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 8 uses
  %i.b = alloca [10 x i32], align 16              ; 32 uses
  %i.c = alloca [10 x i32], align 16              ; 264 uses
  %i.d = alloca [10 x i32], align 16              ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call fastcc void @fe_sq(ptr noundef %i.a, ptr noundef %1)
  call fastcc void @fe_sq(ptr noundef %i.b, ptr noundef %i.a)
  call fastcc void @fe_sq(ptr noundef %i.b, ptr noundef %i.b)
  call fastcc void @fe_mul(ptr noundef %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  call fastcc void @fe_mul(ptr noundef %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.a)
  call fastcc void @fe_mul(ptr noundef %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.b)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_mul(ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.b)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_mul(ptr noundef %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  call fastcc void @fe_mul(ptr noundef %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_mul(ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.b)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_mul(ptr noundef %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.c)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.523 = phi i32 [ 1, %bb.a ], [ %i.e, %bb.b ]
  call fastcc void @fe_sq(ptr noundef %i.d, ptr noundef %i.d)
  %i.e = add nuw nsw i32 %.523, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.e, 100
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !29

bb.c:                                             ; preds = %bb.b
  call fastcc void @fe_mul(ptr noundef %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_sq(ptr noundef %i.c, ptr noundef %i.c)
  call fastcc void @fe_mul(ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  call fastcc void @fe_sq(ptr noundef %i.b, ptr noundef %i.b)
  call fastcc void @fe_sq(ptr noundef %i.b, ptr noundef %i.b)
  call fastcc void @fe_sq(ptr noundef %i.b, ptr noundef %i.b)
  call fastcc void @fe_sq(ptr noundef %i.b, ptr noundef %i.b)
  call fastcc void @fe_sq(ptr noundef %i.b, ptr noundef %i.b)
  call fastcc void @fe_mul(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @fe_mul(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9    ; 2 uses
  %i.t = load i32, ptr %2, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !9  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !9  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  %i.am = mul nsw i32 %i.v, 19
  %i.an = mul nsw i32 %i.x, 19
  %i.ao = mul nsw i32 %i.z, 19
  %i.ap = mul nsw i32 %i.ab, 19
  %i.aq = mul nsw i32 %i.ad, 19
  %i.ar = mul nsw i32 %i.af, 19
  %i.as = mul nsw i32 %i.ah, 19
  %i.at = mul nsw i32 %i.aj, 19
  %i.au = mul nsw i32 %i.al, 19
  %i.av = shl nsw i32 %i.c, 1
  %i.aw = shl nsw i32 %i.g, 1
  %i.ax = shl nsw i32 %i.k, 1
  %i.ay = shl nsw i32 %i.o, 1
  %i.az = shl nsw i32 %i.s, 1
  %i.ba = sext i32 %i.a to i64                    ; 10 uses
  %i.bb = sext i32 %i.t to i64                    ; 10 uses
  %i.bc = mul nsw i64 %i.bb, %i.ba
  %i.bd = sext i32 %i.v to i64                    ; 9 uses
  %i.be = mul nsw i64 %i.bd, %i.ba
  %i.bf = sext i32 %i.x to i64                    ; 8 uses
  %i.bg = mul nsw i64 %i.bf, %i.ba
  %i.bh = sext i32 %i.z to i64                    ; 7 uses
  %i.bi = mul nsw i64 %i.bh, %i.ba
  %i.bj = sext i32 %i.ab to i64                   ; 6 uses
  %i.bk = mul nsw i64 %i.bj, %i.ba
  %i.bl = sext i32 %i.ad to i64                   ; 5 uses
  %i.bm = mul nsw i64 %i.bl, %i.ba
  %i.bn = sext i32 %i.af to i64                   ; 4 uses
  %i.bo = mul nsw i64 %i.bn, %i.ba
  %i.bp = sext i32 %i.ah to i64                   ; 3 uses
  %i.bq = mul nsw i64 %i.bp, %i.ba
  %i.br = sext i32 %i.aj to i64                   ; 2 uses
  %i.bs = mul nsw i64 %i.br, %i.ba
  %i.bt = sext i32 %i.al to i64
  %i.bu = mul nsw i64 %i.bt, %i.ba
  %i.bv = sext i32 %i.c to i64                    ; 5 uses
  %i.bw = mul nsw i64 %i.bb, %i.bv
  %i.bx = sext i32 %i.av to i64                   ; 5 uses
  %i.by = mul nsw i64 %i.bd, %i.bx
  %i.bz = mul nsw i64 %i.bf, %i.bv
  %i.ca = mul nsw i64 %i.bh, %i.bx
  %i.cb = mul nsw i64 %i.bj, %i.bv
  %i.cc = mul nsw i64 %i.bl, %i.bx
  %i.cd = mul nsw i64 %i.bn, %i.bv
  %i.ce = mul nsw i64 %i.bp, %i.bx
  %i.cf = mul nsw i64 %i.br, %i.bv
  %i.cg = sext i32 %i.au to i64                   ; 9 uses
  %i.ch = mul nsw i64 %i.cg, %i.bx
  %i.ci = sext i32 %i.e to i64                    ; 10 uses
  %i.cj = mul nsw i64 %i.bb, %i.ci
  %i.ck = mul nsw i64 %i.bd, %i.ci
  %i.cl = mul nsw i64 %i.bf, %i.ci
  %i.cm = mul nsw i64 %i.bh, %i.ci
  %i.cn = mul nsw i64 %i.bj, %i.ci
  %i.co = mul nsw i64 %i.bl, %i.ci
  %i.cp = mul nsw i64 %i.bn, %i.ci
  %i.cq = mul nsw i64 %i.bp, %i.ci
  %i.cr = sext i32 %i.at to i64                   ; 8 uses
  %i.cs = mul nsw i64 %i.cr, %i.ci
  %i.ct = mul nsw i64 %i.cg, %i.ci
  %i.cu = sext i32 %i.g to i64                    ; 5 uses
  %i.cv = mul nsw i64 %i.bb, %i.cu
  %i.cw = sext i32 %i.aw to i64                   ; 5 uses
  %i.cx = mul nsw i64 %i.bd, %i.cw
  %i.cy = mul nsw i64 %i.bf, %i.cu
  %i.cz = mul nsw i64 %i.bh, %i.cw
  %i.da = mul nsw i64 %i.bj, %i.cu
  %i.db = mul nsw i64 %i.bl, %i.cw
  %i.dc = mul nsw i64 %i.bn, %i.cu
  %i.dd = sext i32 %i.as to i64                   ; 7 uses
  %i.de = mul nsw i64 %i.dd, %i.cw
  %i.df = mul nsw i64 %i.cr, %i.cu
  %i.dg = mul nsw i64 %i.cg, %i.cw
  %i.dh = sext i32 %i.i to i64                    ; 10 uses
  %i.di = mul nsw i64 %i.bb, %i.dh
  %i.dj = mul nsw i64 %i.bd, %i.dh
  %i.dk = mul nsw i64 %i.bf, %i.dh
  %i.dl = mul nsw i64 %i.bh, %i.dh
  %i.dm = mul nsw i64 %i.bj, %i.dh
  %i.dn = mul nsw i64 %i.bl, %i.dh
  %i.do = sext i32 %i.ar to i64                   ; 6 uses
  %i.dp = mul nsw i64 %i.do, %i.dh
  %i.dq = mul nsw i64 %i.dd, %i.dh
  %i.dr = mul nsw i64 %i.cr, %i.dh
  %i.ds = mul nsw i64 %i.cg, %i.dh
  %i.dt = sext i32 %i.k to i64                    ; 5 uses
  %i.du = mul nsw i64 %i.bb, %i.dt
  %i.dv = sext i32 %i.ax to i64                   ; 5 uses
  %i.dw = mul nsw i64 %i.bd, %i.dv
  %i.dx = mul nsw i64 %i.bf, %i.dt
  %i.dy = mul nsw i64 %i.bh, %i.dv
  %i.dz = mul nsw i64 %i.bj, %i.dt
end_hunk_4
begin_hunk_5_@fe_tobytes:bb.a
  %i.bz = and i32 %i.by, 3
  %i.ca = shl nuw nsw i32 %i.aw, 2
  %i.cb = or disjoint i32 %i.ca, %i.bz
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cf = lshr i32 %i.at, 6
  %i.cg = trunc i32 %i.cf to i16
  store i16 %i.cg, ptr %i.ce, align 1
  %i.ch = lshr i32 %i.aw, 22
  %i.ci = shl nuw nsw i32 %i.az, 3
  %i.cj = or disjoint i32 %i.ci, %i.ch
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.cn = lshr i32 %i.av, 5
  %i.co = trunc i32 %i.cn to i16
  store i16 %i.co, ptr %i.cm, align 1
  %i.cp = lshr i32 %i.az, 21
  %i.cq = shl nuw nsw i32 %i.bc, 5
  %i.cr = or disjoint i32 %i.cq, %i.cp
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cv = lshr i32 %i.ay, 3
  %i.cw = trunc i32 %i.cv to i16
  store i16 %i.cw, ptr %i.cu, align 1
  %i.cx = lshr i32 %i.bc, 19
  %i.cy = shl i32 %i.bb, 6
  %i.cz = or disjoint i32 %i.cy, %i.cx
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.da, ptr %i.db, align 1, !tbaa !8
  %i.dc = lshr i32 %i.bb, 2
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !8
  %i.df = lshr i32 %i.bb, 10
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !8
  %i.di = lshr i32 %i.bb, 18
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !8
  %i.dl = trunc i32 %i.be to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !8
  %i.dn = lshr i32 %i.be, 8
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !8
  %i.dq = lshr i32 %i.be, 16
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !8
  %i.dt = lshr i32 %i.be, 24
  %i.du = and i32 %i.dt, 1
  %i.dv = shl nuw nsw i32 %i.bj, 1
  %i.dw = or disjoint i32 %i.dv, %i.du
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ea = lshr i32 %i.bg, 7
  %i.eb = trunc i32 %i.ea to i16
  store i16 %i.eb, ptr %i.dz, align 1
  %i.ec = lshr i32 %i.bj, 23
  %i.ed = shl nuw nsw i32 %i.bm, 3
  %i.ee = or disjoint i32 %i.ed, %i.ec
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.ei = lshr i32 %i.bi, 5
  %i.ej = trunc i32 %i.ei to i16
  store i16 %i.ej, ptr %i.eh, align 1
  %i.ek = lshr i32 %i.bm, 21
  %i.el = shl nuw nsw i32 %i.bp, 4
  %i.em = or disjoint i32 %i.el, %i.ek
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.eq = lshr i32 %i.bl, 4
  %i.er = trunc i32 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 1
  %i.es = lshr i32 %i.bp, 20
  %i.et = shl nuw nsw i32 %i.bq, 6
  %i.eu = or disjoint i32 %i.et, %i.es
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ey = lshr i32 %i.bo, 2
  %i.ez = trunc i32 %i.ey to i16
  store i16 %i.ez, ptr %i.ex, align 1
  %i.fa = lshr i32 %i.bq, 18
  %i.fb = trunc nuw nsw i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @table_select(ptr nofree noundef nonnull captures(none) initializes((0, 120)) %0, i32 noundef range(i32 -1073741824, 32) %1, i8 noundef signext %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.ge_precomp, align 4         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = lshr i8 %2, 7
  %i.b = tail call i8 @llvm.smin.i8(i8 %2, i8 0)
  %i.c = shl i8 %i.b, 1
  %i.d = sub i8 %2, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  store i32 1, ptr %0, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.f, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [960 x i8], ptr @k25519Precomp, i64 %i.i ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %i.n = insertelement <4 x i8> poison, i8 %i.d, i64 0
  %i.o = shufflevector <4 x i8> %i.n, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.p = xor <4 x i8> %i.o, <i8 1, i8 2, i8 3, i8 4>
  %i.q = zext <4 x i8> %i.p to <4 x i32>
  %i.r = add nsw <4 x i32> %i.q, splat (i32 -1)
  %i.s = lshr <4 x i32> %i.r, splat (i32 31)      ; 4 uses
  %i.t = bitcast <4 x i32> %i.s to <16 x i8>
  %i.u = extractelement <16 x i8> %i.t, i64 0
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.j, i8 noundef zeroext %i.u)
  %i.v = bitcast <4 x i32> %i.s to <16 x i8>
  %i.w = extractelement <16 x i8> %i.v, i64 4
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.k, i8 noundef zeroext %i.w)
  %i.x = bitcast <4 x i32> %i.s to <16 x i8>
  %i.y = extractelement <16 x i8> %i.x, i64 8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.l, i8 noundef zeroext %i.y)
  %i.z = bitcast <4 x i32> %i.s to <16 x i8>
  %i.aa = extractelement <16 x i8> %i.z, i64 12
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.m, i8 noundef zeroext %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 600
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 720
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 840
  %i.af = xor <4 x i8> %i.o, <i8 5, i8 6, i8 7, i8 8>
  %i.ag = zext <4 x i8> %i.af to <4 x i32>
  %i.ah = add nsw <4 x i32> %i.ag, splat (i32 -1)
  %i.ai = lshr <4 x i32> %i.ah, splat (i32 31)    ; 4 uses
  %i.aj = bitcast <4 x i32> %i.ai to <16 x i8>
  %i.ak = extractelement <16 x i8> %i.aj, i64 0
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.ab, i8 noundef zeroext %i.ak)
  %i.al = bitcast <4 x i32> %i.ai to <16 x i8>
  %i.am = extractelement <16 x i8> %i.al, i64 4
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.ac, i8 noundef zeroext %i.am)
  %i.an = bitcast <4 x i32> %i.ai to <16 x i8>
  %i.ao = extractelement <16 x i8> %i.an, i64 8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.ad, i8 noundef zeroext %i.ao)
  %i.ap = bitcast <4 x i32> %i.ai to <16 x i8>
  %i.aq = extractelement <16 x i8> %i.ap, i64 12
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.ae, i8 noundef zeroext %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.f, i64 40, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ar, ptr noundef nonnull readonly align 4 dereferenceable(40) %0, i64 40, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.at = load <4 x i32>, ptr %i.h, align 4, !tbaa !9
  %i.au = sub nsw <4 x i32> zeroinitializer, %i.at
  store <4 x i32> %i.au, ptr %i.as, align 4, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ax = load <4 x i32>, ptr %i.av, align 4, !tbaa !9
  %i.ay = sub nsw <4 x i32> zeroinitializer, %i.ax
  store <4 x i32> %i.ay, ptr %i.aw, align 4, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bb = load <2 x i32>, ptr %i.az, align 4, !tbaa !9
  %i.bc = sub nsw <2 x i32> zeroinitializer, %i.bb
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !9
  call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ge_madd(ptr nofree noundef nonnull initializes((0, 80)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 120
  %i.d = add i64 %i.a, 160
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load <4 x i32>, ptr %i.e, align 4, !tbaa !9
  %i.j = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %i.k = add nsw <4 x i32> %i.j, %i.i
  store <4 x i32> %i.k, ptr %0, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load <4 x i32>, ptr %i.l, align 4, !tbaa !9
  %i.s = load <4 x i32>, ptr %i.m, align 4, !tbaa !9
  %i.t = add nsw <4 x i32> %i.s, %i.r
  store <4 x i32> %i.t, ptr %i.n, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = load <2 x i32>, ptr %i.u, align 4, !tbaa !9
  %i.z = load <2 x i32>, ptr %i.v, align 4, !tbaa !9
  %i.aa = add nsw <2 x i32> %i.z, %i.y
  store <2 x i32> %i.aa, ptr %i.w, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.af = load <4 x i32>, ptr %i.e, align 4, !tbaa !9
  %i.ag = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %i.ah = sub nsw <4 x i32> %i.af, %i.ag
  store <4 x i32> %i.ah, ptr %i.ab, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.am = load <4 x i32>, ptr %i.l, align 4, !tbaa !9
  %i.an = load <4 x i32>, ptr %i.m, align 4, !tbaa !9
  %i.ao = sub nsw <4 x i32> %i.am, %i.an
  store <4 x i32> %i.ao, ptr %i.ai, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ar = load <2 x i32>, ptr %i.u, align 4, !tbaa !9
  %i.as = load <2 x i32>, ptr %i.v, align 4, !tbaa !9
  %i.at = sub nsw <2 x i32> %i.ar, %i.as
  store <2 x i32> %i.at, ptr %i.ap, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call fastcc void @fe_mul(ptr noundef %i.au, ptr noundef nonnull %0, ptr noundef %2)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call fastcc void @fe_mul(ptr noundef %i.ab, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bc = load i32, ptr %i.au, align 4, !tbaa !9  ; 2 uses
  %i.bd = load i32, ptr %i.ab, align 4, !tbaa !9  ; 2 uses
  %i.be = sub nsw i32 %i.bc, %i.bd
  store i32 %i.be, ptr %0, align 4, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9  ; 2 uses
  %i.bh = load i32, ptr %i.ac, align 4, !tbaa !9  ; 2 uses
  %i.bi = sub nsw i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %i.f, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !9  ; 2 uses
  %i.bl = load i32, ptr %i.ad, align 4, !tbaa !9  ; 2 uses
  %i.bm = sub nsw i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %i.g, align 4, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9  ; 2 uses
  %i.bp = load i32, ptr %i.ae, align 4, !tbaa !9  ; 2 uses
  %i.bq = sub nsw i32 %i.bo, %i.bp
  store i32 %i.bq, ptr %i.h, align 4, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9  ; 2 uses
  %i.bt = load i32, ptr %i.ai, align 4, !tbaa !9  ; 2 uses
  %i.bu = sub nsw i32 %i.bs, %i.bt
  store i32 %i.bu, ptr %i.n, align 4, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9  ; 2 uses
  %i.bx = load i32, ptr %i.aj, align 4, !tbaa !9  ; 2 uses
  %i.by = sub nsw i32 %i.bw, %i.bx
  store i32 %i.by, ptr %i.o, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !9  ; 2 uses
  %i.cb = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  %i.cc = sub nsw i32 %i.ca, %i.cb
  store i32 %i.cc, ptr %i.p, align 4, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !9  ; 2 uses
  %i.cf = load i32, ptr %i.al, align 4, !tbaa !9  ; 2 uses
  %i.cg = sub nsw i32 %i.ce, %i.cf
  store i32 %i.cg, ptr %i.q, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !9  ; 2 uses
  %i.cj = load i32, ptr %i.ap, align 4, !tbaa !9  ; 2 uses
  %i.ck = sub nsw i32 %i.ci, %i.cj
  store i32 %i.ck, ptr %i.w, align 4, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !9  ; 2 uses
  %i.cn = load i32, ptr %i.aq, align 4, !tbaa !9  ; 2 uses
  %i.co = sub nsw i32 %i.cm, %i.cn
  store i32 %i.co, ptr %i.x, align 4, !tbaa !9
  %i.cp = add nsw i32 %i.bd, %i.bc
  store i32 %i.cp, ptr %i.ab, align 4, !tbaa !9
  %i.cq = add nsw i32 %i.bh, %i.bg
  store i32 %i.cq, ptr %i.ac, align 4, !tbaa !9
  %i.cr = add nsw i32 %i.bl, %i.bk
  store i32 %i.cr, ptr %i.ad, align 4, !tbaa !9
  %i.cs = add nsw i32 %i.bp, %i.bo
  store i32 %i.cs, ptr %i.ae, align 4, !tbaa !9
  %i.ct = add nsw i32 %i.bt, %i.bs
  store i32 %i.ct, ptr %i.ai, align 4, !tbaa !9
  %i.cu = add nsw i32 %i.bx, %i.bw
  store i32 %i.cu, ptr %i.aj, align 4, !tbaa !9
  %i.cv = add nsw i32 %i.cb, %i.ca
  store i32 %i.cv, ptr %i.ak, align 4, !tbaa !9
  %i.cw = add nsw i32 %i.cf, %i.ce
  store i32 %i.cw, ptr %i.al, align 4, !tbaa !9
  %i.cx = add nsw i32 %i.cj, %i.ci
  store i32 %i.cx, ptr %i.ap, align 4, !tbaa !9
  %i.cy = add nsw i32 %i.cn, %i.cm
  store i32 %i.cy, ptr %i.aq, align 4, !tbaa !9
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.da = load <4 x i32>, ptr %i.az, align 4, !tbaa !9
  %i.db = shl nsw <4 x i32> %i.da, splat (i32 1)  ; 3 uses
  %i.dc = load <4 x i32>, ptr %i.aw, align 4, !tbaa !9 ; 3 uses
  %i.dd = add nsw <4 x i32> %i.dc, %i.db
  store <4 x i32> %i.dd, ptr %i.au, align 4, !tbaa !9
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.dg = load <4 x i32>, ptr %i.ba, align 4, !tbaa !9
  %i.dh = shl nsw <4 x i32> %i.dg, splat (i32 1)  ; 3 uses
  %i.di = load <4 x i32>, ptr %i.de, align 4, !tbaa !9 ; 3 uses
  %i.dj = add nsw <4 x i32> %i.di, %i.dh
  store <4 x i32> %i.dj, ptr %i.br, align 4, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dl = shufflevector <4 x i32> %i.db, <4 x i32> %i.dh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dm = shufflevector <4 x i32> %i.dc, <4 x i32> %i.di, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dn = sub nsw <4 x i32> %i.dl, %i.dm
  store <4 x i32> %i.dn, ptr %i.cz, align 4, !tbaa !9
  %foldExtExtBinop = sub nsw <4 x i32> %i.dh, %i.di
  %i.do = extractelement <4 x i32> %foldExtExtBinop, i64 3
  store i32 %i.do, ptr %i.df, align 4, !tbaa !9
  %i.dp = load <2 x i32>, ptr %i.bb, align 4, !tbaa !9
  %i.dq = shl nsw <2 x i32> %i.dp, splat (i32 1)  ; 3 uses
  %i.dr = load <2 x i32>, ptr %i.dk, align 4, !tbaa !9 ; 3 uses
  %foldExtExtBinop38 = add nsw <2 x i32> %i.dr, %i.dq
  %i.ds = extractelement <2 x i32> %foldExtExtBinop38, i64 0
  store i32 %i.ds, ptr %i.ch, align 4, !tbaa !9
  %i.dt = shufflevector <2 x i32> %i.dr, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.du = shufflevector <4 x i32> %i.db, <4 x i32> %i.dt, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dv = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.dw = shufflevector <4 x i32> %i.dc, <4 x i32> %i.dv, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dx = add nsw <4 x i32> %i.du, %i.dw
  %i.dy = sub nsw <4 x i32> %i.du, %i.dw
  %i.dz = shufflevector <4 x i32> %i.dx, <4 x i32> %i.dy, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i32> %i.dz, ptr %i.cl, align 4, !tbaa !9
  %i.ea = sub nsw <2 x i32> %i.dq, %i.dr
  store <2 x i32> %i.ea, ptr %i.dk, align 4, !tbaa !9
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !9
  %i.ed = load i32, ptr %1, align 4, !tbaa !9
  %i.ee = add nsw i32 %i.ed, %i.ec
  store i32 %i.ee, ptr %0, align 4, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !9
  %i.ej = add nsw i32 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !9
  %i.ep = add nsw i32 %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !9
  %i.ev = add nsw i32 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !9
end_hunk_5
begin_hunk_6_@ge_madd:bb.a
  %i.hh = sub nsw i32 %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !9
  %i.hj = load i32, ptr %i.fp, align 4, !tbaa !9
  %i.hk = load i32, ptr %i.fr, align 4, !tbaa !9
  %i.hl = sub nsw i32 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !9
  %i.hn = load i32, ptr %i.fv, align 4, !tbaa !9
  %i.ho = load i32, ptr %i.fx, align 4, !tbaa !9
  %i.hp = sub nsw i32 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !9
  %i.hr = load i32, ptr %i.gb, align 4, !tbaa !9
  %i.hs = load i32, ptr %i.gd, align 4, !tbaa !9
  %i.ht = sub nsw i32 %i.hr, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !9
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call fastcc void @fe_mul(ptr noundef %i.hv, ptr noundef nonnull %0, ptr noundef %2)
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call fastcc void @fe_mul(ptr noundef %i.gh, ptr noundef nonnull %i.gh, ptr noundef nonnull %i.hw)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.hx, ptr noundef nonnull %i.hy, ptr noundef nonnull %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !9
  %i.ic = shl nsw i32 %i.ib, 1                    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !9
  %i.if = shl nsw i32 %i.ie, 1                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !9
  %i.ii = shl nsw i32 %i.ih, 1                    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !9
  %i.il = shl nsw i32 %i.ik, 1                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.in = load i32, ptr %i.im, align 4, !tbaa !9
  %i.io = shl nsw i32 %i.in, 1                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !9
  %i.ir = shl nsw i32 %i.iq, 1                    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.it = load i32, ptr %i.is, align 4, !tbaa !9
  %i.iu = shl nsw i32 %i.it, 1                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !9
  %i.ix = shl nsw i32 %i.iw, 1                    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !9
  %i.ja = shl nsw i32 %i.iz, 1                    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !9
  %i.jd = shl nsw i32 %i.jc, 1                    ; 2 uses
  %i.je = load i32, ptr %i.hv, align 4, !tbaa !9  ; 2 uses
  %i.jf = load i32, ptr %i.gh, align 4, !tbaa !9  ; 2 uses
  %i.jg = sub nsw i32 %i.je, %i.jf
  store i32 %i.jg, ptr %0, align 4, !tbaa !9
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !9  ; 2 uses
  %i.jj = load i32, ptr %i.go, align 4, !tbaa !9  ; 2 uses
  %i.jk = sub nsw i32 %i.ji, %i.jj
  store i32 %i.jk, ptr %i.ek, align 4, !tbaa !9
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !9  ; 2 uses
  %i.jn = load i32, ptr %i.gs, align 4, !tbaa !9  ; 2 uses
  %i.jo = sub nsw i32 %i.jm, %i.jn
  store i32 %i.jo, ptr %i.eq, align 4, !tbaa !9
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !9  ; 2 uses
  %i.jr = load i32, ptr %i.gw, align 4, !tbaa !9  ; 2 uses
  %i.js = sub nsw i32 %i.jq, %i.jr
  store i32 %i.js, ptr %i.ew, align 4, !tbaa !9
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !9  ; 2 uses
  %i.jv = load i32, ptr %i.ha, align 4, !tbaa !9  ; 2 uses
  %i.jw = sub nsw i32 %i.ju, %i.jv
  store i32 %i.jw, ptr %i.fc, align 4, !tbaa !9
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9  ; 2 uses
  %i.jz = load i32, ptr %i.he, align 4, !tbaa !9  ; 2 uses
  %i.ka = sub nsw i32 %i.jy, %i.jz
  store i32 %i.ka, ptr %i.fi, align 4, !tbaa !9
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !9  ; 2 uses
  %i.kd = load i32, ptr %i.hi, align 4, !tbaa !9  ; 2 uses
  %i.ke = sub nsw i32 %i.kc, %i.kd
  store i32 %i.ke, ptr %i.fo, align 4, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !9  ; 2 uses
  %i.kh = load i32, ptr %i.hm, align 4, !tbaa !9  ; 2 uses
  %i.ki = sub nsw i32 %i.kg, %i.kh
  store i32 %i.ki, ptr %i.fu, align 4, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !9  ; 2 uses
  %i.kl = load i32, ptr %i.hq, align 4, !tbaa !9  ; 2 uses
  %i.km = sub nsw i32 %i.kk, %i.kl
  store i32 %i.km, ptr %i.ga, align 4, !tbaa !9
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !9  ; 2 uses
  %i.kp = load i32, ptr %i.hu, align 4, !tbaa !9  ; 2 uses
  %i.kq = sub nsw i32 %i.ko, %i.kp
  store i32 %i.kq, ptr %i.gg, align 4, !tbaa !9
  %i.kr = add nsw i32 %i.jf, %i.je
  store i32 %i.kr, ptr %i.gh, align 4, !tbaa !9
  %i.ks = add nsw i32 %i.jj, %i.ji
  store i32 %i.ks, ptr %i.go, align 4, !tbaa !9
  %i.kt = add nsw i32 %i.jn, %i.jm
  store i32 %i.kt, ptr %i.gs, align 4, !tbaa !9
  %i.ku = add nsw i32 %i.jr, %i.jq
  store i32 %i.ku, ptr %i.gw, align 4, !tbaa !9
  %i.kv = add nsw i32 %i.jv, %i.ju
  store i32 %i.kv, ptr %i.ha, align 4, !tbaa !9
  %i.kw = add nsw i32 %i.jz, %i.jy
  store i32 %i.kw, ptr %i.he, align 4, !tbaa !9
  %i.kx = add nsw i32 %i.kd, %i.kc
  store i32 %i.kx, ptr %i.hi, align 4, !tbaa !9
  %i.ky = add nsw i32 %i.kh, %i.kg
  store i32 %i.ky, ptr %i.hm, align 4, !tbaa !9
  %i.kz = add nsw i32 %i.kl, %i.kk
  store i32 %i.kz, ptr %i.hq, align 4, !tbaa !9
  %i.la = add nsw i32 %i.kp, %i.ko
  store i32 %i.la, ptr %i.hu, align 4, !tbaa !9
  %i.lb = load i32, ptr %i.hx, align 4, !tbaa !9  ; 2 uses
  %i.lc = add nsw i32 %i.lb, %i.ic
  store i32 %i.lc, ptr %i.hv, align 4, !tbaa !9
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !9  ; 2 uses
  %i.lf = add nsw i32 %i.le, %i.if
  store i32 %i.lf, ptr %i.jh, align 4, !tbaa !9
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9  ; 2 uses
  %i.li = add nsw i32 %i.lh, %i.ii
  store i32 %i.li, ptr %i.jl, align 4, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !9  ; 2 uses
  %i.ll = add nsw i32 %i.lk, %i.il
  store i32 %i.ll, ptr %i.jp, align 4, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !9  ; 2 uses
  %i.lo = add nsw i32 %i.ln, %i.io
  store i32 %i.lo, ptr %i.jt, align 4, !tbaa !9
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !9  ; 2 uses
  %i.lr = add nsw i32 %i.lq, %i.ir
  store i32 %i.lr, ptr %i.jx, align 4, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !9  ; 2 uses
  %i.lu = add nsw i32 %i.lt, %i.iu
  store i32 %i.lu, ptr %i.kb, align 4, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !9  ; 2 uses
  %i.lx = add nsw i32 %i.lw, %i.ix
  store i32 %i.lx, ptr %i.kf, align 4, !tbaa !9
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !9  ; 2 uses
  %i.ma = add nsw i32 %i.lz, %i.ja
  store i32 %i.ma, ptr %i.kj, align 4, !tbaa !9
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !9  ; 2 uses
  %i.md = add nsw i32 %i.mc, %i.jd
  store i32 %i.md, ptr %i.kn, align 4, !tbaa !9
  %i.me = sub nsw i32 %i.ic, %i.lb
  store i32 %i.me, ptr %i.hx, align 4, !tbaa !9
  %i.mf = sub nsw i32 %i.if, %i.le
  store i32 %i.mf, ptr %i.ld, align 4, !tbaa !9
  %i.mg = sub nsw i32 %i.ii, %i.lh
  store i32 %i.mg, ptr %i.lg, align 4, !tbaa !9
  %i.mh = sub nsw i32 %i.il, %i.lk
  store i32 %i.mh, ptr %i.lj, align 4, !tbaa !9
  %i.mi = sub nsw i32 %i.io, %i.ln
  store i32 %i.mi, ptr %i.lm, align 4, !tbaa !9
  %i.mj = sub nsw i32 %i.ir, %i.lq
  store i32 %i.mj, ptr %i.lp, align 4, !tbaa !9
  %i.mk = sub nsw i32 %i.iu, %i.lt
  store i32 %i.mk, ptr %i.ls, align 4, !tbaa !9
  %i.ml = sub nsw i32 %i.ix, %i.lw
  store i32 %i.ml, ptr %i.lv, align 4, !tbaa !9
  %i.mm = sub nsw i32 %i.ja, %i.lz
  store i32 %i.mm, ptr %i.ly, align 4, !tbaa !9
  %i.mn = sub nsw i32 %i.jd, %i.mc
  store i32 %i.mn, ptr %i.mb, align 4, !tbaa !9
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ge_p2_dbl(ptr nofree noundef nonnull initializes((0, 160)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 120
  %i.d = add i64 %i.a, 160
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = alloca [10 x i32], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  tail call fastcc void @fe_sq(ptr noundef %0, ptr noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call fastcc void @fe_sq(ptr noundef %i.f, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9  ; 2 uses
  %i.ac = shl nsw i32 %i.j, 1
  %i.ad = shl nsw i32 %i.l, 1
  %i.ae = shl nsw i32 %i.n, 1
  %i.af = shl nsw i32 %i.p, 1
  %i.ag = shl nsw i32 %i.r, 1
  %i.ah = shl nsw i32 %i.t, 1
  %i.ai = shl nsw i32 %i.v, 1
  %i.aj = shl nsw i32 %i.x, 1
  %i.ak = mul nsw i32 %i.t, 38
  %i.al = mul nsw i32 %i.v, 19
  %i.am = mul nsw i32 %i.x, 38
  %i.an = mul nsw i32 %i.z, 19
  %i.ao = mul nsw i32 %i.ab, 38
  %i.ap = sext i32 %i.j to i64                    ; 2 uses
  %i.aq = mul nsw i64 %i.ap, %i.ap
  %i.ar = sext i32 %i.ac to i64                   ; 9 uses
  %i.as = sext i32 %i.l to i64                    ; 2 uses
  %i.at = mul nsw i64 %i.ar, %i.as
  %i.au = sext i32 %i.n to i64                    ; 5 uses
  %i.av = mul nsw i64 %i.au, %i.ar
  %i.aw = sext i32 %i.p to i64                    ; 3 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = sext i32 %i.r to i64                    ; 8 uses
  %i.az = mul nsw i64 %i.ay, %i.ar
  %i.ba = sext i32 %i.t to i64                    ; 4 uses
  %i.bb = mul nsw i64 %i.ba, %i.ar
  %i.bc = sext i32 %i.v to i64                    ; 7 uses
  %i.bd = mul nsw i64 %i.bc, %i.ar
  %i.be = sext i32 %i.x to i64                    ; 3 uses
  %i.bf = mul nsw i64 %i.be, %i.ar
  %i.bg = sext i32 %i.z to i64                    ; 4 uses
  %i.bh = mul nsw i64 %i.bg, %i.ar
  %i.bi = sext i32 %i.ab to i64                   ; 2 uses
  %i.bj = mul nsw i64 %i.bi, %i.ar
  %i.bk = sext i32 %i.ad to i64                   ; 9 uses
  %i.bl = mul nsw i64 %i.bk, %i.as
  %i.bm = mul nsw i64 %i.bk, %i.au
  %i.bn = sext i32 %i.af to i64                   ; 8 uses
  %i.bo = mul nsw i64 %i.bn, %i.bk
  %i.bp = mul nsw i64 %i.ay, %i.bk
  %i.bq = sext i32 %i.ah to i64                   ; 6 uses
  %i.br = mul nsw i64 %i.bq, %i.bk
  %i.bs = mul nsw i64 %i.bc, %i.bk
  %i.bt = sext i32 %i.aj to i64                   ; 3 uses
  %i.bu = mul nsw i64 %i.bt, %i.bk
  %i.bv = mul nsw i64 %i.bg, %i.bk
  %i.bw = sext i32 %i.ao to i64                   ; 9 uses
  %i.bx = mul nsw i64 %i.bw, %i.bk
  %i.by = mul nsw i64 %i.au, %i.au
  %i.bz = sext i32 %i.ae to i64                   ; 6 uses
  %i.ca = mul nsw i64 %i.bz, %i.aw
  %i.cb = mul nsw i64 %i.ay, %i.bz
  %i.cc = mul nsw i64 %i.ba, %i.bz
  %i.cd = mul nsw i64 %i.bc, %i.bz
  %i.ce = mul nsw i64 %i.be, %i.bz
  %i.cf = sext i32 %i.an to i64                   ; 7 uses
  %i.cg = mul nsw i64 %i.cf, %i.bz
  %i.ch = mul nsw i64 %i.bw, %i.au
  %i.ci = mul nsw i64 %i.bn, %i.aw
  %i.cj = mul nsw i64 %i.bn, %i.ay
  %i.ck = mul nsw i64 %i.bq, %i.bn
  %i.cl = mul nsw i64 %i.bc, %i.bn
  %i.cm = sext i32 %i.am to i64                   ; 5 uses
  %i.cn = mul nsw i64 %i.cm, %i.bn
  %i.co = mul nsw i64 %i.cf, %i.bn
  %i.cp = mul nsw i64 %i.bw, %i.bn
  %i.cq = mul nsw i64 %i.ay, %i.ay
  %i.cr = sext i32 %i.ag to i64                   ; 3 uses
  %i.cs = mul nsw i64 %i.cr, %i.ba
  %i.ct = sext i32 %i.al to i64                   ; 3 uses
  %i.cu = mul nsw i64 %i.ct, %i.cr
  %i.cv = mul nsw i64 %i.cm, %i.ay
  %i.cw = mul nsw i64 %i.cf, %i.cr
  %i.cx = mul nsw i64 %i.bw, %i.ay
  %i.cy = sext i32 %i.ak to i64
  %i.cz = mul nsw i64 %i.cy, %i.ba
  %i.da = mul nsw i64 %i.ct, %i.bq
  %i.db = mul nsw i64 %i.cm, %i.bq
  %i.dc = mul nsw i64 %i.cf, %i.bq
  %i.dd = mul nsw i64 %i.bw, %i.bq
  %i.de = mul nsw i64 %i.ct, %i.bc
  %i.df = mul nsw i64 %i.cm, %i.bc
  %i.dg = sext i32 %i.ai to i64
  %i.dh = mul nsw i64 %i.cf, %i.dg
  %i.di = mul nsw i64 %i.bw, %i.bc
  %i.dj = mul nsw i64 %i.cm, %i.be
  %i.dk = mul nsw i64 %i.cf, %i.bt
  %i.dl = mul nsw i64 %i.bw, %i.bt
  %i.dm = mul nsw i64 %i.cf, %i.bg
  %i.dn = mul nsw i64 %i.bw, %i.bg
  %i.do = mul nsw i64 %i.bw, %i.bi
  %i.dp = add i64 %i.cz, %i.aq
  %i.dq = add i64 %i.dp, %i.cu
  %i.dr = add i64 %i.dq, %i.cn
  %i.ds = add i64 %i.dr, %i.cg
  %i.dt = add i64 %i.ds, %i.bx
  %i.du = add i64 %i.da, %i.at
  %i.dv = add i64 %i.du, %i.cv
  %i.dw = add i64 %i.dv, %i.co
  %i.dx = add i64 %i.dw, %i.ch
  %i.dy = add nsw i64 %i.av, %i.bl
  %i.dz = add i64 %i.dy, %i.de
  %i.ea = add i64 %i.dz, %i.db
  %i.eb = add i64 %i.ea, %i.cw
  %i.ec = add i64 %i.eb, %i.cp
  %i.ed = add nsw i64 %i.ax, %i.bm
  %i.ee = add i64 %i.ed, %i.df
  %i.ef = add i64 %i.ee, %i.dc
  %i.eg = add i64 %i.ef, %i.cx
  %i.eh = add i64 %i.bo, %i.by
  %i.ei = add i64 %i.eh, %i.az
  %i.ej = add i64 %i.ei, %i.dj
  %i.ek = add i64 %i.ej, %i.dh
  %i.el = add i64 %i.ek, %i.dd
  %i.em = add i64 %i.bp, %i.ca
  %i.en = add i64 %i.em, %i.bb
  %i.eo = add i64 %i.en, %i.dk
  %i.ep = add i64 %i.eo, %i.di
  %i.eq = add i64 %i.ci, %i.cb
  %i.er = add i64 %i.eq, %i.br
  %i.es = add i64 %i.er, %i.bd
  %i.et = add i64 %i.es, %i.dm
  %i.eu = add i64 %i.et, %i.dl
  %i.ev = add i64 %i.cc, %i.cj
  %i.ew = add i64 %i.ev, %i.bs
  %i.ex = add i64 %i.ew, %i.bf
  %i.ey = add nsw i64 %i.ex, %i.dn
  %i.ez = add i64 %i.cd, %i.cq
  %i.fa = add i64 %i.ez, %i.ck
  %i.fb = add i64 %i.fa, %i.bu
  %i.fc = add i64 %i.fb, %i.bh
  %i.fd = add nsw i64 %i.fc, %i.do
  %i.fe = add i64 %i.cl, %i.cs
  %i.ff = add i64 %i.fe, %i.ce
  %i.fg = add i64 %i.ff, %i.bv
  %i.fh = add i64 %i.fg, %i.bj
  %i.fi = shl nsw i64 %i.dt, 1                    ; 2 uses
  %i.fj = shl nsw i64 %i.dx, 1
  %i.fk = shl nsw i64 %i.ec, 1
  %i.fl = shl nsw i64 %i.eg, 1
  %i.fm = shl nsw i64 %i.el, 1                    ; 2 uses
  %i.fn = shl nsw i64 %i.ep, 1
  %i.fo = shl nsw i64 %i.eu, 1
  %i.fp = shl nsw i64 %i.ey, 1
  %i.fq = shl nsw i64 %i.fd, 1
  %i.fr = shl nsw i64 %i.fh, 1
  %i.fs = add nsw i64 %i.fi, 33554432             ; 2 uses
  %i.ft = ashr i64 %i.fs, 26
  %i.fu = add nsw i64 %i.ft, %i.fj                ; 2 uses
  %i.fv = and i64 %i.fs, -67108864
  %i.fw = sub nsw i64 %i.fi, %i.fv
  %i.fx = add nsw i64 %i.fm, 33554432             ; 2 uses
  %i.fy = ashr i64 %i.fx, 26
  %i.fz = add nsw i64 %i.fy, %i.fn                ; 2 uses
  %i.ga = and i64 %i.fx, -67108864
  %i.gb = sub nsw i64 %i.fm, %i.ga
  %i.gc = add nsw i64 %i.fu, 16777216             ; 2 uses
  %i.gd = ashr i64 %i.gc, 25
  %i.ge = add nsw i64 %i.gd, %i.fk                ; 2 uses
  %i.gf = and i64 %i.gc, 4261412864
  %i.gg = sub i64 %i.fu, %i.gf
  %i.gh = add nsw i64 %i.fz, 16777216             ; 2 uses
  %i.gi = ashr i64 %i.gh, 25
  %i.gj = add nsw i64 %i.gi, %i.fo                ; 2 uses
  %i.gk = and i64 %i.gh, 4261412864
  %i.gl = sub i64 %i.fz, %i.gk
  %i.gm = add nsw i64 %i.ge, 33554432             ; 2 uses
  %i.gn = ashr i64 %i.gm, 26
  %i.go = add nsw i64 %i.gn, %i.fl                ; 2 uses
  %i.gp = and i64 %i.gm, 4227858432
  %i.gq = sub i64 %i.ge, %i.gp
end_hunk_6
begin_hunk_7_@ge_p2_dbl:bb.a
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !9
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !9
  %i.ya = add nsw i32 %i.xz, %i.xx
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.ya, ptr %i.yb, align 4, !tbaa !9
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !9
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !9
  %i.yg = add nsw i32 %i.yf, %i.yd
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !9
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !9
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !9
  %i.ym = add nsw i32 %i.yl, %i.yj
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 %i.ym, ptr %i.yn, align 4, !tbaa !9
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !9
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !9
  %i.ys = add nsw i32 %i.yr, %i.yp
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %i.ys, ptr %i.yt, align 4, !tbaa !9
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !9
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !9
  %i.yy = add nsw i32 %i.yx, %i.yv
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %i.yy, ptr %i.yz, align 4, !tbaa !9
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !9
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !9
  %i.ze = add nsw i32 %i.zd, %i.zb
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !9
  call fastcc void @fe_sq(ptr noundef %i.nk, ptr noundef %i.xa)
  %i.zg = load i32, ptr %i.nl, align 4, !tbaa !9  ; 2 uses
  %i.zh = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.zi = add nsw i32 %i.zh, %i.zg                ; 2 uses
  store i32 %i.zi, ptr %i.xa, align 4, !tbaa !9
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !9  ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !9  ; 2 uses
  %i.zn = add nsw i32 %i.zm, %i.zk                ; 2 uses
  store i32 %i.zn, ptr %i.xj, align 4, !tbaa !9
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !9  ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !9  ; 2 uses
  %i.zs = add nsw i32 %i.zr, %i.zp                ; 2 uses
  store i32 %i.zs, ptr %i.xp, align 4, !tbaa !9
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !9  ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !9  ; 2 uses
  %i.zx = add nsw i32 %i.zw, %i.zu                ; 2 uses
  store i32 %i.zx, ptr %i.xv, align 4, !tbaa !9
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !9  ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !9 ; 2 uses
  %i.aac = add nsw i32 %i.aab, %i.zz              ; 2 uses
  store i32 %i.aac, ptr %i.yb, align 4, !tbaa !9
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !9 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !9 ; 2 uses
  %i.aah = add nsw i32 %i.aag, %i.aae             ; 2 uses
  store i32 %i.aah, ptr %i.yh, align 4, !tbaa !9
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !9 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !9 ; 2 uses
  %i.aam = add nsw i32 %i.aal, %i.aaj             ; 2 uses
  store i32 %i.aam, ptr %i.yn, align 4, !tbaa !9
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !9 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !9 ; 2 uses
  %i.aar = add nsw i32 %i.aaq, %i.aao             ; 2 uses
  store i32 %i.aar, ptr %i.yt, align 4, !tbaa !9
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !9 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !9 ; 2 uses
  %i.aaw = add nsw i32 %i.aav, %i.aat             ; 2 uses
  store i32 %i.aaw, ptr %i.yz, align 4, !tbaa !9
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !9 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !9 ; 2 uses
  %i.abb = add nsw i32 %i.aba, %i.aay             ; 2 uses
  store i32 %i.abb, ptr %i.zf, align 4, !tbaa !9
  %i.abc = sub nsw i32 %i.zg, %i.zh               ; 2 uses
  store i32 %i.abc, ptr %i.nl, align 4, !tbaa !9
  %i.abd = sub nsw i32 %i.zk, %i.zm               ; 2 uses
  store i32 %i.abd, ptr %i.zj, align 4, !tbaa !9
  %i.abe = sub nsw i32 %i.zp, %i.zr               ; 2 uses
  store i32 %i.abe, ptr %i.zo, align 4, !tbaa !9
  %i.abf = sub nsw i32 %i.zu, %i.zw               ; 2 uses
  store i32 %i.abf, ptr %i.zt, align 4, !tbaa !9
  %i.abg = sub nsw i32 %i.zz, %i.aab              ; 2 uses
  store i32 %i.abg, ptr %i.zy, align 4, !tbaa !9
  %i.abh = sub nsw i32 %i.aae, %i.aag             ; 2 uses
  store i32 %i.abh, ptr %i.aad, align 4, !tbaa !9
  %i.abi = sub nsw i32 %i.aaj, %i.aal             ; 2 uses
  store i32 %i.abi, ptr %i.aai, align 4, !tbaa !9
  %i.abj = sub nsw i32 %i.aao, %i.aaq             ; 2 uses
  store i32 %i.abj, ptr %i.aan, align 4, !tbaa !9
  %i.abk = sub nsw i32 %i.aat, %i.aav             ; 2 uses
  store i32 %i.abk, ptr %i.aas, align 4, !tbaa !9
  %i.abl = sub nsw i32 %i.aay, %i.aba             ; 2 uses
  store i32 %i.abl, ptr %i.aax, align 4, !tbaa !9
  %i.abm = load i32, ptr %i.nk, align 16, !tbaa !9
  %i.abn = sub nsw i32 %i.abm, %i.zi
  store i32 %i.abn, ptr %0, align 4, !tbaa !9
  %i.abo = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !9
  %i.abq = sub nsw i32 %i.abp, %i.zn
  store i32 %i.abq, ptr %i.zl, align 4, !tbaa !9
  %i.abr = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !9
  %i.abt = sub nsw i32 %i.abs, %i.zs
  store i32 %i.abt, ptr %i.zq, align 4, !tbaa !9
  %i.abu = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !9
  %i.abw = sub nsw i32 %i.abv, %i.zx
  store i32 %i.abw, ptr %i.zv, align 4, !tbaa !9
  %i.abx = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.aby = load i32, ptr %i.abx, align 16, !tbaa !9
  %i.abz = sub nsw i32 %i.aby, %i.aac
  store i32 %i.abz, ptr %i.aaa, align 4, !tbaa !9
  %i.aca = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !9
  %i.acc = sub nsw i32 %i.acb, %i.aah
  store i32 %i.acc, ptr %i.aaf, align 4, !tbaa !9
  %i.acd = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.ace = load i32, ptr %i.acd, align 8, !tbaa !9
  %i.acf = sub nsw i32 %i.ace, %i.aam
  store i32 %i.acf, ptr %i.aak, align 4, !tbaa !9
  %i.acg = getelementptr inbounds nuw i8, ptr %i.nk, i64 28
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !9
  %i.aci = sub nsw i32 %i.ach, %i.aar
  store i32 %i.aci, ptr %i.aap, align 4, !tbaa !9
  %i.acj = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.ack = load i32, ptr %i.acj, align 16, !tbaa !9
  %i.acl = sub nsw i32 %i.ack, %i.aaw
  store i32 %i.acl, ptr %i.aau, align 4, !tbaa !9
  %i.acm = getelementptr inbounds nuw i8, ptr %i.nk, i64 36
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !9
  %i.aco = sub nsw i32 %i.acn, %i.abb
  store i32 %i.aco, ptr %i.aaz, align 4, !tbaa !9
  %i.acp = sub nsw i32 %i.wh, %i.abc
  store i32 %i.acp, ptr %i.nn, align 4, !tbaa !9
  %i.acq = sub nsw i32 %i.wi, %i.abd
  store i32 %i.acq, ptr %i.wj, align 4, !tbaa !9
  %i.acr = sub nsw i32 %i.wk, %i.abe
  store i32 %i.acr, ptr %i.wl, align 4, !tbaa !9
  %i.acs = sub nsw i32 %i.wm, %i.abf
  store i32 %i.acs, ptr %i.wn, align 4, !tbaa !9
  %i.act = sub nsw i32 %i.wo, %i.abg
  store i32 %i.act, ptr %i.wp, align 4, !tbaa !9
  %i.acu = sub nsw i32 %i.wq, %i.abh
  store i32 %i.acu, ptr %i.wr, align 4, !tbaa !9
  %i.acv = sub nsw i32 %i.ws, %i.abi
  store i32 %i.acv, ptr %i.wt, align 4, !tbaa !9
  %i.acw = sub nsw i32 %i.wu, %i.abj
  store i32 %i.acw, ptr %i.wv, align 4, !tbaa !9
  %i.acx = sub nsw i32 %i.ww, %i.abk
  store i32 %i.acx, ptr %i.wx, align 4, !tbaa !9
  %i.acy = sub nsw i32 %i.wy, %i.abl
  store i32 %i.acy, ptr %i.wz, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nk) #7
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cmov(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 120
  %i.d = add i64 %i.a, 120
  %rt.bound0 = icmp ugt i64 %i.d, %i.b
  %rt.bound1 = icmp ugt i64 %i.c, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = zext nneg i8 %2 to i32
  %i.f = sub nsw i32 0, %i.e                      ; 2 uses
  %i.g = load <4 x i32>, ptr %0, align 4, !tbaa !9 ; 2 uses
  %i.h = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %i.i = xor <4 x i32> %i.h, %i.g
  %i.j = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.l = and <4 x i32> %i.i, %i.k
  %i.m = xor <4 x i32> %i.l, %i.g
  store <4 x i32> %i.m, ptr %0, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <4 x i32>, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.q = load <4 x i32>, ptr %i.o, align 4, !tbaa !9
  %i.r = xor <4 x i32> %i.q, %i.p
  %i.s = and <4 x i32> %i.r, %i.k
  %i.t = xor <4 x i32> %i.s, %i.p
  store <4 x i32> %i.t, ptr %i.n, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load <4 x i32>, ptr %i.u, align 4, !tbaa !9 ; 2 uses
  %i.x = load <4 x i32>, ptr %i.v, align 4, !tbaa !9
  %i.y = xor <4 x i32> %i.x, %i.w
  %i.z = and <4 x i32> %i.y, %i.k
  %i.aa = xor <4 x i32> %i.z, %i.w
  store <4 x i32> %i.aa, ptr %i.u, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load <4 x i32>, ptr %i.ab, align 4, !tbaa !9 ; 2 uses
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !9
  %i.af = xor <4 x i32> %i.ae, %i.ad
  %i.ag = and <4 x i32> %i.af, %i.k
  %i.ah = xor <4 x i32> %i.ag, %i.ad
  store <4 x i32> %i.ah, ptr %i.ab, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load <4 x i32>, ptr %i.ai, align 4, !tbaa !9 ; 2 uses
  %i.al = load <4 x i32>, ptr %i.aj, align 4, !tbaa !9
  %i.am = xor <4 x i32> %i.al, %i.ak
  %i.an = and <4 x i32> %i.am, %i.k
  %i.ao = xor <4 x i32> %i.an, %i.ak
  store <4 x i32> %i.ao, ptr %i.ai, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ar = load <4 x i32>, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %i.as = load <4 x i32>, ptr %i.aq, align 4, !tbaa !9
  %i.at = xor <4 x i32> %i.as, %i.ar
  %i.au = and <4 x i32> %i.at, %i.k
  %i.av = xor <4 x i32> %i.au, %i.ar
  store <4 x i32> %i.av, ptr %i.ap, align 4, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ay = load <4 x i32>, ptr %i.aw, align 4, !tbaa !9 ; 2 uses
  %i.az = load <4 x i32>, ptr %i.ax, align 4, !tbaa !9
  %i.ba = xor <4 x i32> %i.az, %i.ay
  %i.bb = and <4 x i32> %i.ba, %i.k
  %i.bc = xor <4 x i32> %i.bb, %i.ay
  store <4 x i32> %i.bc, ptr %i.aw, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bf = load <2 x i32>, ptr %i.bd, align 4, !tbaa !9 ; 2 uses
  %i.bg = load <2 x i32>, ptr %i.be, align 4, !tbaa !9
  %i.bh = xor <2 x i32> %i.bg, %i.bf
  %i.bi = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bk = and <2 x i32> %i.bh, %i.bj
  %i.bl = xor <2 x i32> %i.bk, %i.bf
  store <2 x i32> %i.bl, ptr %i.bd, align 4, !tbaa !9
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.bm = zext nneg i8 %2 to i32
  %i.bn = sub nsw i32 0, %i.bm                    ; 30 uses
  %i.bo = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.bp = load i32, ptr %1, align 4, !tbaa !9
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = and i32 %i.bq, %i.bn
  %i.bs = xor i32 %i.br, %i.bo
  store i32 %i.bs, ptr %0, align 4, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !9  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.bx = xor i32 %i.bw, %i.bu
  %i.by = and i32 %i.bx, %i.bn
  %i.bz = xor i32 %i.by, %i.bu
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.ce = xor i32 %i.cd, %i.cb
  %i.cf = and i32 %i.ce, %i.bn
  %i.cg = xor i32 %i.cf, %i.cb
  store i32 %i.cg, ptr %i.ca, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !9  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !9
  %i.cl = xor i32 %i.ck, %i.ci
  %i.cm = and i32 %i.cl, %i.bn
  %i.cn = xor i32 %i.cm, %i.ci
  store i32 %i.cn, ptr %i.ch, align 4, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !9  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !9
  %i.cs = xor i32 %i.cr, %i.cp
  %i.ct = and i32 %i.cs, %i.bn
  %i.cu = xor i32 %i.ct, %i.cp
  store i32 %i.cu, ptr %i.co, align 4, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !9  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !9
  %i.cz = xor i32 %i.cy, %i.cw
  %i.da = and i32 %i.cz, %i.bn
  %i.db = xor i32 %i.da, %i.cw
  store i32 %i.db, ptr %i.cv, align 4, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !9  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load i32, ptr %i.de, align 4, !tbaa !9
  %i.dg = xor i32 %i.df, %i.dd
  %i.dh = and i32 %i.dg, %i.bn
  %i.di = xor i32 %i.dh, %i.dd
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !9  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !9
  %i.dn = xor i32 %i.dm, %i.dk
  %i.do = and i32 %i.dn, %i.bn
  %i.dp = xor i32 %i.do, %i.dk
  store i32 %i.dp, ptr %i.dj, align 4, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !9  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !9
  %i.du = xor i32 %i.dt, %i.dr
  %i.dv = and i32 %i.du, %i.bn
  %i.dw = xor i32 %i.dv, %i.dr
  store i32 %i.dw, ptr %i.dq, align 4, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !9  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !9
  %i.eb = xor i32 %i.ea, %i.dy
  %i.ec = and i32 %i.eb, %i.bn
  %i.ed = xor i32 %i.ec, %i.dy
  store i32 %i.ed, ptr %i.dx, align 4, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !9  ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !9
  %i.ei = xor i32 %i.eh, %i.eg
  %i.ej = and i32 %i.ei, %i.bn
  %i.ek = xor i32 %i.ej, %i.eg
  store i32 %i.ek, ptr %i.ee, align 4, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !9
  %i.ep = xor i32 %i.eo, %i.em
  %i.eq = and i32 %i.ep, %i.bn
  %i.er = xor i32 %i.eq, %i.em
  store i32 %i.er, ptr %i.el, align 4, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !9
  %i.ew = xor i32 %i.ev, %i.et
  %i.ex = and i32 %i.ew, %i.bn
  %i.ey = xor i32 %i.ex, %i.et
  store i32 %i.ey, ptr %i.es, align 4, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !9  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !9
  %i.fd = xor i32 %i.fc, %i.fa
  %i.fe = and i32 %i.fd, %i.bn
  %i.ff = xor i32 %i.fe, %i.fa
  store i32 %i.ff, ptr %i.ez, align 4, !tbaa !9
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !9  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !9
  %i.fk = xor i32 %i.fj, %i.fh
  %i.fl = and i32 %i.fk, %i.bn
  %i.fm = xor i32 %i.fl, %i.fh
  store i32 %i.fm, ptr %i.fg, align 4, !tbaa !9
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !9  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !9
  %i.fr = xor i32 %i.fq, %i.fo
  %i.fs = and i32 %i.fr, %i.bn
  %i.ft = xor i32 %i.fs, %i.fo
end_hunk_7
begin_hunk_8_@fe_sq:bb.a
  %i.bg = mul nsw i64 %i.ap, %i.bb
  %i.bh = sext i32 %i.y to i64                    ; 6 uses
  %i.bi = mul nsw i64 %i.bh, %i.bb
  %i.bj = mul nsw i64 %i.at, %i.bb
  %i.bk = sext i32 %i.aa to i64                   ; 3 uses
  %i.bl = mul nsw i64 %i.bk, %i.bb
  %i.bm = mul nsw i64 %i.ax, %i.bb
  %i.bn = sext i32 %i.af to i64                   ; 9 uses
  %i.bo = mul nsw i64 %i.bn, %i.bb
  %i.bp = mul nsw i64 %i.al, %i.al
  %i.bq = sext i32 %i.v to i64                    ; 6 uses
  %i.br = mul nsw i64 %i.bq, %i.an
  %i.bs = mul nsw i64 %i.ap, %i.bq
  %i.bt = mul nsw i64 %i.ar, %i.bq
  %i.bu = mul nsw i64 %i.at, %i.bq
  %i.bv = mul nsw i64 %i.av, %i.bq
  %i.bw = sext i32 %i.ae to i64                   ; 7 uses
  %i.bx = mul nsw i64 %i.bw, %i.bq
  %i.by = mul nsw i64 %i.bn, %i.al
  %i.bz = mul nsw i64 %i.be, %i.an
  %i.ca = mul nsw i64 %i.be, %i.ap
  %i.cb = mul nsw i64 %i.bh, %i.be
  %i.cc = mul nsw i64 %i.at, %i.be
  %i.cd = sext i32 %i.ad to i64                   ; 5 uses
  %i.ce = mul nsw i64 %i.cd, %i.be
  %i.cf = mul nsw i64 %i.bw, %i.be
  %i.cg = mul nsw i64 %i.bn, %i.be
  %i.ch = mul nsw i64 %i.ap, %i.ap
  %i.ci = sext i32 %i.x to i64                    ; 3 uses
  %i.cj = mul nsw i64 %i.ci, %i.ar
  %i.ck = sext i32 %i.ac to i64                   ; 3 uses
  %i.cl = mul nsw i64 %i.ck, %i.ci
  %i.cm = mul nsw i64 %i.cd, %i.ap
  %i.cn = mul nsw i64 %i.bw, %i.ci
  %i.co = mul nsw i64 %i.bn, %i.ap
  %i.cp = sext i32 %i.ab to i64
  %i.cq = mul nsw i64 %i.cp, %i.ar
  %i.cr = mul nsw i64 %i.ck, %i.bh
  %i.cs = mul nsw i64 %i.cd, %i.bh
  %i.ct = mul nsw i64 %i.bw, %i.bh
  %i.cu = mul nsw i64 %i.bn, %i.bh
  %i.cv = mul nsw i64 %i.ck, %i.at
  %i.cw = mul nsw i64 %i.cd, %i.at
  %i.cx = sext i32 %i.z to i64
  %i.cy = mul nsw i64 %i.bw, %i.cx
  %i.cz = mul nsw i64 %i.bn, %i.at
  %i.da = mul nsw i64 %i.cd, %i.av
  %i.db = mul nsw i64 %i.bw, %i.bk
  %i.dc = mul nsw i64 %i.bn, %i.bk
  %i.dd = mul nsw i64 %i.bw, %i.ax
  %i.de = mul nsw i64 %i.bn, %i.ax
  %i.df = mul nsw i64 %i.bn, %i.az
  %i.dg = add i64 %i.cq, %i.ah
  %i.dh = add i64 %i.dg, %i.cl
  %i.di = add i64 %i.dh, %i.ce
  %i.dj = add i64 %i.di, %i.bx
  %i.dk = add i64 %i.dj, %i.bo                    ; 2 uses
  %i.dl = add nsw i64 %i.am, %i.bc
  %i.dm = add nsw i64 %i.ao, %i.bd
  %i.dn = add i64 %i.bf, %i.bp
  %i.do = add i64 %i.dn, %i.aq
  %i.dp = add i64 %i.do, %i.da
  %i.dq = add i64 %i.dp, %i.cy
  %i.dr = add i64 %i.dq, %i.cu                    ; 2 uses
  %i.ds = add nsw i64 %i.dk, 33554432             ; 2 uses
  %i.dt = ashr i64 %i.ds, 26
  %i.du = add i64 %i.cr, %i.ak
  %i.dv = add i64 %i.du, %i.cm
  %i.dw = add i64 %i.dv, %i.cf
  %i.dx = add i64 %i.dw, %i.by
  %i.dy = add nsw i64 %i.dx, %i.dt                ; 2 uses
  %i.dz = and i64 %i.ds, -67108864
  %i.ea = sub nsw i64 %i.dk, %i.dz
  %i.eb = add nsw i64 %i.dr, 33554432             ; 2 uses
  %i.ec = ashr i64 %i.eb, 26
  %i.ed = add i64 %i.bg, %i.br
  %i.ee = add i64 %i.ed, %i.as
  %i.ef = add i64 %i.ee, %i.db
  %i.eg = add i64 %i.ef, %i.cz
  %i.eh = add nsw i64 %i.eg, %i.ec                ; 2 uses
  %i.ei = and i64 %i.eb, -67108864
  %i.ej = sub nsw i64 %i.dr, %i.ei
  %i.ek = add nsw i64 %i.dy, 16777216             ; 2 uses
  %i.el = ashr i64 %i.ek, 25
  %i.em = add i64 %i.dl, %i.cv
  %i.en = add i64 %i.em, %i.cs
  %i.eo = add i64 %i.en, %i.cn
  %i.ep = add i64 %i.eo, %i.cg
  %i.eq = add nsw i64 %i.ep, %i.el                ; 2 uses
  %i.er = and i64 %i.ek, 4261412864
  %i.es = sub i64 %i.dy, %i.er
  %i.et = add nsw i64 %i.eh, 16777216             ; 2 uses
  %i.eu = ashr i64 %i.et, 25
  %i.ev = add i64 %i.bz, %i.bs
  %i.ew = add i64 %i.ev, %i.bi
  %i.ex = add i64 %i.ew, %i.au
  %i.ey = add i64 %i.ex, %i.dd
  %i.ez = add i64 %i.ey, %i.dc
  %i.fa = add nsw i64 %i.ez, %i.eu                ; 2 uses
  %i.fb = and i64 %i.et, 4261412864
  %i.fc = sub i64 %i.eh, %i.fb
  %i.fd = add nsw i64 %i.eq, 33554432             ; 2 uses
  %i.fe = ashr i64 %i.fd, 26
  %i.ff = add i64 %i.dm, %i.cw
  %i.fg = add i64 %i.ff, %i.ct
  %i.fh = add i64 %i.fg, %i.co
  %i.fi = add nsw i64 %i.fh, %i.fe                ; 2 uses
  %i.fj = and i64 %i.fd, 4227858432
  %i.fk = sub i64 %i.eq, %i.fj
  %i.fl = add nsw i64 %i.fa, 33554432             ; 2 uses
  %i.fm = ashr i64 %i.fl, 26
  %i.fn = add i64 %i.bt, %i.ca
  %i.fo = add i64 %i.fn, %i.bj
  %i.fp = add i64 %i.fo, %i.aw
  %i.fq = add nsw i64 %i.fp, %i.de
  %i.fr = add nsw i64 %i.fq, %i.fm                ; 2 uses
  %i.fs = and i64 %i.fl, 4227858432
  %i.ft = sub i64 %i.fa, %i.fs
  %i.fu = add nsw i64 %i.fi, 16777216             ; 2 uses
  %i.fv = ashr i64 %i.fu, 25
  %i.fw = add nsw i64 %i.fv, %i.ej                ; 2 uses
  %i.fx = and i64 %i.fu, 4261412864
  %i.fy = sub i64 %i.fi, %i.fx
  %i.fz = add nsw i64 %i.fr, 16777216             ; 2 uses
  %i.ga = ashr i64 %i.fz, 25
  %i.gb = add i64 %i.bu, %i.ch
  %i.gc = add i64 %i.gb, %i.cb
  %i.gd = add i64 %i.gc, %i.bl
  %i.ge = add i64 %i.gd, %i.ay
  %i.gf = add nsw i64 %i.ge, %i.df
  %i.gg = add nsw i64 %i.gf, %i.ga                ; 2 uses
  %i.gh = and i64 %i.fz, 4261412864
  %i.gi = sub i64 %i.fr, %i.gh
  %i.gj = add nsw i64 %i.fw, 33554432             ; 2 uses
  %i.gk = lshr i64 %i.gj, 26
  %i.gl = add i64 %i.fc, %i.gk
  %i.gm = and i64 %i.gj, 4227858432
  %i.gn = sub i64 %i.fw, %i.gm
  %i.go = add nsw i64 %i.gg, 33554432             ; 2 uses
  %i.gp = ashr i64 %i.go, 26
  %i.gq = add i64 %i.cc, %i.cj
  %i.gr = add i64 %i.gq, %i.bv
  %i.gs = add i64 %i.gr, %i.bm
  %i.gt = add i64 %i.gs, %i.ba
  %i.gu = add nsw i64 %i.gt, %i.gp                ; 2 uses
  %i.gv = and i64 %i.go, 4227858432
  %i.gw = sub i64 %i.gg, %i.gv
  %i.gx = add nsw i64 %i.gu, 16777216             ; 2 uses
  %i.gy = ashr i64 %i.gx, 25
  %i.gz = mul nsw i64 %i.gy, 19
  %i.ha = add nsw i64 %i.gz, %i.ea                ; 2 uses
  %i.hb = and i64 %i.gx, 4261412864
  %i.hc = sub i64 %i.gu, %i.hb
  %i.hd = add nsw i64 %i.ha, 33554432             ; 2 uses
  %i.he = lshr i64 %i.hd, 26
  %i.hf = add i64 %i.es, %i.he
  %i.hg = and i64 %i.hd, 4227858432
  %i.hh = sub i64 %i.ha, %i.hg
  %i.hi = trunc i64 %i.hh to i32
  store i32 %i.hi, ptr %0, align 4, !tbaa !9
  %i.hj = trunc i64 %i.hf to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !9
  %i.hl = trunc i64 %i.fk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !9
  %i.hn = trunc i64 %i.fy to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !9
  %i.hp = trunc i64 %i.gn to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !9
  %i.hr = trunc i64 %i.gl to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !9
  %i.ht = trunc i64 %i.ft to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !9
  %i.hv = trunc i64 %i.gi to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !9
  %i.hx = trunc i64 %i.gw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !9
  %i.hz = trunc i64 %i.hc to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ge_p3_to_cached(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 160)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 80
  %i.d = add i64 %i.a, 80
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <4 x i32>, ptr %i.e, align 4, !tbaa !9
  %i.i = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %i.j = add nsw <4 x i32> %i.i, %i.h
  store <4 x i32> %i.j, ptr %0, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load <4 x i32>, ptr %i.k, align 4, !tbaa !9
  %i.q = load <4 x i32>, ptr %i.l, align 4, !tbaa !9
  %i.r = add nsw <4 x i32> %i.q, %i.p
  store <4 x i32> %i.r, ptr %i.m, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x i32>, ptr %i.s, align 4, !tbaa !9
  %i.w = load <4 x i32>, ptr %i.t, align 4, !tbaa !9 ; 2 uses
  %i.x = load <2 x i32>, ptr %1, align 4, !tbaa !9
  %i.y = shufflevector <2 x i32> %i.v, <2 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.z = add nsw <4 x i32> %i.w, %i.y
  %i.aa = sub nsw <4 x i32> %i.w, %i.y
  %i.ab = shufflevector <4 x i32> %i.z, <4 x i32> %i.aa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ab, ptr %i.u, align 4, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load <4 x i32>, ptr %i.f, align 4, !tbaa !9
  %i.ae = load <4 x i32>, ptr %i.g, align 4, !tbaa !9
  %i.af = sub nsw <4 x i32> %i.ad, %i.ae
  store <4 x i32> %i.af, ptr %i.ac, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load <4 x i32>, ptr %i.n, align 4, !tbaa !9
  %i.ai = load <4 x i32>, ptr %i.o, align 4, !tbaa !9
  %i.aj = sub nsw <4 x i32> %i.ah, %i.ai
  store <4 x i32> %i.aj, ptr %i.ag, align 4, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ak, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.al, i64 40, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.am, ptr noundef nonnull %i.an, ptr noundef nonnull @d2)
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.aq = load i32, ptr %1, align 4, !tbaa !9
  %i.ar = add nsw i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %0, align 4, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9
  %i.aw = add nsw i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !9
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !9
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !9
  %i.bu = add nsw i32 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !9
  %i.ca = add nsw i32 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !9
  %i.cm = add nsw i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !9
  %i.cs = add nsw i32 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.cw = load i32, ptr %1, align 4, !tbaa !9
  %i.cx = sub nsw i32 %i.cv, %i.cw
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !9
  %i.cy = load i32, ptr %i.as, align 4, !tbaa !9
  %i.cz = load i32, ptr %i.au, align 4, !tbaa !9
  %i.da = sub nsw i32 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.da, ptr %i.db, align 4, !tbaa !9
  %i.dc = load i32, ptr %i.ay, align 4, !tbaa !9
  %i.dd = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.de = sub nsw i32 %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.de, ptr %i.df, align 4, !tbaa !9
  %i.dg = load i32, ptr %i.be, align 4, !tbaa !9
  %i.dh = load i32, ptr %i.bg, align 4, !tbaa !9
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !9
  %i.dk = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.dl = load i32, ptr %i.bm, align 4, !tbaa !9
  %i.dm = sub nsw i32 %i.dk, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !9
  %i.do = load i32, ptr %i.bq, align 4, !tbaa !9
  %i.dp = load i32, ptr %i.bs, align 4, !tbaa !9
  %i.dq = sub nsw i32 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !9
  %i.ds = load i32, ptr %i.bw, align 4, !tbaa !9
  %i.dt = load i32, ptr %i.by, align 4, !tbaa !9
  %i.du = sub nsw i32 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !9
  %i.dw = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.dx = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.dy = sub nsw i32 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !9
  %i.ea = load i32, ptr %i.ci, align 4, !tbaa !9
  %i.eb = load i32, ptr %i.ck, align 4, !tbaa !9
  %i.ec = sub nsw i32 %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !9
  %i.ee = load i32, ptr %i.co, align 4, !tbaa !9
  %i.ef = load i32, ptr %i.cq, align 4, !tbaa !9
  %i.eg = sub nsw i32 %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !9
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ei, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.ej, i64 40, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.ek, ptr noundef nonnull %i.el, ptr noundef nonnull @d2)
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ge_add(ptr nofree noundef nonnull initializes((0, 80)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 80
  %i.d = add i64 %i.a, 160
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load <4 x i32>, ptr %i.e, align 4, !tbaa !9
  %i.j = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %i.k = add nsw <4 x i32> %i.j, %i.i
  store <4 x i32> %i.k, ptr %0, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load <4 x i32>, ptr %i.l, align 4, !tbaa !9
  %i.s = load <4 x i32>, ptr %i.m, align 4, !tbaa !9
  %i.t = add nsw <4 x i32> %i.s, %i.r
  store <4 x i32> %i.t, ptr %i.n, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = load <2 x i32>, ptr %i.u, align 4, !tbaa !9
  %i.z = load <2 x i32>, ptr %i.v, align 4, !tbaa !9
  %i.aa = add nsw <2 x i32> %i.z, %i.y
  store <2 x i32> %i.aa, ptr %i.w, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.af = load <4 x i32>, ptr %i.e, align 4, !tbaa !9
  %i.ag = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %i.ah = sub nsw <4 x i32> %i.af, %i.ag
  store <4 x i32> %i.ah, ptr %i.ab, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.am = load <4 x i32>, ptr %i.l, align 4, !tbaa !9
  %i.an = load <4 x i32>, ptr %i.m, align 4, !tbaa !9
  %i.ao = sub nsw <4 x i32> %i.am, %i.an
  store <4 x i32> %i.ao, ptr %i.ai, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ar = load <2 x i32>, ptr %i.u, align 4, !tbaa !9
  %i.as = load <2 x i32>, ptr %i.v, align 4, !tbaa !9
  %i.at = sub nsw <2 x i32> %i.ar, %i.as
  store <2 x i32> %i.at, ptr %i.ap, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call fastcc void @fe_mul(ptr noundef %i.au, ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call fastcc void @fe_mul(ptr noundef %i.ab, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80
  tail call fastcc void @fe_mul(ptr noundef %0, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.au, align 4, !tbaa !9  ; 2 uses
  %i.bc = load i32, ptr %i.ab, align 4, !tbaa !9  ; 2 uses
  %i.bd = sub nsw i32 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9  ; 2 uses
  %i.bg = load i32, ptr %i.ac, align 4, !tbaa !9  ; 2 uses
  %i.bh = sub nsw i32 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !9  ; 2 uses
  %i.bk = load i32, ptr %i.ad, align 4, !tbaa !9  ; 2 uses
  %i.bl = sub nsw i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !9  ; 2 uses
  %i.bo = load i32, ptr %i.ae, align 4, !tbaa !9  ; 2 uses
  %i.bp = sub nsw i32 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9  ; 2 uses
  %i.bs = load i32, ptr %i.ai, align 4, !tbaa !9  ; 2 uses
  %i.bt = sub nsw i32 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !9  ; 2 uses
  %i.bw = load i32, ptr %i.aj, align 4, !tbaa !9  ; 2 uses
  %i.bx = sub nsw i32 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !9  ; 2 uses
  %i.ca = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  %i.cb = sub nsw i32 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !9  ; 2 uses
  %i.ce = load i32, ptr %i.al, align 4, !tbaa !9  ; 2 uses
  %i.cf = sub nsw i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9  ; 2 uses
  %i.ci = load i32, ptr %i.ap, align 4, !tbaa !9  ; 2 uses
  %i.cj = sub nsw i32 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !9  ; 2 uses
  %i.cm = load i32, ptr %i.aq, align 4, !tbaa !9  ; 2 uses
  %i.cn = sub nsw i32 %i.cl, %i.cm
  %i.co = add nsw i32 %i.bc, %i.bb
  store i32 %i.co, ptr %i.ab, align 4, !tbaa !9
  %i.cp = add nsw i32 %i.bg, %i.bf
  store i32 %i.cp, ptr %i.ac, align 4, !tbaa !9
  %i.cq = add nsw i32 %i.bk, %i.bj
  store i32 %i.cq, ptr %i.ad, align 4, !tbaa !9
  %i.cr = add nsw i32 %i.bo, %i.bn
  store i32 %i.cr, ptr %i.ae, align 4, !tbaa !9
  %i.cs = add nsw i32 %i.bs, %i.br
  store i32 %i.cs, ptr %i.ai, align 4, !tbaa !9
  %i.ct = add nsw i32 %i.bw, %i.bv
  store i32 %i.ct, ptr %i.aj, align 4, !tbaa !9
  %i.cu = add nsw i32 %i.ca, %i.bz
  store i32 %i.cu, ptr %i.ak, align 4, !tbaa !9
  %i.cv = add nsw i32 %i.ce, %i.cd
  store i32 %i.cv, ptr %i.al, align 4, !tbaa !9
  %i.cw = add nsw i32 %i.ci, %i.ch
  store i32 %i.cw, ptr %i.ap, align 4, !tbaa !9
  %i.cx = add nsw i32 %i.cm, %i.cl
  store i32 %i.cx, ptr %i.aq, align 4, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cz = load <4 x i32>, ptr %0, align 4, !tbaa !9
  %i.da = shl nsw <4 x i32> %i.cz, splat (i32 1)  ; 3 uses
  store i32 %i.bd, ptr %0, align 4, !tbaa !9
  store i32 %i.bh, ptr %i.f, align 4, !tbaa !9
  store i32 %i.bl, ptr %i.g, align 4, !tbaa !9
  store i32 %i.bp, ptr %i.h, align 4, !tbaa !9
  %i.db = load <4 x i32>, ptr %i.aw, align 4, !tbaa !9 ; 3 uses
  %i.dc = add nsw <4 x i32> %i.db, %i.da
  store <4 x i32> %i.dc, ptr %i.au, align 4, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.df = load <4 x i32>, ptr %i.n, align 4, !tbaa !9
  %i.dg = shl nsw <4 x i32> %i.df, splat (i32 1)  ; 3 uses
  store i32 %i.bt, ptr %i.n, align 4, !tbaa !9
  store i32 %i.bx, ptr %i.o, align 4, !tbaa !9
  store i32 %i.cb, ptr %i.p, align 4, !tbaa !9
  store i32 %i.cf, ptr %i.q, align 4, !tbaa !9
  %i.dh = load <4 x i32>, ptr %i.dd, align 4, !tbaa !9 ; 3 uses
  %i.di = add nsw <4 x i32> %i.dh, %i.dg
  store <4 x i32> %i.di, ptr %i.bq, align 4, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dk = shufflevector <4 x i32> %i.da, <4 x i32> %i.dg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dl = shufflevector <4 x i32> %i.db, <4 x i32> %i.dh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dm = sub nsw <4 x i32> %i.dk, %i.dl
  store <4 x i32> %i.dm, ptr %i.cy, align 4, !tbaa !9
  %foldExtExtBinop = sub nsw <4 x i32> %i.dg, %i.dh
  %i.dn = extractelement <4 x i32> %foldExtExtBinop, i64 3
  store i32 %i.dn, ptr %i.de, align 4, !tbaa !9
  %i.do = load <2 x i32>, ptr %i.w, align 4, !tbaa !9
  %i.dp = shl nsw <2 x i32> %i.do, splat (i32 1)  ; 3 uses
  store i32 %i.cj, ptr %i.w, align 4, !tbaa !9
  store i32 %i.cn, ptr %i.x, align 4, !tbaa !9
  %i.dq = load <2 x i32>, ptr %i.dj, align 4, !tbaa !9 ; 3 uses
  %foldExtExtBinop41 = add nsw <2 x i32> %i.dq, %i.dp
  %i.dr = extractelement <2 x i32> %foldExtExtBinop41, i64 0
  store i32 %i.dr, ptr %i.cg, align 4, !tbaa !9
  %i.ds = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.dt = shufflevector <4 x i32> %i.da, <4 x i32> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.du = shufflevector <2 x i32> %i.dp, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.dv = shufflevector <4 x i32> %i.db, <4 x i32> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dw = add nsw <4 x i32> %i.dt, %i.dv
  %i.dx = sub nsw <4 x i32> %i.dt, %i.dv
  %i.dy = shufflevector <4 x i32> %i.dw, <4 x i32> %i.dx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i32> %i.dy, ptr %i.ck, align 4, !tbaa !9
  %i.dz = sub nsw <2 x i32> %i.dp, %i.dq
  store <2 x i32> %i.dz, ptr %i.dj, align 4, !tbaa !9
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !9
  %i.ec = load i32, ptr %1, align 4, !tbaa !9
  %i.ed = add nsw i32 %i.ec, %i.eb
  store i32 %i.ed, ptr %0, align 4, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !9
  %i.ei = add nsw i32 %i.eh, %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !9
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !9
  %i.eo = add nsw i32 %i.en, %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !9
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9
  %i.eu = add nsw i32 %i.et, %i.er
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !9
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !9
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !9
end_hunk_8
begin_hunk_9_@ge_add:bb.a
  %i.if = load i32, ptr %i.ep, align 4, !tbaa !9
  %i.ig = shl nsw i32 %i.if, 1                    ; 2 uses
  %i.ih = load i32, ptr %i.ev, align 4, !tbaa !9
  %i.ii = shl nsw i32 %i.ih, 1                    ; 2 uses
  %i.ij = load i32, ptr %i.fb, align 4, !tbaa !9
  %i.ik = shl nsw i32 %i.ij, 1                    ; 2 uses
  %i.il = load i32, ptr %i.fh, align 4, !tbaa !9
  %i.im = shl nsw i32 %i.il, 1                    ; 2 uses
  %i.in = load i32, ptr %i.fn, align 4, !tbaa !9
  %i.io = shl nsw i32 %i.in, 1                    ; 2 uses
  %i.ip = load i32, ptr %i.ft, align 4, !tbaa !9
  %i.iq = shl nsw i32 %i.ip, 1                    ; 2 uses
  %i.ir = load i32, ptr %i.fz, align 4, !tbaa !9
  %i.is = shl nsw i32 %i.ir, 1                    ; 2 uses
  %i.it = load i32, ptr %i.gf, align 4, !tbaa !9
  %i.iu = shl nsw i32 %i.it, 1                    ; 2 uses
  %i.iv = load i32, ptr %i.hu, align 4, !tbaa !9  ; 2 uses
  %i.iw = load i32, ptr %i.gg, align 4, !tbaa !9  ; 2 uses
  %i.ix = sub nsw i32 %i.iv, %i.iw
  store i32 %i.ix, ptr %0, align 4, !tbaa !9
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !9  ; 2 uses
  %i.ja = load i32, ptr %i.gn, align 4, !tbaa !9  ; 2 uses
  %i.jb = sub nsw i32 %i.iz, %i.ja
  store i32 %i.jb, ptr %i.ej, align 4, !tbaa !9
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !9  ; 2 uses
  %i.je = load i32, ptr %i.gr, align 4, !tbaa !9  ; 2 uses
  %i.jf = sub nsw i32 %i.jd, %i.je
  store i32 %i.jf, ptr %i.ep, align 4, !tbaa !9
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !9  ; 2 uses
  %i.ji = load i32, ptr %i.gv, align 4, !tbaa !9  ; 2 uses
  %i.jj = sub nsw i32 %i.jh, %i.ji
  store i32 %i.jj, ptr %i.ev, align 4, !tbaa !9
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !9  ; 2 uses
  %i.jm = load i32, ptr %i.gz, align 4, !tbaa !9  ; 2 uses
  %i.jn = sub nsw i32 %i.jl, %i.jm
  store i32 %i.jn, ptr %i.fb, align 4, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !9  ; 2 uses
  %i.jq = load i32, ptr %i.hd, align 4, !tbaa !9  ; 2 uses
  %i.jr = sub nsw i32 %i.jp, %i.jq
  store i32 %i.jr, ptr %i.fh, align 4, !tbaa !9
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !9  ; 2 uses
  %i.ju = load i32, ptr %i.hh, align 4, !tbaa !9  ; 2 uses
  %i.jv = sub nsw i32 %i.jt, %i.ju
  store i32 %i.jv, ptr %i.fn, align 4, !tbaa !9
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !9  ; 2 uses
  %i.jy = load i32, ptr %i.hl, align 4, !tbaa !9  ; 2 uses
  %i.jz = sub nsw i32 %i.jx, %i.jy
  store i32 %i.jz, ptr %i.ft, align 4, !tbaa !9
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !9  ; 2 uses
  %i.kc = load i32, ptr %i.hp, align 4, !tbaa !9  ; 2 uses
  %i.kd = sub nsw i32 %i.kb, %i.kc
  store i32 %i.kd, ptr %i.fz, align 4, !tbaa !9
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !9  ; 2 uses
  %i.kg = load i32, ptr %i.ht, align 4, !tbaa !9  ; 2 uses
  %i.kh = sub nsw i32 %i.kf, %i.kg
  store i32 %i.kh, ptr %i.gf, align 4, !tbaa !9
  %i.ki = add nsw i32 %i.iw, %i.iv
  store i32 %i.ki, ptr %i.gg, align 4, !tbaa !9
  %i.kj = add nsw i32 %i.ja, %i.iz
  store i32 %i.kj, ptr %i.gn, align 4, !tbaa !9
  %i.kk = add nsw i32 %i.je, %i.jd
  store i32 %i.kk, ptr %i.gr, align 4, !tbaa !9
  %i.kl = add nsw i32 %i.ji, %i.jh
  store i32 %i.kl, ptr %i.gv, align 4, !tbaa !9
  %i.km = add nsw i32 %i.jm, %i.jl
  store i32 %i.km, ptr %i.gz, align 4, !tbaa !9
  %i.kn = add nsw i32 %i.jq, %i.jp
  store i32 %i.kn, ptr %i.hd, align 4, !tbaa !9
  %i.ko = add nsw i32 %i.ju, %i.jt
  store i32 %i.ko, ptr %i.hh, align 4, !tbaa !9
  %i.kp = add nsw i32 %i.jy, %i.jx
  store i32 %i.kp, ptr %i.hl, align 4, !tbaa !9
  %i.kq = add nsw i32 %i.kc, %i.kb
  store i32 %i.kq, ptr %i.hp, align 4, !tbaa !9
  %i.kr = add nsw i32 %i.kg, %i.kf
  store i32 %i.kr, ptr %i.ht, align 4, !tbaa !9
  %i.ks = load i32, ptr %i.hw, align 4, !tbaa !9  ; 2 uses
  %i.kt = add nsw i32 %i.ks, %i.ic
  store i32 %i.kt, ptr %i.hu, align 4, !tbaa !9
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !9  ; 2 uses
  %i.kw = add nsw i32 %i.kv, %i.ie
  store i32 %i.kw, ptr %i.iy, align 4, !tbaa !9
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !9  ; 2 uses
  %i.kz = add nsw i32 %i.ky, %i.ig
  store i32 %i.kz, ptr %i.jc, align 4, !tbaa !9
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !9  ; 2 uses
  %i.lc = add nsw i32 %i.lb, %i.ii
  store i32 %i.lc, ptr %i.jg, align 4, !tbaa !9
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !9  ; 2 uses
  %i.lf = add nsw i32 %i.le, %i.ik
  store i32 %i.lf, ptr %i.jk, align 4, !tbaa !9
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9  ; 2 uses
  %i.li = add nsw i32 %i.lh, %i.im
  store i32 %i.li, ptr %i.jo, align 4, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !9  ; 2 uses
  %i.ll = add nsw i32 %i.lk, %i.io
  store i32 %i.ll, ptr %i.js, align 4, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !9  ; 2 uses
  %i.lo = add nsw i32 %i.ln, %i.iq
  store i32 %i.lo, ptr %i.jw, align 4, !tbaa !9
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !9  ; 2 uses
  %i.lr = add nsw i32 %i.lq, %i.is
  store i32 %i.lr, ptr %i.ka, align 4, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !9  ; 2 uses
  %i.lu = add nsw i32 %i.lt, %i.iu
  store i32 %i.lu, ptr %i.ke, align 4, !tbaa !9
  %i.lv = sub nsw i32 %i.ic, %i.ks
  store i32 %i.lv, ptr %i.hw, align 4, !tbaa !9
  %i.lw = sub nsw i32 %i.ie, %i.kv
  store i32 %i.lw, ptr %i.ku, align 4, !tbaa !9
  %i.lx = sub nsw i32 %i.ig, %i.ky
  store i32 %i.lx, ptr %i.kx, align 4, !tbaa !9
  %i.ly = sub nsw i32 %i.ii, %i.lb
  store i32 %i.ly, ptr %i.la, align 4, !tbaa !9
  %i.lz = sub nsw i32 %i.ik, %i.le
  store i32 %i.lz, ptr %i.ld, align 4, !tbaa !9
  %i.ma = sub nsw i32 %i.im, %i.lh
  store i32 %i.ma, ptr %i.lg, align 4, !tbaa !9
  %i.mb = sub nsw i32 %i.io, %i.lk
  store i32 %i.mb, ptr %i.lj, align 4, !tbaa !9
  %i.mc = sub nsw i32 %i.iq, %i.ln
  store i32 %i.mc, ptr %i.lm, align 4, !tbaa !9
  %i.md = sub nsw i32 %i.is, %i.lq
  store i32 %i.md, ptr %i.lp, align 4, !tbaa !9
  %i.me = sub nsw i32 %i.iu, %i.lt
  store i32 %i.me, ptr %i.ls, align 4, !tbaa !9
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

declare i32 @x25519_fe64_eligible() local_unnamed_addr #2

declare void @x25519_fe51_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x25519_fe51_sqr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x25519_fe51_mul121666(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x25519_fe64_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x25519_fe64_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x25519_fe64_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x25519_fe64_sqr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x25519_fe64_mul121666(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x25519_fe64_tobytes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !21, !22}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !21, !22}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!"long", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = distinct !{!29, !10}
end_hunk_9
