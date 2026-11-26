Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/time?download=true
inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@time_init_parse:bb.a
  %i.bw = getelementptr i8, ptr %i.br, i64 1      ; 12 uses
  %.not = icmp eq i64 %i.bt, 1
  br i1 %.not, label %.critedge2, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !268
  %i.by = add i8 %i.bx, -58
  %i.bz = icmp ult i8 %i.by, -10
  br i1 %i.bz, label %.critedge2, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = call fastcc i32 @two_digits(ptr noundef nonnull %i.bw, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.22) ; 7 uses
  %i.cb = icmp ugt i32 %i.ca, 31
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cc, ptr noundef nonnull @.str.107) #19
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !277 ; 5 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ak, %i.ce
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !268
  switch i8 %i.ch, label %bb.ag [
    i8 46, label %bb.af
    i8 58, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ci = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  %i.cj = getelementptr i8, ptr %i.cd, i64 1
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.bw to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = trunc i64 %i.cm to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ci, ptr noundef nonnull @.str.147, i32 noundef %i.cn, ptr noundef nonnull %i.bw) #19
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.co = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  %i.cp = getelementptr i8, ptr %i.cd, i64 1
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.bw to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.co, ptr noundef nonnull @.str.148, i32 noundef %i.ct, ptr noundef nonnull %i.bw) #19
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cu = getelementptr i8, ptr %i.cd, i64 1
  %i.cv = call fastcc i32 @two_digits(ptr noundef %i.cu, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.23) ; 7 uses
  %i.cw = icmp ugt i32 %i.cv, 63
  br i1 %i.cw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cx = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cx, ptr noundef nonnull @.str.108) #19
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !277 ; 5 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.ak, %i.cz
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !268
  switch i8 %i.dc, label %bb.am [
    i8 46, label %bb.al
    i8 58, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dd = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  %i.de = getelementptr i8, ptr %i.cy, i64 1
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.bw to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = trunc i64 %i.dh to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dd, ptr noundef nonnull @.str.149, i32 noundef %i.di, ptr noundef nonnull %i.bw) #19
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.dj = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  %i.dk = getelementptr i8, ptr %i.cy, i64 1
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.bw to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = trunc i64 %i.dn to i32
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dj, ptr noundef nonnull @.str.150, i32 noundef %i.do, ptr noundef nonnull %i.bw) #19
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.dp = getelementptr i8, ptr %i.cy, i64 1
  %i.dq = call fastcc i32 @two_digits(ptr noundef %i.dp, ptr noundef %i.r, ptr noundef %i.a, ptr noundef nonnull @.str.24) ; 7 uses
  %i.dr = icmp ugt i32 %i.dq, 63
  br i1 %i.dr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ds = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ds, ptr noundef nonnull @.str.109) #19
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !277 ; 5 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.ak, %i.du
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %bb.aq, label %.critedge2

bb.aq:                                            ; preds = %bb.ap
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !268
  %i.dy = icmp eq i8 %i.dx, 46
  br i1 %i.dy, label %bb.ar, label %.critedge2

bb.ar:                                            ; preds = %bb.aq
  %i.dz = getelementptr i8, ptr %i.dt, i64 1      ; 5 uses
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !277
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ak, %i.ea                    ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !234
  %i.ec = icmp ne i64 %i.w, 0
  %i.ed = icmp sgt i64 %i.eb, 0
  %or.cond189 = and i1 %i.ec, %i.ed
  br i1 %or.cond189, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %storemerge190 = phi i64 [ %i.ei, %bb.as ], [ 0, %bb.ar ] ; 4 uses
  %i.ee = getelementptr i8, ptr %i.dz, i64 %storemerge190
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !268
  %i.eg = add i8 %i.ef, -58
  %i.eh = icmp ult i8 %i.eg, -10
  br i1 %i.eh, label %.critedge, label %bb.as

bb.as:                                            ; preds = %.lr.ph
  %i.ei = add nuw nsw i64 %storemerge190, 1       ; 5 uses
  store i64 %i.ei, ptr %i.b, align 8, !tbaa !234
  %i.ej = icmp ult i64 %i.ei, %i.w
  %i.ek = icmp slt i64 %i.ei, %i.eb
  %or.cond = and i1 %i.ej, %i.ek
  br i1 %or.cond, label %.lr.ph, label %.critedge.thread254, !llvm.loop !382

.critedge:                                        ; preds = %.lr.ph
  %.not129 = icmp eq i64 %storemerge190, 0
  br i1 %.not129, label %.critedge.thread, label %.critedge.thread254

.critedge.thread:                                 ; preds = %bb.ar, %.critedge
  %i.el = call ptr @rb_enc_get(i64 noundef %i.c) #18
  %i.em = call i32 @rb_enc_precise_mbclen(ptr noundef %i.dz, ptr noundef %i.r, ptr noundef %i.el) #18
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %i.en = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !277
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.bw to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %spec.store.select, %i.es
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.en, ptr noundef nonnull @.str.151, i32 noundef %i.et, ptr noundef nonnull %i.bw) #19
  unreachable

.critedge.thread254:                              ; preds = %bb.as, %.critedge
  %storemerge.lcssa257 = phi i64 [ %storemerge190, %.critedge ], [ %i.ei, %bb.as ]
  %i.eu = call i64 @rb_int_parse_cstr(ptr noundef %i.dz, i64 noundef %storemerge.lcssa257, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef 0) #18 ; 4 uses
  %i.ev = icmp eq i64 %i.eu, 4
  %.promoted195.pre = load ptr, ptr %i.a, align 8, !tbaa !277 ; 6 uses
  br i1 %i.ev, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %.critedge.thread254
  %i.ew = icmp ult ptr %.promoted195.pre, %i.r
  br i1 %i.ew, label %.lr.ph193.preheader, label %.critedge2

.lr.ph193.preheader:                              ; preds = %.preheader
  %.promoted207 = ptrtoaddr ptr %.promoted195.pre to i64
  %i.ex = add i64 %i.q, %i.o
  %i.ey = sub i64 %i.ex, %.promoted207
  %scevgep = getelementptr i8, ptr %.promoted195.pre, i64 %i.ey ; 2 uses
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %bb.at
  %i.ez = phi ptr [ %i.fe, %bb.at ], [ %.promoted195.pre, %.lr.ph193.preheader ] ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !268
  %i.fb = sext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -58
  %i.fd = icmp ult i32 %i.fc, -10
  br i1 %i.fd, label %.critedge2, label %bb.at

bb.at:                                            ; preds = %.lr.ph193
  %i.fe = getelementptr i8, ptr %i.ez, i64 1      ; 3 uses
  store ptr %i.fe, ptr %i.a, align 8, !tbaa !277
  %exitcond.not = icmp eq ptr %i.fe, %scevgep
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph193, !llvm.loop !383

.critedge2:                                       ; preds = %bb.at, %.lr.ph193, %bb.y, %.preheader, %bb.z, %bb.x, %bb.aa, %.critedge.thread254, %bb.aq, %bb.ap, %bb.t, %bb.u, %bb.p, %bb.q
  %.promoted195 = phi ptr [ %i.aw, %bb.p ], [ %i.br, %bb.y ], [ %i.dt, %bb.ap ], [ %i.bh, %bb.u ], [ %i.bh, %bb.t ], [ %i.aw, %bb.q ], [ %i.br, %bb.aa ], [ %.promoted195.pre, %.critedge.thread254 ], [ %i.br, %bb.x ], [ %i.br, %bb.z ], [ %i.dt, %bb.aq ], [ %.promoted195.pre, %.preheader ], [ %scevgep, %bb.at ], [ %i.ez, %.lr.ph193 ] ; 5 uses
  %.2105 = phi i64 [ 4, %bb.p ], [ 4, %bb.y ], [ 4, %bb.ap ], [ 4, %bb.u ], [ 4, %bb.t ], [ 4, %bb.q ], [ 4, %bb.aa ], [ 4, %.critedge.thread254 ], [ 4, %bb.x ], [ 4, %bb.z ], [ 4, %bb.aq ], [ %i.eu, %.preheader ], [ %i.eu, %.lr.ph193 ], [ %i.eu, %bb.at ] ; 4 uses
  %.0101 = phi i32 [ -1, %bb.p ], [ %i.be, %bb.y ], [ %i.be, %bb.ap ], [ %i.be, %bb.u ], [ %i.be, %bb.t ], [ -1, %bb.q ], [ %i.be, %bb.aa ], [ %i.be, %.critedge.thread254 ], [ %i.be, %bb.x ], [ %i.be, %bb.z ], [ %i.be, %bb.aq ], [ %i.be, %.preheader ], [ %i.be, %.lr.ph193 ], [ %i.be, %bb.at ] ; 3 uses
  %.099 = phi i32 [ -1, %bb.p ], [ %i.bo, %bb.y ], [ %i.bo, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ %i.bo, %bb.aa ], [ %i.bo, %.critedge.thread254 ], [ %i.bo, %bb.x ], [ %i.bo, %bb.z ], [ %i.bo, %bb.aq ], [ %i.bo, %.preheader ], [ %i.bo, %.lr.ph193 ], [ %i.bo, %bb.at ] ; 3 uses
  %.197 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.ca, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.ca, %.critedge.thread254 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.ca, %bb.aq ], [ %i.ca, %.preheader ], [ %i.ca, %.lr.ph193 ], [ %i.ca, %bb.at ] ; 4 uses
  %.194 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.cv, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.cv, %.critedge.thread254 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.cv, %bb.aq ], [ %i.cv, %.preheader ], [ %i.cv, %.lr.ph193 ], [ %i.cv, %bb.at ] ; 3 uses
  %.192 = phi i32 [ -1, %bb.p ], [ -1, %bb.y ], [ %i.dq, %bb.ap ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.q ], [ -1, %bb.aa ], [ %i.dq, %.critedge.thread254 ], [ -1, %bb.x ], [ -1, %bb.z ], [ %i.dq, %bb.aq ], [ %i.dq, %.preheader ], [ %i.dq, %.lr.ph193 ], [ %i.dq, %bb.at ] ; 3 uses
  %.promoted195208 = ptrtoaddr ptr %.promoted195 to i64 ; 2 uses
  %i.ff = icmp ult ptr %.promoted195, %i.r
  br i1 %i.ff, label %.lr.ph196.preheader, label %.critedge4

.lr.ph196.preheader:                              ; preds = %.critedge2
  %i.fg = add i64 %i.q, %i.o
  %i.fh = sub i64 %i.fg, %.promoted195208
  %scevgep209 = getelementptr i8, ptr %.promoted195, i64 %i.fh
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %bb.au
  %i.fi = phi ptr [ %i.fo, %bb.au ], [ %.promoted195, %.lr.ph196.preheader ] ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !268 ; 2 uses
  %i.fk = sext i8 %i.fj to i32
  %i.fl = icmp ne i8 %i.fj, 32
  %i.fm = add nsw i32 %i.fk, -14
  %i.fn = icmp ult i32 %i.fm, -5
  %narrow.i137.not = select i1 %i.fl, i1 %i.fn, i1 false
  br i1 %narrow.i137.not, label %.critedge4.loopexit, label %bb.au

bb.au:                                            ; preds = %.lr.ph196
  %i.fo = getelementptr i8, ptr %i.fi, i64 1      ; 4 uses
  store ptr %i.fo, ptr %i.a, align 8, !tbaa !277
  %exitcond210.not = icmp eq ptr %i.fo, %scevgep209
  br i1 %exitcond210.not, label %.critedge4.loopexit, label %.lr.ph196, !llvm.loop !384

.critedge4.loopexit:                              ; preds = %bb.au, %.lr.ph196
  %.promoted200220 = phi ptr [ %i.fi, %.lr.ph196 ], [ %i.fo, %bb.au ] ; 2 uses
  %.pre = ptrtoaddr ptr %.promoted200220 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.promoted200211.pre-phi = phi i64 [ %.pre, %.critedge4.loopexit ], [ %.promoted195208, %.critedge2 ] ; 2 uses
  %.promoted200 = phi ptr [ %.promoted200220, %.critedge4.loopexit ], [ %.promoted195, %.critedge2 ] ; 6 uses
  %i.fp = icmp ult ptr %.promoted200, %i.r
  br i1 %i.fp, label %.lr.ph201.preheader, label %.critedge6

.lr.ph201.preheader:                              ; preds = %.critedge4
  %i.fq = add i64 %i.q, %i.o
  %i.fr = sub i64 %i.fq, %.promoted200211.pre-phi
  %scevgep212 = getelementptr i8, ptr %.promoted200, i64 %i.fr
  br label %.lr.ph201

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %bb.av
  %i.fs = phi ptr [ %i.fy, %bb.av ], [ %.promoted200, %.lr.ph201.preheader ] ; 3 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !268 ; 2 uses
  %i.fu = sext i8 %i.ft to i32
  %i.fv = icmp ne i8 %i.ft, 32
  %i.fw = add nsw i32 %i.fu, -14
  %i.fx = icmp ult i32 %i.fw, -5
  %narrow.i138.not = select i1 %i.fv, i1 %i.fx, i1 false
  br i1 %narrow.i138.not, label %bb.av, label %.critedge6.loopexit

bb.av:                                            ; preds = %.lr.ph201
  %i.fy = getelementptr i8, ptr %i.fs, i64 1      ; 4 uses
  store ptr %i.fy, ptr %i.a, align 8, !tbaa !277
  %exitcond213.not = icmp eq ptr %i.fy, %scevgep212
  br i1 %exitcond213.not, label %.critedge6.loopexit, label %.lr.ph201, !llvm.loop !385

.critedge6.loopexit:                              ; preds = %bb.av, %.lr.ph201
  %.promoted205222 = phi ptr [ %i.fs, %.lr.ph201 ], [ %i.fy, %bb.av ] ; 2 uses
  %.pre223 = ptrtoaddr ptr %.promoted205222 to i64
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge4
  %.promoted205214.pre-phi = phi i64 [ %.pre223, %.critedge6.loopexit ], [ %.promoted200211.pre-phi, %.critedge4 ]
  %.promoted205 = phi ptr [ %.promoted205222, %.critedge6.loopexit ], [ %.promoted200, %.critedge4 ] ; 5 uses
  %i.fz = icmp ult ptr %.promoted205, %i.r
  br i1 %i.fz, label %.lr.ph206.preheader, label %.critedge8

.lr.ph206.preheader:                              ; preds = %.critedge6
  %i.ga = add i64 %i.q, %i.o
  %i.gb = sub i64 %i.ga, %.promoted205214.pre-phi
  %scevgep215 = getelementptr i8, ptr %.promoted205, i64 %i.gb
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %bb.aw
  %i.gc = phi ptr [ %i.gi, %bb.aw ], [ %.promoted205, %.lr.ph206.preheader ] ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !268 ; 2 uses
  %i.ge = sext i8 %i.gd to i32
  %i.gf = icmp ne i8 %i.gd, 32
  %i.gg = add nsw i32 %i.ge, -14
  %i.gh = icmp ult i32 %i.gg, -5
  %narrow.i139.not = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %narrow.i139.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph206
  %i.gi = getelementptr i8, ptr %i.gc, i64 1      ; 3 uses
  store ptr %i.gi, ptr %i.a, align 8, !tbaa !277
  %exitcond216.not = icmp eq ptr %i.gi, %scevgep215
  br i1 %exitcond216.not, label %.critedge8, label %.lr.ph206, !llvm.loop !386

bb.ax:                                            ; preds = %.lr.ph206
  %i.gj = call fastcc i64 @rbimpl_str_new_cstr()  ; 2 uses
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !277 ; 2 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.ak, %i.gl
  %i.gn = call i64 @rb_str_cat(i64 noundef %i.gj, ptr noundef %i.gk, i64 noundef %i.gm) #18 ; 0 uses
  %i.go = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  %i.gp = call i64 @rb_exc_new_str(i64 noundef %i.go, i64 noundef %i.gj) #18
  call void @rb_exc_raise(i64 noundef %i.gp) #19
  unreachable

.critedge8:                                       ; preds = %bb.aw, %.critedge6
  %i.gq = icmp ugt ptr %.promoted205, %.promoted200
  br i1 %i.gq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.critedge8
  %i.gr = ptrtoint ptr %.promoted200 to i64       ; 2 uses
  %i.gs = sub i64 %i.gr, %i.al
  %i.gt = ptrtoint ptr %.promoted205 to i64
  %i.gu = sub i64 %i.gt, %i.gr
  %i.gv = call i64 @rb_str_subseq(i64 noundef %i.c, i64 noundef %i.gs, i64 noundef %i.gu) #18
  br label %bb.bb

bb.az:                                            ; preds = %.critedge8
  %i.gw = icmp eq i32 %.197, -1
  br i1 %i.gw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gx = load i64, ptr @rb_eArgError, align 8, !tbaa !234
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gx, ptr noundef nonnull @.str.153) #19
  unreachable

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %.090 = phi i64 [ %i.gv, %bb.ay ], [ %3, %bb.az ] ; 3 uses
  %i.gy = icmp eq i64 %.2105, 4
  br i1 %i.gy, label %.thread147, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gz = load i64, ptr %i.b, align 8, !tbaa !234 ; 4 uses
  %i.ha = icmp ult i64 %i.gz, 9
  br i1 %i.ha, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hb = sub nuw nsw i64 9, %i.gz
  %i.hc = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.hb) #18
  %i.hd = call i64 @rb_int_mul(i64 noundef %.2105, i64 noundef %i.hc) #18
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %.not134 = icmp eq i64 %i.gz, 9
  br i1 %.not134, label %.thread168, label %bb.bf

.thread168:                                       ; preds = %bb.be
  store i64 %i.am, ptr %5, align 8, !tbaa !276
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.hf = add i64 %i.gz, -9
  %i.hg = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.hf) #18
  %i.hh = call i64 @rb_rational_new(i64 noundef %.2105, i64 noundef %i.hg) #18
  br label %bb.bg

.thread147:                                       ; preds = %bb.o, %bb.bb
  %.1102.ph = phi i32 [ %.0101, %bb.bb ], [ -1, %bb.o ]
  %.1100.ph = phi i32 [ %.099, %bb.bb ], [ -1, %bb.o ]
  %.298.ph = phi i32 [ %.197, %bb.bb ], [ -1, %bb.o ]
  %.295.ph = phi i32 [ %.194, %bb.bb ], [ -1, %bb.o ]
  %.2.ph = phi i32 [ %.192, %bb.bb ], [ -1, %bb.o ]
  %.1.ph = phi i64 [ %.090, %bb.bb ], [ %3, %bb.o ]
  store i64 %i.am, ptr %5, align 8, !tbaa !276
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.3 = phi i64 [ %i.hh, %bb.bf ], [ %i.hd, %bb.bd ]
  %.3.fr = freeze i64 %.3                         ; 2 uses
  store i64 %i.am, ptr %5, align 8, !tbaa !276
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hk = icmp eq i64 %.3.fr, 4
  %spec.select = select i1 %i.hk, i64 1, i64 %.3.fr
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread147, %.thread168
  %i.hl = phi ptr [ %i.he, %.thread168 ], [ %i.hj, %bb.bg ], [ %i.hi, %.thread147 ]
  %.1166 = phi i64 [ %.090, %.thread168 ], [ %.090, %bb.bg ], [ %.1.ph, %.thread147 ]
  %.2164 = phi i32 [ %.192, %.thread168 ], [ %.192, %bb.bg ], [ %.2.ph, %.thread147 ]
  %.295162 = phi i32 [ %.194, %.thread168 ], [ %.194, %bb.bg ], [ %.295.ph, %.thread147 ]
  %.298160 = phi i32 [ %.197, %.thread168 ], [ %.197, %bb.bg ], [ %.298.ph, %.thread147 ]
  %.1100158 = phi i32 [ %.099, %.thread168 ], [ %.099, %bb.bg ], [ %.1100.ph, %.thread147 ] ; 2 uses
  %.1102156 = phi i32 [ %.0101, %.thread168 ], [ %.0101, %bb.bg ], [ %.1102.ph, %.thread147 ] ; 2 uses
  %i.hm = phi i64 [ %.2105, %.thread168 ], [ %spec.select, %bb.bg ], [ 1, %.thread147 ]
  store i64 %i.hm, ptr %i.hl, align 8, !tbaa !274
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.hn, align 8, !tbaa !278
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hp = load i64, ptr @str_empty, align 8, !tbaa !234
  store i64 %i.hp, ptr %i.ho, align 8, !tbaa !275
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hr = icmp slt i32 %.1102156, 0
  %i.hs = shl i32 %.1102156, 9
  %i.ht = and i32 %i.hs, 7680
  %i.hu = select i1 %i.hr, i32 512, i32 %i.ht
  %i.hv = icmp slt i32 %.1100158, 0
  %i.hw = shl i32 %.1100158, 13
  %i.hx = and i32 %i.hw, 253952
  %i.hy = select i1 %i.hv, i32 8192, i32 %i.hx
  %i.hz = call i32 @llvm.smax.i32(i32 %.298160, i32 0)
  %i.ia = shl i32 %i.hz, 18
  %i.ib = and i32 %i.ia, 8126464
  %i.ic = call i32 @llvm.smax.i32(i32 %.295162, i32 0)
  %i.id = shl i32 %i.ic, 23
  %i.ie = and i32 %i.id, 528482304
  %i.if = or disjoint i32 %i.ib, %i.ie
  %i.ig = or disjoint i32 %i.if, %i.hy
  %i.ih = or disjoint i32 %i.ig, %i.hu
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = call i32 @llvm.smax.i32(i32 %.2164, i32 0)
  %i.ik = and i32 %i.ij, 63
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = shl nuw nsw i64 %i.il, 32
  %i.in = or disjoint i64 %i.im, %i.ii
  %i.io = or disjoint i64 %i.in, 1924145348608
  store i64 %i.io, ptr %i.hq, align 8
  %i.ip = call fastcc i64 @time_init_vtm(i64 noundef %1, ptr noundef nonnull byval(%struct.vtm) align 8 %5, i64 noundef %.1166) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bi

bb.bi:                                            ; preds = %bb.a, %bb.bh
  %.0 = phi i64 [ %1, %bb.bh ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @time_init_args(ptr nofree readnone captures(none) %0, i64 noundef returned %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #1 !guid !388 {
bb.a:
  %9 = alloca %struct.vtm, align 8                ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.c = load i64, ptr @str_empty, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.c, ptr %i.d, align 8, !tbaa !275
  %i.e = icmp eq i64 %2, 0
  %i.f = and i64 %2, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.i = inttoptr i64 %2 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !250
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 5
  br i1 %i.l, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.m = tail call i64 @rb_str_to_inum(i64 noundef %2, i32 noundef 10, i32 noundef 1) #18
  br label %obj2vint.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.n = tail call i64 @rb_to_int(i64 noundef %2) #18
  br label %obj2vint.exit

obj2vint.exit:                                    ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.m, %bb.b ], [ %i.n, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  store i64 %.0.i, ptr %9, align 8, !tbaa !276
  %i.o = icmp eq i64 %3, 4
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %obj2vint.exit
  %i.p = tail call fastcc i32 @month_arg(i64 noundef %3)
  %i.q = shl nuw nsw i32 %i.p, 9
  %i.r = zext nneg i32 %i.q to i64
  %i.s = or disjoint i64 %i.r, 1924145348608
  br label %bb.d

bb.d:                                             ; preds = %obj2vint.exit, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ 1924145349120, %obj2vint.exit ] ; 2 uses
  store i64 %i.t, ptr %i.b, align 8
  %i.u = icmp eq i64 %4, 4
  br i1 %i.u, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %4, 0
  %i.w = and i64 %4, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.e
  %i.z = inttoptr i64 %4 to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !250
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ad = tail call i64 @rb_str_to_inum(i64 noundef %4, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.e
  %.0.i.i = phi i64 [ %i.ad, %bb.f ], [ %4, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %4, %bb.e ] ; 3 uses
  %i.ae = trunc i64 %.0.i.i to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.af = tail call i64 @rb_fix2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ag = tail call i64 @rb_num2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

obj2int.exit.i:                                   ; preds = %bb.h, %bb.g
  %.0.i3.i.i = phi i64 [ %i.af, %bb.g ], [ %i.ag, %bb.h ] ; 2 uses
  %i.ah = and i64 %.0.i3.i.i, 4294967264
  %.not.i = icmp eq i64 %i.ah, 0
end_hunk_0
