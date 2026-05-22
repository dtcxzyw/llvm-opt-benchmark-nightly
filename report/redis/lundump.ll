inline.NumInlined: 26
inline.NumDeleted: 8
begin_hunk_0_@LoadFunction:bb.a

LoadChar.exit:                                    ; preds = %bb.e, %bb.f
  %i.ay = load i8, ptr %i.g, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store i8 %i.ay, ptr %i.az, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.bb = call i64 @luaZ_read(ptr noundef %i.ba, ptr noundef nonnull %i.f, i64 noundef 1) #6
  %.not.i.i39 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i39, label %LoadChar.exit40, label %bb.g

bb.g:                                             ; preds = %LoadChar.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !9
  %i.bf = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bc, ptr noundef nonnull @.str.5, ptr noundef %i.be, ptr noundef nonnull @.str.4) #6 ; 0 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.bg, i32 noundef 3) #6
  br label %LoadChar.exit40

LoadChar.exit40:                                  ; preds = %LoadChar.exit, %bb.g
  %i.bh = load i8, ptr %i.f, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 113
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.bk = call i64 @luaZ_read(ptr noundef %i.bj, ptr noundef nonnull %i.e, i64 noundef 1) #6
  %.not.i.i41 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i41, label %LoadChar.exit42, label %bb.h

bb.h:                                             ; preds = %LoadChar.exit40
  %i.bl = load ptr, ptr %0, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !9
  %i.bo = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bl, ptr noundef nonnull @.str.5, ptr noundef %i.bn, ptr noundef nonnull @.str.4) #6 ; 0 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.bp, i32 noundef 3) #6
  br label %LoadChar.exit42

LoadChar.exit42:                                  ; preds = %LoadChar.exit40, %bb.h
  %i.bq = load i8, ptr %i.e, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 114
  store i8 %i.bq, ptr %i.br, align 2, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.bs = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.bt = call i64 @luaZ_read(ptr noundef %i.bs, ptr noundef nonnull %i.d, i64 noundef 1) #6
  %.not.i.i43 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i43, label %LoadChar.exit44, label %bb.i

bb.i:                                             ; preds = %LoadChar.exit42
  %i.bu = load ptr, ptr %0, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !9
  %i.bx = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bu, ptr noundef nonnull @.str.5, ptr noundef %i.bw, ptr noundef nonnull @.str.4) #6 ; 0 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.by, i32 noundef 3) #6
  br label %LoadChar.exit44

LoadChar.exit44:                                  ; preds = %LoadChar.exit42, %bb.i
  %i.bz = load i8, ptr %i.d, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 115
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !45
  %i.cb = call fastcc i32 @LoadInt(ptr noundef nonnull readonly %0) ; 4 uses
  %i.cc = icmp sgt i32 %i.cb, -2
  %i.cd = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %LoadChar.exit44
  %i.ce = sext i32 %i.cb to i64
  %i.cf = shl nsw i64 %i.ce, 2                    ; 2 uses
  %i.cg = call ptr @luaM_realloc_(ptr noundef %i.cd, ptr noundef null, i64 noundef 0, i64 noundef %i.cf) #6
  br label %bb.l

bb.k:                                             ; preds = %LoadChar.exit44
  %i.ch = call ptr @luaM_toobig(ptr noundef %i.cd) #6
  %.pre.i = sext i32 %i.cb to i64
  %.pre10.i = shl nsw i64 %.pre.i, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi11.i = phi i64 [ %.pre10.i, %bb.k ], [ %i.cf, %bb.j ]
  %i.ci = phi ptr [ %i.ch, %bb.k ], [ %i.cg, %bb.j ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i32 %i.cb, ptr %i.ck, align 8, !tbaa !47
  %i.cl = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.cm = call i64 @luaZ_read(ptr noundef %i.cl, ptr noundef %i.ci, i64 noundef %.pre-phi11.i) #6
  %.not.i.i45 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i45, label %LoadCode.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %0, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9
  %i.cq = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.cn, ptr noundef nonnull @.str.5, ptr noundef %i.cp, ptr noundef nonnull @.str.4) #6 ; 0 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.cr, i32 noundef 3) #6
  br label %LoadCode.exit

LoadCode.exit:                                    ; preds = %bb.l, %bb.m
  %i.cs = call fastcc i32 @LoadInt(ptr noundef nonnull %0), !inline_history !48 ; 8 uses
  %i.ct = icmp sgt i32 %i.cs, -2
  %i.cu = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  br i1 %i.ct, label %bb.n, label %.preheader56

bb.n:                                             ; preds = %LoadCode.exit
  %i.cv = sext i32 %i.cs to i64
  %i.cw = shl nsw i64 %i.cv, 4
  %i.cx = call ptr @luaM_realloc_(ptr noundef %i.cu, ptr noundef null, i64 noundef 0, i64 noundef %i.cw) #6, !inline_history !48 ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !49
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 76
  store i32 %i.cs, ptr %i.cz, align 4, !tbaa !50
  %i.da = icmp sgt i32 %i.cs, 0
  br i1 %i.da, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %i.cs to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.db = icmp ult i32 %i.cs, 8
  br i1 %i.db, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.preheader56:                                     ; preds = %LoadCode.exit
  %i.dc = call ptr @luaM_toobig(ptr noundef %i.cu) #6, !inline_history !48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !49
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 76
  store i32 %i.cs, ptr %i.de, align 4, !tbaa !50
  br label %._crit_edge

.lr.ph59.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph59, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph59.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph59.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv.epil
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 0, ptr %i.dg, align 8, !tbaa !31
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph59, label %.lr.ph.epil, !llvm.loop !51

.lr.ph59:                                         ; preds = %.lr.ph.epil, %.lr.ph59.unr-lcssa
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %wide.trip.count69 = zext nneg i32 %i.cs to i64
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 0, ptr %i.dj, align 8, !tbaa !31
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i32 0, ptr %i.dl, align 8, !tbaa !31
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store i32 0, ptr %i.dn, align 8, !tbaa !31
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  store i32 0, ptr %i.dp, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  store i32 0, ptr %i.dr, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  store i32 0, ptr %i.dt, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  store i32 0, ptr %i.dv, align 8, !tbaa !31
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 120
  store i32 0, ptr %i.dx, align 8, !tbaa !31
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph59.unr-lcssa, label %.lr.ph, !llvm.loop !53

bb.o:                                             ; preds = %.lr.ph59, %bb.w
  %indvars.iv66 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next67, %bb.w ] ; 2 uses
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !49
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %indvars.iv66 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ea = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.eb = call i64 @luaZ_read(ptr noundef %i.ea, ptr noundef nonnull %i.a, i64 noundef 1) #6
  %.not.i.i53 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i53, label %LoadChar.exit55, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = load ptr, ptr %0, align 8, !tbaa !16
  %i.ed = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.ee = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ec, ptr noundef nonnull @.str.5, ptr noundef %i.ed, ptr noundef nonnull @.str.4) #6 ; 0 uses
  %i.ef = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.ef, i32 noundef 3) #6
  br label %LoadChar.exit55

LoadChar.exit55:                                  ; preds = %bb.o, %bb.p
  %i.eg = load i8, ptr %i.a, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  switch i8 %i.eg, label %bb.v [
    i8 0, label %.sink.split
    i8 1, label %bb.q
    i8 3, label %bb.s
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %LoadChar.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.eh = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.ei = call i64 @luaZ_read(ptr noundef %i.eh, ptr noundef nonnull %i.b, i64 noundef 1) #6
  %.not.i.i50 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i50, label %LoadChar.exit52, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = load ptr, ptr %0, align 8, !tbaa !16
  %i.ek = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.el = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ej, ptr noundef nonnull @.str.5, ptr noundef %i.ek, ptr noundef nonnull @.str.4) #6 ; 0 uses
  %i.em = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.em, i32 noundef 3) #6
  br label %LoadChar.exit52

LoadChar.exit52:                                  ; preds = %bb.q, %bb.r
  %i.en = load i8, ptr %i.b, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.eo = icmp ne i8 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  store i32 %i.ep, ptr %i.dz, align 8, !tbaa !8
  br label %.sink.split

bb.s:                                             ; preds = %LoadChar.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.eq = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.er = call i64 @luaZ_read(ptr noundef %i.eq, ptr noundef nonnull %i.c, i64 noundef 8) #6
  %.not.i.i48 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i48, label %LoadNumber.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = load ptr, ptr %0, align 8, !tbaa !16
  %i.et = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.eu = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.es, ptr noundef nonnull @.str.5, ptr noundef %i.et, ptr noundef nonnull @.str.4) #6 ; 0 uses
  %i.ev = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.ev, i32 noundef 3) #6
  br label %LoadNumber.exit

LoadNumber.exit:                                  ; preds = %bb.s, %bb.t
  %i.ew = load double, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  store double %i.ew, ptr %i.dz, align 8, !tbaa !8
  br label %.sink.split

bb.u:                                             ; preds = %LoadChar.exit55
  %i.ex = call fastcc ptr @LoadString(ptr noundef nonnull %0), !inline_history !48
  store ptr %i.ex, ptr %i.dz, align 8, !tbaa !8
  br label %.sink.split

bb.v:                                             ; preds = %LoadChar.exit55
  %i.ey = load ptr, ptr %0, align 8, !tbaa !16
  %i.ez = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.fa = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ey, ptr noundef nonnull @.str.5, ptr noundef %i.ez, ptr noundef nonnull @.str.9) #6 ; 0 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.fb, i32 noundef 3) #6
  br label %bb.w

.sink.split:                                      ; preds = %LoadChar.exit55, %LoadChar.exit52, %LoadNumber.exit, %bb.u
  %.sink = phi i32 [ 4, %bb.u ], [ 3, %LoadNumber.exit ], [ 1, %LoadChar.exit52 ], [ 0, %LoadChar.exit55 ]
  %2 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %.sink, ptr %2, align 8, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge, label %bb.o, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.w, %bb.n, %.preheader56
  %i.fc = call fastcc i32 @LoadInt(ptr noundef nonnull %0), !inline_history !48 ; 7 uses
  %i.fd = icmp sgt i32 %i.fc, -2
  %i.fe = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  br i1 %i.fd, label %bb.x, label %.preheader

bb.x:                                             ; preds = %._crit_edge
  %i.ff = sext i32 %i.fc to i64
  %i.fg = shl nsw i64 %i.ff, 3
  %i.fh = call ptr @luaM_realloc_(ptr noundef %i.fe, ptr noundef null, i64 noundef 0, i64 noundef %i.fg) #6, !inline_history !48 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !58
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store i32 %i.fc, ptr %i.fj, align 8, !tbaa !59
  %i.fk = icmp sgt i32 %i.fc, 0
  br i1 %i.fk, label %.lr.ph64.preheader, label %LoadConstants.exit

.preheader:                                       ; preds = %._crit_edge
  %i.fl = call ptr @luaM_toobig(ptr noundef %i.fe) #6, !inline_history !48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !58
  %i.fn = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store i32 %i.fc, ptr %i.fn, align 8, !tbaa !59
  br label %LoadConstants.exit

.lr.ph64.preheader:                               ; preds = %bb.x
  %i.fo = zext nneg i32 %i.fc to i64
  %i.fp = shl nuw nsw i64 %i.fo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fh, i8 0, i64 %i.fp, i1 false), !tbaa !60
  %wide.trip.count77 = zext nneg i32 %i.fc to i64
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.lr.ph64
  %indvars.iv74 = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next75, %.lr.ph64 ] ; 2 uses
  %i.fq = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.fr = call fastcc ptr @LoadFunction(ptr noundef nonnull %0, ptr noundef %i.fq), !inline_history !48
  %i.fs = load ptr, ptr %i.fi, align 8, !tbaa !58
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv74
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !60
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %LoadConstants.exit, label %.lr.ph64, !llvm.loop !62

LoadConstants.exit:                               ; preds = %.lr.ph64, %bb.x, %.preheader
  %i.fu = call fastcc i32 @LoadInt(ptr noundef nonnull readonly %0) ; 4 uses
  %i.fv = icmp sgt i32 %i.fu, -2
  %i.fw = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  br i1 %i.fv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %LoadConstants.exit
  %i.fx = sext i32 %i.fu to i64
  %i.fy = shl nsw i64 %i.fx, 2                    ; 2 uses
  %i.fz = call ptr @luaM_realloc_(ptr noundef %i.fw, ptr noundef null, i64 noundef 0, i64 noundef %i.fy) #6
  br label %bb.aa

bb.z:                                             ; preds = %LoadConstants.exit
  %i.ga = call ptr @luaM_toobig(ptr noundef %i.fw) #6
  %.pre.i46 = sext i32 %i.fu to i64
  %.pre80.i = shl nsw i64 %.pre.i46, 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre-phi81.i = phi i64 [ %.pre80.i, %bb.z ], [ %i.fy, %bb.y ]
  %i.gb = phi ptr [ %i.ga, %bb.z ], [ %i.fz, %bb.y ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %i.r, i64 84
  store i32 %i.fu, ptr %i.gd, align 4, !tbaa !64
  %i.ge = load ptr, ptr %i.aq, align 8, !tbaa !17
  %i.gf = call i64 @luaZ_read(ptr noundef %i.ge, ptr noundef %i.gb, i64 noundef %.pre-phi81.i) #6
  %.not.i.i47 = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i47, label %LoadBlock.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = load ptr, ptr %0, align 8, !tbaa !16
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !9
  %i.gj = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.gg, ptr noundef nonnull @.str.5, ptr noundef %i.gi, ptr noundef nonnull @.str.4) #6 ; 0 uses
  %i.gk = load ptr, ptr %0, align 8, !tbaa !16
  call void @luaD_throw(ptr noundef %i.gk, i32 noundef 3) #6
  br label %LoadBlock.exit.i

LoadBlock.exit.i:                                 ; preds = %bb.ab, %bb.aa
  %i.gl = call fastcc i32 @LoadInt(ptr noundef nonnull readonly %0) ; 7 uses
  %i.gm = icmp sgt i32 %i.gl, -2
  %i.gn = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  br i1 %i.gm, label %bb.ac, label %.preheader56.i

bb.ac:                                            ; preds = %LoadBlock.exit.i
  %i.go = sext i32 %i.gl to i64
  %i.gp = shl nsw i64 %i.go, 4
  %i.gq = call ptr @luaM_realloc_(ptr noundef %i.gn, ptr noundef null, i64 noundef 0, i64 noundef %i.gp) #6 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !65
  %i.gs = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  store i32 %i.gl, ptr %i.gs, align 4, !tbaa !66
  %i.gt = icmp sgt i32 %i.gl, 0
  br i1 %i.gt, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %wide.trip.count.i = zext nneg i32 %i.gl to i64 ; 3 uses
  %xtraiter96 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.gu = icmp ult i32 %i.gl, 4
  br i1 %i.gu, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter100 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader56.i:                                   ; preds = %LoadBlock.exit.i
  %i.gv = call ptr @luaM_toobig(ptr noundef %i.gn) #6
  %i.gw = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !65
  %i.gx = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  store i32 %i.gl, ptr %i.gx, align 4, !tbaa !66
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter101 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter101.next.3, %.lr.ph.i ]
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.i
  store ptr null, ptr %i.gy, align 8, !tbaa !67
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store ptr null, ptr %i.ha, align 8, !tbaa !67
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr null, ptr %i.hc, align 8, !tbaa !67
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  store ptr null, ptr %i.he, align 8, !tbaa !67
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter101.next.3 = add i64 %niter101, 4         ; 2 uses
  %niter101.ncmp.3 = icmp eq i64 %niter101.next.3, %unroll_iter100
  br i1 %niter101.ncmp.3, label %.lr.ph59.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !69

.lr.ph59.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod98.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %.lr.ph59.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph59.i.preheader.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph59.i.preheader.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter97 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i.epil ]
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.i.epil
  store ptr null, ptr %i.hf, align 8, !tbaa !67
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter97.next = add i64 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i64 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %.lr.ph59.i.preheader, label %.lr.ph.i.epil, !llvm.loop !70

.lr.ph59.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph59.i.preheader.unr-lcssa
  br label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %.lr.ph59.i ], [ 0, %.lr.ph59.i.preheader ] ; 4 uses
  %i.hg = call fastcc ptr @LoadString(ptr noundef nonnull readonly %0)
  %i.hh = load ptr, ptr %i.gr, align 8, !tbaa !65
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %indvars.iv67.i
  store ptr %i.hg, ptr %i.hi, align 8, !tbaa !67
  %i.hj = call fastcc i32 @LoadInt(ptr noundef nonnull readonly %0)
  %i.hk = load ptr, ptr %i.gr, align 8, !tbaa !65
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv67.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i32 %i.hj, ptr %i.hm, align 8, !tbaa !71
  %i.hn = call fastcc i32 @LoadInt(ptr noundef nonnull readonly %0)
  %i.ho = load ptr, ptr %i.gr, align 8, !tbaa !65
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %indvars.iv67.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i32 %i.hn, ptr %i.hq, align 4, !tbaa !72
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count.i
  br i1 %exitcond71.not.i, label %._crit_edge.i, label %.lr.ph59.i, !llvm.loop !73

._crit_edge.i:                                    ; preds = %.lr.ph59.i, %.preheader56.i, %bb.ac
  %i.hr = call fastcc i32 @LoadInt(ptr noundef nonnull readonly %0) ; 6 uses
  %i.hs = icmp sgt i32 %i.hr, -2
  %i.ht = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  br i1 %i.hs, label %bb.ad, label %.preheader.i

bb.ad:                                            ; preds = %._crit_edge.i
  %i.hu = sext i32 %i.hr to i64
  %i.hv = shl nsw i64 %i.hu, 3
  %i.hw = call ptr @luaM_realloc_(ptr noundef %i.ht, ptr noundef null, i64 noundef 0, i64 noundef %i.hv) #6 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !74
  %i.hy = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i32 %i.hr, ptr %i.hy, align 8, !tbaa !75
  %i.hz = icmp sgt i32 %i.hr, 0
  br i1 %i.hz, label %.lr.ph64.preheader.i, label %LoadDebug.exit

end_hunk_0
