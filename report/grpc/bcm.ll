inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@DH_check:bb.a

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !830  ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !823   ; 2 uses
  %i.ab = tail call i32 @BN_cmp(ptr noundef %i.z, ptr noundef %i.aa)
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !825
  %i.ae = tail call i32 @BN_mod_exp_mont(ptr noundef nonnull %i.p, ptr noundef %i.z, ptr noundef %i.ad, ptr noundef %i.aa, ptr noundef nonnull %i.e, ptr noundef null)
  %.not76 = icmp eq i32 %i.ae, 0
  br i1 %.not76, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call i32 @BN_is_one(ptr noundef nonnull %i.p)
  %.not77 = icmp eq i32 %i.af, 0
  br i1 %.not77, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.h, %bb.g
  %i.ag = load i32, ptr %1, align 4, !tbaa !18
  %i.ah = or i32 %i.ag, 8
  store i32 %i.ah, ptr %1, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.aj = call i32 @BN_primality_test(ptr noundef nonnull %i.c, ptr noundef readonly %i.ai, i32 noundef 64, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef null)
  %.not.i.i87 = icmp eq i32 %i.aj, 0
  %i.ak = load i32, ptr %i.c, align 4
  %.0.i.i = select i1 %.not.i.i87, i32 -1, i32 %i.ak ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.al = icmp slt i32 %.0.i.i, 0
  br i1 %i.al, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not78 = icmp eq i32 %.0.i.i, 0
  br i1 %.not78, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %1, align 4, !tbaa !18
  %i.an = or i32 %i.am, 16
  store i32 %i.an, ptr %1, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ao = load ptr, ptr %0, align 8, !tbaa !823
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !825
  %i.aq = tail call i32 @BN_div(ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef nonnull %i.e)
  %.not79 = icmp eq i32 %i.aq, 0
  br i1 %.not79, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !182
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %.sink.split162

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !186 ; 4 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.sink.split162, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !185 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !94
  %i.az = xor i64 %i.ay, 1                        ; 3 uses
  %i.ba = icmp sgt i32 %i.av, 1
  br i1 %i.ba, label %.lr.ph.preheader.i.i, label %BN_is_one.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %wide.trip.count.i.i = zext nneg i32 %i.av to i64 ; 2 uses
  %i.bb = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.av, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.bb, -4                      ; 3 uses
  %i.bc = or disjoint i64 %n.vec, 1
  %i.bd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.az, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bd, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi172 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %wide.load = load <2 x i64>, ptr %i.bf, align 8, !tbaa !94
  %wide.load173 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !94
  %i.bh = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.bi = or <2 x i64> %wide.load173, %vec.phi172 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !835

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %BN_is_one.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.bc, %middle.block ]
  %.01113.i.i.ph = phi i64 [ %i.az, %.lr.ph.preheader.i.i ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01113.i.i = phi i64 [ %i.bn, %.lr.ph.i.i ], [ %.01113.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !94
  %i.bn = or i64 %i.bm, %.01113.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %BN_is_one.exit, label %.lr.ph.i.i, !llvm.loop !836

BN_is_one.exit:                                   ; preds = %.lr.ph.i.i, %middle.block, %bb.q
  %.012.in.in.i.i = phi i64 [ %i.az, %bb.q ], [ %i.bk, %middle.block ], [ %i.bn, %.lr.ph.i.i ]
  %.012.in.i.i.not = icmp eq i64 %.012.in.in.i.i, 0
  br i1 %.012.in.i.i.not, label %bb.x, label %.sink.split162

bb.r:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !186 ; 6 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.sink.split162, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !185 ; 5 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !94 ; 2 uses
  %i.bt = xor i64 %i.bs, 2                        ; 3 uses
  %i.bu = icmp sgt i32 %i.bp, 1                   ; 2 uses
  br i1 %i.bu, label %.lr.ph.preheader.i.i90, label %BN_abs_is_word.exit.i88

.lr.ph.preheader.i.i90:                           ; preds = %bb.s
  %wide.trip.count.i.i91 = zext nneg i32 %i.bp to i64 ; 2 uses
  %i.bv = add nsw i64 %wide.trip.count.i.i91, -1  ; 2 uses
  %min.iters.check175 = icmp ult i32 %i.bp, 5
  br i1 %min.iters.check175, label %.lr.ph.i.i92.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph.preheader.i.i90
  %n.vec178 = and i64 %i.bv, -4                   ; 3 uses
  %i.bw = or disjoint i64 %n.vec178, 1
  %i.bx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bt, i64 0
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph176
  %index180 = phi i64 [ 0, %vector.ph176 ], [ %index.next185, %vector.body179 ] ; 2 uses
  %vec.phi181 = phi <2 x i64> [ %i.bx, %vector.ph176 ], [ %i.cb, %vector.body179 ]
  %vec.phi182 = phi <2 x i64> [ zeroinitializer, %vector.ph176 ], [ %i.cc, %vector.body179 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index180 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %wide.load183 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !94
  %wide.load184 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !94
  %i.cb = or <2 x i64> %wide.load183, %vec.phi181 ; 2 uses
  %i.cc = or <2 x i64> %wide.load184, %vec.phi182 ; 2 uses
  %index.next185 = add nuw i64 %index180, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.cd, label %middle.block186, label %vector.body179, !llvm.loop !837

middle.block186:                                  ; preds = %vector.body179
  %bin.rdx187 = or <2 x i64> %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx187) ; 2 uses
  %cmp.n188 = icmp eq i64 %i.bv, %n.vec178
  br i1 %cmp.n188, label %BN_abs_is_word.exit.i88, label %.lr.ph.i.i92.preheader

.lr.ph.i.i92.preheader:                           ; preds = %.lr.ph.preheader.i.i90, %middle.block186
  %indvars.iv.i.i93.ph = phi i64 [ 1, %.lr.ph.preheader.i.i90 ], [ %i.bw, %middle.block186 ]
  %.01113.i.i94.ph = phi i64 [ %i.bt, %.lr.ph.preheader.i.i90 ], [ %i.ce, %middle.block186 ]
  br label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.lr.ph.i.i92.preheader, %.lr.ph.i.i92
  %indvars.iv.i.i93 = phi i64 [ %indvars.iv.next.i.i95, %.lr.ph.i.i92 ], [ %indvars.iv.i.i93.ph, %.lr.ph.i.i92.preheader ] ; 2 uses
  %.01113.i.i94 = phi i64 [ %i.ch, %.lr.ph.i.i92 ], [ %.01113.i.i94.ph, %.lr.ph.i.i92.preheader ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i.i93
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !94
  %i.ch = or i64 %i.cg, %.01113.i.i94             ; 2 uses
  %indvars.iv.next.i.i95 = add nuw nsw i64 %indvars.iv.i.i93, 1 ; 2 uses
  %exitcond.not.i.i96 = icmp eq i64 %indvars.iv.next.i.i95, %wide.trip.count.i.i91
  br i1 %exitcond.not.i.i96, label %BN_abs_is_word.exit.i88, label %.lr.ph.i.i92, !llvm.loop !838

BN_abs_is_word.exit.i88:                          ; preds = %.lr.ph.i.i92, %middle.block186, %bb.s
  %.012.in.in.i.i89 = phi i64 [ %i.bt, %bb.s ], [ %i.ce, %middle.block186 ], [ %i.ch, %.lr.ph.i.i92 ]
  %.012.in.i.not.i = icmp eq i64 %.012.in.in.i.i89, 0
  br i1 %.012.in.i.not.i, label %BN_is_word.exit, label %.thread

BN_is_word.exit:                                  ; preds = %BN_abs_is_word.exit.i88
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !182
  %.not140 = icmp eq i32 %i.cj, 0
  br i1 %.not140, label %bb.t, label %.thread

bb.t:                                             ; preds = %BN_is_word.exit
  %i.ck = load ptr, ptr %0, align 8, !tbaa !823   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !186 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i, label %.sink.split162

.lr.ph.i:                                         ; preds = %bb.t
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !185
  %i.cp = zext nneg i32 %i.cm to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %indvars.iv.next.i.1, %bb.u ] ; 2 uses
  %.0912.i = phi i128 [ 0, %.lr.ph.i ], [ %i.cv, %bb.u ]
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cq = shl nuw nsw i128 %.0912.i, 64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i.1
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !94
  %i.ct = zext i64 %i.cs to i128
  %i.cu = or disjoint i128 %i.cq, %i.ct
  %i.cv = urem i128 %i.cu, 24                     ; 2 uses
  %2 = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %2, label %bb.u, label %BN_mod_word.exit, !llvm.loop !357

BN_mod_word.exit:                                 ; preds = %bb.u
  %cond = icmp eq i128 %i.cv, 11
  br i1 %cond, label %bb.x, label %.sink.split162

.thread:                                          ; preds = %BN_is_word.exit, %BN_abs_is_word.exit.i88
  %i.cw = xor i64 %i.bs, 5                        ; 3 uses
  br i1 %i.bu, label %.lr.ph.preheader.i.i100, label %BN_abs_is_word.exit.i97

.lr.ph.preheader.i.i100:                          ; preds = %.thread
  %wide.trip.count.i.i101 = zext nneg i32 %i.bp to i64 ; 2 uses
  %i.cx = add nsw i64 %wide.trip.count.i.i101, -1 ; 2 uses
  %min.iters.check192 = icmp ult i32 %i.bp, 5
  br i1 %min.iters.check192, label %.lr.ph.i.i102.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %.lr.ph.preheader.i.i100
  %n.vec195 = and i64 %i.cx, -4                   ; 3 uses
  %i.cy = or disjoint i64 %n.vec195, 1
  %i.cz = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cw, i64 0
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %vec.phi198 = phi <2 x i64> [ %i.cz, %vector.ph193 ], [ %i.dd, %vector.body196 ]
  %vec.phi199 = phi <2 x i64> [ zeroinitializer, %vector.ph193 ], [ %i.de, %vector.body196 ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index197 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %wide.load200 = load <2 x i64>, ptr %i.db, align 8, !tbaa !94
  %wide.load201 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !94
  %i.dd = or <2 x i64> %wide.load200, %vec.phi198 ; 2 uses
  %i.de = or <2 x i64> %wide.load201, %vec.phi199 ; 2 uses
  %index.next202 = add nuw i64 %index197, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.df, label %middle.block203, label %vector.body196, !llvm.loop !839

middle.block203:                                  ; preds = %vector.body196
  %bin.rdx204 = or <2 x i64> %i.de, %i.dd
  %i.dg = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx204) ; 2 uses
  %cmp.n205 = icmp eq i64 %i.cx, %n.vec195
  br i1 %cmp.n205, label %BN_abs_is_word.exit.i97, label %.lr.ph.i.i102.preheader

.lr.ph.i.i102.preheader:                          ; preds = %.lr.ph.preheader.i.i100, %middle.block203
  %indvars.iv.i.i103.ph = phi i64 [ 1, %.lr.ph.preheader.i.i100 ], [ %i.cy, %middle.block203 ]
  %.01113.i.i104.ph = phi i64 [ %i.cw, %.lr.ph.preheader.i.i100 ], [ %i.dg, %middle.block203 ]
  br label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph.i.i102.preheader, %.lr.ph.i.i102
  %indvars.iv.i.i103 = phi i64 [ %indvars.iv.next.i.i105, %.lr.ph.i.i102 ], [ %indvars.iv.i.i103.ph, %.lr.ph.i.i102.preheader ] ; 2 uses
  %.01113.i.i104 = phi i64 [ %i.dj, %.lr.ph.i.i102 ], [ %.01113.i.i104.ph, %.lr.ph.i.i102.preheader ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i.i103
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !94
  %i.dj = or i64 %i.di, %.01113.i.i104            ; 2 uses
  %indvars.iv.next.i.i105 = add nuw nsw i64 %indvars.iv.i.i103, 1 ; 2 uses
  %exitcond.not.i.i106 = icmp eq i64 %indvars.iv.next.i.i105, %wide.trip.count.i.i101
  br i1 %exitcond.not.i.i106, label %BN_abs_is_word.exit.i97, label %.lr.ph.i.i102, !llvm.loop !840

BN_abs_is_word.exit.i97:                          ; preds = %.lr.ph.i.i102, %middle.block203, %.thread
  %.012.in.in.i.i98 = phi i64 [ %i.cw, %.thread ], [ %i.dg, %middle.block203 ], [ %i.dj, %.lr.ph.i.i102 ]
  %.012.in.i.not.i99 = icmp eq i64 %.012.in.in.i.i98, 0
  br i1 %.012.in.i.not.i99, label %BN_is_word.exit107, label %.sink.split162

BN_is_word.exit107:                               ; preds = %BN_abs_is_word.exit.i97
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !182
  %.not141 = icmp eq i32 %i.dl, 0
  br i1 %.not141, label %bb.v, label %.sink.split162

bb.v:                                             ; preds = %BN_is_word.exit107
  %i.dm = load ptr, ptr %0, align 8, !tbaa !823   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !186 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i109, label %.sink.split162

.lr.ph.i109:                                      ; preds = %bb.v
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !185
  %i.dr = zext nneg i32 %i.do to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i109
  %indvars.iv.i110 = phi i64 [ %i.dr, %.lr.ph.i109 ], [ %indvars.iv.next.i112.1, %bb.w ] ; 2 uses
  %.0912.i111 = phi i128 [ 0, %.lr.ph.i109 ], [ %i.dx, %bb.w ]
  %indvars.iv.next.i112.1 = add nsw i64 %indvars.iv.i110, -1 ; 2 uses
  %i.ds = shl nuw nsw i128 %.0912.i111, 64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i112.1
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !94
  %i.dv = zext i64 %i.du to i128
  %i.dw = or disjoint i128 %i.ds, %i.dv
  %i.dx = urem i128 %i.dw, 10                     ; 2 uses
  %3 = icmp samesign ugt i64 %indvars.iv.i110, 1
  br i1 %3, label %bb.w, label %BN_mod_word.exit115, !llvm.loop !357

BN_mod_word.exit115:                              ; preds = %bb.w
  %i.dy = and i128 %i.dx, 11
  %or.cond.not = icmp eq i128 %i.dy, 3
  br i1 %or.cond.not, label %bb.x, label %.sink.split162

.sink.split162:                                   ; preds = %BN_is_word.exit107, %BN_abs_is_word.exit.i97, %bb.r, %BN_mod_word.exit115, %bb.v, %bb.t, %BN_mod_word.exit, %BN_is_one.exit, %bb.o, %bb.p
  %.sink164 = phi i32 [ 32, %BN_is_one.exit ], [ 8, %bb.t ], [ 8, %BN_mod_word.exit115 ], [ 32, %bb.p ], [ 32, %bb.o ], [ 8, %BN_mod_word.exit ], [ 8, %bb.v ], [ 4, %bb.r ], [ 4, %BN_abs_is_word.exit.i97 ], [ 4, %BN_is_word.exit107 ]
  %i.dz = load i32, ptr %1, align 4, !tbaa !18
  %i.ea = or i32 %i.dz, %.sink164
  store i32 %i.ea, ptr %1, align 4, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %.sink.split162, %BN_mod_word.exit, %BN_mod_word.exit115, %BN_is_one.exit
  %i.eb = load ptr, ptr %0, align 8, !tbaa !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.ec = call i32 @BN_primality_test(ptr noundef nonnull %i.b, ptr noundef readonly %i.eb, i32 noundef 64, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef null)
  %.not.i.i116 = icmp eq i32 %i.ec, 0
  %i.ed = load i32, ptr %i.b, align 4
  %.0.i.i117 = select i1 %.not.i.i116, i32 -1, i32 %i.ed ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.ee = icmp slt i32 %.0.i.i117, 0
  br i1 %i.ee, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not81 = icmp eq i32 %.0.i.i117, 0
  br i1 %.not81, label %.sink.split165, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = load ptr, ptr %i.t, align 8, !tbaa !825
  %.not82 = icmp eq ptr %i.ef, null
  br i1 %.not82, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr %0, align 8, !tbaa !823
  %i.eh = tail call i32 @BN_rshift1(ptr noundef nonnull %i.p, ptr noundef %i.eg)
  %.not83 = icmp eq i32 %i.eh, 0
  br i1 %.not83, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ei = call i32 @BN_primality_test(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.p, i32 noundef 64, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef null)
  %.not.i.i118 = icmp eq i32 %i.ei, 0
  %i.ej = load i32, ptr %i.a, align 4
  %.0.i.i119 = select i1 %.not.i.i118, i32 -1, i32 %i.ej ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ek = icmp slt i32 %.0.i.i119, 0
  br i1 %i.ek, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not84 = icmp eq i32 %.0.i.i119, 0
  br i1 %.not84, label %.sink.split165, label %bb.ad

.sink.split165:                                   ; preds = %bb.ac, %bb.y
  %.sink167 = phi i32 [ 1, %bb.y ], [ 2, %bb.ac ]
  %i.el = load i32, ptr %1, align 4, !tbaa !18
  %i.em = or i32 %i.el, %.sink167
  store i32 %i.em, ptr %1, align 4, !tbaa !18
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split165, %bb.ac, %bb.z, %bb.ab, %bb.aa, %bb.x, %bb.n, %bb.k, %bb.i, %bb.e, %BN_CTX_start.exit
  %.0.ph = phi i32 [ 1, %bb.ac ], [ 0, %bb.k ], [ 1, %bb.z ], [ 0, %BN_CTX_start.exit ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.e ], [ 0, %bb.x ], [ 1, %.sink.split165 ]
  %i.en = load i8, ptr %i.f, align 8, !tbaa !291
  %.not.i120 = icmp eq i8 %i.en, 0
  br i1 %.not.i120, label %bb.ae, label %BN_CTX_free.exit

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load i64, ptr %i.h, align 8, !tbaa !293
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  store i64 %i.ep, ptr %i.h, align 8, !tbaa !293
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !290
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  %i.es = load i64, ptr %i.er, align 8, !tbaa !94
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.es, ptr %i.et, align 8, !tbaa !292
  br label %BN_CTX_free.exit

BN_CTX_free.exit:                                 ; preds = %bb.ad, %bb.ae
  %i.eu = load ptr, ptr %i.e, align 8, !tbaa !286
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.eu, ptr noundef nonnull @_Z24sk_BIGNUM_call_free_funcPFvPvES_, ptr noundef nonnull @BN_free) #36
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !290
  tail call void @OPENSSL_free(ptr noundef %.val.i) #36
  tail call void @OPENSSL_free(ptr noundef nonnull %i.e) #36
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %BN_CTX_free.exit, %bb.a
  %.063 = phi i32 [ 0, %bb.a ], [ %.0.ph, %BN_CTX_free.exit ], [ 0, %bb.b ]
  ret i32 %.063
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @DH_new() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 120) #36 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @CRYPTO_MUTEX_init(ptr noundef nonnull %i.c) #36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i32 1, ptr %i.d, align 4, !tbaa !841
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare void @CRYPTO_MUTEX_init(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @DH_free(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.c = tail call i32 @CRYPTO_refcount_dec_and_test_zero(ptr noundef nonnull %i.b) #36
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !842
  tail call void @BN_MONT_CTX_free(ptr noundef %i.e)
  %i.f = load ptr, ptr %0, align 8, !tbaa !823    ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %BN_clear_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !198  ; 2 uses
  %i.j = and i32 %i.i, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.l) #36
  %.pre.i.i = load i32, ptr %i.h, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %.pre.i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.n = and i32 %i.m, 1
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @OPENSSL_free(ptr noundef nonnull %i.f) #36
  br label %BN_clear_free.exit

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.f, align 8, !tbaa !185
  br label %BN_clear_free.exit

BN_clear_free.exit:                               ; preds = %bb.c, %bb.g, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !830  ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %BN_clear_free.exit12, label %bb.i

bb.i:                                             ; preds = %BN_clear_free.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 2
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.v) #36
  %.pre.i.i11 = load i32, ptr %i.r, align 4, !tbaa !198
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi i32 [ %.pre.i.i11, %bb.j ], [ %i.s, %bb.i ]
  %i.x = and i32 %i.w, 1
  %.not.i.i10 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @OPENSSL_free(ptr noundef nonnull %i.p) #36
  br label %BN_clear_free.exit12

bb.m:                                             ; preds = %bb.k
  store ptr null, ptr %i.p, align 8, !tbaa !185
  br label %BN_clear_free.exit12

BN_clear_free.exit12:                             ; preds = %BN_clear_free.exit, %bb.l, %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !825  ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %BN_clear_free.exit15, label %bb.n

bb.n:                                             ; preds = %BN_clear_free.exit12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !198 ; 2 uses
  %i.ad = and i32 %i.ac, 2
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %bb.p

end_hunk_0
