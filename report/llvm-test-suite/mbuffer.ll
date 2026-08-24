Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mbuffer?download=true
inline.NumInlined: 130
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@dpb_combine_field_yuv:bb.a
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.b, label %.preheader, !llvm.loop !242

bb.c:                                             ; preds = %.lr.ph90, %bb.c
  %indvars.iv93 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next94, %bb.c ] ; 6 uses
  %i.bh = phi ptr [ %i.t, %.lr.ph90 ], [ %i.dz, %bb.c ] ; 2 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6472
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !100
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !225
  %i.bm = shl nuw nsw i64 %indvars.iv93, 1        ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !222
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 6472
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !100
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !225
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv93
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !222
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 6400
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !82
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bo, ptr align 2 %i.bt, i64 %i.bx, i1 false)
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6472
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !225
  %i.cc = or disjoint i64 %i.bm, 1                ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !222
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !65  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6472
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !100
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !225
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv93
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !222
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 6400
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !82
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ce, ptr align 2 %i.ck, i64 %i.co, i1 false)
  %i.cp = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 6472
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !100
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !225
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.bm
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !222
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 6472
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !100
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !225
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv93
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !222
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 6400
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !82
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cv, ptr align 2 %i.dc, i64 %i.dg, i1 false)
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 6472
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !100
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !225
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.cc
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !222
  %i.do = load ptr, ptr %i.x, align 8, !tbaa !65  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 6472
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !100
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !225
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv93
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !222
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
  br i1 %i.ed, label %bb.c, label %._crit_edge, !llvm.loop !243

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
  store i32 %i.ek, ptr %i.em, align 8, !tbaa !229
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.ek, ptr %i.en, align 4, !tbaa !132
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ek, ptr %i.eo, align 4, !tbaa !143
  %i.ep = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i32 %i.ek, ptr %i.ep, align 8, !tbaa !229
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i32 %i.ek, ptr %i.eq, align 8, !tbaa !229
  %i.er = load i32, ptr %i.ee, align 4, !tbaa !132 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i32 %i.er, ptr %i.es, align 8, !tbaa !197
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.er, ptr %i.et, align 8, !tbaa !197
  %i.eu = load i32, ptr %i.ei, align 4, !tbaa !132 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !199
  %i.ew = getelementptr inbounds nuw i8, ptr %.lcssa, i64 12
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !199
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
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !231
  %i.fv = getelementptr inbounds nuw i8, ptr %i.el, i64 6560
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !231
  %i.fw = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6568
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !244 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.el, i64 6568
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !244
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
  store ptr %i.el, ptr %i.gc, align 8, !tbaa !230
  %i.gd = getelementptr inbounds nuw i8, ptr %.lcssa, i64 6552
  store ptr %i.el, ptr %i.gd, align 8, !tbaa !230
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
  %1 = lshr i32 %i.e, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 288 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 288 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 288 ; 4 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 25
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.n = shl nuw nsw i64 %wide.trip.count, 3
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 288  ; 2 uses
  %i.p = shl nuw nsw i64 %wide.trip.count, 4
  %i.q = add nuw nsw i64 %i.p, 280                ; 2 uses
  %scevgep191 = getelementptr i8, ptr %i.g, i64 %i.q
  %scevgep192 = getelementptr i8, ptr %i.j, i64 %i.q
  %bound0 = icmp ult ptr %i.m, %scevgep191
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0193 = icmp ult ptr %i.m, %scevgep192
  %bound1194 = icmp ult ptr %i.k, %scevgep
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx = or i1 %found.conflict, %found.conflict195
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  %wide.vec = load <4 x i64>, ptr %i.s, align 8, !tbaa !211, !alias.scope !245
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.t = sdiv <2 x i64> %strided.vec, splat (i64 2)
  %i.u = shl nsw <2 x i64> %i.t, splat (i64 1)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.r
  %wide.vec196 = load <4 x i64>, ptr %i.v, align 8, !tbaa !211, !alias.scope !248
  %strided.vec197 = shufflevector <4 x i64> %wide.vec196, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.w = sdiv <2 x i64> %strided.vec197, splat (i64 2)
  %i.x = shl nsw <2 x i64> %i.w, splat (i64 1)
  %i.y = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.x)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index
  store <2 x i64> %i.y, ptr %i.z, align 8, !tbaa !211, !alias.scope !250, !noalias !252
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %scalar.ph.preheader, label %vector.body, !llvm.loop !253

.preheader167:                                    ; preds = %scalar.ph, %bb.a
  %i.ab = load i32, ptr @listXsize, align 16, !tbaa !4 ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph170, label %.preheader167..preheader_crit_edge

.preheader167..preheader_crit_edge:               ; preds = %.preheader167
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %.preheader

.lr.ph170:                                        ; preds = %.preheader167
  %i.ad = add nuw nsw i32 %i.ab, 1
  %2 = lshr i32 %i.ad, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 4 uses
  %wide.trip.count181 = zext nneg i32 %2 to i64   ; 5 uses
  %min.iters.check210 = icmp ult i32 %i.ab, 25
  br i1 %min.iters.check210, label %scalar.ph209.preheader, label %vector.memcheck198

scalar.ph209.preheader:                           ; preds = %vector.body213, %vector.memcheck198, %.lr.ph170
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck198 ], [ 0, %.lr.ph170 ], [ %n.vec212, %vector.body213 ]
  br label %scalar.ph209

vector.memcheck198:                               ; preds = %.lr.ph170
  %i.am = shl nuw nsw i64 %wide.trip.count181, 3
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am
  %scevgep199 = getelementptr i8, ptr %i.an, i64 24 ; 2 uses
  %i.ao = shl nuw nsw i64 %wide.trip.count181, 4
  %i.ap = add nuw nsw i64 %i.ao, 16               ; 2 uses
  %scevgep200 = getelementptr i8, ptr %i.af, i64 %i.ap
  %scevgep201 = getelementptr i8, ptr %i.ai, i64 %i.ap
  %bound0202 = icmp ult ptr %i.al, %scevgep200
  %bound1203 = icmp ult ptr %i.ag, %scevgep199
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0205 = icmp ult ptr %i.al, %scevgep201
  %bound1206 = icmp ult ptr %i.aj, %scevgep199
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %found.conflict204, %found.conflict207
  br i1 %conflict.rdx208, label %scalar.ph209.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck198
  %.neg222 = or i64 %wide.trip.count181, -2
  %n.vec212 = add nsw i64 %.neg222, %wide.trip.count181 ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next219, %vector.body213 ] ; 3 uses
  %i.aq = shl nuw nsw i64 %index214, 1            ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq
  %wide.vec215 = load <4 x i64>, ptr %i.ar, align 8, !tbaa !211, !alias.scope !254
  %strided.vec216 = shufflevector <4 x i64> %wide.vec215, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.as = sdiv <2 x i64> %strided.vec216, splat (i64 2)
  %i.at = shl nsw <2 x i64> %i.as, splat (i64 1)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.aq
  %wide.vec217 = load <4 x i64>, ptr %i.au, align 8, !tbaa !211, !alias.scope !257
  %strided.vec218 = shufflevector <4 x i64> %wide.vec217, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.av = sdiv <2 x i64> %strided.vec218, splat (i64 2)
  %i.aw = shl nsw <2 x i64> %i.av, splat (i64 1)
  %i.ax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.at, <2 x i64> %i.aw)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index214
  store <2 x i64> %i.ax, ptr %i.ay, align 8, !tbaa !211, !alias.scope !259, !noalias !261
  %index.next219 = add nuw i64 %index214, 2       ; 2 uses
  %i.az = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.az, label %scalar.ph209.preheader, label %vector.body213, !llvm.loop !262

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ba = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !211
  %i.bd = sdiv i64 %i.bc, 2
  %i.be = shl nsw i64 %i.bd, 1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ba
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !211
  %i.bh = sdiv i64 %i.bg, 2
  %i.bi = shl nsw i64 %i.bh, 1
  %i.bj = tail call range(i64 -9223372036854775808, 9223372036854775807) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 9223372036854775807) %i.be, i64 range(i64 -9223372036854775808, 9223372036854775807) %i.bi)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader167, label %scalar.ph, !llvm.loop !263

.preheader:                                       ; preds = %scalar.ph209, %.preheader167..preheader_crit_edge
  %i.bl = phi ptr [ %.pre, %.preheader167..preheader_crit_edge ], [ %i.af, %scalar.ph209 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 6396
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !79
  %i.bp = icmp sgt i32 %i.bo, 3
  br i1 %i.bp, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.b

scalar.ph209:                                     ; preds = %scalar.ph209.preheader, %scalar.ph209
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %scalar.ph209 ], [ %indvars.iv177.ph, %scalar.ph209.preheader ] ; 3 uses
  %i.br = shl nuw nsw i64 %indvars.iv177, 1       ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !211
  %i.bu = sdiv i64 %i.bt, 2
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !211
  %i.by = sdiv i64 %i.bx, 2
  %i.bz = shl nsw i64 %i.by, 1
  %i.ca = tail call range(i64 -9223372036854775808, 9223372036854775807) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 9223372036854775807) %i.bv, i64 range(i64 -9223372036854775808, 9223372036854775807) %i.bz)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv177
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !211
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count181
  br i1 %exitcond182.not, label %.preheader, label %scalar.ph209, !llvm.loop !264

bb.b:                                             ; preds = %.lr.ph174, %._crit_edge
  %i.cc = phi ptr [ %i.bl, %.lr.ph174 ], [ %i.mj, %._crit_edge ] ; 2 uses
  %indvars.iv186 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next187, %._crit_edge ] ; 17 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 6392
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !78
  %i.cf = icmp sgt i32 %i.ce, 3
  br i1 %i.cf, label %.lr.ph172, label %._crit_edge

.lr.ph172:                                        ; preds = %bb.b
  %indvars.iv186.tr = trunc i64 %indvars.iv186 to i32
  %i.cg = shl i32 %indvars.iv186.tr, 1
  %i.ch = and i32 %i.cg, 2147483640
  %i.ci = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.cj = and i32 %i.ci, 3
  %i.ck = or disjoint i32 %i.ch, %i.cj            ; 2 uses
  %i.cl = or disjoint i32 %i.ck, 4
  %i.cm = zext nneg i32 %i.cl to i64              ; 7 uses
  %i.cn = zext nneg i32 %i.ck to i64              ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph172, %bb.s
  %indvars.iv183 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next184, %bb.s ] ; 29 uses
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6528
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !95
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cm
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !209
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv183
  store i8 1, ptr %i.ct, align 1, !tbaa !210
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 6528
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !95
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cn
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !209
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv183
  store i8 1, ptr %i.cz, align 1, !tbaa !210
  %i.da = load ptr, ptr %i.bm, align 8, !tbaa !64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 6512
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !93 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !234
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv186
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !225
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv183
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !222 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !235
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 6512
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !93 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !234
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.cn
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !225
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv183
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !222 ; 2 uses
  store i16 %i.di, ptr %i.dq, align 2, !tbaa !235
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !235
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !235
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !234
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv186
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !225
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv183
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !222 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !235
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !234
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.cn
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !225
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv183
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !222 ; 2 uses
  store i16 %i.ea, ptr %i.eg, align 2, !tbaa !235
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !235
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !235
  %i.ek = getelementptr inbounds nuw i8, ptr %i.da, i64 6488
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !90
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !208
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv186
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !209
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv183
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !210 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dj, i64 6488
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !90
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !208
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.cn
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !209
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv183
  store i8 %i.eq, ptr %i.ew, align 1, !tbaa !210
  %i.ex = sext i8 %i.eq to i32                    ; 2 uses
  %i.ey = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 6488
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !90
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !208
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv186
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !209
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv183
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !210 ; 3 uses
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 6488
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !90
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
end_hunk_0
