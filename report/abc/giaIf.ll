Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIf?download=true
inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 85
begin_hunk_0_@Gia_ManFromIfLogicHop:bb.a
  %.not.i7.i = icmp eq i32 %i.ai, 0
  %i.aj = icmp sgt i32 %i.ah, 0                   ; 2 uses
  br i1 %.not.i7.i, label %.preheader.i.i, label %.preheader14.i.i

.preheader14.i.i:                                 ; preds = %If_CutTruthWR.exit.i
  br i1 %i.aj, label %.lr.ph.preheader.i.i, label %If_CutTruthW.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader14.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ah, 6
  %i.ak = sub i64 %i.ae, %i.f
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8, !tbaa !110
  %wide.load159 = load <2 x i64>, ptr %i.am, align 8, !tbaa !110
  %i.an = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ao = xor <2 x i64> %wide.load159, splat (i64 -1)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %i.an, ptr %i.ap, align 8, !tbaa !110
  store <2 x i64> %i.ao, ptr %i.aq, align 8, !tbaa !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %If_CutTruthW.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.prol
  %i.at = load i64, ptr %i.as, align 8, !tbaa !110
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i.prol
  store i64 %i.au, ptr %i.av, align 8, !tbaa !110
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !249

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %If_CutTruthW.exit, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %If_CutTruthWR.exit.i
  br i1 %i.aj, label %.lr.ph18.preheader.i.i, label %If_CutTruthW.exit

.lr.ph18.preheader.i.i:                           ; preds = %.preheader.i.i
  %wide.trip.count24.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check163 = icmp ult i32 %i.ah, 8
  %i.ay = sub i64 %i.ae, %i.f
  %diff.check165 = icmp ugt i64 %i.ay, -32
  %or.cond197 = select i1 %min.iters.check163, i1 true, i1 %diff.check165
  br i1 %or.cond197, label %.lr.ph18.i.i.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %.lr.ph18.preheader.i.i
  %n.vec167 = and i64 %wide.trip.count24.i.i, 2147483644 ; 3 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next172, %vector.body168 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index169 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load170 = load <2 x i64>, ptr %i.az, align 8, !tbaa !110
  %wide.load171 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !110
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index169 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %wide.load170, ptr %i.bb, align 8, !tbaa !110
  store <2 x i64> %wide.load171, ptr %i.bc, align 8, !tbaa !110
  %index.next172 = add nuw i64 %index169, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.bd, label %middle.block173, label %vector.body168, !llvm.loop !250

middle.block173:                                  ; preds = %vector.body168
  %cmp.n174 = icmp eq i64 %n.vec167, %wide.trip.count24.i.i
  br i1 %cmp.n174, label %If_CutTruthW.exit, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i, %middle.block173
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec167, %middle.block173 ] ; 3 uses
  %xtraiter202 = and i64 %wide.trip.count24.i.i, 3 ; 2 uses
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !110
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv21.i.i.prol
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !110
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !251

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.bh = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count24.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %If_CutTruthW.exit, label %.lr.ph18.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !110
  %i.bl = xor i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !110
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !110
  %i.bp = xor i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !110
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.1
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !110
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.1
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !110
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.2
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !110
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.2
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !110
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph.i.i, !llvm.loop !252

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !110
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv21.i.i
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !110
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !110
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next22.i.i
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !110
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.1
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !110
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next22.i.i.1
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !110
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.2
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !110
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next22.i.i.2
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !110
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i.3, label %If_CutTruthW.exit, label %.lr.ph18.i.i, !llvm.loop !253

If_CutTruthW.exit:                                ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %middle.block173, %.preheader14.i.i, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.cl = load i64, ptr %i.h, align 4             ; 2 uses
  %i.cm = lshr i64 %i.cl, 32
  %i.cn = trunc nuw i64 %i.cm to i32
  %i.co = and i32 %i.cn, 65535
  store i32 %i.co, ptr %i.b, align 4, !tbaa !19
  %i.cp = trunc i64 %i.cl to i32
  %i.cq = lshr i32 %i.cp, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !106
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !121
  %i.cv = call i32 @acd_decompose(ptr noundef %i.e, i32 noundef %i.cq, i32 noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !63
  %.not = icmp eq i8 %i.cx, 0
  br i1 %.not, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %If_CutTruthW.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.da = getelementptr i8, ptr %3, i64 8
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph94, %bb.z
  %indvars.iv115 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next116, %bb.z ] ; 2 uses
  %.05792 = phi i32 [ 2, %.lr.ph94 ], [ %.2.lcssa, %bb.z ] ; 2 uses
  %i.db = sext i32 %.05792 to i64
  %i.dc = getelementptr inbounds i8, ptr %i.a, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !63
  %.fr = freeze i8 %i.dd                          ; 6 uses
  store i32 0, ptr %i.cy, align 4, !tbaa !56
  %.15876 = add i32 %.05792, 1                    ; 2 uses
  %.not97 = icmp eq i8 %.fr, 0
  br i1 %.not97, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.c
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !112
  %i.df = sext i32 %.15876 to i64
  br label %.lr.ph84.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dg = sext i32 %.15876 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %i.dg, %.lr.ph.preheader ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %.05577 = phi i8 [ 0, %.lr.ph.preheader ], [ %i.ew, %Vec_IntPush.exit ]
  %i.dh = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !63  ; 2 uses
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %.val66 = load i64, ptr %i.h, align 4
  %i.dk = trunc i64 %.val66 to i32
  %i.dl = lshr i32 %i.dk, 24                      ; 2 uses
  %i.dm = icmp samesign ugt i32 %i.dl, %i.dj
  %i.dn = load i32, ptr %i.cy, align 4, !tbaa !56 ; 13 uses
  %i.do = load i32, ptr %4, align 8, !tbaa !64
  %i.dp = icmp eq i32 %i.dn, %i.do                ; 2 uses
  br i1 %i.dm, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %i.da, align 8, !tbaa !51
  %i.dq = zext i8 %i.di to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !19 ; 3 uses
  br i1 %i.dp, label %bb.e, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.d
  %.pre121 = load ptr, ptr %i.cz, align 8, !tbaa !51
  br label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.dt = icmp slt i32 %i.dn, 16
  br i1 %i.dt, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.du = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.du, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dv = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.du, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.dw = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.dx = icmp samesign ult i32 %i.dn, 1073741823
  %i.dy = shl nuw nsw i32 %i.dn, 1
  %spec.select.i = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.dn, %spec.select.i
  %.pre122 = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %.pre122, null
  %i.dz = zext nneg i32 %spec.select.i to i64
  %i.ea = shl nuw nsw i64 %i.dz, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = call ptr @realloc(ptr noundef nonnull %.pre122, i64 noundef %i.ea) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.ec = call noalias ptr @malloc(i64 noundef %i.ea) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %i.ed = phi ptr [ %i.dw, %bb.h ], [ %i.dv, %bb.g ], [ %i.eb, %bb.k ], [ %i.ec, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ]
  store ptr %i.ed, ptr %i.cz, align 8, !tbaa !51
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !64
  %.pre123 = load i32, ptr %i.cy, align 4, !tbaa !56
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %.lr.ph
  %i.ee = sub nuw nsw i32 %i.dj, %i.dl
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !19 ; 3 uses
  br i1 %i.dp, label %bb.n, label %.Vec_IntPush.exit74_crit_edge

.Vec_IntPush.exit74_crit_edge:                    ; preds = %bb.m
  %.pre = load ptr, ptr %i.cz, align 8, !tbaa !51
  br label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ei = icmp slt i32 %i.dn, 16
  br i1 %i.ei, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ej = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i72 = icmp eq ptr %i.ej, null
  br i1 %.not9.i.i72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ej, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i70

bb.q:                                             ; preds = %bb.o
  %i.el = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i70

bb.r:                                             ; preds = %bb.n
  %i.em = icmp samesign ult i32 %i.dn, 1073741823
  %i.en = shl nuw nsw i32 %i.dn, 1
  %spec.select.i67 = select i1 %i.em, i32 %i.en, i32 2147483647 ; 4 uses
  %.not.i9.i68 = icmp samesign ult i32 %i.dn, %spec.select.i67
  %.pre119 = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i68, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i69 = icmp eq ptr %.pre119, null
  %i.eo = zext nneg i32 %spec.select.i67 to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2                ; 2 uses
  br i1 %.not9.i10.i69, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eq = call ptr @realloc(ptr noundef nonnull %.pre119, i64 noundef %i.ep) #30
  br label %Vec_IntGrow.exit11.sink.split.i70

bb.u:                                             ; preds = %bb.s
  %i.er = call noalias ptr @malloc(i64 noundef %i.ep) #31
  br label %Vec_IntGrow.exit11.sink.split.i70

Vec_IntGrow.exit11.sink.split.i70:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.es = phi ptr [ %i.el, %bb.q ], [ %i.ek, %bb.p ], [ %i.eq, %bb.t ], [ %i.er, %bb.u ] ; 2 uses
  %spec.select.sink.i71 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i67, %bb.t ], [ %spec.select.i67, %bb.u ]
  store ptr %i.es, ptr %i.cz, align 8, !tbaa !51
  store i32 %spec.select.sink.i71, ptr %4, align 8, !tbaa !64
  %.pre120 = load i32, ptr %i.cy, align 4, !tbaa !56
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntGrow.exit11.sink.split.i70, %bb.r, %.Vec_IntPush.exit74_crit_edge, %Vec_IntGrow.exit11.sink.split.i, %bb.i, %.Vec_IntPush.exit_crit_edge
  %.sink157 = phi i32 [ %.pre123, %Vec_IntGrow.exit11.sink.split.i ], [ %i.dn, %.Vec_IntPush.exit_crit_edge ], [ %i.dn, %bb.i ], [ %i.dn, %.Vec_IntPush.exit74_crit_edge ], [ %i.dn, %bb.r ], [ %.pre120, %Vec_IntGrow.exit11.sink.split.i70 ] ; 2 uses
  %.sink153 = phi ptr [ %i.ed, %Vec_IntGrow.exit11.sink.split.i ], [ %.pre121, %.Vec_IntPush.exit_crit_edge ], [ %.pre122, %bb.i ], [ %.pre, %.Vec_IntPush.exit74_crit_edge ], [ %.pre119, %bb.r ], [ %i.es, %Vec_IntGrow.exit11.sink.split.i70 ]
  %.sink = phi i32 [ %i.ds, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ds, %.Vec_IntPush.exit_crit_edge ], [ %i.ds, %bb.i ], [ %i.eh, %.Vec_IntPush.exit74_crit_edge ], [ %i.eh, %bb.r ], [ %i.eh, %Vec_IntGrow.exit11.sink.split.i70 ]
  %i.et = add nsw i32 %.sink157, 1
  store i32 %i.et, ptr %i.cy, align 4, !tbaa !56
  %i.eu = sext i32 %.sink157 to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %.sink153, i64 %i.eu
  store i32 %.sink, ptr %i.ev, align 4, !tbaa !19
  %i.ew = add nuw i8 %.05577, 1                   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %exitcond.not = icmp eq i8 %i.ew, %.fr
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !112 ; 4 uses
  %i.ey = icmp ult i8 %.fr, 4
  br i1 %i.ey, label %.lr.ph84.preheader, label %.split

.split:                                           ; preds = %._crit_edge
  %i.ez = icmp ult i8 %.fr, 7
  %i.fa = zext i8 %.fr to i32                     ; 2 uses
  %i.fb = call i32 @llvm.umin.i32(i32 %i.fa, i32 6)
  %i.fc = add nsw i32 %i.fb, -3
  %i.fd = shl nuw nsw i32 1, %i.fc                ; 3 uses
  br i1 %i.ez, label %.lr.ph84.preheader, label %bb.v

bb.v:                                             ; preds = %.split
  %i.fe = add nsw i32 %i.fa, -6                   ; 2 uses
  %i.ff = shl nuw i32 1, %i.fe
  %i.fg = and i32 %i.ff, 255
  %.not98 = icmp ugt i32 %i.fe, 7
  br i1 %.not98, label %._crit_edge85, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %._crit_edge, %.split, %.thread, %bb.v
  %i.fh = phi i32 [ %i.fg, %bb.v ], [ 1, %.split ], [ 1, %.thread ], [ 1, %._crit_edge ]
  %i.fi = phi ptr [ %i.ex, %bb.v ], [ %i.ex, %.split ], [ %i.de, %.thread ], [ %i.ex, %._crit_edge ] ; 4 uses
  %.158.lcssa138141150 = phi i64 [ %indvars.iv.next, %bb.v ], [ %indvars.iv.next, %.split ], [ %i.df, %.thread ], [ %indvars.iv.next, %._crit_edge ]
  %i.fj = phi i32 [ %i.fd, %bb.v ], [ %i.fd, %.split ], [ 1, %.thread ], [ 1, %._crit_edge ] ; 6 uses
  %wide.trip.count = zext nneg i32 %i.fh to i64   ; 2 uses
  %8 = call i32 @llvm.usub.sat.i32(i32 %i.fj, i32 1) ; 2 uses
  %i.fk = call i32 @llvm.usub.sat.i32(i32 %i.fj, i32 1)
  %i.fl = zext nneg i32 %i.fk to i64
  %scevgep181 = getelementptr i8, ptr %scevgep, i64 %i.fl
  %i.fm = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep.a = getelementptr i8, ptr %i.fi, i64 %i.fm
  %min.iters.check182 = icmp samesign ult i32 %i.fj, 6
  %i.fn = and i32 %8, 255
  %i.fo = icmp eq i32 %i.fn, 255
  %i.fp = icmp samesign ugt i32 %8, 255
  %i.fq = or i1 %i.fo, %i.fp
  %i.fr = and i32 %i.fj, 2147483644
  %n.vec185 = zext nneg i32 %i.fr to i64          ; 2 uses
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.loopexit
  %indvars.iv110 = phi i64 [ 0, %.lr.ph84.preheader ], [ %indvars.iv.next111, %.loopexit ] ; 2 uses
  %.281 = phi i64 [ %.158.lcssa138141150, %.lr.ph84.preheader ], [ %indvars.iv.next108.lcssa, %.loopexit ] ; 5 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv110 ; 3 uses
  store i64 0, ptr %i.fs, align 8, !tbaa !110
  %brmerge = select i1 %min.iters.check182, i1 true, i1 %i.fq
  br i1 %brmerge, label %scalar.ph181.preheader, label %vector.memcheck183

scalar.ph181.preheader:                           ; preds = %.lr.ph84, %vector.memcheck183
  br label %scalar.ph181

vector.memcheck183:                               ; preds = %.lr.ph84
  %i.ft = getelementptr i8, ptr %i.a, i64 %.281
  %gep = getelementptr i8, ptr %scevgep181, i64 %.281
  %bound0 = icmp ult ptr %i.fi, %gep
  %bound1 = icmp ult ptr %i.ft, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph181.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck183
  %i.fu = add i64 %.281, %n.vec185
  %i.fv = getelementptr i8, ptr %i.a, i64 %.281
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next191, %vector.body186 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph184 ], [ %vec.ind.next, %vector.body186 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph184 ], [ %i.ge, %vector.body186 ]
  %vec.phi188 = phi <2 x i64> [ zeroinitializer, %vector.ph184 ], [ %i.gf, %vector.body186 ]
  %i.fw = getelementptr i8, ptr %i.fv, i64 %index187 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %wide.load189 = load <2 x i8>, ptr %i.fw, align 1, !tbaa !63, !alias.scope !263
  %wide.load190 = load <2 x i8>, ptr %i.fx, align 1, !tbaa !63, !alias.scope !263
  %i.fy = zext <2 x i8> %wide.load189 to <2 x i64>
  %i.fz = zext <2 x i8> %wide.load190 to <2 x i64>
  %i.ga = shl nuw nsw <2 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 3)
  %i.gb = add <2 x i64> %step.add, splat (i64 16)
  %i.gc = shl <2 x i64> %i.fy, %i.ga
  %i.gd = shl <2 x i64> %i.fz, %i.gb
  %i.ge = or <2 x i64> %i.gc, %vec.phi            ; 2 uses
  %i.gf = or <2 x i64> %i.gd, %vec.phi188         ; 2 uses
  %index.next191 = add nuw i64 %index187, 4       ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.gg = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.gg, label %middle.block192, label %vector.body186, !llvm.loop !257

middle.block192:                                  ; preds = %vector.body186
  %bin.rdx = or <2 x i64> %i.gf, %i.ge
  %i.gh = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx)
  store i64 %i.gh, ptr %i.fs, align 8, !tbaa !110, !alias.scope !264, !noalias !263
  br label %.loopexit

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %scalar.ph181
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %scalar.ph181 ], [ %.281, %scalar.ph181.preheader ] ; 2 uses
  %indvars.iv105 = phi i32 [ %indvars.iv.next106, %scalar.ph181 ], [ 0, %scalar.ph181.preheader ]
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph181 ], [ 0, %scalar.ph181.preheader ] ; 2 uses
  %i.gi = phi i64 [ %i.go, %scalar.ph181 ], [ 0, %scalar.ph181.preheader ]
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv107
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !63
  %i.gl = zext i8 %i.gk to i64
  %i.gm = shl nuw nsw i64 %indvars.iv103, 3
  %i.gn = shl i64 %i.gl, %i.gm
  %i.go = or i64 %i.gn, %i.gi                     ; 2 uses
  store i64 %i.go, ptr %i.fs, align 8, !tbaa !110
  %indvars.iv.next106 = add i32 %indvars.iv105, 1 ; 2 uses
  %i.gp = and i32 %indvars.iv.next106, 255
  %i.gq = icmp samesign ugt i32 %i.fj, %i.gp
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  br i1 %i.gq, label %scalar.ph181, label %.loopexit, !llvm.loop !259

.loopexit:                                        ; preds = %scalar.ph181, %middle.block192
  %indvars.iv.next108.lcssa = phi i64 [ %i.fu, %middle.block192 ], [ %indvars.iv.next108, %scalar.ph181 ] ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond114.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !260

._crit_edge85:                                    ; preds = %.loopexit, %bb.v
  %i.gr = phi ptr [ %i.ex, %bb.v ], [ %i.fi, %.loopexit ] ; 5 uses
  %i.gs = phi i32 [ %i.fd, %bb.v ], [ %i.fj, %.loopexit ] ; 2 uses
  %.2.lcssa.in = phi i64 [ %indvars.iv.next, %bb.v ], [ %indvars.iv.next108.lcssa, %.loopexit ]
  %.2.lcssa = trunc i64 %.2.lcssa.in to i32
  %i.gt = icmp eq i8 %.fr, 2
  br i1 %i.gt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge85
  %i.gu = load i64, ptr %i.gr, align 8, !tbaa !110 ; 2 uses
  %i.gv = shl i64 %i.gu, 4
  %i.gw = or i64 %i.gv, %i.gu
  store i64 %i.gw, ptr %i.gr, align 8, !tbaa !110
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge85
  %i.gx = icmp samesign ult i32 %i.gs, 4
  br i1 %i.gx, label %.lr.ph89, label %bb.z

.lr.ph89:                                         ; preds = %bb.x
  %.promoted91 = load i64, ptr %i.gr, align 8, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph89, %bb.y
  %i.gy = phi i64 [ %.promoted91, %.lr.ph89 ], [ %i.hc, %bb.y ] ; 2 uses
  %.087 = phi i32 [ %i.gs, %.lr.ph89 ], [ %i.hd, %bb.y ] ; 3 uses
  %i.gz = shl nuw nsw i32 %.087, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl i64 %i.gy, %i.ha
  %i.hc = or i64 %i.hb, %i.gy                     ; 2 uses
  %i.hd = shl nuw nsw i32 %.087, 1
  %i.he = icmp ult i32 %.087, 2
  br i1 %i.he, label %bb.y, label %._crit_edge90, !llvm.loop !261

._crit_edge90:                                    ; preds = %bb.y
  store i64 %i.hc, ptr %i.gr, align 8, !tbaa !110
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge90, %bb.x
  %i.hf = call i32 @Gia_ManFromIfLogicCreateLut(ptr noundef %0, ptr noundef %i.gr, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv115
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !19
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 3 uses
  %i.hh = load i8, ptr %i.cw, align 1, !tbaa !63
  %i.hi = zext i8 %i.hh to i64
  %i.hj = icmp samesign ult i64 %indvars.iv.next116, %i.hi
  br i1 %i.hj, label %bb.c, label %._crit_edge95, !llvm.loop !262

._crit_edge95:                                    ; preds = %bb.z, %If_CutTruthW.exit
  %.056.lcssa = phi i64 [ 0, %If_CutTruthW.exit ], [ %indvars.iv.next116, %bb.z ]
  %i.hk = getelementptr [4 x i8], ptr %i.c, i64 %.056.lcssa
  %i.hl = getelementptr i8, ptr %i.hk, i64 -4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %i.hm
}

declare i32 @acd_decompose(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @Gia_ManNodeIfToGia_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %.val51 = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %.not = icmp eq i32 %.val51, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !96   ; 7 uses
  %i.d = load i32, ptr %3, align 8, !tbaa !266
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %Vec_PtrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.c, 16
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.h, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.h, i64 noundef 128) #30
  br label %Vec_PtrGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  store ptr %i.k, ptr %i.g, align 8, !tbaa !98
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i32 %i.c, 1073741823
  %i.m = shl nuw nsw i32 %i.c, 1
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.c, %spec.select.i
  br i1 %.not.i10.i, label %bb.h, label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.o, null
  %i.p = zext nneg i32 %spec.select.i to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.q) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = phi ptr [ %i.r, %bb.i ], [ %i.s, %bb.j ]
  store ptr %i.t, ptr %i.n, align 8, !tbaa !98
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.k, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !266
  %.pre = load i32, ptr %i.b, align 4, !tbaa !96
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_PtrGrow.exit12.sink.split.i
  %i.u = phi i32 [ %i.c, %bb.b ], [ %i.c, %bb.g ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
