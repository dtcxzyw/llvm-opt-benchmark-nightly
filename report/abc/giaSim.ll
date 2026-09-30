Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSim?download=true
inline.NumInlined: 515
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Gia_ManSimSimulate:bb.a
bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !144 ; 2 uses
  %.not52 = icmp eq ptr %i.ac, null
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.ac) #27
  store ptr null, ptr %i.ab, align 8, !tbaa !144
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = call ptr @Gia_ManSimCreate(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 11 uses
  %i.ae = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %Gia_ManResetRandom.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.02.i = phi i32 [ %i.aj, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ai = call i32 @Gia_ManRandom(i32 noundef 0) #27 ; 0 uses
  %i.aj = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !77
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i, label %Gia_ManResetRandom.exit, !llvm.loop !4

Gia_ManResetRandom.exit:                          ; preds = %.lr.ph.i, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %.val1522.i = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.ap = icmp sgt i32 %.val1522.i, 0
  br i1 %i.ap, label %.lr.ph.i59, label %Gia_ManSimInfoInit.exit

.lr.ph.i59:                                       ; preds = %Gia_ManResetRandom.exit
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  %i.ar = getelementptr i8, ptr %i.ad, i64 48     ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %Gia_ManSimInfoRandom.exit.i, %.lr.ph.i59
  %i.as = phi ptr [ %i.an, %.lr.ph.i59 ], [ %i.bq, %Gia_ManSimInfoRandom.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i59 ], [ %indvars.iv.next.i, %Gia_ManSimInfoRandom.exit.i ] ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val16.i = load ptr, ptr %i.at, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val16.i, i64 %indvars.iv.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !57
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !72 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %.val17.i = load i32, ptr %i.ax, align 8, !tbaa !63
  %i.ay = getelementptr i8, ptr %i.aw, i64 64
  %.val18.i = load ptr, ptr %i.ay, align 8, !tbaa !66
  %i.az = getelementptr i8, ptr %.val18.i, i64 4
  %.val18.val.i = load i32, ptr %i.az, align 4, !tbaa !54
  %i.ba = sub nsw i32 %.val18.val.i, %.val17.i
  %i.bb = icmp slt i32 %i.av, %i.ba
  %.val13.i = load i32, ptr %i.aq, align 8, !tbaa !32 ; 5 uses
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val14.i = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.bc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bd = mul nsw i32 %.val13.i, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.val14.i, i64 %i.be
  %i.bg = icmp sgt i32 %.val13.i, 0
  br i1 %i.bg, label %.lr.ph.preheader.i.i, label %Gia_ManSimInfoRandom.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.bh = zext nneg i32 %.val13.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bh, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.bi = call i32 @Gia_ManRandom(i32 noundef 0) #27
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !57
  %i.bk = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i, label %Gia_ManSimInfoRandom.exit.loopexit.i, !llvm.loop !1

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp sgt i32 %.val13.i, 0
  br i1 %i.bl, label %.lr.ph.preheader.i21.i, label %Gia_ManSimInfoRandom.exit.i

.lr.ph.preheader.i21.i:                           ; preds = %bb.m
  %.val12.i = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.bm = zext nneg i32 %.val13.i to i64          ; 2 uses
  %i.bn = mul nuw nsw i64 %indvars.iv.i, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val12.i, i64 %i.bn
  %i.bp = shl nuw nsw i64 %i.bm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %i.bp, i1 false), !tbaa !57
  br label %Gia_ManSimInfoRandom.exit.i

Gia_ManSimInfoRandom.exit.loopexit.i:             ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %i.am, align 8, !tbaa !74
  br label %Gia_ManSimInfoRandom.exit.i

Gia_ManSimInfoRandom.exit.i:                      ; preds = %Gia_ManSimInfoRandom.exit.loopexit.i, %.lr.ph.preheader.i21.i, %bb.m, %bb.l
  %i.bq = phi ptr [ %.pre.i, %Gia_ManSimInfoRandom.exit.loopexit.i ], [ %i.as, %.lr.ph.preheader.i21.i ], [ %i.as, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %.val15.i = load i32, ptr %i.br, align 4, !tbaa !54
  %i.bs = sext i32 %.val15.i to i64
  %i.bt = icmp slt i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %bb.k, label %Gia_ManSimInfoInit.exit, !llvm.loop !2

Gia_ManSimInfoInit.exit:                          ; preds = %Gia_ManSimInfoRandom.exit.i, %Gia_ManResetRandom.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !145
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %Gia_ManSimInfoInit.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = sitofp i64 %.0.i to double
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = getelementptr i8, ptr %i.ad, i64 16     ; 3 uses
  %i.cc = getelementptr i8, ptr %i.ad, i64 56     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = getelementptr i8, ptr %i.ad, i64 48
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %Gia_ManSimInfoTransfer.exit
  %.046106 = phi i32 [ 0, %.lr.ph ], [ %i.ho, %Gia_ManSimInfoTransfer.exit ] ; 8 uses
  call void @Gia_ManSimulateRound(ptr noundef %i.ad)
  %i.cf = load i32, ptr %i.bx, align 4, !tbaa !69
  %.not53 = icmp eq i32 %i.cf, 0
  br i1 %.not53, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = add nuw nsw i32 %.046106, 1
  %i.ch = load i32, ptr %i.bu, align 4, !tbaa !145
  %i.ci = load i32, ptr %i.i, align 4, !tbaa !141
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, i32 noundef %i.cg, i32 noundef %i.ch, i32 noundef %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.cj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #27
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %Abc_Clock.exit61, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = load i64, ptr %4, align 8, !tbaa !60
  %i.cm = mul nsw i64 %i.cl, 1000000
  %i.cn = load i64, ptr %i.by, align 8, !tbaa !61
  %i.co = sdiv i64 %i.cn, 1000
  %i.cp = add nsw i64 %i.co, %i.cm
  %i.cq = sitofp i64 %i.cp to double
  br label %Abc_Clock.exit61

Abc_Clock.exit61:                                 ; preds = %bb.o, %bb.p
  %.0.i60 = phi double [ %i.cq, %bb.p ], [ -1.000000e+00, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cr = fsub double %.0.i60, %i.bz
  %i.cs = fdiv double %i.cr, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, double noundef %i.cs)
  br label %bb.q

bb.q:                                             ; preds = %Abc_Clock.exit61, %bb.n
  %i.ct = load i32, ptr %i.ca, align 4, !tbaa !68
  %.not54 = icmp eq i32 %i.ct, 0
  br i1 %.not54, label %Gia_ManCheckPos.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !72 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %.val14.i62 = load i32, ptr %i.cv, align 8, !tbaa !63
  %i.cw = getelementptr i8, ptr %i.cu, i64 72
  %.val15.i63 = load ptr, ptr %i.cw, align 8, !tbaa !64
  %i.cx = getelementptr i8, ptr %.val15.i63, i64 4
  %.val15.val.i = load i32, ptr %i.cx, align 4, !tbaa !54
  %i.cy = sub nsw i32 %.val15.val.i, %.val14.i62  ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i64, label %Gia_ManCheckPos.exit.thread

.lr.ph.i64:                                       ; preds = %bb.r
  %.val.i = load i32, ptr %i.cb, align 8, !tbaa !32 ; 2 uses
  %.val13.i65 = load ptr, ptr %i.cc, align 8, !tbaa !35
  %i.da = icmp sgt i32 %.val.i, 0
  %wide.trip.count.i.i = zext i32 %.val.i to i64  ; 2 uses
  br i1 %i.da, label %.lr.ph.preheader.i.preheader.i, label %Gia_ManCheckPos.exit.thread

.lr.ph.preheader.i.preheader.i:                   ; preds = %.lr.ph.i64
  %wide.trip.count.i = zext nneg i32 %i.cy to i64
  br label %.lr.ph.preheader.i.i66

.lr.ph.preheader.i.i66:                           ; preds = %Gia_ManSimInfoIsZero.exit.thread.loopexit.i, %.lr.ph.preheader.i.preheader.i
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next.i71, %Gia_ManSimInfoIsZero.exit.thread.loopexit.i ] ; 3 uses
  %i.db = mul nuw nsw i64 %indvars.iv.i67, %wide.trip.count.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val13.i65, i64 %i.db
  br label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %bb.ax, %.lr.ph.preheader.i.i66
  %indvars.iv.i.i69 = phi i64 [ 0, %.lr.ph.preheader.i.i66 ], [ %indvars.iv.next.i.i70, %bb.ax ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.i69
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !57 ; 32 uses
  %.not.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i, label %bb.ax, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i68
  %i.df = trunc nuw nsw i64 %indvars.iv.i.i69 to i32
  %i.dg = shl nuw nsw i32 %i.df, 5
  %i.dh = and i32 %i.de, 1
  %.not.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i, label %bb.t, label %Gia_ManSimInfoIsZero.exit.i

bb.t:                                             ; preds = %bb.s
  %i.di = and i32 %i.de, 2
  %.not.1.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.1.i.i.i, label %bb.u, label %Gia_ManSimInfoIsZero.exit.i

bb.u:                                             ; preds = %bb.t
  %i.dj = and i32 %i.de, 4
  %.not.2.i.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not.2.i.i.i, label %bb.v, label %Gia_ManSimInfoIsZero.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dk = and i32 %i.de, 8
  %.not.3.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.3.i.i.i, label %bb.w, label %Gia_ManSimInfoIsZero.exit.i

bb.w:                                             ; preds = %bb.v
  %i.dl = and i32 %i.de, 16
  %.not.4.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.4.i.i.i, label %bb.x, label %Gia_ManSimInfoIsZero.exit.i

bb.x:                                             ; preds = %bb.w
  %i.dm = and i32 %i.de, 32
  %.not.5.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.5.i.i.i, label %bb.y, label %Gia_ManSimInfoIsZero.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dn = and i32 %i.de, 64
  %.not.6.i.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.6.i.i.i, label %bb.z, label %Gia_ManSimInfoIsZero.exit.i

bb.z:                                             ; preds = %bb.y
  %i.do = and i32 %i.de, 128
  %.not.7.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.7.i.i.i, label %bb.aa, label %Gia_ManSimInfoIsZero.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.dp = and i32 %i.de, 256
  %.not.8.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.8.i.i.i, label %bb.ab, label %Gia_ManSimInfoIsZero.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.dq = and i32 %i.de, 512
  %.not.9.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.9.i.i.i, label %bb.ac, label %Gia_ManSimInfoIsZero.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.dr = and i32 %i.de, 1024
  %.not.10.i.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.10.i.i.i, label %bb.ad, label %Gia_ManSimInfoIsZero.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.ds = and i32 %i.de, 2048
  %.not.11.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.11.i.i.i, label %bb.ae, label %Gia_ManSimInfoIsZero.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dt = and i32 %i.de, 4096
  %.not.12.i.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.12.i.i.i, label %bb.af, label %Gia_ManSimInfoIsZero.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.du = and i32 %i.de, 8192
  %.not.13.i.i.i = icmp eq i32 %i.du, 0
  br i1 %.not.13.i.i.i, label %bb.ag, label %Gia_ManSimInfoIsZero.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dv = and i32 %i.de, 16384
  %.not.14.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.14.i.i.i, label %bb.ah, label %Gia_ManSimInfoIsZero.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.dw = and i32 %i.de, 32768
  %.not.15.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not.15.i.i.i, label %bb.ai, label %Gia_ManSimInfoIsZero.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.dx = and i32 %i.de, 65536
  %.not.16.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.16.i.i.i, label %bb.aj, label %Gia_ManSimInfoIsZero.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.dy = and i32 %i.de, 131072
  %.not.17.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.17.i.i.i, label %bb.ak, label %Gia_ManSimInfoIsZero.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.dz = and i32 %i.de, 262144
  %.not.18.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.18.i.i.i, label %bb.al, label %Gia_ManSimInfoIsZero.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.ea = and i32 %i.de, 524288
  %.not.19.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.19.i.i.i, label %bb.am, label %Gia_ManSimInfoIsZero.exit.i

bb.am:                                            ; preds = %bb.al
  %i.eb = and i32 %i.de, 1048576
  %.not.20.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.20.i.i.i, label %bb.an, label %Gia_ManSimInfoIsZero.exit.i

bb.an:                                            ; preds = %bb.am
  %i.ec = and i32 %i.de, 2097152
  %.not.21.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.21.i.i.i, label %bb.ao, label %Gia_ManSimInfoIsZero.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.ed = and i32 %i.de, 4194304
  %.not.22.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.22.i.i.i, label %bb.ap, label %Gia_ManSimInfoIsZero.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ee = and i32 %i.de, 8388608
  %.not.23.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.23.i.i.i, label %bb.aq, label %Gia_ManSimInfoIsZero.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ef = and i32 %i.de, 16777216
  %.not.24.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.24.i.i.i, label %bb.ar, label %Gia_ManSimInfoIsZero.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.eg = and i32 %i.de, 33554432
  %.not.25.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.25.i.i.i, label %bb.as, label %Gia_ManSimInfoIsZero.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.eh = and i32 %i.de, 67108864
  %.not.26.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.26.i.i.i, label %bb.at, label %Gia_ManSimInfoIsZero.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ei = and i32 %i.de, 134217728
  %.not.27.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not.27.i.i.i, label %bb.au, label %Gia_ManSimInfoIsZero.exit.i

bb.au:                                            ; preds = %bb.at
  %i.ej = and i32 %i.de, 268435456
  %.not.28.i.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not.28.i.i.i, label %bb.av, label %Gia_ManSimInfoIsZero.exit.i

bb.av:                                            ; preds = %bb.au
  %i.ek = and i32 %i.de, 536870912
  %.not.29.i.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not.29.i.i.i, label %bb.aw, label %Gia_ManSimInfoIsZero.exit.i

bb.aw:                                            ; preds = %bb.av
  %7 = lshr exact i32 %i.de, 30
  %8 = and i32 %7, 1
  %spec.select.i.i.i = xor i32 %8, 31
  br label %Gia_ManSimInfoIsZero.exit.i

bb.ax:                                            ; preds = %.lr.ph.i.i68
  %indvars.iv.next.i.i70 = add nuw nsw i64 %indvars.iv.i.i69, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i70, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Gia_ManSimInfoIsZero.exit.thread.loopexit.i, label %.lr.ph.i.i68, !llvm.loop !136

Gia_ManSimInfoIsZero.exit.i:                      ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.06.i.i.i = phi i32 [ 0, %bb.s ], [ 16, %bb.ai ], [ 1, %bb.t ], [ 24, %bb.aq ], [ 2, %bb.u ], [ 20, %bb.am ], [ 3, %bb.v ], [ %spec.select.i.i.i, %bb.aw ], [ 4, %bb.w ], [ 17, %bb.aj ], [ 5, %bb.x ], [ 29, %bb.av ], [ 6, %bb.y ], [ 23, %bb.ap ], [ 7, %bb.z ], [ 28, %bb.au ], [ 8, %bb.aa ], [ 18, %bb.ak ], [ 9, %bb.ab ], [ 27, %bb.at ], [ 10, %bb.ac ], [ 21, %bb.an ], [ 11, %bb.ad ], [ 26, %bb.as ], [ 12, %bb.ae ], [ 19, %bb.al ], [ 13, %bb.af ], [ 25, %bb.ar ], [ 14, %bb.ag ], [ 22, %bb.ao ], [ 15, %bb.ah ]
  %9 = add nuw nsw i32 %.06.i.i.i, %i.dg          ; 2 uses
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %bb.ay, label %Gia_ManSimInfoIsZero.exit.thread.loopexit.i

Gia_ManSimInfoIsZero.exit.thread.loopexit.i:      ; preds = %bb.ax, %Gia_ManSimInfoIsZero.exit.i
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i71, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManCheckPos.exit.thread, label %.lr.ph.preheader.i.i66, !llvm.loop !137

bb.ay:                                            ; preds = %Gia_ManSimInfoIsZero.exit.i
  %11 = trunc nuw nsw i64 %indvars.iv.i67 to i32  ; 3 uses
  %i.el = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  %i.em = load i32, ptr %i.af, align 4, !tbaa !77
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph.i72, label %Gia_ManResetRandom.exit74

.lr.ph.i72:                                       ; preds = %bb.ay, %.lr.ph.i72
  %.02.i73 = phi i32 [ %i.ep, %.lr.ph.i72 ], [ 0, %bb.ay ]
  %i.eo = call i32 @Gia_ManRandom(i32 noundef 0) #27 ; 0 uses
  %i.ep = add nuw nsw i32 %.02.i73, 1             ; 2 uses
  %i.eq = load i32, ptr %i.af, align 4, !tbaa !77
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph.i72, label %Gia_ManResetRandom.exit74, !llvm.loop !4

Gia_ManResetRandom.exit74:                        ; preds = %.lr.ph.i72, %bb.ay
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %11, ptr %i.es, align 4, !tbaa !70
  %i.et = load i32, ptr %i.cb, align 8, !tbaa !32
  %i.eu = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.ev = call ptr @Gia_ManGenerateCounter(ptr noundef nonnull %0, i32 noundef %.046106, i32 noundef %11, i32 noundef %i.et, i32 noundef %9, ptr noundef %i.eu)
  store ptr %i.ev, ptr %i.ab, align 8, !tbaa !144
  %i.ew = load ptr, ptr %0, align 8, !tbaa !146
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, i32 noundef %11, ptr noundef %i.ew, i32 noundef %.046106)
  %i.ex = load ptr, ptr %i.ab, align 8, !tbaa !144
  %i.ey = call i32 @Gia_ManVerifyCex(ptr noundef nonnull %0, ptr noundef %i.ex, i32 noundef 0) #27
  %.not56 = icmp eq i32 %i.ey, 0
  br i1 %.not56, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %Gia_ManResetRandom.exit74
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7)
  br label %.loopexit

Gia_ManCheckPos.exit.thread:                      ; preds = %Gia_ManSimInfoIsZero.exit.thread.loopexit.i, %bb.r, %.lr.ph.i64, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ez = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #27
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %Abc_Clock.exit76, label %bb.ba

bb.ba:                                            ; preds = %Gia_ManCheckPos.exit.thread
  %i.fb = load i64, ptr %3, align 8, !tbaa !60
  %i.fc = mul nsw i64 %i.fb, 1000000
  %i.fd = load i64, ptr %i.cd, align 8, !tbaa !61
  %i.fe = sdiv i64 %i.fd, 1000
  %i.ff = add nsw i64 %i.fe, %i.fc
  br label %Abc_Clock.exit76

Abc_Clock.exit76:                                 ; preds = %Gia_ManCheckPos.exit.thread, %bb.ba
  %.0.i75 = phi i64 [ %i.ff, %bb.ba ], [ -1, %Gia_ManCheckPos.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.fg = icmp sgt i64 %.0.i75, %i.v
  br i1 %i.fg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %Abc_Clock.exit76
  %i.fh = add nuw nsw i32 %.046106, 1
  br label %.loopexit

bb.bc:                                            ; preds = %Abc_Clock.exit76
  %i.fi = load i32, ptr %i.bu, align 4, !tbaa !145 ; 3 uses
  %i.fj = add nsw i32 %i.fi, -1
  %i.fk = icmp slt i32 %.046106, %i.fj
  br i1 %i.fk, label %bb.bd, label %Gia_ManSimInfoTransfer.exit

bb.bd:                                            ; preds = %bb.bc
  %i.fl = load ptr, ptr %i.am, align 8, !tbaa !74 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 4
  %.val2237.i = load i32, ptr %i.fm, align 4, !tbaa !54
  %i.fn = icmp sgt i32 %.val2237.i, 0
  br i1 %i.fn, label %.lr.ph.i77, label %Gia_ManSimInfoTransfer.exit

.lr.ph.i77:                                       ; preds = %bb.bd, %Gia_ManSimInfoRandom.exit.i80
  %i.fo = phi ptr [ %i.hj, %Gia_ManSimInfoRandom.exit.i80 ], [ %i.fl, %bb.bd ] ; 5 uses
  %indvars.iv.i78 = phi i64 [ %indvars.iv.next.i81, %Gia_ManSimInfoRandom.exit.i80 ], [ 0, %bb.bd ] ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  %.val25.i = load ptr, ptr %i.fp, align 8, !tbaa !56
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val25.i, i64 %indvars.iv.i78
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !57 ; 2 uses
  %i.fs = load ptr, ptr %i.ad, align 8, !tbaa !72 ; 3 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  %.val28.i = load i32, ptr %i.ft, align 8, !tbaa !63
  %i.fu = getelementptr i8, ptr %i.fs, i64 64
  %.val29.i = load ptr, ptr %i.fu, align 8, !tbaa !66
  %i.fv = getelementptr i8, ptr %.val29.i, i64 4
  %.val29.val.i = load i32, ptr %i.fv, align 4, !tbaa !54 ; 2 uses
  %i.fw = sub nsw i32 %.val29.val.i, %.val28.i
  %i.fx = icmp slt i32 %i.fr, %i.fw
  %.val18.i79 = load i32, ptr %i.cb, align 8, !tbaa !32 ; 7 uses
  %.val19.i = load ptr, ptr %i.ce, align 8, !tbaa !34 ; 2 uses
  %.val19.i133 = ptrtoaddr ptr %.val19.i to i64
  %i.fy = trunc i64 %indvars.iv.i78 to i32
  %i.fz = mul i32 %.val18.i79, %i.fy
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %.val19.i, i64 %i.ga ; 3 uses
  br i1 %i.fx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i77
  %i.gc = icmp sgt i32 %.val18.i79, 0
  br i1 %i.gc, label %.lr.ph.preheader.i.i82, label %Gia_ManSimInfoRandom.exit.i80

.lr.ph.preheader.i.i82:                           ; preds = %bb.be
  %i.gd = zext nneg i32 %.val18.i79 to i64
  br label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %.lr.ph.i.i83, %.lr.ph.preheader.i.i82
  %indvars.iv.i.i84 = phi i64 [ %i.gd, %.lr.ph.preheader.i.i82 ], [ %indvars.iv.next.i.i85, %.lr.ph.i.i83 ] ; 2 uses
  %indvars.iv.next.i.i85 = add nsw i64 %indvars.iv.i.i84, -1 ; 2 uses
  %i.ge = call i32 @Gia_ManRandom(i32 noundef 0) #27
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i.i85
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !57
  %i.gg = icmp samesign ugt i64 %indvars.iv.i.i84, 1
  br i1 %i.gg, label %.lr.ph.i.i83, label %Gia_ManSimInfoRandom.exit.loopexit.i86, !llvm.loop !1

bb.bf:                                            ; preds = %.lr.ph.i77
  %i.gh = getelementptr i8, ptr %i.fs, i64 72
  %.val24.i = load ptr, ptr %i.gh, align 8, !tbaa !64
  %i.gi = getelementptr i8, ptr %.val24.i, i64 4
  %.val24.val.i = load i32, ptr %i.gi, align 4, !tbaa !54
  %i.gj = sub i32 %i.fr, %.val29.val.i
  %i.gk = add i32 %i.gj, %.val24.val.i
  %.val21.i = load ptr, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %.val21.i132 = ptrtoaddr ptr %.val21.i to i64
  %i.gl = mul i32 %i.gk, %.val18.i79
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %.val21.i, i64 %i.gm ; 2 uses
  %i.go = icmp sgt i32 %.val18.i79, 0
  br i1 %i.go, label %.lr.ph.preheader.i32.i, label %Gia_ManSimInfoRandom.exit.i80

.lr.ph.preheader.i32.i:                           ; preds = %bb.bf
  %i.gp = zext nneg i32 %.val18.i79 to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %.val18.i79, 8
  br i1 %min.iters.check, label %.lr.ph.i33.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i32.i
  %i.gq = shl nsw i64 %i.gm, 2
  %i.gr = add i64 %i.gq, %.val21.i132
  %i.gs = shl nsw i64 %i.ga, 2
  %i.gt = add i64 %i.gs, %.val19.i133
  %i.gu = sub i64 %i.gt, %i.gr
  %diff.check = icmp ugt i64 %i.gu, -32
  br i1 %diff.check, label %.lr.ph.i33.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gp, 2147483640              ; 2 uses
  %i.gv = and i64 %i.gp, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gw = xor i64 %index, -1
  %i.gx = add i64 %i.gw, %i.gp                    ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -12
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -28
  %wide.load = load <4 x i32>, ptr %i.gz, align 4, !tbaa !57
  %wide.load134 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !57
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gx ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -12
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 -28
  store <4 x i32> %wide.load, ptr %i.hc, align 4, !tbaa !57
  store <4 x i32> %wide.load134, ptr %i.hd, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gp
  br i1 %cmp.n, label %Gia_ManSimInfoRandom.exit.i80, label %.lr.ph.i33.i.preheader

.lr.ph.i33.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i32.i, %middle.block
  %indvars.iv.i34.i.ph = phi i64 [ %i.gp, %vector.memcheck ], [ %i.gp, %.lr.ph.preheader.i32.i ], [ %i.gv, %middle.block ]
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.preheader, %.lr.ph.i33.i
  %indvars.iv.i34.i = phi i64 [ %indvars.iv.next.i35.i, %.lr.ph.i33.i ], [ %indvars.iv.i34.i.ph, %.lr.ph.i33.i.preheader ] ; 2 uses
  %indvars.iv.next.i35.i = add nsw i64 %indvars.iv.i34.i, -1 ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i35.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !57
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i35.i
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !57
  %i.hi = icmp samesign ugt i64 %indvars.iv.i34.i, 1
  br i1 %i.hi, label %.lr.ph.i33.i, label %Gia_ManSimInfoRandom.exit.i80, !llvm.loop !139

Gia_ManSimInfoRandom.exit.loopexit.i86:           ; preds = %.lr.ph.i.i83
  %.pre.i87 = load ptr, ptr %i.am, align 8, !tbaa !74
  br label %Gia_ManSimInfoRandom.exit.i80

Gia_ManSimInfoRandom.exit.i80:                    ; preds = %.lr.ph.i33.i, %middle.block, %Gia_ManSimInfoRandom.exit.loopexit.i86, %bb.bf, %bb.be
  %i.hj = phi ptr [ %i.fo, %bb.be ], [ %.pre.i87, %Gia_ManSimInfoRandom.exit.loopexit.i86 ], [ %i.fo, %bb.bf ], [ %i.fo, %middle.block ], [ %i.fo, %.lr.ph.i33.i ] ; 2 uses
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 4
  %.val22.i = load i32, ptr %i.hk, align 4, !tbaa !54
  %i.hl = sext i32 %.val22.i to i64
  %i.hm = icmp slt i64 %indvars.iv.next.i81, %i.hl
  br i1 %i.hm, label %.lr.ph.i77, label %Gia_ManSimInfoTransfer.exit.loopexit, !llvm.loop !3

Gia_ManSimInfoTransfer.exit.loopexit:             ; preds = %Gia_ManSimInfoRandom.exit.i80
  %.pre = load i32, ptr %i.bu, align 4, !tbaa !145
  br label %Gia_ManSimInfoTransfer.exit

Gia_ManSimInfoTransfer.exit:                      ; preds = %Gia_ManSimInfoTransfer.exit.loopexit, %bb.bd, %bb.bc
  %i.hn = phi i32 [ %.pre, %Gia_ManSimInfoTransfer.exit.loopexit ], [ %i.fi, %bb.bd ], [ %i.fi, %bb.bc ]
  %i.ho = add nuw nsw i32 %.046106, 1             ; 3 uses
  %i.hp = icmp slt i32 %i.ho, %i.hn
  br i1 %i.hp, label %bb.n, label %.loopexit, !llvm.loop !140

.loopexit:                                        ; preds = %Gia_ManSimInfoTransfer.exit, %Gia_ManSimInfoInit.exit, %bb.az, %Gia_ManResetRandom.exit74, %bb.bb
  %.1 = phi i32 [ %.046106, %bb.az ], [ %i.fh, %bb.bb ], [ %.046106, %Gia_ManResetRandom.exit74 ], [ 0, %Gia_ManSimInfoInit.exit ], [ %i.ho, %Gia_ManSimInfoTransfer.exit ]
  %.0 = phi i32 [ 1, %bb.az ], [ 0, %bb.bb ], [ 1, %Gia_ManResetRandom.exit74 ], [ 0, %Gia_ManSimInfoInit.exit ], [ 0, %Gia_ManSimInfoTransfer.exit ]
  call void @Gia_ManSimDelete(ptr noundef %i.ad)
  %i.hq = load ptr, ptr %i.ab, align 8, !tbaa !144
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.loopexit
  %i.hs = load i32, ptr %1, align 4, !tbaa !73
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.8, i32 noundef %.1, i32 noundef %i.hs)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ht = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #27
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %Abc_Clock.exit89, label %bb.bi

end_hunk_0
