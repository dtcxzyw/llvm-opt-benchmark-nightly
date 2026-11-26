Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilPath?download=true
inline.NumInlined: 214
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Abc_GraphDeriveGiaDump:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = tail call ptr @Abc_GraphDeriveGia(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !35
  %i.d = sdiv i32 %.val, 2
  %i.e = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2, i32 noundef %2, i32 noundef %i.d) #27 ; 0 uses
  call void @Gia_AigerWrite(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef 0) #27
  call void @Gia_ManStop(ptr noundef %i.b) #27
  %i.f = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @Abc_GraphBuildState(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, i32 noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 8
  %.val182.a = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr [16 x i8], ptr %.val182.a, i64 %i.b ; 6 uses
  %i.d = shl nsw i32 %1, 1
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val180.a = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %.val180.a, i64 %i.f ; 4 uses
  %i.h = getelementptr i8, ptr %4, i64 4
  %.val172.a = load i32, ptr %i.h, align 4, !tbaa !35
  %i.i = sdiv i32 %.val172.a, 2                   ; 2 uses
  %.not = icmp eq i32 %8, 0                       ; 4 uses
  br i1 %.not, label %bb.b, label %.thread.a

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %.val171185 = load i32, ptr %i.j, align 4, !tbaa !35
  %i.k = icmp sgt i32 %.val171185, 0
  br i1 %i.k, label %.lr.ph.split.us, label %.critedge

.thread.a:                                        ; preds = %bb.a
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %1, i32 noundef %2) ; 0 uses
  %i.m = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %.val171185242 = load i32, ptr %i.m, align 4, !tbaa !35
  %i.n = icmp sgt i32 %.val171185242, 0
  br i1 %i.n, label %.lr.ph.split.preheader, label %.critedge.thread

.lr.ph.split.preheader:                           ; preds = %.thread.a
  %i.o = getelementptr i8, ptr %i.c, i64 8
  %i.p = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.c, i64 8
  %i.r = getelementptr i8, ptr %0, i64 8
  %.val179.us = load ptr, ptr %i.q, align 8, !tbaa !38
  %.val178.us = load ptr, ptr %i.r, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val179.us, i64 %indvars.iv204
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val178.us, i64 %indvars.iv204
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %6, i64 %i.w
  store i32 %i.v, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %.val171.us = load i32, ptr %i.j, align 4, !tbaa !35
  %i.y = sext i32 %.val171.us to i64
  %i.z = icmp slt i64 %indvars.iv.next205, %i.y
  br i1 %i.z, label %bb.c, label %.critedge, !llvm.loop !91

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.lr.ph.split ] ; 3 uses
  %.val179 = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val179, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %.val178.a = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val178.a, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ae
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !12
  %i.ag = and i32 %i.ad, 65535
  %i.ah = ashr i32 %i.ad, 16
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ag, i32 noundef %i.ah) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val171 = load i32, ptr %i.m, align 4, !tbaa !35
  %i.aj = sext i32 %.val171 to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph.split, label %.critedge.thread, !llvm.loop !91

.critedge.thread:                                 ; preds = %.lr.ph.split, %.thread.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.critedge.thread
  %i.al = getelementptr i8, ptr %4, i64 8
  %.val177.a = load ptr, ptr %i.al, align 8, !tbaa !38 ; 4 uses
  %i.am = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  %i.an = shl nsw i32 %i.am, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.val177.a, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = icmp eq i32 %i.aq, %1
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.as = sext i32 %i.am to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %6, i64 %i.as
  store i32 %i.am, ptr %i.at, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 5 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12 ; 4 uses
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val177.a, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = icmp eq i32 %i.az, %1
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = sext i32 %i.av to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bb
  store i32 %i.av, ptr %i.bc, align 4, !tbaa !12
  %.pre229.pre = load i32, ptr %i.au, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre229 = phi i32 [ %.pre229.pre, %bb.f ], [ %i.av, %bb.e ] ; 2 uses
  %.not156 = icmp eq i32 %2, 0                    ; 2 uses
  %.pre227 = load i32, ptr %i.g, align 4, !tbaa !12 ; 4 uses
  br i1 %.not156, label %..loopexit_crit_edge, label %bb.h

..loopexit_crit_edge:                             ; preds = %bb.g
  %.pre240 = add nsw i32 %i.i, -1
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bd = sext i32 %.pre227 to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !12 ; 3 uses
  %i.bg = sext i32 %.pre229 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %i.bj = xor i32 %i.bi, %i.bf
  %i.bk = and i32 %i.bj, 65535
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.critedge165, label %.preheader183

.preheader183:                                    ; preds = %bb.h
  %i.bm = add nsw i32 %i.i, -1                    ; 3 uses
  %i.bn = ashr i32 %i.bf, 16                      ; 2 uses
  %i.bo = icmp eq i32 %.pre227, 0
  %i.bp = icmp eq i32 %.pre227, %i.bm
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader183
  %i.bq = icmp sgt i32 %i.bn, 0
  br i1 %i.bq, label %.critedge165, label %.critedge161

bb.j:                                             ; preds = %.preheader183
  %i.br = icmp sgt i32 %i.bn, 1
  br i1 %i.br, label %.critedge165, label %.critedge161

.critedge161:                                     ; preds = %bb.j, %bb.i
  %i.bs = add nsw i32 %i.bf, 65536
  store i32 %i.bs, ptr %i.be, align 4, !tbaa !12
  %i.bt = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !12 ; 2 uses
  %i.bx = ashr i32 %i.bw, 16                      ; 2 uses
  %i.by = icmp eq i32 %i.bt, 0
  %i.bz = icmp eq i32 %i.bt, %i.bm
  %or.cond.1 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge161
  %i.ca = icmp sgt i32 %i.bx, 1
  br i1 %i.ca, label %.critedge165, label %.critedge161.1

bb.l:                                             ; preds = %.critedge161
  %i.cb = icmp sgt i32 %i.bx, 0
  br i1 %i.cb, label %.critedge165, label %.critedge161.1

.critedge161.1:                                   ; preds = %bb.l, %bb.k
  %i.cc = add nsw i32 %i.bw, 65536
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !12
  %.pre = load i32, ptr %i.g, align 4, !tbaa !12
  %.pre228 = load i32, ptr %i.au, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.critedge161.1
  %.pre-phi = phi i32 [ %.pre240, %..loopexit_crit_edge ], [ %i.bm, %.critedge161.1 ] ; 2 uses
  %i.cd = phi i32 [ %.pre229, %..loopexit_crit_edge ], [ %.pre228, %.critedge161.1 ] ; 3 uses
  %i.ce = phi i32 [ %.pre227, %..loopexit_crit_edge ], [ %.pre, %.critedge161.1 ] ; 4 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !12 ; 3 uses
  %i.ci = and i32 %i.ch, 65535                    ; 4 uses
  %i.cj = sext i32 %i.cd to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12
  %i.cm = and i32 %i.cl, 65535                    ; 3 uses
  %i.cn = getelementptr i8, ptr %i.c, i64 20      ; 8 uses
  %i.co = getelementptr i8, ptr %i.c, i64 24      ; 4 uses
  %i.cp = shl nsw i32 %i.ce, 1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %.val177.a, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !12
  %i.cu = icmp eq i32 %i.ct, %1
  br i1 %i.cu, label %bb.m, label %.critedge4.thread

bb.m:                                             ; preds = %.loopexit
  %i.cv = icmp eq i32 %i.ce, 0
  %i.cw = icmp eq i32 %i.ce, %.pre-phi
  %or.cond163 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond163, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.mask = and i32 %i.ch, -65536
  %.not157 = icmp eq i32 %.mask, 65536
  br i1 %.not157, label %bb.p, label %.critedge165

bb.o:                                             ; preds = %bb.m
  %i.cx = and i32 %i.ch, -196608
  %or.cond.not = icmp eq i32 %i.cx, 0
  br i1 %or.cond.not, label %bb.p, label %.critedge165

bb.p:                                             ; preds = %bb.o, %bb.n
  %.val170189 = load i32, ptr %i.cn, align 4, !tbaa !35 ; 2 uses
  %i.cy = icmp sgt i32 %.val170189, 0
  br i1 %i.cy, label %.lr.ph192, label %.critedge4.thread

.lr.ph192:                                        ; preds = %bb.p
  %.val175 = load ptr, ptr %i.co, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph192, %bb.s
  %.val170230 = phi i32 [ %.val170189, %.lr.ph192 ], [ %.val170, %bb.s ]
  %indvars.iv213 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next214, %bb.s ] ; 2 uses
  %.0140191 = phi i32 [ -1, %.lr.ph192 ], [ %.2142, %bb.s ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val175, i64 %indvars.iv213
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !12 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %6, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !12 ; 2 uses
  %i.de = and i32 %i.dd, 65535
  %i.df = icmp eq i32 %i.de, %i.ci
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp eq i32 %.0140191, -1
  %spec.select = select i1 %i.dg, i32 %i.da, i32 %.0140191
  %9 = freeze i32 %spec.select                    ; 2 uses
  %i.dh = and i32 %i.dd, -65536
  %i.di = or i32 %i.dh, %9
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !12
  %.val170.pre = load i32, ptr %i.cn, align 4, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.val170 = phi i32 [ %.val170.pre, %bb.r ], [ %.val170230, %bb.q ] ; 2 uses
  %.2142 = phi i32 [ %9, %bb.r ], [ %.0140191, %bb.q ] ; 3 uses
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %i.dj = sext i32 %.val170 to i64
  %i.dk = icmp slt i64 %indvars.iv.next214, %i.dj
  br i1 %i.dk, label %bb.q, label %.critedge4, !llvm.loop !92

.critedge4:                                       ; preds = %bb.s
  %.pre241.pre = load i32, ptr %i.au, align 4, !tbaa !12
  %.not158 = icmp eq i32 %.2142, -1
  %spec.select247 = select i1 %.not158, i32 %i.ci, i32 %.2142
  br label %.critedge4.thread

.critedge4.thread:                                ; preds = %.critedge4, %bb.p, %.loopexit
  %.sroa.0.0 = phi i32 [ %i.cd, %.loopexit ], [ %.pre241.pre, %.critedge4 ], [ %i.cd, %bb.p ] ; 4 uses
  %.sroa.0.3 = phi i32 [ %i.ci, %.loopexit ], [ %spec.select247, %.critedge4 ], [ %i.ci, %bb.p ]
  %i.dl = shl nsw i32 %.sroa.0.0, 1
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %.val177.a, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !12
  %i.dq = icmp eq i32 %i.dp, %1
  br i1 %i.dq, label %bb.t, label %.critedge4.1.thread

bb.t:                                             ; preds = %.critedge4.thread
  %i.dr = sext i32 %.sroa.0.0 to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !12 ; 2 uses
  %i.du = icmp eq i32 %.sroa.0.0, 0
  %i.dv = icmp eq i32 %.sroa.0.0, %.pre-phi
  %or.cond163.1 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond163.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = and i32 %i.dt, -196608
  %or.cond.not.1 = icmp eq i32 %i.dw, 0
  br i1 %or.cond.not.1, label %bb.w, label %.critedge165

bb.v:                                             ; preds = %bb.t
  %.mask.1 = and i32 %i.dt, -65536
  %.not157.1 = icmp eq i32 %.mask.1, 65536
  br i1 %.not157.1, label %bb.w, label %.critedge165

bb.w:                                             ; preds = %bb.v, %bb.u
  %.val170189.1 = load i32, ptr %i.cn, align 4, !tbaa !35 ; 2 uses
  %i.dx = icmp sgt i32 %.val170189.1, 0
  br i1 %i.dx, label %.lr.ph192.1, label %._crit_edge.1.thread

.lr.ph192.1:                                      ; preds = %bb.w
  %.val175.1 = load ptr, ptr %i.co, align 8, !tbaa !38
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph192.1
  %.val170.1232 = phi i32 [ %.val170189.1, %.lr.ph192.1 ], [ %.val170.1, %bb.z ]
  %indvars.iv213.1 = phi i64 [ 0, %.lr.ph192.1 ], [ %indvars.iv.next214.1, %bb.z ] ; 2 uses
  %.0140191.1 = phi i32 [ -1, %.lr.ph192.1 ], [ %.2142.1, %bb.z ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val175.1, i64 %indvars.iv213.1
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !12 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !12 ; 2 uses
  %i.ed = and i32 %i.ec, 65535
  %i.ee = icmp eq i32 %i.ed, %i.cm
  br i1 %i.ee, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ef = icmp eq i32 %.0140191.1, -1
  %spec.select.1 = select i1 %i.ef, i32 %i.dz, i32 %.0140191.1
  %10 = freeze i32 %spec.select.1                 ; 2 uses
  %i.eg = and i32 %i.ec, -65536
  %i.eh = or i32 %i.eg, %10
  store i32 %i.eh, ptr %i.eb, align 4, !tbaa !12
  %.val170.1.pre = load i32, ptr %i.cn, align 4, !tbaa !35
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.val170.1 = phi i32 [ %.val170.1.pre, %bb.y ], [ %.val170.1232, %bb.x ] ; 2 uses
  %.2142.1 = phi i32 [ %10, %bb.y ], [ %.0140191.1, %bb.x ] ; 3 uses
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213.1, 1 ; 2 uses
  %i.ei = sext i32 %.val170.1 to i64
  %i.ej = icmp slt i64 %indvars.iv.next214.1, %i.ei
  br i1 %i.ej, label %bb.x, label %.critedge4.1, !llvm.loop !92

.critedge4.1:                                     ; preds = %bb.z
  %.not158.1 = icmp eq i32 %.2142.1, -1
  br i1 %.not158.1, label %._crit_edge.1.thread, label %.critedge4.1.thread

._crit_edge.1.thread:                             ; preds = %bb.w, %.critedge4.1
  br label %.critedge4.1.thread

.critedge4.1.thread:                              ; preds = %._crit_edge.1.thread, %.critedge4.1, %.critedge4.thread
  %.sroa.6.0 = phi i32 [ %i.cm, %.critedge4.thread ], [ %i.cm, %._crit_edge.1.thread ], [ %.2142.1, %.critedge4.1 ]
  br i1 %.not156, label %.critedge6, label %.preheader

.preheader:                                       ; preds = %.critedge4.1.thread
  %.val169194 = load i32, ptr %i.cn, align 4, !tbaa !35 ; 2 uses
  %i.ek = icmp sgt i32 %.val169194, 0
  br i1 %i.ek, label %.lr.ph197, label %.critedge6

.lr.ph197:                                        ; preds = %.preheader
  %.val174 = load ptr, ptr %i.co, align 8, !tbaa !38
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph197, %bb.ac
  %.val169234 = phi i32 [ %.val169194, %.lr.ph197 ], [ %.val169, %bb.ac ]
  %indvars.iv219 = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next220, %bb.ac ] ; 2 uses
  %.0196 = phi i32 [ -1, %.lr.ph197 ], [ %.2, %bb.ac ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.val174, i64 %indvars.iv219
  %i.em = load i32, ptr %i.el, align 4, !tbaa !12 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %6, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !12 ; 2 uses
  %i.eq = and i32 %i.ep, 65535                    ; 2 uses
  %i.er = icmp eq i32 %i.eq, %.sroa.0.3
  %i.es = icmp eq i32 %i.eq, %.sroa.6.0
  %or.cond167 = select i1 %i.er, i1 true, i1 %i.es
  br i1 %or.cond167, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = icmp eq i32 %.0196, -1
  %spec.select168 = select i1 %i.et, i32 %i.em, i32 %.0196 ; 2 uses
  %i.eu = and i32 %i.ep, -65536
  %i.ev = or i32 %i.eu, %spec.select168
  store i32 %i.ev, ptr %i.eo, align 4, !tbaa !12
  %.val169.pre = load i32, ptr %i.cn, align 4, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.val169 = phi i32 [ %.val169.pre, %bb.ab ], [ %.val169234, %bb.aa ] ; 2 uses
  %.2 = phi i32 [ %spec.select168, %bb.ab ], [ %.0196, %bb.aa ]
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.ew = sext i32 %.val169 to i64
  %i.ex = icmp slt i64 %indvars.iv.next220, %i.ew
  br i1 %i.ex, label %bb.aa, label %.critedge6, !llvm.loop !93

.critedge6:                                       ; preds = %bb.ac, %.preheader, %.critedge4.1.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  store i32 0, ptr %i.ey, align 4, !tbaa !35
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.critedge6
  %i.ez = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge6
  %.val198 = load i32, ptr %i.cn, align 4, !tbaa !35
  %i.fa = icmp sgt i32 %.val198, 0
  br i1 %i.fa, label %.lr.ph200, label %.critedge8

.lr.ph200:                                        ; preds = %bb.ae
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph200, %bb.ap
  %indvars.iv222 = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next223, %bb.ap ] ; 2 uses
  %.val173 = load ptr, ptr %i.co, align 8, !tbaa !38
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val173, i64 %indvars.iv222
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !12
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %6, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !12
  %i.fh = load i32, ptr %i.ey, align 4, !tbaa !35 ; 7 uses
  %i.fi = load i32, ptr %7, align 8, !tbaa !37
  %i.fj = icmp eq i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ag, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.af
  %.pre236 = load ptr, ptr %i.fb, align 8, !tbaa !38
  br label %Vec_IntPush.exit

bb.ag:                                            ; preds = %bb.af
  %i.fk = icmp slt i32 %i.fh, 16
  br i1 %i.fk, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fl = load ptr, ptr %i.fb, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.fl, null
  br i1 %.not9.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fl, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aj:                                            ; preds = %bb.ah
  %i.fn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ak:                                            ; preds = %bb.ag
  %i.fo = icmp samesign ult i32 %i.fh, 1073741823
  %i.fp = shl nuw nsw i32 %i.fh, 1
  %spec.select.i = select i1 %i.fo, i32 %i.fp, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.fh, %spec.select.i
  %.pre237 = load ptr, ptr %i.fb, align 8, !tbaa !38 ; 3 uses
  br i1 %.not.i9.i, label %bb.al, label %Vec_IntPush.exit

bb.al:                                            ; preds = %bb.ak
  %.not9.i10.i = icmp eq ptr %.pre237, null
  %i.fq = zext nneg i32 %spec.select.i to i64
  %i.fr = shl nuw nsw i64 %i.fq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fs = tail call ptr @realloc(ptr noundef nonnull %.pre237, i64 noundef %i.fr) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.an:                                            ; preds = %bb.al
  %i.ft = tail call noalias ptr @malloc(i64 noundef %i.fr) #30
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.am, %bb.an, %bb.ai, %bb.aj
  %i.fu = phi ptr [ %i.fn, %bb.aj ], [ %i.fm, %bb.ai ], [ %i.fs, %bb.am ], [ %i.ft, %bb.an ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.aj ], [ 16, %bb.ai ], [ %spec.select.i, %bb.am ], [ %spec.select.i, %bb.an ]
  store ptr %i.fu, ptr %i.fb, align 8, !tbaa !38
  store i32 %spec.select.sink.i, ptr %7, align 8, !tbaa !37
  %.pre238 = load i32, ptr %i.ey, align 4, !tbaa !35
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.ak, %Vec_IntGrow.exit11.sink.split.i
  %i.fv = phi i32 [ %i.fh, %.Vec_IntPush.exit_crit_edge ], [ %i.fh, %bb.ak ], [ %.pre238, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.fw = phi ptr [ %.pre236, %.Vec_IntPush.exit_crit_edge ], [ %.pre237, %bb.ak ], [ %i.fu, %Vec_IntGrow.exit11.sink.split.i ]
  %i.fx = add nsw i32 %i.fv, 1
  store i32 %i.fx, ptr %i.ey, align 4, !tbaa !35
  %i.fy = sext i32 %i.fv to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.fy
  store i32 %i.fg, ptr %i.fz, align 4, !tbaa !12
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %Vec_IntPush.exit
  %i.ga = load i32, ptr %i.ff, align 4, !tbaa !12 ; 2 uses
  %i.gb = and i32 %i.ga, 65535
  %i.gc = ashr i32 %i.ga, 16
  %i.gd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.gb, i32 noundef %i.gc) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %Vec_IntPush.exit, %bb.ao
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %.val = load i32, ptr %i.cn, align 4, !tbaa !35
  %i.ge = sext i32 %.val to i64
  %i.gf = icmp slt i64 %indvars.iv.next223, %i.ge
  br i1 %i.gf, label %bb.af, label %.critedge8, !llvm.loop !94

.critedge8:                                       ; preds = %bb.ap, %bb.ae
  br i1 %.not, label %.critedge165, label %bb.aq

bb.aq:                                            ; preds = %.critedge8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.critedge165

.critedge165:                                     ; preds = %bb.j, %bb.i, %bb.k, %bb.l, %bb.n, %bb.o, %bb.u, %bb.v, %.critedge8, %bb.aq, %bb.h
  %.6 = phi i32 [ 1, %bb.aq ], [ -1, %bb.h ], [ 1, %.critedge8 ], [ -1, %bb.n ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.o ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define void @Abc_GraphBuildFrontier(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %6, align 8, !tbaa !101
  %.neg116 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !102
  %.neg = sdiv i64 %i.f, -1000
  %.neg117 = add i64 %.neg, %.neg116
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg117, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.g = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val77 = load i32, ptr %i.g, align 4, !tbaa !35 ; 2 uses
  %i.h = sdiv i32 %.val77, 2                      ; 4 uses
  %i.i = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.i, align 4, !tbaa !35
  %i.j = sdiv i32 %.val, 2                        ; 3 uses
  %i.k = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 11 uses
  %i.l = add nsw i32 %i.h, -1                     ; 3 uses
  %or.cond.i = icmp ult i32 %i.l, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.h ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  store i32 0, ptr %i.m, align 4, !tbaa !40
  store i32 %spec.store.select.i, ptr %i.k, align 8, !tbaa !41
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WecAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = sext i32 %spec.store.select.i to i64
  %i.o = call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 16) #28
  br label %Vec_WecAlloc.exit

Vec_WecAlloc.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %Abc_Clock.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 8 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !42
  %i.r = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 9 uses
  %i.s = add nsw i32 %i.j, -1
  %or.cond.i81 = icmp ult i32 %i.s, 15
  %spec.store.select.i82 = select i1 %or.cond.i81, i32 16, i32 %i.j ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !35
  store i32 %spec.store.select.i82, ptr %i.r, align 8, !tbaa !37
  %.not.i83 = icmp eq i32 %spec.store.select.i82, 0
  br i1 %.not.i83, label %Vec_IntAlloc.exit, label %bb.d

bb.d:                                             ; preds = %Vec_WecAlloc.exit
  %i.u = sext i32 %spec.store.select.i82 to i64
  %i.v = shl nsw i64 %i.u, 2
end_hunk_0
