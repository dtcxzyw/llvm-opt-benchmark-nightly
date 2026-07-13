inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@backdp:bb.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.i ; 5 uses
  %xtraiter = and i32 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.08.i.prol = phi ptr [ %i.l, %.prol.preheader ], [ %.val193, %.lr.ph.i ] ; 2 uses
  %.065.i.prol = phi ptr [ %i.r, %.prol.preheader ], [ %9, %.lr.ph.i ] ; 2 uses
  %.074.i.prol = phi i32 [ %i.k, %.prol.preheader ], [ %4, %.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.k = add nsw i32 %.074.i.prol, -1             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  %i.m = load i8, ptr %.08.i.prol, align 1, !tbaa !11
  %i.n = sext i8 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = sitofp i32 %i.p to float
  %i.r = getelementptr inbounds nuw i8, ptr %.065.i.prol, i64 4 ; 2 uses
  store float %i.q, ptr %.065.i.prol, align 4, !tbaa !12
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.08.i.unr = phi ptr [ %.val193, %.lr.ph.i ], [ %i.l, %.prol.preheader ]
  %.065.i.unr = phi ptr [ %9, %.lr.ph.i ], [ %i.r, %.prol.preheader ]
  %.074.i.unr = phi i32 [ %4, %.lr.ph.i ], [ %i.k, %.prol.preheader ]
  %i.s = icmp ult i32 %4, 4
  br i1 %i.s, label %match_calc.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.08.i = phi ptr [ %i.ap, %.lr.ph.i.new ], [ %.08.i.unr, %.prol.loopexit ] ; 5 uses
  %.065.i = phi ptr [ %i.av, %.lr.ph.i.new ], [ %.065.i.unr, %.prol.loopexit ] ; 5 uses
  %.074.i = phi i32 [ %i.ao, %.lr.ph.i.new ], [ %.074.i.unr, %.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.u = load i8, ptr %.08.i, align 1, !tbaa !11
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sitofp i32 %i.x to float
  %i.z = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  store float %i.y, ptr %.065.i, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !11
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sitofp i32 %i.ae to float
  %i.ag = getelementptr inbounds nuw i8, ptr %.065.i, i64 8
  store float %i.af, ptr %i.z, align 4, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = sitofp i32 %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %.065.i, i64 12
  store float %i.am, ptr %i.ag, align 4, !tbaa !12
  %i.ao = add nsw i32 %.074.i, -4                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  %i.aq = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sitofp i32 %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %.065.i, i64 16
  store float %i.au, ptr %i.an, align 4, !tbaa !12
  %.not.i.3 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.3, label %match_calc.exit, label %.lr.ph.i.new, !llvm.loop !16

match_calc.exit:                                  ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.a
  %i.aw = add i32 %4, -1                          ; 5 uses
  %.not3.i194 = icmp eq i32 %5, 0                 ; 2 uses
  br i1 %.not3.i194, label %match_calc.exit200, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %match_calc.exit
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.val193, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = sext i8 %i.az to i64
  %i.bb = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ba ; 5 uses
  %xtraiter284 = and i32 %5, 3                    ; 2 uses
  %lcmp.mod285.not = icmp eq i32 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %.prol.loopexit283, label %.prol.preheader282

.prol.preheader282:                               ; preds = %.lr.ph.i195, %.prol.preheader282
  %.08.i196.prol = phi ptr [ %i.bd, %.prol.preheader282 ], [ %.val192, %.lr.ph.i195 ] ; 2 uses
  %.065.i197.prol = phi ptr [ %i.bj, %.prol.preheader282 ], [ %7, %.lr.ph.i195 ] ; 2 uses
  %.074.i198.prol = phi i32 [ %i.bc, %.prol.preheader282 ], [ %5, %.lr.ph.i195 ]
  %prol.iter286 = phi i32 [ %prol.iter286.next, %.prol.preheader282 ], [ 0, %.lr.ph.i195 ]
  %i.bc = add nsw i32 %.074.i198.prol, -1         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i196.prol, i64 1 ; 2 uses
  %i.be = load i8, ptr %.08.i196.prol, align 1, !tbaa !11
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = sitofp i32 %i.bh to float
  %i.bj = getelementptr inbounds nuw i8, ptr %.065.i197.prol, i64 4 ; 2 uses
  store float %i.bi, ptr %.065.i197.prol, align 4, !tbaa !12
  %prol.iter286.next = add i32 %prol.iter286, 1   ; 2 uses
  %prol.iter286.cmp.not = icmp eq i32 %prol.iter286.next, %xtraiter284
  br i1 %prol.iter286.cmp.not, label %.prol.loopexit283, label %.prol.preheader282, !llvm.loop !18

.prol.loopexit283:                                ; preds = %.prol.preheader282, %.lr.ph.i195
  %.08.i196.unr = phi ptr [ %.val192, %.lr.ph.i195 ], [ %i.bd, %.prol.preheader282 ]
  %.065.i197.unr = phi ptr [ %7, %.lr.ph.i195 ], [ %i.bj, %.prol.preheader282 ]
  %.074.i198.unr = phi i32 [ %5, %.lr.ph.i195 ], [ %i.bc, %.prol.preheader282 ]
  %i.bk = icmp ult i32 %5, 4
  br i1 %i.bk, label %match_calc.exit200, label %.lr.ph.i195.new

.lr.ph.i195.new:                                  ; preds = %.prol.loopexit283, %.lr.ph.i195.new
  %.08.i196 = phi ptr [ %i.ch, %.lr.ph.i195.new ], [ %.08.i196.unr, %.prol.loopexit283 ] ; 5 uses
  %.065.i197 = phi ptr [ %i.cn, %.lr.ph.i195.new ], [ %.065.i197.unr, %.prol.loopexit283 ] ; 5 uses
  %.074.i198 = phi i32 [ %i.cg, %.lr.ph.i195.new ], [ %.074.i198.unr, %.prol.loopexit283 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i196, i64 1
  %i.bm = load i8, ptr %.08.i196, align 1, !tbaa !11
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = sitofp i32 %i.bp to float
  %i.br = getelementptr inbounds nuw i8, ptr %.065.i197, i64 4
  store float %i.bq, ptr %.065.i197, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i196, i64 2
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = sitofp i32 %i.bw to float
  %i.by = getelementptr inbounds nuw i8, ptr %.065.i197, i64 8
  store float %i.bx, ptr %i.br, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i196, i64 3
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !11
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = sitofp i32 %i.cd to float
  %i.cf = getelementptr inbounds nuw i8, ptr %.065.i197, i64 12
  store float %i.ce, ptr %i.by, align 4, !tbaa !12
  %i.cg = add nsw i32 %.074.i198, -4              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i196, i64 4
  %i.ci = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cj = sext i8 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = getelementptr inbounds nuw i8, ptr %.065.i197, i64 16
  store float %i.cm, ptr %i.cf, align 4, !tbaa !12
  %.not.i199.3 = icmp eq i32 %i.cg, 0
  br i1 %.not.i199.3, label %match_calc.exit200, label %.lr.ph.i195.new, !llvm.loop !16

match_calc.exit200:                               ; preds = %.prol.loopexit283, %.lr.ph.i195.new, %match_calc.exit
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef %4) #11 ; 0 uses
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %5) #11 ; 0 uses
  tail call fastcc void @extendmseq(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %12, i32 noundef %13, i32 noundef %4, i32 noundef %5)
  %i.cs = icmp sgt i32 %4, 1                      ; 2 uses
  br i1 %i.cs, label %.lr.ph, label %.preheader210

.lr.ph:                                           ; preds = %match_calc.exit200
  %i.ct = sext i32 %i.e to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aw to i64   ; 2 uses
  %xtraiter287 = and i64 %wide.trip.count, 1
  %i.cu = icmp eq i32 %i.aw, 1
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader210.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %.preheader210, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader210.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader210.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod289 = trunc i32 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod289)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.epil.init ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !12
  %i.cx = fadd float %i.cw, %i.d
  store float %i.cx, ptr %i.cv, align 4, !tbaa !12
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ct ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !12
  %i.dc = fadd float %i.db, %i.d
  store float %i.dc, ptr %i.da, align 4, !tbaa !12
  br label %.preheader210

.preheader210:                                    ; preds = %.epil.preheader, %.preheader210.loopexit.unr-lcssa, %match_calc.exit200
  %i.dd = icmp sgt i32 %5, 1                      ; 2 uses
  br i1 %i.dd, label %.lr.ph213, label %.preheader

.lr.ph213:                                        ; preds = %.preheader210
  %i.de = sext i32 %i.aw to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %0, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !21 ; 6 uses
  %wide.trip.count244 = zext i32 %i.e to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %5, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph213
  %i.dh = shl nuw nsw i64 %wide.trip.count244, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.dh
  %scevgep263 = getelementptr i8, ptr %i.dg, i64 %i.dh
  %bound0 = icmp ult ptr %7, %scevgep263
  %bound1 = icmp ult ptr %i.dg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count244, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.di, align 4, !tbaa !12, !alias.scope !23, !noalias !26
  %wide.load264 = load <4 x float>, ptr %i.dj, align 4, !tbaa !12, !alias.scope !23, !noalias !26
  %i.dk = fadd <4 x float> %wide.load, %broadcast.splat
  %i.dl = fadd <4 x float> %wide.load264, %broadcast.splat
  store <4 x float> %i.dk, ptr %i.di, align 4, !tbaa !12, !alias.scope !23, !noalias !26
  store <4 x float> %i.dl, ptr %i.dj, align 4, !tbaa !12, !alias.scope !23, !noalias !26
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load265 = load <4 x float>, ptr %i.dm, align 4, !tbaa !12, !alias.scope !26
  %wide.load266 = load <4 x float>, ptr %i.dn, align 4, !tbaa !12, !alias.scope !26
  %i.do = fadd <4 x float> %wide.load265, %broadcast.splat
  %i.dp = fadd <4 x float> %wide.load266, %broadcast.splat
  store <4 x float> %i.do, ptr %i.dm, align 4, !tbaa !12, !alias.scope !26
  store <4 x float> %i.dp, ptr %i.dn, align 4, !tbaa !12, !alias.scope !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count244
  br i1 %cmp.n, label %.lr.ph215.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph213, %middle.block
  %indvars.iv241.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph213 ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter290 = and i64 %wide.trip.count244, 1
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv241.ph ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !12
  %i.dt = fadd float %i.ds, %i.d
  store float %i.dt, ptr %i.dr, align 4, !tbaa !12
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv241.ph ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
  %i.dw = fadd float %i.dv, %i.d
  store float %i.dw, ptr %i.du, align 4, !tbaa !12
  %indvars.iv.next242.prol = or disjoint i64 %indvars.iv241.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv241.unr = phi i64 [ %indvars.iv241.ph, %scalar.ph.preheader ], [ %indvars.iv.next242.prol, %scalar.ph.prol ]
  %i.dx = add nsw i64 %wide.trip.count244, -1
  %i.dy = icmp eq i64 %indvars.iv241.ph, %i.dx
  br i1 %i.dy, label %.lr.ph215.preheader, label %scalar.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fadd float %i.ea, %i.d
  store float %i.eb, ptr %i.dz, align 4, !tbaa !12
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !21
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ct ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !12
  %i.eg = fadd float %i.ef, %i.d
  store float %i.eg, ptr %i.ee, align 4, !tbaa !12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fadd float %i.ei, %i.d
  store float %i.ej, ptr %i.eh, align 4, !tbaa !12
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !21
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ct ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !12
  %i.eo = fadd float %i.en, %i.d
  store float %i.eo, ptr %i.em, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader210.loopexit.unr-lcssa, label %bb.b, !llvm.loop !31

.lr.ph215.preheader:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ep = zext nneg i32 %i.e to i64               ; 4 uses
  %18 = zext nneg i32 %5 to i64
  %i.eq = icmp ne i32 %i.e, 0
  %umin.neg = sext i1 %i.eq to i64
  %i.er = add nsw i64 %umin.neg, %18              ; 3 uses
  %min.iters.check269 = icmp ult i64 %i.er, 8
  br i1 %min.iters.check269, label %.lr.ph215.preheader281, label %vector.memcheck267

vector.memcheck267:                               ; preds = %.lr.ph215.preheader
  %i.es = sub i64 %i.b, %i.a
  %i.et = add i64 %i.es, 3
  %diff.check = icmp ult i64 %i.et, 31
  br i1 %diff.check, label %.lr.ph215.preheader281, label %vector.ph270

vector.ph270:                                     ; preds = %vector.memcheck267
  %n.vec272 = and i64 %i.er, -8                   ; 3 uses
  %i.eu = sub nsw i64 %i.ep, %n.vec272
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph270
  %index274 = phi i64 [ 0, %vector.ph270 ], [ %index.next277, %vector.body273 ] ; 2 uses
  %i.ev = sub i64 %i.ep, %index274                ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -12
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -28
  %wide.load275 = load <4 x float>, ptr %i.ex, align 4, !tbaa !12
  %wide.load276 = load <4 x float>, ptr %i.ey, align 4, !tbaa !12
  %i.ez = getelementptr [4 x i8], ptr %10, i64 %i.ev ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -16
  %i.fb = getelementptr i8, ptr %i.ez, i64 -32
  store <4 x float> %wide.load275, ptr %i.fa, align 4, !tbaa !12
  store <4 x float> %wide.load276, ptr %i.fb, align 4, !tbaa !12
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.ev ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -12
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 -28
  store <4 x i32> zeroinitializer, ptr %i.fd, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %i.fe, align 4, !tbaa !4
  %index.next277 = add nuw i64 %index274, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.ff, label %middle.block278, label %vector.body273, !llvm.loop !32

middle.block278:                                  ; preds = %vector.body273
  %cmp.n279 = icmp eq i64 %i.er, %n.vec272
  br i1 %cmp.n279, label %.lr.ph217.preheader, label %.lr.ph215.preheader281

.lr.ph215.preheader281:                           ; preds = %vector.memcheck267, %.lr.ph215.preheader, %middle.block278
  %indvars.iv246.ph = phi i64 [ %i.ep, %vector.memcheck267 ], [ %i.ep, %.lr.ph215.preheader ], [ %i.eu, %middle.block278 ]
  br label %.lr.ph215

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv241 = phi i64 [ %indvars.iv.next242.1, %scalar.ph ], [ %indvars.iv241.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv241 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !12
  %i.fi = fadd float %i.fh, %i.d
  store float %i.fi, ptr %i.fg, align 4, !tbaa !12
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv241 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !12
  %i.fl = fadd float %i.fk, %i.d
  store float %i.fl, ptr %i.fj, align 4, !tbaa !12
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next242 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = fadd float %i.fn, %i.d
  store float %i.fo, ptr %i.fm, align 4, !tbaa !12
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next242 ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !12
  %i.fr = fadd float %i.fq, %i.d
  store float %i.fr, ptr %i.fp, align 4, !tbaa !12
  %indvars.iv.next242.1 = add nuw nsw i64 %indvars.iv241, 2 ; 2 uses
  %exitcond245.not.1 = icmp eq i64 %indvars.iv.next242.1, %wide.trip.count244
  br i1 %exitcond245.not.1, label %.lr.ph215.preheader, label %scalar.ph, !llvm.loop !33

.preheader:                                       ; preds = %.preheader210
  %i.fs = icmp eq i32 %5, 1
  br i1 %i.fs, label %.lr.ph217.preheader, label %._crit_edge

.lr.ph217.preheader:                              ; preds = %.lr.ph215, %middle.block278, %.preheader
  %i.ft = zext nneg i32 %5 to i64
  %i.fu = shl nuw nsw i64 %i.ft, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.fu, i1 false), !tbaa !12
  br label %._crit_edge

.lr.ph215:                                        ; preds = %.lr.ph215.preheader281, %.lr.ph215
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %.lr.ph215 ], [ %indvars.iv246.ph, %.lr.ph215.preheader281 ] ; 5 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv246
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !12
  %i.fx = getelementptr [4 x i8], ptr %10, i64 %indvars.iv246
  %i.fy = getelementptr i8, ptr %i.fx, i64 -4
  store float %i.fw, ptr %i.fy, align 4, !tbaa !12
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv246
  store i32 0, ptr %i.fz, align 4, !tbaa !4
  %indvars.iv.next247 = add nsw i64 %indvars.iv246, -1
  %i.ga = icmp samesign ugt i64 %indvars.iv246, 1
  br i1 %i.ga, label %.lr.ph215, label %.lr.ph217.preheader, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph217.preheader, %.preheader
  br i1 %i.cs, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %._crit_edge
  %i.gb = add nsw i32 %4, -2
  %i.gc = sext i32 %i.e to i64                    ; 3 uses
  %i.gd = sext i32 %5 to i64                      ; 4 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %10, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -8
  %i.gg = getelementptr inbounds [4 x i8], ptr %11, i64 %i.gd
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -8
  %i.gi = add i32 %5, -2
  %i.gj = zext i32 %i.gi to i64
  %i.gk = zext nneg i32 %i.gb to i64
  %xtraiter295 = and i32 %5, 3                    ; 2 uses
  %lcmp.mod296.not = icmp eq i32 %xtraiter295, 0
  %i.gl = icmp ult i32 %5, 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph236, %._crit_edge228
  %indvars.iv255 = phi i64 [ %i.gk, %.lr.ph236 ], [ %indvars.iv.next256.pre-phi, %._crit_edge228 ] ; 14 uses
  %.0170233 = phi ptr [ %8, %.lr.ph236 ], [ %.0171232, %._crit_edge228 ] ; 6 uses
  %.0171232 = phi ptr [ %7, %.lr.ph236 ], [ %.0170233, %._crit_edge228 ] ; 3 uses
  %.0172231 = phi i32 [ %12, %.lr.ph236 ], [ %.1173.lcssa, %._crit_edge228 ] ; 2 uses
  %.0175230 = phi i32 [ %13, %.lr.ph236 ], [ %.1176.lcssa, %._crit_edge228 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv255 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load float, ptr %i.gn, align 4, !tbaa !12
  %i.gp = getelementptr inbounds [4 x i8], ptr %.0171232, i64 %i.gc ; 2 uses
  store float %i.go, ptr %i.gp, align 4, !tbaa !12
  br i1 %.not3.i194, label %match_calc.exit207.thread, label %.lr.ph.i202

match_calc.exit207.thread:                        ; preds = %bb.c
  %i.gq = load float, ptr %i.gm, align 4, !tbaa !12
  %i.gr = getelementptr inbounds [4 x i8], ptr %.0170233, i64 %i.gc
  store float %i.gq, ptr %i.gr, align 4, !tbaa !12
  br label %match_calc.exit207.._crit_edge228_crit_edge

.lr.ph.i202:                                      ; preds = %bb.c
  %.val189 = load ptr, ptr %15, align 8, !tbaa !8 ; 2 uses
  %.val = load ptr, ptr %14, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv255
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !11
  %i.gu = sext i8 %i.gt to i64
  %i.gv = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.gu ; 5 uses
  br i1 %lcmp.mod296.not, label %.prol.loopexit294, label %.prol.preheader293

.prol.preheader293:                               ; preds = %.lr.ph.i202, %.prol.preheader293
  %.08.i203.prol = phi ptr [ %i.gx, %.prol.preheader293 ], [ %.val189, %.lr.ph.i202 ] ; 2 uses
  %.065.i204.prol = phi ptr [ %i.hd, %.prol.preheader293 ], [ %.0170233, %.lr.ph.i202 ] ; 2 uses
  %.074.i205.prol = phi i32 [ %i.gw, %.prol.preheader293 ], [ %5, %.lr.ph.i202 ]
  %prol.iter297 = phi i32 [ %prol.iter297.next, %.prol.preheader293 ], [ 0, %.lr.ph.i202 ]
  %i.gw = add nsw i32 %.074.i205.prol, -1         ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.08.i203.prol, i64 1 ; 2 uses
  %i.gy = load i8, ptr %.08.i203.prol, align 1, !tbaa !11
  %i.gz = sext i8 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  %i.hc = sitofp i32 %i.hb to float
  %i.hd = getelementptr inbounds nuw i8, ptr %.065.i204.prol, i64 4 ; 2 uses
  store float %i.hc, ptr %.065.i204.prol, align 4, !tbaa !12
  %prol.iter297.next = add i32 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i32 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %.prol.loopexit294, label %.prol.preheader293, !llvm.loop !35

.prol.loopexit294:                                ; preds = %.prol.preheader293, %.lr.ph.i202
  %.08.i203.unr = phi ptr [ %.val189, %.lr.ph.i202 ], [ %i.gx, %.prol.preheader293 ]
  %.065.i204.unr = phi ptr [ %.0170233, %.lr.ph.i202 ], [ %i.hd, %.prol.preheader293 ]
  %.074.i205.unr = phi i32 [ %5, %.lr.ph.i202 ], [ %i.gw, %.prol.preheader293 ]
  br i1 %i.gl, label %match_calc.exit207, label %.lr.ph.i202.new

.lr.ph.i202.new:                                  ; preds = %.prol.loopexit294, %.lr.ph.i202.new
  %.08.i203 = phi ptr [ %i.ia, %.lr.ph.i202.new ], [ %.08.i203.unr, %.prol.loopexit294 ] ; 5 uses
  %.065.i204 = phi ptr [ %i.ig, %.lr.ph.i202.new ], [ %.065.i204.unr, %.prol.loopexit294 ] ; 5 uses
  %.074.i205 = phi i32 [ %i.hz, %.lr.ph.i202.new ], [ %.074.i205.unr, %.prol.loopexit294 ]
  %i.he = getelementptr inbounds nuw i8, ptr %.08.i203, i64 1
  %i.hf = load i8, ptr %.08.i203, align 1, !tbaa !11
  %i.hg = sext i8 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %i.hj = sitofp i32 %i.hi to float
  %i.hk = getelementptr inbounds nuw i8, ptr %.065.i204, i64 4
  store float %i.hj, ptr %.065.i204, align 4, !tbaa !12
  %i.hl = getelementptr inbounds nuw i8, ptr %.08.i203, i64 2
  %i.hm = load i8, ptr %i.he, align 1, !tbaa !11
  %i.hn = sext i8 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4
  %i.hq = sitofp i32 %i.hp to float
  %i.hr = getelementptr inbounds nuw i8, ptr %.065.i204, i64 8
  store float %i.hq, ptr %i.hk, align 4, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.08.i203, i64 3
  %i.ht = load i8, ptr %i.hl, align 1, !tbaa !11
  %i.hu = sext i8 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !4
  %i.hx = sitofp i32 %i.hw to float
  %i.hy = getelementptr inbounds nuw i8, ptr %.065.i204, i64 12
  store float %i.hx, ptr %i.hr, align 4, !tbaa !12
  %i.hz = add nsw i32 %.074.i205, -4              ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.08.i203, i64 4
  %i.ib = load i8, ptr %i.hs, align 1, !tbaa !11
  %i.ic = sext i8 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !4
  %i.if = sitofp i32 %i.ie to float
  %i.ig = getelementptr inbounds nuw i8, ptr %.065.i204, i64 16
  store float %i.if, ptr %i.hy, align 4, !tbaa !12
  %.not.i206.3 = icmp eq i32 %i.hz, 0
  br i1 %.not.i206.3, label %match_calc.exit207, label %.lr.ph.i202.new, !llvm.loop !16
end_hunk_0
