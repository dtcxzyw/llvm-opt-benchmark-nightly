inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@multiple_resample:bb.a

.lr.ph133:                                        ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph133, %bb.e
  %indvars.iv136 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next137, %bb.e ] ; 3 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv136
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !43
  tail call void %i.az(ptr noundef %i.bb, ptr noundef %i.bd, i32 noundef %spec.select, i64 noundef %i.ac, i64 noundef %i.ai) #8
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 3 uses
  %i.be = load i32, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp eq i64 %indvars.iv.next137, %i.bf
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bh = load i32, ptr %i.aw, align 8, !tbaa !36
  %i.bi = mul nsw i32 %i.bh, %spec.select
  %i.bj = load i32, ptr %i.q, align 8, !tbaa !38
  %i.bk = add nsw i32 %i.bj, %i.bi
  %i.bl = load i32, ptr %i.t, align 4, !tbaa !39
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %i.bo, %i.ax
  %i.bq = add nsw i64 %i.bp, %i.bm
  %i.br = load i32, ptr %i.e, align 8, !tbaa !32
  %i.bs = sext i32 %i.br to i64
  %i.bt = sdiv i64 %i.bq, %i.bs
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.bk, %i.bu
  store i32 %i.bv, ptr %5, align 4, !tbaa !12
  %i.bw = load i32, ptr %i.t, align 4, !tbaa !39
  %i.bx = sext i32 %i.bw to i64
  %i.by = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.bz, %i.ax
  %i.cb = add nsw i64 %i.ca, %i.bx
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !32
  %i.cd = sext i32 %i.cc to i64
  %i.ce = srem i64 %i.cb, %i.cd
  %i.cf = trunc nsw i64 %i.ce to i32
  store i32 %i.cf, ptr %i.t, align 4, !tbaa !39
  store i32 0, ptr %i.q, align 8, !tbaa !38
  %.pre139 = load i32, ptr %i.as, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.cg = phi i32 [ %i.be, %bb.c ], [ %.pre139, %bb.d ]
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next137, %i.ch
  br i1 %i.ci, label %bb.c, label %.loopexit, !llvm.loop !44

bb.f:                                             ; preds = %bb.a
  %sext = shl i64 %i.l, 32
  %i.cj = ashr exact i64 %sext, 32
  %i.ck = add nsw i64 %i.cj, 1
  %i.cl = sext i32 %i.n to i64
  %i.cm = sub nsw i64 %i.ck, %i.cl
  %i.cn = sext i32 %.pre to i64
  %i.co = mul nsw i64 %i.cm, %i.cn
  %i.cp = sub nsw i64 %i.co, %i.s
  %i.cq = load i32, ptr %i.e, align 8, !tbaa !32
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !39 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !31
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = xor i32 %i.cu, -1
  %i.cz = sext i32 %i.cy to i64
  %i.da = add i64 %i.cs, %i.cz
  %i.db = add i64 %i.da, %i.cx
  %i.dc = sdiv i64 %i.db, %i.cx
  %i.dd = trunc i64 %i.dc to i32
  %i.de = tail call i32 @llvm.smin.i32(i32 %.0111, i32 %i.dd) ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  %spec.select127 = tail call i32 @llvm.smax.i32(i32 %i.de, i32 0) ; 3 uses
  br i1 %i.df, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !19
  %.not121 = icmp eq i32 %i.dh, 0
  br i1 %.not121, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not122 = icmp eq i32 %i.cu, 0
  br i1 %.not122, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !37
  %.not123 = icmp eq i32 %i.dj, 0
  br i1 %.not123, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sink = phi i64 [ 112, %bb.j ], [ 120, %bb.i ], [ 120, %bb.h ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !40 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.k ] ; 3 uses
  %i.dp = phi i32 [ %i.dy, %.lr.ph ], [ %i.dn, %bb.k ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !43
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.du = zext i32 %i.dp to i64
  %i.dv = icmp eq i64 %indvars.iv.next, %i.du
  %i.dw = zext i1 %i.dv to i32
  %i.dx = tail call i32 %i.dl(ptr noundef nonnull %0, ptr noundef %i.dr, ptr noundef %i.dt, i32 noundef %spec.select127, i32 noundef %i.dw) #8
  store i32 %i.dx, ptr %5, align 4, !tbaa !12
  %i.dy = load i32, ptr %i.dm, align 8, !tbaa !40 ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next, %i.dz
  br i1 %i.ea, label %.lr.ph, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.k, %.preheader, %bb.f, %bb.b
  %.1112 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ %spec.select, %.preheader ], [ %spec.select127, %bb.k ], [ %spec.select, %bb.e ], [ %spec.select127, %.lr.ph ] ; 3 uses
  %i.eb = load i32, ptr %i.i, align 4, !tbaa !30  ; 3 uses
  %.not125 = icmp eq i32 %i.eb, 0
  br i1 %.not125, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.ec = sub nsw i32 %i.eb, %.1112
  store i32 %i.ec, ptr %i.i, align 4, !tbaa !30
  %.not126 = icmp eq i32 %i.eb, %.1112
  br i1 %.not126, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !35 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !31
  %i.eg = load i32, ptr %i.e, align 8, !tbaa !32  ; 2 uses
  %i.eh = sdiv i32 %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !36
  %i.ej = srem i32 %i.ee, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %.loopexit
  ret i32 %.1112
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @resample_flush(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14512 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16148 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %. = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.g) ; 2 uses
  %i.h = add nsw i32 %., 1
  %i.i = sdiv i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16144 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = add nsw i32 %i.k, %i.e
  %i.m = add nsw i32 %i.l, %i.i
  %i.n = tail call i32 @swri_realloc_audio(ptr noundef nonnull %i.c, i32 noundef %i.m) #8 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 15044
  %i.q = load i32, ptr %i.p, align 4, !tbaa !58
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %.preheader38

.preheader38:                                     ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 15032 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge41.split

.preheader.lr.ph:                                 ; preds = %.preheader38
  %i.u = icmp sgt i32 %., 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 15036
  br i1 %i.u, label %.preheader, label %._crit_edge41.split

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 445) #8
  tail call void @abort() #9
  unreachable

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.039 = phi i32 [ 0, %.preheader ], [ %i.am, %bb.d ] ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %i.y = load i32, ptr %i.j, align 8, !tbaa !57
  %i.z = load i32, ptr %i.d, align 4, !tbaa !56
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = add nsw i32 %i.aa, %.039
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !59  ; 3 uses
  %i.ad = mul nsw i32 %i.ab, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 %i.ae
  %i.ag = xor i32 %.039, -1
  %i.ah = add i32 %i.aa, %i.ag
  %i.ai = mul nsw i32 %i.ah, %i.ac
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj
  %i.al = sext i32 %i.ac to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ak, i64 %i.al, i1 false)
  %i.am = add nuw nsw i32 %.039, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.r, align 8, !tbaa !40
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.preheader, label %._crit_edge41.split, !llvm.loop !61

._crit_edge41.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader38
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !56
  %i.ar = add nsw i32 %i.aq, %i.i
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge41.split
  %.034 = phi i32 [ 0, %._crit_edge41.split ], [ %i.n, %bb.a ]
  ret i32 %.034
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @set_compensation(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
  %i.e = icmp ne i32 %1, 0
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !13
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %rebuild_filter_bank_with_compensation.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %.not58.i = icmp eq i32 %i.n, 0
  br i1 %.not58.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 290) #8
  tail call void @abort() #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i32 %i.g, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = mul nsw i32 %i.t, %i.r
  %i.v = sext i32 %i.u to i64
  %i.w = tail call noalias ptr @av_calloc(i64 noundef %i.q, i64 noundef %i.v) #8 ; 7 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !43
  %.not59.i = icmp eq ptr %i.w, null
  br i1 %.not59.i, label %rebuild_filter_bank_with_compensation.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load double, ptr %i.x, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !21
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !26
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = tail call fastcc i32 @build_filter(ptr noundef nonnull %0, ptr noundef %i.w, double noundef %i.y, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.g, i32 noundef %i.ae, i32 noundef %i.ag, double noundef %i.ai) ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %rebuild_filter_bank_with_compensation.exit.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.o, align 4, !tbaa !27  ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.g                 ; 2 uses
  %i.an = add nsw i32 %i.am, 1
  %i.ao = load i32, ptr %i.s, align 4, !tbaa !25  ; 4 uses
  %i.ap = mul nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.w, i64 %i.aq
  %i.as = add nsw i32 %i.al, -1
  %i.at = mul nsw i32 %i.as, %i.ao
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.w, i64 %i.au, i1 false)
  %i.av = mul nsw i32 %i.am, %i.ao
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.w, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.w, i64 %i.au
  %i.az = sext i32 %i.ao to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.ay, i64 %i.az, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !32
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !31
  %i.bf = sext i32 %i.be to i64
  %i.bg = load i32, ptr %i.h, align 8, !tbaa !13
  %i.bh = sdiv i32 %i.g, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %i.bi, %i.bf
  %i.bk = call i32 @av_reduce(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.bc, i64 noundef %i.bj, i64 noundef 1073741823) #8
  %.not60.i = icmp eq i32 %i.bk, 0
  br i1 %.not60.i, label %rebuild_filter_bank_with_compensation.exit.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !12  ; 3 uses
  store i32 %i.bl, ptr %i.ba, align 8, !tbaa !32
  %i.bm = load i32, ptr %i.c, align 4, !tbaa !12  ; 4 uses
  store i32 %i.bm, ptr %i.bd, align 4, !tbaa !31
  %i.bn = icmp slt i32 %i.bm, 1048576
  br i1 %i.bn, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %i.bo = phi i32 [ %i.bs, %bb.j ], [ %i.bl, %bb.i ] ; 3 uses
  %i.bp = phi i32 [ %i.br, %bb.j ], [ %i.bm, %bb.i ] ; 3 uses
  %i.bq = icmp slt i32 %i.bo, 1048576
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.br = shl nsw i32 %i.bp, 1                    ; 3 uses
  store i32 %i.br, ptr %i.bd, align 4, !tbaa !31
  %i.bs = shl nsw i32 %i.bo, 1                    ; 3 uses
  store i32 %i.bs, ptr %i.ba, align 8, !tbaa !32
  %i.bt = icmp slt i32 %i.bp, 524288
  br i1 %i.bt, label %.lr.ph.i, label %.critedge.i, !llvm.loop !62

.critedge.i:                                      ; preds = %bb.j, %.lr.ph.i, %bb.i
  %i.bu = phi i32 [ %i.bl, %bb.i ], [ %i.bo, %.lr.ph.i ], [ %i.bs, %bb.j ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.bm, %bb.i ], [ %i.bp, %.lr.ph.i ], [ %i.br, %bb.j ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.lcssa.i, ptr %i.bv, align 8, !tbaa !35
  %i.bw = sdiv i32 %.lcssa.i, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !36
  %i.by = srem i32 %.lcssa.i, %i.bu
  store i32 %i.by, ptr %i.m, align 4, !tbaa !37
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !13
  %i.ca = sdiv i32 %i.g, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !38
  %i.cd = mul nsw i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !38
  store i32 %i.g, ptr %i.h, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @av_freep(ptr noundef nonnull %i.ce) #8
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !43
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !28
  br label %rebuild_filter_bank_with_compensation.exit

rebuild_filter_bank_with_compensation.exit.thread.sink.split: ; preds = %bb.h, %bb.g
  %.0.i.ph.ph = phi i32 [ %i.aj, %bb.g ], [ -22, %bb.h ]
  call void @av_freep(ptr noundef nonnull %i.a) #8
  br label %rebuild_filter_bank_with_compensation.exit.thread

rebuild_filter_bank_with_compensation.exit.thread: ; preds = %rebuild_filter_bank_with_compensation.exit.thread.sink.split, %bb.f
  %.0.i.ph = phi i32 [ -12, %bb.f ], [ %.0.i.ph.ph, %rebuild_filter_bank_with_compensation.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.n

rebuild_filter_bank_with_compensation.exit:       ; preds = %bb.b, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.k

bb.k:                                             ; preds = %rebuild_filter_bank_with_compensation.exit, %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %2, ptr %i.cg, align 4, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !35 ; 3 uses
  br i1 %i.d, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = sext i32 %i.ci to i64
  %i.ck = sext i32 %1 to i64
  %i.cl = mul nsw i64 %i.cj, %i.ck
  %i.cm = sext i32 %2 to i64
  %i.cn = sdiv i64 %i.cl, %i.cm
  %i.co = trunc i64 %i.cn to i32
  %i.cp = sub i32 %i.ci, %i.co
end_hunk_0
