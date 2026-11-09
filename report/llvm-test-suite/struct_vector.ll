Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/struct_vector?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@hypre_StructVectorSetValues:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.i = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not61 = icmp eq i32 %3, 0
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %.not = icmp slt i32 %i.i, %i.p
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %.not56 = icmp sgt i32 %i.i, %i.r
  br i1 %.not56, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.j, align 4, !tbaa !7    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %.not57 = icmp slt i32 %i.s, %i.u
  br i1 %.not57, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %.not58 = icmp sgt i32 %i.s, %i.w
  br i1 %.not58, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.k, align 4, !tbaa !7    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %.not59 = icmp slt i32 %i.x, %i.z
  br i1 %.not59, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %.not60 = icmp sgt i32 %i.x, %i.ab
  br i1 %.not60, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %indvars.iv ; 5 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7  ; 2 uses
  %i.am = sub i32 %i.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7  ; 2 uses
  %i.ap = sub i32 %i.s, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = sub nsw i32 %i.ar, %i.ao                ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = sub nsw i32 %i.x, %i.av
  %i.ax = add nuw nsw i32 %i.as, 1
  %i.ay = mul nsw i32 %i.aw, %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.az = phi i32 [ %i.ay, %bb.i ], [ 0, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = sub nsw i32 %i.bb, %i.al                ; 2 uses
  %i.bd = add nsw i32 %i.ap, %i.az
  %i.be = add nuw nsw i32 %i.bc, 1
  %i.bf = mul nsw i32 %i.be, %i.bd
  %.inv = icmp slt i32 %i.bc, 0
  %i.bg = select i1 %.inv, i32 0, i32 %i.bf
  %i.bh = add nsw i32 %i.am, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bi ; 2 uses
  br i1 %.not61, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !38
  %i.bl = fadd double %2, %i.bk
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k
  %.sink = phi double [ %i.bl, %bb.k ], [ %2, %bb.j ]
  store double %.sink, ptr %i.bj, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorSetBoxValues(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 !guid !69 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.h) #14 ; 6 uses
  %i.j = tail call ptr @hypre_BoxCreate() #14     ; 9 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !33
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @hypre_IntersectBoxes(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.j) #14 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !7
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !7
  %i.x = load i32, ptr %i.m, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !7
  %i.z = load i32, ptr %i.n, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !7
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !7
  %i.af = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !33
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.thread, !llvm.loop !55

._crit_edge.thread:                               ; preds = %bb.b
  %i.ak = tail call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.j) #14 ; 0 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %i.al = tail call i32 @hypre_BoxDestroy(ptr noundef %i.j) #14 ; 0 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.ao = tail call ptr @hypre_BoxDuplicate(ptr noundef %1) #14 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !33
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph507, label %._crit_edge508

.lr.ph507:                                        ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not439 = icmp eq i32 %3, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !34  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %._crit_edge508, label %.lr.ph507.split

.lr.ph507.splitthread-pre-split:                  ; preds = %.critedge
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !34
  br label %.lr.ph507.split

.lr.ph507.split:                                  ; preds = %.lr.ph507, %.lr.ph507.splitthread-pre-split
  %i.bc = phi ptr [ %.pr, %.lr.ph507.splitthread-pre-split ], [ %i.ba, %.lr.ph507 ] ; 2 uses
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %.lr.ph507.splitthread-pre-split ], [ 0, %.lr.ph507 ] ; 4 uses
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv548 ; 6 uses
  %.not438 = icmp eq ptr %i.bc, null
  br i1 %.not438, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph507.split
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv548 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 2 uses
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !24 ; 4 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv548
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bq ; 10 uses
  %i.bs = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.bt = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !7  ; 3 uses
  %i.bv = sub i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7  ; 2 uses
  %i.bz = sub i32 %i.bw, %i.by                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = sub nsw i32 %i.cc, %i.by                ; 5 uses
  %i.ce = icmp sgt i32 %i.cd, -1                  ; 4 uses
  br i1 %.not439, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cf = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = sub nsw i32 %i.cf, %i.ch
  %i.cj = add nuw nsw i32 %i.cd, 1
  %i.ck = mul nsw i32 %i.ci, %i.cj
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cl = phi i32 [ %i.ck, %bb.f ], [ 0, %bb.e ]
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cn = sub i32 %i.cm, %i.bu                    ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1                  ; 2 uses
  %i.cp = add nsw i32 %i.bz, %i.cl
  %i.cq = add i32 %i.cn, 1                        ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cp
  %i.cs = select i1 %i.co, i32 %i.cr, i32 0
  %i.ct = add nsw i32 %i.bv, %i.cs
  %i.cu = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.cv = sub i32 %i.bg, %i.cu
  %i.cw = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %i.cx = sub i32 %i.bi, %i.cw
  %i.cy = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.cz = sub nsw i32 %i.cy, %i.cw                ; 3 uses
  %i.da = icmp sgt i32 %i.cz, -1                  ; 2 uses
  br i1 %i.da, label %bb.h, label %._crit_edge551

._crit_edge551:                                   ; preds = %bb.g
  %.pre553 = add nuw nsw i32 %i.cz, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.db = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.dc = sub nsw i32 %i.bk, %i.db
  %i.dd = add nuw nsw i32 %i.cz, 1                ; 2 uses
  %i.de = mul nsw i32 %i.dc, %i.dd
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge551, %bb.h
  %.pre-phi554 = phi i32 [ %.pre553, %._crit_edge551 ], [ %i.dd, %bb.h ]
  %i.df = phi i32 [ 0, %._crit_edge551 ], [ %i.de, %bb.h ]
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !7   ; 9 uses
  %i.dh = load i32, ptr %i.ay, align 4, !tbaa !7  ; 4 uses
  %i.di = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.preheader457.lr.ph, label %.critedge

.preheader457.lr.ph:                              ; preds = %bb.i
  %i.dk = load i32, ptr %i.av, align 4, !tbaa !7
  %i.dl = sub i32 %i.dk, %i.cu                    ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, -1                  ; 2 uses
  %i.dn = add i32 %i.dl, 1                        ; 2 uses
  %i.do = select i1 %i.dm, i32 %i.dn, i32 0       ; 3 uses
  %i.dp = mul nsw i32 %i.do, %.pre-phi554
  %i.dq = select i1 %i.da, i32 %i.dp, i32 0
  %i.dr = select i1 %i.co, i32 %i.cq, i32 0       ; 3 uses
  %i.ds = add nuw nsw i32 %i.cd, 1
  %i.dt = mul nsw i32 %i.dr, %i.ds
  %i.du = select i1 %i.ce, i32 %i.dt, i32 0
  %i.dv = icmp sgt i32 %i.dh, 0
  %i.dw = sub i32 %i.dr, %i.dg
  %i.dx = sub i32 %i.do, %i.dg
  %i.dy = mul i32 %i.dh, %i.dr
  %i.dz = sub i32 %i.du, %i.dy
  %i.ea = mul i32 %i.do, %i.dh
  %i.eb = sub i32 %i.dq, %i.ea
  %i.ec = icmp sgt i32 %i.dg, 0
  %or.cond576 = and i1 %i.dv, %i.ec
  br i1 %or.cond576, label %.preheader457.us.preheader, label %.critedge

.preheader457.us.preheader:                       ; preds = %.preheader457.lr.ph
  %i.ed = add nsw i32 %i.cx, %i.df
  %i.ee = mul nsw i32 %i.dn, %i.ed
  %i.ef = select i1 %i.dm, i32 %i.ee, i32 0
  %i.eg = add nsw i32 %i.cv, %i.ef
  %i.eh = add nsw i32 %i.dg, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 3                ; 2 uses
  %i.ek = zext nneg i32 %i.dg to i64              ; 2 uses
  %min.iters.check596 = icmp ult i32 %i.dg, 4
  %invariant.gep628.a = getelementptr i8, ptr %i.bl, i64 %i.ej
  %invariant.gep630.a = getelementptr i8, ptr %2, i64 %i.ej
  %n.vec599 = and i64 %i.ek, 2147483644           ; 5 uses
  %i.el = trunc nuw nsw i64 %n.vec599 to i32
  %cmp.n608 = icmp eq i64 %n.vec599, %i.ek
  br label %.preheader457.us

.preheader457.us:                                 ; preds = %.preheader457.us.preheader, %._crit_edge471.split.us.us
  %.1389479.us = phi i32 [ %i.gb, %._crit_edge471.split.us.us ], [ 0, %.preheader457.us.preheader ]
  %.0400478.us = phi i32 [ %i.ga, %._crit_edge471.split.us.us ], [ %i.eg, %.preheader457.us.preheader ]
  %.0404477.us = phi i32 [ %i.fz, %._crit_edge471.split.us.us ], [ %i.ct, %.preheader457.us.preheader ]
  br label %.preheader455.us.us

.preheader455.us.us:                              ; preds = %._crit_edge466.us.us, %.preheader457.us
  %.1391470.us.us = phi i32 [ 0, %.preheader457.us ], [ %i.fy, %._crit_edge466.us.us ]
  %.1401469.us.us = phi i32 [ %.0400478.us, %.preheader457.us ], [ %i.fx, %._crit_edge466.us.us ]
  %.1405468.us.us = phi i32 [ %.0404477.us, %.preheader457.us ], [ %i.fw, %._crit_edge466.us.us ]
  %i.em = sext i32 %.1401469.us.us to i64         ; 5 uses
  %i.en = sext i32 %.1405468.us.us to i64         ; 5 uses
  br i1 %min.iters.check596, label %scalar.ph595.preheader, label %vector.memcheck597

vector.memcheck597:                               ; preds = %.preheader455.us.us
  %4 = add nsw i64 %i.en, %i.bq
  %i.eo = shl nsw i64 %4, 3                       ; 2 uses
  %5 = getelementptr i8, ptr %i.bl, i64 %i.eo
  %gep629 = getelementptr i8, ptr %invariant.gep628.a, i64 %i.eo
  %i.ep = getelementptr i8, ptr %gep629, i64 8
  %i.eq = shl nsw i64 %i.em, 3                    ; 2 uses
  %6 = getelementptr i8, ptr %2, i64 %i.eq
  %gep631.a = getelementptr i8, ptr %invariant.gep630.a, i64 %i.eq
  %i.er = getelementptr i8, ptr %gep631.a, i64 8
  %bound0 = icmp ult ptr %5, %i.er
  %bound1 = icmp ult ptr %6, %i.ep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph595.preheader, label %vector.ph598

vector.ph598:                                     ; preds = %vector.memcheck597
  %i.es = add nsw i64 %n.vec599, %i.en            ; 2 uses
  %i.et = add nsw i64 %n.vec599, %i.em            ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.em
  %invariant.gep626 = getelementptr [8 x i8], ptr %i.br, i64 %i.en
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %vector.ph598
  %index601 = phi i64 [ 0, %vector.ph598 ], [ %index.next606, %vector.body600 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index601 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load602 = load <2 x double>, ptr %gep, align 8, !tbaa !38, !alias.scope !70
  %wide.load603 = load <2 x double>, ptr %i.eu, align 8, !tbaa !38, !alias.scope !70
  %gep627 = getelementptr [8 x i8], ptr %invariant.gep626, i64 %index601 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep627, i64 16 ; 2 uses
  %wide.load604 = load <2 x double>, ptr %gep627, align 8, !tbaa !38, !alias.scope !71, !noalias !70
  %wide.load605 = load <2 x double>, ptr %i.ev, align 8, !tbaa !38, !alias.scope !71, !noalias !70
  %i.ew = fadd <2 x double> %wide.load602, %wide.load604
  %i.ex = fadd <2 x double> %wide.load603, %wide.load605
  store <2 x double> %i.ew, ptr %gep627, align 8, !tbaa !38, !alias.scope !71, !noalias !70
  store <2 x double> %i.ex, ptr %i.ev, align 8, !tbaa !38, !alias.scope !71, !noalias !70
  %index.next606 = add nuw i64 %index601, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next606, %n.vec599
  br i1 %i.ey, label %middle.block607, label %vector.body600, !llvm.loop !59

middle.block607:                                  ; preds = %vector.body600
  br i1 %cmp.n608, label %._crit_edge466.us.us, label %scalar.ph595.preheader

scalar.ph595.preheader:                           ; preds = %vector.memcheck597, %.preheader455.us.us, %middle.block607
  %indvars.iv528.ph = phi i64 [ %i.en, %vector.memcheck597 ], [ %i.en, %.preheader455.us.us ], [ %i.es, %middle.block607 ] ; 3 uses
  %indvars.iv526.ph = phi i64 [ %i.em, %vector.memcheck597 ], [ %i.em, %.preheader455.us.us ], [ %i.et, %middle.block607 ] ; 3 uses
  %.1395464.us.us.ph = phi i32 [ 0, %vector.memcheck597 ], [ 0, %.preheader455.us.us ], [ %i.el, %middle.block607 ] ; 4 uses
  %i.ez = sub i32 %i.dg, %.1395464.us.us.ph
  %.neg = add i32 %.1395464.us.us.ph, 1
  %xtraiter = and i32 %i.ez, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph595.prol.loopexit, label %scalar.ph595.prol

scalar.ph595.prol:                                ; preds = %scalar.ph595.preheader
  %i.fa = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv526.ph
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !38
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv528.ph ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !38
  %i.fe = fadd double %i.fb, %i.fd
  store double %i.fe, ptr %i.fc, align 8, !tbaa !38
  %indvars.iv.next529.prol = add nsw i64 %indvars.iv528.ph, 1 ; 2 uses
  %indvars.iv.next527.prol = add nsw i64 %indvars.iv526.ph, 1 ; 2 uses
  %i.ff = add nuw nsw i32 %.1395464.us.us.ph, 1
  br label %scalar.ph595.prol.loopexit

scalar.ph595.prol.loopexit:                       ; preds = %scalar.ph595.prol, %scalar.ph595.preheader
  %indvars.iv.next529.lcssa614.unr = phi i64 [ poison, %scalar.ph595.preheader ], [ %indvars.iv.next529.prol, %scalar.ph595.prol ]
  %indvars.iv.next527.lcssa613.unr = phi i64 [ poison, %scalar.ph595.preheader ], [ %indvars.iv.next527.prol, %scalar.ph595.prol ]
  %indvars.iv528.unr = phi i64 [ %indvars.iv528.ph, %scalar.ph595.preheader ], [ %indvars.iv.next529.prol, %scalar.ph595.prol ]
  %indvars.iv526.unr = phi i64 [ %indvars.iv526.ph, %scalar.ph595.preheader ], [ %indvars.iv.next527.prol, %scalar.ph595.prol ]
  %.1395464.us.us.unr = phi i32 [ %.1395464.us.us.ph, %scalar.ph595.preheader ], [ %i.ff, %scalar.ph595.prol ]
  %i.fg = icmp eq i32 %i.dg, %.neg
  br i1 %i.fg, label %._crit_edge466.us.us, label %scalar.ph595

scalar.ph595:                                     ; preds = %scalar.ph595.prol.loopexit, %scalar.ph595
  %indvars.iv528 = phi i64 [ %indvars.iv.next529.1, %scalar.ph595 ], [ %indvars.iv528.unr, %scalar.ph595.prol.loopexit ] ; 3 uses
  %indvars.iv526 = phi i64 [ %indvars.iv.next527.1, %scalar.ph595 ], [ %indvars.iv526.unr, %scalar.ph595.prol.loopexit ] ; 3 uses
  %.1395464.us.us = phi i32 [ %i.ft, %scalar.ph595 ], [ %.1395464.us.us.unr, %scalar.ph595.prol.loopexit ]
  %i.fh = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv526
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !38
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv528 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !38
  %i.fl = fadd double %i.fi, %i.fk
  store double %i.fl, ptr %i.fj, align 8, !tbaa !38
  %i.fm = getelementptr [8 x i8], ptr %2, i64 %indvars.iv526
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !38
  %i.fp = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv528
  %i.fq = getelementptr i8, ptr %i.fp, i64 8      ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !38
  %i.fs = fadd double %i.fo, %i.fr
  store double %i.fs, ptr %i.fq, align 8, !tbaa !38
  %indvars.iv.next529.1 = add nsw i64 %indvars.iv528, 2 ; 2 uses
  %indvars.iv.next527.1 = add nsw i64 %indvars.iv526, 2 ; 2 uses
  %i.ft = add nuw nsw i32 %.1395464.us.us, 2      ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ft, %i.dg
  br i1 %exitcond.not.1, label %._crit_edge466.us.us, label %scalar.ph595, !llvm.loop !60

._crit_edge466.us.us:                             ; preds = %scalar.ph595.prol.loopexit, %scalar.ph595, %middle.block607
  %indvars.iv.next529.lcssa = phi i64 [ %i.es, %middle.block607 ], [ %indvars.iv.next529.lcssa614.unr, %scalar.ph595.prol.loopexit ], [ %indvars.iv.next529.1, %scalar.ph595 ]
  %indvars.iv.next527.lcssa = phi i64 [ %i.et, %middle.block607 ], [ %indvars.iv.next527.lcssa613.unr, %scalar.ph595.prol.loopexit ], [ %indvars.iv.next527.1, %scalar.ph595 ]
  %i.fu = trunc nsw i64 %indvars.iv.next529.lcssa to i32
  %i.fv = trunc nsw i64 %indvars.iv.next527.lcssa to i32
  %i.fw = add nsw i32 %i.dw, %i.fu                ; 2 uses
  %i.fx = add nsw i32 %i.dx, %i.fv                ; 2 uses
  %i.fy = add nuw nsw i32 %.1391470.us.us, 1      ; 2 uses
  %exitcond533.not = icmp eq i32 %i.fy, %i.dh
  br i1 %exitcond533.not, label %._crit_edge471.split.us.us, label %.preheader455.us.us, !llvm.loop !61

._crit_edge471.split.us.us:                       ; preds = %._crit_edge466.us.us
  %i.fz = add nsw i32 %i.dz, %i.fw
  %i.ga = add nsw i32 %i.eb, %i.fx
  %i.gb = add nuw nsw i32 %.1389479.us, 1         ; 2 uses
  %exitcond534.not = icmp eq i32 %i.gb, %i.di
  br i1 %exitcond534.not, label %.critedge, label %.preheader457.us, !llvm.loop !62

bb.j:                                             ; preds = %bb.d
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gc = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !7
  %i.gf = sub nsw i32 %i.gc, %i.ge
  %i.gg = add nuw nsw i32 %i.cd, 1
  %i.gh = mul nsw i32 %i.gf, %i.gg
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.gi = phi i32 [ %i.gh, %bb.k ], [ 0, %bb.j ]
  %i.gj = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.gk = sub i32 %i.gj, %i.bu                    ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, -1                  ; 2 uses
  %i.gm = add nsw i32 %i.bz, %i.gi
  %i.gn = add i32 %i.gk, 1                        ; 2 uses
  %i.go = mul nsw i32 %i.gn, %i.gm
  %i.gp = select i1 %i.gl, i32 %i.go, i32 0
  %i.gq = add nsw i32 %i.bv, %i.gp
  %i.gr = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.gs = sub i32 %i.bg, %i.gr
  %i.gt = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %i.gu = sub i32 %i.bi, %i.gt
  %i.gv = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.gw = sub nsw i32 %i.gv, %i.gt                ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, -1                  ; 2 uses
  br i1 %i.gx, label %bb.m, label %._crit_edge552

._crit_edge552:                                   ; preds = %bb.l
  %.pre = add nuw nsw i32 %i.gw, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gy = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.gz = sub nsw i32 %i.bk, %i.gy
  %i.ha = add nuw nsw i32 %i.gw, 1                ; 2 uses
  %i.hb = mul nsw i32 %i.gz, %i.ha
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge552, %bb.m
  %.pre-phi = phi i32 [ %.pre, %._crit_edge552 ], [ %i.ha, %bb.m ]
  %i.hc = phi i32 [ 0, %._crit_edge552 ], [ %i.hb, %bb.m ]
  %i.hd = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.he = load i32, ptr %i.ay, align 4, !tbaa !7  ; 4 uses
  %i.hf = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.preheader456.lr.ph, label %.critedge

.preheader456.lr.ph:                              ; preds = %bb.n
  %i.hh = load i32, ptr %i.av, align 4, !tbaa !7
  %i.hi = sub i32 %i.hh, %i.gr                    ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, -1                  ; 2 uses
  %i.hk = add i32 %i.hi, 1                        ; 2 uses
  %i.hl = select i1 %i.hj, i32 %i.hk, i32 0       ; 3 uses
  %i.hm = mul nsw i32 %i.hl, %.pre-phi
  %i.hn = select i1 %i.gx, i32 %i.hm, i32 0
  %i.ho = select i1 %i.gl, i32 %i.gn, i32 0       ; 3 uses
  %i.hp = add nuw nsw i32 %i.cd, 1
  %i.hq = mul nsw i32 %i.ho, %i.hp
  %i.hr = select i1 %i.ce, i32 %i.hq, i32 0
  %i.hs = icmp sgt i32 %i.he, 0
  %i.ht = sub i32 %i.ho, %i.hd
  %i.hu = sub i32 %i.hl, %i.hd
  %i.hv = mul i32 %i.he, %i.ho
  %i.hw = sub i32 %i.hr, %i.hv
  %i.hx = mul i32 %i.hl, %i.he
  %i.hy = sub i32 %i.hn, %i.hx
  %i.hz = icmp sgt i32 %i.hd, 0
  %or.cond578 = and i1 %i.hs, %i.hz
  br i1 %or.cond578, label %.preheader456.us.preheader, label %.critedge

.preheader456.us.preheader:                       ; preds = %.preheader456.lr.ph
  %i.ia = add nsw i32 %i.gu, %i.hc
  %i.ib = mul nsw i32 %i.hk, %i.ia
  %i.ic = select i1 %i.hj, i32 %i.ib, i32 0
  %i.id = add nsw i32 %i.gs, %i.ic
  %i.ie = zext nneg i32 %i.hd to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.hd, 6
  %n.vec = and i64 %i.ie, 2147483644              ; 5 uses
  %i.if = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ie
  br label %.preheader456.us

.preheader456.us:                                 ; preds = %.preheader456.us.preheader, %._crit_edge491.split.us.us
  %.3501.us = phi i32 [ %i.jx, %._crit_edge491.split.us.us ], [ 0, %.preheader456.us.preheader ]
  %.3403500.us = phi i32 [ %i.jw, %._crit_edge491.split.us.us ], [ %i.id, %.preheader456.us.preheader ]
  %.3407499.us = phi i32 [ %i.jv, %._crit_edge491.split.us.us ], [ %i.gq, %.preheader456.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge486.us.us, %.preheader456.us
  %.3393490.us.us = phi i32 [ 0, %.preheader456.us ], [ %i.ju, %._crit_edge486.us.us ]
  %.4489.us.us = phi i32 [ %.3403500.us, %.preheader456.us ], [ %i.jt, %._crit_edge486.us.us ]
  %.4408488.us.us = phi i32 [ %.3407499.us, %.preheader456.us ], [ %i.js, %._crit_edge486.us.us ]
  %i.ig = sext i32 %.4489.us.us to i64            ; 5 uses
  %i.ih = sext i32 %.4408488.us.us to i64         ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %7 = shl nsw i64 %i.ig, 3
  %i.ii = add nsw i64 %i.ih, %i.bq
  %i.ij = shl nsw i64 %i.ii, 3
  %8 = add i64 %i.ij, %i.bm
  %i.ik = add i64 %7, %i.a
  %9 = sub i64 %i.ik, %8
  %diff.check = icmp ugt i64 %9, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.il = add nsw i64 %n.vec, %i.ih               ; 2 uses
  %i.im = add nsw i64 %n.vec, %i.ig               ; 2 uses
  %invariant.gep632.a = getelementptr [8 x i8], ptr %2, i64 %i.ig
  %invariant.gep634 = getelementptr [8 x i8], ptr %i.br, i64 %i.ih
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep633.a = getelementptr [8 x i8], ptr %invariant.gep632.a, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %gep633.a, i64 16
  %wide.load = load <2 x double>, ptr %gep633.a, align 8, !tbaa !38
  %wide.load583 = load <2 x double>, ptr %i.in, align 8, !tbaa !38
  %gep635 = getelementptr [8 x i8], ptr %invariant.gep634, i64 %index ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %gep635, i64 16
  store <2 x double> %wide.load, ptr %gep635, align 8, !tbaa !38
  store <2 x double> %wide.load583, ptr %i.io, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge486.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv540.ph = phi i64 [ %i.ih, %vector.memcheck ], [ %i.ih, %.preheader.us.us ], [ %i.il, %middle.block ] ; 2 uses
  %indvars.iv538.ph = phi i64 [ %i.ig, %vector.memcheck ], [ %i.ig, %.preheader.us.us ], [ %i.im, %middle.block ] ; 2 uses
  %.3397484.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %i.if, %middle.block ] ; 4 uses
  %i.iq = sub i32 %i.hd, %.3397484.us.us.ph
  %xtraiter620 = and i32 %i.iq, 3                 ; 2 uses
  %lcmp.mod621.not = icmp eq i32 %xtraiter620, 0
  br i1 %lcmp.mod621.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv540.prol = phi i64 [ %indvars.iv.next541.prol, %scalar.ph.prol ], [ %indvars.iv540.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv538.prol = phi i64 [ %indvars.iv.next539.prol, %scalar.ph.prol ], [ %indvars.iv538.ph, %scalar.ph.preheader ] ; 2 uses
  %.3397484.us.us.prol = phi i32 [ %i.iu, %scalar.ph.prol ], [ %.3397484.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ir = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv538.prol
  %i.is = load double, ptr %i.ir, align 8, !tbaa !38
  %i.it = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv540.prol
  store double %i.is, ptr %i.it, align 8, !tbaa !38
  %indvars.iv.next541.prol = add nsw i64 %indvars.iv540.prol, 1 ; 3 uses
  %indvars.iv.next539.prol = add nsw i64 %indvars.iv538.prol, 1 ; 3 uses
  %i.iu = add nuw nsw i32 %.3397484.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter620
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !64

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next541.lcssa617.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next541.prol, %scalar.ph.prol ]
  %indvars.iv.next539.lcssa616.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next539.prol, %scalar.ph.prol ]
  %indvars.iv540.unr = phi i64 [ %indvars.iv540.ph, %scalar.ph.preheader ], [ %indvars.iv.next541.prol, %scalar.ph.prol ]
  %indvars.iv538.unr = phi i64 [ %indvars.iv538.ph, %scalar.ph.preheader ], [ %indvars.iv.next539.prol, %scalar.ph.prol ]
  %.3397484.us.us.unr = phi i32 [ %.3397484.us.us.ph, %scalar.ph.preheader ], [ %i.iu, %scalar.ph.prol ]
  %i.iv = sub i32 %.3397484.us.us.ph, %i.hd
  %i.iw = icmp ugt i32 %i.iv, -4
  br i1 %i.iw, label %._crit_edge486.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv540 = phi i64 [ %indvars.iv.next541.3, %scalar.ph ], [ %indvars.iv540.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv538 = phi i64 [ %indvars.iv.next539.3, %scalar.ph ], [ %indvars.iv538.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.3397484.us.us = phi i32 [ %i.jp, %scalar.ph ], [ %.3397484.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv538
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !38
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv540
  store double %i.iy, ptr %i.iz, align 8, !tbaa !38
  %i.ja = getelementptr [8 x i8], ptr %2, i64 %indvars.iv538
  %i.jb = getelementptr i8, ptr %i.ja, i64 8
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !38
  %i.jd = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv540
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  store double %i.jc, ptr %i.je, align 8, !tbaa !38
  %i.jf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv538
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !38
  %i.ji = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv540
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  store double %i.jh, ptr %i.jj, align 8, !tbaa !38
  %i.jk = getelementptr [8 x i8], ptr %2, i64 %indvars.iv538
  %i.jl = getelementptr i8, ptr %i.jk, i64 24
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !38
  %i.jn = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv540
  %i.jo = getelementptr i8, ptr %i.jn, i64 24
  store double %i.jm, ptr %i.jo, align 8, !tbaa !38
  %indvars.iv.next541.3 = add nsw i64 %indvars.iv540, 4 ; 2 uses
  %indvars.iv.next539.3 = add nsw i64 %indvars.iv538, 4 ; 2 uses
  %i.jp = add nuw nsw i32 %.3397484.us.us, 4      ; 2 uses
  %exitcond545.not.3 = icmp eq i32 %i.jp, %i.hd
  br i1 %exitcond545.not.3, label %._crit_edge486.us.us, label %scalar.ph, !llvm.loop !65

._crit_edge486.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next541.lcssa = phi i64 [ %i.il, %middle.block ], [ %indvars.iv.next541.lcssa617.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next541.3, %scalar.ph ]
  %indvars.iv.next539.lcssa = phi i64 [ %i.im, %middle.block ], [ %indvars.iv.next539.lcssa616.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next539.3, %scalar.ph ]
  %i.jq = trunc nsw i64 %indvars.iv.next541.lcssa to i32
  %i.jr = trunc nsw i64 %indvars.iv.next539.lcssa to i32
  %i.js = add nsw i32 %i.ht, %i.jq                ; 2 uses
  %i.jt = add nsw i32 %i.hu, %i.jr                ; 2 uses
  %i.ju = add nuw nsw i32 %.3393490.us.us, 1      ; 2 uses
  %exitcond546.not = icmp eq i32 %i.ju, %i.he
  br i1 %exitcond546.not, label %._crit_edge491.split.us.us, label %.preheader.us.us, !llvm.loop !66

._crit_edge491.split.us.us:                       ; preds = %._crit_edge486.us.us
  %i.jv = add nsw i32 %i.hw, %i.js
  %i.jw = add nsw i32 %i.hy, %i.jt
  %i.jx = add nuw nsw i32 %.3501.us, 1            ; 2 uses
  %exitcond547.not = icmp eq i32 %i.jx, %i.hf
  br i1 %exitcond547.not, label %.critedge, label %.preheader456.us, !llvm.loop !67

.critedge:                                        ; preds = %._crit_edge471.split.us.us, %._crit_edge491.split.us.us, %.preheader457.lr.ph, %.preheader456.lr.ph, %bb.n, %bb.i, %.lr.ph507.split
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.jy = load i32, ptr %i.ap, align 8, !tbaa !33
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp slt i64 %indvars.iv.next549, %i.jz
  br i1 %i.ka, label %.lr.ph507.splitthread-pre-split, label %._crit_edge508, !llvm.loop !68

._crit_edge508:                                   ; preds = %.critedge, %.lr.ph507, %bb.c
  %i.kb = call i32 @hypre_BoxDestroy(ptr noundef %i.ao) #14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge508, %._crit_edge
  %i.kc = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 0
}

declare ptr @hypre_BoxCreate() local_unnamed_addr #2

declare i32 @hypre_IntersectBoxes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_BoxDuplicate(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_StructVectorGetValues(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 !guid !73 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.i = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.04961 = phi double [ undef, %.lr.ph ], [ %.1, %bb.k ] ; 6 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %.not = icmp slt i32 %i.i, %i.p
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %.not55 = icmp sgt i32 %i.i, %i.r
  br i1 %.not55, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.j, align 4, !tbaa !7    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %.not56 = icmp slt i32 %i.s, %i.u
  br i1 %.not56, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %.not57 = icmp sgt i32 %i.s, %i.w
  br i1 %.not57, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.k, align 4, !tbaa !7    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %.not58 = icmp slt i32 %i.x, %i.z
  br i1 %.not58, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %.not59 = icmp sgt i32 %i.x, %i.ab
  br i1 %.not59, label %bb.k, label %bb.h
end_hunk_0
begin_hunk_1_@hypre_StructVectorGetBoxValues:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @hypre_IntersectBoxes(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.j) #14 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !7
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !7
  %i.x = load i32, ptr %i.m, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !7
  %i.z = load i32, ptr %i.n, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !7
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !7
  %i.af = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !33
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.thread, !llvm.loop !74

._crit_edge.thread:                               ; preds = %bb.b
  %i.ak = tail call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.j) #14 ; 0 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %i.al = tail call i32 @hypre_BoxDestroy(ptr noundef %i.j) #14 ; 0 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.ao = tail call ptr @hypre_BoxDuplicate(ptr noundef %1) #14 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !33
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph276, label %._crit_edge277

.lr.ph276:                                        ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !34  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %._crit_edge277, label %.lr.ph276.split

.lr.ph276.splitthread-pre-split:                  ; preds = %.critedge
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !34
  br label %.lr.ph276.split

.lr.ph276.split:                                  ; preds = %.lr.ph276, %.lr.ph276.splitthread-pre-split
  %i.bc = phi ptr [ %.pr, %.lr.ph276.splitthread-pre-split ], [ %i.ba, %.lr.ph276 ] ; 2 uses
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %.lr.ph276.splitthread-pre-split ], [ 0, %.lr.ph276 ] ; 4 uses
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv298 ; 5 uses
  %.not244 = icmp eq ptr %i.bc, null
  br i1 %.not244, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph276.split
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv298 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !24 ; 2 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv298
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bq ; 6 uses
  %i.bs = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.bt = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !7  ; 2 uses
  %i.bv = sub i32 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7  ; 2 uses
  %i.bz = sub i32 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = sub nsw i32 %i.cc, %i.by                ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, -1                  ; 2 uses
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cf = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = sub nsw i32 %i.cf, %i.ch
  %i.cj = add nuw nsw i32 %i.cd, 1
  %i.ck = mul nsw i32 %i.ci, %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cl = phi i32 [ %i.ck, %bb.e ], [ 0, %bb.d ]
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cn = sub i32 %i.cm, %i.bu                    ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1                  ; 2 uses
  %i.cp = add nsw i32 %i.bz, %i.cl
  %i.cq = add i32 %i.cn, 1                        ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cp
  %i.cs = select i1 %i.co, i32 %i.cr, i32 0
  %i.ct = add nsw i32 %i.bv, %i.cs
  %i.cu = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.cv = sub i32 %i.bg, %i.cu
  %i.cw = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %i.cx = sub i32 %i.bi, %i.cw
  %i.cy = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.cz = sub nsw i32 %i.cy, %i.cw                ; 3 uses
  %i.da = icmp sgt i32 %i.cz, -1                  ; 2 uses
  br i1 %i.da, label %bb.g, label %._crit_edge301

._crit_edge301:                                   ; preds = %bb.f
  %.pre = add nuw nsw i32 %i.cz, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.db = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.dc = sub nsw i32 %i.bk, %i.db
  %i.dd = add nuw nsw i32 %i.cz, 1                ; 2 uses
  %i.de = mul nsw i32 %i.dc, %i.dd
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge301, %bb.g
  %.pre-phi = phi i32 [ %.pre, %._crit_edge301 ], [ %i.dd, %bb.g ]
  %i.df = phi i32 [ 0, %._crit_edge301 ], [ %i.de, %bb.g ]
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.dh = load i32, ptr %i.ay, align 4, !tbaa !7  ; 4 uses
  %i.di = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.preheader251.lr.ph, label %.critedge

.preheader251.lr.ph:                              ; preds = %bb.h
  %i.dk = load i32, ptr %i.av, align 4, !tbaa !7
  %i.dl = sub i32 %i.dk, %i.cu                    ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, -1                  ; 2 uses
  %i.dn = add i32 %i.dl, 1                        ; 2 uses
  %i.do = select i1 %i.dm, i32 %i.dn, i32 0       ; 3 uses
  %i.dp = mul nsw i32 %i.do, %.pre-phi
  %i.dq = select i1 %i.da, i32 %i.dp, i32 0
  %i.dr = select i1 %i.co, i32 %i.cq, i32 0       ; 3 uses
  %i.ds = add nuw nsw i32 %i.cd, 1
  %i.dt = mul nsw i32 %i.dr, %i.ds
  %i.du = select i1 %i.ce, i32 %i.dt, i32 0
  %i.dv = icmp sgt i32 %i.dh, 0
  %i.dw = sub i32 %i.dr, %i.dg
  %i.dx = sub i32 %i.do, %i.dg
  %i.dy = mul i32 %i.dh, %i.dr
  %i.dz = sub i32 %i.du, %i.dy
  %i.ea = mul i32 %i.do, %i.dh
  %i.eb = sub i32 %i.dq, %i.ea
  %i.ec = icmp sgt i32 %i.dg, 0
  %or.cond313 = and i1 %i.dv, %i.ec
  br i1 %or.cond313, label %.preheader251.us.preheader, label %.critedge

.preheader251.us.preheader:                       ; preds = %.preheader251.lr.ph
  %i.ed = add nsw i32 %i.cx, %i.df
  %i.ee = mul nsw i32 %i.dn, %i.ed
  %i.ef = select i1 %i.dm, i32 %i.ee, i32 0
  %i.eg = add nsw i32 %i.cv, %i.ef
  %i.eh = zext nneg i32 %i.dg to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.dg, 6
  %n.vec = and i64 %i.eh, 2147483644              ; 5 uses
  %i.ei = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.eh
  br label %.preheader251.us

.preheader251.us:                                 ; preds = %.preheader251.us.preheader, %._crit_edge263.split.us.us
  %.1217271.us = phi i32 [ %i.gd, %._crit_edge263.split.us.us ], [ 0, %.preheader251.us.preheader ]
  %.0224270.us = phi i32 [ %i.gc, %._crit_edge263.split.us.us ], [ %i.eg, %.preheader251.us.preheader ]
  %.0226269.us = phi i32 [ %i.gb, %._crit_edge263.split.us.us ], [ %i.ct, %.preheader251.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge258.us.us, %.preheader251.us
  %.1219262.us.us = phi i32 [ 0, %.preheader251.us ], [ %i.ga, %._crit_edge258.us.us ]
  %.1225261.us.us = phi i32 [ %.0224270.us, %.preheader251.us ], [ %i.fz, %._crit_edge258.us.us ]
  %.1227260.us.us = phi i32 [ %.0226269.us, %.preheader251.us ], [ %i.fy, %._crit_edge258.us.us ]
  %i.ej = sext i32 %.1225261.us.us to i64         ; 5 uses
  %i.ek = sext i32 %.1227260.us.us to i64         ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.el = shl nsw i64 %i.ej, 3
  %i.em = add nsw i64 %i.ek, %i.bq
  %i.en = shl nsw i64 %i.em, 3
  %i.eo = add i64 %i.en, %i.bm
  %i.ep = add i64 %i.el, %i.a
  %i.eq = sub i64 %i.eo, %i.ep
  %diff.check = icmp ugt i64 %i.eq, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.er = add nsw i64 %n.vec, %i.ek               ; 2 uses
  %i.es = add nsw i64 %n.vec, %i.ej               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.br, i64 %i.ek
  %invariant.gep323 = getelementptr [8 x i8], ptr %2, i64 %i.ej
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !38
  %wide.load315 = load <2 x double>, ptr %i.et, align 8, !tbaa !38
  %gep324 = getelementptr [8 x i8], ptr %invariant.gep323, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep324, i64 16
  store <2 x double> %wide.load, ptr %gep324, align 8, !tbaa !38
  store <2 x double> %wide.load315, ptr %i.eu, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge258.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv291.ph = phi i64 [ %i.ek, %vector.memcheck ], [ %i.ek, %.preheader.us.us ], [ %i.er, %middle.block ] ; 2 uses
  %indvars.iv289.ph = phi i64 [ %i.ej, %vector.memcheck ], [ %i.ej, %.preheader.us.us ], [ %i.es, %middle.block ] ; 2 uses
  %.1221256.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %i.ei, %middle.block ] ; 4 uses
  %i.ew = sub i32 %i.dg, %.1221256.us.us.ph
  %xtraiter = and i32 %i.ew, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv291.prol = phi i64 [ %indvars.iv.next292.prol, %scalar.ph.prol ], [ %indvars.iv291.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv289.prol = phi i64 [ %indvars.iv.next290.prol, %scalar.ph.prol ], [ %indvars.iv289.ph, %scalar.ph.preheader ] ; 2 uses
  %.1221256.us.us.prol = phi i32 [ %i.fa, %scalar.ph.prol ], [ %.1221256.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv291.prol
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !38
  %i.ez = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv289.prol
  store double %i.ey, ptr %i.ez, align 8, !tbaa !38
  %indvars.iv.next292.prol = add nsw i64 %indvars.iv291.prol, 1 ; 3 uses
  %indvars.iv.next290.prol = add nsw i64 %indvars.iv289.prol, 1 ; 3 uses
  %i.fa = add nuw nsw i32 %.1221256.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !76

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next292.lcssa319.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next292.prol, %scalar.ph.prol ]
  %indvars.iv.next290.lcssa318.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next290.prol, %scalar.ph.prol ]
  %indvars.iv291.unr = phi i64 [ %indvars.iv291.ph, %scalar.ph.preheader ], [ %indvars.iv.next292.prol, %scalar.ph.prol ]
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %scalar.ph.preheader ], [ %indvars.iv.next290.prol, %scalar.ph.prol ]
  %.1221256.us.us.unr = phi i32 [ %.1221256.us.us.ph, %scalar.ph.preheader ], [ %i.fa, %scalar.ph.prol ]
  %i.fb = sub i32 %.1221256.us.us.ph, %i.dg
  %i.fc = icmp ugt i32 %i.fb, -4
  br i1 %i.fc, label %._crit_edge258.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv291 = phi i64 [ %indvars.iv.next292.3, %scalar.ph ], [ %indvars.iv291.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.3, %scalar.ph ], [ %indvars.iv289.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1221256.us.us = phi i32 [ %i.fv, %scalar.ph ], [ %.1221256.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv291
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !38
  %i.ff = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv289
  store double %i.fe, ptr %i.ff, align 8, !tbaa !38
  %i.fg = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv291
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !38
  %i.fj = getelementptr [8 x i8], ptr %2, i64 %indvars.iv289
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  store double %i.fi, ptr %i.fk, align 8, !tbaa !38
  %i.fl = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv291
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !38
  %i.fo = getelementptr [8 x i8], ptr %2, i64 %indvars.iv289
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  store double %i.fn, ptr %i.fp, align 8, !tbaa !38
  %i.fq = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv291
  %i.fr = getelementptr i8, ptr %i.fq, i64 24
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !38
  %i.ft = getelementptr [8 x i8], ptr %2, i64 %indvars.iv289
  %i.fu = getelementptr i8, ptr %i.ft, i64 24
  store double %i.fs, ptr %i.fu, align 8, !tbaa !38
  %indvars.iv.next292.3 = add nsw i64 %indvars.iv291, 4 ; 2 uses
  %indvars.iv.next290.3 = add nsw i64 %indvars.iv289, 4 ; 2 uses
  %i.fv = add nuw nsw i32 %.1221256.us.us, 4      ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.fv, %i.dg
  br i1 %exitcond.not.3, label %._crit_edge258.us.us, label %scalar.ph, !llvm.loop !77

._crit_edge258.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next292.lcssa = phi i64 [ %i.er, %middle.block ], [ %indvars.iv.next292.lcssa319.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next292.3, %scalar.ph ]
  %indvars.iv.next290.lcssa = phi i64 [ %i.es, %middle.block ], [ %indvars.iv.next290.lcssa318.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next290.3, %scalar.ph ]
  %i.fw = trunc nsw i64 %indvars.iv.next292.lcssa to i32
  %i.fx = trunc nsw i64 %indvars.iv.next290.lcssa to i32
  %i.fy = add nsw i32 %i.dw, %i.fw                ; 2 uses
  %i.fz = add nsw i32 %i.dx, %i.fx                ; 2 uses
  %i.ga = add nuw nsw i32 %.1219262.us.us, 1      ; 2 uses
  %exitcond296.not = icmp eq i32 %i.ga, %i.dh
  br i1 %exitcond296.not, label %._crit_edge263.split.us.us, label %.preheader.us.us, !llvm.loop !78

._crit_edge263.split.us.us:                       ; preds = %._crit_edge258.us.us
  %i.gb = add nsw i32 %i.dz, %i.fy
  %i.gc = add nsw i32 %i.eb, %i.fz
  %i.gd = add nuw nsw i32 %.1217271.us, 1         ; 2 uses
  %exitcond297.not = icmp eq i32 %i.gd, %i.di
  br i1 %exitcond297.not, label %.critedge, label %.preheader251.us, !llvm.loop !79

.critedge:                                        ; preds = %._crit_edge263.split.us.us, %.preheader251.lr.ph, %bb.h, %.lr.ph276.split
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %i.ge = load i32, ptr %i.ap, align 8, !tbaa !33
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next299, %i.gf
  br i1 %i.gg, label %.lr.ph276.splitthread-pre-split, label %._crit_edge277, !llvm.loop !80

._crit_edge277:                                   ; preds = %.critedge, %.lr.ph276, %bb.c
  %i.gh = call i32 @hypre_BoxDestroy(ptr noundef %i.ao) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge277, %._crit_edge
  %i.gi = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_StructVectorSetNumGhost(ptr nofree noundef writeonly captures(none) initializes((48, 72)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 !guid !82 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %1, align 4, !tbaa !7
  store i32 %i.b, ptr %i.a, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.d, ptr %i.e, align 4, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.j, ptr %i.k, align 4, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.m, ptr %i.n, align 4, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.p, ptr %i.q, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_StructVectorAssemble(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 !guid !83 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorSetConstantValues(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #0 !guid !89 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv171 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next172, %.critedge ] ; 4 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv171 ; 4 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv171 ; 5 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !24
end_hunk_1
