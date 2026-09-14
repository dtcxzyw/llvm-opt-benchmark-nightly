Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMaj?download=true
inline.NumInlined: 110
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Gem_FuncReduce:bb.a

bb.u:                                             ; preds = %bb.s
  %i.xd = call noalias ptr @malloc(i64 noundef %i.xb) #24
  br label %Gem_ManRealloc.exit

Gem_ManRealloc.exit:                              ; preds = %bb.t, %bb.u
  %i.xe = phi ptr [ %i.xc, %bb.t ], [ %i.xd, %bb.u ] ; 2 uses
  store ptr %i.xe, ptr %i.c, align 8, !tbaa !23
  %i.xf = load i32, ptr %i.wt, align 8, !tbaa !32 ; 2 uses
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.xe, i64 %i.xg
  %i.xi = sub nsw i32 %i.ww, %i.xf
  %i.xj = sext i32 %i.xi to i64
  %i.xk = shl nsw i64 %i.xj, 3
  call void @llvm.memset.p0.i64(ptr align 4 %i.xh, i8 0, i64 %i.xk, i1 false)
  store i32 %i.ww, ptr %i.wt, align 8, !tbaa !32
  br label %bb.v

bb.v:                                             ; preds = %Gem_PrintNode.exit, %Gem_ManRealloc.exit, %Abc_TtStretch6.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @Gem_Enumerate(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #22
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %6, align 8, !tbaa !200
  %i.e = mul nsw i64 %i.d, 1000000
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !201
  %i.h = sdiv i64 %i.g, 1000
  %i.i = add nsw i64 %i.h, %i.e
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.j = call ptr @Gem_ManAlloc(i32 noundef %0, i32 noundef %2) ; 6 uses
  %.not99 = icmp slt i32 %0, 3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 4 uses
  br i1 %.not99, label %Abc_Clock.exit.._crit_edge103_crit_edge, label %.lr.ph102

Abc_Clock.exit.._crit_edge103_crit_edge:          ; preds = %Abc_Clock.exit
  %.pre119.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33
  br label %._crit_edge103

.lr.ph102:                                        ; preds = %Abc_Clock.exit
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33 ; 2 uses
  %i.n = add nsw i32 %0, -2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph102, %._crit_edge98
  %i.o = phi i32 [ %.pre, %.lr.ph102 ], [ %i.cr, %._crit_edge98 ]
  %i.p = phi i32 [ %.pre, %.lr.ph102 ], [ %i.cs, %._crit_edge98 ] ; 7 uses
  %.064101 = phi i32 [ 1, %.lr.ph102 ], [ %i.p, %._crit_edge98 ]
  %.069100 = phi i32 [ 1, %.lr.ph102 ], [ %i.ct, %._crit_edge98 ] ; 7 uses
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.069100, i32 noundef %i.p) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.r = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #22
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %Abc_Clock.exit80, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %5, align 8, !tbaa !200
  %i.u = mul nsw i64 %i.t, 1000000
  %i.v = load i64, ptr %i.k, align 8, !tbaa !201
  %i.w = sdiv i64 %i.v, 1000
  %i.x = add nsw i64 %i.w, %i.u
  br label %Abc_Clock.exit80

Abc_Clock.exit80:                                 ; preds = %bb.c, %bb.d
  %.0.i79 = phi i64 [ %i.x, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.y = sub nsw i64 %.0.i79, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14)
  %i.z = sitofp i64 %i.y to double
  %i.aa = fdiv double %i.z, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.aa)
  %i.ab = icmp sgt i32 %i.p, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Abc_Clock.exit80
  %i.ac = sext i32 %.064101 to i64
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit86
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit86 ] ; 5 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 15                       ; 2 uses
  %i.ah = icmp eq i32 %.069100, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ai = icmp samesign ule i32 %.069100, %i.ag
  %.not77 = icmp slt i64 %indvars.iv, %i.ac
  %or.cond = or i1 %.not77, %i.ai
  br i1 %or.cond, label %.loopexit86, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.i
  %.06687 = phi i32 [ 0, %bb.f ], [ %i.aq, %bb.i ] ; 3 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4
  %i.an = lshr i32 %i.am, 16
  %i.ao = shl nuw i32 1, %.06687
  %i.ap = and i32 %i.an, %i.ao
  %.not78 = icmp eq i32 %i.ap, 0
  br i1 %.not78, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @Gem_FuncExpand(ptr noundef nonnull %i.j, i32 noundef %i.aj, i32 noundef %.06687)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aq = add nuw nsw i32 %.06687, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %.069100
  br i1 %exitcond.not, label %.loopexit86, label %bb.g, !llvm.loop !191

.loopexit86:                                      ; preds = %bb.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond110.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !192

._crit_edge.loopexit:                             ; preds = %.loopexit86
  %.pre115 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33 ; 2 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Abc_Clock.exit80
  %i.ar = phi i32 [ %.pre115, %._crit_edge.loopexit ], [ %i.o, %Abc_Clock.exit80 ] ; 2 uses
  %i.as = phi i32 [ %.pre115, %._crit_edge.loopexit ], [ %i.p, %Abc_Clock.exit80 ] ; 3 uses
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.069100, i32 noundef %i.as) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.au = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #22
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %Abc_Clock.exit82, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.aw = load i64, ptr %4, align 8, !tbaa !200
  %i.ax = mul nsw i64 %i.aw, 1000000
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !201
  %i.az = sdiv i64 %i.ay, 1000
  %i.ba = add nsw i64 %i.az, %i.ax
  br label %Abc_Clock.exit82

Abc_Clock.exit82:                                 ; preds = %._crit_edge, %bb.j
  %.0.i81 = phi i64 [ %i.ba, %bb.j ], [ -1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bb = sub nsw i64 %.0.i81, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14)
  %i.bc = sitofp i64 %i.bb to double
  %i.bd = fdiv double %i.bc, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.bd)
  %i.be = icmp slt i32 %i.p, %i.as
  br i1 %i.be, label %.preheader85.preheader, label %._crit_edge98

.preheader85.preheader:                           ; preds = %Abc_Clock.exit82
  %i.bf = sext i32 %i.p to i64
  %.pre116 = load ptr, ptr %i.l, align 8, !tbaa !23 ; 2 uses
  br label %.preheader85

.preheader85:                                     ; preds = %.preheader85.preheader, %._crit_edge96
  %i.bg = phi i32 [ %i.ar, %.preheader85.preheader ], [ %i.cm, %._crit_edge96 ]
  %i.bh = phi ptr [ %.pre116, %.preheader85.preheader ], [ %i.cn, %._crit_edge96 ] ; 2 uses
  %i.bi = phi ptr [ %.pre116, %.preheader85.preheader ], [ %i.co, %._crit_edge96 ] ; 3 uses
  %indvars.iv111 = phi i64 [ %i.bf, %.preheader85.preheader ], [ %indvars.iv.next112, %._crit_edge96 ] ; 5 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv111
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = and i32 %i.bk, 15
  %.not107 = icmp eq i32 %i.bl, 0
  br i1 %.not107, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.preheader85
  %i.bm = trunc nsw i64 %indvars.iv111 to i32
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.loopexit
  %i.bn = phi ptr [ %i.ch, %.loopexit ], [ %i.bh, %.lr.ph95.preheader ] ; 2 uses
  %i.bo = phi ptr [ %i.ch, %.loopexit ], [ %i.bi, %.lr.ph95.preheader ]
  %i.bp = phi i32 [ %i.cj, %.loopexit ], [ %i.bk, %.lr.ph95.preheader ] ; 3 uses
  %.193 = phi i32 [ %.pre120, %.loopexit ], [ 0, %.lr.ph95.preheader ] ; 4 uses
  %i.bq = lshr i32 %i.bp, 16
  %i.br = shl nuw nsw i32 1, %.193
  %i.bs = and i32 %i.bq, %i.br
  %.not75 = icmp ne i32 %i.bs, 0
  %.pre120 = add nuw nsw i32 %.193, 1             ; 4 uses
  %i.bt = and i32 %i.bp, 15
  %i.bu = icmp samesign ult i32 %.pre120, %i.bt
  %or.cond163 = select i1 %.not75, i1 %i.bu, i1 false
  br i1 %or.cond163, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %.lr.ph95, %bb.l
  %i.bv = phi ptr [ %i.cb, %bb.l ], [ %i.bn, %.lr.ph95 ]
  %i.bw = phi ptr [ %i.cc, %bb.l ], [ %i.bo, %.lr.ph95 ]
  %7 = phi i32 [ %i.ce, %bb.l ], [ %i.bp, %.lr.ph95 ]
  %.06591.a = phi i32 [ %.065, %bb.l ], [ %.pre120, %.lr.ph95 ] ; 3 uses
  %.065.in90 = phi i32 [ %.06591.a, %bb.l ], [ %.193, %.lr.ph95 ]
  %i.bx = lshr i32 %7, 16
  %i.by = shl nuw nsw i32 2, %.065.in90
  %i.bz = and i32 %i.bx, %i.by
  %.not76 = icmp eq i32 %i.bz, 0
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph92
  %i.ca = call i32 @Gem_FuncReduce(ptr noundef nonnull %i.j, i32 noundef %i.bm, i32 noundef %.193, i32 noundef %.06591.a) ; 0 uses
  %.pre117 = load ptr, ptr %i.l, align 8, !tbaa !23 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph92
  %i.cb = phi ptr [ %.pre117, %bb.k ], [ %i.bv, %.lr.ph92 ] ; 2 uses
  %i.cc = phi ptr [ %.pre117, %bb.k ], [ %i.bw, %.lr.ph92 ] ; 2 uses
  %.065 = add nuw nsw i32 %.06591.a, 1            ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %indvars.iv111
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = and i32 %i.ce, 15
  %i.cg = icmp samesign ult i32 %.065, %i.cf
  br i1 %i.cg, label %.lr.ph92, label %.loopexit, !llvm.loop !193

.loopexit:                                        ; preds = %bb.l, %.lr.ph95
  %i.ch = phi ptr [ %i.bn, %.lr.ph95 ], [ %i.cb, %bb.l ] ; 5 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv111
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = and i32 %i.cj, 15
  %i.cl = icmp samesign ult i32 %.pre120, %i.ck
  br i1 %i.cl, label %.lr.ph95, label %._crit_edge96.loopexit, !llvm.loop !194

._crit_edge96.loopexit:                           ; preds = %.loopexit
  %.pre118 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %.preheader85
  %i.cm = phi i32 [ %.pre118, %._crit_edge96.loopexit ], [ %i.bg, %.preheader85 ] ; 4 uses
  %i.cn = phi ptr [ %i.ch, %._crit_edge96.loopexit ], [ %i.bh, %.preheader85 ]
  %i.co = phi ptr [ %i.ch, %._crit_edge96.loopexit ], [ %i.bi, %.preheader85 ]
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.cp = sext i32 %i.cm to i64
  %i.cq = icmp slt i64 %indvars.iv.next112, %i.cp
  br i1 %i.cq, label %.preheader85, label %._crit_edge98, !llvm.loop !195

._crit_edge98:                                    ; preds = %._crit_edge96, %Abc_Clock.exit82
  %i.cr = phi i32 [ %i.ar, %Abc_Clock.exit82 ], [ %i.cm, %._crit_edge96 ] ; 2 uses
  %i.cs = phi i32 [ %i.as, %Abc_Clock.exit82 ], [ %i.cm, %._crit_edge96 ]
  %i.ct = add nuw i32 %.069100, 1
  %exitcond114.not = icmp eq i32 %.069100, %i.n
  br i1 %exitcond114.not, label %._crit_edge103, label %bb.c, !llvm.loop !196

._crit_edge103:                                   ; preds = %._crit_edge98, %Abc_Clock.exit.._crit_edge103_crit_edge
  %i.cu = phi i32 [ %.pre119.a, %Abc_Clock.exit.._crit_edge103_crit_edge ], [ %i.cr, %._crit_edge98 ]
  %i.cv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.cu) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.cw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #22
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %Abc_Clock.exit84, label %bb.m

bb.m:                                             ; preds = %._crit_edge103
  %i.cy = load i64, ptr %3, align 8, !tbaa !200
  %i.cz = mul nsw i64 %i.cy, 1000000
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !201
  %i.dc = sdiv i64 %i.db, 1000
  %i.dd = add nsw i64 %i.dc, %i.cz
  br label %Abc_Clock.exit84

Abc_Clock.exit84:                                 ; preds = %._crit_edge103, %bb.m
  %.0.i83 = phi i64 [ %i.dd, %bb.m ], [ -1, %._crit_edge103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.de = sub nsw i64 %.0.i83, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14)
  %i.df = sitofp i64 %i.de to double
  %i.dg = fdiv double %i.df, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.dg)
  %.not74 = icmp eq i32 %1, 0
  br i1 %.not74, label %bb.ay, label %bb.n

bb.n:                                             ; preds = %Abc_Clock.exit84
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !48 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.dj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef %0) #22 ; 0 uses
  %i.dk = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.23) ; 36 uses
  %i.dl = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dn = getelementptr i8, ptr %i.di, i64 4
  %.val19.i.i = load i32, ptr %i.dn, align 4, !tbaa !58
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.val19.i.i) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.di, i64 4      ; 3 uses
  %.val24.i.i = load i32, ptr %i.dq, align 4, !tbaa !58 ; 3 uses
  %i.dr = icmp sgt i32 %.val24.i.i, 0
  br i1 %i.dr, label %.lr.ph.i.i, label %Vec_MemDump.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !51 ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i104, label %Vec_MemDump.exit.i, label %.preheader20.i.i.preheader

.preheader20.i.i.preheader:                       ; preds = %.lr.ph.i.i
  %i.dw = load i32, ptr %i.di, align 8, !tbaa !36
  br label %.preheader20.i.i

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !56
  %i.dy = load i32, ptr %i.ds, align 8, !tbaa !37
  %i.dz = lshr i32 %i.iu, %i.dy
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !51 ; 2 uses
  %i.ed = load i32, ptr %i.di, align 8, !tbaa !36 ; 2 uses
  %i.ee = load i32, ptr %i.dt, align 4, !tbaa !38
  %i.ef = and i32 %i.ee, %i.iu
  %i.eg = mul nsw i32 %i.ef, %i.ed
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eh
  %.not.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i, label %Vec_MemDump.exit.i, label %.preheader20.i.i, !llvm.loop !197

.preheader20.i.i:                                 ; preds = %.preheader20.i.i.preheader, %bb.q
  %i.ej = phi ptr [ %i.ei, %bb.q ], [ %i.dv, %.preheader20.i.i.preheader ]
  %i.ek = phi i32 [ %i.ed, %bb.q ], [ %i.dw, %.preheader20.i.i.preheader ] ; 2 uses
  %.01725.i.i105 = phi i32 [ %i.iu, %bb.q ], [ 0, %.preheader20.i.i.preheader ]
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.preheader.preheader.i.i, label %._crit_edge.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader20.i.i
  %i.em = zext nneg i32 %i.ek to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %Vec_MemDumpDigit.exit.15.i.i, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.em, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %Vec_MemDumpDigit.exit.15.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i ; 16 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !53 ; 2 uses
  %i.ep = lshr i64 %i.eo, 60
  %i.eq = trunc nuw nsw i64 %i.ep to i32          ; 2 uses
  %i.er = icmp ult i64 %i.eo, -6917529027641081856
  br i1 %i.er, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader.i.i
  %i.es = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.27, i32 noundef range(i32 0, 16) %i.eq) #22 ; 0 uses
  br label %Vec_MemDumpDigit.exit.i.i

bb.s:                                             ; preds = %.preheader.i.i
  %i.et = add nuw nsw i32 %i.eq, 55
  %fputc.i.i.i = call i32 @fputc(i32 %i.et, ptr %i.dk) ; 0 uses
  br label %Vec_MemDumpDigit.exit.i.i

Vec_MemDumpDigit.exit.i.i:                        ; preds = %bb.s, %bb.r
  %i.eu = load i64, ptr %i.en, align 8, !tbaa !53
  %i.ev = lshr i64 %i.eu, 56
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = and i32 %i.ew, 15                       ; 3 uses
  %i.ey = icmp samesign ult i32 %i.ex, 10
  br i1 %i.ey, label %bb.u, label %bb.t

bb.t:                                             ; preds = %Vec_MemDumpDigit.exit.i.i
  %i.ez = add nuw nsw i32 %i.ex, 55
  %fputc.i.1.i.i = call i32 @fputc(i32 %i.ez, ptr %i.dk) ; 0 uses
  br label %Vec_MemDumpDigit.exit.1.i.i

bb.u:                                             ; preds = %Vec_MemDumpDigit.exit.i.i
  %i.fa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.27, i32 noundef range(i32 0, 16) %i.ex) #22 ; 0 uses
  br label %Vec_MemDumpDigit.exit.1.i.i

Vec_MemDumpDigit.exit.1.i.i:                      ; preds = %bb.u, %bb.t
  %i.fb = load i64, ptr %i.en, align 8, !tbaa !53
  %i.fc = lshr i64 %i.fb, 52
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %i.fe = and i32 %i.fd, 15                       ; 3 uses
  %i.ff = icmp samesign ult i32 %i.fe, 10
  br i1 %i.ff, label %bb.w, label %bb.v

bb.v:                                             ; preds = %Vec_MemDumpDigit.exit.1.i.i
  %i.fg = add nuw nsw i32 %i.fe, 55
  %fputc.i.2.i.i = call i32 @fputc(i32 %i.fg, ptr %i.dk) ; 0 uses
  br label %Vec_MemDumpDigit.exit.2.i.i

bb.w:                                             ; preds = %Vec_MemDumpDigit.exit.1.i.i
  %i.fh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.27, i32 noundef range(i32 0, 16) %i.fe) #22 ; 0 uses
  br label %Vec_MemDumpDigit.exit.2.i.i

Vec_MemDumpDigit.exit.2.i.i:                      ; preds = %bb.w, %bb.v
  %i.fi = load i64, ptr %i.en, align 8, !tbaa !53
  %i.fj = lshr i64 %i.fi, 48
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 15                       ; 3 uses
  %i.fm = icmp samesign ult i32 %i.fl, 10
  br i1 %i.fm, label %bb.y, label %bb.x

bb.x:                                             ; preds = %Vec_MemDumpDigit.exit.2.i.i
  %i.fn = add nuw nsw i32 %i.fl, 55
  %fputc.i.3.i.i = call i32 @fputc(i32 %i.fn, ptr %i.dk) ; 0 uses
  br label %Vec_MemDumpDigit.exit.3.i.i

bb.y:                                             ; preds = %Vec_MemDumpDigit.exit.2.i.i
  %i.fo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.27, i32 noundef range(i32 0, 16) %i.fl) #22 ; 0 uses
  br label %Vec_MemDumpDigit.exit.3.i.i

Vec_MemDumpDigit.exit.3.i.i:                      ; preds = %bb.y, %bb.x
  %i.fp = load i64, ptr %i.en, align 8, !tbaa !53
  %i.fq = lshr i64 %i.fp, 44
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = and i32 %i.fr, 15                       ; 3 uses
  %i.ft = icmp samesign ult i32 %i.fs, 10
end_hunk_0
