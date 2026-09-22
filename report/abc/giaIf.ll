Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIf?download=true
inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 57
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
  %diff.check161 = icmp ugt i64 %i.ay, -32
  %or.cond194 = select i1 %min.iters.check163, i1 true, i1 %diff.check161
  br i1 %or.cond194, label %.lr.ph18.i.i.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph18.preheader.i.i
  %n.vec165 = and i64 %wide.trip.count24.i.i, 2147483644 ; 3 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next170, %vector.body166 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index167 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load168 = load <2 x i64>, ptr %i.az, align 8, !tbaa !110
  %wide.load169 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !110
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index167 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %wide.load168, ptr %i.bb, align 8, !tbaa !110
  store <2 x i64> %wide.load169, ptr %i.bc, align 8, !tbaa !110
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.bd, label %middle.block171, label %vector.body166, !llvm.loop !250

middle.block171:                                  ; preds = %vector.body166
  %cmp.n172 = icmp eq i64 %n.vec165, %wide.trip.count24.i.i
  br i1 %cmp.n172, label %If_CutTruthW.exit, label %.lr.ph18.i.i.preheader

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i, %middle.block171
  %indvars.iv21.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i ], [ %n.vec165, %middle.block171 ] ; 3 uses
  %xtraiter199 = and i64 %wide.trip.count24.i.i, 3 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader ] ; 3 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !110
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv21.i.i.prol
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !110
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !251

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

If_CutTruthW.exit:                                ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i, %middle.block, %middle.block171, %.preheader14.i.i, %.preheader.i.i
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
  %i.fj = phi i32 [ %i.fd, %bb.v ], [ %i.fd, %.split ], [ 1, %.thread ], [ 1, %._crit_edge ] ; 5 uses
  %wide.trip.count = zext nneg i32 %i.fh to i64   ; 2 uses
  %i.fk = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %i.fi, i64 %i.fk
  %i.fl = zext nneg i32 %i.fj to i64
  %scevgep177.a = getelementptr i8, ptr %i.a, i64 %i.fl
  %8 = add nsw i32 %i.fj, -256
  %or.cond195 = icmp ult i32 %8, -250
  %i.fm = and i32 %i.fj, 252
  %n.vec182 = zext nneg i32 %i.fm to i64          ; 2 uses
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.loopexit
  %indvars.iv110 = phi i64 [ 0, %.lr.ph84.preheader ], [ %indvars.iv.next111, %.loopexit ] ; 2 uses
  %.281 = phi i64 [ %.158.lcssa138141150, %.lr.ph84.preheader ], [ %indvars.iv.next108.lcssa, %.loopexit ] ; 5 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv110 ; 3 uses
  store i64 0, ptr %i.fn, align 8, !tbaa !110
  br i1 %or.cond195, label %scalar.ph179.preheader, label %vector.memcheck174

scalar.ph179.preheader:                           ; preds = %vector.memcheck174, %.lr.ph84
  br label %scalar.ph179

vector.memcheck174:                               ; preds = %.lr.ph84
  %scevgep175 = getelementptr i8, ptr %i.a, i64 %.281
  %scevgep178 = getelementptr i8, ptr %scevgep177.a, i64 %.281
  %bound0 = icmp ult ptr %i.fi, %scevgep178
  %bound1 = icmp ult ptr %scevgep175, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph179.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck174
  %i.fo = add i64 %.281, %n.vec182
  %i.fp = getelementptr i8, ptr %i.a, i64 %.281
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next188, %vector.body183 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph181 ], [ %vec.ind.next, %vector.body183 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph181 ], [ %i.fy, %vector.body183 ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph181 ], [ %i.fz, %vector.body183 ]
  %i.fq = getelementptr i8, ptr %i.fp, i64 %index184 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %wide.load186.a = load <2 x i8>, ptr %i.fq, align 1, !tbaa !63, !alias.scope !263
  %wide.load187 = load <2 x i8>, ptr %i.fr, align 1, !tbaa !63, !alias.scope !263
  %i.fs = zext <2 x i8> %wide.load186.a to <2 x i64>
  %i.ft = zext <2 x i8> %wide.load187 to <2 x i64>
  %i.fu = shl nuw nsw <2 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 3)
  %i.fv = add <2 x i64> %step.add, splat (i64 16)
  %i.fw = shl <2 x i64> %i.fs, %i.fu
  %i.fx = shl <2 x i64> %i.ft, %i.fv
  %i.fy = or <2 x i64> %i.fw, %vec.phi            ; 2 uses
  %i.fz = or <2 x i64> %i.fx, %vec.phi185         ; 2 uses
  %index.next188 = add nuw i64 %index184, 4       ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ga = icmp eq i64 %index.next188, %n.vec182
  br i1 %i.ga, label %middle.block189, label %vector.body183, !llvm.loop !257

middle.block189:                                  ; preds = %vector.body183
  %bin.rdx = or <2 x i64> %i.fz, %i.fy
  %i.gb = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx)
  store i64 %i.gb, ptr %i.fn, align 8, !tbaa !110, !alias.scope !264, !noalias !263
  br label %.loopexit

scalar.ph179:                                     ; preds = %scalar.ph179.preheader, %scalar.ph179
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %scalar.ph179 ], [ %.281, %scalar.ph179.preheader ] ; 2 uses
  %indvars.iv105 = phi i32 [ %indvars.iv.next106, %scalar.ph179 ], [ 0, %scalar.ph179.preheader ]
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph179 ], [ 0, %scalar.ph179.preheader ] ; 2 uses
  %i.gc = phi i64 [ %i.gi, %scalar.ph179 ], [ 0, %scalar.ph179.preheader ]
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv107
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !63
  %i.gf = zext i8 %i.ge to i64
  %i.gg = shl nuw nsw i64 %indvars.iv103, 3
  %i.gh = shl i64 %i.gf, %i.gg
  %i.gi = or i64 %i.gh, %i.gc                     ; 2 uses
  store i64 %i.gi, ptr %i.fn, align 8, !tbaa !110
  %indvars.iv.next106 = add i32 %indvars.iv105, 1 ; 2 uses
  %i.gj = and i32 %indvars.iv.next106, 255
  %i.gk = icmp samesign ugt i32 %i.fj, %i.gj
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  br i1 %i.gk, label %scalar.ph179, label %.loopexit, !llvm.loop !259

.loopexit:                                        ; preds = %scalar.ph179, %middle.block189
  %indvars.iv.next108.lcssa = phi i64 [ %i.fo, %middle.block189 ], [ %indvars.iv.next108, %scalar.ph179 ] ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond114.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !260

._crit_edge85:                                    ; preds = %.loopexit, %bb.v
  %i.gl = phi ptr [ %i.ex, %bb.v ], [ %i.fi, %.loopexit ] ; 5 uses
  %i.gm = phi i32 [ %i.fd, %bb.v ], [ %i.fj, %.loopexit ] ; 2 uses
  %.2.lcssa.in = phi i64 [ %indvars.iv.next, %bb.v ], [ %indvars.iv.next108.lcssa, %.loopexit ]
  %.2.lcssa = trunc i64 %.2.lcssa.in to i32
  %i.gn = icmp eq i8 %.fr, 2
  br i1 %i.gn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge85
  %i.go = load i64, ptr %i.gl, align 8, !tbaa !110 ; 2 uses
  %i.gp = shl i64 %i.go, 4
  %i.gq = or i64 %i.gp, %i.go
  store i64 %i.gq, ptr %i.gl, align 8, !tbaa !110
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge85
  %i.gr = icmp samesign ult i32 %i.gm, 4
  br i1 %i.gr, label %.lr.ph89, label %bb.z

.lr.ph89:                                         ; preds = %bb.x
  %.promoted91 = load i64, ptr %i.gl, align 8, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph89, %bb.y
  %i.gs = phi i64 [ %.promoted91, %.lr.ph89 ], [ %i.gw, %bb.y ] ; 2 uses
  %.087 = phi i32 [ %i.gm, %.lr.ph89 ], [ %i.gx, %bb.y ] ; 3 uses
  %i.gt = shl nuw nsw i32 %.087, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl i64 %i.gs, %i.gu
  %i.gw = or i64 %i.gv, %i.gs                     ; 2 uses
  %i.gx = shl nuw nsw i32 %.087, 1
  %i.gy = icmp ult i32 %.087, 2
  br i1 %i.gy, label %bb.y, label %._crit_edge90, !llvm.loop !261

._crit_edge90:                                    ; preds = %bb.y
  store i64 %i.gw, ptr %i.gl, align 8, !tbaa !110
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge90, %bb.x
  %i.gz = call i32 @Gia_ManFromIfLogicCreateLut(ptr noundef %0, ptr noundef %i.gl, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv115
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !19
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 3 uses
  %i.hb = load i8, ptr %i.cw, align 1, !tbaa !63
  %i.hc = zext i8 %i.hb to i64
  %i.hd = icmp samesign ult i64 %indvars.iv.next116, %i.hc
  br i1 %i.hd, label %bb.c, label %._crit_edge95, !llvm.loop !262

._crit_edge95:                                    ; preds = %bb.z, %If_CutTruthW.exit
  %.056.lcssa = phi i64 [ 0, %If_CutTruthW.exit ], [ %indvars.iv.next116, %bb.z ]
  %i.he = getelementptr [4 x i8], ptr %i.c, i64 %.056.lcssa
  %i.hf = getelementptr i8, ptr %i.he, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %i.hg
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
end_hunk_0
begin_hunk_1_@Abc_TtDeriveBiDecOne:bb.a
  %i.fy = load i64, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.fz = load i64, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !110
  store i64 %i.fz, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !110
  store i64 %i.fy, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !110
  %indvars.iv.next.i.us.us.us.us.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.ga = load i64, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.gb = load i64, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !110
  store i64 %i.gb, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !110
  store i64 %i.ga, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !110
  %indvars.iv.next.i.us.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, label %scalar.ph130, !llvm.loop !500

._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa: ; preds = %scalar.ph130
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i, label %scalar.ph130.epil.preheader

scalar.ph130.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, %scalar.ph130.preheader
  %indvars.iv.i.us.us.us.us.i.epil.init = phi i64 [ 0, %scalar.ph130.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.1, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod150)
  %gep.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gc = load i64, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gd = load i64, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !110
  store i64 %i.gd, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !110
  store i64 %i.gc, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !110
  br label %._crit_edge.us.i.us.us.us.us.i

._crit_edge.us.i.us.us.us.us.i:                   ; preds = %vector.body134, %scalar.ph130.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.ex ; 2 uses
  %i.gf = icmp ult ptr %i.ge, %i.ej
  br i1 %i.gf, label %.preheader.us.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !501

.lr.ph.i.us.us.us.us.i:                           ; preds = %bb.g, %.lr.ph.i.us.us.us.us.i
  %.05462.i.us.us.us.us.i = phi ptr [ %i.gj, %.lr.ph.i.us.us.us.us.i ], [ %i.c, %bb.g ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 4 ; 2 uses
  %i.gh = load <2 x i32>, ptr %i.gg, align 4, !tbaa !19
  %i.gi = shufflevector <2 x i32> %i.gh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gi, ptr %i.gg, align 4, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 16 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %i.ej
  br i1 %i.gk, label %.lr.ph.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !502

.lr.ph64.i.us.us.us.us.i:                         ; preds = %.lr.ph.us.us.i
  %i.gl = trunc nsw i64 %indvars.iv.next104.i to i32
  %i.gm = shl nuw nsw i32 1, %i.gl
  %i.gn = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next104.i ; 3 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !110 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !110 ; 2 uses
  %i.gr = zext nneg i32 %i.gm to i64              ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph64.i.us.us.us.us.i
  %broadcast.splatinsert108 = insertelement <2 x i64> poison, i64 %i.go, i64 0
  %broadcast.splat109 = shufflevector <2 x i64> %broadcast.splatinsert108, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert110 = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %broadcast.splat111 = shufflevector <2 x i64> %broadcast.splatinsert110, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert112 = insertelement <2 x i64> poison, i64 %i.gr, i64 0
  %broadcast.splat113 = shufflevector <2 x i64> %broadcast.splatinsert112, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert114 = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %broadcast.splat115 = shufflevector <2 x i64> %broadcast.splatinsert114, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph106
  %index117 = phi i64 [ 0, %vector.ph106 ], [ %index.next120, %vector.body116 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index117 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load118 = load <2 x i64>, ptr %i.gu, align 16, !tbaa !110 ; 3 uses
  %wide.load119 = load <2 x i64>, ptr %i.gv, align 16, !tbaa !110 ; 3 uses
  %i.gw = and <2 x i64> %wide.load118, %broadcast.splat109
  %i.gx = and <2 x i64> %wide.load119, %broadcast.splat109
  %i.gy = and <2 x i64> %wide.load118, %broadcast.splat111
  %i.gz = and <2 x i64> %wide.load119, %broadcast.splat111
  %i.ha = shl <2 x i64> %i.gy, %broadcast.splat113
  %i.hb = shl <2 x i64> %i.gz, %broadcast.splat113
  %i.hc = or <2 x i64> %i.ha, %i.gw
  %i.hd = or <2 x i64> %i.hb, %i.gx
  %i.he = and <2 x i64> %wide.load118, %broadcast.splat115
  %i.hf = and <2 x i64> %wide.load119, %broadcast.splat115
  %i.hg = lshr <2 x i64> %i.he, %broadcast.splat113
  %i.hh = lshr <2 x i64> %i.hf, %broadcast.splat113
  %i.hi = or <2 x i64> %i.hc, %i.hg
  %i.hj = or <2 x i64> %i.hd, %i.hh
  store <2 x i64> %i.hi, ptr %i.gu, align 16, !tbaa !110
  store <2 x i64> %i.hj, ptr %i.gv, align 16, !tbaa !110
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next120, %n.vec107
  br i1 %i.hk, label %middle.block121, label %vector.body116, !llvm.loop !503

middle.block121:                                  ; preds = %vector.body116
  br i1 %cmp.n122, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %.lr.ph64.i.us.us.us.us.i, %middle.block121
  %indvars.iv70.i.us.us.us.us.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i ], [ %n.vec107, %middle.block121 ]
  br label %scalar.ph104

scalar.ph104:                                     ; preds = %scalar.ph104.preheader, %scalar.ph104
  %indvars.iv70.i.us.us.us.us.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i, %scalar.ph104 ], [ %indvars.iv70.i.us.us.us.us.i.ph, %scalar.ph104.preheader ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv70.i.us.us.us.us.i ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !110 ; 3 uses
  %i.hn = and i64 %i.hm, %i.go
  %i.ho = and i64 %i.hm, %i.gq
  %i.hp = shl i64 %i.ho, %i.gr
  %i.hq = or i64 %i.hp, %i.hn
  %i.hr = and i64 %i.hm, %i.gt
  %i.hs = lshr i64 %i.hr, %i.gr
  %i.ht = or i64 %i.hq, %i.hs
  store i64 %i.ht, ptr %i.hl, align 8, !tbaa !110
  %indvars.iv.next71.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph104, !llvm.loop !504

Abc_TtSwapAdjacent.exit.us.us.us.us.i:            ; preds = %._crit_edge.us.i.us.us.us.us.i, %.lr.ph.i.us.us.us.us.i, %scalar.ph104, %middle.block121, %.preheader.lr.ph.i.us.us.us.us.i
  %.not15.not.us.us.us.us.i = icmp sgt i64 %indvars.iv.next104.i, %i.en
  br i1 %.not15.not.us.us.us.us.i, label %.lr.ph.us.us.i, label %._crit_edge.split.us.us.split.us.us.i, !llvm.loop !505

._crit_edge.split.us.us.split.us.us.i:            ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.preheader.us.us.i
  %i.hu = add nsw i32 %.056.us.us.i, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.split.us.us.split.us.us.i, %.lr.ph61.split.us.split.us.i
  %.1.us.us.i = phi i32 [ %i.hu, %._crit_edge.split.us.us.split.us.us.i ], [ %.056.us.us.i, %.lr.ph61.split.us.split.us.i ]
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count107.i
  br i1 %exitcond108.not.i, label %Abc_TtShrink.exit, label %.lr.ph61.split.us.split.us.i, !llvm.loop !506

Abc_TtShrink.exit:                                ; preds = %bb.h, %Abc_TtCopy.exit, %.lr.ph61.i
  %i.hv = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 range(i32 0, 65536) %2) ; 5 uses
  %i.hw = load i64, ptr %i.c, align 16, !tbaa !110 ; 7 uses
  %i.hx = icmp eq i32 %2, 0
  %i.hy = trunc i64 %i.hw to i1
  %i.hz = select i1 %i.hy, i64 3, i64 0
  %i.ia = icmp samesign ult i32 %i.hv, 2
  %i.ib = and i64 %i.hw, 3
  %i.ic = select i1 %i.hx, i64 %i.hz, i64 %i.ib
  %i.id = mul nuw nsw i64 %i.ic, 5
  %.126.i = select i1 %i.ia, i64 %i.id, i64 %i.hw
  %i.ie = icmp samesign ult i32 %i.hv, 3
  %i.if = and i64 %.126.i, 15
  %i.ig = mul nuw nsw i64 %i.if, 17
  %.227.i = select i1 %i.ie, i64 %i.ig, i64 %i.hw
  %i.ih = icmp samesign ult i32 %i.hv, 4
  %i.ii = and i64 %.227.i, 255
  %i.ij = mul nuw nsw i64 %i.ii, 257
  %.328.i = select i1 %i.ih, i64 %i.ij, i64 %i.hw
  %i.ik = icmp samesign ult i32 %i.hv, 5
  %i.il = and i64 %.328.i, 65535
  %i.im = mul nuw nsw i64 %i.il, 65537
  %.429.i = select i1 %i.ik, i64 %i.im, i64 %i.hw
  %i.in = icmp samesign ult i32 %i.hv, 6
  %i.io = and i64 %.429.i, 4294967295
  %i.ip = mul nuw i64 %i.io, 4294967297
  %.5.i = select i1 %i.in, i64 %i.ip, i64 %i.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  ret i64 %.5.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v6i16(<6 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold noreturn nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !52}
!1 = distinct !{!1, !52}
!2 = distinct !{!2, !52}
!3 = distinct !{!3, !52}
!4 = distinct !{!4, !52}
!5 = distinct !{!5, !52}
!6 = distinct !{!6, !52}
!7 = distinct !{!7, !52}
!8 = distinct !{!8, !52}
!9 = distinct !{!9, !52}
!10 = distinct !{!10, !52}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!16, !16, i64 0}
!20 = !{!"float", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !15, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"p1 _ZTS12If_LibLut_t_", !22, i64 0}
!25 = !{!"p1 _ZTS13If_LibCell_t_", !22, i64 0}
!26 = !{!"p1 float", !22, i64 0}
!27 = !{!"If_Par_t_", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !20, i64 24, !20, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !16, i64 128, !16, i64 132, !16, i64 136, !16, i64 140, !16, i64 144, !16, i64 148, !16, i64 152, !16, i64 156, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !23, i64 208, !16, i64 216, !20, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !16, i64 240, !16, i64 244, !16, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !16, i64 272, !16, i64 276, !20, i64 280, !20, i64 284, !20, i64 288, !24, i64 296, !25, i64 304, !26, i64 312, !26, i64 320, !22, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368}
!28 = !{!27, !16, i64 64}
!29 = !{!27, !16, i64 84}
!30 = !{!27, !23, i64 208}
!31 = !{!"p1 _ZTS10Gia_Obj_t_", !22, i64 0}
!32 = !{!"p1 int", !22, i64 0}
!33 = !{!"p1 _ZTS10Vec_Int_t_", !22, i64 0}
!34 = !{!"Vec_Int_t_", !16, i64 0, !16, i64 4, !32, i64 8}
!35 = !{!"p1 _ZTS10Gia_Rpr_t_", !22, i64 0}
!36 = !{!"p1 _ZTS10Vec_Wec_t_", !22, i64 0}
!37 = !{!"p1 _ZTS10Vec_Str_t_", !22, i64 0}
!38 = !{!"p1 _ZTS10Abc_Cex_t_", !22, i64 0}
!39 = !{!"p1 _ZTS10Vec_Ptr_t_", !22, i64 0}
!40 = !{!"p1 _ZTS10Gia_Plc_t_", !22, i64 0}
!41 = !{!"p1 _ZTS10Gia_Man_t_", !22, i64 0}
!42 = !{!"p1 _ZTS10Vec_Flt_t_", !22, i64 0}
!43 = !{!"p1 _ZTS10Vec_Vec_t_", !22, i64 0}
!44 = !{!"long", !15, i64 0}
!45 = !{!"p1 _ZTS10Vec_Wrd_t_", !22, i64 0}
!46 = !{!"p1 _ZTS10Vec_Bit_t_", !22, i64 0}
!47 = !{!"p1 _ZTS10Gia_Dat_t_", !22, i64 0}
!48 = !{!"Gia_Man_t_", !23, i64 0, !23, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !31, i64 32, !32, i64 40, !16, i64 48, !16, i64 52, !16, i64 56, !33, i64 64, !33, i64 72, !34, i64 80, !34, i64 96, !16, i64 112, !16, i64 116, !16, i64 120, !34, i64 128, !32, i64 144, !32, i64 152, !33, i64 160, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !32, i64 184, !35, i64 192, !32, i64 200, !32, i64 208, !32, i64 216, !16, i64 224, !16, i64 228, !32, i64 232, !16, i64 240, !33, i64 248, !33, i64 256, !33, i64 264, !36, i64 272, !36, i64 280, !33, i64 288, !22, i64 296, !33, i64 304, !33, i64 312, !37, i64 320, !23, i64 328, !33, i64 336, !33, i64 344, !33, i64 352, !33, i64 360, !33, i64 368, !38, i64 376, !38, i64 384, !39, i64 392, !34, i64 400, !34, i64 416, !33, i64 432, !33, i64 440, !33, i64 448, !33, i64 456, !33, i64 464, !33, i64 472, !33, i64 480, !33, i64 488, !33, i64 496, !33, i64 504, !33, i64 512, !23, i64 520, !40, i64 528, !41, i64 536, !42, i64 544, !42, i64 552, !33, i64 560, !33, i64 568, !33, i64 576, !33, i64 584, !33, i64 592, !16, i64 600, !20, i64 604, !20, i64 608, !33, i64 616, !32, i64 624, !16, i64 632, !39, i64 640, !39, i64 648, !39, i64 656, !33, i64 664, !33, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !33, i64 704, !33, i64 712, !33, i64 720, !33, i64 728, !43, i64 736, !42, i64 744, !22, i64 752, !22, i64 760, !22, i64 768, !44, i64 776, !44, i64 784, !22, i64 792, !32, i64 800, !16, i64 808, !16, i64 812, !16, i64 816, !16, i64 820, !16, i64 824, !16, i64 828, !16, i64 832, !16, i64 836, !16, i64 840, !16, i64 844, !16, i64 848, !16, i64 852, !45, i64 856, !45, i64 864, !45, i64 872, !45, i64 880, !33, i64 888, !33, i64 896, !33, i64 904, !46, i64 912, !16, i64 920, !16, i64 924, !16, i64 928, !33, i64 936, !16, i64 944, !16, i64 948, !33, i64 952, !33, i64 960, !39, i64 968, !45, i64 976, !33, i64 984, !33, i64 992, !16, i64 1000, !16, i64 1004, !45, i64 1008, !34, i64 1016, !34, i64 1032, !34, i64 1048, !47, i64 1064, !37, i64 1072, !37, i64 1080, !16, i64 1088, !16, i64 1092, !16, i64 1096, !16, i64 1100, !37, i64 1104, !33, i64 1112, !33, i64 1120, !33, i64 1128, !39, i64 1136}
!49 = !{!48, !16, i64 24}
!50 = !{!48, !33, i64 264}
!51 = !{!34, !32, i64 8}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!48, !33, i64 72}
!56 = !{!34, !16, i64 4}
!57 = !{!48, !31, i64 32}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!48, !22, i64 752}
!60 = !{!31, !31, i64 0}
!61 = !{!"Vec_Str_t_", !16, i64 0, !16, i64 4, !23, i64 8}
!62 = !{!61, !23, i64 8}
!63 = !{!15, !15, i64 0}
!64 = !{!34, !16, i64 0}
!65 = !{!48, !33, i64 64}
!66 = !{!61, !16, i64 0}
!67 = !{!61, !16, i64 4}
!68 = !{!48, !16, i64 176}
!69 = !{!48, !32, i64 624}
!70 = !{!48, !23, i64 0}
!71 = !{!48, !16, i64 16}
!72 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!48, !33, i64 304}
!75 = !{!48, !33, i64 160}
!76 = !{!48, !32, i64 208}
!77 = !{!"p1 _ZTS9If_Obj_t_", !22, i64 0}
!78 = !{!"p1 _ZTS9If_Set_t_", !22, i64 0}
!79 = !{!"If_Cut_t_", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !44, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 37, !16, i64 37, !16, i64 37, !16, i64 37, !16, i64 38, !16, i64 39, !16, i64 40, !15, i64 44}
!80 = !{!"If_Obj_t_", !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !77, i64 24, !77, i64 32, !77, i64 40, !20, i64 48, !20, i64 52, !20, i64 56, !15, i64 64, !78, i64 72, !79, i64 80}
!81 = !{!80, !77, i64 24}
!82 = !{!80, !77, i64 32}
!83 = !{!80, !77, i64 40}
!84 = !{!"p1 _ZTS9If_Par_t_", !22, i64 0}
!85 = !{!"p1 long", !22, i64 0}
!86 = !{!"p1 _ZTS12Mem_Fixed_t_", !22, i64 0}
!87 = !{!"p1 _ZTS12If_DsdMan_t_", !22, i64 0}
!88 = !{!"p1 _ZTS14Hash_IntMan_t_", !22, i64 0}
!89 = !{!"p1 _ZTS10Vec_Mem_t_", !22, i64 0}
!90 = !{!"p1 _ZTS9If_Cut_t_", !22, i64 0}
!91 = !{!"p1 _ZTS10Tim_Man_t_", !22, i64 0}
!92 = !{!"If_Man_t_", !23, i64 0, !84, i64 8, !77, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !15, i64 64, !16, i64 84, !20, i64 88, !20, i64 92, !20, i64 96, !20, i64 100, !16, i64 104, !20, i64 108, !16, i64 112, !16, i64 116, !15, i64 120, !85, i64 152, !16, i64 160, !16, i64 164, !16, i64 168, !33, i64 176, !15, i64 184, !16, i64 568, !16, i64 572, !16, i64 576, !33, i64 584, !33, i64 592, !45, i64 600, !45, i64 608, !45, i64 616, !39, i64 624, !33, i64 632, !16, i64 640, !16, i64 644, !16, i64 648, !15, i64 652, !16, i64 716, !16, i64 720, !16, i64 724, !16, i64 728, !86, i64 736, !86, i64 744, !78, i64 752, !78, i64 760, !78, i64 768, !16, i64 776, !16, i64 780, !15, i64 784, !15, i64 912, !16, i64 1040, !16, i64 1044, !16, i64 1048, !16, i64 1052, !87, i64 1056, !15, i64 1064, !15, i64 1192, !15, i64 1320, !15, i64 1448, !15, i64 1576, !15, i64 1704, !15, i64 1832, !88, i64 1960, !33, i64 1968, !37, i64 1976, !89, i64 1984, !15, i64 1992, !16, i64 2024, !16, i64 2028, !16, i64 2032, !15, i64 2040, !15, i64 2088, !15, i64 2096, !33, i64 2104, !15, i64 2112, !39, i64 2176, !22, i64 2184, !33, i64 2192, !15, i64 2200, !37, i64 2264, !33, i64 2272, !33, i64 2280, !33, i64 2288, !77, i64 2296, !90, i64 2304, !16, i64 2312, !15, i64 2316, !15, i64 2444, !20, i64 2572, !16, i64 2576, !91, i64 2584, !33, i64 2592, !15, i64 2600, !15, i64 2608, !15, i64 2616, !86, i64 2632}
!93 = !{!92, !39, i64 40}
!94 = !{!"any p2 pointer", !22, i64 0}
!95 = !{!"Vec_Ptr_t_", !16, i64 0, !16, i64 4, !94, i64 8}
!96 = !{!95, !16, i64 4}
!97 = !{!92, !39, i64 32}
!98 = !{!95, !94, i64 8}
!99 = !{!22, !22, i64 0}
!100 = !{!92, !23, i64 0}
!101 = !{!80, !16, i64 4}
!102 = !{!"Gia_Obj_t_", !16, i64 0, !16, i64 3, !16, i64 3, !16, i64 3, !16, i64 4, !16, i64 7, !16, i64 7, !16, i64 7, !16, i64 8}
!103 = !{!102, !16, i64 8}
!104 = !{!48, !32, i64 232}
!105 = !{!80, !16, i64 12}
!106 = !{!92, !84, i64 8}
!107 = !{!27, !16, i64 88}
!108 = !{!27, !16, i64 100}
!109 = !{!27, !16, i64 104}
!110 = !{!44, !44, i64 0}
!111 = !{!85, !85, i64 0}
!112 = !{!92, !85, i64 152}
!113 = !{!89, !89, i64 0}
!114 = !{!79, !16, i64 24}
!115 = !{!"p2 long", !94, i64 0}
!116 = !{!"Vec_Mem_t_", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !115, i64 24, !33, i64 32, !33, i64 40}
!117 = !{!116, !115, i64 24}
!118 = !{!116, !16, i64 8}
!119 = !{!116, !16, i64 0}
!120 = !{!116, !16, i64 12}
!121 = !{!27, !16, i64 48}
!122 = !{!27, !16, i64 92}
!123 = !{!79, !16, i64 28}
!124 = !{!92, !87, i64 1056}
!125 = !{!33, !33, i64 0}
!126 = !{!37, !37, i64 0}
!127 = !{!27, !16, i64 204}
!128 = !{!27, !16, i64 176}
!129 = !{!27, !16, i64 128}
!130 = !{!27, !16, i64 164}
!131 = !{!27, !16, i64 108}
!132 = !{!27, !16, i64 148}
!133 = !{!27, !16, i64 0}
!134 = !{!27, !16, i64 232}
!135 = !{!27, !22, i64 352}
!136 = !{!79, !20, i64 12}
!137 = !{!48, !33, i64 312}
!138 = !{!48, !23, i64 328}
!139 = !{!48, !37, i64 320}
!140 = !{!48, !33, i64 560}
!141 = !{!48, !33, i64 568}
!142 = !{!48, !33, i64 576}
!143 = !{!48, !33, i64 584}
!144 = !{!48, !16, i64 600}
!145 = !{!48, !23, i64 8}
!146 = !{!27, !16, i64 4}
!147 = !{!27, !16, i64 32}
!148 = !{!27, !16, i64 200}
!149 = !{!27, !16, i64 52}
!150 = !{!27, !16, i64 60}
!151 = !{!27, !16, i64 76}
!152 = !{!27, !16, i64 256}
!153 = !{!27, !16, i64 272}
!154 = !{!27, !16, i64 276}
!155 = distinct !{!155, !52}
!156 = distinct !{!156, !52, !53, !54}
!157 = distinct !{!157, !52, !54, !53}
!158 = distinct !{!158, !52}
!159 = distinct !{!159, !58}
!160 = distinct !{!160, !52}
end_hunk_1
