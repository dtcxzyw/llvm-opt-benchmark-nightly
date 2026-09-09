Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/lr_apply_tmpl?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dav1d_lr_sbrow_16bpc:bb.a
  %i.m = and i32 %i.c, 1
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2436
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60   ; 2 uses
  %i.r = load i32, ptr %i.o, align 16, !tbaa !61
  %i.s = add nuw nsw i32 %i.h, 6                  ; 2 uses
  %i.t = shl i32 %i.i, %i.s
  %.neg = select i1 %i.l, i32 -8, i32 0
  %i.u = add i32 %.neg, %i.t
  %i.v = tail call noundef i32 @llvm.smin.i32(i32 %i.u, i32 %i.q)
  %i.w = shl i32 %2, %i.s
  %i.x = sub nsw i32 %i.w, %i.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !53
  %i.z = zext nneg i32 %i.a to i64
  %i.aa = load i64, ptr %i.n, align 16, !tbaa !54 ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %.not.i = icmp eq i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.ac = ashr exact i64 %i.aa, 1
  %i.ad = mul i64 %i.ac, %i.z
  %i.ae = sub i64 0, %i.ad
  %i.af = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ae
  tail call fastcc void @lr_sbrow(ptr noundef nonnull %0, ptr noundef %i.af, i32 noundef %i.x, i32 noundef %i.r, i32 noundef %i.q, i32 noundef %i.v, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = and i32 %i.c, 6
  %.not65 = icmp eq i32 %i.ag, 0
  br i1 %.not65, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !55 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1                    ; 2 uses
  %i.al = zext i1 %i.ak to i32                    ; 4 uses
  %i.am = icmp ne i32 %i.aj, 3
  %i.an = zext i1 %i.am to i32                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2436
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !60
  %i.aq = add nsw i32 %i.ap, %i.al
  %i.ar = ashr i32 %i.aq, %i.al                   ; 3 uses
  %i.as = load i32, ptr %i.ah, align 16, !tbaa !61
  %i.at = add nsw i32 %i.as, %i.an
  %i.au = ashr i32 %i.at, %i.an                   ; 2 uses
  %i.av = select i1 %i.ak, i32 5, i32 6
  %i.aw = add nuw nsw i32 %i.av, %i.h             ; 2 uses
  %i.ax = shl i32 %i.i, %i.aw
  %i.ay = lshr exact i32 8, %i.al
  %i.az = select i1 %i.l, i32 %i.ay, i32 0
  %i.ba = sub nsw i32 %i.ax, %i.az
  %i.bb = tail call noundef i32 @llvm.smin.i32(i32 %i.ba, i32 %i.ar) ; 2 uses
  %i.bc = lshr exact i32 %i.a, %i.al              ; 3 uses
  %i.bd = shl i32 %2, %i.aw
  %i.be = sub nsw i32 %i.bd, %i.bc                ; 2 uses
  %i.bf = and i32 %i.c, 2
  %.not66 = icmp eq i32 %i.bf, 0
  br i1 %.not66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bi = zext nneg i32 %i.bc to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !54 ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i68 = icmp eq i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i68)
  %i.bm = ashr exact i64 %i.bk, 1
  %i.bn = mul i64 %i.bm, %i.bi
  %i.bo = sub i64 0, %i.bn
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bo
  tail call fastcc void @lr_sbrow(ptr noundef nonnull %0, ptr noundef %i.bp, i32 noundef %i.be, i32 noundef %i.au, i32 noundef %i.ar, i32 noundef %i.bb, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bq = and i32 %i.c, 4
  %.not67 = icmp eq i32 %i.bq, 0
  br i1 %.not67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.bt = zext nneg i32 %i.bc to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !54 ; 2 uses
  %i.bw = and i64 %i.bv, 1
  %.not.i69 = icmp eq i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i69)
  %i.bx = ashr exact i64 %i.bv, 1
  %i.by = mul i64 %i.bx, %i.bt
  %i.bz = sub i64 0, %i.by
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.bz
  tail call fastcc void @lr_sbrow(ptr noundef nonnull %0, ptr noundef %i.ca, i32 noundef %i.be, i32 noundef %i.au, i32 noundef %i.ar, i32 noundef %i.bb, i32 noundef 2)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lr_sbrow(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [136 x [4 x i16]]], align 16 ; 7 uses
  %i.b = alloca [2 x ptr], align 16               ; 9 uses
  %i.c = icmp ne i32 %6, 0                        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = and i1 %i.c, %i.f
  %i.h = zext i1 %i.g to i32                      ; 2 uses
  %i.i = icmp ne i32 %i.e, 3
  %i.j = and i1 %i.c, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.l = zext i1 %i.c to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54   ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 880
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.s = load i8, ptr %i.r, align 1, !tbaa !56
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw i32 1, %i.t                      ; 15 uses
  %i.v = ashr i32 %i.u, 1                         ; 2 uses
  %i.w = add nsw i32 %i.v, %i.u                   ; 4 uses
  %i.x = lshr exact i32 8, %i.h
  %.not = icmp eq i32 %2, 0
  %i.y = select i1 %.not, i32 0, i32 %i.x
  %i.z = add nsw i32 %i.y, %2
  %i.aa = select i1 %i.j, i32 6, i32 7            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.ab = icmp sgt i32 %2, 0
  %i.ac = select i1 %i.ab, i32 6, i32 2           ; 4 uses
  %i.ad = sub i32 0, %i.u
  %i.ae = and i32 %i.z, %i.ad                     ; 3 uses
  %.not96 = icmp eq i32 %i.ae, 0
  %i.af = add nsw i32 %i.ae, %i.v
  %i.ag = icmp sgt i32 %i.af, %4
  %i.ah = select i1 %i.ag, i32 %i.u, i32 0
  %spec.select = sub nsw i32 %i.ae, %i.ah
  %.092 = select i1 %.not96, i32 0, i32 %spec.select
  %i.ai = shl i32 %.092, %i.h                     ; 2 uses
  %i.aj = ashr i32 %i.ai, 7
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3308
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !65
  %i.am = mul nsw i32 %i.aj, %i.al                ; 4 uses
  %i.an = lshr i32 %i.ai, 5
  %i.ao = and i32 %i.an, 2                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !66 ; 2 uses
  %i.ar = sext i32 %i.am to i64
  %i.as = getelementptr inbounds [108 x i8], ptr %i.aq, i64 %i.ar
  %i.at = zext nneg i32 %6 to i64                 ; 4 uses
  %i.au = getelementptr inbounds nuw [36 x i8], ptr %i.as, i64 %i.at
  %i.av = zext nneg i32 %i.ao to i64
  %i.aw = getelementptr inbounds nuw [9 x i8], ptr %i.au, i64 %i.av ; 3 uses
  store ptr %i.aw, ptr %i.b, align 16, !tbaa !68
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !58
  %i.ay = icmp ne i8 %i.ax, 0                     ; 3 uses
  %i.az = sub i32 %5, %2                          ; 4 uses
  %.not97107 = icmp sgt i32 %i.w, %3
  br i1 %.not97107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ba = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.bb = icmp sgt i32 %i.az, 0
  %i.bc = sext i32 %i.u to i64                    ; 4 uses
  %i.bd = and i64 %i.n, 1
  %.not.i.i = icmp eq i64 %i.bd, 0
  %i.be = or disjoint i32 %i.ac, 1                ; 5 uses
  br i1 %i.bb, label %.lr.ph.split.preheader, label %backup4xU.exit.us.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i32 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.bf = sub i32 %2, %5
  %i.bg = icmp ugt i32 %i.bf, -8
  br label %.lr.ph.split

backup4xU.exit.us.preheader:                      ; preds = %.lr.ph
  %i.bh = lshr i32 %i.u, %i.ba
  %i.bi = and i32 %i.bh, 1
  %i.bj = or disjoint i32 %i.bi, %i.ao
  %i.bk = ashr i32 %i.u, %i.aa
  %i.bl = add nsw i32 %i.bk, %i.am
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [108 x i8], ptr %i.aq, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [36 x i8], ptr %i.bn, i64 %i.at
  %i.bp = zext nneg i32 %i.bj to i64
  %i.bq = getelementptr inbounds nuw [9 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bq, ptr %.sroa.gep134, align 8, !tbaa !68
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !58
  %i.bs = icmp ne i8 %i.br, 0                     ; 2 uses
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %backup4xU.exit.us.preheader
  %.sroa.gep142 = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  call fastcc void @lr_stripe(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.sroa.gep142, i32 noundef 0, i32 noundef %2, i32 noundef %6, i32 noundef %i.u, i32 noundef %5, ptr noundef nonnull %i.aw, i32 noundef %i.ac)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %backup4xU.exit.us.preheader
  %i.bt = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.bu = add nsw i32 %i.w, %i.u
  %.not97.us.peel = icmp sgt i32 %i.bu, %3
  br i1 %.not97.us.peel, label %._crit_edge, label %backup4xU.exit.us

backup4xU.exit.us:                                ; preds = %bb.c, %bb.e
  %.0112.us = phi ptr [ %i.cm, %bb.e ], [ %i.bt, %bb.c ] ; 2 uses
  %.089111.us = phi i32 [ %7, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.090110.us = phi i32 [ %i.bv, %bb.e ], [ %i.u, %bb.c ] ; 2 uses
  %.091.in109.us = phi i1 [ %i.ci, %bb.e ], [ %i.bs, %bb.c ]
  %i.bv = add nsw i32 %.090110.us, %i.u           ; 5 uses
  %i.bw = lshr i32 %i.bv, %i.ba
  %i.bx = and i32 %i.bw, 1
  %i.by = or disjoint i32 %i.bx, %i.ao
  %i.bz = load ptr, ptr %i.ap, align 16, !tbaa !66
  %i.ca = ashr i32 %i.bv, %i.aa
  %i.cb = add nsw i32 %i.ca, %i.am
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [108 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [36 x i8], ptr %i.cd, i64 %i.at
  %i.cf = zext nneg i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw [9 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %7 = xor i32 %.089111.us, 1                     ; 3 uses
  %8 = zext nneg i32 %7 to i64                    ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %8
  store ptr %i.cg, ptr %9, align 8, !tbaa !68
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !58
  %i.ci = icmp ne i8 %i.ch, 0                     ; 2 uses
  br i1 %.091.in109.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %backup4xU.exit.us
  %10 = getelementptr inbounds nuw [1088 x i8], ptr %i.a, i64 %8
  %i.cj = zext nneg i32 %.089111.us to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !68
  call fastcc void @lr_stripe(ptr noundef nonnull %0, ptr noundef nonnull %.0112.us, ptr noundef %10, i32 noundef %.090110.us, i32 noundef %2, i32 noundef %6, i32 noundef %i.u, i32 noundef %5, ptr noundef %i.cl, i32 noundef %i.be)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %backup4xU.exit.us
  %i.cm = getelementptr inbounds [2 x i8], ptr %.0112.us, i64 %i.bc ; 2 uses
  %i.cn = add nsw i32 %i.w, %i.bv
  %.not97.us = icmp sgt i32 %i.cn, %3
  br i1 %.not97.us, label %._crit_edge, label %backup4xU.exit.us, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.g
  %.0112 = phi ptr [ %i.en, %bb.g ], [ %1, %.lr.ph.split.preheader ] ; 3 uses
  %.089111 = phi i32 [ %11, %bb.g ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.090110 = phi i32 [ %i.co, %bb.g ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %.091.in109 = phi i1 [ %i.db, %bb.g ], [ %i.ay, %.lr.ph.split.preheader ]
  %.093108 = phi i32 [ %i.be, %bb.g ], [ %i.ac, %.lr.ph.split.preheader ]
  %i.co = add nsw i32 %.090110, %i.u              ; 5 uses
  %i.cp = lshr i32 %i.co, %i.ba
  %i.cq = and i32 %i.cp, 1
  %i.cr = or disjoint i32 %i.cq, %i.ao
  %i.cs = load ptr, ptr %i.ap, align 16, !tbaa !66
  %i.ct = ashr i32 %i.co, %i.aa
  %i.cu = add nsw i32 %i.ct, %i.am
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [108 x i8], ptr %i.cs, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [36 x i8], ptr %i.cw, i64 %i.at
  %i.cy = zext nneg i32 %i.cr to i64
  %i.cz = getelementptr inbounds nuw [9 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %11 = xor i32 %.089111, 1                       ; 3 uses
  %12 = zext nneg i32 %11 to i64                  ; 2 uses
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %12
  store ptr %i.cz, ptr %13, align 8, !tbaa !68
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !58
  %i.db = icmp ne i8 %i.da, 0                     ; 3 uses
  br i1 %i.db, label %.lr.ph.i, label %backup4xU.exit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %i.dc = getelementptr inbounds [2 x i8], ptr %.0112, i64 %i.bc
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.de = zext nneg i32 %.089111 to i64
  %i.df = getelementptr inbounds nuw [1088 x i8], ptr %i.a, i64 %i.de ; 2 uses
  call void @llvm.assume(i1 %.not.i.i)
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.010.i.prol = phi i32 [ %i.dh, %.prol.preheader ], [ %i.az, %.lr.ph.i ]
  %.069.i.prol = phi ptr [ %i.di, %.prol.preheader ], [ %i.df, %.lr.ph.i ] ; 2 uses
  %.078.i.prol = phi ptr [ %i.dj, %.prol.preheader ], [ %i.dd, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dg = load i64, ptr %.078.i.prol, align 2
  store i64 %i.dg, ptr %.069.i.prol, align 2
  %i.dh = add nsw i32 %.010.i.prol, -1            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.069.i.prol, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.078.i.prol, i64 %i.n ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.010.i.unr = phi i32 [ %i.az, %.lr.ph.i ], [ %i.dh, %.prol.preheader ]
  %.069.i.unr = phi ptr [ %i.df, %.lr.ph.i ], [ %i.di, %.prol.preheader ]
  %.078.i.unr = phi ptr [ %i.dd, %.lr.ph.i ], [ %i.dj, %.prol.preheader ]
  br i1 %i.bg, label %backup4xU.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.010.i = phi i32 [ %i.eg, %.lr.ph.i.new ], [ %.010.i.unr, %.prol.loopexit ] ; 2 uses
  %.069.i = phi ptr [ %i.eh, %.lr.ph.i.new ], [ %.069.i.unr, %.prol.loopexit ] ; 9 uses
  %.078.i = phi ptr [ %i.ei, %.lr.ph.i.new ], [ %.078.i.unr, %.prol.loopexit ] ; 2 uses
  %i.dk = load i64, ptr %.078.i, align 2
  store i64 %i.dk, ptr %.069.i, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.069.i, i64 8
  %i.dm = getelementptr inbounds i8, ptr %.078.i, i64 %i.n ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 2
  store i64 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %.069.i, i64 16
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %i.n ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 2
  store i64 %i.dq, ptr %i.do, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %.069.i, i64 24
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %i.n ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 2
  store i64 %i.dt, ptr %i.dr, align 2
  %i.du = getelementptr inbounds nuw i8, ptr %.069.i, i64 32
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.n ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 2
  store i64 %i.dw, ptr %i.du, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %.069.i, i64 40
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %i.n ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 2
  store i64 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %.069.i, i64 48
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 %i.n ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 2
  store i64 %i.ec, ptr %i.ea, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.069.i, i64 56
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.n ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 2
  store i64 %i.ef, ptr %i.ed, align 2
  %i.eg = add nsw i32 %.010.i, -8
  %i.eh = getelementptr inbounds nuw i8, ptr %.069.i, i64 64
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.n
  %i.ej = icmp sgt i32 %.010.i, 8
  br i1 %i.ej, label %.lr.ph.i.new, label %backup4xU.exit

backup4xU.exit:                                   ; preds = %.prol.loopexit, %.lr.ph.i.new, %.lr.ph.split
  br i1 %.091.in109, label %bb.f, label %bb.g

bb.f:                                             ; preds = %backup4xU.exit
  %14 = getelementptr inbounds nuw [1088 x i8], ptr %i.a, i64 %12
  %i.ek = zext nneg i32 %.089111 to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !68
  call fastcc void @lr_stripe(ptr noundef nonnull %0, ptr noundef %.0112, ptr noundef %14, i32 noundef %.090110, i32 noundef %2, i32 noundef %6, i32 noundef %i.u, i32 noundef %5, ptr noundef %i.em, i32 noundef %.093108)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %backup4xU.exit
  %i.en = getelementptr inbounds [2 x i8], ptr %.0112, i64 %i.bc ; 2 uses
  %i.eo = add nsw i32 %i.w, %i.co
  %.not97 = icmp sgt i32 %i.eo, %3
  br i1 %.not97, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.c, %bb.a
  %.093.lcssa = phi i32 [ %i.ac, %bb.a ], [ %i.be, %bb.c ], [ %i.be, %bb.g ], [ %i.be, %bb.e ]
  %.091.in.lcssa = phi i1 [ %i.ay, %bb.a ], [ %i.bs, %bb.c ], [ %i.db, %bb.g ], [ %i.ci, %bb.e ]
  %.090.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %bb.c ], [ %i.co, %bb.g ], [ %i.bv, %bb.e ] ; 2 uses
  %.089.lcssa = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ %11, %bb.g ], [ %7, %bb.e ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.bt, %bb.c ], [ %i.en, %bb.g ], [ %i.cm, %bb.e ]
  br i1 %.091.in.lcssa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ep = and i32 %.093.lcssa, 5
  %i.eq = sub nsw i32 %3, %.090.lcssa
  %15 = xor i32 %.089.lcssa, 1
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw [1088 x i8], ptr %i.a, i64 %16
  %i.er = zext nneg i32 %.089.lcssa to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !68
  call fastcc void @lr_stripe(ptr noundef nonnull %0, ptr noundef %.0.lcssa, ptr noundef %17, i32 noundef %.090.lcssa, i32 noundef %2, i32 noundef %6, i32 noundef %i.eq, i32 noundef %5, ptr noundef %i.et, i32 noundef %i.ep)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lr_stripe(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef range(i32 0, 8) %9) unnamed_addr #0 {
bb.a:
  %10 = alloca %union.LooprestorationParams, align 16 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = icmp ne i32 %5, 0                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = icmp eq i32 %i.e, 1
  %i.g = and i1 %i.c, %i.f                        ; 2 uses
  %i.h = zext i1 %i.g to i32                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.j = zext i1 %i.c to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 4 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.m = shl nuw nsw i32 8, %i.h
  %i.n = select i1 %.not, i32 0, i32 %i.m
  %i.o = add nsw i32 %i.n, %4
  %i.p = select i1 %i.g, i32 5, i32 6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 392
  %i.t = load i8, ptr %i.s, align 4, !tbaa !51
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.p, %i.u
  %i.w = ashr i32 %i.o, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !87
  %i.ab = icmp ugt i32 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.ad = zext nneg i32 %5 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.ag = shl i32 4, %i.u
  %i.ah = mul nsw i32 %i.w, %i.ag
  %i.ai = add nsw i32 %i.ah, -4
  %i.aj = select i1 %i.ab, i32 %i.ai, i32 0
  %i.ak = sext i32 %i.aj to i64
  %i.al = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.am = ashr exact i64 %i.l, 1                  ; 2 uses
  %i.an = mul nsw i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.an
  %i.ap = sext i32 %3 to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = select i1 %.not, i32 56, i32 64
  %i.as = lshr exact i32 %i.ar, %i.h
  %i.at = sub nsw i32 %7, %4
  %i.au = tail call noundef i32 @llvm.smin.i32(i32 %i.as, i32 %i.at) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %i.av = load i8, ptr %8, align 1, !tbaa !58     ; 3 uses
  %i.aw = icmp eq i8 %i.av, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !56
  %i.ba = sext i8 %i.az to i16                    ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i16 %i.ba, ptr %i.bb, align 4, !tbaa !89
  store i16 %i.ba, ptr %10, align 16, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !56
  %i.be = sext i8 %i.bd to i16                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 %i.be, ptr %i.bg, align 2, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !56
  %i.bj = sext i8 %i.bi to i16                    ; 3 uses
  store i16 %i.bj, ptr %i.ax, align 8, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 %i.bj, ptr %i.bk, align 4, !tbaa !89
  %i.bl = add nsw i16 %i.be, %i.ba
  %i.bm = add nsw i16 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 6
  %i.bo = shl nsw i16 %i.bm, 1
  %i.bp = sub nsw i16 128, %i.bo
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !89
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !56
  %i.bs = sext i8 %i.br to i16                    ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i16 %i.bs, ptr %i.bu, align 4, !tbaa !89
  store i16 %i.bs, ptr %i.bt, align 16, !tbaa !89
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !56
  %i.bx = sext i8 %i.bw to i16                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 26
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !89
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i16 %i.bx, ptr %i.bz, align 2, !tbaa !89
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 6
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !56
  %i.cc = sext i8 %i.cb to i16                    ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %i.cc, ptr %i.cd, align 8, !tbaa !89
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i16 %i.cc, ptr %i.ce, align 4, !tbaa !89
  %i.cf = add nsw i16 %i.bx, %i.bs
  %i.cg = add nsw i16 %i.cf, %i.cc
  %i.ch = shl nsw i16 %i.cg, 1
  %i.ci = sub nsw i16 128, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !89
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 3328
  %i.cl = or i16 %i.bs, %i.ba
  %.not108 = icmp eq i16 %i.cl, 0
  %i.cm = zext i1 %.not108 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cm
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.co = zext i8 %i.av to i64
  %i.cp = icmp ugt i8 %i.av, 2
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr [4 x i8], ptr @dav1d_sgr_params, i64 %i.co ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -12
  %i.cs = load i16, ptr %i.cr, align 4, !tbaa !89 ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  store i32 %i.ct, ptr %10, align 16, !tbaa !56
  %i.cu = getelementptr i8, ptr %i.cq, i64 -10
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !89 ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !56
  %i.da = sext i8 %i.cz to i16                    ; 2 uses
  store i16 %i.da, ptr %i.ax, align 8, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !56
  %i.dd = sext i8 %i.dc to i16
  %i.de = add nsw i16 %i.da, %i.dd
  %i.df = sub nsw i16 128, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !56
  %i.dh = icmp ne i16 %i.cs, 0
  %i.di = zext i1 %i.dh to i64
  %.not107 = icmp eq i16 %i.cv, 0
  %i.dj = select i1 %.not107, i64 0, i64 2
  %i.dk = getelementptr i8, ptr %i.b, i64 3336
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.di
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.099.in = phi ptr [ %i.cn, %bb.b ], [ %i.dm, %bb.c ]
  %.099 = load ptr, ptr %.099.in, align 8, !tbaa !90
  %i.dn = add nsw i32 %i.w, 1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.dp = add nsw i32 %4, %i.au                   ; 2 uses
  %.not109117 = icmp sgt i32 %i.dp, %7
  br i1 %.not109117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4068
  %i.dr = lshr exact i32 64, %i.h
  %.idx = shl nsw i64 %i.l, 2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.ds = phi i32 [ %i.dp, %.lr.ph ], [ %i.eg, %bb.f ] ; 3 uses
  %.0122 = phi ptr [ %1, %.lr.ph ], [ %i.ed, %bb.f ] ; 2 uses
  %.097121 = phi ptr [ %2, %.lr.ph ], [ %i.ee, %bb.f ] ; 2 uses
  %.0100120 = phi i32 [ %i.au, %.lr.ph ], [ %i.dz, %bb.f ] ; 2 uses
  %.0101119 = phi ptr [ %i.aq, %.lr.ph ], [ %i.ef, %bb.f ] ; 2 uses
  %.0102118 = phi i32 [ %9, %.lr.ph ], [ %i.ea, %bb.f ]
  %i.dt = load i32, ptr %i.do, align 16, !tbaa !52
  %.not110 = icmp eq i32 %i.dn, %i.dt
  %.not112 = icmp eq i32 %i.ds, %7                ; 2 uses
  %i.du = and i1 %.not112, %.not110
  %.neg111 = select i1 %i.du, i32 0, i32 8
  %i.dv = and i32 %.0102118, -9
  %i.dw = or disjoint i32 %.neg111, %i.dv         ; 2 uses
  %i.dx = load i32, ptr %i.dq, align 4, !tbaa !91
  call void %.099(ptr noundef %.0122, i64 noundef %i.l, ptr noundef %.097121, ptr noundef %.0101119, i32 noundef %6, i32 noundef %.0100120, ptr noundef nonnull %10, i32 noundef %i.dw, i32 noundef %i.dx) #4
  br i1 %.not112, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dy = sub nsw i32 %7, %i.ds
end_hunk_0
