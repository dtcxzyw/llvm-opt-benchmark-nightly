Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcExact?download=true
inline.NumInlined: 443
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ses_ManFindNetworkExactCEGAR:bb.a

Abc_DebugErase.exit.thread:                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %Abc_DebugPrintIntInt.exit

.preheader.i:                                     ; preds = %bb.a
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph.i, label %Abc_DebugErase.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.04.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %.preheader.i ]
  %putchar.i = tail call i32 @putchar(i32 8)      ; 0 uses
  %i.l = add nuw nsw i32 %.04.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.g
  br i1 %exitcond.not.i, label %Abc_DebugErase.exit, label %.lr.ph.i, !llvm.loop !4

Abc_DebugErase.exit:                              ; preds = %.lr.ph.i, %.preheader.i
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !102
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  %.pr = load i32, ptr %i.h, align 4, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.not.i47 = icmp eq i32 %.pr, 0
  br i1 %.not.i47, label %Abc_DebugPrintIntInt.exit, label %bb.b

bb.b:                                             ; preds = %Abc_DebugErase.exit
  %i.p = load i32, ptr %i.o, align 8, !tbaa !105
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %1, i32 noundef %i.p) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !102
  %i.s = tail call i32 @fflush(ptr noundef %i.r)  ; 0 uses
  br label %Abc_DebugPrintIntInt.exit

Abc_DebugPrintIntInt.exit:                        ; preds = %Abc_DebugErase.exit.thread, %Abc_DebugErase.exit, %bb.b
  %i.t = phi ptr [ %i.j, %Abc_DebugErase.exit.thread ], [ %i.o, %Abc_DebugErase.exit ], [ %i.o, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !88   ; 6 uses
  %.not.i48 = icmp eq i32 %i.v, -1                ; 2 uses
  %i.w = shl nuw i32 1, %i.v
  %.not25.i = icmp slt i32 %1, %i.w
  %or.cond.i = select i1 %.not.i48, i1 true, i1 %.not25.i
  br i1 %or.cond.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %Abc_DebugPrintIntInt.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load i32, ptr %i.x, align 8, !tbaa !58
  %.not34.i = icmp eq i32 %i.y, 0
  br i1 %.not34.i, label %Ses_CheckGatesConsistency.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %i.v, i32 noundef %1) ; 0 uses
  br label %Ses_CheckGatesConsistency.exit.thread

bb.e:                                             ; preds = %Abc_DebugPrintIntInt.exit
  br i1 %.not.i48, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89
  %.not27.i = icmp eq ptr %i.ab, null
  br i1 %.not27.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !105
  %i.ad = icmp sgt i32 %1, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !58
  %.not33.i = icmp eq i32 %i.af, 0
  br i1 %.not33.i, label %Ses_CheckGatesConsistency.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %i.v, i32 noundef %1) ; 0 uses
  br label %Ses_CheckGatesConsistency.exit.thread

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !103
  %.not28.i = icmp eq i32 %i.ai, 0
  br i1 %.not28.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.v, -1
  %i.ak = shl nuw i32 1, %i.aj
  %.not29.not.i = icmp sgt i32 %1, %i.ak
  br i1 %.not29.not.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !58
  %.not32.i = icmp eq i32 %i.am, 0
  br i1 %.not32.i, label %Ses_CheckGatesConsistency.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %i.v, i32 noundef %1) ; 0 uses
  br label %Ses_CheckGatesConsistency.exit.thread

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !84
  %i.aq = shl nuw i32 1, %i.ap
  %.not30.i = icmp slt i32 %1, %i.aq
  br i1 %.not30.i, label %Ses_CheckGatesConsistency.exit.preheader, label %bb.o

Ses_CheckGatesConsistency.exit.preheader:         ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !99
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %Ses_CheckGatesConsistency.exit._crit_edge

.lr.ph:                                           ; preds = %Ses_CheckGatesConsistency.exit.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %Ses_CheckGatesConsistency.exit

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !58
  %.not31.i = icmp eq i32 %i.ax, 0
  br i1 %.not31.i, label %Ses_CheckGatesConsistency.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77) ; 0 uses
  br label %Ses_CheckGatesConsistency.exit.thread

Ses_CheckGatesConsistency.exit:                   ; preds = %.lr.ph, %Ses_CheckGatesConsistency.exit
  %.078 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %Ses_CheckGatesConsistency.exit ]
  %i.az = tail call i32 @rand() #30
  %i.ba = load i32, ptr %i.av, align 8, !tbaa !87
  %i.bb = srem i32 %i.az, %i.ba                   ; 2 uses
  %i.bc = and i32 %i.bb, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = ashr i32 %i.bb, 6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bg ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bj = or i64 %i.be, %i.bi
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !14
  %i.bk = add nuw nsw i32 %.078, 1                ; 2 uses
  %i.bl = load i32, ptr %i.ar, align 8, !tbaa !99
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %Ses_CheckGatesConsistency.exit, label %Ses_CheckGatesConsistency.exit._crit_edge, !llvm.loop !419

Ses_CheckGatesConsistency.exit._crit_edge:        ; preds = %Ses_CheckGatesConsistency.exit, %Ses_CheckGatesConsistency.exit.preheader
  %i.bn = tail call fastcc i32 @Ses_ManFindNetworkExact(ptr noundef nonnull %0, i32 noundef %1) ; 2 uses
  %.not43 = icmp eq i32 %i.bn, 1
  br i1 %.not43, label %.preheader, label %Ses_CheckGatesConsistency.exit.thread

.preheader:                                       ; preds = %Ses_CheckGatesConsistency.exit._crit_edge
  %i.bo = getelementptr i8, ptr %0, i64 248       ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.z
  %i.bu = tail call fastcc ptr @Ses_ManExtractSolution(ptr noundef nonnull %0) ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43  ; 3 uses
  %i.bx = sext i8 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bo, i8 0, i64 %i.by, i1 false)
  %i.bz = icmp sgt i8 %i.bw, 0
  br i1 %i.bz, label %.lr.ph81.i, label %Ses_ManDeriveTruth.exit

.lr.ph81.i:                                       ; preds = %bb.q
  %wide.trip.count96.i = zext nneg i8 %i.bw to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.cb = load i32, ptr %i.ao, align 4, !tbaa !84 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %.lr.ph81.i
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph81.i ], [ %indvars.iv.next94.i, %.loopexit.i ] ; 2 uses
  %.05980.i = phi ptr [ %i.ca, %.lr.ph81.i ], [ %i.ch, %.loopexit.i ] ; 4 uses
  %i.cc = load i8, ptr %.05980.i, align 1, !tbaa !43 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05980.i, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.05980.i, i64 3
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !43
  %i.cg = sext i8 %i.cf to i32                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05980.i, i64 4
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !43
  %i.cj = sext i8 %i.ci to i32                    ; 2 uses
  %i.ck = icmp sgt i32 %i.cb, %i.cg               ; 2 uses
  %i.cl = select i1 %i.ck, i32 0, i32 %i.cb
  %.sink107.i = sub i32 %i.cg, %i.cl
  %.sink.i = select i1 %i.ck, ptr @s_Truths8, ptr %i.bo ; 4 uses
  %i.cm = shl i32 %.sink107.i, 2
  %i.cn = sext i32 %i.cm to i64                   ; 4 uses
  %i.co = getelementptr [8 x i8], ptr %.sink.i, i64 %i.cn ; 15 uses
  %i.cp = icmp sgt i32 %i.cb, %i.cj               ; 2 uses
  %i.cq = select i1 %i.cp, i32 0, i32 %i.cb
  %.sink111.i = sub i32 %i.cj, %i.cq
  %.sink108.i = select i1 %i.cp, ptr @s_Truths8, ptr %i.bo ; 4 uses
  %i.cr = shl i32 %.sink111.i, 2
  %i.cs = sext i32 %i.cr to i64                   ; 4 uses
  %i.ct = getelementptr [8 x i8], ptr %.sink108.i, i64 %i.cs ; 15 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv93.i, 5
  %i.cu = getelementptr i8, ptr %i.bo, i64 %.idx.i ; 22 uses
  %i.cv = and i8 %i.cc, 1
  %.not.i50 = icmp eq i8 %i.cv, 0
  br i1 %.not.i50, label %.loopexit73.i, label %.preheader72.i

.preheader72.i:                                   ; preds = %bb.r
  %i.cw = load i32, ptr %i.bp, align 4, !tbaa !86 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.preheader.i, label %.loopexit73.i

.lr.ph.preheader.i:                               ; preds = %.preheader72.i
  %wide.trip.count.i = zext nneg i32 %i.cw to i64 ; 8 uses
  %min.iters.check175 = icmp ult i32 %i.cw, 8
  br i1 %min.iters.check175, label %.lr.ph.i52.preheader, label %vector.memcheck163

vector.memcheck163:                               ; preds = %.lr.ph.preheader.i
  %i.cy = shl nuw nsw i64 %wide.trip.count.i, 3
  %scevgep164 = getelementptr i8, ptr %i.cu, i64 %i.cy ; 2 uses
  %i.cz = add nsw i64 %i.cn, %wide.trip.count.i
  %i.da = shl nsw i64 %i.cz, 3
  %scevgep165 = getelementptr i8, ptr %.sink.i, i64 %i.da
  %i.db = add nsw i64 %i.cs, %wide.trip.count.i
  %i.dc = shl nsw i64 %i.db, 3
  %scevgep166 = getelementptr i8, ptr %.sink108.i, i64 %i.dc
  %bound0167 = icmp ult ptr %i.cu, %scevgep165
  %bound1168 = icmp ult ptr %i.co, %scevgep164
  %found.conflict169 = and i1 %bound0167, %bound1168
  %bound0170 = icmp ult ptr %i.cu, %scevgep166
  %bound1171 = icmp ult ptr %i.ct, %scevgep164
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %found.conflict169, %found.conflict172
  br i1 %conflict.rdx173, label %.lr.ph.i52.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck163
  %n.vec177 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index179 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load180 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !14, !alias.scope !443
  %wide.load181 = load <2 x i64>, ptr %i.de, align 8, !tbaa !14, !alias.scope !443
  %i.df = xor <2 x i64> %wide.load180, splat (i64 -1)
  %i.dg = xor <2 x i64> %wide.load181, splat (i64 -1)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index179 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load182 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !14, !alias.scope !444
  %wide.load183 = load <2 x i64>, ptr %i.di, align 8, !tbaa !14, !alias.scope !444
  %i.dj = and <2 x i64> %wide.load182, %i.df
  %i.dk = and <2 x i64> %wide.load183, %i.dg
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index179 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load184 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !14, !alias.scope !445, !noalias !446
  %wide.load185 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !14, !alias.scope !445, !noalias !446
  %i.dn = or <2 x i64> %wide.load184, %i.dj
  %i.do = or <2 x i64> %wide.load185, %i.dk
  store <2 x i64> %i.dn, ptr %i.dl, align 8, !tbaa !14, !alias.scope !445, !noalias !446
  store <2 x i64> %i.do, ptr %i.dm, align 8, !tbaa !14, !alias.scope !445, !noalias !446
  %index.next186 = add nuw i64 %index179, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.dp, label %middle.block187, label %vector.body178, !llvm.loop !424

middle.block187:                                  ; preds = %vector.body178
  %cmp.n188 = icmp eq i64 %n.vec177, %wide.trip.count.i
  br i1 %cmp.n188, label %.loopexit73.i, label %.lr.ph.i52.preheader

.lr.ph.i52.preheader:                             ; preds = %vector.memcheck163, %.lr.ph.preheader.i, %middle.block187
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck163 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec177, %middle.block187 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol

.lr.ph.i52.prol:                                  ; preds = %.lr.ph.i52.preheader
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i.ph
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !14
  %i.ds = xor i64 %i.dr, -1
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i.ph
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !14
  %i.dv = and i64 %i.du, %i.ds
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i.ph ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !14
  %i.dy = or i64 %i.dx, %i.dv
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !14
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i52.prol.loopexit

.lr.ph.i52.prol.loopexit:                         ; preds = %.lr.ph.i52.prol, %.lr.ph.i52.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i52.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i52.prol ]
  %i.dz = add nsw i64 %wide.trip.count.i, -1
  %i.ea = icmp eq i64 %indvars.iv.i.ph, %i.dz
  br i1 %i.ea, label %.loopexit73.i, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i52 ], [ %indvars.iv.i.unr, %.lr.ph.i52.prol.loopexit ] ; 5 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !14
  %i.ed = xor i64 %i.ec, -1
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !14
  %i.eg = and i64 %i.ef, %i.ed
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !14
  %i.ej = or i64 %i.ei, %i.eg
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !14
  %i.em = xor i64 %i.el, -1
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next.i
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !14
  %i.ep = and i64 %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.es = or i64 %i.er, %i.ep
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i53.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i53.1, label %.loopexit73.i, label %.lr.ph.i52, !llvm.loop !425

.loopexit73.i:                                    ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52, %middle.block187, %.preheader72.i, %bb.r
  %i.et = and i8 %i.cc, 2
  %.not68.i = icmp eq i8 %i.et, 0
  br i1 %.not68.i, label %.loopexit71.i, label %.preheader70.i

.preheader70.i:                                   ; preds = %.loopexit73.i
  %i.eu = load i32, ptr %i.bp, align 4, !tbaa !86 ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph76.preheader.i, label %.loopexit71.i

.lr.ph76.preheader.i:                             ; preds = %.preheader70.i
  %wide.trip.count86.i = zext nneg i32 %i.eu to i64 ; 8 uses
  %min.iters.check148 = icmp ult i32 %i.eu, 8
  br i1 %min.iters.check148, label %.lr.ph76.i.preheader, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph76.preheader.i
  %i.ew = shl nuw nsw i64 %wide.trip.count86.i, 3
  %scevgep137 = getelementptr i8, ptr %i.cu, i64 %i.ew ; 2 uses
  %i.ex = add nsw i64 %i.cn, %wide.trip.count86.i
  %i.ey = shl nsw i64 %i.ex, 3
  %scevgep138 = getelementptr i8, ptr %.sink.i, i64 %i.ey
  %i.ez = add nsw i64 %i.cs, %wide.trip.count86.i
  %i.fa = shl nsw i64 %i.ez, 3
  %scevgep139 = getelementptr i8, ptr %.sink108.i, i64 %i.fa
  %bound0140 = icmp ult ptr %i.cu, %scevgep138
  %bound1141 = icmp ult ptr %i.co, %scevgep137
  %found.conflict142 = and i1 %bound0140, %bound1141
  %bound0143 = icmp ult ptr %i.cu, %scevgep139
  %bound1144 = icmp ult ptr %i.ct, %scevgep137
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %found.conflict142, %found.conflict145
  br i1 %conflict.rdx146, label %.lr.ph76.i.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck136
  %n.vec150 = and i64 %wide.trip.count86.i, 2147483644 ; 3 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next159, %vector.body151 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index152 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load153 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !14, !alias.scope !447
  %wide.load154 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !14, !alias.scope !447
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index152 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load155 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !14, !alias.scope !448
  %wide.load156 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !14, !alias.scope !448
  %i.ff = xor <2 x i64> %wide.load155, splat (i64 -1)
  %i.fg = xor <2 x i64> %wide.load156, splat (i64 -1)
  %i.fh = and <2 x i64> %wide.load153, %i.ff
  %i.fi = and <2 x i64> %wide.load154, %i.fg
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index152 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load157 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !14, !alias.scope !449, !noalias !450
  %wide.load158 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !14, !alias.scope !449, !noalias !450
  %i.fl = or <2 x i64> %wide.load157, %i.fh
  %i.fm = or <2 x i64> %wide.load158, %i.fi
  store <2 x i64> %i.fl, ptr %i.fj, align 8, !tbaa !14, !alias.scope !449, !noalias !450
  store <2 x i64> %i.fm, ptr %i.fk, align 8, !tbaa !14, !alias.scope !449, !noalias !450
  %index.next159 = add nuw i64 %index152, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next159, %n.vec150
  br i1 %i.fn, label %middle.block160, label %vector.body151, !llvm.loop !430

middle.block160:                                  ; preds = %vector.body151
  %cmp.n161 = icmp eq i64 %n.vec150, %wide.trip.count86.i
  br i1 %cmp.n161, label %.loopexit71.i, label %.lr.ph76.i.preheader

.lr.ph76.i.preheader:                             ; preds = %vector.memcheck136, %.lr.ph76.preheader.i, %middle.block160
  %indvars.iv83.i.ph = phi i64 [ 0, %vector.memcheck136 ], [ 0, %.lr.ph76.preheader.i ], [ %n.vec150, %middle.block160 ] ; 6 uses
  %xtraiter195 = and i64 %wide.trip.count86.i, 1
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol

.lr.ph76.i.prol:                                  ; preds = %.lr.ph76.i.preheader
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv83.i.ph
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !14
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv83.i.ph
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !14
  %i.fs = xor i64 %i.fr, -1
  %i.ft = and i64 %i.fp, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv83.i.ph ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !14
  %i.fw = or i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !14
  %indvars.iv.next84.i.prol = or disjoint i64 %indvars.iv83.i.ph, 1
  br label %.lr.ph76.i.prol.loopexit

.lr.ph76.i.prol.loopexit:                         ; preds = %.lr.ph76.i.prol, %.lr.ph76.i.preheader
  %indvars.iv83.i.unr = phi i64 [ %indvars.iv83.i.ph, %.lr.ph76.i.preheader ], [ %indvars.iv.next84.i.prol, %.lr.ph76.i.prol ]
  %i.fx = add nsw i64 %wide.trip.count86.i, -1
  %i.fy = icmp eq i64 %indvars.iv83.i.ph, %i.fx
  br i1 %i.fy, label %.loopexit71.i, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i.1, %.lr.ph76.i ], [ %indvars.iv83.i.unr, %.lr.ph76.i.prol.loopexit ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv83.i
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !14
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv83.i
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !14
  %i.gd = xor i64 %i.gc, -1
  %i.ge = and i64 %i.ga, %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv83.i ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !14
  %i.gh = or i64 %i.gg, %i.ge
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !14
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next84.i
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !14
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next84.i
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !14
  %i.gm = xor i64 %i.gl, -1
  %i.gn = and i64 %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next84.i ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !14
  %i.gq = or i64 %i.gp, %i.gn
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !14
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %exitcond87.not.i.1 = icmp eq i64 %indvars.iv.next84.i.1, %wide.trip.count86.i
  br i1 %exitcond87.not.i.1, label %.loopexit71.i, label %.lr.ph76.i, !llvm.loop !431

.loopexit71.i:                                    ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i, %middle.block160, %.preheader70.i, %.loopexit73.i
  %i.gr = and i8 %i.cc, 4
  %.not69.i = icmp eq i8 %i.gr, 0
  br i1 %.not69.i, label %.loopexit.i, label %.preheader.i51

.preheader.i51:                                   ; preds = %.loopexit71.i
  %i.gs = load i32, ptr %i.bp, align 4, !tbaa !86 ; 3 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph78.preheader.i, label %.loopexit.i

.lr.ph78.preheader.i:                             ; preds = %.preheader.i51
  %wide.trip.count91.i = zext nneg i32 %i.gs to i64 ; 8 uses
  %min.iters.check121 = icmp ult i32 %i.gs, 8
  br i1 %min.iters.check121, label %.lr.ph78.i.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph78.preheader.i
  %i.gu = shl nuw nsw i64 %wide.trip.count91.i, 3
  %scevgep = getelementptr i8, ptr %i.cu, i64 %i.gu ; 2 uses
  %i.gv = add nsw i64 %i.cn, %wide.trip.count91.i
  %i.gw = shl nsw i64 %i.gv, 3
  %scevgep114 = getelementptr i8, ptr %.sink.i, i64 %i.gw
  %i.gx = add nsw i64 %i.cs, %wide.trip.count91.i
  %i.gy = shl nsw i64 %i.gx, 3
  %scevgep115 = getelementptr i8, ptr %.sink108.i, i64 %i.gy
  %bound0 = icmp ult ptr %i.cu, %scevgep114
  %bound1 = icmp ult ptr %i.co, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %i.cu, %scevgep115
  %bound1117 = icmp ult ptr %i.ct, %scevgep
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict, %found.conflict118
  br i1 %conflict.rdx119, label %.lr.ph78.i.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck113
  %n.vec123 = and i64 %wide.trip.count91.i, 2147483644 ; 3 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next132, %vector.body124 ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index125 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load126 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !14, !alias.scope !451
  %wide.load127 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !14, !alias.scope !451
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index125 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load128 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !14, !alias.scope !452
  %wide.load129 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !14, !alias.scope !452
  %i.hd = and <2 x i64> %wide.load128, %wide.load126
  %i.he = and <2 x i64> %wide.load129, %wide.load127
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index125 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load130 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !14, !alias.scope !453, !noalias !454
  %wide.load131 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !14, !alias.scope !453, !noalias !454
  %i.hh = or <2 x i64> %wide.load130, %i.hd
  %i.hi = or <2 x i64> %wide.load131, %i.he
  store <2 x i64> %i.hh, ptr %i.hf, align 8, !tbaa !14, !alias.scope !453, !noalias !454
  store <2 x i64> %i.hi, ptr %i.hg, align 8, !tbaa !14, !alias.scope !453, !noalias !454
  %index.next132 = add nuw i64 %index125, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next132, %n.vec123
  br i1 %i.hj, label %middle.block133, label %vector.body124, !llvm.loop !436

middle.block133:                                  ; preds = %vector.body124
  %cmp.n134 = icmp eq i64 %n.vec123, %wide.trip.count91.i
  br i1 %cmp.n134, label %.loopexit.i, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %vector.memcheck113, %.lr.ph78.preheader.i, %middle.block133
  %indvars.iv88.i.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph78.preheader.i ], [ %n.vec123, %middle.block133 ] ; 6 uses
  %xtraiter197 = and i64 %wide.trip.count91.i, 1
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %.lr.ph78.i.prol.loopexit, label %.lr.ph78.i.prol

.lr.ph78.i.prol:                                  ; preds = %.lr.ph78.i.preheader
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv88.i.ph
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !14
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv88.i.ph
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !14
  %i.ho = and i64 %i.hn, %i.hl
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv88.i.ph ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !14
  %i.hr = or i64 %i.hq, %i.ho
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !14
  %indvars.iv.next89.i.prol = or disjoint i64 %indvars.iv88.i.ph, 1
  br label %.lr.ph78.i.prol.loopexit

.lr.ph78.i.prol.loopexit:                         ; preds = %.lr.ph78.i.prol, %.lr.ph78.i.preheader
  %indvars.iv88.i.unr = phi i64 [ %indvars.iv88.i.ph, %.lr.ph78.i.preheader ], [ %indvars.iv.next89.i.prol, %.lr.ph78.i.prol ]
  %i.hs = add nsw i64 %wide.trip.count91.i, -1
  %i.ht = icmp eq i64 %indvars.iv88.i.ph, %i.hs
  br i1 %i.ht, label %.loopexit.i, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.prol.loopexit, %.lr.ph78.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i.1, %.lr.ph78.i ], [ %indvars.iv88.i.unr, %.lr.ph78.i.prol.loopexit ] ; 5 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv88.i
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !14
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv88.i
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !14
  %i.hy = and i64 %i.hx, %i.hv
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv88.i ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !14
  %i.ib = or i64 %i.ia, %i.hy
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !14
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next89.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !14
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next89.i
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !14
  %i.ig = and i64 %i.if, %i.id
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next89.i ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !14
  %i.ij = or i64 %i.ii, %i.ig
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !14
  %indvars.iv.next89.i.1 = add nuw nsw i64 %indvars.iv88.i, 2 ; 2 uses
  %exitcond92.not.i.1 = icmp eq i64 %indvars.iv.next89.i.1, %wide.trip.count91.i
  br i1 %exitcond92.not.i.1, label %.loopexit.i, label %.lr.ph78.i, !llvm.loop !437

.loopexit.i:                                      ; preds = %.lr.ph78.i.prol.loopexit, %.lr.ph78.i, %middle.block133, %.preheader.i51, %.loopexit71.i
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %wide.trip.count96.i
  br i1 %exitcond97.not.i, label %Ses_ManDeriveTruth.exit, label %bb.r, !llvm.loop !438

Ses_ManDeriveTruth.exit:                          ; preds = %.loopexit.i, %bb.q
  %.0.lcssa.i = phi ptr [ null, %bb.q ], [ %i.cu, %.loopexit.i ] ; 7 uses
  %.0.lcssa.i108 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ik = load ptr, ptr %i.bq, align 8, !tbaa !83 ; 7 uses
  %i.il = ptrtoaddr ptr %i.ik to i64
  %i.im = load i32, ptr %i.bp, align 4, !tbaa !86 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph.preheader.i55, label %Abc_TtXor.exit

.lr.ph.preheader.i55:                             ; preds = %Ses_ManDeriveTruth.exit
  %wide.trip.count.i56 = zext nneg i32 %i.im to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.im, 6
  br i1 %min.iters.check, label %.lr.ph.i57.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i55
  %i.io = sub i64 %.0.lcssa.i108, %i.b
  %diff.check = icmp ugt i64 %i.io, -32
  %i.ip = sub i64 %i.il, %i.b
  %diff.check109 = icmp ugt i64 %i.ip, -32
  %conflict.rdx = or i1 %diff.check, %diff.check109
  br i1 %conflict.rdx, label %.lr.ph.i57.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i56, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i, i64 %index ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load = load <2 x i64>, ptr %i.iq, align 8, !tbaa !14
  %wide.load110 = load <2 x i64>, ptr %i.ir, align 8, !tbaa !14
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %index ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load111 = load <2 x i64>, ptr %i.is, align 8, !tbaa !14
  %wide.load112 = load <2 x i64>, ptr %i.it, align 8, !tbaa !14
  %i.iu = xor <2 x i64> %wide.load111, %wide.load
  %i.iv = xor <2 x i64> %wide.load112, %wide.load110
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store <2 x i64> %i.iu, ptr %i.iw, align 16, !tbaa !14
  store <2 x i64> %i.iv, ptr %i.ix, align 16, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !439

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i56
  br i1 %cmp.n, label %Abc_TtXor.exit, label %.lr.ph.i57.preheader

.lr.ph.i57.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i55, %middle.block
  %indvars.iv.i58.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i55 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter199 = and i64 %wide.trip.count.i56, 3  ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph.i57.prol.loopexit, label %.lr.ph.i57.prol

.lr.ph.i57.prol:                                  ; preds = %.lr.ph.i57.preheader, %.lr.ph.i57.prol
  %indvars.iv.i58.prol = phi i64 [ %indvars.iv.next.i59.prol, %.lr.ph.i57.prol ], [ %indvars.iv.i58.ph, %.lr.ph.i57.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i57.prol ], [ 0, %.lr.ph.i57.preheader ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i, i64 %indvars.iv.i58.prol
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !14
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.i58.prol
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !14
  %i.jd = xor i64 %i.jc, %i.ja
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i58.prol
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !14
  %indvars.iv.next.i59.prol = add nuw nsw i64 %indvars.iv.i58.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter199
  br i1 %prol.iter.cmp.not, label %.lr.ph.i57.prol.loopexit, label %.lr.ph.i57.prol, !llvm.loop !440

.lr.ph.i57.prol.loopexit:                         ; preds = %.lr.ph.i57.prol, %.lr.ph.i57.preheader
  %indvars.iv.i58.unr = phi i64 [ %indvars.iv.i58.ph, %.lr.ph.i57.preheader ], [ %indvars.iv.next.i59.prol, %.lr.ph.i57.prol ]
  %i.jf = sub nsw i64 %indvars.iv.i58.ph, %wide.trip.count.i56
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %Abc_TtXor.exit, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.prol.loopexit, %.lr.ph.i57
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i59.3, %.lr.ph.i57 ], [ %indvars.iv.i58.unr, %.lr.ph.i57.prol.loopexit ] ; 7 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i, i64 %indvars.iv.i58
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !14
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.i58
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !14
  %i.jl = xor i64 %i.jk, %i.ji
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i58
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !14
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i58, 1 ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i, i64 %indvars.iv.next.i59
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !14
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next.i59
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !14
  %i.jr = xor i64 %i.jq, %i.jo
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i59
  store i64 %i.jr, ptr %i.js, align 8, !tbaa !14
  %indvars.iv.next.i59.1 = add nuw nsw i64 %indvars.iv.i58, 2 ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i, i64 %indvars.iv.next.i59.1
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !14
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next.i59.1
end_hunk_0
