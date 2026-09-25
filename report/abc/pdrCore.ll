Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/pdrCore?download=true
inline.NumInlined: 236
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ZPdr_ManDown_Exhaustive:bb.a
  store ptr %3, ptr %i.c, align 8, !tbaa !72
  %i.i = load ptr, ptr %2, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.j = icmp sgt i32 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  br label %.preheader216

.preheader216:                                    ; preds = %bb.be, %bb.a
  %.0281 = phi ptr [ %i.i, %bb.a ], [ %i.fs, %bb.be ] ; 2 uses
  br i1 %i.j, label %.lr.ph247.outer, label %.loopexit

.lr.ph247.outer:                                  ; preds = %.preheader216, %bb.k
  %.1246.ph = phi ptr [ %i.u, %bb.k ], [ %.0281, %.preheader216 ] ; 19 uses
  %.1163245.ph = phi i32 [ %i.q, %bb.k ], [ %1, %.preheader216 ] ; 7 uses
  %i.q = add nsw i32 %.1163245.ph, -1             ; 4 uses
  %i.r = icmp slt i32 %.1163245.ph, %i.h
  %i.s = icmp sgt i32 %.1163245.ph, 1
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.outer, %.outer
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.u = call ptr @Pdr_SetDup(ptr noundef %i.t) #21 ; 12 uses
  %i.v = call i32 @Pdr_SetIsInit(ptr noundef %i.u, i32 noundef -1) #21
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph247
  call void @Pdr_SetDeref(ptr noundef %i.u) #21
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph247
  %i.w = load i32, ptr %6, align 4, !tbaa !56
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0171243 = phi i32 [ %i.y, %.lr.ph ], [ 1, %bb.c ] ; 3 uses
  call void @Pdr_ManSolverAddClause(ptr noundef %0, i32 noundef %.0171243, ptr noundef %5) #21
  %i.y = add nuw i32 %.0171243, 1
  %exitcond.not = icmp eq i32 %.0171243, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph
  store i32 1, ptr %6, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !72
  %.not185 = icmp eq ptr %i.z, %i.aa
  br i1 %.not185, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @Pdr_SetDeref(ptr noundef %i.z) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %0, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !81
  %i.ae = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef %i.u, ptr noundef nonnull %i.c, i32 noundef %i.ad, i32 noundef 0, i32 noundef 1) #21
  switch i32 %i.ae, label %bb.l [
    i32 -1, label %bb.g
    i32 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  call void @Pdr_SetDeref(ptr noundef %i.u) #21
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.af) #21
  %i.ag = load ptr, ptr %2, align 8, !tbaa !72
  %.not198 = icmp eq ptr %.1246.ph, %i.ag
  br i1 %.not198, label %.loopexit217, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @Pdr_SetDeref(ptr noundef %.1246.ph) #21
  br label %.loopexit217

bb.i:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %2, align 8, !tbaa !72
  %.not197 = icmp eq ptr %.1246.ph, %i.ah
  br i1 %.not197, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @Pdr_SetDeref(ptr noundef %.1246.ph) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = icmp samesign ugt i32 %.1163245.ph, 2
  br i1 %i.ai, label %.lr.ph247.outer, label %.loopexit, !llvm.loop !142

bb.l:                                             ; preds = %bb.f
  %i.aj = call ptr @Pdr_ManReduceClause(ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef %i.u) ; 3 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !72
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = call ptr @Pdr_SetDup(ptr noundef %i.u) #21 ; 2 uses
  store ptr %i.al, ptr %i.b, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = phi ptr [ %i.al, %bb.m ], [ %i.aj, %bb.l ]
  %i.an = call ptr @Pdr_SetDup(ptr noundef %i.am) #21 ; 5 uses
  store ptr %i.an, ptr %i.d, align 8, !tbaa !72
  %i.ao = call i32 @ZPdr_ManSimpleMic(ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef nonnull %i.b)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.o, label %.preheader214

.preheader214:                                    ; preds = %bb.n
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !72 ; 6 uses
  br i1 %i.r, label %.lr.ph250, label %.lr.ph258

bb.o:                                             ; preds = %bb.n
  call void @Pdr_SetDeref(ptr noundef %i.u) #21
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.aq) #21
  call void @Pdr_SetDeref(ptr noundef %i.an) #21
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.ar) #21
  %i.as = load ptr, ptr %2, align 8, !tbaa !72
  %.not196 = icmp eq ptr %.1246.ph, %i.as
  br i1 %.not196, label %.loopexit217, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @Pdr_SetDeref(ptr noundef %.1246.ph) #21
  br label %.loopexit217

.lr.ph250:                                        ; preds = %.preheader214, %bb.q
  %.0167249 = phi i32 [ %i.ax, %bb.q ], [ %.1163245.ph, %.preheader214 ] ; 3 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !81
  %i.aw = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %.0167249, ptr noundef %.pre.pre, ptr noundef null, i32 noundef %i.av, i32 noundef 0, i32 noundef 1) #21
  %.not186 = icmp eq i32 %i.aw, 1
  br i1 %.not186, label %bb.q, label %._crit_edge251

bb.q:                                             ; preds = %.lr.ph250
  %i.ax = add i32 %.0167249, 1                    ; 2 uses
  %exitcond312.not = icmp eq i32 %i.ax, %i.h
  br i1 %exitcond312.not, label %._crit_edge251, label %.lr.ph250, !llvm.loop !143

._crit_edge251:                                   ; preds = %bb.q, %.lr.ph250
  %.0167.lcssa = phi i32 [ %.0167249, %.lr.ph250 ], [ %i.h, %bb.q ] ; 3 uses
  %.not187255 = icmp slt i32 %.0167.lcssa, 1
  br i1 %.not187255, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader214, %._crit_edge251
  %.0167.lcssa344 = phi i32 [ %.0167.lcssa, %._crit_edge251 ], [ %.1163245.ph, %.preheader214 ] ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph258, %bb.r
  %.1172256 = phi i32 [ 1, %.lr.ph258 ], [ %i.ay, %bb.r ] ; 3 uses
  call void @Pdr_ManSolverAddClause(ptr noundef nonnull %0, i32 noundef %.1172256, ptr noundef %.pre.pre) #21
  %i.ay = add nuw i32 %.1172256, 1
  %exitcond313.not = icmp eq i32 %.1172256, %.0167.lcssa344
  br i1 %exitcond313.not, label %._crit_edge259, label %bb.r, !llvm.loop !144

._crit_edge259:                                   ; preds = %bb.r, %._crit_edge251
  %.0167.lcssa345 = phi i32 [ %.0167.lcssa, %._crit_edge251 ], [ %.0167.lcssa344, %bb.r ] ; 5 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !66
  call fastcc void @Vec_VecPush(ptr noundef %i.az, i32 noundef %.0167.lcssa345, ptr noundef %.pre.pre)
  %i.ba = load i32, ptr %i.l, align 8, !tbaa !82
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.l, align 8, !tbaa !82
  %i.bc = icmp slt i32 %.0167.lcssa345, %i.h
  br i1 %i.bc, label %.lr.ph262, label %._crit_edge263.thread

.lr.ph262:                                        ; preds = %._crit_edge259, %bb.s
  %.0166260 = phi i32 [ %i.bh, %bb.s ], [ %.0167.lcssa345, %._crit_edge259 ] ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !81
  %i.bg = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %.0166260, ptr noundef %i.an, ptr noundef null, i32 noundef %i.bf, i32 noundef 0, i32 noundef 1) #21
  %.not188 = icmp eq i32 %i.bg, 1
  br i1 %.not188, label %bb.s, label %._crit_edge263

bb.s:                                             ; preds = %.lr.ph262
  %i.bh = add i32 %.0166260, 1                    ; 2 uses
  %exitcond314.not = icmp eq i32 %i.bh, %i.h
  br i1 %exitcond314.not, label %._crit_edge263, label %.lr.ph262, !llvm.loop !145

._crit_edge263:                                   ; preds = %bb.s, %.lr.ph262
  %.0166.lcssa = phi i32 [ %.0166260, %.lr.ph262 ], [ %i.h, %bb.s ] ; 5 uses
  %i.bi = icmp sgt i32 %.0166.lcssa, %.0167.lcssa345
  br i1 %i.bi, label %bb.t, label %._crit_edge263.thread

bb.t:                                             ; preds = %._crit_edge263
  %i.bj = add nsw i32 %.0166.lcssa, -1
  %i.bk = call i32 @ZPdr_ManSimpleMic(ptr noundef nonnull %0, i32 noundef %i.bj, ptr noundef nonnull %i.d)
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %bb.u, label %.preheader213

.preheader213:                                    ; preds = %bb.t
  %.not189267 = icmp eq i32 %.0166.lcssa, 0
  %.pre320 = load ptr, ptr %i.d, align 8, !tbaa !72 ; 3 uses
  br i1 %.not189267, label %._crit_edge270, label %.lr.ph269

bb.u:                                             ; preds = %bb.t
  call void @Pdr_SetDeref(ptr noundef %i.u) #21
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.bm) #21
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.bn) #21
  %i.bo = load ptr, ptr %2, align 8, !tbaa !72
  %.not195 = icmp eq ptr %.1246.ph, %i.bo
  br i1 %.not195, label %.loopexit217, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @Pdr_SetDeref(ptr noundef %.1246.ph) #21
  br label %.loopexit217

.lr.ph269:                                        ; preds = %.preheader213, %.lr.ph269
  %.2173268 = phi i32 [ %i.bp, %.lr.ph269 ], [ 1, %.preheader213 ] ; 3 uses
  call void @Pdr_ManSolverAddClause(ptr noundef nonnull %0, i32 noundef %.2173268, ptr noundef %.pre320) #21
  %i.bp = add nuw i32 %.2173268, 1
  %exitcond315.not = icmp eq i32 %.2173268, %.0166.lcssa
  br i1 %exitcond315.not, label %._crit_edge270, label %.lr.ph269, !llvm.loop !146

._crit_edge270:                                   ; preds = %.lr.ph269, %.preheader213
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !66
  call fastcc void @Vec_VecPush(ptr noundef %i.bq, i32 noundef %.0166.lcssa, ptr noundef %.pre320)
  %i.br = load i32, ptr %i.l, align 8, !tbaa !82
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.l, align 8, !tbaa !82
  br label %._crit_edge263.thread

._crit_edge263.thread:                            ; preds = %._crit_edge259, %._crit_edge270, %._crit_edge263
  %i.bt = phi ptr [ %.pre320, %._crit_edge270 ], [ %i.an, %._crit_edge263 ], [ %i.an, %._crit_edge259 ] ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !83
  %.not190 = icmp eq i32 %i.bw, 0
  br i1 %.not190, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge263.thread
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str)
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !84
  %i.by = load ptr, ptr %i.m, align 8, !tbaa !85
  %i.bz = getelementptr i8, ptr %i.by, i64 104
  %.val210 = load i32, ptr %i.bz, align 8, !tbaa !92
  call void @Pdr_SetPrint(ptr noundef %i.bx, ptr noundef %.pre.pre, i32 noundef %.val210, ptr noundef null) #21
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1, i32 noundef %.0167.lcssa345)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge263.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 16 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !54
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph273, label %.preheader

.lr.ph273:                                        ; preds = %bb.x
  %i.cd = load ptr, ptr %i.n, align 8, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 20
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  %.val208 = load ptr, ptr %i.cf, align 8, !tbaa !55 ; 2 uses
  br label %bb.y

.preheader:                                       ; preds = %bb.aa, %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !54
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph275, label %._crit_edge276

.lr.ph275:                                        ; preds = %.preheader
  %i.cj = load ptr, ptr %i.n, align 8, !tbaa !93
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  %.val = load ptr, ptr %i.cl, align 8, !tbaa !55 ; 2 uses
  br label %bb.ab

bb.y:                                             ; preds = %.lr.ph273, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !56
  %i.co = sdiv i32 %i.cn, 2
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.val208, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !56
  %i.cs = load i32, ptr %i.o, align 4, !tbaa !94  ; 2 uses
  %i.ct = ashr i32 %i.cr, %i.cs
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cv = load i32, ptr %i.p, align 4, !tbaa !95
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.p, align 4, !tbaa !95
  %.pre321 = load i32, ptr %i.cm, align 4, !tbaa !56
  %.pre = sdiv i32 %.pre321, 2
  %.pre327 = sext i32 %.pre to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre-phi328 = phi i64 [ %.pre327, %bb.z ], [ %i.cp, %bb.y ]
  %i.cx = shl nuw i32 1, %i.cs
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val208, i64 %.pre-phi328 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !56
  %i.da = add nsw i32 %i.cz, %i.cx
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i32, ptr %i.ca, align 8, !tbaa !54
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %bb.y, label %.preheader, !llvm.loop !147

bb.ab:                                            ; preds = %.lr.ph275, %bb.ad
  %indvars.iv317 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next318, %bb.ad ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv317 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !56
  %i.dg = sdiv i32 %i.df, 2
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !56
  %i.dk = load i32, ptr %i.o, align 4, !tbaa !94  ; 2 uses
  %i.dl = ashr i32 %i.dj, %i.dk
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load i32, ptr %i.p, align 4, !tbaa !95
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.p, align 4, !tbaa !95
  %.pre322 = load i32, ptr %i.de, align 4, !tbaa !56
  %.pre329 = sdiv i32 %.pre322, 2
  %.pre331 = sext i32 %.pre329 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pre-phi332 = phi i64 [ %.pre331, %bb.ac ], [ %i.dh, %bb.ab ]
  %i.dp = shl nuw i32 1, %i.dk
  %i.dq = getelementptr inbounds [4 x i8], ptr %.val, i64 %.pre-phi332 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !56
  %i.ds = add nsw i32 %i.dr, %i.dp
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !56
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %i.dt = load i32, ptr %i.cg, align 8, !tbaa !54
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next318, %i.du
  br i1 %i.dv, label %bb.ab, label %._crit_edge276, !llvm.loop !148

._crit_edge276:                                   ; preds = %bb.ad, %.preheader
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.dw) #21
  %i.dx = load ptr, ptr %2, align 8, !tbaa !72
  %i.dy = load ptr, ptr %0, align 8, !tbaa !60
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !81
  %i.eb = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.dx, ptr noundef nonnull %i.a, i32 noundef %i.ea, i32 noundef 0, i32 noundef 1) #21 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %._crit_edge276
  %i.ed = load ptr, ptr %2, align 8, !tbaa !72
  %.not194 = icmp eq ptr %.1246.ph, %i.ed
  br i1 %.not194, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @Pdr_SetDeref(ptr noundef %.1246.ph) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @Pdr_SetDeref(ptr noundef %i.u) #21
  br label %.loopexit217

bb.ah:                                            ; preds = %._crit_edge276
  call void @Pdr_SetDeref(ptr noundef %i.u) #21
  %i.ee = icmp eq i32 %i.eb, 1
  br i1 %i.ee, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load ptr, ptr %2, align 8, !tbaa !72
  %.not193 = icmp eq ptr %.1246.ph, %i.ef
  br i1 %.not193, label %.loopexit217, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @Pdr_SetDeref(ptr noundef %.1246.ph) #21
  br label %.loopexit217

bb.ak:                                            ; preds = %bb.ah
  %i.eg = load ptr, ptr %0, align 8, !tbaa !60
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !81
  %i.ej = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %.1163245.ph, ptr noundef %.1246.ph, ptr noundef nonnull %i.c, i32 noundef %i.ei, i32 noundef 0, i32 noundef 1) #21 ; 2 uses
  switch i32 %i.ej, label %.outer [
    i32 -1, label %bb.al
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ek = load ptr, ptr %2, align 8, !tbaa !72
  %.not192 = icmp eq ptr %.1246.ph, %i.ek
  br i1 %.not192, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_0
begin_hunk_1_@ZPdr_ManSimpleMic:bb.a
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !54
  %i.fq = icmp slt i32 %i.fn, %i.fp
  br i1 %i.fq, label %.lr.ph, label %.loopexit, !llvm.loop !156

.loopexit:                                        ; preds = %bb.c, %bb.f, %bb.b, %Pdr_ManSortByPriority.exit, %bb.a
  %.032 = phi i32 [ 0, %bb.a ], [ 0, %Pdr_ManSortByPriority.exit ], [ 0, %bb.b ], [ 0, %bb.f ], [ -1, %bb.c ]
  ret i32 %.032
}

declare i32 @Pdr_SetIsInit(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Pdr_SetCreateFrom(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @ZPdr_ManDown(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val103 = load i32, ptr %i.e, align 4, !tbaa !59
  %i.f = add i32 %.val103, -1                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.g = icmp sgt i32 %1, 1
  %.not91112 = icmp slt i32 %1, 1
  %i.h = add nsw i32 %1, -1                       ; 3 uses
  %i.i = icmp slt i32 %1, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %.preheader106

.preheader106:                                    ; preds = %bb.v, %bb.a
  br i1 %i.g, label %.preheader106.split, label %.loopexit.split

.preheader106.split:                              ; preds = %.preheader106, %._crit_edge129
  %.186 = phi i32 [ %i.cd, %._crit_edge129 ], [ 0, %.preheader106 ]
  %.083 = phi i32 [ %i.ac, %._crit_edge129 ], [ 0, %.preheader106 ] ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !100
  %i.s = icmp ne i32 %i.r, 0
  %i.t = icmp eq i32 %.186, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  %i.u = icmp samesign ult i32 %.083, 3
  %i.v = select i1 %or.cond, i1 %i.u, i1 false
  br i1 %i.v, label %bb.b, label %.loopexit.split

bb.b:                                             ; preds = %.preheader106.split
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.x = call ptr @Pdr_SetDup(ptr noundef %i.w) #21 ; 6 uses
  %i.y = call i32 @Pdr_SetIsInit(ptr noundef %i.x, i32 noundef -1) #21
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.c, label %.loopexit.split.sink.split

bb.c:                                             ; preds = %bb.b
  %i.z = load i32, ptr %6, align 4, !tbaa !56
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  br i1 %.not91112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.084113 = phi i32 [ %i.ab, %.lr.ph ], [ 1, %.preheader ] ; 3 uses
  call void @Pdr_ManSolverAddClause(ptr noundef nonnull %0, i32 noundef %.084113, ptr noundef %5) #21
  %i.ab = add nuw i32 %.084113, 1
  %exitcond.not = icmp eq i32 %.084113, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  store i32 1, ptr %6, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.ac = add nuw nsw i32 %.083, 1
  %i.ad = load ptr, ptr %0, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !81
  %i.ag = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef %i.x, ptr noundef null, i32 noundef %i.af, i32 noundef 0, i32 noundef 1) #21
  %.not92 = icmp eq i32 %i.ag, 1
  br i1 %.not92, label %bb.e, label %.loopexit.split.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ah = call ptr @Pdr_ManReduceClause(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef %i.x) ; 3 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !72
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = call ptr @Pdr_SetDup(ptr noundef %i.x) #21 ; 2 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi ptr [ %i.aj, %bb.f ], [ %i.ah, %bb.e ]
  br i1 %i.i, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %bb.g, %bb.h
  %.0114 = phi i32 [ %i.am, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %i.al = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %.0114, ptr noundef %i.ak, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1) #21
  %.not93 = icmp eq i32 %i.al, 0
  br i1 %.not93, label %._crit_edge117.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph116
  %i.am = add i32 %.0114, 1                       ; 2 uses
  %exitcond133.not = icmp eq i32 %i.am, %i.f
  br i1 %exitcond133.not, label %._crit_edge117.loopexit, label %.lr.ph116, !llvm.loop !158

._crit_edge117.loopexit:                          ; preds = %.lr.ph116, %bb.h
  %.0.lcssa.ph = phi i32 [ %i.f, %bb.h ], [ %.0114, %.lr.ph116 ] ; 2 uses
  %.pre138 = add nsw i32 %.0.lcssa.ph, -1
  br label %._crit_edge117

._crit_edge117:                                   ; preds = %._crit_edge117.loopexit, %bb.g
  %.pre-phi = phi i32 [ %.pre138, %._crit_edge117.loopexit ], [ %i.h, %bb.g ]
  %.0.lcssa = phi i32 [ %.0.lcssa.ph, %._crit_edge117.loopexit ], [ %1, %bb.g ] ; 3 uses
  %i.an = call i32 @ZPdr_ManSimpleMic(ptr noundef nonnull %0, i32 noundef %.pre-phi, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !83
  %.not94 = icmp eq i32 %i.aq, 0
  br i1 %.not94, label %._crit_edge117._crit_edge, label %bb.i

._crit_edge117._crit_edge:                        ; preds = %._crit_edge117
  %.pre136 = load ptr, ptr %i.b, align 8, !tbaa !72
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge117
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str)
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !84
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.au = getelementptr i8, ptr %i.at, i64 104
  %.val104 = load i32, ptr %i.au, align 8, !tbaa !92
  call void @Pdr_SetPrint(ptr noundef %i.ar, ptr noundef %i.as, i32 noundef %.val104, ptr noundef null) #21
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1, i32 noundef %.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge117._crit_edge, %bb.i
  %i.av = phi ptr [ %.pre136, %._crit_edge117._crit_edge ], [ %i.as, %bb.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !54
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph122, label %.lr.ph128.preheader

.lr.ph122:                                        ; preds = %bb.j
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  %.val = load ptr, ptr %i.bb, align 8, !tbaa !55 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph122, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56
  %i.be = sdiv i32 %i.bd, 2
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !56
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !94  ; 2 uses
  %i.bj = ashr i32 %i.bh, %i.bi
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !95
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.m, align 4, !tbaa !95
  %.pre137 = load i32, ptr %i.bc, align 4, !tbaa !56
  %.pre139 = sdiv i32 %.pre137, 2
  %.pre141 = sext i32 %.pre139 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi142 = phi i64 [ %.pre141, %bb.l ], [ %i.bf, %bb.k ]
  %i.bn = shl nuw i32 1, %i.bi
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val, i64 %.pre-phi142 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !56
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = load i32, ptr %i.aw, align 8, !tbaa !54
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %bb.k, label %.lr.ph128.preheader, !llvm.loop !159

.lr.ph128.preheader:                              ; preds = %bb.m, %bb.j
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !66
  call fastcc void @Vec_VecPush(ptr noundef %i.bu, i32 noundef %.0.lcssa, ptr noundef nonnull %i.av)
  %i.bv = load i32, ptr %i.o, align 8, !tbaa !82
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.o, align 8, !tbaa !82
  %smax = call i32 @llvm.umax.i32(i32 %.0.lcssa, i32 1)
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %.lr.ph128
  %.2126 = phi i32 [ %i.bx, %.lr.ph128 ], [ 1, %.lr.ph128.preheader ] ; 3 uses
  call void @Pdr_ManSolverAddClause(ptr noundef nonnull %0, i32 noundef %.2126, ptr noundef nonnull %i.av) #21
  %i.bx = add nuw i32 %.2126, 1
  %exitcond135.not = icmp eq i32 %.2126, %smax
  br i1 %exitcond135.not, label %._crit_edge129, label %.lr.ph128, !llvm.loop !160

._crit_edge129:                                   ; preds = %.lr.ph128
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.by) #21
  %i.bz = load ptr, ptr %2, align 8, !tbaa !72
  %i.ca = load ptr, ptr %0, align 8, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !81
  %i.cd = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.bz, ptr noundef nonnull %i.a, i32 noundef %i.cc, i32 noundef 0, i32 noundef 1) #21 ; 2 uses
  call void @Pdr_SetDeref(ptr noundef %i.x) #21
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %.loopexit107, label %.preheader106.split, !llvm.loop !161

.loopexit.split.sink.split:                       ; preds = %bb.d, %bb.b
  call void @Pdr_SetDeref(ptr noundef %i.x) #21
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.preheader106.split, %.loopexit.split.sink.split, %.preheader106
  %i.cf = load ptr, ptr %0, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !83
  %.not96 = icmp eq i32 %i.ch, 0
  br i1 %.not96, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit.split
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.ci = load ptr, ptr %2, align 8, !tbaa !72
  call void @ZPdr_SetPrint(ptr noundef %i.ci) #21
  %puts97 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @ZPdr_SetPrint(ptr noundef %i.cj) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit.split
  %i.ck = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.cm = call ptr @ZPdr_SetIntersection(ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %4) #21
  store ptr %i.cm, ptr %2, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.ck) #21
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.cn) #21
  %i.co = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.loopexit107, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %0, align 8, !tbaa !60
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 104
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !83
  %.not98 = icmp eq i32 %i.cs, 0
  br i1 %.not98, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %puts99 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.ct = load ptr, ptr %2, align 8, !tbaa !72
  call void @ZPdr_SetPrint(ptr noundef %i.ct) #21
  %.pre = load ptr, ptr %2, align 8, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cu = phi ptr [ %.pre, %bb.q ], [ %i.co, %bb.p ]
  %i.cv = call i32 @Pdr_SetIsInit(ptr noundef %i.cu, i32 noundef -1) #21
  %.not100 = icmp eq i32 %i.cv, 0
  br i1 %.not100, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %0, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !83
  %.not101 = icmp eq i32 %i.cy, 0
  br i1 %.not101, label %.loopexit107, label %bb.t

bb.t:                                             ; preds = %bb.s
  %puts102 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %.loopexit107

bb.u:                                             ; preds = %bb.r
  %i.cz = load ptr, ptr %2, align 8, !tbaa !72
  %i.da = load ptr, ptr %0, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !81
  %i.dd = call i32 @Pdr_ManCheckCube(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.cz, ptr noundef nonnull %i.a, i32 noundef %i.dc, i32 noundef 0, i32 noundef 1) #21 ; 2 uses
  switch i32 %i.dd, label %.loopexit107 [
    i32 -1, label %.loopexit107.loopexit153
    i32 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.de = load ptr, ptr %2, align 8, !tbaa !72
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !54
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.w, label %.preheader106

bb.w:                                             ; preds = %bb.v
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @Pdr_SetDeref(ptr noundef %i.di) #21
  br label %.loopexit107

.loopexit107.loopexit153:                         ; preds = %bb.u
  br label %.loopexit107

.loopexit107:                                     ; preds = %bb.o, %._crit_edge129, %bb.u, %.loopexit107.loopexit153, %bb.s, %bb.t, %bb.w
  %.087 = phi i32 [ 0, %bb.t ], [ 1, %._crit_edge129 ], [ 0, %bb.s ], [ 1, %bb.u ], [ 0, %bb.w ], [ 0, %bb.o ], [ %i.dd, %.loopexit107.loopexit153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i32 %.087
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #7 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !56
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #21 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #21
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #21 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !84
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #24
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #21 ; 0 uses
  call void @free(ptr noundef %i.d) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !84, !noalias !165
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #21, !inline_history !164 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

declare void @Pdr_SetPrint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_VecPush(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !167  ; 3 uses
  %i.c = add i32 %1, 1                            ; 4 uses
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !69
  %.not.i.not = icmp sgt i32 %i.d, %1
  br i1 %.not.i.not, label %Vec_PtrGrow.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %.not9.i = icmp eq ptr %i.f, null
  %i.g = sext i32 %i.c to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 2 uses
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.f, i64 noundef %i.h) #22
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !167
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre = phi i32 [ %.pre.pre, %bb.d ], [ %i.b, %bb.e ]
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  store ptr %i.k, ptr %i.e, align 8, !tbaa !39
  store i32 %i.c, ptr %0, align 8, !tbaa !69
  br label %Vec_PtrGrow.exit

Vec_PtrGrow.exit:                                 ; preds = %bb.b, %bb.f
  %i.l = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.f ] ; 2 uses
  %.not1516 = icmp sgt i32 %i.l, %1
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

end_hunk_1
begin_hunk_2_@Pdr_ManSolve:bb.a
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !240
  %.not75 = icmp eq i32 %i.aw, 0
  br i1 %.not75, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !241 ; 2 uses
  %.not76 = icmp eq ptr %i.ay, null
  br i1 %.not76, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !85
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !242
  %i.bc = call ptr @Extra_FileNameGenericAppend(ptr noundef %i.bb, ptr noundef nonnull @.str.22) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bd = phi ptr [ %i.bc, %bb.n ], [ %i.ay, %bb.m ] ; 2 uses
  %i.be = icmp ne i32 %i.ao, 1
  %i.bf = zext i1 %i.be to i32
  %i.bg = call ptr @Pdr_ManDeriveInfinityClauses(ptr noundef nonnull %i.an, i32 noundef %i.bf) #21
  call void @Abc_FrameSetInv(ptr noundef %i.bg) #21
  %i.bh = icmp eq i32 %i.ao, 1
  %i.bi = zext i1 %i.bh to i32
  call void @Pdr_ManDumpClauses(ptr noundef nonnull %i.an, ptr noundef %i.bd, i32 noundef %i.bi) #21
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %i.bd) ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.bk = icmp eq i32 %i.ao, 1
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = call ptr @Pdr_ManDeriveInfinityClauses(ptr noundef nonnull %i.an, i32 noundef 0) #21
  call void @Abc_FrameSetInv(ptr noundef %i.bl) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #21
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %Abc_Clock.exit86, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i64, ptr %2, align 8, !tbaa !64
  %i.bp = mul nsw i64 %i.bo, 1000000
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !65
  %i.bs = sdiv i64 %i.br, 1000
  %i.bt = add nsw i64 %i.bs, %i.bp
  br label %Abc_Clock.exit86

Abc_Clock.exit86:                                 ; preds = %bb.r, %bb.s
  %.0.i85 = phi i64 [ %i.bt, %bb.s ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bu = add i64 %.0.i85, %.0.i.neg
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 456 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !243
  %i.bx = add nsw i64 %i.bu, %i.bw
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !243
  call void @Pdr_ManStop(ptr noundef nonnull %i.an) #21
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !20
  %i.ca = add nsw i32 %i.bz, -1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !115 ; 2 uses
  %.not77 = icmp eq ptr %i.cc, null
  br i1 %.not77, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %Abc_Clock.exit86
  %i.cd = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %.val8190 = load i32, ptr %i.cd, align 8, !tbaa !112 ; 2 uses
  %i.ce = icmp sgt i32 %.val8190, 0
  br i1 %i.ce, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.cf = getelementptr i8, ptr %i.cc, i64 8
  %.val = load ptr, ptr %i.cf, align 8, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.v
  %.val8193 = phi i32 [ %.val8190, %.lr.ph ], [ %.val81, %bb.v ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !56
  %i.ci = icmp eq i32 %i.ch, -2
  br i1 %i.ci, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 -1, ptr %i.cg, align 4, !tbaa !56
  %.val81.pre = load i32, ptr %i.cd, align 8, !tbaa !112
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.val81 = phi i32 [ %.val8193, %bb.t ], [ %.val81.pre, %bb.u ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = sext i32 %.val81 to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.t, label %.loopexit, !llvm.loop !236

.loopexit:                                        ; preds = %bb.v, %.preheader, %Abc_Clock.exit86
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !244 ; 2 uses
  %.not78 = icmp ne ptr %i.cm, null
  %or.cond = icmp ult i32 %i.ao, 2
  %or.cond80 = select i1 %.not78, i1 %or.cond, i1 false
  br i1 %or.cond80, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !245
  %i.cp = call i32 %i.cm(ptr noundef %i.co, i32 noundef 1, i32 noundef %i.ao) #21 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !116
  %.not79 = icmp eq i32 %i.cr, 0
  br i1 %.not79, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !84
  %i.ct = call i32 @Gia_ManToBridgeAbort(ptr noundef %i.cs, i32 noundef 7, ptr noundef nonnull @.str.24) #21 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  ret i32 %i.ao
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare ptr @Pdr_ManStart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Extra_FileNameGenericAppend(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @Abc_FrameSetInv(ptr noundef) local_unnamed_addr #5

declare ptr @Pdr_ManDeriveInfinityClauses(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @Pdr_ManDumpClauses(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @Pdr_ManStop(ptr noundef) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeAbort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

declare i32 @sat_solver_simplify(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{!2, !57}
!3 = distinct !{!3, !57}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"Pdr_Par_t_", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !13, i64 184, !14, i64 192, !15, i64 200, !9, i64 208}
!17 = !{!16, !9, i64 0}
!18 = !{!16, !9, i64 4}
!19 = !{!16, !9, i64 84}
!20 = !{!16, !9, i64 144}
!21 = !{!16, !9, i64 136}
!22 = !{!16, !9, i64 208}
!23 = !{!"p1 _ZTS10Pdr_Par_t_", !12, i64 0}
!24 = !{!"p1 _ZTS10Aig_Man_t_", !12, i64 0}
!25 = !{!"p1 _ZTS10Gia_Man_t_", !12, i64 0}
!26 = !{!"p1 _ZTS10Cnf_Man_t_", !12, i64 0}
!27 = !{!"p1 _ZTS10Cnf_Dat_t_", !12, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!"Vec_Ptr_t_", !9, i64 0, !9, i64 4, !28, i64 8}
!30 = !{!"p1 _ZTS10Vec_Wec_t_", !12, i64 0}
!31 = !{!"p1 _ZTS10Vec_Ptr_t_", !12, i64 0}
!32 = !{!"p1 _ZTS10Vec_Vec_t_", !12, i64 0}
!33 = !{!"p1 _ZTS10Pdr_Obl_t_", !12, i64 0}
!34 = !{!"p1 int", !12, i64 0}
!35 = !{!"p1 _ZTS11Txs3_Man_t_", !12, i64 0}
!36 = !{!"p1 long", !12, i64 0}
!37 = !{!"Pdr_Man_t_", !23, i64 0, !24, i64 8, !25, i64 16, !26, i64 24, !27, i64 32, !14, i64 40, !27, i64 48, !14, i64 56, !29, i64 64, !30, i64 80, !9, i64 88, !9, i64 92, !31, i64 96, !31, i64 104, !32, i64 112, !33, i64 120, !34, i64 128, !14, i64 136, !9, i64 144, !9, i64 148, !14, i64 152, !14, i64 160, !14, i64 168, !9, i64 176, !9, i64 180, !35, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !36, i64 280, !31, i64 288, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !9, i64 348, !9, i64 352, !9, i64 356, !9, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456}
!38 = !{!37, !31, i64 104}
!39 = !{!29, !28, i64 8}
!40 = !{!12, !12, i64 0}
!41 = !{!"p2 int", !28, i64 0}
!42 = !{!"Sat_Mem_t_", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !41, i64 48}
!43 = !{!"p1 _ZTS8clause_t", !12, i64 0}
!44 = !{!"p1 _ZTS6veci_t", !12, i64 0}
!45 = !{!"veci_t", !9, i64 0, !9, i64 4, !34, i64 8}
!46 = !{!"double", !8, i64 0}
!47 = !{!"stats_t", !9, i64 0, !9, i64 4, !9, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!48 = !{!"p1 double", !12, i64 0}
!49 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!50 = !{!"sat_solver_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !42, i64 16, !9, i64 72, !9, i64 76, !43, i64 80, !44, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !36, i64 144, !36, i64 152, !9, i64 160, !9, i64 164, !45, i64 168, !15, i64 184, !9, i64 192, !34, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !34, i64 240, !34, i64 248, !34, i64 256, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !34, i64 328, !45, i64 336, !9, i64 352, !9, i64 356, !9, i64 360, !46, i64 368, !46, i64 376, !9, i64 384, !9, i64 388, !9, i64 392, !47, i64 400, !9, i64 472, !9, i64 476, !9, i64 480, !9, i64 484, !9, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !45, i64 520, !48, i64 536, !9, i64 544, !9, i64 548, !9, i64 552, !45, i64 560, !45, i64 576, !9, i64 592, !9, i64 596, !9, i64 600, !34, i64 608, !12, i64 616, !9, i64 624, !49, i64 632, !9, i64 640, !9, i64 644, !45, i64 648, !45, i64 664, !45, i64 680, !12, i64 696, !12, i64 704, !9, i64 712, !12, i64 720}
!51 = !{!"Vec_Int_t_", !9, i64 0, !9, i64 4, !34, i64 8}
!52 = !{!51, !9, i64 4}
!53 = !{!"Pdr_Set_t_", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !8, i64 20}
!54 = !{!53, !9, i64 16}
!55 = !{!51, !34, i64 8}
!56 = !{!9, !9, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!51, !9, i64 0}
!59 = !{!29, !9, i64 4}
!60 = !{!37, !23, i64 0}
!61 = !{!16, !9, i64 68}
!62 = !{!37, !9, i64 144}
!63 = !{!"timespec", !13, i64 0, !13, i64 8}
!64 = !{!63, !13, i64 0}
!65 = !{!63, !13, i64 8}
!66 = !{!37, !32, i64 112}
!67 = !{!"Vec_Vec_t_", !9, i64 0, !9, i64 4, !28, i64 8}
!68 = !{!67, !28, i64 8}
!69 = !{!29, !9, i64 0}
!70 = !{!37, !13, i64 416}
!71 = !{!"p1 _ZTS10Pdr_Set_t_", !12, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p2 _ZTS17Hash_Int_Entry_t_", !28, i64 0}
!74 = !{!"Hash_Int_t_", !9, i64 0, !9, i64 4, !12, i64 8, !73, i64 16}
!75 = !{!74, !9, i64 4}
!76 = !{!74, !12, i64 8}
!77 = !{!74, !9, i64 0}
!78 = !{!74, !73, i64 16}
!79 = !{!"p1 _ZTS17Hash_Int_Entry_t_", !12, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!16, !9, i64 8}
!82 = !{!37, !9, i64 304}
!83 = !{!16, !9, i64 104}
!84 = !{!49, !49, i64 0}
!85 = !{!37, !24, i64 8}
!86 = !{!"p1 _ZTS10Aig_Obj_t_", !12, i64 0}
!87 = !{!"Aig_Obj_t_", !8, i64 0, !86, i64 8, !86, i64 16, !9, i64 24, !9, i64 24, !9, i64 24, !9, i64 24, !9, i64 24, !9, i64 28, !9, i64 31, !9, i64 32, !9, i64 36, !8, i64 40}
!88 = !{!"p2 _ZTS10Aig_Obj_t_", !28, i64 0}
!89 = !{!"p1 _ZTS14Aig_MmFixed_t_", !12, i64 0}
!90 = !{!"p1 _ZTS10Abc_Cex_t_", !12, i64 0}
!91 = !{!"Aig_Man_t_", !15, i64 0, !15, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !86, i64 48, !87, i64 56, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !8, i64 128, !9, i64 156, !88, i64 160, !9, i64 168, !34, i64 176, !9, i64 184, !32, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !34, i64 216, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !88, i64 248, !88, i64 256, !9, i64 264, !89, i64 272, !14, i64 280, !9, i64 288, !12, i64 296, !12, i64 304, !9, i64 312, !9, i64 316, !9, i64 320, !88, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !34, i64 368, !34, i64 376, !31, i64 384, !14, i64 392, !14, i64 400, !90, i64 408, !31, i64 416, !24, i64 424, !31, i64 432, !9, i64 440, !14, i64 448, !32, i64 456, !14, i64 464, !14, i64 472, !9, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !31, i64 512, !31, i64 520}
!92 = !{!91, !9, i64 104}
!93 = !{!37, !14, i64 192}
!94 = !{!37, !9, i64 92}
!95 = !{!37, !9, i64 148}
!96 = !{!37, !34, i64 128}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
!99 = !{!16, !9, i64 80}
!100 = !{!16, !9, i64 88}
!101 = !{!"Hash_Int_Entry_t_", !9, i64 0, !9, i64 4, !79, i64 8}
!102 = !{!101, !9, i64 0}
!103 = !{!101, !79, i64 8}
!104 = !{!16, !9, i64 92}
!105 = !{!37, !9, i64 352}
!106 = !{!16, !12, i64 152}
!107 = !{!16, !9, i64 148}
!108 = !{!37, !13, i64 368}
!109 = !{!37, !13, i64 376}
!110 = !{!16, !9, i64 24}
!111 = !{!16, !13, i64 184}
!112 = !{!91, !9, i64 112}
!113 = !{!16, !9, i64 20}
!114 = !{!16, !9, i64 116}
!115 = !{!16, !14, i64 192}
!116 = !{!16, !9, i64 124}
!117 = !{!37, !31, i64 96}
!118 = !{!91, !90, i64 408}
!119 = !{!16, !9, i64 100}
!120 = !{!16, !9, i64 16}
!121 = !{!16, !9, i64 32}
!122 = !{!16, !9, i64 60}
!123 = !{!16, !9, i64 128}
!124 = distinct !{!124, !57}
!125 = distinct !{!125, !57}
!126 = !{!50, !9, i64 340}
!127 = !{!50, !34, i64 344}
!128 = distinct !{!128, !57}
!129 = distinct !{!129, !57}
!130 = distinct !{!130, !57}
!131 = distinct !{!131, !57}
!132 = distinct !{!132, !57}
!133 = distinct !{!133, !57}
!134 = distinct !{!134, !57}
!135 = distinct !{!135, !57}
!136 = distinct !{!136, !57}
!137 = distinct !{!137, !57}
!138 = distinct !{!138, !57}
!139 = distinct !{!139, !57}
!140 = distinct !{!140, !57}
!141 = distinct !{!141, !57}
!142 = distinct !{!142, !57}
!143 = distinct !{!143, !57}
!144 = distinct !{!144, !57}
!145 = distinct !{!145, !57}
!146 = distinct !{!146, !57}
!147 = distinct !{!147, !57}
!148 = distinct !{!148, !57}
!149 = distinct !{!149, !57}
!150 = distinct !{!150, !57, !97, !98}
!151 = distinct !{!151, !57, !98, !97}
!152 = distinct !{!152, !57, !97, !98}
!153 = distinct !{!153, !57, !98, !97}
!154 = distinct !{!154, !57, !97, !98}
!155 = distinct !{!155, !57, !98, !97}
!156 = distinct !{!156, !57}
!157 = distinct !{!157, !57}
!158 = distinct !{!158, !57}
!159 = distinct !{!159, !57}
!160 = distinct !{!160, !57}
!161 = distinct !{!161, !57}
!162 = distinct !{!162, !"vprintf"}
!163 = distinct !{!163, !162, !"vprintf: argument 0"}
!164 = distinct !{null}
!165 = !{!163}
!166 = distinct !{!166, !57}
!167 = !{!67, !9, i64 4}
!168 = distinct !{!168, !57}
!169 = distinct !{!169, !57}
end_hunk_2
