Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/crcspeed?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@crcspeed64big_init:bb.a
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next46, 256
  br i1 %i.br, label %crcspeed64little_init.exit.4, label %vector.body42, !llvm.loop !29

crcspeed64little_init.exit.4:                     ; preds = %vector.body42
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 10240
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %crcspeed64little_init.exit.4
  %index50 = phi i64 [ 0, %crcspeed64little_init.exit.4 ], [ %index.next53, %vector.body49 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index50 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load51 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !19
  %wide.load52 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !19
  %i.bv = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load51)
  %i.bw = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load52)
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !19
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !19
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next53, 256
  br i1 %i.bx, label %crcspeed64little_init.exit.5, label %vector.body49, !llvm.loop !30

crcspeed64little_init.exit.5:                     ; preds = %vector.body49
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12288
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %crcspeed64little_init.exit.5
  %index57 = phi i64 [ 0, %crcspeed64little_init.exit.5 ], [ %index.next60, %vector.body56 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index57 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load58 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !19
  %wide.load59 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !19
  %i.cb = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load58)
  %i.cc = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load59)
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !19
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !19
  %index.next60 = add nuw i64 %index57, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next60, 256
  br i1 %i.cd, label %crcspeed64little_init.exit.6, label %vector.body56, !llvm.loop !31

crcspeed64little_init.exit.6:                     ; preds = %vector.body56
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 14336
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %crcspeed64little_init.exit.6
  %index64 = phi i64 [ 0, %crcspeed64little_init.exit.6 ], [ %index.next67, %vector.body63 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load65 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !19
  %wide.load66 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !19
  %i.ch = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load65)
  %i.ci = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load66)
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !19
  store <2 x i64> %i.ci, ptr %i.cg, align 8, !tbaa !19
  %index.next67 = add nuw i64 %index64, 4         ; 2 uses
  %i.cj = icmp eq i64 %index.next67, 256
  br i1 %i.cj, label %crcspeed64little_init.exit.7, label %vector.body63, !llvm.loop !32

crcspeed64little_init.exit.7:                     ; preds = %vector.body63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed16big_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %bb.a
  %i.b = call zeroext i16 %0(i16 noundef zeroext 0, ptr noundef nonnull %i.a, i64 noundef 1) #7, !inline_history !24
  %i.c = load i32, ptr %i.a, align 4, !tbaa !16   ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %1, i64 %i.d
  store i16 %i.b, ptr %i.e, align 2, !tbaa !22
  %i.f = add nsw i32 %i.c, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !16
  %i.g = icmp slt i32 %i.c, 255
  br i1 %i.g, label %bb.c, label %bb.b, !llvm.loop !2

bb.d:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i ; 8 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !22   ; 2 uses
  %i.j = lshr i16 %i.i, 8
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !22   ; 2 uses
  %i.n = shl i16 %i.i, 8
  %i.o = xor i16 %i.m, %i.n                       ; 2 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i16 %i.o, ptr %gep.i, align 2, !tbaa !22
  %i.p = lshr i16 %i.o, 8
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !22   ; 2 uses
  %i.t = shl i16 %i.m, 8
  %i.u = xor i16 %i.s, %i.t                       ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1024
  store i16 %i.u, ptr %gep.1.i, align 2, !tbaa !22
  %i.v = lshr i16 %i.u, 8
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !22   ; 2 uses
  %i.z = shl i16 %i.s, 8
  %i.aa = xor i16 %i.y, %i.z                      ; 2 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1536
  store i16 %i.aa, ptr %gep.2.i, align 2, !tbaa !22
  %i.ab = lshr i16 %i.aa, 8
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !22 ; 2 uses
  %i.af = shl i16 %i.y, 8
  %i.ag = xor i16 %i.ae, %i.af                    ; 2 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2048
  store i16 %i.ag, ptr %gep.3.i, align 2, !tbaa !22
  %i.ah = lshr i16 %i.ag, 8
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !22 ; 2 uses
  %i.al = shl i16 %i.ae, 8
  %i.am = xor i16 %i.ak, %i.al                    ; 2 uses
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2560
  store i16 %i.am, ptr %gep.4.i, align 2, !tbaa !22
  %i.an = lshr i16 %i.am, 8
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !22 ; 2 uses
  %i.ar = shl i16 %i.ak, 8
  %i.as = xor i16 %i.aq, %i.ar                    ; 2 uses
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3072
  store i16 %i.as, ptr %gep.5.i, align 2, !tbaa !22
  %i.at = lshr i16 %i.as, 8
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !22
  %i.ax = shl i16 %i.aq, 8
  %i.ay = xor i16 %i.aw, %i.ax
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3584
  store i16 %i.ay, ptr %gep.6.i, align 2, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.preheader.preheader, label %bb.d, !llvm.loop !3

.preheader.preheader:                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4096) %1, i8 0, i64 4096, i1 false), !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_crc64_cutoffs(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  store i64 %0, ptr @CRC64_DUAL_CUTOFF, align 8, !tbaa !19
  store i64 %1, ptr @CRC64_TRI_CUTOFF, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @crcspeed64little(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @CRC64_DUAL_CUTOFF, align 8, !tbaa !19 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp ne i64 %3, 0
  %i.d = ptrtoint ptr %2 to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0173193 = phi ptr [ %i.h, %.lr.ph ], [ %2, %.preheader ] ; 2 uses
  %.0174192 = phi i64 [ %i.o, %.lr.ph ], [ %3, %.preheader ]
  %.0181191 = phi i64 [ %i.n, %.lr.ph ], [ %1, %.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0173193, i64 1 ; 3 uses
  %i.i = load i8, ptr %.0173193, align 1, !tbaa !17
  %.0181.tr = trunc i64 %.0181191 to i8
  %.narrow = xor i8 %i.i, %.0181.tr
  %i.j = zext i8 %.narrow to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = lshr i64 %.0181191, 8
  %i.n = xor i64 %i.l, %i.m                       ; 2 uses
  %i.o = add i64 %.0174192, -1                    ; 3 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = and i64 %i.q, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0181.lcssa = phi i64 [ %1, %.preheader ], [ %i.n, %.lr.ph ] ; 5 uses
  %.0174.lcssa = phi i64 [ %3, %.preheader ], [ %i.o, %.lr.ph ] ; 10 uses
  %.0173.lcssa = phi ptr [ %2, %.preheader ], [ %i.h, %.lr.ph ] ; 9 uses
  %i.u = load i64, ptr @CRC64_TRI_CUTOFF, align 8, !tbaa !19
  %i.v = icmp ugt i64 %.0174.lcssa, %i.u
  br i1 %i.v, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.w = udiv i64 %.0174.lcssa, 3
  %i.x = and i64 %i.w, 9223372036854775800        ; 4 uses
  %i.y = getelementptr i8, ptr %.0173.lcssa, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x     ; 3 uses
  %.not188209 = icmp eq i64 %i.x, 0
  br i1 %.not188209, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 14336 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12288 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph218, %bb.c
  %.0169216 = phi i64 [ 0, %.lr.ph218 ], [ %i.ex, %bb.c ]
  %.0170215 = phi i64 [ 0, %.lr.ph218 ], [ %i.dm, %bb.c ]
  %.0171214 = phi ptr [ %i.z, %.lr.ph218 ], [ %i.aq, %bb.c ] ; 2 uses
  %.0172213 = phi ptr [ %i.y, %.lr.ph218 ], [ %i.an, %bb.c ] ; 2 uses
  %.1212 = phi ptr [ %.0173.lcssa, %.lr.ph218 ], [ %i.ak, %bb.c ] ; 2 uses
  %.1175211 = phi i64 [ %i.x, %.lr.ph218 ], [ %i.ah, %bb.c ]
  %.1182210 = phi i64 [ %.0181.lcssa, %.lr.ph218 ], [ %i.cb, %bb.c ]
  %i.ah = add i64 %.1175211, -8                   ; 2 uses
  %i.ai = load i64, ptr %.1212, align 8, !tbaa !19
  %i.aj = xor i64 %i.ai, %.1182210                ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1212, i64 8
  %i.al = load i64, ptr %.0172213, align 8, !tbaa !19
  %i.am = xor i64 %i.al, %.0170215                ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0172213, i64 8
  %i.ao = load i64, ptr %.0171214, align 8, !tbaa !19
  %i.ap = xor i64 %i.ao, %.0169216                ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0171214, i64 8
  %i.ar = and i64 %i.aj, 255
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !19
  %i.au = lshr i64 %i.aj, 8
  %i.av = and i64 %i.au, 255
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !19
  %i.ay = xor i64 %i.ax, %i.at
  %i.az = lshr i64 %i.aj, 16
  %i.ba = and i64 %i.az, 255
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !19
  %i.bd = xor i64 %i.ay, %i.bc
  %i.be = lshr i64 %i.aj, 24
  %i.bf = and i64 %i.be, 255
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !19
  %i.bi = xor i64 %i.bd, %i.bh
  %i.bj = lshr i64 %i.aj, 32
  %i.bk = and i64 %i.bj, 255
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !19
  %i.bn = xor i64 %i.bi, %i.bm
  %i.bo = lshr i64 %i.aj, 40
  %i.bp = and i64 %i.bo, 255
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !19
  %i.bs = xor i64 %i.bn, %i.br
  %i.bt = lshr i64 %i.aj, 48
  %i.bu = and i64 %i.bt, 255
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !19
  %i.bx = xor i64 %i.bs, %i.bw
  %i.by = lshr i64 %i.aj, 56
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.cb = xor i64 %i.bx, %i.ca                    ; 2 uses
  %i.cc = and i64 %i.am, 255
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19
  %i.cf = lshr i64 %i.am, 8
  %i.cg = and i64 %i.cf, 255
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.cj = xor i64 %i.ci, %i.ce
  %i.ck = lshr i64 %i.am, 16
  %i.cl = and i64 %i.ck, 255
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !19
  %i.co = xor i64 %i.cj, %i.cn
  %i.cp = lshr i64 %i.am, 24
  %i.cq = and i64 %i.cp, 255
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !19
  %i.ct = xor i64 %i.co, %i.cs
  %i.cu = lshr i64 %i.am, 32
  %i.cv = and i64 %i.cu, 255
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !19
  %i.cy = xor i64 %i.ct, %i.cx
  %i.cz = lshr i64 %i.am, 40
  %i.da = and i64 %i.cz, 255
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !19
  %i.dd = xor i64 %i.cy, %i.dc
  %i.de = lshr i64 %i.am, 48
  %i.df = and i64 %i.de, 255
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.di = xor i64 %i.dd, %i.dh
  %i.dj = lshr i64 %i.am, 56
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !19
  %i.dm = xor i64 %i.di, %i.dl                    ; 2 uses
  %i.dn = and i64 %i.ap, 255
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !19
  %i.dq = lshr i64 %i.ap, 8
  %i.dr = and i64 %i.dq, 255
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !19
  %i.du = xor i64 %i.dt, %i.dp
  %i.dv = lshr i64 %i.ap, 16
  %i.dw = and i64 %i.dv, 255
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !19
  %i.dz = xor i64 %i.du, %i.dy
  %i.ea = lshr i64 %i.ap, 24
  %i.eb = and i64 %i.ea, 255
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !19
  %i.ee = xor i64 %i.dz, %i.ed
  %i.ef = lshr i64 %i.ap, 32
  %i.eg = and i64 %i.ef, 255
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !19
  %i.ej = xor i64 %i.ee, %i.ei
  %i.ek = lshr i64 %i.ap, 40
  %i.el = and i64 %i.ek, 255
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !19
  %i.eo = xor i64 %i.ej, %i.en
  %i.ep = lshr i64 %i.ap, 48
  %i.eq = and i64 %i.ep, 255
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !19
  %i.et = xor i64 %i.eo, %i.es
  %i.eu = lshr i64 %i.ap, 56
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !19
  %i.ex = xor i64 %i.et, %i.ew                    ; 2 uses
  %.not188 = icmp eq i64 %i.ah, 0
  br i1 %.not188, label %._crit_edge219.loopexit, label %bb.c, !llvm.loop !36

._crit_edge219.loopexit:                          ; preds = %bb.c
  %4 = urem i64 %.0174.lcssa, 24
  %5 = sub i64 %.0174.lcssa, %4
  %scevgep258 = getelementptr i8, ptr %.0173.lcssa, i64 %5
  br label %._crit_edge219

._crit_edge219:                                   ; preds = %._crit_edge219.loopexit, %bb.b
  %.1182.lcssa = phi i64 [ %.0181.lcssa, %bb.b ], [ %i.cb, %._crit_edge219.loopexit ]
  %.1.lcssa = phi ptr [ %.0173.lcssa, %bb.b ], [ %i.y, %._crit_edge219.loopexit ]
  %.0172.lcssa = phi ptr [ %i.y, %bb.b ], [ %i.z, %._crit_edge219.loopexit ]
  %.0171.lcssa = phi ptr [ %i.z, %bb.b ], [ %scevgep258, %._crit_edge219.loopexit ]
  %.0170.lcssa = phi i64 [ 0, %bb.b ], [ %i.dm, %._crit_edge219.loopexit ]
  %.0169.lcssa = phi i64 [ 0, %bb.b ], [ %i.ex, %._crit_edge219.loopexit ]
  %i.ey = ptrtoint ptr %.0172.lcssa to i64
  %i.ez = ptrtoint ptr %.1.lcssa to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = tail call i64 @crc64_combine(i64 noundef %.1182.lcssa, i64 noundef %.0170.lcssa, i64 noundef %i.fa, i64 noundef -7661587058870466123, i8 noundef zeroext 64) #7
  %i.fc = tail call i64 @crc64_combine(i64 noundef %i.fb, i64 noundef %.0169.lcssa, i64 noundef %i.fa, i64 noundef -7661587058870466123, i8 noundef zeroext 64) #7
  %.neg = mul i64 %i.fa, -3
  %i.fd = add i64 %.neg, %.0174.lcssa
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.fe = icmp ugt i64 %.0174.lcssa, %i.a
  br i1 %i.fe, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ff = lshr i64 %.0174.lcssa, 1
  %i.fg = and i64 %i.ff, 9223372036854775800      ; 3 uses
  %i.fh = getelementptr i8, ptr %.0173.lcssa, i64 %i.fg ; 3 uses
  %.not196 = icmp eq i64 %i.fg, 0
  br i1 %.not196, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.e
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 14336 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 12288 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 10240 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph203, %bb.f
  %.0201 = phi i64 [ 0, %.lr.ph203 ], [ %i.ir, %bb.f ]
  %.0168200 = phi ptr [ %i.fh, %.lr.ph203 ], [ %i.fv, %bb.f ] ; 2 uses
  %.2199 = phi ptr [ %.0173.lcssa, %.lr.ph203 ], [ %i.fs, %bb.f ] ; 2 uses
  %.2176198 = phi i64 [ %i.fg, %.lr.ph203 ], [ %i.fp, %bb.f ]
  %.2183197 = phi i64 [ %.0181.lcssa, %.lr.ph203 ], [ %i.hg, %bb.f ]
  %i.fp = add i64 %.2176198, -8                   ; 2 uses
  %i.fq = load i64, ptr %.2199, align 8, !tbaa !19
  %i.fr = xor i64 %i.fq, %.2183197                ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.2199, i64 8
  %i.ft = load i64, ptr %.0168200, align 8, !tbaa !19
  %i.fu = xor i64 %i.ft, %.0201                   ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0168200, i64 8
  %i.fw = and i64 %i.fr, 255
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !19
  %i.fz = lshr i64 %i.fr, 8
  %i.ga = and i64 %i.fz, 255
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !19
  %i.gd = xor i64 %i.gc, %i.fy
  %i.ge = lshr i64 %i.fr, 16
  %i.gf = and i64 %i.ge, 255
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !19
  %i.gi = xor i64 %i.gd, %i.gh
  %i.gj = lshr i64 %i.fr, 24
  %i.gk = and i64 %i.gj, 255
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !19
  %i.gn = xor i64 %i.gi, %i.gm
  %i.go = lshr i64 %i.fr, 32
  %i.gp = and i64 %i.go, 255
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !19
  %i.gs = xor i64 %i.gn, %i.gr
  %i.gt = lshr i64 %i.fr, 40
  %i.gu = and i64 %i.gt, 255
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !19
  %i.gx = xor i64 %i.gs, %i.gw
  %i.gy = lshr i64 %i.fr, 48
  %i.gz = and i64 %i.gy, 255
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !19
  %i.hc = xor i64 %i.gx, %i.hb
  %i.hd = lshr i64 %i.fr, 56
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !19
  %i.hg = xor i64 %i.hc, %i.hf                    ; 2 uses
  %i.hh = and i64 %i.fu, 255
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !19
  %i.hk = lshr i64 %i.fu, 8
  %i.hl = and i64 %i.hk, 255
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !19
  %i.ho = xor i64 %i.hn, %i.hj
  %i.hp = lshr i64 %i.fu, 16
  %i.hq = and i64 %i.hp, 255
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.hq
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !19
  %i.ht = xor i64 %i.ho, %i.hs
  %i.hu = lshr i64 %i.fu, 24
  %i.hv = and i64 %i.hu, 255
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !19
  %i.hy = xor i64 %i.ht, %i.hx
  %i.hz = lshr i64 %i.fu, 32
  %i.ia = and i64 %i.hz, 255
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !19
  %i.id = xor i64 %i.hy, %i.ic
  %i.ie = lshr i64 %i.fu, 40
  %i.if = and i64 %i.ie, 255
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.if
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !19
  %i.ii = xor i64 %i.id, %i.ih
  %i.ij = lshr i64 %i.fu, 48
  %i.ik = and i64 %i.ij, 255
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8, !tbaa !19
  %i.in = xor i64 %i.ii, %i.im
  %i.io = lshr i64 %i.fu, 56
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !19
  %i.ir = xor i64 %i.in, %i.iq                    ; 2 uses
  %.not = icmp eq i64 %i.fp, 0
  br i1 %.not, label %._crit_edge204.loopexit, label %bb.f, !llvm.loop !37

._crit_edge204.loopexit:                          ; preds = %bb.f
  %i.is = and i64 %.0174.lcssa, -16
  %scevgep = getelementptr i8, ptr %.0173.lcssa, i64 %i.is
  br label %._crit_edge204

._crit_edge204:                                   ; preds = %._crit_edge204.loopexit, %bb.e
  %.2183.lcssa = phi i64 [ %.0181.lcssa, %bb.e ], [ %i.hg, %._crit_edge204.loopexit ]
  %.2.lcssa = phi ptr [ %.0173.lcssa, %bb.e ], [ %i.fh, %._crit_edge204.loopexit ]
  %.0168.lcssa = phi ptr [ %i.fh, %bb.e ], [ %scevgep, %._crit_edge204.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.e ], [ %i.ir, %._crit_edge204.loopexit ]
  %i.it = ptrtoint ptr %.0168.lcssa to i64
  %i.iu = ptrtoint ptr %.2.lcssa to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 2 uses
  %i.iw = tail call i64 @crc64_combine(i64 noundef %.2183.lcssa, i64 noundef %.0.lcssa, i64 noundef %i.iv, i64 noundef -7661587058870466123, i8 noundef zeroext 64) #7
  %i.ix = shl nsw i64 %i.iv, 1
  %i.iy = sub i64 %.0174.lcssa, %i.ix
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %._crit_edge204, %._crit_edge219
  %.3184 = phi i64 [ %i.fc, %._crit_edge219 ], [ %i.iw, %._crit_edge204 ], [ %.0181.lcssa, %bb.d ] ; 2 uses
  %.3177 = phi i64 [ %i.fd, %._crit_edge219 ], [ %i.iy, %._crit_edge204 ], [ %.0174.lcssa, %bb.d ] ; 3 uses
  %.3 = phi ptr [ %.0171.lcssa, %._crit_edge219 ], [ %.0168.lcssa, %._crit_edge204 ], [ %.0173.lcssa, %bb.d ] ; 2 uses
  %i.iz = icmp ugt i64 %.3177, 7
  br i1 %i.iz, label %.lr.ph230, label %.loopexit

.lr.ph230:                                        ; preds = %bb.g
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 14336
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 12288
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 2048
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph230, %bb.h
  %.4228 = phi ptr [ %.3, %.lr.ph230 ], [ %i.jk, %bb.h ] ; 2 uses
  %.4178227 = phi i64 [ %.3177, %.lr.ph230 ], [ %i.jh, %bb.h ]
  %.4185226 = phi i64 [ %.3184, %.lr.ph230 ], [ %i.kv, %bb.h ]
  %i.jh = add i64 %.4178227, -8                   ; 3 uses
  %i.ji = load i64, ptr %.4228, align 8, !tbaa !19
  %i.jj = xor i64 %i.ji, %.4185226                ; 8 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.4228, i64 8 ; 2 uses
  %i.jl = and i64 %i.jj, 255
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jl
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !19
  %i.jo = lshr i64 %i.jj, 8
  %i.jp = and i64 %i.jo, 255
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jp
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !19
  %i.js = xor i64 %i.jr, %i.jn
  %i.jt = lshr i64 %i.jj, 16
  %i.ju = and i64 %i.jt, 255
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !19
  %i.jx = xor i64 %i.js, %i.jw
  %i.jy = lshr i64 %i.jj, 24
  %i.jz = and i64 %i.jy, 255
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !19
  %i.kc = xor i64 %i.jx, %i.kb
  %i.kd = lshr i64 %i.jj, 32
  %i.ke = and i64 %i.kd, 255
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !19
  %i.kh = xor i64 %i.kc, %i.kg
  %i.ki = lshr i64 %i.jj, 40
  %i.kj = and i64 %i.ki, 255
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !19
  %i.km = xor i64 %i.kh, %i.kl
  %i.kn = lshr i64 %i.jj, 48
  %i.ko = and i64 %i.kn, 255
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.ko
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !19
  %i.kr = xor i64 %i.km, %i.kq
  %i.ks = lshr i64 %i.jj, 56
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ks
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !19
  %i.kv = xor i64 %i.kr, %i.ku                    ; 2 uses
end_hunk_0
