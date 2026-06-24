inline.NumInlined: 732
inline.NumDeleted: 98
begin_hunk_0_@k_mul:bb.a
  %.not.i97.i = icmp sgt i32 %i.bd, -1
  br i1 %.not.i97.i, label %bb.j, label %x_mul.exit

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.r, align 8, !tbaa !24
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %x_mul.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #16, !inline_history !311
  br label %x_mul.exit

bb.l:                                             ; preds = %.lr.ph123.i
  %.idx.i = shl i64 %.077121.i, 3
  %i.bg = getelementptr i8, ptr %i.t, i64 %.idx.i ; 4 uses
  %i.bh = zext i32 %i.bb to i64                   ; 3 uses
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul nuw i64 %i.bh, %i.bh
  %i.bl = add nuw i64 %i.bk, %i.bj                ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 1073741823
  store i32 %i.bn, ptr %i.bg, align 4, !tbaa !7
  %i.bo = shl nuw nsw i64 %i.bh, 1
  %.081112.i = getelementptr i8, ptr %i.bg, i64 4 ; 2 uses
  %.080113.i = getelementptr i8, ptr %i.ba, i64 4 ; 2 uses
  %.082114.i = lshr i64 %i.bl, 30                 ; 2 uses
  %i.bp = icmp ult ptr %.080113.i, %i.az
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.082117.i = phi i64 [ %.082.i, %.lr.ph.i ], [ %.082114.i, %bb.l ]
  %.080116.i = phi ptr [ %.080.i, %.lr.ph.i ], [ %.080113.i, %bb.l ] ; 2 uses
  %.081115.i = phi ptr [ %.081.i, %.lr.ph.i ], [ %.081112.i, %bb.l ] ; 4 uses
  %i.bq = load i32, ptr %.081115.i, align 4, !tbaa !7
  %i.br = zext i32 %i.bq to i64
  %i.bs = load i32, ptr %.080116.i, align 4, !tbaa !7
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul i64 %i.bo, %i.bt
  %i.bv = add nuw nsw i64 %.082117.i, %i.br
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 1073741823
  store i32 %i.by, ptr %.081115.i, align 4, !tbaa !7
  %.081.i = getelementptr i8, ptr %.081115.i, i64 4 ; 2 uses
  %.080.i = getelementptr i8, ptr %.080116.i, i64 4 ; 2 uses
  %.082.i = lshr i64 %i.bw, 30                    ; 2 uses
  %i.bz = icmp ult ptr %.080.i, %i.az
  br i1 %i.bz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !314

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.pn95.lcssa.i = phi ptr [ %i.bg, %bb.l ], [ %.081115.i, %.lr.ph.i ]
  %.081.lcssa.i = phi ptr [ %.081112.i, %bb.l ], [ %.081.i, %.lr.ph.i ] ; 2 uses
  %.082.lcssa.i = phi i64 [ %.082114.i, %bb.l ], [ %.082.i, %.lr.ph.i ] ; 2 uses
  %.not93.i = icmp eq i64 %.082.lcssa.i, 0
  br i1 %.not93.i, label %Py_DECREF.exit98.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.ca = load i32, ptr %.081.lcssa.i, align 4, !tbaa !7
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %.082.lcssa.i, %i.cb    ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 1073741823
  store i32 %i.ce, ptr %.081.lcssa.i, align 4, !tbaa !7
  %i.cf = lshr i64 %i.cc, 30                      ; 2 uses
  %.not94.i = icmp eq i64 %i.cf, 0
  br i1 %.not94.i, label %Py_DECREF.exit98.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = getelementptr i8, ptr %.pn95.lcssa.i, i64 8
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !7
  br label %Py_DECREF.exit98.i

Py_DECREF.exit98.i:                               ; preds = %bb.n, %bb.m, %._crit_edge.i
  %i.ci = add nuw nsw i64 %.077121.i, 1           ; 2 uses
  %exitcond134.not.i = icmp eq i64 %i.ci, %i.n
  br i1 %exitcond134.not.i, label %.critedge.i, label %.lr.ph123.i, !llvm.loop !315

.lr.ph111.split.i:                                ; preds = %.lr.ph111.i, %.preheader.i
  %.178110.i = phi i64 [ %i.ck, %.preheader.i ], [ 0, %.lr.ph111.i ]
  %i.cj = tail call i32 @PyErr_CheckSignals() #16, !inline_history !311
  %.not.i120 = icmp eq i32 %i.cj, 0
  br i1 %.not.i120, label %.preheader.i, label %.split.us.i

.preheader.i:                                     ; preds = %.lr.ph111.split.i
  %i.ck = add nuw nsw i64 %.178110.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ck, %i.n
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph111.split.i, !llvm.loop !312

.split.us.i:                                      ; preds = %.lr.ph111.split.i, %.lr.ph111.split.us.i
  %i.cl = load i32, ptr %i.r, align 8, !tbaa !24  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cl, -1
  br i1 %.not.i.i, label %bb.o, label %x_mul.exit

bb.o:                                             ; preds = %.split.us.i
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.r, align 8, !tbaa !24
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.p, label %x_mul.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #16, !inline_history !311
  br label %x_mul.exit

.critedge.i:                                      ; preds = %.preheader.i, %Py_DECREF.exit.us.i, %Py_DECREF.exit98.i, %bb.h, %.preheader103.i
  %.val.i.i = load i64, ptr %i.u, align 8, !tbaa !25 ; 2 uses
  %i.co = lshr i64 %.val.i.i, 3                   ; 3 uses
  %.not1315.i.i = icmp eq i64 %i.co, 0
  br i1 %.not1315.i.i, label %x_mul.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i
  %i.cp = getelementptr i8, ptr %i.r, i64 20
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.co, %.lr.ph.i.i ], [ %i.ct, %bb.r ] ; 4 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %.016.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !7
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.r, label %.critedge.i.i

bb.r:                                             ; preds = %bb.q
  %i.ct = add nsw i64 %.016.i.i, -1               ; 2 uses
  %.not13.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not13.i.i, label %.critedge.thread.thread.sink.split.i.i, label %bb.q, !llvm.loop !50

.critedge.i.i:                                    ; preds = %bb.q
  %.not.i102.i = icmp eq i64 %.016.i.i, %i.co
  br i1 %.not.i102.i, label %x_mul.exit, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.cu = shl nuw i64 %.016.i.i, 3
  %i.cv = and i64 %.val.i.i, 3
  %i.cw = or disjoint i64 %i.cu, %i.cv
  br label %.critedge.thread.thread.sink.split.i.i

.critedge.thread.thread.sink.split.i.i:           ; preds = %bb.r, %bb.s
  %.sink.i.i = phi i64 [ %i.cw, %bb.s ], [ 1, %bb.r ]
  store i64 %.sink.i.i, ptr %i.u, align 8, !tbaa !25
  br label %x_mul.exit

bb.t:                                             ; preds = %bb.c
  %i.cx = shl nuw nsw i64 %.088, 1
  %.not102 = icmp samesign ugt i64 %i.cx, %.087
  br i1 %.not102, label %bb.ba, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr i8, ptr %.084, i64 16
  %.val54.i = load i64, ptr %i.cy, align 8, !tbaa !25
  %i.cz = lshr i64 %.val54.i, 3                   ; 3 uses
  %i.da = getelementptr i8, ptr %.089, i64 16
  %.val53.i = load i64, ptr %i.da, align 8, !tbaa !25
  %i.db = lshr i64 %.val53.i, 3                   ; 3 uses
  %i.dc = add nuw nsw i64 %i.db, %i.cz
  %i.dd = tail call fastcc ptr @long_alloc(i64 noundef %i.dc), !inline_history !316 ; 13 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %x_mul.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr i8, ptr %i.dd, i64 24     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dd, i64 16     ; 4 uses
  %.val52.i = load i64, ptr %i.dg, align 8, !tbaa !25
  %i.dh = lshr i64 %.val52.i, 1
  %i.di = and i64 %i.dh, 9223372036854775804
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %i.di, i1 false)
  %i.dj = tail call fastcc ptr @long_alloc(i64 noundef %i.cz), !inline_history !316 ; 16 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.split43.i, label %.preheader

.preheader:                                       ; preds = %bb.v
  %.not.i121243 = icmp eq i64 %i.db, 0
  br i1 %.not.i121243, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.dl = getelementptr i8, ptr %i.dj, i64 24
  %i.dm = getelementptr i8, ptr %.089, i64 24
  %i.dn = getelementptr i8, ptr %i.dj, i64 16
  %i.do = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.y

.split43.i:                                       ; preds = %bb.v
  %i.dp = load i32, ptr %i.dd, align 8, !tbaa !24 ; 2 uses
  %.not.i.i123 = icmp sgt i32 %i.dp, -1
  br i1 %.not.i.i123, label %bb.w, label %x_mul.exit

bb.w:                                             ; preds = %.split43.i
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.dd, align 8, !tbaa !24
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.x, label %x_mul.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dd) #16, !inline_history !316
  br label %x_mul.exit

bb.y:                                             ; preds = %.lr.ph, %bb.aj
  %.039.i245 = phi i64 [ %i.db, %.lr.ph ], [ %i.ge, %bb.aj ] ; 2 uses
  %.041.i244 = phi i64 [ 0, %.lr.ph ], [ %i.gf, %bb.aj ] ; 4 uses
  %i.ds = tail call i64 @llvm.smin.i64(i64 %.039.i245, i64 %i.cz) ; 4 uses
  %i.dt = getelementptr [4 x i8], ptr %i.dm, i64 %.041.i244
  %i.du = shl nuw nsw i64 %i.ds, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dl, ptr align 4 %i.dt, i64 %i.du, i1 false)
  %i.dv = shl nuw i64 %i.ds, 3
  store i64 %i.dv, ptr %i.dn, align 8, !tbaa !25
  %i.dw = tail call fastcc ptr @k_mul(ptr noundef %.084, ptr noundef nonnull %i.dj), !inline_history !316 ; 11 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = getelementptr [4 x i8], ptr %i.df, i64 %.041.i244 ; 4 uses
  %.val51.i = load i64, ptr %i.dg, align 8, !tbaa !25
  %i.dz = lshr i64 %.val51.i, 3
  %i.ea = sub i64 %i.dz, %.041.i244               ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dw, i64 24     ; 3 uses
  %i.ec = getelementptr i8, ptr %i.dw, i64 16     ; 2 uses
  %.val.i122 = load i64, ptr %i.ec, align 8, !tbaa !25 ; 3 uses
  %i.ed = lshr i64 %.val.i122, 3                  ; 5 uses
  switch i64 %i.ed, label %.lr.ph.i212.preheader.new [
    i64 0, label %v_iadd.exit
    i64 1, label %.lr.ph.i212.epil.preheader
  ]

.lr.ph.i212.preheader.new:                        ; preds = %bb.z
  %unroll_iter = and i64 %i.ed, 2305843009213693950
  br label %.lr.ph.i212

.preheader.i214.unr-lcssa:                        ; preds = %.lr.ph.i212
  %i.ee = and i64 %.val.i122, 8
  %lcmp.mod.not = icmp eq i64 %i.ee, 0
  br i1 %lcmp.mod.not, label %.preheader.i214, label %.lr.ph.i212.epil.preheader

.lr.ph.i212.epil.preheader:                       ; preds = %bb.z, %.preheader.i214.unr-lcssa
  %.026.i.epil.init = phi i32 [ 0, %bb.z ], [ %i.fg, %.preheader.i214.unr-lcssa ]
  %.02325.i.epil.init = phi i64 [ 0, %bb.z ], [ %i.fh, %.preheader.i214.unr-lcssa ] ; 2 uses
  %lcmp.mod376 = trunc i64 %i.ed to i1
  tail call void @llvm.assume(i1 %lcmp.mod376)
  %i.ef = getelementptr [4 x i8], ptr %i.dy, i64 %.02325.i.epil.init ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  %i.eh = getelementptr [4 x i8], ptr %i.eb, i64 %.02325.i.epil.init
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !7
  %i.ej = add i32 %i.eg, %.026.i.epil.init
  %i.ek = add i32 %i.ej, %i.ei                    ; 2 uses
  %i.el = and i32 %i.ek, 1073741823
  store i32 %i.el, ptr %i.ef, align 4, !tbaa !7
  %i.em = lshr i32 %i.ek, 30
  br label %.preheader.i214

.preheader.i214:                                  ; preds = %.preheader.i214.unr-lcssa, %.lr.ph.i212.epil.preheader
  %.lcssa368 = phi i32 [ %i.fg, %.preheader.i214.unr-lcssa ], [ %i.em, %.lr.ph.i212.epil.preheader ] ; 2 uses
  %i.en = icmp ne i32 %.lcssa368, 0
  %i.eo = icmp slt i64 %i.ed, %i.ea
  %i.ep = and i1 %i.eo, %i.en
  br i1 %i.ep, label %.lr.ph30.i, label %v_iadd.exit

.lr.ph.i212:                                      ; preds = %.lr.ph.i212, %.lr.ph.i212.preheader.new
  %.026.i = phi i32 [ 0, %.lr.ph.i212.preheader.new ], [ %i.fg, %.lr.ph.i212 ]
  %.02325.i = phi i64 [ 0, %.lr.ph.i212.preheader.new ], [ %i.fh, %.lr.ph.i212 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i212.preheader.new ], [ %niter.next.1, %.lr.ph.i212 ]
  %i.eq = getelementptr [4 x i8], ptr %i.dy, i64 %.02325.i ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7
  %i.es = getelementptr [4 x i8], ptr %i.eb, i64 %.02325.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !7
  %i.eu = add i32 %i.er, %.026.i
  %i.ev = add i32 %i.eu, %i.et                    ; 2 uses
  %i.ew = and i32 %i.ev, 1073741823
  store i32 %i.ew, ptr %i.eq, align 4, !tbaa !7
  %i.ex = lshr i32 %i.ev, 30
  %i.ey = or disjoint i64 %.02325.i, 1            ; 2 uses
  %i.ez = getelementptr [4 x i8], ptr %i.dy, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !7
  %i.fb = getelementptr [4 x i8], ptr %i.eb, i64 %i.ey
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !7
  %i.fd = add i32 %i.fa, %i.ex
  %i.fe = add i32 %i.fd, %i.fc                    ; 2 uses
  %i.ff = and i32 %i.fe, 1073741823
  store i32 %i.ff, ptr %i.ez, align 4, !tbaa !7
  %i.fg = lshr i32 %i.fe, 30                      ; 3 uses
  %i.fh = add nuw nsw i64 %.02325.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i214.unr-lcssa, label %.lr.ph.i212, !llvm.loop !317

.lr.ph30.i:                                       ; preds = %.preheader.i214, %.lr.ph30.i
  %.129.i = phi i32 [ %i.fm, %.lr.ph30.i ], [ %.lcssa368, %.preheader.i214 ]
  %.12428.i = phi i64 [ %i.fn, %.lr.ph30.i ], [ %i.ed, %.preheader.i214 ] ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %i.dy, i64 %.12428.i ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  %i.fk = add i32 %i.fj, %.129.i                  ; 2 uses
  %i.fl = and i32 %i.fk, 1073741823
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !7
  %i.fm = lshr i32 %i.fk, 30                      ; 2 uses
  %i.fn = add nuw nsw i64 %.12428.i, 1            ; 2 uses
  %i.fo = icmp ne i32 %i.fm, 0
  %i.fp = icmp slt i64 %i.fn, %i.ea
  %i.fq = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %i.fq, label %.lr.ph30.i, label %v_iadd.exit, !llvm.loop !318

v_iadd.exit:                                      ; preds = %.lr.ph30.i, %bb.z, %.preheader.i214
  %i.fr = load i32, ptr %i.dw, align 8, !tbaa !24 ; 2 uses
  %.not.i.i203 = icmp sgt i32 %i.fr, -1
  br i1 %.not.i.i203, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %v_iadd.exit
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %i.dw, align 8, !tbaa !24
  %.not9.i.i204 = icmp eq i32 %i.fs, 0
  br i1 %.not9.i.i204, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !51 ; 2 uses
  %.not10.i.i205 = icmp eq ptr %i.ft, null
  br i1 %.not10.i.i205, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !53
  %i.fv = tail call i32 %i.ft(ptr noundef nonnull %i.dw, i32 noundef 1, ptr noundef %i.fu) #16, !inline_history !319 ; 0 uses
  %.val6.i.i.i206.pre = load i64, ptr %i.ec, align 8, !tbaa !25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.val6.i.i.i206 = phi i64 [ %.val6.i.i.i206.pre, %bb.ac ], [ %.val.i122, %bb.ab ] ; 2 uses
  %i.fw = and i64 %.val6.i.i.i206, 4
  %.not.i.i.i207 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i207, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_SetImmortal(ptr noundef nonnull %i.dw) #16
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.fx = icmp ugt i64 %.val6.i.i.i206, 15
  br i1 %i.fx, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = load ptr, ptr %i.do, align 8, !tbaa !14 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 11208  ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !20 ; 2 uses
  %or.cond.i.i.i.i.i208 = icmp ult i64 %i.ga, 100
  br i1 %or.cond.i.i.i.i.i208, label %_PyFreeList_Push.exit.i.i.i.i209, label %bb.ah

_PyFreeList_Push.exit.i.i.i.i209:                 ; preds = %bb.ag
  %i.gb = getelementptr i8, ptr %i.fy, i64 11200  ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !16
  store ptr %i.gc, ptr %i.dw, align 8, !tbaa !19
  store ptr %i.dw, ptr %i.gb, align 8, !tbaa !16
  %i.gd = add nuw nsw i64 %i.ga, 1
  store i64 %i.gd, ptr %i.fz, align 8, !tbaa !20
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  tail call void @PyObject_Free(ptr noundef nonnull %i.dw) #16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  tail call void @PyObject_Free(ptr noundef nonnull %i.dw) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_PyFreeList_Push.exit.i.i.i.i209, %bb.ae, %bb.aa, %v_iadd.exit
  %i.ge = sub nsw i64 %.039.i245, %i.ds           ; 2 uses
  %i.gf = add i64 %i.ds, %.041.i244
  %.not.i121 = icmp eq i64 %i.ge, 0
  br i1 %.not.i121, label %._crit_edge, label %bb.y

.split.i:                                         ; preds = %bb.y
  %i.gg = load i32, ptr %i.dd, align 8, !tbaa !24 ; 2 uses
  %.not.i48.i = icmp sgt i32 %i.gg, -1
  br i1 %.not.i48.i, label %bb.ak, label %Py_DECREF.exit49.i

bb.ak:                                            ; preds = %.split.i
  %i.gh = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gh, ptr %i.dd, align 8, !tbaa !24
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.al, label %Py_DECREF.exit49.i

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dd) #16, !inline_history !316
  br label %Py_DECREF.exit49.i

Py_DECREF.exit49.i:                               ; preds = %.split.i, %bb.ak, %bb.al
  %i.gj = load i32, ptr %i.dj, align 8, !tbaa !24 ; 2 uses
  %.not.i.i200 = icmp sgt i32 %i.gj, -1
  br i1 %.not.i.i200, label %bb.am, label %x_mul.exit, !llvm.loop !320

bb.am:                                            ; preds = %Py_DECREF.exit49.i
  %i.gk = add nsw i32 %i.gj, -1                   ; 2 uses
  store i32 %i.gk, ptr %i.dj, align 8, !tbaa !24
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.an, label %x_mul.exit, !llvm.loop !320

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dj) #16
  br label %x_mul.exit, !llvm.loop !320

._crit_edge:                                      ; preds = %bb.aj, %.preheader
  %i.gm = load i32, ptr %i.dj, align 8, !tbaa !24 ; 2 uses
  %.not.i.i191 = icmp sgt i32 %i.gm, -1
  br i1 %.not.i.i191, label %bb.ao, label %_Py_DECREF_INT.exit198

bb.ao:                                            ; preds = %._crit_edge
end_hunk_0
