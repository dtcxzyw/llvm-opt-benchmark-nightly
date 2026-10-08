Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 551
begin_hunk_0_@mldsa_poly_uniform_4x:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %5, i8 0, i64 800, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 192
  call void @Keccak1600_Absorb_once_x4(ptr noundef nonnull %5, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly %i.c, ptr noundef nonnull readonly %i.d, i64 noundef 34, i64 noundef 168, i8 noundef zeroext 31)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 864 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1728 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2592 ; 6 uses
  call void @Keccak1600_Squeezeblocks_x4(ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef 5, i64 noundef 168)
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.i = and i32 %i.h, 32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i17.i.preheader, label %mld_rej_uniform_native.exit.i

mld_rej_uniform_native.exit.i:                    ; preds = %bb.a
  %i.k = call i32 @mldsa_rej_uniform_avx2_asm(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull @mldsa_mld_rej_uniform_table) #46 ; 2 uses
  %.not.i = icmp eq i32 %i.k, -1
  br i1 %.not.i, label %.lr.ph.i17.i.preheader, label %mld_rej_uniform.exit

.lr.ph.i17.i.preheader:                           ; preds = %mld_rej_uniform_native.exit.i, %bb.a
  br label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.preheader, %bb.c
  %indvars.iv22.i18.i = phi i64 [ %indvars.iv.next23.i24.i, %bb.c ], [ 0, %.lr.ph.i17.i.preheader ] ; 2 uses
  %indvars.iv.i19.i = phi i64 [ %indvars.iv.next.i23.i, %bb.c ], [ 3, %.lr.ph.i17.i.preheader ] ; 2 uses
  %.01820.i20.i = phi i32 [ %.1.i22.i, %bb.c ], [ 0, %.lr.ph.i17.i.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv22.i18.i ; 2 uses
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !79
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %.masked.i21.i = and i32 %i.r, 8323072
  %i.s = or disjoint i32 %.masked.i21.i, %i.n     ; 2 uses
  %i.t = icmp samesign ult i32 %i.s, 8380417
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i17.i
  %i.u = add nuw nsw i32 %.01820.i20.i, 1
  %i.v = zext nneg i32 %.01820.i20.i to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  store i32 %i.s, ptr %i.w, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i17.i
  %.1.i22.i = phi i32 [ %i.u, %bb.b ], [ %.01820.i20.i, %.lr.ph.i17.i ] ; 3 uses
  %i.x = icmp ult i32 %.1.i22.i, 256
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i19.i, 3
  %i.y = icmp samesign ult i64 %indvars.iv.i19.i, 838
  %i.z = and i1 %i.y, %i.x
  %indvars.iv.next23.i24.i = add nuw nsw i64 %indvars.iv22.i18.i, 3
  br i1 %i.z, label %.lr.ph.i17.i, label %mld_rej_uniform.exit, !llvm.loop !63

mld_rej_uniform.exit:                             ; preds = %bb.c, %mld_rej_uniform_native.exit.i
  %.0.i = phi i32 [ %i.k, %mld_rej_uniform_native.exit.i ], [ %.1.i22.i, %bb.c ] ; 2 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.ab = and i32 %i.aa, 32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i17.i32.preheader, label %mld_rej_uniform_native.exit.i28

mld_rej_uniform_native.exit.i28:                  ; preds = %mld_rej_uniform.exit
  %i.ad = call i32 @mldsa_rej_uniform_avx2_asm(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef nonnull @mldsa_mld_rej_uniform_table) #46 ; 2 uses
  %.not.i29 = icmp eq i32 %i.ad, -1
  br i1 %.not.i29, label %.lr.ph.i17.i32.preheader, label %mld_rej_uniform.exit40

.lr.ph.i17.i32.preheader:                         ; preds = %mld_rej_uniform_native.exit.i28, %mld_rej_uniform.exit
  br label %.lr.ph.i17.i32

.lr.ph.i17.i32:                                   ; preds = %.lr.ph.i17.i32.preheader, %bb.e
  %indvars.iv22.i18.i33 = phi i64 [ %indvars.iv.next23.i24.i39, %bb.e ], [ 0, %.lr.ph.i17.i32.preheader ] ; 2 uses
  %indvars.iv.i19.i34 = phi i64 [ %indvars.iv.next.i23.i38, %bb.e ], [ 3, %.lr.ph.i17.i32.preheader ] ; 2 uses
  %.01820.i20.i35 = phi i32 [ %.1.i22.i37, %bb.e ], [ 0, %.lr.ph.i17.i32.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv22.i18.i33 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !79
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %.masked.i21.i36 = and i32 %i.ak, 8323072
  %i.al = or disjoint i32 %.masked.i21.i36, %i.ag ; 2 uses
  %i.am = icmp samesign ult i32 %i.al, 8380417
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i17.i32
  %i.an = add nuw nsw i32 %.01820.i20.i35, 1
  %i.ao = zext nneg i32 %.01820.i20.i35 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  store i32 %i.al, ptr %i.ap, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i17.i32
  %.1.i22.i37 = phi i32 [ %i.an, %bb.d ], [ %.01820.i20.i35, %.lr.ph.i17.i32 ] ; 3 uses
  %i.aq = icmp ult i32 %.1.i22.i37, 256
  %indvars.iv.next.i23.i38 = add nuw nsw i64 %indvars.iv.i19.i34, 3
  %i.ar = icmp samesign ult i64 %indvars.iv.i19.i34, 838
  %i.as = and i1 %i.ar, %i.aq
  %indvars.iv.next23.i24.i39 = add nuw nsw i64 %indvars.iv22.i18.i33, 3
  br i1 %i.as, label %.lr.ph.i17.i32, label %mld_rej_uniform.exit40, !llvm.loop !63

mld_rej_uniform.exit40:                           ; preds = %bb.e, %mld_rej_uniform_native.exit.i28
  %.0.i30 = phi i32 [ %i.ad, %mld_rej_uniform_native.exit.i28 ], [ %.1.i22.i37, %bb.e ] ; 2 uses
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.au = and i32 %i.at, 32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i17.i45.preheader, label %mld_rej_uniform_native.exit.i41

mld_rej_uniform_native.exit.i41:                  ; preds = %mld_rej_uniform.exit40
  %i.aw = call i32 @mldsa_rej_uniform_avx2_asm(ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef nonnull @mldsa_mld_rej_uniform_table) #46 ; 2 uses
  %.not.i42 = icmp eq i32 %i.aw, -1
  br i1 %.not.i42, label %.lr.ph.i17.i45.preheader, label %mld_rej_uniform.exit53

.lr.ph.i17.i45.preheader:                         ; preds = %mld_rej_uniform_native.exit.i41, %mld_rej_uniform.exit40
  br label %.lr.ph.i17.i45

.lr.ph.i17.i45:                                   ; preds = %.lr.ph.i17.i45.preheader, %bb.g
  %indvars.iv22.i18.i46 = phi i64 [ %indvars.iv.next23.i24.i52, %bb.g ], [ 0, %.lr.ph.i17.i45.preheader ] ; 2 uses
  %indvars.iv.i19.i47 = phi i64 [ %indvars.iv.next.i23.i51, %bb.g ], [ 3, %.lr.ph.i17.i45.preheader ] ; 2 uses
  %.01820.i20.i48 = phi i32 [ %.1.i22.i50, %bb.g ], [ 0, %.lr.ph.i17.i45.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv22.i18.i46 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !79
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 16
  %.masked.i21.i49 = and i32 %i.bd, 8323072
  %i.be = or disjoint i32 %.masked.i21.i49, %i.az ; 2 uses
  %i.bf = icmp samesign ult i32 %i.be, 8380417
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i17.i45
  %i.bg = add nuw nsw i32 %.01820.i20.i48, 1
  %i.bh = zext nneg i32 %.01820.i20.i48 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bh
  store i32 %i.be, ptr %i.bi, align 4, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i17.i45
  %.1.i22.i50 = phi i32 [ %i.bg, %bb.f ], [ %.01820.i20.i48, %.lr.ph.i17.i45 ] ; 3 uses
  %i.bj = icmp ult i32 %.1.i22.i50, 256
  %indvars.iv.next.i23.i51 = add nuw nsw i64 %indvars.iv.i19.i47, 3
  %i.bk = icmp samesign ult i64 %indvars.iv.i19.i47, 838
  %i.bl = and i1 %i.bk, %i.bj
  %indvars.iv.next23.i24.i52 = add nuw nsw i64 %indvars.iv22.i18.i46, 3
  br i1 %i.bl, label %.lr.ph.i17.i45, label %mld_rej_uniform.exit53, !llvm.loop !63

mld_rej_uniform.exit53:                           ; preds = %bb.g, %mld_rej_uniform_native.exit.i41
  %.0.i43 = phi i32 [ %i.aw, %mld_rej_uniform_native.exit.i41 ], [ %.1.i22.i50, %bb.g ] ; 2 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.bn = and i32 %i.bm, 32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i17.i58.preheader, label %mld_rej_uniform_native.exit.i54

mld_rej_uniform_native.exit.i54:                  ; preds = %mld_rej_uniform.exit53
  %i.bp = call i32 @mldsa_rej_uniform_avx2_asm(ptr noundef nonnull %3, ptr noundef nonnull %i.g, ptr noundef nonnull @mldsa_mld_rej_uniform_table) #46 ; 2 uses
  %.not.i55 = icmp eq i32 %i.bp, -1
  br i1 %.not.i55, label %.lr.ph.i17.i58.preheader, label %mld_rej_uniform.exit66

.lr.ph.i17.i58.preheader:                         ; preds = %mld_rej_uniform_native.exit.i54, %mld_rej_uniform.exit53
  br label %.lr.ph.i17.i58

.lr.ph.i17.i58:                                   ; preds = %.lr.ph.i17.i58.preheader, %bb.i
  %indvars.iv22.i18.i59 = phi i64 [ %indvars.iv.next23.i24.i65, %bb.i ], [ 0, %.lr.ph.i17.i58.preheader ] ; 2 uses
  %indvars.iv.i19.i60 = phi i64 [ %indvars.iv.next.i23.i64, %bb.i ], [ 3, %.lr.ph.i17.i58.preheader ] ; 2 uses
  %.01820.i20.i61 = phi i32 [ %.1.i22.i63, %bb.i ], [ 0, %.lr.ph.i17.i58.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv22.i18.i59 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = zext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !79
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 16
  %.masked.i21.i62 = and i32 %i.bw, 8323072
  %i.bx = or disjoint i32 %.masked.i21.i62, %i.bs ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, 8380417
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i17.i58
  %i.bz = add nuw nsw i32 %.01820.i20.i61, 1
  %i.ca = zext nneg i32 %.01820.i20.i61 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ca
  store i32 %i.bx, ptr %i.cb, align 4, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i17.i58
  %.1.i22.i63 = phi i32 [ %i.bz, %bb.h ], [ %.01820.i20.i61, %.lr.ph.i17.i58 ] ; 3 uses
  %i.cc = icmp ult i32 %.1.i22.i63, 256
  %indvars.iv.next.i23.i64 = add nuw nsw i64 %indvars.iv.i19.i60, 3
  %i.cd = icmp samesign ult i64 %indvars.iv.i19.i60, 838
  %i.ce = and i1 %i.cd, %i.cc
  %indvars.iv.next23.i24.i65 = add nuw nsw i64 %indvars.iv22.i18.i59, 3
  br i1 %i.ce, label %.lr.ph.i17.i58, label %mld_rej_uniform.exit66, !llvm.loop !63

mld_rej_uniform.exit66:                           ; preds = %bb.i, %mld_rej_uniform_native.exit.i54
  %.0.i56 = phi i32 [ %i.bp, %mld_rej_uniform_native.exit.i54 ], [ %.1.i22.i63, %bb.i ] ; 2 uses
  %i.cf = icmp ult i32 %.0.i, 256                 ; 2 uses
  %i.cg = icmp ult i32 %.0.i30, 256               ; 2 uses
  %or.cond153 = or i1 %i.cg, %i.cf
  %i.ch = icmp ult i32 %.0.i43, 256               ; 2 uses
  %or.cond5154 = or i1 %i.ch, %or.cond153
  %i.ci = icmp ult i32 %.0.i56, 256               ; 2 uses
  %i.cj = or i1 %i.ci, %or.cond5154
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mld_rej_uniform.exit66, %mld_rej_uniform.exit148
  %i.ck = phi i1 [ %i.hl, %mld_rej_uniform.exit148 ], [ %i.ci, %mld_rej_uniform.exit66 ]
  %i.cl = phi i1 [ %i.hk, %mld_rej_uniform.exit148 ], [ %i.ch, %mld_rej_uniform.exit66 ]
  %i.cm = phi i1 [ %i.hj, %mld_rej_uniform.exit148 ], [ %i.cg, %mld_rej_uniform.exit66 ]
  %i.cn = phi i1 [ %i.hi, %mld_rej_uniform.exit148 ], [ %i.cf, %mld_rej_uniform.exit66 ]
  %.sroa.0.0158 = phi i32 [ %.0.i67, %mld_rej_uniform.exit148 ], [ %.0.i, %mld_rej_uniform.exit66 ] ; 3 uses
  %.sroa.6.0157 = phi i32 [ %.0.i81, %mld_rej_uniform.exit148 ], [ %.0.i30, %mld_rej_uniform.exit66 ] ; 3 uses
  %.sroa.10.0156 = phi i32 [ %.0.i104, %mld_rej_uniform.exit148 ], [ %.0.i43, %mld_rej_uniform.exit66 ] ; 3 uses
  %.sroa.14.0155 = phi i32 [ %.0.i127, %mld_rej_uniform.exit148 ], [ %.0.i56, %mld_rej_uniform.exit66 ] ; 3 uses
  call void @Keccak1600_Squeezeblocks_x4(ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 168)
  %i.co = icmp eq i32 %.sroa.0.0158, 0
  br i1 %i.co, label %.lr.ph.i17.i71, label %.split.i

.split.i:                                         ; preds = %.lr.ph
  br i1 %i.cn, label %.lr.ph.i.i, label %mld_rej_uniform.exit79

.lr.ph.i.i:                                       ; preds = %.split.i, %bb.k
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i, %bb.k ], [ 0, %.split.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.k ], [ 3, %.split.i ] ; 2 uses
  %.01820.i.i = phi i32 [ %.1.i.i, %bb.k ], [ %.sroa.0.0158, %.split.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv22.i.i ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = zext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !79
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 16
  %.masked.i.i = and i32 %i.cv, 8323072
  %i.cw = or disjoint i32 %.masked.i.i, %i.cr     ; 2 uses
  %i.cx = icmp samesign ult i32 %i.cw, 8380417
  br i1 %i.cx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cy = add nuw nsw i32 %.01820.i.i, 1
  %i.cz = zext nneg i32 %.01820.i.i to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  store i32 %i.cw, ptr %i.da, align 4, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.cy, %bb.j ], [ %.01820.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.db = icmp ult i32 %.1.i.i, 256
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 3
  %i.dc = icmp samesign ult i64 %indvars.iv.i.i, 166
  %i.dd = and i1 %i.dc, %i.db
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 3
  br i1 %i.dd, label %.lr.ph.i.i, label %mld_rej_uniform.exit79, !llvm.loop !63

.lr.ph.i17.i71:                                   ; preds = %.lr.ph, %bb.m
  %indvars.iv22.i18.i72 = phi i64 [ %indvars.iv.next23.i24.i78, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %indvars.iv.i19.i73 = phi i64 [ %indvars.iv.next.i23.i77, %bb.m ], [ 3, %.lr.ph ] ; 2 uses
  %.01820.i20.i74 = phi i32 [ %.1.i22.i76, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv22.i18.i72 ; 2 uses
  %i.df = load i16, ptr %i.de, align 1
  %i.dg = zext i16 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !79
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 16
  %.masked.i21.i75 = and i32 %i.dk, 8323072
  %i.dl = or disjoint i32 %.masked.i21.i75, %i.dg ; 2 uses
  %i.dm = icmp samesign ult i32 %i.dl, 8380417
  br i1 %i.dm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i17.i71
  %i.dn = add nuw nsw i32 %.01820.i20.i74, 1
  %i.do = zext nneg i32 %.01820.i20.i74 to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  store i32 %i.dl, ptr %i.dp, align 4, !tbaa !76
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i17.i71
  %.1.i22.i76 = phi i32 [ %i.dn, %bb.l ], [ %.01820.i20.i74, %.lr.ph.i17.i71 ] ; 3 uses
  %i.dq = icmp samesign ult i32 %.1.i22.i76, 256
  %indvars.iv.next.i23.i77 = add nuw nsw i64 %indvars.iv.i19.i73, 3
  %i.dr = icmp samesign ult i64 %indvars.iv.i19.i73, 166
  %i.ds = and i1 %i.dr, %i.dq
  %indvars.iv.next23.i24.i78 = add nuw nsw i64 %indvars.iv22.i18.i72, 3
  br i1 %i.ds, label %.lr.ph.i17.i71, label %mld_rej_uniform.exit79, !llvm.loop !63

mld_rej_uniform.exit79:                           ; preds = %bb.k, %bb.m, %.split.i
  %.0.i67 = phi i32 [ %.1.i22.i76, %bb.m ], [ %.sroa.0.0158, %.split.i ], [ %.1.i.i, %bb.k ] ; 2 uses
  %i.dt = icmp eq i32 %.sroa.6.0157, 0
  br i1 %i.dt, label %.lr.ph.i17.i94, label %.split.i80

.split.i80:                                       ; preds = %mld_rej_uniform.exit79
  br i1 %i.cm, label %.lr.ph.i.i83, label %mld_rej_uniform.exit102

.lr.ph.i.i83:                                     ; preds = %.split.i80, %bb.o
  %indvars.iv22.i.i84 = phi i64 [ %indvars.iv.next23.i.i90, %bb.o ], [ 0, %.split.i80 ] ; 2 uses
  %indvars.iv.i.i85 = phi i64 [ %indvars.iv.next.i.i89, %bb.o ], [ 3, %.split.i80 ] ; 2 uses
  %.01820.i.i86 = phi i32 [ %.1.i.i88, %bb.o ], [ %.sroa.6.0157, %.split.i80 ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv22.i.i84 ; 2 uses
  %i.dv = load i16, ptr %i.du, align 1
  %i.dw = zext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !79
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 16
  %.masked.i.i87 = and i32 %i.ea, 8323072
  %i.eb = or disjoint i32 %.masked.i.i87, %i.dw   ; 2 uses
  %i.ec = icmp samesign ult i32 %i.eb, 8380417
  br i1 %i.ec, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i83
  %i.ed = add nuw nsw i32 %.01820.i.i86, 1
  %i.ee = zext nneg i32 %.01820.i.i86 to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ee
  store i32 %i.eb, ptr %i.ef, align 4, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i83
  %.1.i.i88 = phi i32 [ %i.ed, %bb.n ], [ %.01820.i.i86, %.lr.ph.i.i83 ] ; 3 uses
  %i.eg = icmp ult i32 %.1.i.i88, 256
  %indvars.iv.next.i.i89 = add nuw nsw i64 %indvars.iv.i.i85, 3
  %i.eh = icmp samesign ult i64 %indvars.iv.i.i85, 166
  %i.ei = and i1 %i.eh, %i.eg
  %indvars.iv.next23.i.i90 = add nuw nsw i64 %indvars.iv22.i.i84, 3
  br i1 %i.ei, label %.lr.ph.i.i83, label %mld_rej_uniform.exit102, !llvm.loop !63

.lr.ph.i17.i94:                                   ; preds = %mld_rej_uniform.exit79, %bb.q
  %indvars.iv22.i18.i95 = phi i64 [ %indvars.iv.next23.i24.i101, %bb.q ], [ 0, %mld_rej_uniform.exit79 ] ; 2 uses
  %indvars.iv.i19.i96 = phi i64 [ %indvars.iv.next.i23.i100, %bb.q ], [ 3, %mld_rej_uniform.exit79 ] ; 2 uses
  %.01820.i20.i97 = phi i32 [ %.1.i22.i99, %bb.q ], [ 0, %mld_rej_uniform.exit79 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv22.i18.i95 ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 1
  %i.el = zext i16 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !79
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 16
  %.masked.i21.i98 = and i32 %i.ep, 8323072
  %i.eq = or disjoint i32 %.masked.i21.i98, %i.el ; 2 uses
  %i.er = icmp samesign ult i32 %i.eq, 8380417
  br i1 %i.er, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i17.i94
  %i.es = add nuw nsw i32 %.01820.i20.i97, 1
  %i.et = zext nneg i32 %.01820.i20.i97 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et
  store i32 %i.eq, ptr %i.eu, align 4, !tbaa !76
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i17.i94
  %.1.i22.i99 = phi i32 [ %i.es, %bb.p ], [ %.01820.i20.i97, %.lr.ph.i17.i94 ] ; 3 uses
  %i.ev = icmp samesign ult i32 %.1.i22.i99, 256
  %indvars.iv.next.i23.i100 = add nuw nsw i64 %indvars.iv.i19.i96, 3
  %i.ew = icmp samesign ult i64 %indvars.iv.i19.i96, 166
  %i.ex = and i1 %i.ew, %i.ev
  %indvars.iv.next23.i24.i101 = add nuw nsw i64 %indvars.iv22.i18.i95, 3
  br i1 %i.ex, label %.lr.ph.i17.i94, label %mld_rej_uniform.exit102, !llvm.loop !63

mld_rej_uniform.exit102:                          ; preds = %bb.o, %bb.q, %.split.i80
  %.0.i81 = phi i32 [ %.1.i22.i99, %bb.q ], [ %.sroa.6.0157, %.split.i80 ], [ %.1.i.i88, %bb.o ] ; 2 uses
  %i.ey = icmp eq i32 %.sroa.10.0156, 0
  br i1 %i.ey, label %.lr.ph.i17.i117, label %.split.i103

.split.i103:                                      ; preds = %mld_rej_uniform.exit102
  br i1 %i.cl, label %.lr.ph.i.i106, label %mld_rej_uniform.exit125

.lr.ph.i.i106:                                    ; preds = %.split.i103, %bb.s
  %indvars.iv22.i.i107 = phi i64 [ %indvars.iv.next23.i.i113, %bb.s ], [ 0, %.split.i103 ] ; 2 uses
  %indvars.iv.i.i108 = phi i64 [ %indvars.iv.next.i.i112, %bb.s ], [ 3, %.split.i103 ] ; 2 uses
  %.01820.i.i109 = phi i32 [ %.1.i.i111, %bb.s ], [ %.sroa.10.0156, %.split.i103 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv22.i.i107 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 1
  %i.fb = zext i16 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !79
  %i.fe = zext i8 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 16
  %.masked.i.i110 = and i32 %i.ff, 8323072
  %i.fg = or disjoint i32 %.masked.i.i110, %i.fb  ; 2 uses
  %i.fh = icmp samesign ult i32 %i.fg, 8380417
  br i1 %i.fh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i106
  %i.fi = add nuw nsw i32 %.01820.i.i109, 1
  %i.fj = zext nneg i32 %.01820.i.i109 to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fj
  store i32 %i.fg, ptr %i.fk, align 4, !tbaa !76
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i106
  %.1.i.i111 = phi i32 [ %i.fi, %bb.r ], [ %.01820.i.i109, %.lr.ph.i.i106 ] ; 3 uses
  %i.fl = icmp ult i32 %.1.i.i111, 256
  %indvars.iv.next.i.i112 = add nuw nsw i64 %indvars.iv.i.i108, 3
  %i.fm = icmp samesign ult i64 %indvars.iv.i.i108, 166
  %i.fn = and i1 %i.fm, %i.fl
  %indvars.iv.next23.i.i113 = add nuw nsw i64 %indvars.iv22.i.i107, 3
  br i1 %i.fn, label %.lr.ph.i.i106, label %mld_rej_uniform.exit125, !llvm.loop !63

.lr.ph.i17.i117:                                  ; preds = %mld_rej_uniform.exit102, %bb.u
  %indvars.iv22.i18.i118 = phi i64 [ %indvars.iv.next23.i24.i124, %bb.u ], [ 0, %mld_rej_uniform.exit102 ] ; 2 uses
  %indvars.iv.i19.i119 = phi i64 [ %indvars.iv.next.i23.i123, %bb.u ], [ 3, %mld_rej_uniform.exit102 ] ; 2 uses
  %.01820.i20.i120 = phi i32 [ %.1.i22.i122, %bb.u ], [ 0, %mld_rej_uniform.exit102 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv22.i18.i118 ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 1
  %i.fq = zext i16 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !79
  %i.ft = zext i8 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 16
  %.masked.i21.i121 = and i32 %i.fu, 8323072
  %i.fv = or disjoint i32 %.masked.i21.i121, %i.fq ; 2 uses
  %i.fw = icmp samesign ult i32 %i.fv, 8380417
  br i1 %i.fw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i17.i117
  %i.fx = add nuw nsw i32 %.01820.i20.i120, 1
  %i.fy = zext nneg i32 %.01820.i20.i120 to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fy
  store i32 %i.fv, ptr %i.fz, align 4, !tbaa !76
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i17.i117
  %.1.i22.i122 = phi i32 [ %i.fx, %bb.t ], [ %.01820.i20.i120, %.lr.ph.i17.i117 ] ; 3 uses
  %i.ga = icmp samesign ult i32 %.1.i22.i122, 256
  %indvars.iv.next.i23.i123 = add nuw nsw i64 %indvars.iv.i19.i119, 3
  %i.gb = icmp samesign ult i64 %indvars.iv.i19.i119, 166
  %i.gc = and i1 %i.gb, %i.ga
  %indvars.iv.next23.i24.i124 = add nuw nsw i64 %indvars.iv22.i18.i118, 3
  br i1 %i.gc, label %.lr.ph.i17.i117, label %mld_rej_uniform.exit125, !llvm.loop !63

mld_rej_uniform.exit125:                          ; preds = %bb.s, %bb.u, %.split.i103
  %.0.i104 = phi i32 [ %.1.i22.i122, %bb.u ], [ %.sroa.10.0156, %.split.i103 ], [ %.1.i.i111, %bb.s ] ; 2 uses
  %i.gd = icmp eq i32 %.sroa.14.0155, 0
  br i1 %i.gd, label %.lr.ph.i17.i140, label %.split.i126

.split.i126:                                      ; preds = %mld_rej_uniform.exit125
  br i1 %i.ck, label %.lr.ph.i.i129, label %mld_rej_uniform.exit148

.lr.ph.i.i129:                                    ; preds = %.split.i126, %bb.w
  %indvars.iv22.i.i130 = phi i64 [ %indvars.iv.next23.i.i136, %bb.w ], [ 0, %.split.i126 ] ; 2 uses
  %indvars.iv.i.i131 = phi i64 [ %indvars.iv.next.i.i135, %bb.w ], [ 3, %.split.i126 ] ; 2 uses
  %.01820.i.i132 = phi i32 [ %.1.i.i134, %bb.w ], [ %.sroa.14.0155, %.split.i126 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv22.i.i130 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 1
  %i.gg = zext i16 %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !79
  %i.gj = zext i8 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.gj, 16
  %.masked.i.i133 = and i32 %i.gk, 8323072
  %i.gl = or disjoint i32 %.masked.i.i133, %i.gg  ; 2 uses
  %i.gm = icmp samesign ult i32 %i.gl, 8380417
  br i1 %i.gm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i129
  %i.gn = add nuw nsw i32 %.01820.i.i132, 1
  %i.go = zext nneg i32 %.01820.i.i132 to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.go
  store i32 %i.gl, ptr %i.gp, align 4, !tbaa !76
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i129
  %.1.i.i134 = phi i32 [ %i.gn, %bb.v ], [ %.01820.i.i132, %.lr.ph.i.i129 ] ; 3 uses
  %i.gq = icmp ult i32 %.1.i.i134, 256
  %indvars.iv.next.i.i135 = add nuw nsw i64 %indvars.iv.i.i131, 3
  %i.gr = icmp samesign ult i64 %indvars.iv.i.i131, 166
  %i.gs = and i1 %i.gr, %i.gq
  %indvars.iv.next23.i.i136 = add nuw nsw i64 %indvars.iv22.i.i130, 3
  br i1 %i.gs, label %.lr.ph.i.i129, label %mld_rej_uniform.exit148, !llvm.loop !63

.lr.ph.i17.i140:                                  ; preds = %mld_rej_uniform.exit125, %bb.y
  %indvars.iv22.i18.i141 = phi i64 [ %indvars.iv.next23.i24.i147, %bb.y ], [ 0, %mld_rej_uniform.exit125 ] ; 2 uses
  %indvars.iv.i19.i142 = phi i64 [ %indvars.iv.next.i23.i146, %bb.y ], [ 3, %mld_rej_uniform.exit125 ] ; 2 uses
  %.01820.i20.i143 = phi i32 [ %.1.i22.i145, %bb.y ], [ 0, %mld_rej_uniform.exit125 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv22.i18.i141 ; 2 uses
  %i.gu = load i16, ptr %i.gt, align 1
  %i.gv = zext i16 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !79
  %i.gy = zext i8 %i.gx to i32
  %i.gz = shl nuw nsw i32 %i.gy, 16
  %.masked.i21.i144 = and i32 %i.gz, 8323072
  %i.ha = or disjoint i32 %.masked.i21.i144, %i.gv ; 2 uses
  %i.hb = icmp samesign ult i32 %i.ha, 8380417
  br i1 %i.hb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i17.i140
  %i.hc = add nuw nsw i32 %.01820.i20.i143, 1
  %i.hd = zext nneg i32 %.01820.i20.i143 to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hd
  store i32 %i.ha, ptr %i.he, align 4, !tbaa !76
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i17.i140
  %.1.i22.i145 = phi i32 [ %i.hc, %bb.x ], [ %.01820.i20.i143, %.lr.ph.i17.i140 ] ; 3 uses
  %i.hf = icmp samesign ult i32 %.1.i22.i145, 256
  %indvars.iv.next.i23.i146 = add nuw nsw i64 %indvars.iv.i19.i142, 3
  %i.hg = icmp samesign ult i64 %indvars.iv.i19.i142, 166
  %i.hh = and i1 %i.hg, %i.hf
  %indvars.iv.next23.i24.i147 = add nuw nsw i64 %indvars.iv22.i18.i141, 3
  br i1 %i.hh, label %.lr.ph.i17.i140, label %mld_rej_uniform.exit148, !llvm.loop !63

mld_rej_uniform.exit148:                          ; preds = %bb.w, %bb.y, %.split.i126
  %.0.i127 = phi i32 [ %.1.i22.i145, %bb.y ], [ %.sroa.14.0155, %.split.i126 ], [ %.1.i.i134, %bb.w ] ; 2 uses
  %i.hi = icmp ult i32 %.0.i67, 256               ; 2 uses
  %i.hj = icmp ult i32 %.0.i81, 256               ; 2 uses
  %or.cond = or i1 %i.hj, %i.hi
  %i.hk = icmp ult i32 %.0.i104, 256              ; 2 uses
  %or.cond5 = or i1 %i.hk, %or.cond
  %i.hl = icmp ult i32 %.0.i127, 256              ; 2 uses
  %6 = or i1 %i.hl, %or.cond5
  br i1 %6, label %.lr.ph, label %._crit_edge, !llvm.loop !2640

._crit_edge:                                      ; preds = %mld_rej_uniform.exit148, %mld_rej_uniform.exit66
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 3456) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

declare i32 @mldsa_rej_uniform_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mldsa_nttunpack_avx2_asm(ptr noundef) local_unnamed_addr #1

declare void @mldsa_pointwise_acc_l4_avx2_asm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mldsa_invntt_avx2_asm(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mldsa_poly_caddq_avx2_asm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mldsa44_polyvecl_chknorm(ptr noundef nonnull %0, i32 noundef range(i32 3, 130995) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.b = and i32 %i.a, 32
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %mld_poly_chknorm_native.exit.thread.i.preheader, label %mld_poly_chknorm_native.exit.i

mld_poly_chknorm_native.exit.thread.i.preheader:  ; preds = %mld_poly_chknorm_native.exit.i, %bb.a
  br label %mld_poly_chknorm_native.exit.thread.i

mld_poly_chknorm_native.exit.i:                   ; preds = %bb.a
  %i.c = tail call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %0, i32 noundef range(i32 3, 524169) %1) #46 ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %mld_poly_chknorm_native.exit.thread.i.preheader, label %bb.b

bb.b:                                             ; preds = %mld_poly_chknorm_native.exit.i
  %i.d = zext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.e) #46, !srcloc !452
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  br label %mldsa_poly_chknorm.exit

mld_poly_chknorm_native.exit.thread.i:            ; preds = %mld_poly_chknorm_native.exit.thread.i.preheader, %mld_poly_chknorm_native.exit.thread.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %mld_poly_chknorm_native.exit.thread.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.preheader ] ; 2 uses
  %.08.i.i = phi i32 [ %i.z, %mld_poly_chknorm_native.exit.thread.i ], [ 0, %mld_poly_chknorm_native.exit.thread.i.preheader ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76   ; 4 uses
  %i.k = sub nsw i32 0, %i.j
  %i.l = sext i32 %i.j to i64
  %i.m = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.l) #46, !srcloc !452
  %i.n = lshr i64 %i.m, 31
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.o) #46, !srcloc !453
  %i.q = xor i32 %i.j, %i.k
  %i.r = and i32 %i.p, %i.q
  %i.s = xor i32 %i.j, %i.r
  %i.t = xor i32 %i.s, -1
  %i.u = add i32 %1, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.v) #46, !srcloc !452
  %i.x = lshr i64 %i.w, 31
  %i.y = trunc i64 %i.x to i32
  %i.z = or i32 %.08.i.i, %i.y                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %mldsa_poly_chknorm.exit, label %mld_poly_chknorm_native.exit.thread.i, !llvm.loop !34

mldsa_poly_chknorm.exit:                          ; preds = %mld_poly_chknorm_native.exit.thread.i, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.z, %mld_poly_chknorm_native.exit.thread.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.ac = and i32 %i.ab, 32
  %.not.i.i.1 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.1, label %mld_poly_chknorm_native.exit.thread.i.1.preheader, label %mld_poly_chknorm_native.exit.i.1

mld_poly_chknorm_native.exit.thread.i.1.preheader: ; preds = %mld_poly_chknorm_native.exit.i.1, %mldsa_poly_chknorm.exit
  br label %mld_poly_chknorm_native.exit.thread.i.1

mld_poly_chknorm_native.exit.i.1:                 ; preds = %mldsa_poly_chknorm.exit
  %i.ad = tail call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.aa, i32 noundef range(i32 3, 524169) %1) #46 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.ad, -1
  br i1 %.not.i.1, label %mld_poly_chknorm_native.exit.thread.i.1.preheader, label %bb.c

bb.c:                                             ; preds = %mld_poly_chknorm_native.exit.i.1
  %i.ae = zext i32 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.af) #46, !srcloc !452
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = trunc nuw i64 %i.ah to i32
  br label %mldsa_poly_chknorm.exit.1

mld_poly_chknorm_native.exit.thread.i.1:          ; preds = %mld_poly_chknorm_native.exit.thread.i.1.preheader, %mld_poly_chknorm_native.exit.thread.i.1
  %indvars.iv.i.i.1 = phi i64 [ %indvars.iv.next.i.i.1, %mld_poly_chknorm_native.exit.thread.i.1 ], [ 0, %mld_poly_chknorm_native.exit.thread.i.1.preheader ] ; 2 uses
  %.08.i.i.1 = phi i32 [ %i.ba, %mld_poly_chknorm_native.exit.thread.i.1 ], [ 0, %mld_poly_chknorm_native.exit.thread.i.1.preheader ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.i.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !76 ; 4 uses
  %i.al = sub nsw i32 0, %i.ak
  %i.am = sext i32 %i.ak to i64
  %i.an = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.am) #46, !srcloc !452
  %i.ao = lshr i64 %i.an, 31
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ap) #46, !srcloc !453
  %i.ar = xor i32 %i.ak, %i.al
  %i.as = and i32 %i.aq, %i.ar
  %i.at = xor i32 %i.ak, %i.as
  %i.au = xor i32 %i.at, -1
  %i.av = add i32 %1, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.aw) #46, !srcloc !452
  %i.ay = lshr i64 %i.ax, 31
  %i.az = trunc i64 %i.ay to i32
  %i.ba = or i32 %.08.i.i.1, %i.az                ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.1, 1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %mldsa_poly_chknorm.exit.1, label %mld_poly_chknorm_native.exit.thread.i.1, !llvm.loop !34

mldsa_poly_chknorm.exit.1:                        ; preds = %mld_poly_chknorm_native.exit.thread.i.1, %bb.c
  %.0.i.1 = phi i32 [ %i.ai, %bb.c ], [ %i.ba, %mld_poly_chknorm_native.exit.thread.i.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.bd = and i32 %i.bc, 32
  %.not.i.i.2 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.2, label %mld_poly_chknorm_native.exit.thread.i.2.preheader, label %mld_poly_chknorm_native.exit.i.2

mld_poly_chknorm_native.exit.thread.i.2.preheader: ; preds = %mld_poly_chknorm_native.exit.i.2, %mldsa_poly_chknorm.exit.1
  br label %mld_poly_chknorm_native.exit.thread.i.2

mld_poly_chknorm_native.exit.i.2:                 ; preds = %mldsa_poly_chknorm.exit.1
  %i.be = tail call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.bb, i32 noundef range(i32 3, 524169) %1) #46 ; 2 uses
  %.not.i.2 = icmp eq i32 %i.be, -1
  br i1 %.not.i.2, label %mld_poly_chknorm_native.exit.thread.i.2.preheader, label %bb.d

bb.d:                                             ; preds = %mld_poly_chknorm_native.exit.i.2
  %i.bf = zext i32 %i.be to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.bg) #46, !srcloc !452
  %i.bi = lshr i64 %i.bh, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  br label %mldsa_poly_chknorm.exit.2

mld_poly_chknorm_native.exit.thread.i.2:          ; preds = %mld_poly_chknorm_native.exit.thread.i.2.preheader, %mld_poly_chknorm_native.exit.thread.i.2
  %indvars.iv.i.i.2 = phi i64 [ %indvars.iv.next.i.i.2, %mld_poly_chknorm_native.exit.thread.i.2 ], [ 0, %mld_poly_chknorm_native.exit.thread.i.2.preheader ] ; 2 uses
  %.08.i.i.2 = phi i32 [ %i.cb, %mld_poly_chknorm_native.exit.thread.i.2 ], [ 0, %mld_poly_chknorm_native.exit.thread.i.2.preheader ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.i.2
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !76 ; 4 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = sext i32 %i.bl to i64
  %i.bo = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.bn) #46, !srcloc !452
  %i.bp = lshr i64 %i.bo, 31
  %i.bq = trunc i64 %i.bp to i32
  %i.br = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bq) #46, !srcloc !453
  %i.bs = xor i32 %i.bl, %i.bm
  %i.bt = and i32 %i.br, %i.bs
  %i.bu = xor i32 %i.bl, %i.bt
  %i.bv = xor i32 %i.bu, -1
  %i.bw = add i32 %1, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.bx) #46, !srcloc !452
  %i.bz = lshr i64 %i.by, 31
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = or i32 %.08.i.i.2, %i.ca                ; 2 uses
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.2, 1 ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 256
  br i1 %exitcond.not.i.i.2, label %mldsa_poly_chknorm.exit.2, label %mld_poly_chknorm_native.exit.thread.i.2, !llvm.loop !34

mldsa_poly_chknorm.exit.2:                        ; preds = %mld_poly_chknorm_native.exit.thread.i.2, %bb.d
  %.0.i.2 = phi i32 [ %i.bj, %bb.d ], [ %i.cb, %mld_poly_chknorm_native.exit.thread.i.2 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.ce = and i32 %i.cd, 32
  %.not.i.i.3 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.3, label %mld_poly_chknorm_native.exit.thread.i.3.preheader, label %mld_poly_chknorm_native.exit.i.3

mld_poly_chknorm_native.exit.thread.i.3.preheader: ; preds = %mld_poly_chknorm_native.exit.i.3, %mldsa_poly_chknorm.exit.2
  br label %mld_poly_chknorm_native.exit.thread.i.3

mld_poly_chknorm_native.exit.i.3:                 ; preds = %mldsa_poly_chknorm.exit.2
  %i.cf = tail call i32 @mldsa_poly_chknorm_avx2_asm(ptr noundef nonnull %i.cc, i32 noundef range(i32 3, 524169) %1) #46 ; 2 uses
  %.not.i.3 = icmp eq i32 %i.cf, -1
  br i1 %.not.i.3, label %mld_poly_chknorm_native.exit.thread.i.3.preheader, label %bb.e

bb.e:                                             ; preds = %mld_poly_chknorm_native.exit.i.3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.ch) #46, !srcloc !452
  %i.cj = lshr i64 %i.ci, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  br label %mldsa_poly_chknorm.exit.3

mld_poly_chknorm_native.exit.thread.i.3:          ; preds = %mld_poly_chknorm_native.exit.thread.i.3.preheader, %mld_poly_chknorm_native.exit.thread.i.3
  %indvars.iv.i.i.3 = phi i64 [ %indvars.iv.next.i.i.3, %mld_poly_chknorm_native.exit.thread.i.3 ], [ 0, %mld_poly_chknorm_native.exit.thread.i.3.preheader ] ; 2 uses
  %.08.i.i.3 = phi i32 [ %i.dc, %mld_poly_chknorm_native.exit.thread.i.3 ], [ 0, %mld_poly_chknorm_native.exit.thread.i.3.preheader ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.i.3
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !76 ; 4 uses
  %i.cn = sub nsw i32 0, %i.cm
  %i.co = sext i32 %i.cm to i64
  %i.cp = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967294, 2147483648) %i.co) #46, !srcloc !452
  %i.cq = lshr i64 %i.cp, 31
  %i.cr = trunc i64 %i.cq to i32
end_hunk_0
begin_hunk_1_@mldsa65_poly_uniform_eta_4x:bb.a
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i17.i
  %.1.i21.i = phi i32 [ %i.bg, %bb.b ], [ %.02125.i19.i, %.lr.ph.i17.i ] ; 4 uses
  %i.bj = icmp ult i8 %i.ba, -112
  %i.bk = icmp samesign ult i32 %.1.i21.i, 256
  %or.cond.i22.i = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.i22.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bl = sub nsw i32 4, %i.bd
  %i.bm = add nuw nsw i32 %.1.i21.i, 1
  %i.bn = zext nneg i32 %.1.i21.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.i23.i = phi i32 [ %i.bm, %bb.d ], [ %.1.i21.i, %bb.c ] ; 3 uses
  %i.bp = icmp ult i32 %.2.i23.i, 256
  %i.bq = icmp samesign ult i64 %indvars.iv.i18.i, 271
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph.i17.i, label %mld_rej_eta65.exit, !llvm.loop !2650

mld_rej_eta65.exit:                               ; preds = %bb.e, %mld_rej_uniform_eta4_native.exit.i
  %.0.i = phi i32 [ %i.ay, %mld_rej_uniform_eta4_native.exit.i ], [ %.2.i23.i, %bb.e ] ; 2 uses
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.bt = and i32 %i.bs, 32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i17.i36.preheader, label %mld_rej_uniform_eta4_native.exit.i32

mld_rej_uniform_eta4_native.exit.i32:             ; preds = %mld_rej_eta65.exit
  %i.bv = call i32 @mldsa_rej_uniform_eta4_avx2_asm(ptr noundef nonnull %1, ptr noundef nonnull %i.ao, ptr noundef nonnull @mldsa_mld_rej_uniform_table) #46 ; 2 uses
  %.not.i33 = icmp eq i32 %i.bv, -1
  br i1 %.not.i33, label %.lr.ph.i17.i36.preheader, label %mld_rej_eta65.exit43

.lr.ph.i17.i36.preheader:                         ; preds = %mld_rej_uniform_eta4_native.exit.i32, %mld_rej_eta65.exit
  br label %.lr.ph.i17.i36

.lr.ph.i17.i36:                                   ; preds = %.lr.ph.i17.i36.preheader, %bb.i
  %indvars.iv.i18.i37 = phi i64 [ %indvars.iv.next.i20.i39, %bb.i ], [ 0, %.lr.ph.i17.i36.preheader ] ; 3 uses
  %.02125.i19.i38 = phi i32 [ %.2.i23.i42, %bb.i ], [ 0, %.lr.ph.i17.i36.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i18.i37
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !79  ; 2 uses
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = and i32 %i.by, 15                       ; 2 uses
  %indvars.iv.next.i20.i39 = add nuw nsw i64 %indvars.iv.i18.i37, 1
  %i.ca = lshr i32 %i.by, 4
  %i.cb = icmp samesign ult i32 %i.bz, 9
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i17.i36
  %i.cc = sub nsw i32 4, %i.bz
  %i.cd = add nuw nsw i32 %.02125.i19.i38, 1
  %i.ce = zext nneg i32 %.02125.i19.i38 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i17.i36
  %.1.i21.i40 = phi i32 [ %i.cd, %bb.f ], [ %.02125.i19.i38, %.lr.ph.i17.i36 ] ; 4 uses
  %i.cg = icmp ult i8 %i.bx, -112
  %i.ch = icmp samesign ult i32 %.1.i21.i40, 256
  %or.cond.i22.i41 = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond.i22.i41, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ci = sub nsw i32 4, %i.ca
  %i.cj = add nuw nsw i32 %.1.i21.i40, 1
  %i.ck = zext nneg i32 %.1.i21.i40 to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ck
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.i23.i42 = phi i32 [ %i.cj, %bb.h ], [ %.1.i21.i40, %bb.g ] ; 3 uses
  %i.cm = icmp ult i32 %.2.i23.i42, 256
  %i.cn = icmp samesign ult i64 %indvars.iv.i18.i37, 271
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph.i17.i36, label %mld_rej_eta65.exit43, !llvm.loop !2650

mld_rej_eta65.exit43:                             ; preds = %bb.i, %mld_rej_uniform_eta4_native.exit.i32
  %.0.i34 = phi i32 [ %i.bv, %mld_rej_uniform_eta4_native.exit.i32 ], [ %.2.i23.i42, %bb.i ] ; 2 uses
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.cq = and i32 %i.cp, 32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.i17.i48.preheader, label %mld_rej_uniform_eta4_native.exit.i44

mld_rej_uniform_eta4_native.exit.i44:             ; preds = %mld_rej_eta65.exit43
  %i.cs = call i32 @mldsa_rej_uniform_eta4_avx2_asm(ptr noundef nonnull %2, ptr noundef nonnull %i.ap, ptr noundef nonnull @mldsa_mld_rej_uniform_table) #46 ; 2 uses
  %.not.i45 = icmp eq i32 %i.cs, -1
  br i1 %.not.i45, label %.lr.ph.i17.i48.preheader, label %mld_rej_eta65.exit55

.lr.ph.i17.i48.preheader:                         ; preds = %mld_rej_uniform_eta4_native.exit.i44, %mld_rej_eta65.exit43
  br label %.lr.ph.i17.i48

.lr.ph.i17.i48:                                   ; preds = %.lr.ph.i17.i48.preheader, %bb.m
  %indvars.iv.i18.i49 = phi i64 [ %indvars.iv.next.i20.i51, %bb.m ], [ 0, %.lr.ph.i17.i48.preheader ] ; 3 uses
  %.02125.i19.i50 = phi i32 [ %.2.i23.i54, %bb.m ], [ 0, %.lr.ph.i17.i48.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i18.i49
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !79  ; 2 uses
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = and i32 %i.cv, 15                       ; 2 uses
  %indvars.iv.next.i20.i51 = add nuw nsw i64 %indvars.iv.i18.i49, 1
  %i.cx = lshr i32 %i.cv, 4
  %i.cy = icmp samesign ult i32 %i.cw, 9
  br i1 %i.cy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i17.i48
  %i.cz = sub nsw i32 4, %i.cw
  %i.da = add nuw nsw i32 %.02125.i19.i50, 1
  %i.db = zext nneg i32 %.02125.i19.i50 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.db
  store i32 %i.cz, ptr %i.dc, align 4, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i17.i48
  %.1.i21.i52 = phi i32 [ %i.da, %bb.j ], [ %.02125.i19.i50, %.lr.ph.i17.i48 ] ; 4 uses
  %i.dd = icmp ult i8 %i.cu, -112
  %i.de = icmp samesign ult i32 %.1.i21.i52, 256
  %or.cond.i22.i53 = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond.i22.i53, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.df = sub nsw i32 4, %i.cx
  %i.dg = add nuw nsw i32 %.1.i21.i52, 1
  %i.dh = zext nneg i32 %.1.i21.i52 to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  store i32 %i.df, ptr %i.di, align 4, !tbaa !76
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.i23.i54 = phi i32 [ %i.dg, %bb.l ], [ %.1.i21.i52, %bb.k ] ; 3 uses
  %i.dj = icmp ult i32 %.2.i23.i54, 256
  %i.dk = icmp samesign ult i64 %indvars.iv.i18.i49, 271
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph.i17.i48, label %mld_rej_eta65.exit55, !llvm.loop !2650

mld_rej_eta65.exit55:                             ; preds = %bb.m, %mld_rej_uniform_eta4_native.exit.i44
  %.0.i46 = phi i32 [ %i.cs, %mld_rej_uniform_eta4_native.exit.i44 ], [ %.2.i23.i54, %bb.m ] ; 2 uses
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.dn = and i32 %i.dm, 32
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i17.i60.preheader, label %mld_rej_uniform_eta4_native.exit.i56

mld_rej_uniform_eta4_native.exit.i56:             ; preds = %mld_rej_eta65.exit55
  %i.dp = call i32 @mldsa_rej_uniform_eta4_avx2_asm(ptr noundef nonnull %3, ptr noundef nonnull %i.aq, ptr noundef nonnull @mldsa_mld_rej_uniform_table) #46 ; 2 uses
  %.not.i57 = icmp eq i32 %i.dp, -1
  br i1 %.not.i57, label %.lr.ph.i17.i60.preheader, label %mld_rej_eta65.exit67

.lr.ph.i17.i60.preheader:                         ; preds = %mld_rej_uniform_eta4_native.exit.i56, %mld_rej_eta65.exit55
  br label %.lr.ph.i17.i60

.lr.ph.i17.i60:                                   ; preds = %.lr.ph.i17.i60.preheader, %bb.q
  %indvars.iv.i18.i61 = phi i64 [ %indvars.iv.next.i20.i63, %bb.q ], [ 0, %.lr.ph.i17.i60.preheader ] ; 3 uses
  %.02125.i19.i62 = phi i32 [ %.2.i23.i66, %bb.q ], [ 0, %.lr.ph.i17.i60.preheader ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i18.i61
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !79  ; 2 uses
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = and i32 %i.ds, 15                       ; 2 uses
  %indvars.iv.next.i20.i63 = add nuw nsw i64 %indvars.iv.i18.i61, 1
  %i.du = lshr i32 %i.ds, 4
  %i.dv = icmp samesign ult i32 %i.dt, 9
  br i1 %i.dv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i17.i60
  %i.dw = sub nsw i32 4, %i.dt
  %i.dx = add nuw nsw i32 %.02125.i19.i62, 1
  %i.dy = zext nneg i32 %.02125.i19.i62 to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dy
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i17.i60
  %.1.i21.i64 = phi i32 [ %i.dx, %bb.n ], [ %.02125.i19.i62, %.lr.ph.i17.i60 ] ; 4 uses
  %i.ea = icmp ult i8 %i.dr, -112
  %i.eb = icmp samesign ult i32 %.1.i21.i64, 256
  %or.cond.i22.i65 = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i22.i65, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = sub nsw i32 4, %i.du
  %i.ed = add nuw nsw i32 %.1.i21.i64, 1
  %i.ee = zext nneg i32 %.1.i21.i64 to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ee
  store i32 %i.ec, ptr %i.ef, align 4, !tbaa !76
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.i23.i66 = phi i32 [ %i.ed, %bb.p ], [ %.1.i21.i64, %bb.o ] ; 3 uses
  %i.eg = icmp ult i32 %.2.i23.i66, 256
  %i.eh = icmp samesign ult i64 %indvars.iv.i18.i61, 271
  %i.ei = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %i.ei, label %.lr.ph.i17.i60, label %mld_rej_eta65.exit67, !llvm.loop !2650

mld_rej_eta65.exit67:                             ; preds = %bb.q, %mld_rej_uniform_eta4_native.exit.i56
  %.0.i58 = phi i32 [ %i.dp, %mld_rej_uniform_eta4_native.exit.i56 ], [ %.2.i23.i66, %bb.q ] ; 2 uses
  %i.ej = icmp ult i32 %.0.i, 256                 ; 2 uses
  %i.ek = icmp ult i32 %.0.i34, 256               ; 2 uses
  %or.cond147 = or i1 %i.ek, %i.ej
  %i.el = icmp ult i32 %.0.i46, 256               ; 2 uses
  %or.cond5148 = or i1 %i.el, %or.cond147
  %i.em = icmp ult i32 %.0.i58, 256               ; 2 uses
  %i.en = or i1 %i.em, %or.cond5148
  br i1 %i.en, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mld_rej_eta65.exit67, %mld_rej_eta65.exit142
  %i.eo = phi i1 [ %i.kz, %mld_rej_eta65.exit142 ], [ %i.em, %mld_rej_eta65.exit67 ]
  %i.ep = phi i1 [ %i.ky, %mld_rej_eta65.exit142 ], [ %i.el, %mld_rej_eta65.exit67 ]
  %i.eq = phi i1 [ %i.kx, %mld_rej_eta65.exit142 ], [ %i.ek, %mld_rej_eta65.exit67 ]
  %i.er = phi i1 [ %i.kw, %mld_rej_eta65.exit142 ], [ %i.ej, %mld_rej_eta65.exit67 ]
  %.sroa.0.0152 = phi i32 [ %.0.i68, %mld_rej_eta65.exit142 ], [ %.0.i, %mld_rej_eta65.exit67 ] ; 3 uses
  %.sroa.6.0151 = phi i32 [ %.0.i81, %mld_rej_eta65.exit142 ], [ %.0.i34, %mld_rej_eta65.exit67 ] ; 3 uses
  %.sroa.10.0150 = phi i32 [ %.0.i102, %mld_rej_eta65.exit142 ], [ %.0.i46, %mld_rej_eta65.exit67 ] ; 3 uses
  %.sroa.14.0149 = phi i32 [ %.0.i123, %mld_rej_eta65.exit142 ], [ %.0.i58, %mld_rej_eta65.exit67 ] ; 3 uses
  %i.es = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.a, ptr noundef nonnull %9, i64 noundef 136) ; 0 uses
  %i.et = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.s, i64 noundef 136) ; 0 uses
  %i.eu = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.y, i64 noundef 136) ; 0 uses
  %i.ev = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ae, i64 noundef 136) ; 0 uses
  %i.ew = icmp eq i32 %.sroa.0.0152, 0
  br i1 %i.ew, label %.lr.ph.i17.i72, label %.split.i

.split.i:                                         ; preds = %.lr.ph
  br i1 %i.er, label %.lr.ph.i.i, label %mld_rej_eta65.exit79

.lr.ph.i.i:                                       ; preds = %.split.i, %bb.u
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 0, %.split.i ] ; 3 uses
  %.02125.i.i = phi i32 [ %.2.i.i, %bb.u ], [ %.sroa.0.0152, %.split.i ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !79  ; 2 uses
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = and i32 %i.ez, 15                       ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.fb = lshr i32 %i.ez, 4
  %i.fc = icmp samesign ult i32 %i.fa, 9
  br i1 %i.fc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.fd = sub nsw i32 4, %i.fa
  %i.fe = add nuw nsw i32 %.02125.i.i, 1
  %i.ff = zext nneg i32 %.02125.i.i to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ff
  store i32 %i.fd, ptr %i.fg, align 4, !tbaa !76
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.fe, %bb.r ], [ %.02125.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.fh = icmp ult i8 %i.ey, -112
  %i.fi = icmp samesign ult i32 %.1.i.i, 256
  %or.cond.i.i = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fj = sub nsw i32 4, %i.fb
  %i.fk = add nuw nsw i32 %.1.i.i, 1
  %i.fl = zext nneg i32 %.1.i.i to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fl
  store i32 %i.fj, ptr %i.fm, align 4, !tbaa !76
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i.i = phi i32 [ %i.fk, %bb.t ], [ %.1.i.i, %bb.s ] ; 3 uses
  %i.fn = icmp ult i32 %.2.i.i, 256
  %i.fo = icmp samesign ult i64 %indvars.iv.i.i, 135
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph.i.i, label %mld_rej_eta65.exit79, !llvm.loop !2650

.lr.ph.i17.i72:                                   ; preds = %.lr.ph, %bb.y
  %indvars.iv.i18.i73 = phi i64 [ %indvars.iv.next.i20.i75, %bb.y ], [ 0, %.lr.ph ] ; 3 uses
  %.02125.i19.i74 = phi i32 [ %.2.i23.i78, %bb.y ], [ 0, %.lr.ph ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i18.i73
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !79  ; 2 uses
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %i.ft = and i32 %i.fs, 15                       ; 2 uses
  %indvars.iv.next.i20.i75 = add nuw nsw i64 %indvars.iv.i18.i73, 1
  %i.fu = lshr i32 %i.fs, 4
  %i.fv = icmp samesign ult i32 %i.ft, 9
  br i1 %i.fv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i17.i72
  %i.fw = sub nsw i32 4, %i.ft
  %i.fx = add nuw nsw i32 %.02125.i19.i74, 1
  %i.fy = zext nneg i32 %.02125.i19.i74 to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !76
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i17.i72
  %.1.i21.i76 = phi i32 [ %i.fx, %bb.v ], [ %.02125.i19.i74, %.lr.ph.i17.i72 ] ; 4 uses
  %i.ga = icmp ult i8 %i.fr, -112
  %i.gb = icmp samesign ult i32 %.1.i21.i76, 256
  %or.cond.i22.i77 = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond.i22.i77, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gc = sub nsw i32 4, %i.fu
  %i.gd = add nuw nsw i32 %.1.i21.i76, 1
  %i.ge = zext nneg i32 %.1.i21.i76 to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ge
  store i32 %i.gc, ptr %i.gf, align 4, !tbaa !76
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2.i23.i78 = phi i32 [ %i.gd, %bb.x ], [ %.1.i21.i76, %bb.w ] ; 3 uses
  %i.gg = icmp samesign ult i32 %.2.i23.i78, 256
  %i.gh = icmp samesign ult i64 %indvars.iv.i18.i73, 135
  %i.gi = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %i.gi, label %.lr.ph.i17.i72, label %mld_rej_eta65.exit79, !llvm.loop !2650

mld_rej_eta65.exit79:                             ; preds = %bb.u, %bb.y, %.split.i
  %.0.i68 = phi i32 [ %.2.i23.i78, %bb.y ], [ %.sroa.0.0152, %.split.i ], [ %.2.i.i, %bb.u ] ; 2 uses
  %i.gj = icmp eq i32 %.sroa.6.0151, 0
  br i1 %i.gj, label %.lr.ph.i17.i93, label %.split.i80

.split.i80:                                       ; preds = %mld_rej_eta65.exit79
  br i1 %i.eq, label %.lr.ph.i.i83, label %mld_rej_eta65.exit100

.lr.ph.i.i83:                                     ; preds = %.split.i80, %bb.ac
  %indvars.iv.i.i84 = phi i64 [ %indvars.iv.next.i.i86, %bb.ac ], [ 0, %.split.i80 ] ; 3 uses
  %.02125.i.i85 = phi i32 [ %.2.i.i89, %bb.ac ], [ %.sroa.6.0151, %.split.i80 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i.i84
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !79  ; 2 uses
  %i.gm = zext i8 %i.gl to i32                    ; 2 uses
  %i.gn = and i32 %i.gm, 15                       ; 2 uses
  %indvars.iv.next.i.i86 = add nuw nsw i64 %indvars.iv.i.i84, 1
  %i.go = lshr i32 %i.gm, 4
  %i.gp = icmp samesign ult i32 %i.gn, 9
  br i1 %i.gp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i83
  %i.gq = sub nsw i32 4, %i.gn
  %i.gr = add nuw nsw i32 %.02125.i.i85, 1
  %i.gs = zext nneg i32 %.02125.i.i85 to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gs
  store i32 %i.gq, ptr %i.gt, align 4, !tbaa !76
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i83
  %.1.i.i87 = phi i32 [ %i.gr, %bb.z ], [ %.02125.i.i85, %.lr.ph.i.i83 ] ; 4 uses
  %i.gu = icmp ult i8 %i.gl, -112
  %i.gv = icmp samesign ult i32 %.1.i.i87, 256
  %or.cond.i.i88 = select i1 %i.gu, i1 %i.gv, i1 false
  br i1 %or.cond.i.i88, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gw = sub nsw i32 4, %i.go
  %i.gx = add nuw nsw i32 %.1.i.i87, 1
  %i.gy = zext nneg i32 %.1.i.i87 to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gy
  store i32 %i.gw, ptr %i.gz, align 4, !tbaa !76
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.i.i89 = phi i32 [ %i.gx, %bb.ab ], [ %.1.i.i87, %bb.aa ] ; 3 uses
  %i.ha = icmp ult i32 %.2.i.i89, 256
  %i.hb = icmp samesign ult i64 %indvars.iv.i.i84, 135
  %i.hc = select i1 %i.ha, i1 %i.hb, i1 false
  br i1 %i.hc, label %.lr.ph.i.i83, label %mld_rej_eta65.exit100, !llvm.loop !2650

.lr.ph.i17.i93:                                   ; preds = %mld_rej_eta65.exit79, %bb.ag
  %indvars.iv.i18.i94 = phi i64 [ %indvars.iv.next.i20.i96, %bb.ag ], [ 0, %mld_rej_eta65.exit79 ] ; 3 uses
  %.02125.i19.i95 = phi i32 [ %.2.i23.i99, %bb.ag ], [ 0, %mld_rej_eta65.exit79 ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i18.i94
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !79  ; 2 uses
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  %i.hg = and i32 %i.hf, 15                       ; 2 uses
  %indvars.iv.next.i20.i96 = add nuw nsw i64 %indvars.iv.i18.i94, 1
  %i.hh = lshr i32 %i.hf, 4
  %i.hi = icmp samesign ult i32 %i.hg, 9
  br i1 %i.hi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i17.i93
  %i.hj = sub nsw i32 4, %i.hg
  %i.hk = add nuw nsw i32 %.02125.i19.i95, 1
  %i.hl = zext nneg i32 %.02125.i19.i95 to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hl
  store i32 %i.hj, ptr %i.hm, align 4, !tbaa !76
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i17.i93
  %.1.i21.i97 = phi i32 [ %i.hk, %bb.ad ], [ %.02125.i19.i95, %.lr.ph.i17.i93 ] ; 4 uses
  %i.hn = icmp ult i8 %i.he, -112
  %i.ho = icmp samesign ult i32 %.1.i21.i97, 256
  %or.cond.i22.i98 = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond.i22.i98, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hp = sub nsw i32 4, %i.hh
  %i.hq = add nuw nsw i32 %.1.i21.i97, 1
  %i.hr = zext nneg i32 %.1.i21.i97 to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hr
  store i32 %i.hp, ptr %i.hs, align 4, !tbaa !76
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.i23.i99 = phi i32 [ %i.hq, %bb.af ], [ %.1.i21.i97, %bb.ae ] ; 3 uses
  %i.ht = icmp samesign ult i32 %.2.i23.i99, 256
  %i.hu = icmp samesign ult i64 %indvars.iv.i18.i94, 135
  %i.hv = select i1 %i.ht, i1 %i.hu, i1 false
  br i1 %i.hv, label %.lr.ph.i17.i93, label %mld_rej_eta65.exit100, !llvm.loop !2650

mld_rej_eta65.exit100:                            ; preds = %bb.ac, %bb.ag, %.split.i80
  %.0.i81 = phi i32 [ %.2.i23.i99, %bb.ag ], [ %.sroa.6.0151, %.split.i80 ], [ %.2.i.i89, %bb.ac ] ; 2 uses
  %i.hw = icmp eq i32 %.sroa.10.0150, 0
  br i1 %i.hw, label %.lr.ph.i17.i114, label %.split.i101

.split.i101:                                      ; preds = %mld_rej_eta65.exit100
  br i1 %i.ep, label %.lr.ph.i.i104, label %mld_rej_eta65.exit121

.lr.ph.i.i104:                                    ; preds = %.split.i101, %bb.ak
  %indvars.iv.i.i105 = phi i64 [ %indvars.iv.next.i.i107, %bb.ak ], [ 0, %.split.i101 ] ; 3 uses
  %.02125.i.i106 = phi i32 [ %.2.i.i110, %bb.ak ], [ %.sroa.10.0150, %.split.i101 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i.i105
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !79  ; 2 uses
  %i.hz = zext i8 %i.hy to i32                    ; 2 uses
  %i.ia = and i32 %i.hz, 15                       ; 2 uses
  %indvars.iv.next.i.i107 = add nuw nsw i64 %indvars.iv.i.i105, 1
  %i.ib = lshr i32 %i.hz, 4
  %i.ic = icmp samesign ult i32 %i.ia, 9
  br i1 %i.ic, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i104
  %i.id = sub nsw i32 4, %i.ia
  %i.ie = add nuw nsw i32 %.02125.i.i106, 1
  %i.if = zext nneg i32 %.02125.i.i106 to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.if
  store i32 %i.id, ptr %i.ig, align 4, !tbaa !76
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i.i104
  %.1.i.i108 = phi i32 [ %i.ie, %bb.ah ], [ %.02125.i.i106, %.lr.ph.i.i104 ] ; 4 uses
  %i.ih = icmp ult i8 %i.hy, -112
  %i.ii = icmp samesign ult i32 %.1.i.i108, 256
  %or.cond.i.i109 = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %or.cond.i.i109, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ij = sub nsw i32 4, %i.ib
  %i.ik = add nuw nsw i32 %.1.i.i108, 1
  %i.il = zext nneg i32 %.1.i.i108 to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.il
  store i32 %i.ij, ptr %i.im, align 4, !tbaa !76
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.i.i110 = phi i32 [ %i.ik, %bb.aj ], [ %.1.i.i108, %bb.ai ] ; 3 uses
  %i.in = icmp ult i32 %.2.i.i110, 256
  %i.io = icmp samesign ult i64 %indvars.iv.i.i105, 135
  %i.ip = select i1 %i.in, i1 %i.io, i1 false
  br i1 %i.ip, label %.lr.ph.i.i104, label %mld_rej_eta65.exit121, !llvm.loop !2650

.lr.ph.i17.i114:                                  ; preds = %mld_rej_eta65.exit100, %bb.ao
  %indvars.iv.i18.i115 = phi i64 [ %indvars.iv.next.i20.i117, %bb.ao ], [ 0, %mld_rej_eta65.exit100 ] ; 3 uses
  %.02125.i19.i116 = phi i32 [ %.2.i23.i120, %bb.ao ], [ 0, %mld_rej_eta65.exit100 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i18.i115
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !79  ; 2 uses
  %i.is = zext i8 %i.ir to i32                    ; 2 uses
  %i.it = and i32 %i.is, 15                       ; 2 uses
  %indvars.iv.next.i20.i117 = add nuw nsw i64 %indvars.iv.i18.i115, 1
  %i.iu = lshr i32 %i.is, 4
  %i.iv = icmp samesign ult i32 %i.it, 9
  br i1 %i.iv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i17.i114
  %i.iw = sub nsw i32 4, %i.it
  %i.ix = add nuw nsw i32 %.02125.i19.i116, 1
  %i.iy = zext nneg i32 %.02125.i19.i116 to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.iy
  store i32 %i.iw, ptr %i.iz, align 4, !tbaa !76
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i17.i114
  %.1.i21.i118 = phi i32 [ %i.ix, %bb.al ], [ %.02125.i19.i116, %.lr.ph.i17.i114 ] ; 4 uses
  %i.ja = icmp ult i8 %i.ir, -112
  %i.jb = icmp samesign ult i32 %.1.i21.i118, 256
  %or.cond.i22.i119 = select i1 %i.ja, i1 %i.jb, i1 false
  br i1 %or.cond.i22.i119, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jc = sub nsw i32 4, %i.iu
  %i.jd = add nuw nsw i32 %.1.i21.i118, 1
  %i.je = zext nneg i32 %.1.i21.i118 to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.je
  store i32 %i.jc, ptr %i.jf, align 4, !tbaa !76
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.i23.i120 = phi i32 [ %i.jd, %bb.an ], [ %.1.i21.i118, %bb.am ] ; 3 uses
  %i.jg = icmp samesign ult i32 %.2.i23.i120, 256
  %i.jh = icmp samesign ult i64 %indvars.iv.i18.i115, 135
  %i.ji = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %i.ji, label %.lr.ph.i17.i114, label %mld_rej_eta65.exit121, !llvm.loop !2650

mld_rej_eta65.exit121:                            ; preds = %bb.ak, %bb.ao, %.split.i101
  %.0.i102 = phi i32 [ %.2.i23.i120, %bb.ao ], [ %.sroa.10.0150, %.split.i101 ], [ %.2.i.i110, %bb.ak ] ; 2 uses
  %i.jj = icmp eq i32 %.sroa.14.0149, 0
  br i1 %i.jj, label %.lr.ph.i17.i135, label %.split.i122

.split.i122:                                      ; preds = %mld_rej_eta65.exit121
  br i1 %i.eo, label %.lr.ph.i.i125, label %mld_rej_eta65.exit142

.lr.ph.i.i125:                                    ; preds = %.split.i122, %bb.as
  %indvars.iv.i.i126 = phi i64 [ %indvars.iv.next.i.i128, %bb.as ], [ 0, %.split.i122 ] ; 3 uses
  %.02125.i.i127 = phi i32 [ %.2.i.i131, %bb.as ], [ %.sroa.14.0149, %.split.i122 ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i.i126
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !79  ; 2 uses
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = and i32 %i.jm, 15                       ; 2 uses
  %indvars.iv.next.i.i128 = add nuw nsw i64 %indvars.iv.i.i126, 1
  %i.jo = lshr i32 %i.jm, 4
  %i.jp = icmp samesign ult i32 %i.jn, 9
  br i1 %i.jp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i125
  %i.jq = sub nsw i32 4, %i.jn
  %i.jr = add nuw nsw i32 %.02125.i.i127, 1
  %i.js = zext nneg i32 %.02125.i.i127 to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.js
  store i32 %i.jq, ptr %i.jt, align 4, !tbaa !76
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i.i125
  %.1.i.i129 = phi i32 [ %i.jr, %bb.ap ], [ %.02125.i.i127, %.lr.ph.i.i125 ] ; 4 uses
  %i.ju = icmp ult i8 %i.jl, -112
  %i.jv = icmp samesign ult i32 %.1.i.i129, 256
  %or.cond.i.i130 = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %or.cond.i.i130, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jw = sub nsw i32 4, %i.jo
  %i.jx = add nuw nsw i32 %.1.i.i129, 1
  %i.jy = zext nneg i32 %.1.i.i129 to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jy
  store i32 %i.jw, ptr %i.jz, align 4, !tbaa !76
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.2.i.i131 = phi i32 [ %i.jx, %bb.ar ], [ %.1.i.i129, %bb.aq ] ; 3 uses
  %i.ka = icmp ult i32 %.2.i.i131, 256
  %i.kb = icmp samesign ult i64 %indvars.iv.i.i126, 135
  %i.kc = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %i.kc, label %.lr.ph.i.i125, label %mld_rej_eta65.exit142, !llvm.loop !2650

.lr.ph.i17.i135:                                  ; preds = %mld_rej_eta65.exit121, %bb.aw
  %indvars.iv.i18.i136 = phi i64 [ %indvars.iv.next.i20.i138, %bb.aw ], [ 0, %mld_rej_eta65.exit121 ] ; 3 uses
  %.02125.i19.i137 = phi i32 [ %.2.i23.i141, %bb.aw ], [ 0, %mld_rej_eta65.exit121 ] ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i18.i136
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !79  ; 2 uses
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %i.kg = and i32 %i.kf, 15                       ; 2 uses
  %indvars.iv.next.i20.i138 = add nuw nsw i64 %indvars.iv.i18.i136, 1
  %i.kh = lshr i32 %i.kf, 4
  %i.ki = icmp samesign ult i32 %i.kg, 9
  br i1 %i.ki, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i17.i135
  %i.kj = sub nsw i32 4, %i.kg
  %i.kk = add nuw nsw i32 %.02125.i19.i137, 1
  %i.kl = zext nneg i32 %.02125.i19.i137 to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kl
  store i32 %i.kj, ptr %i.km, align 4, !tbaa !76
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i17.i135
  %.1.i21.i139 = phi i32 [ %i.kk, %bb.at ], [ %.02125.i19.i137, %.lr.ph.i17.i135 ] ; 4 uses
  %i.kn = icmp ult i8 %i.ke, -112
  %i.ko = icmp samesign ult i32 %.1.i21.i139, 256
  %or.cond.i22.i140 = select i1 %i.kn, i1 %i.ko, i1 false
  br i1 %or.cond.i22.i140, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kp = sub nsw i32 4, %i.kh
  %i.kq = add nuw nsw i32 %.1.i21.i139, 1
  %i.kr = zext nneg i32 %.1.i21.i139 to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kr
  store i32 %i.kp, ptr %i.ks, align 4, !tbaa !76
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.2.i23.i141 = phi i32 [ %i.kq, %bb.av ], [ %.1.i21.i139, %bb.au ] ; 3 uses
  %i.kt = icmp samesign ult i32 %.2.i23.i141, 256
  %i.ku = icmp samesign ult i64 %indvars.iv.i18.i136, 135
  %i.kv = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %i.kv, label %.lr.ph.i17.i135, label %mld_rej_eta65.exit142, !llvm.loop !2650

mld_rej_eta65.exit142:                            ; preds = %bb.as, %bb.aw, %.split.i122
  %.0.i123 = phi i32 [ %.2.i23.i141, %bb.aw ], [ %.sroa.14.0149, %.split.i122 ], [ %.2.i.i131, %bb.as ] ; 2 uses
  %i.kw = icmp ult i32 %.0.i68, 256               ; 2 uses
  %i.kx = icmp ult i32 %.0.i81, 256               ; 2 uses
  %or.cond = or i1 %i.kx, %i.kw
  %i.ky = icmp ult i32 %.0.i102, 256              ; 2 uses
  %or.cond5 = or i1 %i.ky, %or.cond
  %i.kz = icmp ult i32 %.0.i123, 256              ; 2 uses
  %10 = or i1 %i.kz, %or.cond5
  br i1 %10, label %.lr.ph, label %._crit_edge, !llvm.loop !2651

._crit_edge:                                      ; preds = %mld_rej_eta65.exit142, %mld_rej_eta65.exit67
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1152) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 384) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

declare i32 @mldsa_rej_uniform_eta4_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mldsa65_polyvec_matrix_expand_eager(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
.preheader57.preheader:
  %i.a = alloca [840 x i8], align 32              ; 18 uses
  %2 = alloca %struct.keccak_ctx_st, align 8      ; 17 uses
  %i.b = alloca [4 x [64 x i8]], align 32         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 161
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 225
  br label %.preheader57

.preheader57:                                     ; preds = %.preheader57.preheader, %mld_poly_permute_bitrev_to_custom_optional65.exit55
  %indvars.iv = phi i64 [ 0, %.preheader57.preheader ], [ %indvars.iv.next, %mld_poly_permute_bitrev_to_custom_optional65.exit55 ] ; 7 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i8
  %i.n = udiv i8 %.lhs.trunc, 5                   ; 2 uses
  %.lhs.trunc85 = trunc i64 %indvars.iv to i8
  %i.o = urem i8 %.lhs.trunc85, 5                 ; 2 uses
  store i8 %i.o, ptr %i.f, align 32, !tbaa !79
  store i8 %i.n, ptr %i.g, align 1, !tbaa !79
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = or disjoint i32 %i.p, 1                  ; 2 uses
  %.lhs.trunc87 = trunc i32 %i.q to i8
  %i.r = udiv i8 %.lhs.trunc87, 5                 ; 2 uses
  %.lhs.trunc89 = trunc i32 %i.q to i8
  %i.s = urem i8 %.lhs.trunc89, 5                 ; 2 uses
  store i8 %i.s, ptr %i.h, align 32, !tbaa !79
  store i8 %i.r, ptr %i.i, align 1, !tbaa !79
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = or disjoint i32 %i.t, 2                  ; 2 uses
  %.lhs.trunc91 = trunc i32 %i.u to i8
  %i.v = udiv i8 %.lhs.trunc91, 5                 ; 2 uses
  %.lhs.trunc93 = trunc i32 %i.u to i8
  %i.w = urem i8 %.lhs.trunc93, 5                 ; 2 uses
  store i8 %i.w, ptr %i.j, align 32, !tbaa !79
  store i8 %i.v, ptr %i.k, align 1, !tbaa !79
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = or disjoint i32 %i.x, 3                  ; 2 uses
  %.lhs.trunc95 = trunc i32 %i.y to i8
  %i.z = udiv i8 %.lhs.trunc95, 5                 ; 2 uses
  %.lhs.trunc97 = trunc i32 %i.y to i8
  %i.aa = urem i8 %.lhs.trunc97, 5                ; 2 uses
  store i8 %i.aa, ptr %i.l, align 32, !tbaa !79
  store i8 %i.z, ptr %i.m, align 1, !tbaa !79
  %i.ab = zext nneg i8 %i.n to i64
  %i.ac = getelementptr inbounds nuw [5120 x i8], ptr %0, i64 %i.ab
  %i.ad = zext nneg i8 %i.o to i64
  %i.ae = getelementptr inbounds nuw [1024 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = zext nneg i8 %i.r to i64
  %i.ag = getelementptr inbounds nuw [5120 x i8], ptr %0, i64 %i.af
  %i.ah = zext nneg i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [1024 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = zext nneg i8 %i.v to i64
  %i.ak = getelementptr inbounds nuw [5120 x i8], ptr %0, i64 %i.aj
  %i.al = zext nneg i8 %i.w to i64
  %i.am = getelementptr inbounds nuw [1024 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = zext nneg i8 %i.z to i64
  %i.ao = getelementptr inbounds nuw [5120 x i8], ptr %0, i64 %i.an
  %i.ap = zext nneg i8 %i.aa to i64
  %i.aq = getelementptr inbounds nuw [1024 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  call fastcc void @mldsa_poly_uniform_4x(ptr noundef %i.ae, ptr noundef %i.ai, ptr noundef %i.am, ptr noundef %i.aq, ptr noundef %i.b)
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.as = and i32 %i.ar, 32
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %mld_poly_permute_bitrev_to_custom_optional65.exit55, label %mld_poly_permute_bitrev_to_custom_optional65.exit

.lr.ph:                                           ; preds = %mld_poly_permute_bitrev_to_custom_optional65.exit55
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 393 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 392 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28672 ; 5 uses
  store i8 3, ptr %i.at, align 32, !tbaa !79
  store i8 5, ptr %i.au, align 1, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, i8 0, i64 200, i1 false)
  store i64 0, ptr %i.av, align 8, !tbaa !447
  store i8 0, ptr %i.aw, align 1, !tbaa !448
  store i64 168, ptr %i.ax, align 8, !tbaa !449
  store i64 0, ptr %i.ay, align 8, !tbaa !450
  store i8 31, ptr %i.az, align 8, !tbaa !451
  %i.bb = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.b, i64 noundef 34) ; 0 uses
  %i.bc = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef 840) ; 0 uses
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %i.be = and i32 %i.bd, 32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i17.i.i.i.preheader, label %mld_rej_uniform_native.exit.i.i.i

mld_poly_permute_bitrev_to_custom_optional65.exit: ; preds = %.preheader57
  tail call void @mldsa_nttunpack_avx2_asm(ptr noundef nonnull %i.ae) #46
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %.pre69 = and i32 %.pre, 32
  %i.bg = icmp eq i32 %.pre69, 0
  br i1 %i.bg, label %mld_poly_permute_bitrev_to_custom_optional65.exit55, label %mld_poly_permute_bitrev_to_custom_optional65.exit51

mld_poly_permute_bitrev_to_custom_optional65.exit51: ; preds = %mld_poly_permute_bitrev_to_custom_optional65.exit
  tail call void @mldsa_nttunpack_avx2_asm(ptr noundef nonnull %i.ai) #46
  %.pre67 = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %.pre70 = and i32 %.pre67, 32
  %i.bh = icmp eq i32 %.pre70, 0
  br i1 %i.bh, label %mld_poly_permute_bitrev_to_custom_optional65.exit55, label %mld_poly_permute_bitrev_to_custom_optional65.exit53

mld_poly_permute_bitrev_to_custom_optional65.exit53: ; preds = %mld_poly_permute_bitrev_to_custom_optional65.exit51
  tail call void @mldsa_nttunpack_avx2_asm(ptr noundef nonnull %i.am) #46
  %.pre68 = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !76
  %.pre72 = and i32 %.pre68, 32
  %i.bi = icmp eq i32 %.pre72, 0
  br i1 %i.bi, label %mld_poly_permute_bitrev_to_custom_optional65.exit55, label %bb.a

bb.a:                                             ; preds = %mld_poly_permute_bitrev_to_custom_optional65.exit53
  tail call void @mldsa_nttunpack_avx2_asm(ptr noundef nonnull %i.aq) #46
  br label %mld_poly_permute_bitrev_to_custom_optional65.exit55

mld_poly_permute_bitrev_to_custom_optional65.exit55: ; preds = %.preheader57, %mld_poly_permute_bitrev_to_custom_optional65.exit, %mld_poly_permute_bitrev_to_custom_optional65.exit51, %mld_poly_permute_bitrev_to_custom_optional65.exit53, %bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.bj = icmp samesign ult i64 %indvars.iv, 24
  br i1 %i.bj, label %.preheader57, label %.lr.ph, !llvm.loop !2652

mld_rej_uniform_native.exit.i.i.i:                ; preds = %.lr.ph
  %i.bk = call i32 @mldsa_rej_uniform_avx2_asm(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.a, ptr noundef nonnull @mldsa_mld_rej_uniform_table) #46 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bk, -1
  br i1 %.not.i.i.i, label %.lr.ph.i17.i.i.i.preheader, label %mld_rej_uniform.exit.i.i

.lr.ph.i17.i.i.i.preheader:                       ; preds = %mld_rej_uniform_native.exit.i.i.i, %.lr.ph
  br label %.lr.ph.i17.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %.lr.ph.i17.i.i.i.preheader, %bb.c
  %indvars.iv22.i18.i.i.i = phi i64 [ %indvars.iv.next23.i24.i.i.i, %bb.c ], [ 0, %.lr.ph.i17.i.i.i.preheader ] ; 2 uses
  %indvars.iv.i19.i.i.i = phi i64 [ %indvars.iv.next.i23.i.i.i, %bb.c ], [ 3, %.lr.ph.i17.i.i.i.preheader ] ; 2 uses
  %.01820.i20.i.i.i = phi i32 [ %.1.i22.i.i.i, %bb.c ], [ 0, %.lr.ph.i17.i.i.i.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv22.i18.i.i.i ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 1
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !79
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 16
  %.masked.i21.i.i.i = and i32 %i.br, 8323072
  %i.bs = or disjoint i32 %.masked.i21.i.i.i, %i.bn ; 2 uses
  %i.bt = icmp samesign ult i32 %i.bs, 8380417
  br i1 %i.bt, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i17.i.i.i
  %i.bu = add nuw nsw i32 %.01820.i20.i.i.i, 1
  %i.bv = zext nneg i32 %.01820.i20.i.i.i to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bv
  store i32 %i.bs, ptr %i.bw, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i17.i.i.i
  %.1.i22.i.i.i = phi i32 [ %i.bu, %bb.b ], [ %.01820.i20.i.i.i, %.lr.ph.i17.i.i.i ] ; 3 uses
  %i.bx = icmp ult i32 %.1.i22.i.i.i, 256
  %indvars.iv.next.i23.i.i.i = add nuw nsw i64 %indvars.iv.i19.i.i.i, 3
  %i.by = icmp samesign ult i64 %indvars.iv.i19.i.i.i, 838
  %i.bz = and i1 %i.by, %i.bx
  %indvars.iv.next23.i24.i.i.i = add nuw nsw i64 %indvars.iv22.i18.i.i.i, 3
  br i1 %i.bz, label %.lr.ph.i17.i.i.i, label %mld_rej_uniform.exit.i.i, !llvm.loop !63

mld_rej_uniform.exit.i.i:                         ; preds = %bb.c, %mld_rej_uniform_native.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.bk, %mld_rej_uniform_native.exit.i.i.i ], [ %.1.i22.i.i.i, %bb.c ] ; 2 uses
  %i.ca = icmp ult i32 %.0.i.i.i, 256
  br i1 %i.ca, label %.lr.ph.i.i, label %mldsa_poly_uniform.exit.i

.lr.ph.i.i:                                       ; preds = %mld_rej_uniform.exit.i.i, %mld_rej_uniform.exit18.i.i
  %.020.i.i = phi i32 [ %.0.i6.i.i, %mld_rej_uniform.exit18.i.i ], [ %.0.i.i.i, %mld_rej_uniform.exit.i.i ] ; 2 uses
  %i.cb = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef 168) ; 0 uses
  %i.cc = icmp eq i32 %.020.i.i, 0
  br i1 %i.cc, label %.lr.ph.i17.i10.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %bb.e
  %indvars.iv22.i.i.i.i = phi i64 [ %indvars.iv.next23.i.i.i.i, %bb.e ], [ 0, %.lr.ph.i.i ] ; 2 uses
end_hunk_1
