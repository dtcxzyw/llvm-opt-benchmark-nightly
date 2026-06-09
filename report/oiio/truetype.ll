inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@ft_var_to_normalized
define internal fastcc void @ft_var_to_normalized(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !503  ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !504  ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.i) ; 5 uses
  %.not175 = icmp eq i32 %spec.select, 0
  br i1 %.not175, label %.preheader149, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !510
  %wide.trip.count = zext i32 %spec.select to i64
  br label %.lr.ph

.preheader149.loopexit:                           ; preds = %bb.g
  %.pre = load i32, ptr %i.h, align 8, !tbaa !504
  br label %.preheader149

.preheader149:                                    ; preds = %.preheader149.loopexit, %bb.a
  %i.l = phi i32 [ %i.i, %bb.a ], [ %.pre, %.preheader149.loopexit ] ; 5 uses
  %i.m = icmp ult i32 %spec.select, %i.l
  br i1 %i.m, label %.lr.ph160.preheader, label %._crit_edge

.lr.ph160.preheader:                              ; preds = %.preheader149
  %i.n = zext i32 %spec.select to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.o
  %i.p = xor i32 %spec.select, -1
  %i.q = add i32 %i.l, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.t, i1 false), !tbaa !223
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.0124157 = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.al, %bb.g ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !223  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0124157, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !525  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0124157, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !530  ; 6 uses
  %i.aa = icmp sgt i64 %i.v, %i.z
  br i1 %i.aa, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %.not145 = icmp slt i64 %i.v, %i.x
  br i1 %.not145, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ab = sub i64 %i.v, %i.z
  %i.ac = sub i64 %i.x, %i.z
  %i.ad = tail call i64 @FT_DivFix(i64 noundef %i.ab, i64 noundef %i.ac) #22
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.ae = icmp slt i64 %i.v, %i.z
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0124157, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !529 ; 2 uses
  %.not144 = icmp sgt i64 %i.v, %i.ag
  br i1 %.not144, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 %i.v, %i.z
  %i.ai = sub i64 %i.z, %i.ag
  %i.aj = tail call i64 @FT_DivFix(i64 noundef %i.ah, i64 noundef %i.ai) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c, %bb.b
  %.sink = phi i64 [ 65536, %bb.b ], [ -65536, %bb.e ], [ %i.ad, %bb.c ], [ %i.aj, %bb.f ], [ 0, %bb.d ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %.sink, ptr %i.ak, align 8, !tbaa !223
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0124157, i64 48
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader149.loopexit, label %.lr.ph, !llvm.loop !674

._crit_edge:                                      ; preds = %.lr.ph160.preheader, %.preheader149
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !599 ; 7 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !600 ; 2 uses
  %.not139 = icmp eq ptr %i.ao, null
  br i1 %.not139, label %.loopexit148, label %.preheader147

.preheader147:                                    ; preds = %bb.h
  %.not176 = icmp eq i32 %i.l, 0
  br i1 %.not176, label %.loopexit148, label %.preheader146

.preheader146:                                    ; preds = %.preheader147, %.loopexit
  %i.ap = phi i32 [ %i.bq, %.loopexit ], [ %i.l, %.preheader147 ] ; 2 uses
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %.loopexit ], [ 0, %.preheader147 ] ; 2 uses
  %.0125164 = phi ptr [ %i.br, %.loopexit ], [ %i.ao, %.preheader147 ] ; 3 uses
  %i.aq = load i16, ptr %.0125164, align 8, !tbaa !642 ; 2 uses
  %i.ar = icmp ugt i16 %i.aq, 1
  br i1 %i.ar, label %.lr.ph163, label %.loopexit

.lr.ph163:                                        ; preds = %.preheader146
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv195 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !223 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0125164, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !603 ; 2 uses
  %wide.trip.count193 = zext i16 %i.aq to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph163, %bb.k
  %indvars.iv190 = phi i64 [ 1, %.lr.ph163 ], [ %indvars.iv.next191, %bb.k ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv190 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !645 ; 2 uses
  %i.ay = icmp slt i64 %i.at, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = add nuw i64 %indvars.iv190, 4294967295
  %i.ba = and i64 %i.az, 4294967295               ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !645 ; 2 uses
  %i.bd = sub nsw i64 %i.at, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !643
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !643
  %i.bi = sub nsw i64 %i.bf, %i.bh
  %i.bj = sub nsw i64 %i.ax, %i.bc
  %i.bk = tail call i64 @FT_MulDiv(i64 noundef %i.bd, i64 noundef %i.bi, i64 noundef %i.bj) #22
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !603
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.ba
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !643
  %i.bp = add nsw i64 %i.bo, %i.bk
  store i64 %i.bp, ptr %i.as, align 8, !tbaa !223
  %.pre206 = load i32, ptr %i.h, align 8, !tbaa !504
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count193
  br i1 %exitcond194.not, label %.loopexit, label %bb.i, !llvm.loop !675

.loopexit:                                        ; preds = %bb.k, %.preheader146, %bb.j
  %i.bq = phi i32 [ %.pre206, %bb.j ], [ %i.ap, %.preheader146 ], [ %i.ap, %bb.k ] ; 3 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0125164, i64 16
  %i.bs = zext i32 %i.bq to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next196, %i.bs
  br i1 %i.bt, label %.preheader146, label %.loopexit148, !llvm.loop !676

.loopexit148:                                     ; preds = %.loopexit, %.preheader147, %bb.h
  %i.bu = phi i32 [ %i.l, %bb.h ], [ 0, %.preheader147 ], [ %i.bq, %.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !677
  %.not140 = icmp eq ptr %i.bx, null
  br i1 %.not140, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.loopexit148
  %i.by = zext i32 %i.bu to i64
  %i.bz = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 8, i64 noundef 0, i64 noundef %i.by, ptr noundef null, ptr noundef nonnull %i.b) #22 ; 9 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = load i32, ptr %i.b, align 4, !tbaa !3
  %.not141 = icmp eq i32 %i.cb, 0
  br i1 %.not141, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !485
  store ptr %3, ptr %i.cd, align 8, !tbaa !485
  %i.cf = load i32, ptr %i.h, align 8, !tbaa !504
  %.not177 = icmp eq i32 %i.cf, 0
  br i1 %.not177, label %._crit_edge174, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  br label %bb.n

.preheader:                                       ; preds = %bb.p
  %.not178 = icmp eq i32 %i.dn, 0
  br i1 %.not178, label %._crit_edge174, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %.preheader
  %wide.trip.count204 = zext i32 %i.dn to i64     ; 5 uses
  %min.iters.check = icmp ult i32 %i.dn, 6
  %i.cj = sub i64 %i.a, %i.ca
  %diff.check = icmp ult i64 %i.cj, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph173.preheader234, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph173.preheader
  %n.vec = and i64 %wide.trip.count204, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <2 x i64>, ptr %i.ck, align 8, !tbaa !223
  %wide.load233 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !223
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x i64> %wide.load, ptr %i.cm, align 8, !tbaa !223
  store <2 x i64> %wide.load233, ptr %i.cn, align 8, !tbaa !223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !678

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count204
  br i1 %cmp.n, label %._crit_edge174, label %.lr.ph173.preheader234

.lr.ph173.preheader234:                           ; preds = %.lr.ph173.preheader, %middle.block
  %indvars.iv201.ph = phi i64 [ 0, %.lr.ph173.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count204, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph173.prol.loopexit, label %.lr.ph173.prol

.lr.ph173.prol:                                   ; preds = %.lr.ph173.preheader234, %.lr.ph173.prol
  %indvars.iv201.prol = phi i64 [ %indvars.iv.next202.prol, %.lr.ph173.prol ], [ %indvars.iv201.ph, %.lr.ph173.preheader234 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph173.prol ], [ 0, %.lr.ph173.preheader234 ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv201.prol
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !223
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv201.prol
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !223
  %indvars.iv.next202.prol = add nuw nsw i64 %indvars.iv201.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph173.prol.loopexit, label %.lr.ph173.prol, !llvm.loop !679

.lr.ph173.prol.loopexit:                          ; preds = %.lr.ph173.prol, %.lr.ph173.preheader234
  %indvars.iv201.unr = phi i64 [ %indvars.iv201.ph, %.lr.ph173.preheader234 ], [ %indvars.iv.next202.prol, %.lr.ph173.prol ]
  %i.cs = sub nsw i64 %indvars.iv201.ph, %wide.trip.count204
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %._crit_edge174, label %.lr.ph173

bb.n:                                             ; preds = %.lr.ph170, %bb.p
  %indvars.iv198 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next199, %bb.p ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv198
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !223
  %i.cw = load ptr, ptr %i.cg, align 8, !tbaa !680 ; 2 uses
  %.not142 = icmp eq ptr %i.cw, null
  %i.cx = trunc nuw i64 %indvars.iv198 to i32
  br i1 %.not142, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = load i64, ptr %i.ch, align 8, !tbaa !681 ; 2 uses
  %.not143 = icmp ugt i64 %i.cy, %indvars.iv198
  %i.cz = add i64 %i.cy, 4294967295
  %.0 = select i1 %.not143, i64 %indvars.iv198, i64 %i.cz
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !682
  %i.db = and i64 %.0, 4294967295                 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.db
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0120 = phi i32 [ %i.df, %bb.o ], [ %i.cx, %bb.n ]
  %.0119 = phi i32 [ %i.dd, %bb.o ], [ 0, %bb.n ]
  %i.dg = call i32 @tt_var_get_item_delta(ptr noundef %0, ptr noundef nonnull %i.bv, i32 noundef %.0119, i32 noundef %.0120)
  %i.dh = shl i32 %i.dg, 2
  %i.di = sext i32 %i.dh to i64
  %i.dj = add nsw i64 %i.cv, %i.di
  %i.dk = call i64 @llvm.smax.i64(i64 %i.dj, i64 -65536)
  %i.dl = call i64 @llvm.smin.i64(i64 %i.dk, i64 65536)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv198
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !223
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.dn = load i32, ptr %i.h, align 8, !tbaa !504 ; 4 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = icmp samesign ult i64 %indvars.iv.next199, %i.do
  br i1 %i.dp, label %bb.n, label %.preheader, !llvm.loop !683

.lr.ph173:                                        ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173
  %indvars.iv201 = phi i64 [ %indvars.iv.next202.3, %.lr.ph173 ], [ %indvars.iv201.unr, %.lr.ph173.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv201
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !223
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv201
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !223
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next202
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !223
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next202
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !223
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next202.1
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !223
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next202.1
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !223
  %indvars.iv.next202.2 = add nuw nsw i64 %indvars.iv201, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next202.2
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !223
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next202.2
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !223
  %indvars.iv.next202.3 = add nuw nsw i64 %indvars.iv201, 4 ; 2 uses
  %exitcond205.not.3 = icmp eq i64 %indvars.iv.next202.3, %wide.trip.count204
  br i1 %exitcond205.not.3, label %._crit_edge174, label %.lr.ph173, !llvm.loop !684

._crit_edge174:                                   ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173, %middle.block, %bb.m, %.preheader
  %i.ec = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ce, ptr %i.ed, align 8, !tbaa !485
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.bz) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %._crit_edge, %.loopexit148, %._crit_edge174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ft_var_load_mvar(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !497
  %i.k = call i32 %i.j(ptr noundef %0, i64 noundef 1297498450, ptr noundef %i.d, ptr noundef nonnull %i.b) #22 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.l = call i64 @FT_Stream_Pos(ptr noundef nonnull %i.d) #22
  %i.m = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #22
  %i.n = load i32, ptr %i.a, align 4, !tbaa !3
  %.not65 = icmp eq i32 %i.n, 0
  br i1 %.not65, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @FT_Stream_Skip(ptr noundef nonnull %i.d, i64 noundef 2) #22 ; 2 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !3
  %.not66 = icmp eq i32 %i.o, 0
  %.not67 = icmp eq i16 %i.m, 1
  %or.cond82 = select i1 %.not66, i1 %.not67, i1 false
  br i1 %or.cond82, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.p = call ptr @ft_mem_alloc(ptr noundef %i.f, i64 noundef 48, ptr noundef nonnull %i.a) #22
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 8 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !609
  %i.r = load i32, ptr %i.a, align 4, !tbaa !3
  %.not68 = icmp eq i32 %i.r, 0
  br i1 %.not68, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 @FT_Stream_Skip(ptr noundef nonnull %i.d, i64 noundef 4) #22 ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !3
  %.not69 = icmp eq i32 %i.s, 0
  br i1 %.not69, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.t = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #22
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !609
  store i16 %i.t, ptr %i.u, align 8, !tbaa !685
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3
  %.not70 = icmp eq i32 %i.v, 0
  br i1 %.not70, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.w = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #22
  %i.x = load i32, ptr %i.a, align 4, !tbaa !3
  %.not71 = icmp eq i32 %i.x, 0
  br i1 %.not71, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.y = call i64 @FT_Stream_Pos(ptr noundef nonnull %i.d) #22
  %i.z = zext i16 %i.w to i64
  %i.aa = add i64 %i.l, %i.z
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !609
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = call i32 @tt_var_load_item_variation_store(ptr noundef nonnull %0, i64 noundef %i.aa, ptr noundef nonnull %i.ac) ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !3
  %.not72 = icmp eq i32 %i.ad, 0
  br i1 %.not72, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !609
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !685
  %i.ag = zext i16 %i.af to i64
  %i.ah = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 16, i64 noundef 0, i64 noundef %i.ag, ptr noundef null, ptr noundef nonnull %i.a) #22
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !609
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !610
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !3
  %.not73 = icmp eq i32 %i.ak, 0
  br i1 %.not73, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.al = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.d, i64 noundef %i.y) #22 ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !3
  %.not74 = icmp eq i32 %i.al, 0
  br i1 %.not74, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !609
  %i.an = load i16, ptr %i.am, align 8, !tbaa !685
  %i.ao = zext i16 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.d, i64 noundef %i.ap) #22 ; 2 uses
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !3
  %.not75 = icmp eq i32 %i.aq, 0
  br i1 %.not75, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !609 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !610 ; 3 uses
  %.not76 = icmp eq ptr %i.at, null
  br i1 %.not76, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i16, ptr %i.ar, align 8, !tbaa !685 ; 2 uses
  %i.av = zext i16 %i.au to i64
  %.idx = shl nuw nsw i64 %i.av, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.not94 = icmp eq i16 %i.au, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.r
  %.083 = phi ptr [ %i.at, %.lr.ph ], [ %i.bp, %bb.r ] ; 4 uses
  %i.az = call i32 @FT_Stream_GetULong(ptr noundef nonnull %i.d) #22
  %i.ba = zext i32 %i.az to i64
  store i64 %i.ba, ptr %.083, align 8, !tbaa !686
  %i.bb = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %i.d) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %.083, i64 8 ; 2 uses
  store i16 %i.bb, ptr %i.bc, align 8, !tbaa !688
  %i.bd = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %i.d) #22 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.083, i64 10
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !689
  %i.bf = load i16, ptr %i.bc, align 8, !tbaa !688 ; 3 uses
  %i.bg = icmp eq i16 %i.bf, -1
  %i.bh = icmp eq i16 %i.bd, -1
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = zext i16 %i.bf to i32
  %i.bj = load i32, ptr %i.ax, align 8, !tbaa !561
  %.not77 = icmp ugt i32 %i.bj, %i.bi
  br i1 %.not77, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = zext i16 %i.bd to i32
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !565
  %i.bm = zext i16 %i.bf to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !566
  %.not78 = icmp ugt i32 %i.bo, %i.bk
  br i1 %.not78, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

bb.r:                                             ; preds = %bb.n, %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %.083, i64 16 ; 2 uses
end_hunk_0
