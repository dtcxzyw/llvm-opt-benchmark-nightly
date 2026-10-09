Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/editcol?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ffmvec:bb.a
  %i.bm = udiv i64 %i.bl, 2880
  %i.bn = tail call i32 @ffiblk(ptr noundef nonnull %0, i64 noundef %i.bm, i32 noundef 1, ptr noundef nonnull %3) #16
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !14  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 992
  %.pre158 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !34
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bp = load i32, ptr %3, align 4, !tbaa !9
  br label %bb.as

bb.v:                                             ; preds = %._crit_edge, %bb.s
  %i.bq = phi i64 [ %.pre158, %._crit_edge ], [ %i.be, %bb.s ] ; 2 uses
  %i.br = phi ptr [ %.pre, %._crit_edge ], [ %i.t, %bb.s ] ; 3 uses
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 984
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !33
  %i.bx = add nsw i64 %i.bw, %i.bu
  %i.by = tail call i32 @ffshft(ptr noundef nonnull %0, i64 noundef %i.bx, i64 noundef %i.bq, i64 noundef %i.bj, ptr noundef nonnull %3)
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %._crit_edge159

._crit_edge159:                                   ; preds = %bb.w
  %.pre160 = load ptr, ptr %i.h, align 8, !tbaa !14
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ca = load i32, ptr %3, align 4, !tbaa !9
  br label %bb.as

bb.y:                                             ; preds = %._crit_edge159, %bb.v
  %i.cb = phi ptr [ %.pre160, %._crit_edge159 ], [ %i.br, %bb.v ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 984 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !33
  %i.ce = add nsw i64 %i.cd, %i.bj                ; 2 uses
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !33
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.cf = call i32 @ffmkyj(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i64 noundef %i.ce, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 976
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw [160 x i8], ptr %i.ci, i64 %i.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !45
  %i.cm = mul nsw i64 %spec.select, %i.ai
  %i.cn = add nsw i64 %i.cl, %i.cm
  %i.co = call i32 @ffcins(ptr noundef nonnull %0, i64 noundef %i.aq, i64 noundef %i.as, i64 noundef %.0, i64 noundef %i.cn, ptr noundef nonnull %3) ; 0 uses
  br label %bb.ag

bb.z:                                             ; preds = %bb.r
  %i.cp = icmp slt i64 %.0, 0
  br i1 %i.cp, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 984
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 992
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !34
  %i.cu = add nsw i64 %i.ct, %i.cr
  %.fr151 = freeze i64 %i.cu
  %i.cv = add i64 %.fr151, 2879
  %i.cw = srem i64 %i.cv, 2880
  %i.cx = mul nsw i64 %.0, %i.as                  ; 3 uses
  %i.cy = add i64 %i.cx, %i.cw
  %i.cz = sub i64 2879, %i.cy                     ; 2 uses
  %i.da = udiv i64 %i.cz, 2880
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !45
  %i.dd = mul nsw i64 %spec.select, %2
  %i.de = add nsw i64 %i.dc, %i.dd
  %i.df = sub nsw i64 0, %.0
  %i.dg = tail call i32 @ffcdel(ptr noundef nonnull %0, i64 noundef %i.aq, i64 noundef %i.as, i64 noundef %i.df, i64 noundef %i.de, ptr noundef nonnull %3) ; 0 uses
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !14  ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 992
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !34 ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 0
  br i1 %i.dk, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 136
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 984
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !33
  %i.dp = add nsw i64 %i.do, %i.dm
  %i.dq = tail call i32 @ffshft(ptr noundef nonnull %0, i64 noundef %i.dp, i64 noundef %i.dj, i64 noundef %i.cx, ptr noundef nonnull %3)
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ds = load i32, ptr %3, align 4, !tbaa !9
  br label %bb.as

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dt = icmp sgt i64 %i.cz, 2879
  br i1 %i.dt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.du = tail call i32 @ffdblk(ptr noundef nonnull %0, i64 noundef %i.da, ptr noundef nonnull %3) #16 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 984 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !33
  %i.dy = add nsw i64 %i.dx, %i.cx                ; 2 uses
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !33
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.dz = call i32 @ffmkyj(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i64 noundef %i.dy, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %bb.af, %bb.y
  br i1 %i.av, label %.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.ag, label %bb.aj [
    i32 11, label %.sink.split
    i32 14, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %.sink.split

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.ao, label %.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  switch i32 %i.ag, label %bb.ar [
    i32 21, label %.sink.split
    i32 41, label %bb.al
    i32 81, label %bb.am
    i32 42, label %bb.an
    i32 82, label %bb.ao
    i32 83, label %bb.ap
    i32 163, label %bb.aq
  ]

bb.al:                                            ; preds = %bb.ak
  br label %.sink.split

bb.am:                                            ; preds = %bb.ak
  br label %.sink.split

bb.an:                                            ; preds = %bb.ak
  br label %.sink.split

bb.ao:                                            ; preds = %bb.ak
  br label %.sink.split

bb.ap:                                            ; preds = %bb.ak
  br label %.sink.split

bb.aq:                                            ; preds = %bb.ak
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.ai, %bb.am, %bb.ao, %bb.aq, %bb.ap, %bb.an, %bb.al
  %.sink = phi i16 [ 88, %bb.ag ], [ 66, %bb.ah ], [ 74, %bb.al ], [ 69, %bb.an ], [ 67, %bb.ap ], [ 77, %bb.aq ], [ 68, %bb.ao ], [ 75, %bb.am ], [ 65, %bb.aj ], [ 76, %bb.ai ], [ 73, %bb.ak ]
  store i16 %.sink, ptr %i.d, align 2
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.ak
  %i.ea = sitofp i64 %2 to double
  %i.eb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 71, ptr noundef nonnull @.str.71, double noundef %i.ea, ptr noundef nonnull %i.d) #16 ; 0 uses
  %i.ec = call i32 @ffkeyn(ptr noundef nonnull @.str.49, i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %3) #16 ; 0 uses
  %i.ed = call i32 @ffmkys(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #16 ; 0 uses
  %i.ee = add nsw i64 %.0, %i.aq
  %i.ef = call i32 @ffmkyj(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i64 noundef %i.ee, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #16 ; 0 uses
  %i.eg = call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %3) #16 ; 0 uses
  %i.eh = load i32, ptr %3, align 4, !tbaa !9
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %bb.ar, %bb.ac, %bb.x, %bb.u, %bb.o, %bb.m, %bb.k, %bb.h, %bb.f
  %.0140 = phi i32 [ %i.s, %bb.f ], [ 235, %bb.h ], [ 302, %bb.k ], [ 261, %bb.m ], [ %i.an, %bb.o ], [ %i.bp, %bb.u ], [ %i.ca, %bb.x ], [ %i.eh, %bb.ar ], [ %i.ds, %bb.ac ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0140
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffcdel(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10000 x i8], align 16            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = icmp eq i64 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i64 %1, %3                       ; 13 uses
  %i.f = icmp slt i64 %i.e, 10001
  %i.g = icmp sgt i64 %2, 1                       ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %4, 1                        ; 3 uses
  %i.i = add nsw i64 %i.h, %3                     ; 2 uses
  br i1 %i.g, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph146, %bb.d
  %.0107144 = phi i64 [ 1, %.lr.ph146 ], [ %i.q, %bb.d ] ; 3 uses
  %i.k = call i32 @ffgtbb(ptr noundef %0, i64 noundef %.0107144, i64 noundef %i.i, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 968
  store i64 %i.e, ptr %i.m, align 8, !tbaa !31
  %i.n = call i32 @ffptbb(ptr noundef %0, i64 noundef %.0107144, i64 noundef %i.h, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 968
  store i64 %1, ptr %i.p, align 8, !tbaa !31
  %i.q = add nuw nsw i64 %.0107144, 1             ; 2 uses
  %exitcond154.not = icmp eq i64 %i.q, %2
  br i1 %exitcond154.not, label %._crit_edge147, label %bb.d, !llvm.loop !100

._crit_edge147:                                   ; preds = %bb.d, %bb.c
  %i.r = sub i64 %i.e, %4                         ; 3 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge147
  %i.t = call i32 @ffgtbb(ptr noundef %0, i64 noundef %2, i64 noundef %i.i, i64 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 968
  store i64 %i.e, ptr %i.w, align 8, !tbaa !31
  %i.x = call i32 @ffptbb(ptr noundef %0, i64 noundef %2, i64 noundef %i.h, i64 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 968
  store i64 %1, ptr %i.z, align 8, !tbaa !31
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.e, 9999
  %i.ab = udiv i64 %i.aa, 10000                   ; 2 uses
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge137.split

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ac = add nsw i64 %4, 1                       ; 3 uses
  %i.ad = add nsw i64 %i.ac, %3                   ; 2 uses
  %.neg124 = mul i64 %i.ab, -10000
  %.neg125 = add nuw i64 %i.e, 10000
  %i.ae = add i64 %.neg125, %.neg124              ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ag = add nsw i64 %i.ae, %i.ad
  %i.ah = add nsw i64 %i.ae, %i.ac
  br label %.peel.next

.peel.next:                                       ; preds = %._crit_edge, %.lr.ph.preheader
  %.1108134 = phi i64 [ %i.ax, %._crit_edge ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %i.ai = call i32 @ffgtbb(ptr noundef %0, i64 noundef %.1108134, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 968
  store i64 %i.e, ptr %i.ak, align 8, !tbaa !31
  %i.al = call i32 @ffptbb(ptr noundef %0, i64 noundef %.1108134, i64 noundef %i.ac, i64 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 968
  store i64 %1, ptr %i.an, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %.peel.next, %bb.g
  %.0109132 = phi i64 [ 1, %.peel.next ], [ %i.aw, %bb.g ]
  %.0111131 = phi i64 [ %i.ag, %.peel.next ], [ %i.av, %bb.g ] ; 2 uses
  %.0113130 = phi i64 [ %i.ah, %.peel.next ], [ %i.au, %bb.g ] ; 2 uses
  %i.ao = call i32 @ffgtbb(ptr noundef nonnull %0, i64 noundef %.1108134, i64 noundef %.0111131, i64 noundef 10000, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 968
  store i64 %i.e, ptr %i.aq, align 8, !tbaa !31
  %i.ar = call i32 @ffptbb(ptr noundef nonnull %0, i64 noundef %.1108134, i64 noundef %.0113130, i64 noundef 10000, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 968
  store i64 %1, ptr %i.at, align 8, !tbaa !31
  %i.au = add nsw i64 %.0113130, 10000
  %i.av = add nsw i64 %.0111131, 10000
  %i.aw = add nuw nsw i64 %.0109132, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.g
  %i.ax = add nuw nsw i64 %.1108134, 1            ; 2 uses
  %exitcond149.not = icmp eq i64 %i.ax, %2
  br i1 %exitcond149.not, label %._crit_edge137.split, label %.peel.next, !llvm.loop !102

._crit_edge137.split:                             ; preds = %._crit_edge, %bb.f
  %i.ay = sub i64 %i.e, %4                        ; 4 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %._crit_edge137.split
  %i.ba = add nuw i64 %i.ay, 9999
  %i.bb = udiv i64 %i.ba, 10000                   ; 2 uses
  %.neg123 = add nuw i64 %i.ay, 10000
  %.neg = mul nsw i64 %i.bb, -10000
  %i.bc = add i64 %.neg123, %.neg                 ; 4 uses
  %i.bd = add nsw i64 %4, 1                       ; 3 uses
  %i.be = add nsw i64 %i.bd, %3                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bg = call i32 @ffgtbb(ptr noundef %0, i64 noundef %2, i64 noundef %i.be, i64 noundef %i.bc, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 968
  store i64 %i.e, ptr %i.bi, align 8, !tbaa !31
  %i.bj = call i32 @ffptbb(ptr noundef %0, i64 noundef %2, i64 noundef %i.bd, i64 noundef %i.bc, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 968
  store i64 %1, ptr %i.bl, align 8, !tbaa !31
  %exitcond150.peel.not = icmp samesign ult i64 %i.ay, 10001
  br i1 %exitcond150.peel.not, label %.loopexit, label %.peel.next152

.peel.next152:                                    ; preds = %.lr.ph143
  %i.bm = add nsw i64 %i.bc, %i.be
  %i.bn = add nsw i64 %i.bc, %i.bd
  br label %bb.h

bb.h:                                             ; preds = %.peel.next152, %bb.h
  %.1110140 = phi i64 [ 1, %.peel.next152 ], [ %i.bw, %bb.h ]
  %.1112139 = phi i64 [ %i.bm, %.peel.next152 ], [ %i.bv, %bb.h ] ; 2 uses
  %.1114138 = phi i64 [ %i.bn, %.peel.next152 ], [ %i.bu, %bb.h ] ; 2 uses
  %i.bo = call i32 @ffgtbb(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %.1112139, i64 noundef 10000, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 968
  store i64 %i.e, ptr %i.bq, align 8, !tbaa !31
  %i.br = call i32 @ffptbb(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %.1114138, i64 noundef 10000, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #16 ; 0 uses
  %i.bs = load ptr, ptr %i.bf, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 968
  store i64 %1, ptr %i.bt, align 8, !tbaa !31
  %i.bu = add nsw i64 %.1114138, 10000
  %i.bv = add nsw i64 %.1112139, 10000
  %i.bw = add nuw nsw i64 %.1110140, 1            ; 2 uses
  %exitcond150.not = icmp eq i64 %i.bw, %i.bb
  br i1 %exitcond150.not, label %.loopexit, label %bb.h, !llvm.loop !103

.loopexit:                                        ; preds = %bb.h, %.lr.ph143, %._crit_edge137.split, %._crit_edge147, %bb.e
  %i.bx = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.loopexit
  %.0115 = phi i32 [ %i.bx, %.loopexit ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0115
}

declare i32 @ffmkys(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ffcpcl(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 16 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 10 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 9 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 3 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca [75 x i8], align 16               ; 15 uses
  %i.r = alloca [71 x i8], align 16               ; 5 uses
  %i.s = alloca [71 x i8], align 16               ; 9 uses
  %i.t = alloca [73 x i8], align 16               ; 4 uses
  %i.u = alloca [73 x i8], align 16               ; 4 uses
  %i.v = alloca [2 x i8], align 2                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #16
  store i16 5, ptr %i.v, align 2
  %i.w = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.cv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !25
  %.not = icmp eq i32 %i.y, %i.ac
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = add nsw i32 %i.y, 1
  %i.ae = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.ad, ptr noundef null, ptr noundef nonnull %5) #16 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %5) #16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !30 ; 3 uses
  %i.am = load i32, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 84
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %.not398 = icmp eq i32 %i.am, %i.aq
  br i1 %.not398, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = add nsw i32 %i.am, 1
  %i.as = tail call i32 @ffmahd(ptr noundef nonnull %1, i32 noundef %i.ar, ptr noundef null, ptr noundef nonnull %5) #16 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call i32 @ffrdef(ptr noundef nonnull %1, ptr noundef nonnull %5) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !30 ; 3 uses
  %i.ba = load i32, ptr %5, align 4, !tbaa !9     ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.cv, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp eq i32 %i.al, 0
  %i.bd = icmp eq i32 %i.az, 0
  %or.cond = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ffpmsg(ptr noundef nonnull @.str.72) #16
  store i32 235, ptr %5, align 4, !tbaa !9
  br label %bb.cv

bb.m:                                             ; preds = %bb.k
  %i.be = icmp eq i32 %i.al, 2                    ; 2 uses
  %i.bf = icmp eq i32 %i.az, 1
  %or.cond3 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ffpmsg(ptr noundef nonnull @.str.73) #16
  store i32 227, ptr %5, align 4, !tbaa !9
  br label %bb.cv

bb.o:                                             ; preds = %bb.m
  %i.bg = call i32 @ffgtcl(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %5) #16 ; 0 uses
  %i.bh = call i32 @ffeqty(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef nonnull %5) #16 ; 0 uses
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !9
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @ffpmsg(ptr noundef nonnull @.str.74) #16
  store i32 261, ptr %5, align 4, !tbaa !9
  br label %bb.cv
end_hunk_0
