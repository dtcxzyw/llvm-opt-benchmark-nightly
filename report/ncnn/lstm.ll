inline.NumInlined: 13
inline.NumDeleted: 5
begin_hunk_0_@_ZN4ncnnL9lstm_int8ERKNS_3MatERS0_iS2_PKfS2_S2_S5_S2_S3_S3_RKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not149 = icmp sgt i32 %i.k, %i.j
  br i1 %.not149, label %._crit_edge153, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = sext i32 %i.n to i64
  %i.q = load i64, ptr %i.o, align 8, !tbaa !43
  %i.r = mul i64 %i.q, %i.p                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.t = shl i64 %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.t
  %i.v = mul i64 %i.r, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load ptr, ptr %4, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !58
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !43
  %factor.op.mul = mul i64 %i.ac, %i.aa
  %i.ad = load ptr, ptr %5, align 8, !tbaa !18    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.aj = mul i64 %i.ai, %i.ag                    ; 4 uses
  %i.ak = load i32, ptr %2, align 4, !tbaa !45    ; 3 uses
  %i.al = shl nsw i32 %i.ak, 1
  %i.am = mul nsw i32 %i.ak, 3
  %i.an = load ptr, ptr %6, align 8, !tbaa !18    ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = mul i64 %i.as, %i.aq                    ; 4 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !220   ; 4 uses
  %i.av = load ptr, ptr %8, align 8, !tbaa !220   ; 4 uses
  %i.aw = load i32, ptr %9, align 4, !tbaa !45    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = load i32, ptr %11, align 4, !tbaa !45   ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 0
  %i.ba = sext i32 %i.k to i64
  %i.bb = sext i32 %i.ak to i64
  %i.bc = sext i32 %i.al to i64
  %i.bd = sext i32 %i.am to i64
  %i.be = add nsw i32 %i.j, 1
  %wide.trip.count = zext i32 %i.aw to i64        ; 3 uses
  %wide.trip.count165 = zext i32 %i.ay to i64     ; 3 uses
  %min.iters.check212 = icmp ult i32 %i.aw, 8
  %n.vec214 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n241 = icmp eq i64 %n.vec214, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.ay, 8
  %n.vec = and i64 %wide.trip.count165, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count165
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph152, %._crit_edge
  %indvars.iv167 = phi i64 [ %i.ba, %.lr.ph152 ], [ %indvars.iv.next168, %._crit_edge ] ; 13 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv167
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass
  %i.bg = mul i64 %i.aj, %indvars.iv167
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bg ; 2 uses
  %i.bi = add nsw i64 %indvars.iv167, %i.bb       ; 4 uses
  %i.bj = mul i64 %i.aj, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bj ; 2 uses
  %i.bl = add nsw i64 %indvars.iv167, %i.bc       ; 4 uses
  %i.bm = mul i64 %i.aj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bm ; 2 uses
  %i.bo = add nsw i64 %indvars.iv167, %i.bd       ; 4 uses
  %i.bp = mul i64 %i.aj, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bp ; 2 uses
  %i.br = mul i64 %i.at, %indvars.iv167
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.br ; 2 uses
  %i.bt = mul i64 %i.at, %i.bi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bt ; 2 uses
  %i.bv = mul i64 %i.at, %i.bl
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bv ; 2 uses
  %i.bx = mul i64 %i.at, %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv167
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !51
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bi
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !51
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bl
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !51
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bo
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !51
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv167
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !51
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bi
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !51
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bl
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !51
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bo
  %i.co = load float, ptr %i.cn, align 4, !tbaa !51
  br i1 %i.ax, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.cp = load ptr, ptr %10, align 8, !tbaa !235  ; 2 uses
  br i1 %min.iters.check212, label %scalar.ph211.preheader, label %vector.body215

vector.body215:                                   ; preds = %.lr.ph, %vector.body215
  %index216 = phi i64 [ %index.next235, %vector.body215 ], [ 0, %.lr.ph ] ; 6 uses
  %vec.phi217 = phi <4 x i32> [ %i.da, %vector.body215 ], [ zeroinitializer, %.lr.ph ]
  %vec.phi218 = phi <4 x i32> [ %i.db, %vector.body215 ], [ zeroinitializer, %.lr.ph ]
  %vec.phi219 = phi <4 x i32> [ %i.di, %vector.body215 ], [ zeroinitializer, %.lr.ph ]
  %vec.phi220 = phi <4 x i32> [ %i.dj, %vector.body215 ], [ zeroinitializer, %.lr.ph ]
  %vec.phi221 = phi <4 x i32> [ %i.dq, %vector.body215 ], [ zeroinitializer, %.lr.ph ]
  %vec.phi222 = phi <4 x i32> [ %i.dr, %vector.body215 ], [ zeroinitializer, %.lr.ph ]
  %vec.phi223 = phi <4 x i32> [ %i.dy, %vector.body215 ], [ zeroinitializer, %.lr.ph ]
  %vec.phi224 = phi <4 x i32> [ %i.dz, %vector.body215 ], [ zeroinitializer, %.lr.ph ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index216 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %wide.load225 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !230
  %wide.load226 = load <4 x i8>, ptr %i.cr, align 1, !tbaa !230
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index216 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %wide.load227 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !230
  %wide.load228 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !230
  %i.cu = sext <4 x i8> %wide.load227 to <4 x i32>
  %i.cv = sext <4 x i8> %wide.load228 to <4 x i32>
  %i.cw = sext <4 x i8> %wide.load225 to <4 x i32> ; 4 uses
  %i.cx = sext <4 x i8> %wide.load226 to <4 x i32> ; 4 uses
  %i.cy = mul nsw <4 x i32> %i.cu, %i.cw
  %i.cz = mul nsw <4 x i32> %i.cv, %i.cx
  %i.da = add <4 x i32> %i.cy, %vec.phi217        ; 2 uses
  %i.db = add <4 x i32> %i.cz, %vec.phi218        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index216 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %wide.load229 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !230
  %wide.load230 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !230
  %i.de = sext <4 x i8> %wide.load229 to <4 x i32>
  %i.df = sext <4 x i8> %wide.load230 to <4 x i32>
  %i.dg = mul nsw <4 x i32> %i.de, %i.cw
  %i.dh = mul nsw <4 x i32> %i.df, %i.cx
  %i.di = add <4 x i32> %i.dg, %vec.phi219        ; 2 uses
  %i.dj = add <4 x i32> %i.dh, %vec.phi220        ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index216 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %wide.load231 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !230
  %wide.load232 = load <4 x i8>, ptr %i.dl, align 1, !tbaa !230
  %i.dm = sext <4 x i8> %wide.load231 to <4 x i32>
  %i.dn = sext <4 x i8> %wide.load232 to <4 x i32>
  %i.do = mul nsw <4 x i32> %i.dm, %i.cw
  %i.dp = mul nsw <4 x i32> %i.dn, %i.cx
  %i.dq = add <4 x i32> %i.do, %vec.phi221        ; 2 uses
  %i.dr = add <4 x i32> %i.dp, %vec.phi222        ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index216 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %wide.load233 = load <4 x i8>, ptr %i.ds, align 1, !tbaa !230
  %wide.load234 = load <4 x i8>, ptr %i.dt, align 1, !tbaa !230
  %i.du = sext <4 x i8> %wide.load233 to <4 x i32>
  %i.dv = sext <4 x i8> %wide.load234 to <4 x i32>
  %i.dw = mul nsw <4 x i32> %i.du, %i.cw
  %i.dx = mul nsw <4 x i32> %i.dv, %i.cx
  %i.dy = add <4 x i32> %i.dw, %vec.phi223        ; 2 uses
  %i.dz = add <4 x i32> %i.dx, %vec.phi224        ; 2 uses
  %index.next235 = add nuw i64 %index216, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next235, %n.vec214
  br i1 %i.ea, label %middle.block236, label %vector.body215, !llvm.loop !239

middle.block236:                                  ; preds = %vector.body215
  %bin.rdx237 = add <4 x i32> %i.db, %i.da
  %i.eb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx237) ; 2 uses
  %bin.rdx238 = add <4 x i32> %i.dj, %i.di
  %i.ec = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx238) ; 2 uses
  %bin.rdx239 = add <4 x i32> %i.dr, %i.dq
  %i.ed = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx239) ; 2 uses
  %bin.rdx240 = add <4 x i32> %i.dz, %i.dy
  %i.ee = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx240) ; 2 uses
  br i1 %cmp.n241, label %.preheader.loopexit, label %scalar.ph211.preheader

scalar.ph211.preheader:                           ; preds = %.lr.ph, %middle.block236
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec214, %middle.block236 ]
  %.0121135.ph = phi i32 [ 0, %.lr.ph ], [ %i.eb, %middle.block236 ]
  %.0122134.ph = phi i32 [ 0, %.lr.ph ], [ %i.ec, %middle.block236 ]
  %.0123133.ph = phi i32 [ 0, %.lr.ph ], [ %i.ed, %middle.block236 ]
  %.0124132.ph = phi i32 [ 0, %.lr.ph ], [ %i.ee, %middle.block236 ]
  br label %scalar.ph211

.preheader.loopexit:                              ; preds = %scalar.ph211, %middle.block236
  %.lcssa184 = phi i32 [ %i.eb, %middle.block236 ], [ %31, %scalar.ph211 ]
  %.lcssa183 = phi i32 [ %i.ec, %middle.block236 ], [ %32, %scalar.ph211 ]
  %.lcssa182 = phi i32 [ %i.ed, %middle.block236 ], [ %33, %scalar.ph211 ]
  %.lcssa = phi i32 [ %i.ee, %middle.block236 ], [ %i.ge, %scalar.ph211 ]
  %15 = insertelement <4 x i32> poison, i32 %.lcssa184, i64 0
  %16 = insertelement <4 x i32> %15, i32 %.lcssa183, i64 1
  %17 = insertelement <4 x i32> %16, i32 %.lcssa182, i64 2
  %18 = insertelement <4 x i32> %17, i32 %.lcssa, i64 3
  %19 = sitofp <4 x i32> %18 to <4 x float>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %20 = phi <4 x float> [ zeroinitializer, %bb.c ], [ %19, %.preheader.loopexit ] ; 2 uses
  br i1 %i.az, label %.lr.ph144, label %._crit_edge

.lr.ph144:                                        ; preds = %.preheader
  %i.ef = load ptr, ptr %12, align 8, !tbaa !235  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph144, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph144 ] ; 6 uses
  %vec.phi = phi <4 x i32> [ %i.fo, %vector.body ], [ zeroinitializer, %.lr.ph144 ]
  %vec.phi189 = phi <4 x i32> [ %i.fp, %vector.body ], [ zeroinitializer, %.lr.ph144 ]
  %vec.phi190 = phi <4 x i32> [ %i.fg, %vector.body ], [ zeroinitializer, %.lr.ph144 ]
  %vec.phi191 = phi <4 x i32> [ %i.fh, %vector.body ], [ zeroinitializer, %.lr.ph144 ]
  %vec.phi192 = phi <4 x i32> [ %i.ey, %vector.body ], [ zeroinitializer, %.lr.ph144 ]
  %vec.phi193 = phi <4 x i32> [ %i.ez, %vector.body ], [ zeroinitializer, %.lr.ph144 ]
  %vec.phi194 = phi <4 x i32> [ %i.eq, %vector.body ], [ zeroinitializer, %.lr.ph144 ]
  %vec.phi195 = phi <4 x i32> [ %i.er, %vector.body ], [ zeroinitializer, %.lr.ph144 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %wide.load = load <4 x i8>, ptr %i.eg, align 1, !tbaa !230
  %wide.load196 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !230
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %wide.load197 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !230
  %wide.load198 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !230
  %i.ek = sext <4 x i8> %wide.load197 to <4 x i32>
  %i.el = sext <4 x i8> %wide.load198 to <4 x i32>
  %i.em = sext <4 x i8> %wide.load to <4 x i32>   ; 4 uses
  %i.en = sext <4 x i8> %wide.load196 to <4 x i32> ; 4 uses
  %i.eo = mul nsw <4 x i32> %i.ek, %i.em
  %i.ep = mul nsw <4 x i32> %i.el, %i.en
  %i.eq = add <4 x i32> %i.eo, %vec.phi194        ; 2 uses
  %i.er = add <4 x i32> %i.ep, %vec.phi195        ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %wide.load199 = load <4 x i8>, ptr %i.es, align 1, !tbaa !230
  %wide.load200 = load <4 x i8>, ptr %i.et, align 1, !tbaa !230
  %i.eu = sext <4 x i8> %wide.load199 to <4 x i32>
  %i.ev = sext <4 x i8> %wide.load200 to <4 x i32>
  %i.ew = mul nsw <4 x i32> %i.eu, %i.em
  %i.ex = mul nsw <4 x i32> %i.ev, %i.en
  %i.ey = add <4 x i32> %i.ew, %vec.phi192        ; 2 uses
  %i.ez = add <4 x i32> %i.ex, %vec.phi193        ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %wide.load201 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !230
  %wide.load202 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !230
  %i.fc = sext <4 x i8> %wide.load201 to <4 x i32>
  %i.fd = sext <4 x i8> %wide.load202 to <4 x i32>
  %i.fe = mul nsw <4 x i32> %i.fc, %i.em
  %i.ff = mul nsw <4 x i32> %i.fd, %i.en
  %i.fg = add <4 x i32> %i.fe, %vec.phi190        ; 2 uses
  %i.fh = add <4 x i32> %i.ff, %vec.phi191        ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.by, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %wide.load203 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !230
  %wide.load204 = load <4 x i8>, ptr %i.fj, align 1, !tbaa !230
  %i.fk = sext <4 x i8> %wide.load203 to <4 x i32>
  %i.fl = sext <4 x i8> %wide.load204 to <4 x i32>
  %i.fm = mul nsw <4 x i32> %i.fk, %i.em
  %i.fn = mul nsw <4 x i32> %i.fl, %i.en
  %i.fo = add <4 x i32> %i.fm, %vec.phi           ; 2 uses
  %i.fp = add <4 x i32> %i.fn, %vec.phi189        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fp, %i.fo
  %i.fr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx205 = add <4 x i32> %i.fh, %i.fg
  %i.fs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx205) ; 2 uses
  %bin.rdx206 = add <4 x i32> %i.ez, %i.ey
  %i.ft = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx206) ; 2 uses
  %bin.rdx207 = add <4 x i32> %i.er, %i.eq
  %i.fu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx207) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph144, %middle.block
  %indvars.iv162.ph = phi i64 [ 0, %.lr.ph144 ], [ %n.vec, %middle.block ]
  %.0126142.ph = phi i32 [ 0, %.lr.ph144 ], [ %i.fr, %middle.block ]
  %.0127141.ph = phi i32 [ 0, %.lr.ph144 ], [ %i.fs, %middle.block ]
  %.0128140.ph = phi i32 [ 0, %.lr.ph144 ], [ %i.ft, %middle.block ]
  %.0129139.ph = phi i32 [ 0, %.lr.ph144 ], [ %i.fu, %middle.block ]
  br label %scalar.ph

scalar.ph211:                                     ; preds = %scalar.ph211.preheader, %scalar.ph211
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph211 ], [ %indvars.iv.ph, %scalar.ph211.preheader ] ; 6 uses
  %.0121135 = phi i32 [ %31, %scalar.ph211 ], [ %.0121135.ph, %scalar.ph211.preheader ]
  %.0122134 = phi i32 [ %32, %scalar.ph211 ], [ %.0122134.ph, %scalar.ph211.preheader ]
  %.0123133 = phi i32 [ %33, %scalar.ph211 ], [ %.0123133.ph, %scalar.ph211.preheader ]
  %.0124132 = phi i32 [ %i.ge, %scalar.ph211 ], [ %.0124132.ph, %scalar.ph211.preheader ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !230
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !230
  %i.fz = sext i8 %i.fw to i32                    ; 4 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv
  %22 = load i8, ptr %21, align 1, !tbaa !230
  %23 = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %24 = load i8, ptr %23, align 1, !tbaa !230
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !230
  %i.gc = sext i8 %i.fy to i32
  %25 = sext i8 %22 to i32
  %26 = sext i8 %24 to i32
  %27 = sext i8 %i.gb to i32
  %28 = mul nsw i32 %i.gc, %i.fz
  %i.gd = mul nsw i32 %25, %i.fz
  %29 = mul nsw i32 %26, %i.fz
  %30 = mul nsw i32 %27, %i.fz
  %31 = add nsw i32 %28, %.0121135                ; 2 uses
  %32 = add nsw i32 %i.gd, %.0122134              ; 2 uses
  %33 = add nsw i32 %29, %.0123133                ; 2 uses
  %i.ge = add nsw i32 %30, %.0124132              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %scalar.ph211, !llvm.loop !241

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %.lcssa188 = phi i32 [ %i.fu, %middle.block ], [ %i.id, %scalar.ph ]
  %.lcssa187 = phi i32 [ %i.ft, %middle.block ], [ %i.ii, %scalar.ph ]
  %.lcssa186 = phi i32 [ %i.fs, %middle.block ], [ %i.in, %scalar.ph ]
  %.lcssa185 = phi i32 [ %i.fr, %middle.block ], [ %i.is, %scalar.ph ]
  %i.gf = sitofp fast i32 %.lcssa188 to float
  %i.gg = sitofp fast i32 %.lcssa187 to float
  %i.gh = sitofp fast i32 %.lcssa186 to float
  %i.gi = sitofp fast i32 %.lcssa185 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0129.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gf, %._crit_edge.loopexit ]
  %.0128.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gg, %._crit_edge.loopexit ]
  %.0127.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gh, %._crit_edge.loopexit ]
  %.0126.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gi, %._crit_edge.loopexit ]
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv167
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !51
  %i.gl = load float, ptr %13, align 4, !tbaa !51 ; 2 uses
  %i.gm = load float, ptr %14, align 4, !tbaa !51 ; 4 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv167
  %i.go = load float, ptr %i.gn, align 4, !tbaa !51
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv167
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !51
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv167
  %34 = extractelement <4 x float> %20, i64 3
  %i.gs = fmul fast float %i.gl, %34
  %i.gt = fdiv fast float %i.gs, %i.cg
  %i.gu = load float, ptr %i.gr, align 4, !tbaa !51
  %i.gv = fmul fast float %i.gm, %.0127.lcssa
  %i.gw = fmul fast float %i.gm, %.0128.lcssa
  %i.gx = fmul fast float %i.gm, %.0129.lcssa
  %i.gy = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.gw, i64 1
  %i.ha = insertelement <4 x float> %i.gz, float %i.gv, i64 2
  %i.hb = insertelement <4 x float> %i.ha, float %i.gu, i64 3
  %i.hc = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ci, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.ck, i64 1
  %i.he = insertelement <4 x float> %i.hd, float %i.cm, i64 2
  %i.hf = fdiv reassoc nsz arcp contract afn <4 x float> %i.hb, %i.he
  %i.hg = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.hh = insertelement <4 x float> %i.hg, float %i.gm, i64 1
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hj = insertelement <4 x float> %20, float %.0126.lcssa, i64 3
  %i.hk = fmul fast <4 x float> %i.hi, %i.hj
  %i.hl = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.hm = insertelement <4 x float> %i.hl, float %i.cc, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.ce, i64 2
  %i.ho = insertelement <4 x float> %i.hn, float %i.co, i64 3
  %i.hp = fdiv fast <4 x float> %i.hk, %i.ho
  %i.hq = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %i.go, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %i.gq, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.gt, i64 3
  %i.hu = fadd fast <4 x float> %i.hp, %i.ht
  %i.hv = fadd fast <4 x float> %i.hu, %i.hf
  store <4 x float> %i.hv, ptr %i.bf, align 4, !tbaa !51
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next168 to i32
  %exitcond170.not = icmp eq i32 %i.be, %lftr.wideiv
  br i1 %exitcond170.not, label %._crit_edge153, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph ], [ %indvars.iv162.ph, %scalar.ph.preheader ] ; 6 uses
  %.0126142 = phi i32 [ %i.is, %scalar.ph ], [ %.0126142.ph, %scalar.ph.preheader ]
  %.0127141 = phi i32 [ %i.in, %scalar.ph ], [ %.0127141.ph, %scalar.ph.preheader ]
  %.0128140 = phi i32 [ %i.ii, %scalar.ph ], [ %.0128140.ph, %scalar.ph.preheader ]
  %.0129139 = phi i32 [ %i.id, %scalar.ph ], [ %.0129139.ph, %scalar.ph.preheader ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv162
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !230
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv162
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !230
  %i.ia = sext i8 %i.hz to i32
  %i.ib = sext i8 %i.hx to i32                    ; 4 uses
  %i.ic = mul nsw i32 %i.ia, %i.ib
  %i.id = add nsw i32 %i.ic, %.0129139            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv162
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !230
  %i.ig = sext i8 %i.if to i32
  %i.ih = mul nsw i32 %i.ig, %i.ib
  %i.ii = add nsw i32 %i.ih, %.0128140            ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv162
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !230
  %i.il = sext i8 %i.ik to i32
  %i.im = mul nsw i32 %i.il, %i.ib
  %i.in = add nsw i32 %i.im, %.0127141            ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv162
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !230
  %i.iq = sext i8 %i.ip to i32
  %i.ir = mul nsw i32 %i.iq, %i.ib
  %i.is = add nsw i32 %i.ir, %.0126142            ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !242

._crit_edge153:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge153, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !243 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatERS0_iS2_PKfS2_S2_S5_S2_S3_S3_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not42 = icmp sgt i32 %i.k, %i.j
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !18
  %i.s = load i32, ptr %5, align 4, !tbaa !45
  %i.t = load i32, ptr %2, align 4, !tbaa !45
  %i.u = icmp eq i32 %i.s, %i.t
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = fneg fast float %i.y
  %i.ad = call fast float @llvm.exp.f32(float %i.ac)
  %i.ae = fadd fast float %i.ad, 1.000000e+00
  %i.af = load <2 x float>, ptr %i.z, align 4, !tbaa !51
  %i.ag = fneg fast <2 x float> %i.af             ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  %i.ai = call fast float @llvm.exp.f32(float %i.ah)
  %i.aj = fadd fast float %i.ai, 1.000000e+00
  %i.ak = extractelement <2 x float> %i.ag, i64 1
  %i.al = call fast float @llvm.exp.f32(float %i.ak)
  %i.am = fadd fast float %i.al, 1.000000e+00
  %i.an = call fast float @llvm.tanh.f32(float %i.ab)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !51
  %i.aq = fdiv fast float %i.ap, %i.aj
  %i.ar = fdiv fast float %i.an, %i.ae
  %i.as = fadd fast float %i.aq, %i.ar            ; 2 uses
  %i.at = call fast float @llvm.tanh.f32(float %i.as)
  %i.au = fdiv fast float %i.at, %i.am            ; 2 uses
  store float %i.as, ptr %i.ao, align 4, !tbaa !51
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = load ptr, ptr %6, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  store float %i.au, ptr %i.aw, align 4, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %7, %bb.d ], [ %8, %bb.c ]
  %i.ax = load ptr, ptr %.sink, align 8, !tbaa !42
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv
  store float %i.au, ptr %i.ay, align 4, !tbaa !51
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatERS0_iS2_PKfS2_S2_S5_S2_S3_S3_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
