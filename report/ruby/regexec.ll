inline.NumInlined: 154
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@forward_search_range:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.bh, %.loopexit
  %.0177 = phi ptr [ null, %.loopexit ], [ %.3, %bb.bh ] ; 8 uses
  %.2 = phi ptr [ %.1, %.loopexit ], [ %i.mv, %bb.bh ] ; 19 uses
  %i.ax = load i32, ptr %i.ao, align 4, !tbaa !120
  switch i32 %i.ax, label %slow_search.exit [
    i32 1, label %bb.k
    i32 4, label %bb.x
    i32 2, label %bb.ad
    i32 3, label %bb.af
    i32 6, label %bb.am
    i32 7, label %bb.aq
    i32 5, label %bb.ay
  ]

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 4 uses
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 5 uses
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !135 ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %.neg.i = add i64 %i.bc, 1
  %.neg57.i = sub i64 %.neg.i, %i.bb
  %i.bd = getelementptr i8, ptr %2, i64 %.neg57.i ; 2 uses
  %i.be = icmp ugt ptr %i.bd, %4
  %spec.select.i = select i1 %i.be, ptr %4, ptr %i.bd ; 5 uses
  %i.bf = getelementptr i8, ptr %i.ay, i64 16     ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !73 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 20     ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !74
  %i.bj = icmp eq i32 %i.bg, %i.bi
  %i.bk = getelementptr i8, ptr %i.az, i64 1      ; 6 uses
  %i.bl = icmp ult ptr %.2, %spec.select.i        ; 2 uses
  br i1 %i.bj, label %.preheader.i, label %.preheader61.i

.preheader61.i:                                   ; preds = %bb.k
  br i1 %i.bl, label %.lr.ph.i, label %slow_search.exit.thread

.lr.ph.i:                                         ; preds = %.preheader61.i
  %i.bm = icmp eq ptr %i.ba, %i.bk
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bb, %i.bn
  br i1 %i.bm, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.o
  %.15064.us.i = phi ptr [ %i.bz, %bb.o ], [ %.2, %.lr.ph.i ] ; 5 uses
  %i.bp = load i8, ptr %.15064.us.i, align 1, !tbaa !59
  %i.bq = load i8, ptr %i.az, align 1, !tbaa !59
  %i.br = icmp eq i8 %i.bp, %i.bq
  br i1 %i.br, label %slow_search.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.bs = load i32, ptr %i.bf, align 8, !tbaa !73 ; 2 uses
  %i.bt = load i32, ptr %i.bh, align 4, !tbaa !74
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = call i32 @onigenc_mbclen(ptr noundef nonnull %.15064.us.i, ptr noundef %2, ptr noundef nonnull %i.ay) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bw = icmp ult ptr %.15064.us.i, %2
  %spec.select59.us.i = select i1 %i.bw, i32 %i.bs, i32 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bx = phi i32 [ %i.bv, %bb.m ], [ %spec.select59.us.i, %bb.n ]
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %.15064.us.i, i64 %i.by ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %spec.select.i
  br i1 %i.ca, label %.lr.ph.split.us.i, label %slow_search.exit.thread, !llvm.loop !136

.preheader.i:                                     ; preds = %bb.k
  br i1 %i.bl, label %.lr.ph72.i, label %slow_search.exit.thread

.lr.ph72.i:                                       ; preds = %.preheader.i
  %i.cb = load i8, ptr %i.az, align 1, !tbaa !59  ; 2 uses
  %i.cc = icmp eq ptr %i.ba, %i.bk
  %i.cd = ptrtoint ptr %i.bk to i64
  %i.ce = sub i64 %i.bb, %i.cd
  %i.cf = sext i32 %i.bg to i64                   ; 2 uses
  br i1 %i.cc, label %.lr.ph72.split.us.i, label %.lr.ph72.split.i

.lr.ph72.split.us.i:                              ; preds = %.lr.ph72.i, %bb.p
  %.04971.us.i = phi ptr [ %i.ci, %bb.p ], [ %.2, %.lr.ph72.i ] ; 3 uses
  %i.cg = load i8, ptr %.04971.us.i, align 1, !tbaa !59
  %i.ch = icmp eq i8 %i.cg, %i.cb
  br i1 %i.ch, label %slow_search.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph72.split.us.i
  %i.ci = getelementptr i8, ptr %.04971.us.i, i64 %i.cf ; 2 uses
  %i.cj = icmp ult ptr %i.ci, %spec.select.i
  br i1 %i.cj, label %.lr.ph72.split.us.i, label %slow_search.exit.thread, !llvm.loop !137

.lr.ph72.split.i:                                 ; preds = %.lr.ph72.i, %bb.r
  %.04971.i = phi ptr [ %i.co, %bb.r ], [ %.2, %.lr.ph72.i ] ; 4 uses
  %i.ck = load i8, ptr %.04971.i, align 1, !tbaa !59
  %i.cl = icmp eq i8 %i.ck, %i.cb
  br i1 %i.cl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph72.split.i
  %i.cm = getelementptr i8, ptr %.04971.i, i64 1
  %bcmp58.i = call i32 @bcmp(ptr %i.bk, ptr %i.cm, i64 %i.ce)
  %i.cn = icmp eq i32 %bcmp58.i, 0
  br i1 %i.cn, label %slow_search.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph72.split.i
  %i.co = getelementptr i8, ptr %.04971.i, i64 %i.cf ; 2 uses
  %i.cp = icmp ult ptr %i.co, %spec.select.i
  br i1 %i.cp, label %.lr.ph72.split.i, label %slow_search.exit.thread, !llvm.loop !137

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.w
  %.15064.i = phi ptr [ %i.dc, %bb.w ], [ %.2, %.lr.ph.i ] ; 6 uses
  %i.cq = load i8, ptr %.15064.i, align 1, !tbaa !59
  %i.cr = load i8, ptr %i.az, align 1, !tbaa !59
  %i.cs = icmp eq i8 %i.cq, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.i
  %i.ct = getelementptr i8, ptr %.15064.i, i64 1
  %bcmp.i = call i32 @bcmp(ptr %i.bk, ptr %i.ct, i64 %i.bo)
  %i.cu = icmp eq i32 %bcmp.i, 0
  br i1 %i.cu, label %slow_search.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.i
  %i.cv = load i32, ptr %i.bf, align 8, !tbaa !73 ; 2 uses
  %i.cw = load i32, ptr %i.bh, align 4, !tbaa !74
  %i.cx = icmp eq i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cy = icmp ult ptr %.15064.i, %2
  %spec.select59.i = select i1 %i.cy, i32 %i.cv, i32 0
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cz = call i32 @onigenc_mbclen(ptr noundef nonnull %.15064.i, ptr noundef %2, ptr noundef nonnull %i.ay) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = phi i32 [ %i.cz, %bb.v ], [ %spec.select59.i, %bb.u ]
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %.15064.i, i64 %i.db ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %spec.select.i
  br i1 %i.dd, label %.lr.ph.split.i, label %slow_search.exit.thread, !llvm.loop !136

bb.x:                                             ; preds = %bb.j
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 5 uses
  %i.df = load i32, ptr %i.at, align 8, !tbaa !50
  %i.dg = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 3 uses
  %i.dh = load ptr, ptr %i.as, align 8, !tbaa !135 ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %.neg.i209 = add i64 %i.dj, 1
  %.neg31.i = sub i64 %.neg.i209, %i.di
  %i.dk = getelementptr i8, ptr %2, i64 %.neg31.i ; 2 uses
  %i.dl = icmp ugt ptr %i.dk, %4
  %spec.select.i210 = select i1 %i.dl, ptr %4, ptr %i.dk ; 2 uses
  %i.dm = icmp ult ptr %.2, %spec.select.i210
  br i1 %i.dm, label %.lr.ph.i211, label %slow_search.exit.thread

.lr.ph.i211:                                      ; preds = %bb.x
  %i.dn = icmp ult ptr %i.dg, %i.dh
  %i.do = getelementptr i8, ptr %i.de, i64 56
  %i.dp = getelementptr i8, ptr %i.de, i64 16
  %i.dq = getelementptr i8, ptr %i.de, i64 20
  br i1 %i.dn, label %.lr.ph20.i.us.i, label %.lr.ph.split.i212

.lr.ph20.i.us.i:                                  ; preds = %.lr.ph.i211, %bb.ac
  %.02640.us.i = phi ptr [ %i.ef, %bb.ac ], [ %.2, %.lr.ph.i211 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.02640.us.i, ptr %i.e, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.i.us.i, %.lr.ph20.i.us.i
  %.01219.i.us.i = phi ptr [ %i.dg, %.lr.ph20.i.us.i ], [ %.1.lcssa.i.us.i, %.loopexit.i.us.i ] ; 3 uses
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !64
  %i.ds = call i32 %i.dr(i32 noundef %i.df, ptr noundef nonnull %i.e, ptr noundef %2, ptr noundef nonnull %i.f, ptr noundef %i.de) #21, !inline_history !138 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %bb.y
  %scevgep.i.us.i = getelementptr i8, ptr %.01219.i.us.i, i64 1
  %i.du = add nsw i32 %i.ds, -1
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %scevgep22.i.us.i = getelementptr i8, ptr %scevgep.i.us.i, i64 %i.dv
  %scevgep23.i.us.i = getelementptr i8, ptr %i.f, i64 %i.dv
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %8, %.lr.ph.preheader.i.us.i
  %.018.i.us.i = phi ptr [ %9, %8 ], [ %i.f, %.lr.ph.preheader.i.us.i ] ; 3 uses
  %.116.i.us.i = phi ptr [ %10, %8 ], [ %.01219.i.us.i, %.lr.ph.preheader.i.us.i ] ; 2 uses
  %i.dw = load i8, ptr %.116.i.us.i, align 1, !tbaa !59
  %i.dx = load i8, ptr %.018.i.us.i, align 1, !tbaa !59
  %.not.i.us.i = icmp eq i8 %i.dw, %i.dx
  br i1 %.not.i.us.i, label %8, label %bb.z

8:                                                ; preds = %.lr.ph.i.us.i
  %9 = getelementptr i8, ptr %.018.i.us.i, i64 1
  %10 = getelementptr i8, ptr %.116.i.us.i, i64 1
  %exitcond.not.i.us.i = icmp eq ptr %.018.i.us.i, %scevgep23.i.us.i
  br i1 %exitcond.not.i.us.i, label %.loopexit.i.us.i, label %.lr.ph.i.us.i, !llvm.loop !139

.loopexit.i.us.i:                                 ; preds = %8, %bb.y
  %.1.lcssa.i.us.i = phi ptr [ %.01219.i.us.i, %bb.y ], [ %scevgep22.i.us.i, %8 ] ; 2 uses
  %11 = icmp ult ptr %.1.lcssa.i.us.i, %i.dh
  br i1 %11, label %bb.y, label %str_lower_case_match.exit.thread.i, !llvm.loop !140

bb.z:                                             ; preds = %.lr.ph.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dy = load i32, ptr %i.dp, align 8, !tbaa !73 ; 2 uses
  %i.dz = load i32, ptr %i.dq, align 4, !tbaa !74
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = call i32 @onigenc_mbclen(ptr noundef %.02640.us.i, ptr noundef %2, ptr noundef nonnull %i.de) #21
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ec = icmp ult ptr %.02640.us.i, %2
  %spec.select32.us.i = select i1 %i.ec, i32 %i.dy, i32 0
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ed = phi i32 [ %i.eb, %bb.aa ], [ %spec.select32.us.i, %bb.ab ]
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr i8, ptr %.02640.us.i, i64 %i.ee ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %spec.select.i210
  br i1 %i.eg, label %.lr.ph20.i.us.i, label %slow_search.exit.thread, !llvm.loop !141

.lr.ph.split.i212:                                ; preds = %.lr.ph.i211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  br label %str_lower_case_match.exit.thread.i

str_lower_case_match.exit.thread.i:               ; preds = %.loopexit.i.us.i, %.lr.ph.split.i212
  %.02639.i = phi ptr [ %.2, %.lr.ph.split.i212 ], [ %.02640.us.i, %.loopexit.i.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %slow_search.exit

bb.ad:                                            ; preds = %bb.j
  %i.eh = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 3 uses
  %i.ei = load ptr, ptr %i.as, align 8, !tbaa !135 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1     ; 4 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 2 uses
  %i.en = getelementptr i8, ptr %4, i64 %i.em     ; 2 uses
  %i.eo = icmp ugt ptr %i.en, %2
  %spec.select.i213 = select i1 %i.eo, ptr %2, ptr %i.en ; 3 uses
  %i.ep = getelementptr i8, ptr %.2, i64 %i.em    ; 2 uses
  %i.eq = load ptr, ptr %i.au, align 8, !tbaa !142
  %i.er = icmp eq ptr %i.eq, null
  %i.es = icmp ult ptr %i.ep, %spec.select.i213
  %or.cond.i = and i1 %i.er, %i.es
  br i1 %or.cond.i, label %.preheader.lr.ph.i, label %slow_search.exit.thread

.preheader.lr.ph.i:                               ; preds = %bb.ad
  %i.et = ptrtoaddr ptr %i.ei to i64
  %i.eu = load i8, ptr %i.ej, align 1, !tbaa !59
  %i.ev = add i64 %i.el, 1
  %i.ew = sub i64 %i.ev, %i.et
  %i.ex = icmp eq ptr %i.ej, %i.eh
  br label %.preheader.i214

.preheader.i214:                                  ; preds = %bb.ae, %.preheader.lr.ph.i
  %.02739.i = phi ptr [ %i.ep, %.preheader.lr.ph.i ], [ %i.fm, %bb.ae ] ; 5 uses
  %i.ey = load i8, ptr %.02739.i, align 1, !tbaa !59
  %i.ez = icmp eq i8 %i.ey, %i.eu
  br i1 %i.ez, label %.lr.ph.i215.preheader, label %._crit_edge.i

.lr.ph.i215.preheader:                            ; preds = %.preheader.i214
  br i1 %i.ex, label %.loopexit.loopexit.i, label %.lr.ph526

.lr.ph.i215:                                      ; preds = %.lr.ph526
  %i.fa = icmp eq ptr %i.fc, %i.eh
  br i1 %i.fa, label %.loopexit.loopexit.i, label %.lr.ph526, !llvm.loop !143

.lr.ph526:                                        ; preds = %.lr.ph.i215.preheader, %.lr.ph.i215
  %.03037.i525 = phi ptr [ %i.fc, %.lr.ph.i215 ], [ %i.ej, %.lr.ph.i215.preheader ]
  %.02938.i524 = phi ptr [ %i.fb, %.lr.ph.i215 ], [ %.02739.i, %.lr.ph.i215.preheader ]
  %i.fb = getelementptr i8, ptr %.02938.i524, i64 -1 ; 2 uses
  %i.fc = getelementptr i8, ptr %.03037.i525, i64 -1 ; 3 uses
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !59
  %i.fe = load i8, ptr %i.fc, align 1, !tbaa !59
  %i.ff = icmp eq i8 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph.i215, label %._crit_edge.i, !llvm.loop !143

._crit_edge.i:                                    ; preds = %.lr.ph526, %.preheader.i214
  %i.fg = getelementptr i8, ptr %.02739.i, i64 1  ; 2 uses
  %.not.i = icmp ult ptr %i.fg, %spec.select.i213
  br i1 %.not.i, label %bb.ae, label %slow_search.exit.thread

bb.ae:                                            ; preds = %._crit_edge.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !59
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr i8, ptr %i.aq, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !59
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr i8, ptr %.02739.i, i64 %i.fl ; 2 uses
  %i.fn = icmp ult ptr %i.fm, %spec.select.i213
  br i1 %i.fn, label %.preheader.i214, label %slow_search.exit.thread, !llvm.loop !144

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i215.preheader, %.lr.ph.i215
  %scevgep.le.i = getelementptr i8, ptr %.02739.i, i64 %i.ew
  br label %slow_search.exit

bb.af:                                            ; preds = %bb.j
  %i.fo = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 3 uses
  %i.fp = load ptr, ptr %i.as, align 8, !tbaa !135
  %i.fq = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 3 uses
  %i.fr = getelementptr i8, ptr %i.fp, i64 -1     ; 4 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fo to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = getelementptr i8, ptr %4, i64 %i.fu
  %i.fw = icmp ugt ptr %i.fv, %2
  %i.fx = sub i64 0, %i.fu
  %i.fy = getelementptr i8, ptr %2, i64 %i.fx
  %.046.i = select i1 %i.fw, ptr %i.fy, ptr %4    ; 8 uses
  %i.fz = load ptr, ptr %i.au, align 8, !tbaa !142
  %i.ga = icmp eq ptr %i.fz, null
  %i.gb = icmp ult ptr %.2, %.046.i
  %or.cond.i216 = and i1 %i.ga, %i.gb
  br i1 %or.cond.i216, label %.lr.ph57.i, label %slow_search.exit.thread

.lr.ph57.i:                                       ; preds = %bb.af
  %i.gc = getelementptr i8, ptr %i.fq, i64 16     ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fq, i64 20     ; 2 uses
  %i.ge = icmp eq ptr %i.fr, %i.fo
  br label %bb.ag

bb.ag:                                            ; preds = %.split55.us.i, %.lr.ph57.i
  %.04356.i = phi ptr [ %.2, %.lr.ph57.i ], [ %.us-phi.i, %.split55.us.i ] ; 7 uses
  %i.gf = getelementptr i8, ptr %.04356.i, i64 %i.fu ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !59
  %i.gh = load i8, ptr %i.fr, align 1, !tbaa !59
  %i.gi = icmp eq i8 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph.i222.preheader, label %._crit_edge.i218

.lr.ph.i222.preheader:                            ; preds = %bb.ag
  br i1 %i.ge, label %slow_search.exit, label %.lr.ph522

.lr.ph.i222:                                      ; preds = %.lr.ph522
  %i.gj = icmp eq ptr %i.gl, %i.fo
  br i1 %i.gj, label %slow_search.exit, label %.lr.ph522, !llvm.loop !145

.lr.ph522:                                        ; preds = %.lr.ph.i222.preheader, %.lr.ph.i222
  %.04552.i521 = phi ptr [ %i.gk, %.lr.ph.i222 ], [ %i.gf, %.lr.ph.i222.preheader ]
  %.04453.i520 = phi ptr [ %i.gl, %.lr.ph.i222 ], [ %i.fr, %.lr.ph.i222.preheader ]
  %i.gk = getelementptr i8, ptr %.04552.i521, i64 -1 ; 2 uses
  %i.gl = getelementptr i8, ptr %.04453.i520, i64 -1 ; 3 uses
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !59
  %i.gn = load i8, ptr %i.gl, align 1, !tbaa !59
  %i.go = icmp eq i8 %i.gm, %i.gn
  br i1 %i.go, label %.lr.ph.i222, label %._crit_edge.i218, !llvm.loop !145

._crit_edge.i218:                                 ; preds = %.lr.ph522, %bb.ag
  %i.gp = getelementptr i8, ptr %.04356.i, i64 1
  %.not.i219 = icmp ult ptr %i.gp, %.046.i
  br i1 %.not.i219, label %bb.ah, label %slow_search.exit.thread

bb.ah:                                            ; preds = %._crit_edge.i218
  %i.gq = getelementptr i8, ptr %i.gf, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !59
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr i8, ptr %i.aq, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !59
  %i.gv = zext i8 %i.gu to i64                    ; 2 uses
  %i.gw = ptrtoint ptr %.04356.i to i64           ; 2 uses
  %i.gx = load i32, ptr %i.gc, align 8, !tbaa !73 ; 2 uses
  %i.gy = load i32, ptr %i.gd, align 4, !tbaa !74
  %i.gz = icmp eq i32 %i.gx, %i.gy
  br i1 %i.gz, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.ah
  %i.ha = sext i32 %i.gx to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.split.us.i
  %.1.us.i = phi ptr [ %.04356.i, %.split.us.i ], [ %i.hd, %bb.ai ] ; 2 uses
  %i.hb = icmp ult ptr %.1.us.i, %.046.i
  %i.hc = select i1 %i.hb, i64 %i.ha, i64 0
  %i.hd = getelementptr i8, ptr %.1.us.i, i64 %i.hc ; 4 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.he, %i.gw
  %i.hg = icmp slt i64 %i.hf, %i.gv
  %i.hh = icmp ult ptr %i.hd, %.046.i
  %i.hi = and i1 %i.hh, %i.hg
  br i1 %i.hi, label %bb.ai, label %.split55.us.i, !llvm.loop !146

.split.i:                                         ; preds = %bb.ah, %bb.al
  %.1.i220 = phi ptr [ %i.hq, %bb.al ], [ %.04356.i, %bb.ah ] ; 3 uses
  %i.hj = load i32, ptr %i.gc, align 8, !tbaa !73 ; 2 uses
  %i.hk = load i32, ptr %i.gd, align 4, !tbaa !74
  %i.hl = icmp eq i32 %i.hj, %i.hk
  br i1 %i.hl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.split.i
  %i.hm = icmp ult ptr %.1.i220, %.046.i
  %spec.select.i221 = select i1 %i.hm, i32 %i.hj, i32 0
  br label %bb.al

bb.ak:                                            ; preds = %.split.i
  %i.hn = call i32 @onigenc_mbclen(ptr noundef %.1.i220, ptr noundef nonnull %.046.i, ptr noundef nonnull %i.fq) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ho = phi i32 [ %i.hn, %bb.ak ], [ %spec.select.i221, %bb.aj ]
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr i8, ptr %.1.i220, i64 %i.hp ; 4 uses
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = sub i64 %i.hr, %i.gw
  %i.ht = icmp slt i64 %i.hs, %i.gv
  %i.hu = icmp ult ptr %i.hq, %.046.i
  %i.hv = and i1 %i.hu, %i.ht
  br i1 %i.hv, label %.split.i, label %.split55.us.i, !llvm.loop !147

.split55.us.i:                                    ; preds = %bb.al, %bb.ai
  %.us-phi.i = phi ptr [ %i.hd, %bb.ai ], [ %i.hq, %bb.al ] ; 2 uses
  %i.hw = icmp ult ptr %.us-phi.i, %.046.i
  br i1 %i.hw, label %bb.ag, label %slow_search.exit.thread, !llvm.loop !148

bb.am:                                            ; preds = %bb.j
  %i.hx = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 3 uses
  %i.hy = load ptr, ptr %i.as, align 8, !tbaa !135 ; 3 uses
  %i.hz = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 2 uses
  %i.ia = load i32, ptr %i.at, align 8, !tbaa !50
  %i.ib = getelementptr i8, ptr %i.hy, i64 -1
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hx to i64
  %i.ie = sub i64 %i.ic, %i.id                    ; 3 uses
  %i.if = getelementptr i8, ptr %4, i64 %i.ie     ; 2 uses
  %i.ig = icmp ugt ptr %i.if, %2
  %spec.select.i223 = select i1 %i.ig, ptr %2, ptr %i.if ; 3 uses
  %i.ih = getelementptr i8, ptr %.2, i64 %i.ie    ; 2 uses
  %i.ii = load ptr, ptr %i.au, align 8, !tbaa !142
  %i.ij = icmp eq ptr %i.ii, null
  %i.ik = icmp ult ptr %i.ih, %spec.select.i223
  %or.cond.i224 = and i1 %i.ij, %i.ik
  br i1 %or.cond.i224, label %.lr.ph.i226, label %slow_search.exit.thread

.lr.ph.i226:                                      ; preds = %bb.am
  %i.il = sub i64 0, %i.ie                        ; 2 uses
  %i.im = icmp ult ptr %i.hx, %i.hy
  %i.in = getelementptr i8, ptr %i.hz, i64 56
  br i1 %i.im, label %.lr.ph20.i.us.i229, label %.lr.ph.split.i227

.lr.ph20.i.us.i229:                               ; preds = %.lr.ph.i226, %bb.ap
  %.02942.us.i = phi ptr [ %i.jc, %bb.ap ], [ %i.ih, %.lr.ph.i226 ] ; 4 uses
  %i.io = getelementptr i8, ptr %.02942.us.i, i64 %i.il
  %i.ip = getelementptr i8, ptr %.02942.us.i, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.io, ptr %i.c, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.i.us.i231, %.lr.ph20.i.us.i229
  %.01219.i.us.i230 = phi ptr [ %i.hx, %.lr.ph20.i.us.i229 ], [ %.1.lcssa.i.us.i232, %.loopexit.i.us.i231 ] ; 3 uses
  %i.iq = load ptr, ptr %i.in, align 8, !tbaa !64
  %i.ir = call i32 %i.iq(i32 noundef %i.ia, ptr noundef nonnull %i.c, ptr noundef %i.ip, ptr noundef nonnull %i.d, ptr noundef %i.hz) #21, !inline_history !149 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph.preheader.i.us.i233, label %.loopexit.i.us.i231

.lr.ph.preheader.i.us.i233:                       ; preds = %bb.an
  %scevgep.i.us.i234 = getelementptr i8, ptr %.01219.i.us.i230, i64 1
  %i.it = add nsw i32 %i.ir, -1
  %i.iu = zext nneg i32 %i.it to i64              ; 2 uses
  %scevgep22.i.us.i235 = getelementptr i8, ptr %scevgep.i.us.i234, i64 %i.iu
  %scevgep23.i.us.i236 = getelementptr i8, ptr %i.d, i64 %i.iu
  br label %.lr.ph.i.us.i237

.lr.ph.i.us.i237:                                 ; preds = %12, %.lr.ph.preheader.i.us.i233
  %.018.i.us.i238 = phi ptr [ %13, %12 ], [ %i.d, %.lr.ph.preheader.i.us.i233 ] ; 3 uses
  %.116.i.us.i239 = phi ptr [ %14, %12 ], [ %.01219.i.us.i230, %.lr.ph.preheader.i.us.i233 ] ; 2 uses
  %i.iv = load i8, ptr %.116.i.us.i239, align 1, !tbaa !59
  %i.iw = load i8, ptr %.018.i.us.i238, align 1, !tbaa !59
  %.not.i.us.i240 = icmp eq i8 %i.iv, %i.iw
  br i1 %.not.i.us.i240, label %12, label %bb.ao

12:                                               ; preds = %.lr.ph.i.us.i237
  %13 = getelementptr i8, ptr %.018.i.us.i238, i64 1
  %14 = getelementptr i8, ptr %.116.i.us.i239, i64 1
  %exitcond.not.i.us.i241 = icmp eq ptr %.018.i.us.i238, %scevgep23.i.us.i236
  br i1 %exitcond.not.i.us.i241, label %.loopexit.i.us.i231, label %.lr.ph.i.us.i237, !llvm.loop !139

.loopexit.i.us.i231:                              ; preds = %12, %bb.an
  %.1.lcssa.i.us.i232 = phi ptr [ %.01219.i.us.i230, %bb.an ], [ %scevgep22.i.us.i235, %12 ] ; 2 uses
  %15 = icmp ult ptr %.1.lcssa.i.us.i232, %i.hy
  br i1 %15, label %bb.an, label %str_lower_case_match.exit.thread.i228.loopexit, !llvm.loop !140

bb.ao:                                            ; preds = %.lr.ph.i.us.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not34.us.i = icmp ult ptr %i.ip, %spec.select.i223
  br i1 %.not34.us.i, label %bb.ap, label %slow_search.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ix = load i8, ptr %i.ip, align 1, !tbaa !59
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr i8, ptr %i.aq, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !59
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr i8, ptr %.02942.us.i, i64 %i.jb ; 2 uses
  %i.jd = icmp ult ptr %i.jc, %spec.select.i223
  br i1 %i.jd, label %.lr.ph20.i.us.i229, label %slow_search.exit.thread, !llvm.loop !150

.lr.ph.split.i227:                                ; preds = %.lr.ph.i226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  br label %str_lower_case_match.exit.thread.i228

str_lower_case_match.exit.thread.i228.loopexit:   ; preds = %.loopexit.i.us.i231
  %i.je = getelementptr i8, ptr %.02942.us.i, i64 %i.il
  br label %str_lower_case_match.exit.thread.i228

str_lower_case_match.exit.thread.i228:            ; preds = %str_lower_case_match.exit.thread.i228.loopexit, %.lr.ph.split.i227
  %i.jf = phi ptr [ %.2, %.lr.ph.split.i227 ], [ %i.je, %str_lower_case_match.exit.thread.i228.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %slow_search.exit

bb.aq:                                            ; preds = %bb.j
  %i.jg = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 3 uses
  %i.jh = load ptr, ptr %i.as, align 8, !tbaa !135 ; 3 uses
  %i.ji = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 5 uses
  %i.jj = load i32, ptr %i.at, align 8, !tbaa !50
  %i.jk = getelementptr i8, ptr %i.jh, i64 -1
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.jg to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 3 uses
  %i.jo = getelementptr i8, ptr %4, i64 %i.jn
  %i.jp = icmp ugt ptr %i.jo, %2
  %i.jq = sub i64 0, %i.jn
  %i.jr = getelementptr i8, ptr %2, i64 %i.jq
  %.044.i = select i1 %i.jp, ptr %i.jr, ptr %4    ; 8 uses
  %i.js = load ptr, ptr %i.au, align 8, !tbaa !142
  %i.jt = icmp eq ptr %i.js, null
  %i.ju = icmp ult ptr %.2, %.044.i
  %or.cond.i242 = and i1 %i.jt, %i.ju
  br i1 %or.cond.i242, label %.lr.ph.i244, label %slow_search.exit.thread

.lr.ph.i244:                                      ; preds = %bb.aq
  %i.jv = icmp ult ptr %i.jg, %i.jh
  %i.jw = getelementptr i8, ptr %i.ji, i64 56
  %i.jx = getelementptr i8, ptr %i.ji, i64 16     ; 2 uses
  %i.jy = getelementptr i8, ptr %i.ji, i64 20     ; 2 uses
  br i1 %i.jv, label %.lr.ph20.i.us.i247, label %.lr.ph.split.i245

.lr.ph20.i.us.i247:                               ; preds = %.lr.ph.i244, %.split56.us61.i
  %.04357.us.i = phi ptr [ %.us-phi.us.i, %.split56.us61.i ], [ %.2, %.lr.ph.i244 ] ; 7 uses
  %i.jz = getelementptr i8, ptr %.04357.us.i, i64 %i.jn
  %i.ka = getelementptr i8, ptr %i.jz, i64 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.04357.us.i, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.i.us.i249, %.lr.ph20.i.us.i247
  %.01219.i.us.i248 = phi ptr [ %i.jg, %.lr.ph20.i.us.i247 ], [ %.1.lcssa.i.us.i250, %.loopexit.i.us.i249 ] ; 3 uses
  %i.kb = load ptr, ptr %i.jw, align 8, !tbaa !64
  %i.kc = call i32 %i.kb(i32 noundef %i.jj, ptr noundef nonnull %i.a, ptr noundef %i.ka, ptr noundef nonnull %i.b, ptr noundef %i.ji) #21, !inline_history !151 ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %.lr.ph.preheader.i.us.i251, label %.loopexit.i.us.i249

.lr.ph.preheader.i.us.i251:                       ; preds = %bb.ar
  %scevgep.i.us.i252 = getelementptr i8, ptr %.01219.i.us.i248, i64 1
  %i.ke = add nsw i32 %i.kc, -1
  %i.kf = zext nneg i32 %i.ke to i64              ; 2 uses
  %scevgep22.i.us.i253 = getelementptr i8, ptr %scevgep.i.us.i252, i64 %i.kf
  %scevgep23.i.us.i254 = getelementptr i8, ptr %i.b, i64 %i.kf
  br label %.lr.ph.i.us.i255

.lr.ph.i.us.i255:                                 ; preds = %16, %.lr.ph.preheader.i.us.i251
  %.018.i.us.i256 = phi ptr [ %17, %16 ], [ %i.b, %.lr.ph.preheader.i.us.i251 ] ; 3 uses
  %.116.i.us.i257 = phi ptr [ %18, %16 ], [ %.01219.i.us.i248, %.lr.ph.preheader.i.us.i251 ] ; 2 uses
  %i.kg = load i8, ptr %.116.i.us.i257, align 1, !tbaa !59
  %i.kh = load i8, ptr %.018.i.us.i256, align 1, !tbaa !59
  %.not.i.us.i258 = icmp eq i8 %i.kg, %i.kh
  br i1 %.not.i.us.i258, label %16, label %bb.as

16:                                               ; preds = %.lr.ph.i.us.i255
  %17 = getelementptr i8, ptr %.018.i.us.i256, i64 1
  %18 = getelementptr i8, ptr %.116.i.us.i257, i64 1
  %exitcond.not.i.us.i259 = icmp eq ptr %.018.i.us.i256, %scevgep23.i.us.i254
  br i1 %exitcond.not.i.us.i259, label %.loopexit.i.us.i249, label %.lr.ph.i.us.i255, !llvm.loop !139

.loopexit.i.us.i249:                              ; preds = %16, %bb.ar
  %.1.lcssa.i.us.i250 = phi ptr [ %.01219.i.us.i248, %bb.ar ], [ %scevgep22.i.us.i253, %16 ] ; 2 uses
  %19 = icmp ult ptr %.1.lcssa.i.us.i250, %i.jh
  br i1 %19, label %bb.ar, label %str_lower_case_match.exit.thread.i246, !llvm.loop !140

bb.as:                                            ; preds = %.lr.ph.i.us.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ki = getelementptr i8, ptr %.04357.us.i, i64 1
  %.not48.us.i = icmp ult ptr %i.ki, %.044.i
  br i1 %.not48.us.i, label %bb.at, label %slow_search.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.kj = load i8, ptr %i.ka, align 1, !tbaa !59
  %i.kk = zext i8 %i.kj to i64
  %i.kl = getelementptr i8, ptr %i.aq, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !59
  %i.kn = zext i8 %i.km to i64                    ; 2 uses
  %i.ko = ptrtoint ptr %.04357.us.i to i64        ; 2 uses
  %i.kp = load i32, ptr %i.jx, align 8, !tbaa !73 ; 2 uses
  %i.kq = load i32, ptr %i.jy, align 4, !tbaa !74
  %i.kr = icmp eq i32 %i.kp, %i.kq
  br i1 %i.kr, label %.split.us.us.i, label %.split.us63.i

.split.us63.i:                                    ; preds = %bb.at, %bb.aw
  %.1.us59.i = phi ptr [ %i.kz, %bb.aw ], [ %.04357.us.i, %bb.at ] ; 3 uses
  %i.ks = load i32, ptr %i.jx, align 8, !tbaa !73 ; 2 uses
  %i.kt = load i32, ptr %i.jy, align 4, !tbaa !74
  %i.ku = icmp eq i32 %i.ks, %i.kt
  br i1 %i.ku, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.split.us63.i
  %i.kv = call i32 @onigenc_mbclen(ptr noundef %.1.us59.i, ptr noundef nonnull %.044.i, ptr noundef nonnull %i.ji) #21
  br label %bb.aw

bb.av:                                            ; preds = %.split.us63.i
  %i.kw = icmp ult ptr %.1.us59.i, %.044.i
  %spec.select.us60.i = select i1 %i.kw, i32 %i.ks, i32 0
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kx = phi i32 [ %i.kv, %bb.au ], [ %spec.select.us60.i, %bb.av ]
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr i8, ptr %.1.us59.i, i64 %i.ky ; 4 uses
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = sub i64 %i.la, %i.ko
  %i.lc = icmp slt i64 %i.lb, %i.kn
  %i.ld = icmp ult ptr %i.kz, %.044.i
  %i.le = and i1 %i.ld, %i.lc
  br i1 %i.le, label %.split.us63.i, label %.split56.us61.i, !llvm.loop !152

.split56.us61.i:                                  ; preds = %bb.aw, %bb.ax
  %.us-phi.us.i = phi ptr [ %i.lj, %bb.ax ], [ %i.kz, %bb.aw ] ; 2 uses
  %i.lf = icmp ult ptr %.us-phi.us.i, %.044.i
  br i1 %i.lf, label %.lr.ph20.i.us.i247, label %slow_search.exit.thread, !llvm.loop !153

.split.us.us.i:                                   ; preds = %bb.at
  %i.lg = sext i32 %i.kp to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.split.us.us.i
  %.1.us.us.i = phi ptr [ %.04357.us.i, %.split.us.us.i ], [ %i.lj, %bb.ax ] ; 2 uses
  %i.lh = icmp ult ptr %.1.us.us.i, %.044.i
  %i.li = select i1 %i.lh, i64 %i.lg, i64 0
  %i.lj = getelementptr i8, ptr %.1.us.us.i, i64 %i.li ; 4 uses
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = sub i64 %i.lk, %i.ko
  %i.lm = icmp slt i64 %i.ll, %i.kn
  %i.ln = icmp ult ptr %i.lj, %.044.i
  %i.lo = and i1 %i.ln, %i.lm
  br i1 %i.lo, label %bb.ax, label %.split56.us61.i, !llvm.loop !154

.lr.ph.split.i245:                                ; preds = %.lr.ph.i244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %str_lower_case_match.exit.thread.i246

str_lower_case_match.exit.thread.i246:            ; preds = %.loopexit.i.us.i249, %.lr.ph.split.i245
  %.04354.i = phi ptr [ %.2, %.lr.ph.split.i245 ], [ %.04357.us.i, %.loopexit.i.us.i249 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %slow_search.exit

bb.ay:                                            ; preds = %bb.j
  %i.lp = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 3 uses
  %i.lq = icmp ult ptr %.2, %4
  br i1 %i.lq, label %.lr.ph.i261, label %slow_search.exit.thread

.lr.ph.i261:                                      ; preds = %bb.ay
  %i.lr = getelementptr i8, ptr %i.lp, i64 16
  %i.ls = getelementptr i8, ptr %i.lp, i64 20
  br label %bb.az

bb.az:                                            ; preds = %bb.bd, %.lr.ph.i261
  %.018.i = phi ptr [ %.2, %.lr.ph.i261 ], [ %i.me, %bb.bd ] ; 5 uses
  %i.lt = load i8, ptr %.018.i, align 1, !tbaa !59
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr i8, ptr %i.aq, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !59
  %.not.i262 = icmp eq i8 %i.lw, 0
  br i1 %.not.i262, label %bb.ba, label %slow_search.exit

bb.ba:                                            ; preds = %bb.az
  %i.lx = load i32, ptr %i.lr, align 8, !tbaa !73 ; 2 uses
  %i.ly = load i32, ptr %i.ls, align 4, !tbaa !74
  %i.lz = icmp eq i32 %i.lx, %i.ly
  br i1 %i.lz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ma = icmp ult ptr %.018.i, %2
  %spec.select.i263 = select i1 %i.ma, i32 %i.lx, i32 0
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.mb = call i32 @onigenc_mbclen(ptr noundef nonnull %.018.i, ptr noundef %2, ptr noundef nonnull %i.lp) #21
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.mc = phi i32 [ %i.mb, %bb.bc ], [ %spec.select.i263, %bb.bb ]
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr i8, ptr %.018.i, i64 %i.md ; 2 uses
  %i.mf = icmp ult ptr %i.me, %4
  br i1 %i.mf, label %bb.az, label %slow_search.exit.thread, !llvm.loop !155

slow_search.exit:                                 ; preds = %bb.az, %.lr.ph.i222.preheader, %bb.s, %.lr.ph.split.us.i, %bb.q, %.lr.ph72.split.us.i, %.lr.ph.i222, %str_lower_case_match.exit.thread.i246, %str_lower_case_match.exit.thread.i228, %.loopexit.loopexit.i, %str_lower_case_match.exit.thread.i, %bb.j
  %.3 = phi ptr [ %.2, %bb.j ], [ %.04971.us.i, %.lr.ph72.split.us.i ], [ %i.jf, %str_lower_case_match.exit.thread.i228 ], [ %.04356.i, %.lr.ph.i222 ], [ %.15064.us.i, %.lr.ph.split.us.i ], [ %.04356.i, %.lr.ph.i222.preheader ], [ %.02639.i, %str_lower_case_match.exit.thread.i ], [ %.04354.i, %str_lower_case_match.exit.thread.i246 ], [ %.04971.i, %bb.q ], [ %scevgep.le.i, %.loopexit.loopexit.i ], [ %.15064.i, %bb.s ], [ %.018.i, %bb.az ] ; 18 uses
  %.not195 = icmp ne ptr %.3, null
  %i.mg = icmp ult ptr %.3, %4
  %or.cond = and i1 %.not195, %i.mg
  br i1 %or.cond, label %bb.be, label %slow_search.exit.thread

bb.be:                                            ; preds = %slow_search.exit
  %i.mh = ptrtoint ptr %.3 to i64                 ; 3 uses
  %i.mi = sub i64 %i.mh, %.pre
  %i.mj = load i64, ptr %i.j, align 8, !tbaa !127
  %i.mk = icmp ult i64 %i.mi, %i.mj
  br i1 %i.mk, label %.thread, label %bb.bi

.thread:                                          ; preds = %bb.bt, %is_mbc_newline_ex.exit, %bb.be
  %i.ml = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 3 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 16
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !73 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.ml, i64 20
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !74
  %i.mq = icmp eq i32 %i.mn, %i.mp
  br i1 %i.mq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.thread
  %i.mr = icmp ult ptr %.3, %2
  %spec.select208 = select i1 %i.mr, i32 %i.mn, i32 0
  br label %bb.bh

bb.bg:                                            ; preds = %.thread
  %i.ms = call i32 @onigenc_mbclen(ptr noundef nonnull %.3, ptr noundef %2, ptr noundef nonnull %i.ml) #21
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.mt = phi i32 [ %i.ms, %bb.bg ], [ %spec.select208, %bb.bf ]
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr i8, ptr %.3, i64 %i.mu
  br label %bb.j

bb.bi:                                            ; preds = %bb.be
  %i.mw = load i32, ptr %i.av, align 8, !tbaa !156
  switch i32 %i.mw, label %is_mbc_newline_ex.exit.thread [
    i32 32, label %bb.bs
    i32 2, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.mx = icmp eq ptr %.3, %1
  br i1 %i.mx, label %is_mbc_newline_ex.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.my = load ptr, ptr %i.ap, align 8, !tbaa !46
  %.not198 = icmp eq ptr %.0177, null
  %i.mz = select i1 %.not198, ptr %1, ptr %.0177
  %i.na = call ptr @onigenc_get_prev_char_head(ptr noundef %i.my, ptr noundef %i.mz, ptr noundef nonnull %.3, ptr noundef %2) #21 ; 6 uses
  %i.nb = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 9 uses
  %i.nc = load i32, ptr %i.aw, align 8, !tbaa !49
  %i.nd = and i32 %i.nc, 65536
  %.not.i264 = icmp eq i32 %i.nd, 0
  br i1 %.not.i264, label %is_mbc_newline_ex.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ne = getelementptr i8, ptr %i.nb, i64 32     ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !75
  %i.ng = call i32 %i.nf(ptr noundef %i.na, ptr noundef %2, ptr noundef %i.nb) #21, !inline_history !76
  %i.nh = icmp eq i32 %i.ng, 10
  br i1 %i.nh, label %is_mbc_newline_ex.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ni = getelementptr i8, ptr %i.nb, i64 16
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !73 ; 2 uses
  %i.nk = getelementptr i8, ptr %i.nb, i64 20
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !74
  %i.nm = icmp eq i32 %i.nj, %i.nl
  br i1 %i.nm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.nn = icmp ult ptr %i.na, %2
  %spec.select.i265 = select i1 %i.nn, i32 %i.nj, i32 0
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.no = call i32 @onigenc_mbclen(ptr noundef %i.na, ptr noundef %2, ptr noundef nonnull %i.nb) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.np = phi i32 [ %i.no, %bb.bo ], [ %spec.select.i265, %bb.bn ]
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr i8, ptr %i.na, i64 %i.nq  ; 2 uses
  %i.ns = icmp ult ptr %i.nr, %2
  br i1 %i.ns, label %bb.bq, label %is_mbc_newline_ex.exit

bb.bq:                                            ; preds = %bb.bp
  %i.nt = load ptr, ptr %i.ne, align 8, !tbaa !75
  %i.nu = call i32 %i.nt(ptr noundef %i.na, ptr noundef nonnull %2, ptr noundef nonnull %i.nb) #21, !inline_history !76
  %i.nv = icmp eq i32 %i.nu, 13
  br i1 %i.nv, label %bb.br, label %is_mbc_newline_ex.exit

bb.br:                                            ; preds = %bb.bq
  %i.nw = load ptr, ptr %i.ne, align 8, !tbaa !75
  %i.nx = call i32 %i.nw(ptr noundef %i.nr, ptr noundef nonnull %2, ptr noundef nonnull %i.nb) #21, !inline_history !76
  %i.ny = icmp eq i32 %i.nx, 10
  br i1 %i.ny, label %is_mbc_newline_ex.exit.thread, label %is_mbc_newline_ex.exit

is_mbc_newline_ex.exit:                           ; preds = %bb.bk, %bb.bp, %bb.bq, %bb.br
  %i.nz = getelementptr i8, ptr %i.nb, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !77
  %i.ob = call i32 %i.oa(ptr noundef %i.na, ptr noundef %2, ptr noundef %i.nb) #21
  %.2.i = icmp eq i32 %i.ob, 0
  br i1 %.2.i, label %.thread, label %is_mbc_newline_ex.exit.thread

bb.bs:                                            ; preds = %bb.bi
  %i.oc = icmp eq ptr %.3, %2
  br i1 %i.oc, label %is_mbc_newline_ex.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.od = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.oe = load i32, ptr %i.aw, align 8, !tbaa !49
  %i.of = call fastcc i32 @is_mbc_newline_ex(ptr noundef %i.od, ptr noundef nonnull %.3, ptr noundef %1, ptr noundef %2, i32 noundef %i.oe, i32 noundef 1)
  %.not197 = icmp eq i32 %i.of, 0
  br i1 %.not197, label %.thread, label %is_mbc_newline_ex.exit.thread

is_mbc_newline_ex.exit.thread:                    ; preds = %bb.bl, %bb.br, %bb.bi, %bb.bs, %bb.bt, %bb.bj, %is_mbc_newline_ex.exit
  %i.og = getelementptr i8, ptr %0, i64 432
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !121 ; 3 uses
  switch i64 %i.oh, label %bb.bv [
    i64 0, label %bb.bu
    i64 -1, label %is_mbc_newline_ex.exit.thread._crit_edge
end_hunk_0
begin_hunk_1_@is_mbc_newline_ex:bb.a
  br i1 %.not47, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1, ptr noundef %3) #21 ; 2 uses
  %.not48 = icmp eq ptr %i.f, null
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.f, ptr noundef %3, ptr noundef nonnull %0) #21
  %i.i = icmp eq i32 %i.h, 13
  br i1 %i.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !73   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !74
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ult ptr %1, %3
  %spec.select = select i1 %i.o, i32 %i.k, i32 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = tail call i32 @onigenc_mbclen(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %0) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.q = phi i32 [ %i.p, %bb.i ], [ %spec.select, %bb.h ]
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %i.t = icmp ult ptr %i.s, %3
  br i1 %i.t, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.v = tail call i32 %i.u(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %0) #21
  %i.w = icmp eq i32 %i.v, 13
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.y = tail call i32 %i.x(ptr noundef %i.s, ptr noundef nonnull %3, ptr noundef nonnull %0) #21
  %i.z = icmp eq i32 %i.y, 10
  br i1 %i.z, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77
  %i.ac = tail call i32 %i.ab(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %0) #21
  %.not46 = icmp ne i32 %i.ac, 0
  %. = zext i1 %.not46 to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !77
  %i.af = tail call i32 %i.ae(ptr noundef %1, ptr noundef %3, ptr noundef %0) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.c, %bb.f, %bb.e, %bb.n
  %.2 = phi i32 [ %i.af, %bb.n ], [ 0, %bb.e ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.l ], [ %., %bb.m ]
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @backward_search_range(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(address) %4, ptr noundef %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [18 x i8], align 16               ; 7 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr i8, ptr %0, i64 424        ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !127
  %i.h = icmp ugt i64 %i.g, %i.e
  br i1 %i.h, label %slow_search_backward.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 100
  %i.j = getelementptr i8, ptr %0, i64 72         ; 8 uses
  %i.k = getelementptr i8, ptr %0, i64 152
  %i.l = getelementptr i8, ptr %0, i64 96
  %i.m = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 128
  %i.p = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %.081 = phi ptr [ %3, %.preheader ], [ %.081.be, %.backedge ] ; 7 uses
  %i.q = load i32, ptr %i.i, align 4, !tbaa !120
  switch i32 %i.q, label %slow_search_backward.exit [
    i32 1, label %bb.c
    i32 4, label %bb.g
    i32 6, label %bb.g
    i32 7, label %bb.g
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 5, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !134  ; 3 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !135  ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %.neg.i = sub i64 %i.v, %i.u
  %i.w = getelementptr i8, ptr %2, i64 %.neg.i    ; 2 uses
  %i.x = icmp ugt ptr %i.w, %.081
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.r, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118
  %i.aa = call ptr %i.z(ptr noundef %5, ptr noundef %i.w, ptr noundef %2, ptr noundef %i.r) #21, !inline_history !157
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.aa, %bb.d ], [ %.081, %bb.c ] ; 2 uses
  %.not37.i = icmp ult ptr %.0.i, %4
  br i1 %.not37.i, label %slow_search_backward.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.032.i158 = getelementptr i8, ptr %i.s, i64 1  ; 3 uses
  %i.ab = icmp ult ptr %.032.i158, %i.t
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.138.i = phi ptr [ %i.aj, %bb.f ], [ %.0.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.ac = load i8, ptr %.138.i, align 1, !tbaa !59
  %i.ad = load i8, ptr %i.s, align 1, !tbaa !59
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br i1 %i.ae, label %.preheader.i.preheader, label %bb.f

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  br i1 %i.ab, label %.lr.ph, label %.preheader.i._crit_edge

.preheader.i:                                     ; preds = %.lr.ph
  %.032.i = getelementptr i8, ptr %.032.i160, i64 1 ; 3 uses
  %i.af = icmp ult ptr %.032.i, %i.t
  br i1 %i.af, label %.lr.ph, label %.preheader.i._crit_edge, !llvm.loop !158

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.032.i160 = phi ptr [ %.032.i, %.preheader.i ], [ %.032.i158, %.preheader.i.preheader ] ; 3 uses
  %.1.pn.i159 = phi ptr [ %.031.i, %.preheader.i ], [ %.138.i, %.preheader.i.preheader ]
  %.031.i = getelementptr i8, ptr %.1.pn.i159, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.032.i160, align 1, !tbaa !59
  %i.ah = load i8, ptr %.031.i, align 1, !tbaa !59
  %.not36.i = icmp eq i8 %i.ag, %i.ah
  br i1 %.not36.i, label %.preheader.i, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader.i._crit_edge, !llvm.loop !158

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %._crit_edge, %.preheader.i.preheader
  %.032.i.lcssa = phi ptr [ %.032.i160, %._crit_edge ], [ %.032.i158, %.preheader.i.preheader ], [ %.032.i, %.preheader.i ]
  %i.ai = icmp eq ptr %.032.i.lcssa, %i.t
  br i1 %i.ai, label %slow_search_backward.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i._crit_edge, %.lr.ph.i
  %i.aj = call ptr @onigenc_get_prev_char_head(ptr noundef %i.r, ptr noundef %5, ptr noundef nonnull %.138.i, ptr noundef %2) #21 ; 2 uses
  %.not.i = icmp ult ptr %i.aj, %4
  br i1 %.not.i, label %slow_search_backward.exit.thread, label %.lr.ph.i, !llvm.loop !159

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !46  ; 5 uses
  %i.al = load i32, ptr %i.l, align 8, !tbaa !50
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !134 ; 3 uses
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !135 ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %.neg.i95 = sub i64 %i.ap, %i.ao
  %i.aq = getelementptr i8, ptr %2, i64 %.neg.i95 ; 2 uses
  %i.ar = icmp ugt ptr %i.aq, %.081
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %i.ak, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !118
  %i.au = call ptr %i.at(ptr noundef %5, ptr noundef %i.aq, ptr noundef %2, ptr noundef %i.ak) #21, !inline_history !160
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i96 = phi ptr [ %i.au, %bb.h ], [ %.081, %bb.g ] ; 3 uses
  %.not35.i = icmp ult ptr %.0.i96, %4
  br i1 %.not35.i, label %slow_search_backward.exit.thread, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.i
  %i.av = icmp ult ptr %i.am, %i.an
  %i.aw = getelementptr i8, ptr %i.ak, i64 56
  br i1 %i.av, label %.lr.ph20.i.us.i, label %.lr.ph.split.i

.lr.ph20.i.us.i:                                  ; preds = %.lr.ph.i97, %.loopexit.i.us.i
  %.136.us.i = phi ptr [ %11, %.loopexit.i.us.i ], [ %.0.i96, %.lr.ph.i97 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.136.us.i, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph20.i.us.i
  %.01219.i.us.i = phi ptr [ %i.am, %.lr.ph20.i.us.i ], [ %.1.lcssa.i.us.i, %bb.l ] ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !64
  %i.ay = call i32 %i.ax(i32 noundef %i.al, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef %i.ak) #21, !inline_history !161 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader.i.us.i, label %bb.l

.lr.ph.preheader.i.us.i:                          ; preds = %bb.j
  %scevgep.i.us.i = getelementptr i8, ptr %.01219.i.us.i, i64 1
  %i.ba = add nsw i32 %i.ay, -1
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %scevgep22.i.us.i = getelementptr i8, ptr %scevgep.i.us.i, i64 %i.bb
  %scevgep23.i.us.i = getelementptr i8, ptr %i.b, i64 %i.bb
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.k, %.lr.ph.preheader.i.us.i
  %.018.i.us.i = phi ptr [ %8, %bb.k ], [ %i.b, %.lr.ph.preheader.i.us.i ] ; 3 uses
  %.116.i.us.i = phi ptr [ %9, %bb.k ], [ %.01219.i.us.i, %.lr.ph.preheader.i.us.i ] ; 2 uses
  %i.bc = load i8, ptr %.116.i.us.i, align 1, !tbaa !59
  %i.bd = load i8, ptr %.018.i.us.i, align 1, !tbaa !59
  %.not.i.us.i = icmp eq i8 %i.bc, %i.bd
  br i1 %.not.i.us.i, label %bb.k, label %.loopexit.i.us.i

bb.k:                                             ; preds = %.lr.ph.i.us.i
  %8 = getelementptr i8, ptr %.018.i.us.i, i64 1
  %9 = getelementptr i8, ptr %.116.i.us.i, i64 1
  %exitcond.not.i.us.i = icmp eq ptr %.018.i.us.i, %scevgep23.i.us.i
  br i1 %exitcond.not.i.us.i, label %bb.l, label %.lr.ph.i.us.i, !llvm.loop !139

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.lcssa.i.us.i = phi ptr [ %.01219.i.us.i, %bb.j ], [ %scevgep22.i.us.i, %bb.k ] ; 2 uses
  %10 = icmp ult ptr %.1.lcssa.i.us.i, %i.an
  br i1 %10, label %bb.j, label %str_lower_case_match.exit.thread.i, !llvm.loop !140

.loopexit.i.us.i:                                 ; preds = %.lr.ph.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %11 = call ptr @onigenc_get_prev_char_head(ptr noundef %i.ak, ptr noundef %5, ptr noundef %.136.us.i, ptr noundef %2) #21 ; 2 uses
  %i.be = icmp ult ptr %11, %4
  br i1 %i.be, label %slow_search_backward.exit.thread, label %.lr.ph20.i.us.i, !llvm.loop !162

.lr.ph.split.i:                                   ; preds = %.lr.ph.i97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br label %str_lower_case_match.exit.thread.i

str_lower_case_match.exit.thread.i:               ; preds = %bb.l, %.lr.ph.split.i
  %.134.i = phi ptr [ %.0.i96, %.lr.ph.split.i ], [ %.136.us.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %slow_search_backward.exit

bb.m:                                             ; preds = %bb.b
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !46
  %.not13.i = icmp ult ptr %.081, %4
  br i1 %.not13.i, label %slow_search_backward.exit.thread, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.m, %bb.n
  %.014.i = phi ptr [ %i.bk, %bb.n ], [ %.081, %bb.m ] ; 3 uses
  %i.bg = load i8, ptr %.014.i, align 1, !tbaa !59
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr i8, ptr %i.k, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !59
  %.not12.i = icmp eq i8 %i.bj, 0
  br i1 %.not12.i, label %bb.n, label %slow_search_backward.exit.thread103

bb.n:                                             ; preds = %.lr.ph.i98
  %i.bk = call ptr @onigenc_get_prev_char_head(ptr noundef %i.bf, ptr noundef %5, ptr noundef nonnull %.014.i, ptr noundef %2) #21 ; 2 uses
  %.not.i99 = icmp ult ptr %i.bk, %4
  br i1 %.not.i99, label %slow_search_backward.exit.thread, label %.lr.ph.i98, !llvm.loop !163

slow_search_backward.exit:                        ; preds = %.preheader.i._crit_edge, %str_lower_case_match.exit.thread.i, %bb.b
  %.1 = phi ptr [ %.081, %bb.b ], [ %.134.i, %str_lower_case_match.exit.thread.i ], [ %.138.i, %.preheader.i._crit_edge ] ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %slow_search_backward.exit.thread, label %slow_search_backward.exit.thread103

slow_search_backward.exit.thread103:              ; preds = %.lr.ph.i98, %slow_search_backward.exit
  %.1106 = phi ptr [ %.1, %slow_search_backward.exit ], [ %.014.i, %.lr.ph.i98 ] ; 9 uses
  %i.bl = load i32, ptr %i.o, align 8, !tbaa !156
  switch i32 %i.bl, label %.thread [
    i32 32, label %bb.x
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %slow_search_backward.exit.thread103
  %i.bm = icmp eq ptr %.1106, %1
  br i1 %i.bm, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.bo = call ptr @onigenc_get_prev_char_head(ptr noundef %i.bn, ptr noundef %1, ptr noundef nonnull %.1106, ptr noundef %2) #21 ; 7 uses
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !46  ; 9 uses
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !49
  %i.br = and i32 %i.bq, 65536
  %.not.i100 = icmp eq i32 %i.br, 0
  br i1 %.not.i100, label %is_mbc_newline_ex.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr i8, ptr %i.bp, i64 32     ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !75
  %i.bu = call i32 %i.bt(ptr noundef %i.bo, ptr noundef %2, ptr noundef %i.bp) #21, !inline_history !76
  %i.bv = icmp eq i32 %i.bu, 10
  br i1 %i.bv, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr i8, ptr %i.bp, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !73 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !74
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = icmp ult ptr %i.bo, %2
  %spec.select.i = select i1 %i.cb, i32 %i.bx, i32 0
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cc = call i32 @onigenc_mbclen(ptr noundef %i.bo, ptr noundef %2, ptr noundef nonnull %i.bp) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = phi i32 [ %i.cc, %bb.t ], [ %spec.select.i, %bb.s ]
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %i.bo, i64 %i.ce  ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %2
  br i1 %i.cg, label %bb.v, label %is_mbc_newline_ex.exit

bb.v:                                             ; preds = %bb.u
  %i.ch = load ptr, ptr %i.bs, align 8, !tbaa !75
  %i.ci = call i32 %i.ch(ptr noundef %i.bo, ptr noundef nonnull %2, ptr noundef nonnull %i.bp) #21, !inline_history !76
  %i.cj = icmp eq i32 %i.ci, 13
  br i1 %i.cj, label %bb.w, label %is_mbc_newline_ex.exit

bb.w:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr %i.bs, align 8, !tbaa !75
  %i.cl = call i32 %i.ck(ptr noundef %i.cf, ptr noundef nonnull %2, ptr noundef nonnull %i.bp) #21, !inline_history !76
  %i.cm = icmp eq i32 %i.cl, 10
  br i1 %i.cm, label %.thread, label %is_mbc_newline_ex.exit

is_mbc_newline_ex.exit:                           ; preds = %bb.p, %bb.u, %bb.v, %bb.w
  %i.cn = getelementptr i8, ptr %i.bp, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !77
  %i.cp = call i32 %i.co(ptr noundef %i.bo, ptr noundef %2, ptr noundef %i.bp) #21
  %.2.i = icmp eq i32 %i.cp, 0
  br i1 %.2.i, label %.backedge, label %.thread

bb.x:                                             ; preds = %slow_search_backward.exit.thread103
  %i.cq = icmp eq ptr %.1106, %2
  br i1 %i.cq, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.cs = load i32, ptr %i.p, align 8, !tbaa !49
  %i.ct = call fastcc i32 @is_mbc_newline_ex(ptr noundef %i.cr, ptr noundef nonnull %.1106, ptr noundef %1, ptr noundef %2, i32 noundef %i.cs, i32 noundef 1)
  %.not90 = icmp eq i32 %i.ct, 0
  br i1 %.not90, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.cv = call ptr @onigenc_get_prev_char_head(ptr noundef %i.cu, ptr noundef %5, ptr noundef nonnull %.1106, ptr noundef %2) #21 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %slow_search_backward.exit.thread, label %.backedge

.backedge:                                        ; preds = %bb.z, %is_mbc_newline_ex.exit
  %.081.be = phi ptr [ %i.cv, %bb.z ], [ %i.bo, %is_mbc_newline_ex.exit ]
  br label %bb.b

.thread:                                          ; preds = %bb.q, %bb.w, %slow_search_backward.exit.thread103, %bb.x, %bb.y, %bb.o, %is_mbc_newline_ex.exit
  %i.cx = getelementptr i8, ptr %0, i64 432
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !121 ; 3 uses
  %.not92 = icmp eq i64 %i.cy, -1
  br i1 %.not92, label %slow_search_backward.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.thread
  %i.cz = ptrtoint ptr %.1106 to i64
  %i.da = sub i64 %i.cz, %i.d                     ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cy
  %i.dc = sub i64 0, %i.cy
  %i.dd = getelementptr i8, ptr %.1106, i64 %i.dc
  %storemerge = select i1 %i.db, ptr %1, ptr %i.dd
  store ptr %storemerge, ptr %6, align 8, !tbaa !19
  %i.de = load i64, ptr %i.f, align 8, !tbaa !127 ; 3 uses
  %.not93 = icmp eq i64 %i.de, 0
  br i1 %.not93, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = icmp ult i64 %i.da, %i.de
  br i1 %i.df, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = sub i64 0, %i.de
  %i.dh = getelementptr i8, ptr %.1106, i64 %i.dg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.sink = phi ptr [ %1, %bb.ab ], [ %i.dh, %bb.ac ], [ %.1106, %bb.aa ] ; 2 uses
  store ptr %.sink, ptr %7, align 8, !tbaa !19
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.dj = call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.di, ptr noundef %5, ptr noundef %.sink, ptr noundef %2) #21
  store ptr %i.dj, ptr %7, align 8, !tbaa !19
  br label %slow_search_backward.exit.thread

slow_search_backward.exit.thread:                 ; preds = %bb.z, %bb.m, %bb.i, %bb.e, %slow_search_backward.exit, %bb.n, %.loopexit.i.us.i, %bb.f, %.thread, %bb.ad, %bb.a
  %.0 = phi i32 [ 1, %.thread ], [ 0, %bb.a ], [ 1, %bb.ad ], [ 0, %bb.n ], [ 0, %.loopexit.i.us.i ], [ 0, %bb.f ], [ 0, %slow_search_backward.exit ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @onig_scan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 16
  %i.b = ptrtoint ptr %1 to i64
  %i.c = getelementptr i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.039 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.k ]   ; 3 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %.1, %bb.k ]     ; 6 uses
  %i.d = tail call i64 @onig_search_gpos(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %.0, ptr noundef %.0, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %5(i64 noundef %.039, i64 noundef %i.d, ptr noundef %3, ptr noundef %6) #21 ; 2 uses
  %i.g = add i64 %.039, 1                         ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.f to i64
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = ptrtoint ptr %.0 to i64
  %i.l = sub i64 %i.k, %i.b
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not47 = icmp ult ptr %.0, %2
  br i1 %.not47, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @onigenc_mbclen(ptr noundef %.0, ptr noundef nonnull %2, ptr noundef nonnull %i.n) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.u = phi i32 [ %i.t, %bb.h ], [ %i.p, %bb.g ]
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %.0, i64 %i.v
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %1, i64 %i.j
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi ptr [ %i.w, %bb.i ], [ %i.x, %bb.j ]  ; 2 uses
  %i.y = icmp ugt ptr %.1, %2
  br i1 %i.y, label %.loopexit, label %bb.b

bb.l:                                             ; preds = %bb.b
  %i.z = icmp eq i64 %i.d, -1
  %spec.select48 = select i1 %i.z, i64 %.039, i64 %i.d
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.k, %bb.l, %bb.d
  %.038 = phi i64 [ %i.h, %bb.d ], [ %spec.select48, %bb.l ], [ %i.g, %bb.k ], [ %i.g, %bb.f ]
  ret i64 %.038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @onig_get_encoding(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @onig_get_options(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @onig_get_case_fold_flag(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @onig_get_syntax(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @onig_number_of_captures(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @onig_number_of_capture_histories(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #14 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @onig_copy_encoding(ptr nofree noundef writeonly captures(none) initializes((0, 136)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false), !tbaa.struct !165
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -13, 1) i64 @count_num_cache_opcodes_inner(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 40 uses
  %i.b = alloca i64, align 8                      ; 19 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = load ptr, ptr %3, align 8, !tbaa !19     ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !114
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h     ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.l = load i64, ptr %4, align 8, !tbaa !20     ; 3 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !20
  %i.m = icmp ult ptr %i.d, %i.i
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.n = icmp slt i32 %2, 0                       ; 3 uses
  %i.o = add nuw i32 %2, 1                        ; 3 uses
  %.not87 = icmp eq i16 %1, -1
  %i.p = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.q = getelementptr i8, ptr %i.k, i64 16
  %i.r = getelementptr i8, ptr %i.k, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ay
  %i.s = phi i64 [ %i.l, %.lr.ph ], [ %i.ed, %bb.ay ] ; 61 uses
  %i.t = phi ptr [ %i.d, %.lr.ph ], [ %i.ee, %bb.ay ] ; 34 uses
  %i.u = getelementptr i8, ptr %i.t, i64 1        ; 16 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !19
  %i.v = load i8, ptr %i.t, align 1, !tbaa !59
  switch i8 %i.v, label %.loopexit89 [
    i8 0, label %bb.ay
    i8 1, label %bb.ay
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.m
    i8 13, label %bb.n
    i8 14, label %bb.o
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 19, label %bb.t
    i8 17, label %bb.u
    i8 20, label %bb.u
    i8 18, label %bb.v
    i8 21, label %bb.v
    i8 22, label %bb.ay
    i8 23, label %bb.ay
    i8 24, label %bb.w
    i8 25, label %bb.w
    i8 26, label %bb.x
    i8 27, label %bb.x
end_hunk_1
