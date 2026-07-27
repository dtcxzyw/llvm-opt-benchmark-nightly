inline.NumInlined: 130
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@dpb_combine_field_yuv:bb.a
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 6472
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !100
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !229
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv93
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !226
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 6400
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !82
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cv, ptr align 2 %i.dc, i64 %i.dg, i1 false)
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 6472
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !100
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !229
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.cc
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !226
  %i.do = load ptr, ptr %i.x, align 8, !tbaa !65  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 6472
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !100
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !229
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv93
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !226
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 6400
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !82
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dn, ptr align 2 %i.du, i64 %i.dy, i1 false)
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 6404
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !83
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next94, %i.ec
  br i1 %i.ed, label %bb.c, label %._crit_edge, !llvm.loop !247

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.lcssa = phi ptr [ %i.t, %.preheader ], [ %i.dz, %bb.c ] ; 10 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !132
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !65 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !132
  %i.ek = tail call noundef i32 @llvm.smin.i32(i32 %i.ef, i32 %i.ej) ; 5 uses
  %i.el = load ptr, ptr %i.n, align 8, !tbaa !62  ; 16 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i32 %i.ek, ptr %i.em, align 8, !tbaa !233
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.ek, ptr %i.en, align 4, !tbaa !132
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ek, ptr %i.eo, align 4, !tbaa !143
  %i.ep = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i32 %i.ek, ptr %i.ep, align 8, !tbaa !233
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i32 %i.ek, ptr %i.eq, align 8, !tbaa !233
  %i.er = load i32, ptr %i.ee, align 4, !tbaa !132 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i32 %i.er, ptr %i.es, align 8, !tbaa !201
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.er, ptr %i.et, align 8, !tbaa !201
  %i.eu = load i32, ptr %i.ei, align 4, !tbaa !132 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !203
  %i.ew = getelementptr inbounds nuw i8, ptr %.lcssa, i64 12
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !203
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6380
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !101
  %.not = icmp eq i32 %i.ey, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 6380
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !101
  %i.fb = icmp ne i32 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.fd = phi i32 [ 0, %._crit_edge ], [ %i.fc, %bb.d ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.el, i64 6380
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !101
  %i.ff = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6376
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !102
  %.not84 = icmp eq i32 %i.fg, 0
  br i1 %.not84, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.fh = getelementptr inbounds nuw i8, ptr %i.el, i64 6376
  store i32 0, ptr %i.fh, align 8, !tbaa !102
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eh, i64 6376
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !102
  %i.fk = icmp ne i32 %i.fj, 0                    ; 2 uses
  %i.fl = zext i1 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.el, i64 6376
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !102
  br i1 %i.fk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !155
  %i.fp = getelementptr inbounds nuw i8, ptr %i.el, i64 6372
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.el, i64 6536
  store ptr %.lcssa, ptr %i.fq, align 8, !tbaa !156
  %i.fr = getelementptr inbounds nuw i8, ptr %i.el, i64 6544
  store ptr %i.eh, ptr %i.fr, align 8, !tbaa !157
  %i.fs = getelementptr inbounds nuw i8, ptr %i.el, i64 6428
  store i32 0, ptr %i.fs, align 4, !tbaa !88
  %i.ft = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6560
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !235
  %i.fv = getelementptr inbounds nuw i8, ptr %i.el, i64 6560
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !235
  %i.fw = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6568
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !248 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.el, i64 6568
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !248
  %.not86 = icmp eq i32 %i.fx, 0
  br i1 %.not86, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fz = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6572
  %i.ga = getelementptr inbounds nuw i8, ptr %i.el, i64 6572
  %i.gb = load <4 x i32>, ptr %i.fz, align 4, !tbaa !4
  store <4 x i32> %i.gb, ptr %i.ga, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eh, i64 6552
  store ptr %i.el, ptr %i.gc, align 8, !tbaa !234
  %i.gd = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6552
  store ptr %i.el, ptr %i.gd, align 8, !tbaa !234
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dpb_combine_field(ptr nofree noundef captures(none) initializes((40, 48)) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dpb_combine_field_yuv(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  tail call void @UnifiedOneForthPix(ptr noundef %i.b) #16
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.preheader167

.lr.ph:                                           ; preds = %bb.a
  %i.e = add nuw nsw i32 %i.c, 1
  %i.f = lshr i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 288 ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 288 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 25
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.o = shl nuw nsw i64 %wide.trip.count, 3
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.p, i64 288  ; 2 uses
  %i.q = shl nuw nsw i64 %wide.trip.count, 4
  %i.r = add nuw nsw i64 %i.q, 280                ; 2 uses
  %scevgep191 = getelementptr i8, ptr %i.h, i64 %i.r
  %scevgep192 = getelementptr i8, ptr %i.k, i64 %i.r
  %bound0 = icmp ult ptr %i.n, %scevgep191
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0193 = icmp ult ptr %i.n, %scevgep192
  %bound1194 = icmp ult ptr %i.l, %scevgep
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx = or i1 %found.conflict, %found.conflict195
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.s
  %wide.vec = load <4 x i64>, ptr %i.t, align 8, !tbaa !215, !alias.scope !249
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.u = sdiv <2 x i64> %strided.vec, splat (i64 2)
  %i.v = shl nsw <2 x i64> %i.u, splat (i64 1)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.s
  %wide.vec196 = load <4 x i64>, ptr %i.w, align 8, !tbaa !215, !alias.scope !252
  %strided.vec197 = shufflevector <4 x i64> %wide.vec196, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.x = sdiv <2 x i64> %strided.vec197, splat (i64 2)
  %i.y = shl nsw <2 x i64> %i.x, splat (i64 1)
  %i.z = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.v, <2 x i64> %i.y)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index
  store <2 x i64> %i.z, ptr %i.aa, align 8, !tbaa !215, !alias.scope !254, !noalias !256
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %scalar.ph.preheader, label %vector.body, !llvm.loop !257

.preheader167:                                    ; preds = %scalar.ph, %bb.a
  %i.ac = load i32, ptr @listXsize, align 16, !tbaa !4 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph170, label %.preheader167..preheader_crit_edge

.preheader167..preheader_crit_edge:               ; preds = %.preheader167
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %.preheader

.lr.ph170:                                        ; preds = %.preheader167
  %i.ae = add nuw nsw i32 %i.ac, 1
  %i.af = lshr i32 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 4 uses
  %wide.trip.count181 = zext nneg i32 %i.af to i64 ; 5 uses
  %min.iters.check210 = icmp ult i32 %i.ac, 25
  br i1 %min.iters.check210, label %scalar.ph209.preheader, label %vector.memcheck198

scalar.ph209.preheader:                           ; preds = %vector.body214, %vector.memcheck198, %.lr.ph170
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck198 ], [ 0, %.lr.ph170 ], [ %n.vec213, %vector.body214 ]
  br label %scalar.ph209

vector.memcheck198:                               ; preds = %.lr.ph170
  %i.ao = shl nuw nsw i64 %wide.trip.count181, 3
  %i.ap = getelementptr i8, ptr %i.am, i64 %i.ao
  %scevgep199 = getelementptr i8, ptr %i.ap, i64 24 ; 2 uses
  %i.aq = shl nuw nsw i64 %wide.trip.count181, 4
  %i.ar = add nuw nsw i64 %i.aq, 16               ; 2 uses
  %scevgep200 = getelementptr i8, ptr %i.ah, i64 %i.ar
  %scevgep201 = getelementptr i8, ptr %i.ak, i64 %i.ar
  %bound0202 = icmp ult ptr %i.an, %scevgep200
  %bound1203 = icmp ult ptr %i.ai, %scevgep199
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0205 = icmp ult ptr %i.an, %scevgep201
  %bound1206 = icmp ult ptr %i.al, %scevgep199
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %found.conflict204, %found.conflict207
  br i1 %conflict.rdx208, label %scalar.ph209.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck198
  %.neg223 = or i64 %wide.trip.count181, -2
  %n.vec213 = add nsw i64 %.neg223, %wide.trip.count181 ; 2 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 3 uses
  %i.as = shl nuw nsw i64 %index215, 1            ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.as
  %wide.vec216 = load <4 x i64>, ptr %i.at, align 8, !tbaa !215, !alias.scope !258
  %strided.vec217 = shufflevector <4 x i64> %wide.vec216, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.au = sdiv <2 x i64> %strided.vec217, splat (i64 2)
  %i.av = shl nsw <2 x i64> %i.au, splat (i64 1)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.as
  %wide.vec218 = load <4 x i64>, ptr %i.aw, align 8, !tbaa !215, !alias.scope !261
  %strided.vec219 = shufflevector <4 x i64> %wide.vec218, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ax = sdiv <2 x i64> %strided.vec219, splat (i64 2)
  %i.ay = shl nsw <2 x i64> %i.ax, splat (i64 1)
  %i.az = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.av, <2 x i64> %i.ay)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index215
  store <2 x i64> %i.az, ptr %i.ba, align 8, !tbaa !215, !alias.scope !263, !noalias !265
  %index.next220 = add nuw i64 %index215, 2       ; 2 uses
  %i.bb = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.bb, label %scalar.ph209.preheader, label %vector.body214, !llvm.loop !266

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bc = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !215
  %i.bf = sdiv i64 %i.be, 2
  %i.bg = shl nsw i64 %i.bf, 1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !215
  %i.bj = sdiv i64 %i.bi, 2
  %i.bk = shl nsw i64 %i.bj, 1
  %i.bl = tail call range(i64 -9223372036854775808, 9223372036854775807) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 9223372036854775807) %i.bg, i64 range(i64 -9223372036854775808, 9223372036854775807) %i.bk)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !215
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader167, label %scalar.ph, !llvm.loop !267

.preheader:                                       ; preds = %scalar.ph209, %.preheader167..preheader_crit_edge
  %i.bn = phi ptr [ %.pre, %.preheader167..preheader_crit_edge ], [ %i.ah, %scalar.ph209 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 6396
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !79
  %i.br = icmp sgt i32 %i.bq, 3
  br i1 %i.br, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.b

scalar.ph209:                                     ; preds = %scalar.ph209.preheader, %scalar.ph209
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %scalar.ph209 ], [ %indvars.iv177.ph, %scalar.ph209.preheader ] ; 3 uses
  %i.bt = shl nuw nsw i64 %indvars.iv177, 1       ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !215
  %i.bw = sdiv i64 %i.bv, 2
  %i.bx = shl nsw i64 %i.bw, 1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bt
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !215
  %i.ca = sdiv i64 %i.bz, 2
  %i.cb = shl nsw i64 %i.ca, 1
  %i.cc = tail call range(i64 -9223372036854775808, 9223372036854775807) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 9223372036854775807) %i.bx, i64 range(i64 -9223372036854775808, 9223372036854775807) %i.cb)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv177
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !215
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count181
  br i1 %exitcond182.not, label %.preheader, label %scalar.ph209, !llvm.loop !268

bb.b:                                             ; preds = %.lr.ph174, %._crit_edge
  %i.ce = phi ptr [ %i.bn, %.lr.ph174 ], [ %i.ml, %._crit_edge ] ; 2 uses
  %indvars.iv186 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next187, %._crit_edge ] ; 17 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6392
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !78
  %i.ch = icmp sgt i32 %i.cg, 3
  br i1 %i.ch, label %.lr.ph172, label %._crit_edge

.lr.ph172:                                        ; preds = %bb.b
  %indvars.iv186.tr = trunc i64 %indvars.iv186 to i32
  %i.ci = shl i32 %indvars.iv186.tr, 1
  %i.cj = and i32 %i.ci, 2147483640
  %i.ck = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.cl = and i32 %i.ck, 3
  %i.cm = or disjoint i32 %i.cj, %i.cl            ; 2 uses
  %i.cn = or disjoint i32 %i.cm, 4
  %i.co = zext nneg i32 %i.cn to i64              ; 7 uses
  %i.cp = zext nneg i32 %i.cm to i64              ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph172, %bb.s
  %indvars.iv183 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next184, %bb.s ] ; 29 uses
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6528
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !95
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.co
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !213
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv183
  store i8 1, ptr %i.cv, align 1, !tbaa !214
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 6528
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !95
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cp
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !213
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv183
  store i8 1, ptr %i.db, align 1, !tbaa !214
  %i.dc = load ptr, ptr %i.bo, align 8, !tbaa !64 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 6512
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !93 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !238
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv186
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !229
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv183
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !226 ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !239
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 6512
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !93 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !238
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.cp
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !229
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv183
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !226 ; 2 uses
  store i16 %i.dk, ptr %i.ds, align 2, !tbaa !239
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !239
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !239
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !238
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv186
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !229
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv183
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !226 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !239
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !238
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.cp
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !229
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv183
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !226 ; 2 uses
  store i16 %i.ec, ptr %i.ei, align 2, !tbaa !239
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !239
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !239
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 6488
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !90
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !212
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv186
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !213
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv183
  %i.es = load i8, ptr %i.er, align 1, !tbaa !214 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dl, i64 6488
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !90
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !212
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.cp
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !213
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv183
  store i8 %i.es, ptr %i.ey, align 1, !tbaa !214
  %i.ez = sext i8 %i.es to i32                    ; 2 uses
  %i.fa = load ptr, ptr %i.bo, align 8, !tbaa !64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 6488
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !90
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !212
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv186
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !213
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv183
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !214 ; 3 uses
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 6488
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !90
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !212
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.cp
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !213
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv183
  store i8 %i.fi, ptr %i.fq, align 1, !tbaa !214
  %i.fr = sext i8 %i.fi to i32                    ; 2 uses
  %i.fs = icmp sgt i8 %i.es, -1                   ; 2 uses
  %.pre189 = load ptr, ptr %i.bo, align 8, !tbaa !64 ; 5 uses
  br i1 %i.fs, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre189, i64 24
  %i.fu = zext nneg i32 %i.ez to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !215
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.fx = phi i64 [ %i.fw, %bb.d ], [ 0, %bb.c ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre189, i64 6504
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !92 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !217
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv186
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !219
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv183
  store i64 %i.fx, ptr %i.gd, align 8, !tbaa !215
  %i.ge = icmp sgt i8 %i.fi, -1                   ; 2 uses
  br i1 %i.ge, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre189, i64 288
  %i.gg = zext nneg i32 %i.fr to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !215
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.gj = phi i64 [ %i.gi, %bb.f ], [ 0, %bb.e ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
end_hunk_0
