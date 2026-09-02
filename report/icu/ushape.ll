Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ushape?download=true
inline.NumInlined: 38
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables:bb.a
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph296, %_ZL7getLinkDs.exit247
  %.0295 = phi i16 [ 0, %.lr.ph296 ], [ %.3, %_ZL7getLinkDs.exit247 ] ; 4 uses
  %.0149294 = phi i16 [ %.0.i, %.lr.ph296 ], [ %.3152, %_ZL7getLinkDs.exit247 ] ; 6 uses
  %.0153293 = phi i16 [ 0, %.lr.ph296 ], [ %.3156, %_ZL7getLinkDs.exit247 ] ; 5 uses
  %.0157291 = phi i16 [ 0, %.lr.ph296 ], [ %.1158, %_ZL7getLinkDs.exit247 ] ; 3 uses
  %.0159289 = phi i32 [ 0, %.lr.ph296 ], [ %.1160, %_ZL7getLinkDs.exit247 ] ; 8 uses
  %.0161288 = phi i32 [ 0, %.lr.ph296 ], [ %.2163, %_ZL7getLinkDs.exit247 ] ; 9 uses
  %.0164287 = phi i32 [ 0, %.lr.ph296 ], [ %.2166, %_ZL7getLinkDs.exit247 ] ; 7 uses
  %.0167286 = phi i32 [ 0, %.lr.ph296 ], [ %.2169, %_ZL7getLinkDs.exit247 ] ; 4 uses
  %.0173285 = phi i32 [ -2, %.lr.ph296 ], [ %.4, %_ZL7getLinkDs.exit247 ] ; 6 uses
  %.0177283 = phi i32 [ %i.q, %.lr.ph296 ], [ %.1178, %_ZL7getLinkDs.exit247 ] ; 3 uses
  %.1180282 = phi i32 [ %i.q, %.lr.ph296 ], [ %i.fq, %_ZL7getLinkDs.exit247 ] ; 8 uses
  %.not191 = icmp ult i16 %.0149294, 256
  br i1 %.not191, label %bb.n, label %_ZL7getLinkDs.exit225.thread258

bb.n:                                             ; preds = %bb.m
  %i.ar = sext i32 %.1180282 to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !14 ; 8 uses
  %i.au = add i16 %i.at, -1570
  %or.cond.i220 = icmp ult i16 %i.au, 178
  br i1 %or.cond.i220, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = zext nneg i16 %i.at to i64
  %i.aw = add nuw nsw i64 %i.av, 4294965726
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225

bb.p:                                             ; preds = %bb.n
  %i.ba = icmp eq i16 %i.at, 8205
  br i1 %i.ba, label %_ZL7getLinkDs.exit225.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = add i16 %i.at, -8301
  %or.cond5.i221 = icmp ult i16 %i.bb, 3
  br i1 %or.cond5.i221, label %_ZL7getLinkDs.exit225.thread258, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add i16 %i.at, 1200
  %or.cond8.i222 = icmp ult i16 %i.bc, 275
  br i1 %or.cond8.i222, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bd = zext i16 %i.at to i64
  %i.be = getelementptr i8, ptr @_ZL9presALink, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -64336
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  %i.bh = zext i8 %i.bg to i16
  br label %_ZL7getLinkDs.exit225

bb.t:                                             ; preds = %bb.r
  %i.bi = add i16 %i.at, 400
  %or.cond11.i223 = icmp ult i16 %i.bi, 141
  br i1 %or.cond11.i223, label %bb.u, label %_ZL7getLinkDs.exit225.thread

bb.u:                                             ; preds = %bb.t
  %i.bj = zext i16 %i.at to i64
  %i.bk = getelementptr i8, ptr @_ZL9presBLink, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -65136
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = zext i8 %i.bm to i16
  br label %_ZL7getLinkDs.exit225

_ZL7getLinkDs.exit225:                            ; preds = %bb.o, %bb.s, %bb.u
  %.0.i224 = phi i16 [ %i.az, %bb.o ], [ %i.bh, %bb.s ], [ %i.bn, %bb.u ]
  %i.bo = and i16 %.0.i224, 4
  %.not192 = icmp eq i16 %i.bo, 0
  br i1 %.not192, label %_ZL7getLinkDs.exit225.thread, label %_ZL7getLinkDs.exit225.thread258

_ZL7getLinkDs.exit225.thread258:                  ; preds = %bb.q, %_ZL7getLinkDs.exit225, %bb.m
  %i.bp = icmp slt i32 %.0173285, 0
  br i1 %i.bp, label %.lr.ph279.preheader, label %._crit_edge

.lr.ph279.preheader:                              ; preds = %_ZL7getLinkDs.exit225.thread258
  %i.bq = add nsw i32 %.1180282, -1
  br label %.lr.ph279

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %_ZL7getLinkDs.exit231.thread
  %.0171278 = phi i32 [ %.1172, %_ZL7getLinkDs.exit231.thread ], [ %i.bq, %.lr.ph279.preheader ] ; 9 uses
  %.1174277 = phi i32 [ %.2175, %_ZL7getLinkDs.exit231.thread ], [ %.0173285, %.lr.ph279.preheader ] ; 2 uses
  %i.br = icmp eq i32 %.0171278, -1
  br i1 %i.br, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %.lr.ph279
  %i.bs = sext i32 %.0171278 to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !14 ; 8 uses
  %i.bv = add i16 %i.bu, -1570
  %or.cond.i226 = icmp ult i16 %i.bv, 178
  br i1 %or.cond.i226, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bw = zext nneg i16 %i.bu to i64
  %i.bx = add nuw nsw i64 %i.bw, 4294965726
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit231

bb.x:                                             ; preds = %bb.v
  %i.cb = icmp eq i16 %i.bu, 8205
  br i1 %i.cb, label %_ZL7getLinkDs.exit231.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = add i16 %i.bu, -8301
  %or.cond5.i227 = icmp ult i16 %i.cc, 3
  br i1 %or.cond5.i227, label %_ZL7getLinkDs.exit231.thread355, label %bb.z

_ZL7getLinkDs.exit231.thread355:                  ; preds = %bb.y
  %spec.select218357 = add nsw i32 %.0171278, -1
  br label %_ZL7getLinkDs.exit231.thread

bb.z:                                             ; preds = %bb.y
  %i.cd = add i16 %i.bu, 1200
  %or.cond8.i228 = icmp ult i16 %i.cd, 275
  br i1 %or.cond8.i228, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = zext i16 %i.bu to i64
  %i.cf = getelementptr i8, ptr @_ZL9presALink, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -64336
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !19
  %i.ci = zext i8 %i.ch to i16
  br label %_ZL7getLinkDs.exit231

bb.ab:                                            ; preds = %bb.z
  %i.cj = add i16 %i.bu, 400
  %or.cond11.i229 = icmp ult i16 %i.cj, 141
  br i1 %or.cond11.i229, label %bb.ac, label %_ZL7getLinkDs.exit231.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ck = zext i16 %i.bu to i64
  %i.cl = getelementptr i8, ptr @_ZL9presBLink, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -65136
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !19
  %i.co = zext i8 %i.cn to i16
  br label %_ZL7getLinkDs.exit231

_ZL7getLinkDs.exit231:                            ; preds = %bb.w, %bb.aa, %bb.ac
  %.0.i230 = phi i16 [ %i.ca, %bb.w ], [ %i.ci, %bb.aa ], [ %i.co, %bb.ac ] ; 2 uses
  %i.cp = and i16 %.0.i230, 4
  %i.cq = icmp ne i16 %i.cp, 0                    ; 2 uses
  %i.cr = sext i1 %i.cq to i32
  %spec.select218 = add nsw i32 %.0171278, %i.cr
  %spec.select361 = select i1 %i.cq, i32 %.1174277, i32 %.0171278
  br label %_ZL7getLinkDs.exit231.thread

_ZL7getLinkDs.exit231.thread:                     ; preds = %_ZL7getLinkDs.exit231, %bb.ab, %bb.x, %_ZL7getLinkDs.exit231.thread355
  %.2175 = phi i32 [ %spec.select361, %_ZL7getLinkDs.exit231 ], [ %.0171278, %bb.ab ], [ %.1174277, %_ZL7getLinkDs.exit231.thread355 ], [ %.0171278, %bb.x ] ; 3 uses
  %.1172 = phi i32 [ %spec.select218, %_ZL7getLinkDs.exit231 ], [ %.0171278, %bb.ab ], [ %spec.select218357, %_ZL7getLinkDs.exit231.thread355 ], [ %.0171278, %bb.x ]
  %.2 = phi i16 [ %.0.i230, %_ZL7getLinkDs.exit231 ], [ 0, %bb.ab ], [ 4, %_ZL7getLinkDs.exit231.thread355 ], [ 3, %bb.x ]
  %i.cs = icmp slt i32 %.2175, 0
  br i1 %i.cs, label %.lr.ph279, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph279, %_ZL7getLinkDs.exit231.thread, %_ZL7getLinkDs.exit225.thread258
  %.1174.lcssa = phi i32 [ %.0173285, %_ZL7getLinkDs.exit225.thread258 ], [ 3000, %.lr.ph279 ], [ %.2175, %_ZL7getLinkDs.exit231.thread ] ; 6 uses
  %.1.lcssa = phi i16 [ %.0295, %_ZL7getLinkDs.exit225.thread258 ], [ 0, %.lr.ph279 ], [ %.2, %_ZL7getLinkDs.exit231.thread ] ; 8 uses
  %i.ct = and i16 %.0149294, 32
  %.not193 = icmp eq i16 %i.ct, 0
  %i.cu = and i16 %.0153293, 16
  %.not194 = icmp eq i16 %i.cu, 0
  %or.cond210 = select i1 %.not193, i1 true, i1 %.not194
  br i1 %or.cond210, label %_ZL7getLinkDs.exit238, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.cv = sext i32 %.1180282 to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !14
  %switch.tableidx = add i16 %i.cx, -1570         ; 3 uses
  %i.cy = icmp ult i16 %switch.tableidx, 6
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 43, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond97 = select i1 %i.cy, i1 %switch.lobit, i1 false
  br i1 %or.cond97, label %switch.lookup, label %_ZL7getLinkDs.exit238

switch.lookup:                                    ; preds = %bb.ad
  %i.cz = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables, i64 %i.cz
  %switch.load = load i16, ptr %switch.gep, align 2 ; 2 uses
  store i16 -1, ptr %i.cw, align 2, !tbaa !14
  %i.da = sext i32 %.0177283 to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %0, i64 %i.da
  store i16 %switch.load, ptr %i.db, align 2, !tbaa !14
  %narrow = add nuw nsw i16 %switch.load, 30
  %i.dc = and i16 %narrow, 63
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit238

_ZL7getLinkDs.exit238:                            ; preds = %bb.ad, %switch.lookup, %._crit_edge
  %.3182 = phi i32 [ %.1180282, %._crit_edge ], [ %.0177283, %switch.lookup ], [ %.1180282, %bb.ad ] ; 11 uses
  %.1168 = phi i32 [ %.0167286, %._crit_edge ], [ 1, %switch.lookup ], [ 1, %bb.ad ] ; 6 uses
  %.1154 = phi i16 [ %.0153293, %._crit_edge ], [ %.0157291, %switch.lookup ], [ %.0157291, %bb.ad ] ; 7 uses
  %.1150 = phi i16 [ %.0149294, %._crit_edge ], [ %i.df, %switch.lookup ], [ 0, %bb.ad ] ; 7 uses
  %i.dg = icmp sgt i32 %.3182, 0
  br i1 %i.dg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZL7getLinkDs.exit238
  %i.dh = zext nneg i32 %.3182 to i64
  %i.di = getelementptr [2 x i8], ptr %0, i64 %i.dh ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !14
  %i.dl = icmp eq i16 %i.dk, 32
  br i1 %i.dl, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.dm = load i16, ptr %i.di, align 2, !tbaa !14 ; 2 uses
  %i.dn = add i16 %i.dm, -1591
  %or.cond.i239 = icmp ult i16 %i.dn, -4
  br i1 %or.cond.i239, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.do = icmp eq i16 %i.dm, 1574
  %spec.select = select i1 %i.do, i32 1, i32 %.0161288
  br label %.thread

bb.ah:                                            ; preds = %_ZL7getLinkDs.exit238
  %i.dp = icmp eq i32 %.3182, 0
  br i1 %i.dp, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dq = load i16, ptr %0, align 2, !tbaa !14    ; 2 uses
  %i.dr = add i16 %i.dq, -1591
  %or.cond.i240 = icmp ult i16 %i.dr, -4
  br i1 %or.cond.i240, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ds = icmp eq i16 %i.dq, 1574
  %spec.select211 = select i1 %i.ds, i32 1, i32 %.0161288
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.aj, %bb.ag, %bb.ai, %bb.af, %bb.ah
  %.1165 = phi i32 [ %.0164287, %bb.ah ], [ 1, %bb.af ], [ %.0164287, %bb.aj ], [ %.0164287, %bb.ag ], [ 1, %bb.ai ], [ %.0164287, %bb.ae ] ; 6 uses
  %.1162 = phi i32 [ %.0161288, %bb.ah ], [ %.0161288, %bb.af ], [ %spec.select211, %bb.aj ], [ %spec.select, %bb.ag ], [ %.0161288, %bb.ai ], [ %.0161288, %bb.ae ] ; 6 uses
  %i.dt = zext i16 %.1.lcssa to i32               ; 2 uses
  %i.du = and i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr @_ZL10shapeTable, i64 %i.dv
  %i.dx = zext i16 %.1154 to i32                  ; 3 uses
  %i.dy = and i32 %i.dx, 3
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = zext i16 %.1150 to i32                  ; 4 uses
  %i.ec = and i32 %i.eb, 3                        ; 2 uses
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
  %i.eg = zext i8 %i.ef to i32                    ; 2 uses
  %i.eh = icmp eq i32 %i.ec, 1
  br i1 %i.eh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread
  %i.ei = and i32 %i.eg, 1
  %.pre = sext i32 %.3182 to i64                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [2 x i8], ptr %0, i64 %.pre
  %.pre305 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !14
  br label %.thread272

bb.al:                                            ; preds = %.thread
  %i.ej = sext i32 %.3182 to i64                  ; 6 uses
  %i.ek = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !14 ; 7 uses
  %i.em = add i16 %i.el, -1619
  %i.en = icmp ult i16 %i.em, -8
  br i1 %i.en, label %.thread272, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = and i32 %i.dx, 2
  %.not199 = icmp ne i32 %i.eo, 0
  %i.ep = trunc i16 %.1.lcssa to i1
  %or.cond7 = and i1 %i.ao, %i.ep
  %or.cond213 = select i1 %.not199, i1 %or.cond7, i1 false
  br i1 %or.cond213, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.eq = and i16 %i.el, 1630
  %switch = icmp eq i16 %i.eq, 1612
  br i1 %switch, label %.thread272, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.er = and i32 %i.dt, 32
  %.not202 = icmp eq i32 %i.er, 0
  %i.es = and i32 %i.dx, 16
  %.not203 = icmp eq i32 %i.es, 0
  %or.cond214 = or i1 %.not202, %.not203
  %spec.select219 = zext i1 %or.cond214 to i32
  br label %.thread272

bb.ap:                                            ; preds = %bb.am
  %i.et = icmp eq i16 %i.el, 1617
  %or.cond273 = and i1 %i.ap, %i.et
  br i1 %or.cond273, label %.thread337, label %.thread272

.thread337:                                       ; preds = %bb.ap
  %i.eu = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ej
  br label %bb.at

.thread272:                                       ; preds = %bb.ap, %bb.an, %bb.ao, %bb.al, %bb.ak
  %i.ev = phi i16 [ %.pre305, %bb.ak ], [ %i.el, %bb.ao ], [ %i.el, %bb.al ], [ %i.el, %bb.an ], [ %i.el, %bb.ap ] ; 4 uses
  %.pre-phi = phi i64 [ %.pre, %bb.ak ], [ %i.ej, %bb.ao ], [ %i.ej, %bb.al ], [ %i.ej, %bb.an ], [ %i.ej, %bb.ap ]
  %.0170 = phi i32 [ %i.ei, %bb.ak ], [ %spec.select219, %bb.ao ], [ %i.eg, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ap ] ; 3 uses
  %i.ew = getelementptr inbounds [2 x i8], ptr %0, i64 %.pre-phi ; 4 uses
  %i.ex = xor i16 %i.ev, 1536
  %i.ey = icmp ult i16 %i.ex, 256
  br i1 %i.ey, label %bb.aq, label %_ZL7getLinkDs.exit225.thread

bb.aq:                                            ; preds = %.thread272
  %i.ez = add i16 %i.ev, -1619
  %i.fa = icmp ult i16 %i.ez, -8
  br i1 %i.fa, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not207 = icmp eq i16 %i.ev, 1617
  %or.cond274 = or i1 %i.aq, %.not207
  br i1 %or.cond274, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i16 -2, ptr %i.ew, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225.thread

bb.at:                                            ; preds = %.thread337, %bb.ar
  %i.fb = phi ptr [ %i.eu, %.thread337 ], [ %i.ew, %bb.ar ]
  %.0170333336341 = phi i32 [ 1, %.thread337 ], [ %.0170, %bb.ar ]
  %i.fc = phi i16 [ 1617, %.thread337 ], [ %i.ev, %bb.ar ]
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = getelementptr i8, ptr @_ZL13IrrelevantPos, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -1611
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !19
  %6 = zext i8 %i.fg to i32
  %7 = add nuw nsw i32 %.0170333336341, 65136
  %8 = add nuw nsw i32 %7, %6
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %i.fb, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225.thread

bb.au:                                            ; preds = %bb.aq
  %i.fh = and i32 %i.eb, 8
  %.not205 = icmp eq i32 %i.fh, 0
  %10 = lshr i32 %i.eb, 8                         ; 3 uses
  br i1 %.not205, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %11 = add nuw nsw i32 %10, 64336
  %12 = add nuw nsw i32 %11, %.0170
  %i.fi = trunc nuw i32 %12 to i16
  store i16 %i.fi, ptr %i.ew, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225.thread

bb.aw:                                            ; preds = %bb.au
  %.not206 = icmp ne i32 %10, 0
  %i.fj = and i32 %i.eb, 4
  %i.fk = icmp eq i32 %i.fj, 0
  %or.cond216 = and i1 %.not206, %i.fk
  br i1 %or.cond216, label %bb.ax, label %_ZL7getLinkDs.exit225.thread

bb.ax:                                            ; preds = %bb.aw
  %i.fl = add nuw nsw i32 %10, 65136
  %i.fm = add nuw nsw i32 %i.fl, %.0170
  %i.fn = trunc i32 %i.fm to i16
  store i16 %i.fn, ptr %i.ew, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit225.thread

_ZL7getLinkDs.exit225.thread:                     ; preds = %bb.t, %bb.p, %.thread272, %bb.av, %bb.ax, %bb.aw, %bb.as, %bb.at, %_ZL7getLinkDs.exit225
  %.4183 = phi i32 [ %.3182, %bb.as ], [ %.3182, %bb.at ], [ %.3182, %bb.av ], [ %.3182, %bb.ax ], [ %.1180282, %_ZL7getLinkDs.exit225 ], [ %.3182, %bb.aw ], [ %.3182, %.thread272 ], [ %.1180282, %bb.p ], [ %.1180282, %bb.t ] ; 4 uses
  %.3176 = phi i32 [ %.1174.lcssa, %bb.as ], [ %.1174.lcssa, %bb.at ], [ %.1174.lcssa, %bb.av ], [ %.1174.lcssa, %bb.ax ], [ %.0173285, %_ZL7getLinkDs.exit225 ], [ %.1174.lcssa, %bb.aw ], [ %.1174.lcssa, %.thread272 ], [ %.0173285, %bb.p ], [ %.0173285, %bb.t ] ; 7 uses
  %.2169 = phi i32 [ %.1168, %bb.as ], [ %.1168, %bb.at ], [ %.1168, %bb.av ], [ %.1168, %bb.ax ], [ %.0167286, %_ZL7getLinkDs.exit225 ], [ %.1168, %bb.aw ], [ %.1168, %.thread272 ], [ %.0167286, %bb.p ], [ %.0167286, %bb.t ] ; 2 uses
  %.2166 = phi i32 [ %.1165, %bb.as ], [ %.1165, %bb.at ], [ %.1165, %bb.av ], [ %.1165, %bb.ax ], [ %.0164287, %_ZL7getLinkDs.exit225 ], [ %.1165, %bb.aw ], [ %.1165, %.thread272 ], [ %.0164287, %bb.p ], [ %.0164287, %bb.t ] ; 2 uses
  %.2163 = phi i32 [ %.1162, %bb.as ], [ %.1162, %bb.at ], [ %.1162, %bb.av ], [ %.1162, %bb.ax ], [ %.0161288, %_ZL7getLinkDs.exit225 ], [ %.1162, %bb.aw ], [ %.1162, %.thread272 ], [ %.0161288, %bb.p ], [ %.0161288, %bb.t ] ; 2 uses
  %.1160 = phi i32 [ 1, %bb.as ], [ %.0159289, %bb.at ], [ %.0159289, %bb.av ], [ %.0159289, %bb.ax ], [ %.0159289, %_ZL7getLinkDs.exit225 ], [ %.0159289, %bb.aw ], [ %.0159289, %.thread272 ], [ %.0159289, %bb.p ], [ %.0159289, %bb.t ] ; 2 uses
  %.2155 = phi i16 [ %.1154, %bb.as ], [ %.1154, %bb.at ], [ %.1154, %bb.av ], [ %.1154, %bb.ax ], [ %.0153293, %_ZL7getLinkDs.exit225 ], [ %.1154, %bb.aw ], [ %.1154, %.thread272 ], [ %.0153293, %bb.p ], [ %.0153293, %bb.t ] ; 2 uses
  %.2151 = phi i16 [ %.1150, %bb.as ], [ %.1150, %bb.at ], [ %.1150, %bb.av ], [ %.1150, %bb.ax ], [ %.0149294, %_ZL7getLinkDs.exit225 ], [ %.1150, %bb.aw ], [ %.1150, %.thread272 ], [ %.0149294, %bb.p ], [ %.0149294, %bb.t ] ; 2 uses
  %.3 = phi i16 [ %.1.lcssa, %bb.as ], [ %.1.lcssa, %bb.at ], [ %.1.lcssa, %bb.av ], [ %.1.lcssa, %bb.ax ], [ %.0295, %_ZL7getLinkDs.exit225 ], [ %.1.lcssa, %bb.aw ], [ %.1.lcssa, %.thread272 ], [ %.0295, %bb.p ], [ %.0295, %bb.t ] ; 2 uses
  %i.fo = and i16 %.2151, 4
  %i.fp = icmp eq i16 %i.fo, 0                    ; 3 uses
  %.1178 = select i1 %i.fp, i32 %.4183, i32 %.0177283
  %.1158 = select i1 %i.fp, i16 %.2155, i16 %.0157291
  %.3156 = select i1 %i.fp, i16 %.2151, i16 %.2155
  %i.fq = add nsw i32 %.4183, -1                  ; 3 uses
  %i.fr = icmp eq i32 %i.fq, %.3176
  br i1 %i.fr, label %_ZL7getLinkDs.exit247, label %bb.ay

bb.ay:                                            ; preds = %_ZL7getLinkDs.exit225.thread
  %.not208 = icmp eq i32 %.4183, 0
  br i1 %.not208, label %._crit_edge297, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = sext i32 %i.fq to i64
  %i.ft = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !14 ; 8 uses
  %i.fv = add i16 %i.fu, -1570
  %or.cond.i242 = icmp ult i16 %i.fv, 178
  br i1 %or.cond.i242, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fw = zext nneg i16 %i.fu to i64
  %i.fx = add nuw nsw i64 %i.fw, 4294965726
  %i.fy = and i64 %i.fx, 4294967295
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %i.fy
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !14
  br label %_ZL7getLinkDs.exit247

bb.bb:                                            ; preds = %bb.az
  %i.gb = icmp eq i16 %i.fu, 8205
  br i1 %i.gb, label %_ZL7getLinkDs.exit247, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gc = add i16 %i.fu, -8301
  %or.cond5.i243 = icmp ult i16 %i.gc, 3
  br i1 %or.cond5.i243, label %_ZL7getLinkDs.exit247, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = add i16 %i.fu, 1200
  %or.cond8.i244 = icmp ult i16 %i.gd, 275
  br i1 %or.cond8.i244, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ge = zext i16 %i.fu to i64
  %i.gf = getelementptr i8, ptr @_ZL9presALink, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 -64336
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !19
  %i.gi = zext i8 %i.gh to i16
  br label %_ZL7getLinkDs.exit247

bb.bf:                                            ; preds = %bb.bd
  %i.gj = add i16 %i.fu, 400
  %or.cond11.i245 = icmp ult i16 %i.gj, 141
  br i1 %or.cond11.i245, label %bb.bg, label %_ZL7getLinkDs.exit247

bb.bg:                                            ; preds = %bb.bf
  %i.gk = zext i16 %i.fu to i64
  %i.gl = getelementptr i8, ptr @_ZL9presBLink, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 -65136
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !19
  %i.go = zext i8 %i.gn to i16
  br label %_ZL7getLinkDs.exit247

_ZL7getLinkDs.exit247:                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba, %_ZL7getLinkDs.exit225.thread
  %.4 = phi i32 [ %.3176, %bb.bg ], [ -2, %_ZL7getLinkDs.exit225.thread ], [ %.3176, %bb.ba ], [ %.3176, %bb.bb ], [ %.3176, %bb.bc ], [ %.3176, %bb.be ], [ %.3176, %bb.bf ]
  %.3152 = phi i16 [ %i.go, %bb.bg ], [ %.3, %_ZL7getLinkDs.exit225.thread ], [ %i.ga, %bb.ba ], [ 3, %bb.bb ], [ 4, %bb.bc ], [ %i.gi, %bb.be ], [ 0, %bb.bf ]
  %.not = icmp eq i32 %.4183, 0
  br i1 %.not, label %._crit_edge297, label %bb.m, !llvm.loop !33

._crit_edge297:                                   ; preds = %bb.ay, %_ZL7getLinkDs.exit247
  %i.gp = icmp ne i32 %.2169, 0
  %i.gq = icmp ne i32 %.1160, 0
  %i.gr = select i1 %i.gp, i1 true, i1 %i.gq
  %i.gs = icmp ne i32 %.2166, 0
  %i.gt = icmp ne i32 %.2163, 0
  %i.gu = select i1 %i.gs, i1 true, i1 %i.gt      ; 4 uses
  br i1 %i.gr, label %bb.bh, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit

bb.bh:                                            ; preds = %._crit_edge297
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !12
  %.sroa.3253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.3253.0.copyload = load i32, ptr %.sroa.3253.0..sroa_idx, align 8, !tbaa !12
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.4254.0.copyload = load i32, ptr %.sroa.4254.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.5255.0.copyload = load i32, ptr %.sroa.5255.0..sroa_idx, align 8, !tbaa !12 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.gv = and i32 %2, 65539                       ; 6 uses
  %i.gw = icmp eq i32 %i.gv, 0                    ; 2 uses
  %i.gx = and i32 %2, 917504                      ; 5 uses
  %i.gy = icmp eq i32 %i.gx, 524288               ; 3 uses
  %i.gz = icmp slt i32 %1, -1
  br i1 %i.gz, label %.split, label %bb.bi

.split:                                           ; preds = %bb.bh
  store i32 8, ptr %3, align 4, !tbaa !11
  br i1 %i.gu, label %bb.cj, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ha = shl i32 %1, 1                           ; 2 uses
  %i.hb = add i32 %i.ha, 2
  %i.hc = sext i32 %i.hb to i64                   ; 4 uses
  %i.hd = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.hc) #11 ; 22 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %.split352, label %bb.bj

.split352:                                        ; preds = %bb.bi
  store i32 7, ptr %3, align 4, !tbaa !11
  br i1 %i.gu, label %bb.cj, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %or.cond.i248 = or i1 %i.gw, %i.gy
  br i1 %or.cond.i248, label %bb.bk, label %bb.bv

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.hd, i8 0, i64 %i.hc, i1 false)
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph184.preheader.i

.lr.ph.i:                                         ; preds = %bb.bk
  br i1 %i.gw, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %wide.trip.count221.i = zext nneg i32 %1 to i64
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.bn, %.lr.ph.split.us.preheader.i
  %indvars.iv218.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next219.i, %bb.bn ] ; 2 uses
  %.0132170.us.i = phi i32 [ 0, %.lr.ph.split.us.preheader.i ], [ %.1133.us.i, %bb.bn ] ; 2 uses
  %.0139169.us.i = phi i32 [ 0, %.lr.ph.split.us.preheader.i ], [ %.1140.us.i, %bb.bn ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv218.i
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !14 ; 3 uses
  %i.hh = icmp eq i16 %i.hg, -1
  %i.hi = icmp eq i16 %i.hg, -2
  %or.cond267.i = and i1 %i.gy, %i.hi
  %or.cond270.i = or i1 %i.hh, %or.cond267.i
  br i1 %or.cond270.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.split.us.i
  %i.hj = sext i32 %.0139169.us.i to i64
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.hj
  store i16 %i.hg, ptr %i.hk, align 2, !tbaa !14
  %i.hl = add nsw i32 %.0139169.us.i, 1
  br label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.split.us.i
  %i.hm = add nsw i32 %.0132170.us.i, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.1140.us.i = phi i32 [ %.0139169.us.i, %bb.bm ], [ %i.hl, %bb.bl ]
  %.1133.us.i = phi i32 [ %i.hm, %bb.bm ], [ %.0132170.us.i, %bb.bl ] ; 2 uses
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %exitcond222.not.i = icmp eq i64 %indvars.iv.next219.i, %wide.trip.count221.i
  br i1 %exitcond222.not.i, label %.preheader166.i, label %.lr.ph.split.us.i, !llvm.loop !34

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.gy, label %.lr.ph.split.split.us.preheader.i, label %.lr.ph.split.split.preheader.i

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %i.hn = zext i32 %i.ha to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.hd, ptr nonnull align 2 %0, i64 %i.hn, i1 false), !tbaa !14
  br label %.lr.ph184.preheader.i

.lr.ph.split.split.us.preheader.i:                ; preds = %.lr.ph.split.i
  %wide.trip.count217.i = zext nneg i32 %1 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count217.i, 1
  %i.ho = icmp eq i32 %1, 1
  br i1 %i.ho, label %.lr.ph.split.split.us.i.epil.preheader, label %.lr.ph.split.split.us.preheader.i.new

.lr.ph.split.split.us.preheader.i.new:            ; preds = %.lr.ph.split.split.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count217.i, 2147483646
  br label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %bb.bs, %.lr.ph.split.split.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.bs ] ; 3 uses
  %.0132170.us173.i = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %.1133.us177.i.1, %bb.bs ] ; 2 uses
  %.0139169.us174.i = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %.1140.us176.i.1, %bb.bs ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %niter.next.1, %bb.bs ]
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !14 ; 2 uses
  %i.hr = icmp eq i16 %i.hq, -2
  br i1 %i.hr, label %bb.bp, label %bb.bo
end_hunk_0
