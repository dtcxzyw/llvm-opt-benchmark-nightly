inline.NumInlined: 17
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes12CompactArray7scaleUpEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %.fr37 = freeze i32 %i.c
  %i.d = add i32 %.fr37, 1                        ; 3 uses
  %i.e = zext i32 %i.a to i64
  %i.f = zext nneg i32 %i.d to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedCallocEmm(i64 noundef %i.e, i64 noundef %i.g) #4 ; 92 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 3 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !7      ; 18 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i32, ptr %i.b, align 4, !tbaa !12   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 89 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 3 uses
  %switch = icmp ult i32 %i.k, 3
  tail call void @llvm.assume(i1 %switch)
  %wide.trip.count85 = zext i32 %i.j to i64       ; 62 uses
  switch i32 %i.d, label %.lr.ph.split [
    i32 0, label %.lr.ph.split.us
    i32 1, label %.lr.ph.split.us11
    i32 2, label %.lr.ph.split.us16
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph
  switch i32 %i.k, label %_ZNK6hermes12CompactArray3getEj.exit.us.preheader [
    i32 0, label %iter.check317
    i32 1, label %iter.check278
  ]

iter.check278:                                    ; preds = %.lr.ph.split.us
  %min.iters.check232 = icmp ult i32 %i.j, 4
  br i1 %min.iters.check232, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader, label %vector.memcheck225

vector.memcheck225:                               ; preds = %iter.check278
  %scevgep226 = getelementptr i8, ptr %i.h, i64 %wide.trip.count85
  %i.o = shl nuw nsw i64 %wide.trip.count85, 1
  %scevgep227 = getelementptr i8, ptr %i.m, i64 %i.o
  %bound0228 = icmp ult ptr %i.h, %scevgep227
  %bound1229 = icmp ult ptr %i.m, %scevgep226
  %found.conflict230 = and i1 %bound0228, %bound1229
  br i1 %found.conflict230, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader, label %vector.main.loop.iter.check233

vector.main.loop.iter.check233:                   ; preds = %vector.memcheck225
  %min.iters.check234 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check234, label %vec.epilog.ph282, label %vector.ph235

vector.ph235:                                     ; preds = %vector.main.loop.iter.check233
  %n.mod.vf236 = and i64 %wide.trip.count85, 12
  %n.vec237 = and i64 %wide.trip.count85, 4294967280 ; 4 uses
  br label %vector.body238

vector.body238:                                   ; preds = %pred.store.continue273, %vector.ph235
  %index239 = phi i64 [ 0, %vector.ph235 ], [ %index.next274, %pred.store.continue273 ] ; 18 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index239 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load240 = load <8 x i16>, ptr %i.p, align 2, !tbaa !15, !alias.scope !17 ; 9 uses
  %wide.load241 = load <8 x i16>, ptr %i.q, align 2, !tbaa !15, !alias.scope !17 ; 9 uses
  %i.r = icmp ult <8 x i16> %wide.load240, splat (i16 256) ; 8 uses
  %i.s = icmp ult <8 x i16> %wide.load241, splat (i16 256) ; 8 uses
  %i.t = extractelement <8 x i1> %i.r, i64 0
  br i1 %i.t, label %pred.store.if242, label %pred.store.continue243

pred.store.if242:                                 ; preds = %vector.body238
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.v = bitcast <8 x i16> %wide.load240 to <16 x i8>
  %i.w = extractelement <16 x i8> %i.v, i64 0
  store i8 %i.w, ptr %i.u, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue243

pred.store.continue243:                           ; preds = %pred.store.if242, %vector.body238
  %i.x = extractelement <8 x i1> %i.r, i64 1
  br i1 %i.x, label %pred.store.if244, label %pred.store.continue245

pred.store.if244:                                 ; preds = %pred.store.continue243
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = bitcast <8 x i16> %wide.load240 to <16 x i8>
  %i.ab = extractelement <16 x i8> %i.aa, i64 2
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue245

pred.store.continue245:                           ; preds = %pred.store.if244, %pred.store.continue243
  %i.ac = extractelement <8 x i1> %i.r, i64 2
  br i1 %i.ac, label %pred.store.if246, label %pred.store.continue247

pred.store.if246:                                 ; preds = %pred.store.continue245
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = bitcast <8 x i16> %wide.load240 to <16 x i8>
  %i.ag = extractelement <16 x i8> %i.af, i64 4
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue247

pred.store.continue247:                           ; preds = %pred.store.if246, %pred.store.continue245
  %i.ah = extractelement <8 x i1> %i.r, i64 3
  br i1 %i.ah, label %pred.store.if248, label %pred.store.continue249

pred.store.if248:                                 ; preds = %pred.store.continue247
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.ak = bitcast <8 x i16> %wide.load240 to <16 x i8>
  %i.al = extractelement <16 x i8> %i.ak, i64 6
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue249

pred.store.continue249:                           ; preds = %pred.store.if248, %pred.store.continue247
  %i.am = extractelement <8 x i1> %i.r, i64 4
  br i1 %i.am, label %pred.store.if250, label %pred.store.continue251

pred.store.if250:                                 ; preds = %pred.store.continue249
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = bitcast <8 x i16> %wide.load240 to <16 x i8>
  %i.aq = extractelement <16 x i8> %i.ap, i64 8
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue251

pred.store.continue251:                           ; preds = %pred.store.if250, %pred.store.continue249
  %i.ar = extractelement <8 x i1> %i.r, i64 5
  br i1 %i.ar, label %pred.store.if252, label %pred.store.continue253

pred.store.if252:                                 ; preds = %pred.store.continue251
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  %i.au = bitcast <8 x i16> %wide.load240 to <16 x i8>
  %i.av = extractelement <16 x i8> %i.au, i64 10
  store i8 %i.av, ptr %i.at, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue253

pred.store.continue253:                           ; preds = %pred.store.if252, %pred.store.continue251
  %i.aw = extractelement <8 x i1> %i.r, i64 6
  br i1 %i.aw, label %pred.store.if254, label %pred.store.continue255

pred.store.if254:                                 ; preds = %pred.store.continue253
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.az = bitcast <8 x i16> %wide.load240 to <16 x i8>
  %i.ba = extractelement <16 x i8> %i.az, i64 12
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue255

pred.store.continue255:                           ; preds = %pred.store.if254, %pred.store.continue253
  %i.bb = extractelement <8 x i1> %i.r, i64 7
  br i1 %i.bb, label %pred.store.if256, label %pred.store.continue257

pred.store.if256:                                 ; preds = %pred.store.continue255
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 7
  %i.be = bitcast <8 x i16> %wide.load240 to <16 x i8>
  %i.bf = extractelement <16 x i8> %i.be, i64 14
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue257

pred.store.continue257:                           ; preds = %pred.store.if256, %pred.store.continue255
  %i.bg = extractelement <8 x i1> %i.s, i64 0
  br i1 %i.bg, label %pred.store.if258, label %pred.store.continue259

pred.store.if258:                                 ; preds = %pred.store.continue257
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = bitcast <8 x i16> %wide.load241 to <16 x i8>
  %i.bk = extractelement <16 x i8> %i.bj, i64 0
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue259

pred.store.continue259:                           ; preds = %pred.store.if258, %pred.store.continue257
  %i.bl = extractelement <8 x i1> %i.s, i64 1
  br i1 %i.bl, label %pred.store.if260, label %pred.store.continue261

pred.store.if260:                                 ; preds = %pred.store.continue259
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  %i.bo = bitcast <8 x i16> %wide.load241 to <16 x i8>
  %i.bp = extractelement <16 x i8> %i.bo, i64 2
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %pred.store.if260, %pred.store.continue259
  %i.bq = extractelement <8 x i1> %i.s, i64 2
  br i1 %i.bq, label %pred.store.if262, label %pred.store.continue263

pred.store.if262:                                 ; preds = %pred.store.continue261
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.bt = bitcast <8 x i16> %wide.load241 to <16 x i8>
  %i.bu = extractelement <16 x i8> %i.bt, i64 4
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue263

pred.store.continue263:                           ; preds = %pred.store.if262, %pred.store.continue261
  %i.bv = extractelement <8 x i1> %i.s, i64 3
  br i1 %i.bv, label %pred.store.if264, label %pred.store.continue265

pred.store.if264:                                 ; preds = %pred.store.continue263
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 11
  %i.by = bitcast <8 x i16> %wide.load241 to <16 x i8>
  %i.bz = extractelement <16 x i8> %i.by, i64 6
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue265

pred.store.continue265:                           ; preds = %pred.store.if264, %pred.store.continue263
  %i.ca = extractelement <8 x i1> %i.s, i64 4
  br i1 %i.ca, label %pred.store.if266, label %pred.store.continue267

pred.store.if266:                                 ; preds = %pred.store.continue265
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = bitcast <8 x i16> %wide.load241 to <16 x i8>
  %i.ce = extractelement <16 x i8> %i.cd, i64 8
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue267

pred.store.continue267:                           ; preds = %pred.store.if266, %pred.store.continue265
  %i.cf = extractelement <8 x i1> %i.s, i64 5
  br i1 %i.cf, label %pred.store.if268, label %pred.store.continue269

pred.store.if268:                                 ; preds = %pred.store.continue267
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 13
  %i.ci = bitcast <8 x i16> %wide.load241 to <16 x i8>
  %i.cj = extractelement <16 x i8> %i.ci, i64 10
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue269

pred.store.continue269:                           ; preds = %pred.store.if268, %pred.store.continue267
  %i.ck = extractelement <8 x i1> %i.s, i64 6
  br i1 %i.ck, label %pred.store.if270, label %pred.store.continue271

pred.store.if270:                                 ; preds = %pred.store.continue269
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 14
  %i.cn = bitcast <8 x i16> %wide.load241 to <16 x i8>
  %i.co = extractelement <16 x i8> %i.cn, i64 12
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %pred.store.continue269
  %i.cp = extractelement <8 x i1> %i.s, i64 7
  br i1 %i.cp, label %pred.store.if272, label %pred.store.continue273

pred.store.if272:                                 ; preds = %pred.store.continue271
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 %index239
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  %i.cs = bitcast <8 x i16> %wide.load241 to <16 x i8>
  %i.ct = extractelement <16 x i8> %i.cs, i64 14
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.if272, %pred.store.continue271
  %index.next274 = add nuw i64 %index239, 16      ; 2 uses
  %i.cu = icmp eq i64 %index.next274, %n.vec237
  br i1 %i.cu, label %middle.block275, label %vector.body238, !llvm.loop !23

middle.block275:                                  ; preds = %pred.store.continue273
  %cmp.n276 = icmp eq i64 %n.vec237, %wide.trip.count85
  br i1 %cmp.n276, label %._crit_edge, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block275
  %min.epilog.iters.check281 = icmp eq i64 %n.mod.vf236, 0
  br i1 %min.epilog.iters.check281, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader, label %vec.epilog.ph282, !prof !27

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check233, %vec.epilog.iter.check280
  %vec.epilog.resume.val277 = phi i64 [ %n.vec237, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check233 ]
  %n.vec284 = and i64 %wide.trip.count85, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body285

vec.epilog.vector.body285:                        ; preds = %pred.store.continue295, %vec.epilog.ph282
  %index286 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph282 ], [ %index.next296, %pred.store.continue295 ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index286
  %wide.load287 = load <4 x i16>, ptr %i.cv, align 2, !tbaa !15, !alias.scope !17 ; 5 uses
  %i.cw = icmp ult <4 x i16> %wide.load287, splat (i16 256) ; 4 uses
  %i.cx = extractelement <4 x i1> %i.cw, i64 0
  br i1 %i.cx, label %pred.store.if288, label %pred.store.continue289

pred.store.if288:                                 ; preds = %vec.epilog.vector.body285
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 %index286
  %i.cz = bitcast <4 x i16> %wide.load287 to <8 x i8>
  %i.da = extractelement <8 x i8> %i.cz, i64 0
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue289

pred.store.continue289:                           ; preds = %pred.store.if288, %vec.epilog.vector.body285
  %i.db = extractelement <4 x i1> %i.cw, i64 1
  br i1 %i.db, label %pred.store.if290, label %pred.store.continue291

pred.store.if290:                                 ; preds = %pred.store.continue289
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 %index286
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = bitcast <4 x i16> %wide.load287 to <8 x i8>
  %i.df = extractelement <8 x i8> %i.de, i64 2
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue291

pred.store.continue291:                           ; preds = %pred.store.if290, %pred.store.continue289
  %i.dg = extractelement <4 x i1> %i.cw, i64 2
  br i1 %i.dg, label %pred.store.if292, label %pred.store.continue293

pred.store.if292:                                 ; preds = %pred.store.continue291
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 %index286
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dj = bitcast <4 x i16> %wide.load287 to <8 x i8>
  %i.dk = extractelement <8 x i8> %i.dj, i64 4
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue293

pred.store.continue293:                           ; preds = %pred.store.if292, %pred.store.continue291
  %i.dl = extractelement <4 x i1> %i.cw, i64 3
  br i1 %i.dl, label %pred.store.if294, label %pred.store.continue295

pred.store.if294:                                 ; preds = %pred.store.continue293
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 %index286
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.do = bitcast <4 x i16> %wide.load287 to <8 x i8>
  %i.dp = extractelement <8 x i8> %i.do, i64 6
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue295

pred.store.continue295:                           ; preds = %pred.store.if294, %pred.store.continue293
  %index.next296 = add nuw i64 %index286, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next296, %n.vec284
  br i1 %i.dq, label %vec.epilog.middle.block297, label %vec.epilog.vector.body285, !llvm.loop !28

vec.epilog.middle.block297:                       ; preds = %pred.store.continue295
  %cmp.n298 = icmp eq i64 %n.vec284, %wide.trip.count85
  br i1 %cmp.n298, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader

_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader: ; preds = %vector.memcheck225, %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block297
  %indvars.iv72.ph = phi i64 [ 0, %iter.check278 ], [ 0, %vector.memcheck225 ], [ %n.vec237, %vec.epilog.iter.check280 ], [ %n.vec284, %vec.epilog.middle.block297 ] ; 5 uses
  %lcmp.mod394.not = trunc i32 %i.j to i1
  br i1 %lcmp.mod394.not, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol.loopexit

_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv72.ph
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !15 ; 2 uses
  %i.dt = icmp ult i16 %i.ds, 256
  br i1 %i.dt, label %bb.b, label %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.prol

bb.b:                                             ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol
  %i.du = trunc nuw i16 %i.ds to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv72.ph
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !20
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.prol

_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.prol: ; preds = %bb.b, %_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol
  %indvars.iv.next73.prol = or disjoint i64 %indvars.iv72.ph, 1
  br label %_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol.loopexit

_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol.loopexit: ; preds = %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.prol, %_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader
  %indvars.iv72.unr = phi i64 [ %indvars.iv72.ph, %_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader ], [ %indvars.iv.next73.prol, %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.prol ]
  %i.dw = add nsw i64 %wide.trip.count85, -1
  %i.dx = icmp eq i64 %indvars.iv72.ph, %i.dw
  br i1 %i.dx, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23

iter.check317:                                    ; preds = %.lr.ph.split.us
  %min.iters.check303 = icmp ult i32 %i.j, 4
  %i.dy = sub i64 %i.n, %i.i
  %diff.check301 = icmp ugt i64 %i.dy, -32
  %or.cond = select i1 %min.iters.check303, i1 true, i1 %diff.check301
  br i1 %or.cond, label %_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader, label %vector.main.loop.iter.check304

vector.main.loop.iter.check304:                   ; preds = %iter.check317
  %min.iters.check305 = icmp ult i32 %i.j, 32
  br i1 %min.iters.check305, label %vec.epilog.ph321, label %vector.ph306

vector.ph306:                                     ; preds = %vector.main.loop.iter.check304
  %n.mod.vf307 = and i64 %wide.trip.count85, 28
  %n.vec308 = and i64 %wide.trip.count85, 4294967264 ; 4 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph306
  %index310 = phi i64 [ 0, %vector.ph306 ], [ %index.next313, %vector.body309 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 %index310 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load311 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !20
  %wide.load312 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 %index310 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <16 x i8> %wide.load311, ptr %i.eb, align 1, !tbaa !20
  store <16 x i8> %wide.load312, ptr %i.ec, align 1, !tbaa !20
  %index.next313 = add nuw i64 %index310, 32      ; 2 uses
  %i.ed = icmp eq i64 %index.next313, %n.vec308
  br i1 %i.ed, label %middle.block314, label %vector.body309, !llvm.loop !29

middle.block314:                                  ; preds = %vector.body309
  %cmp.n315 = icmp eq i64 %n.vec308, %wide.trip.count85
  br i1 %cmp.n315, label %._crit_edge, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block314
  %min.epilog.iters.check320 = icmp eq i64 %n.mod.vf307, 0
  br i1 %min.epilog.iters.check320, label %_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader, label %vec.epilog.ph321, !prof !30

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check304, %vec.epilog.iter.check319
  %vec.epilog.resume.val316 = phi i64 [ %n.vec308, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check304 ]
  %n.vec323 = and i64 %wide.trip.count85, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body324

vec.epilog.vector.body324:                        ; preds = %vec.epilog.vector.body324, %vec.epilog.ph321
  %index325 = phi i64 [ %vec.epilog.resume.val316, %vec.epilog.ph321 ], [ %index.next327, %vec.epilog.vector.body324 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 %index325
  %wide.load326 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 %index325
  store <4 x i8> %wide.load326, ptr %i.ef, align 1, !tbaa !20
  %index.next327 = add nuw i64 %index325, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next327, %n.vec323
  br i1 %i.eg, label %vec.epilog.middle.block328, label %vec.epilog.vector.body324, !llvm.loop !31

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body324
  %cmp.n329 = icmp eq i64 %n.vec323, %wide.trip.count85
  br i1 %cmp.n329, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader

_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader: ; preds = %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block328
  %indvars.iv77.ph = phi i64 [ 0, %iter.check317 ], [ %n.vec308, %vec.epilog.iter.check319 ], [ %n.vec323, %vec.epilog.middle.block328 ] ; 3 uses
  %xtraiter396 = and i64 %wide.trip.count85, 3    ; 2 uses
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol.loopexit, label %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol

_ZNK6hermes12CompactArray3getEj.exit.us.us.prol:  ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader, %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol
  %indvars.iv77.prol = phi i64 [ %indvars.iv.next78.prol, %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol ], [ %indvars.iv77.ph, %_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader ] ; 3 uses
  %prol.iter398 = phi i64 [ %prol.iter398.next, %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol ], [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv77.prol
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv77.prol
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !20
  %indvars.iv.next78.prol = add nuw nsw i64 %indvars.iv77.prol, 1 ; 2 uses
  %prol.iter398.next = add i64 %prol.iter398, 1   ; 2 uses
  %prol.iter398.cmp.not = icmp eq i64 %prol.iter398.next, %xtraiter396
  br i1 %prol.iter398.cmp.not, label %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol.loopexit, label %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol, !llvm.loop !32

_ZNK6hermes12CompactArray3getEj.exit.us.us.prol.loopexit: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol, %_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader
  %indvars.iv77.unr = phi i64 [ %indvars.iv77.ph, %_ZNK6hermes12CompactArray3getEj.exit.us.us.preheader ], [ %indvars.iv.next78.prol, %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol ]
  %i.ek = sub nsw i64 %indvars.iv77.ph, %wide.trip.count85
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us.us

_ZNK6hermes12CompactArray3getEj.exit.us.preheader: ; preds = %.lr.ph.split.us
  %min.iters.check338 = icmp ult i32 %i.j, 12
  br i1 %min.iters.check338, label %_ZNK6hermes12CompactArray3getEj.exit.us.preheader368, label %vector.memcheck331

vector.memcheck331:                               ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.preheader
  %scevgep332 = getelementptr i8, ptr %i.h, i64 %wide.trip.count85
  %i.em = shl nuw nsw i64 %wide.trip.count85, 2
  %scevgep333 = getelementptr i8, ptr %i.m, i64 %i.em
  %bound0334 = icmp ult ptr %i.h, %scevgep333
  %bound1335 = icmp ult ptr %i.m, %scevgep332
  %found.conflict336 = and i1 %bound0334, %bound1335
  br i1 %found.conflict336, label %_ZNK6hermes12CompactArray3getEj.exit.us.preheader368, label %vector.ph339

vector.ph339:                                     ; preds = %vector.memcheck331
  %n.vec341 = and i64 %wide.trip.count85, 4294967288 ; 3 uses
  br label %vector.body342

vector.body342:                                   ; preds = %pred.store.continue361, %vector.ph339
  %index343 = phi i64 [ 0, %vector.ph339 ], [ %index.next362, %pred.store.continue361 ] ; 10 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index343 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load344 = load <4 x i32>, ptr %i.en, align 4, !tbaa !3, !alias.scope !34 ; 5 uses
  %wide.load345 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !3, !alias.scope !34 ; 5 uses
  %i.ep = icmp ult <4 x i32> %wide.load344, splat (i32 256) ; 4 uses
  %i.eq = icmp ult <4 x i32> %wide.load345, splat (i32 256) ; 4 uses
  %i.er = extractelement <4 x i1> %i.ep, i64 0
  br i1 %i.er, label %pred.store.if346, label %pred.store.continue347

pred.store.if346:                                 ; preds = %vector.body342
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 %index343
  %i.et = bitcast <4 x i32> %wide.load344 to <16 x i8>
  %i.eu = extractelement <16 x i8> %i.et, i64 0
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue347

pred.store.continue347:                           ; preds = %pred.store.if346, %vector.body342
  %i.ev = extractelement <4 x i1> %i.ep, i64 1
  br i1 %i.ev, label %pred.store.if348, label %pred.store.continue349

pred.store.if348:                                 ; preds = %pred.store.continue347
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 %index343
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = bitcast <4 x i32> %wide.load344 to <16 x i8>
  %i.ez = extractelement <16 x i8> %i.ey, i64 4
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue349

pred.store.continue349:                           ; preds = %pred.store.if348, %pred.store.continue347
  %i.fa = extractelement <4 x i1> %i.ep, i64 2
  br i1 %i.fa, label %pred.store.if350, label %pred.store.continue351

pred.store.if350:                                 ; preds = %pred.store.continue349
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 %index343
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fd = bitcast <4 x i32> %wide.load344 to <16 x i8>
  %i.fe = extractelement <16 x i8> %i.fd, i64 8
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %pred.store.continue349
  %i.ff = extractelement <4 x i1> %i.ep, i64 3
  br i1 %i.ff, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %pred.store.continue351
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 %index343
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fi = bitcast <4 x i32> %wide.load344 to <16 x i8>
  %i.fj = extractelement <16 x i8> %i.fi, i64 12
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.fk = extractelement <4 x i1> %i.eq, i64 0
  br i1 %i.fk, label %pred.store.if354, label %pred.store.continue355

pred.store.if354:                                 ; preds = %pred.store.continue353
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 %index343
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = bitcast <4 x i32> %wide.load345 to <16 x i8>
  %i.fo = extractelement <16 x i8> %i.fn, i64 0
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.fp = extractelement <4 x i1> %i.eq, i64 1
  br i1 %i.fp, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %pred.store.continue355
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 %index343
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 5
  %i.fs = bitcast <4 x i32> %wide.load345 to <16 x i8>
  %i.ft = extractelement <16 x i8> %i.fs, i64 4
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %i.fu = extractelement <4 x i1> %i.eq, i64 2
  br i1 %i.fu, label %pred.store.if358, label %pred.store.continue359

pred.store.if358:                                 ; preds = %pred.store.continue357
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 %index343
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 6
  %i.fx = bitcast <4 x i32> %wide.load345 to <16 x i8>
  %i.fy = extractelement <16 x i8> %i.fx, i64 8
  store i8 %i.fy, ptr %i.fw, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue359

pred.store.continue359:                           ; preds = %pred.store.if358, %pred.store.continue357
  %i.fz = extractelement <4 x i1> %i.eq, i64 3
  br i1 %i.fz, label %pred.store.if360, label %pred.store.continue361

pred.store.if360:                                 ; preds = %pred.store.continue359
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 %index343
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 7
  %i.gc = bitcast <4 x i32> %wide.load345 to <16 x i8>
  %i.gd = extractelement <16 x i8> %i.gc, i64 12
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue361

pred.store.continue361:                           ; preds = %pred.store.if360, %pred.store.continue359
  %index.next362 = add nuw i64 %index343, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next362, %n.vec341
  br i1 %i.ge, label %middle.block363, label %vector.body342, !llvm.loop !39

middle.block363:                                  ; preds = %pred.store.continue361
  %cmp.n364 = icmp eq i64 %n.vec341, %wide.trip.count85
  br i1 %cmp.n364, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us.preheader368

_ZNK6hermes12CompactArray3getEj.exit.us.preheader368: ; preds = %vector.memcheck331, %_ZNK6hermes12CompactArray3getEj.exit.us.preheader, %middle.block363
  %indvars.iv82.ph = phi i64 [ 0, %vector.memcheck331 ], [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us.preheader ], [ %n.vec341, %middle.block363 ] ; 5 uses
  %lcmp.mod400.not = trunc i32 %i.j to i1
  br i1 %lcmp.mod400.not, label %_ZNK6hermes12CompactArray3getEj.exit.us.prol, label %_ZNK6hermes12CompactArray3getEj.exit.us.prol.loopexit

_ZNK6hermes12CompactArray3getEj.exit.us.prol:     ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.preheader368
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv82.ph
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3  ; 2 uses
  %i.gh = icmp ult i32 %i.gg, 256
  br i1 %i.gh, label %bb.c, label %_ZN6hermes12CompactArray6trySetEjj.exit.us.prol

bb.c:                                             ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.prol
  %i.gi = trunc nuw i32 %i.gg to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv82.ph
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !20
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us.prol

_ZN6hermes12CompactArray6trySetEjj.exit.us.prol:  ; preds = %bb.c, %_ZNK6hermes12CompactArray3getEj.exit.us.prol
  %indvars.iv.next83.prol = or disjoint i64 %indvars.iv82.ph, 1
  br label %_ZNK6hermes12CompactArray3getEj.exit.us.prol.loopexit

_ZNK6hermes12CompactArray3getEj.exit.us.prol.loopexit: ; preds = %_ZN6hermes12CompactArray6trySetEjj.exit.us.prol, %_ZNK6hermes12CompactArray3getEj.exit.us.preheader368
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %_ZNK6hermes12CompactArray3getEj.exit.us.preheader368 ], [ %indvars.iv.next83.prol, %_ZN6hermes12CompactArray6trySetEjj.exit.us.prol ]
  %i.gk = add nsw i64 %wide.trip.count85, -1
  %i.gl = icmp eq i64 %indvars.iv82.ph, %i.gk
  br i1 %i.gl, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us

_ZNK6hermes12CompactArray3getEj.exit.us.us:       ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol.loopexit, %_ZNK6hermes12CompactArray3getEj.exit.us.us
  %indvars.iv77 = phi i64 [ %indvars.iv.next78.3, %_ZNK6hermes12CompactArray3getEj.exit.us.us ], [ %indvars.iv77.unr, %_ZNK6hermes12CompactArray3getEj.exit.us.us.prol.loopexit ] ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv77
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv77
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !20
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next78
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !20
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next78
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !20
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next78.1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !20
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next78.1
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !20
  %indvars.iv.next78.2 = add nuw nsw i64 %indvars.iv77, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next78.2
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next78.2
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !20
  %indvars.iv.next78.3 = add nuw nsw i64 %indvars.iv77, 4 ; 2 uses
  %exitcond81.not.3 = icmp eq i64 %indvars.iv.next78.3, %wide.trip.count85
  br i1 %exitcond81.not.3, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us.us, !llvm.loop !40

_ZNK6hermes12CompactArray3getEj.exit.us.us23:     ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol.loopexit, %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.1
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.1 ], [ %indvars.iv72.unr, %_ZNK6hermes12CompactArray3getEj.exit.us.us23.prol.loopexit ] ; 4 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv72
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !15 ; 2 uses
  %i.ha = icmp ult i16 %i.gz, 256
  br i1 %i.ha, label %bb.d, label %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25

bb.d:                                             ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.us23
  %i.hb = trunc nuw i16 %i.gz to i8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv72
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !20
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25

_ZN6hermes12CompactArray6trySetEjj.exit.us.us25:  ; preds = %bb.d, %_ZNK6hermes12CompactArray3getEj.exit.us.us23
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next73
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !15 ; 2 uses
  %i.hf = icmp ult i16 %i.he, 256
  br i1 %i.hf, label %bb.e, label %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.1

bb.e:                                             ; preds = %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25
  %i.hg = trunc nuw i16 %i.he to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next73
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !20
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.1

_ZN6hermes12CompactArray6trySetEjj.exit.us.us25.1: ; preds = %bb.e, %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %exitcond76.not.1 = icmp eq i64 %indvars.iv.next73.1, %wide.trip.count85
  br i1 %exitcond76.not.1, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23, !llvm.loop !41

_ZNK6hermes12CompactArray3getEj.exit.us:          ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us.prol.loopexit, %_ZN6hermes12CompactArray6trySetEjj.exit.us.1
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.1, %_ZN6hermes12CompactArray6trySetEjj.exit.us.1 ], [ %indvars.iv82.unr, %_ZNK6hermes12CompactArray3getEj.exit.us.prol.loopexit ] ; 4 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv82
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3  ; 2 uses
  %i.hk = icmp ult i32 %i.hj, 256
  br i1 %i.hk, label %bb.f, label %_ZN6hermes12CompactArray6trySetEjj.exit.us

bb.f:                                             ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us
  %i.hl = trunc nuw i32 %i.hj to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv82
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !20
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us

_ZN6hermes12CompactArray6trySetEjj.exit.us:       ; preds = %bb.f, %_ZNK6hermes12CompactArray3getEj.exit.us
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next83
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3  ; 2 uses
  %i.hp = icmp ult i32 %i.ho, 256
  br i1 %i.hp, label %bb.g, label %_ZN6hermes12CompactArray6trySetEjj.exit.us.1

bb.g:                                             ; preds = %_ZN6hermes12CompactArray6trySetEjj.exit.us
  %i.hq = trunc nuw i32 %i.ho to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next83
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !20
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us.1

_ZN6hermes12CompactArray6trySetEjj.exit.us.1:     ; preds = %bb.g, %_ZN6hermes12CompactArray6trySetEjj.exit.us
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %exitcond86.not.1 = icmp eq i64 %indvars.iv.next83.1, %wide.trip.count85
  br i1 %exitcond86.not.1, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us, !llvm.loop !42

.lr.ph.split.us11:                                ; preds = %.lr.ph
  switch i32 %i.k, label %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader [
    i32 0, label %iter.check178
    i32 1, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph.split.us11
  %min.iters.check138 = icmp ult i32 %i.j, 4
  %i.hs = sub i64 %i.n, %i.i
  %diff.check136 = icmp ugt i64 %i.hs, -32
  %or.cond366 = select i1 %min.iters.check138, i1 true, i1 %diff.check136
  br i1 %or.cond366, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check139 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph140

vector.ph140:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf141 = and i64 %wide.trip.count85, 12
  %n.vec142 = and i64 %wide.trip.count85, 4294967280 ; 4 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body143 ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index144 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %wide.load145 = load <8 x i16>, ptr %i.ht, align 2, !tbaa !15
  %wide.load146 = load <8 x i16>, ptr %i.hu, align 2, !tbaa !15
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index144 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <8 x i16> %wide.load145, ptr %i.hv, align 2, !tbaa !15
  store <8 x i16> %wide.load146, ptr %i.hw, align 2, !tbaa !15
  %index.next147 = add nuw i64 %index144, 16      ; 2 uses
  %i.hx = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.hx, label %middle.block148, label %vector.body143, !llvm.loop !43

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %n.vec142, %wide.trip.count85
  br i1 %cmp.n149, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block148
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf141, 0
  br i1 %min.epilog.iters.check, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec142, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %wide.trip.count85, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next154, %vec.epilog.vector.body ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index152
  %wide.load153 = load <4 x i16>, ptr %i.hy, align 2, !tbaa !15
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index152
  store <4 x i16> %wide.load153, ptr %i.hz, align 2, !tbaa !15
  %index.next154 = add nuw i64 %index152, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next154, %n.vec151
  br i1 %i.ia, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n155 = icmp eq i64 %n.vec151, %wide.trip.count85
  br i1 %cmp.n155, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader

_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.ph = phi i64 [ 0, %iter.check ], [ %n.vec142, %vec.epilog.iter.check ], [ %n.vec151, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter384 = and i64 %wide.trip.count85, 3    ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol.loopexit, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol

_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol
  %indvars.iv57.prol = phi i64 [ %indvars.iv.next58.prol, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol ], [ %indvars.iv57.ph, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader ] ; 3 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol ], [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader ]
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv57.prol
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !15
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv57.prol
  store i16 %i.ic, ptr %i.id, align 2, !tbaa !15
  %indvars.iv.next58.prol = add nuw nsw i64 %indvars.iv57.prol, 1 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol.loopexit, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol, !llvm.loop !45

_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol.loopexit: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader
  %indvars.iv57.unr = phi i64 [ %indvars.iv57.ph, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader ], [ %indvars.iv.next58.prol, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol ]
  %i.ie = sub nsw i64 %indvars.iv57.ph, %wide.trip.count85
  %i.if = icmp ugt i64 %i.ie, -4
  br i1 %i.if, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28

iter.check178:                                    ; preds = %.lr.ph.split.us11
  %min.iters.check164 = icmp ult i32 %i.j, 4
  br i1 %min.iters.check164, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader, label %vector.memcheck157
end_hunk_0
begin_hunk_1_@_ZN6hermes12CompactArray7scaleUpEv:bb.a
vector.body170:                                   ; preds = %vector.body170, %vector.ph167
  %index171 = phi i64 [ 0, %vector.ph167 ], [ %index.next174, %vector.body170 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.m, i64 %index171 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %wide.load172 = load <8 x i8>, ptr %i.ih, align 1, !tbaa !20, !alias.scope !46
  %wide.load173 = load <8 x i8>, ptr %i.ii, align 1, !tbaa !20, !alias.scope !46
  %i.ij = zext <8 x i8> %wide.load172 to <8 x i16>
  %i.ik = zext <8 x i8> %wide.load173 to <8 x i16>
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index171 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <8 x i16> %i.ij, ptr %i.il, align 2, !tbaa !15, !alias.scope !49, !noalias !46
  store <8 x i16> %i.ik, ptr %i.im, align 2, !tbaa !15, !alias.scope !49, !noalias !46
  %index.next174 = add nuw i64 %index171, 16      ; 2 uses
  %i.in = icmp eq i64 %index.next174, %n.vec169
  br i1 %i.in, label %middle.block175, label %vector.body170, !llvm.loop !51

middle.block175:                                  ; preds = %vector.body170
  %cmp.n176 = icmp eq i64 %n.vec169, %wide.trip.count85
  br i1 %cmp.n176, label %._crit_edge, label %vec.epilog.iter.check180

vec.epilog.iter.check180:                         ; preds = %middle.block175
  %min.epilog.iters.check181 = icmp eq i64 %n.mod.vf168, 0
  br i1 %min.epilog.iters.check181, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader, label %vec.epilog.ph182, !prof !27

vec.epilog.ph182:                                 ; preds = %vector.main.loop.iter.check165, %vec.epilog.iter.check180
  %vec.epilog.resume.val177 = phi i64 [ %n.vec169, %vec.epilog.iter.check180 ], [ 0, %vector.main.loop.iter.check165 ]
  %n.vec184 = and i64 %wide.trip.count85, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body185

vec.epilog.vector.body185:                        ; preds = %vec.epilog.vector.body185, %vec.epilog.ph182
  %index186 = phi i64 [ %vec.epilog.resume.val177, %vec.epilog.ph182 ], [ %index.next188, %vec.epilog.vector.body185 ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.m, i64 %index186
  %wide.load187 = load <4 x i8>, ptr %i.io, align 1, !tbaa !20, !alias.scope !46
  %i.ip = zext <4 x i8> %wide.load187 to <4 x i16>
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index186
  store <4 x i16> %i.ip, ptr %i.iq, align 2, !tbaa !15, !alias.scope !49, !noalias !46
  %index.next188 = add nuw i64 %index186, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next188, %n.vec184
  br i1 %i.ir, label %vec.epilog.middle.block189, label %vec.epilog.vector.body185, !llvm.loop !52

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body185
  %cmp.n190 = icmp eq i64 %n.vec184, %wide.trip.count85
  br i1 %cmp.n190, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader

_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader: ; preds = %vector.memcheck157, %iter.check178, %vec.epilog.iter.check180, %vec.epilog.middle.block189
  %indvars.iv62.ph = phi i64 [ 0, %iter.check178 ], [ 0, %vector.memcheck157 ], [ %n.vec169, %vec.epilog.iter.check180 ], [ %n.vec184, %vec.epilog.middle.block189 ] ; 3 uses
  %xtraiter387 = and i64 %wide.trip.count85, 3    ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol.loopexit, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol

_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol ], [ %indvars.iv62.ph, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader ] ; 3 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol ], [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv62.prol
  %i.it = load i8, ptr %i.is, align 1, !tbaa !20
  %i.iu = zext i8 %i.it to i16
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv62.prol
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !15
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv62.prol, 1 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol.loopexit, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol, !llvm.loop !53

_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol.loopexit: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader
  %indvars.iv62.unr = phi i64 [ %indvars.iv62.ph, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader ], [ %indvars.iv.next63.prol, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol ]
  %i.iw = sub nsw i64 %indvars.iv62.ph, %wide.trip.count85
  %i.ix = icmp ugt i64 %i.iw, -4
  br i1 %i.ix, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us

_ZNK6hermes12CompactArray3getEj.exit.us13.preheader: ; preds = %.lr.ph.split.us11
  %min.iters.check199 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check199, label %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader371, label %vector.memcheck192

vector.memcheck192:                               ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader
  %i.iy = shl nuw nsw i64 %wide.trip.count85, 1
  %scevgep193 = getelementptr i8, ptr %i.h, i64 %i.iy
  %i.iz = shl nuw nsw i64 %wide.trip.count85, 2
  %scevgep194 = getelementptr i8, ptr %i.m, i64 %i.iz
  %bound0195 = icmp ult ptr %i.h, %scevgep194
  %bound1196 = icmp ult ptr %i.m, %scevgep193
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader371, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck192
  %n.vec202 = and i64 %wide.trip.count85, 4294967288 ; 3 uses
  br label %vector.body203

vector.body203:                                   ; preds = %pred.store.continue220, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next221, %pred.store.continue220 ] ; 10 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index204 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %wide.load205 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !3, !alias.scope !54 ; 5 uses
  %wide.load206 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !3, !alias.scope !54 ; 5 uses
  %i.jc = icmp ult <4 x i32> %wide.load205, splat (i32 65536) ; 4 uses
  %i.jd = icmp ult <4 x i32> %wide.load206, splat (i32 65536) ; 4 uses
  %i.je = extractelement <4 x i1> %i.jc, i64 0
  br i1 %i.je, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body203
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index204
  %i.jg = bitcast <4 x i32> %wide.load205 to <8 x i16>
  %i.jh = extractelement <8 x i16> %i.jg, i64 0
  store i16 %i.jh, ptr %i.jf, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body203
  %i.ji = extractelement <4 x i1> %i.jc, i64 1
  br i1 %i.ji, label %pred.store.if207, label %pred.store.continue208

pred.store.if207:                                 ; preds = %pred.store.continue
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index204
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = bitcast <4 x i32> %wide.load205 to <8 x i16>
  %i.jm = extractelement <8 x i16> %i.jl, i64 2
  store i16 %i.jm, ptr %i.jk, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.if207, %pred.store.continue
  %i.jn = extractelement <4 x i1> %i.jc, i64 2
  br i1 %i.jn, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue208
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index204
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jq = bitcast <4 x i32> %wide.load205 to <8 x i16>
  %i.jr = extractelement <8 x i16> %i.jq, i64 4
  store i16 %i.jr, ptr %i.jp, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.js = extractelement <4 x i1> %i.jc, i64 3
  br i1 %i.js, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index204
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 6
  %i.jv = bitcast <4 x i32> %wide.load205 to <8 x i16>
  %i.jw = extractelement <8 x i16> %i.jv, i64 6
  store i16 %i.jw, ptr %i.ju, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.jx = extractelement <4 x i1> %i.jd, i64 0
  br i1 %i.jx, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index204
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = bitcast <4 x i32> %wide.load206 to <8 x i16>
  %i.kb = extractelement <8 x i16> %i.ka, i64 0
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.kc = extractelement <4 x i1> %i.jd, i64 1
  br i1 %i.kc, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index204
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 10
  %i.kf = bitcast <4 x i32> %wide.load206 to <8 x i16>
  %i.kg = extractelement <8 x i16> %i.kf, i64 2
  store i16 %i.kg, ptr %i.ke, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.kh = extractelement <4 x i1> %i.jd, i64 2
  br i1 %i.kh, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index204
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %i.kk = bitcast <4 x i32> %wide.load206 to <8 x i16>
  %i.kl = extractelement <8 x i16> %i.kk, i64 4
  store i16 %i.kl, ptr %i.kj, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %i.km = extractelement <4 x i1> %i.jd, i64 3
  br i1 %i.km, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index204
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 14
  %i.kp = bitcast <4 x i32> %wide.load206 to <8 x i16>
  %i.kq = extractelement <8 x i16> %i.kp, i64 6
  store i16 %i.kq, ptr %i.ko, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %index.next221 = add nuw i64 %index204, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next221, %n.vec202
  br i1 %i.kr, label %middle.block222, label %vector.body203, !llvm.loop !59

middle.block222:                                  ; preds = %pred.store.continue220
  %cmp.n223 = icmp eq i64 %n.vec202, %wide.trip.count85
  br i1 %cmp.n223, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader371

_ZNK6hermes12CompactArray3getEj.exit.us13.preheader371: ; preds = %vector.memcheck192, %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader, %middle.block222
  %indvars.iv67.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader ], [ %n.vec202, %middle.block222 ] ; 5 uses
  %lcmp.mod391.not = trunc i32 %i.j to i1
  br i1 %lcmp.mod391.not, label %_ZNK6hermes12CompactArray3getEj.exit.us13.prol, label %_ZNK6hermes12CompactArray3getEj.exit.us13.prol.loopexit

_ZNK6hermes12CompactArray3getEj.exit.us13.prol:   ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader371
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv67.ph
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3  ; 2 uses
  %i.ku = icmp ult i32 %i.kt, 65536
  br i1 %i.ku, label %bb.h, label %_ZN6hermes12CompactArray6trySetEjj.exit.us15.prol

bb.h:                                             ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.prol
  %i.kv = trunc nuw i32 %i.kt to i16
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv67.ph
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !15
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us15.prol

_ZN6hermes12CompactArray6trySetEjj.exit.us15.prol: ; preds = %bb.h, %_ZNK6hermes12CompactArray3getEj.exit.us13.prol
  %indvars.iv.next68.prol = or disjoint i64 %indvars.iv67.ph, 1
  br label %_ZNK6hermes12CompactArray3getEj.exit.us13.prol.loopexit

_ZNK6hermes12CompactArray3getEj.exit.us13.prol.loopexit: ; preds = %_ZN6hermes12CompactArray6trySetEjj.exit.us15.prol, %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader371
  %indvars.iv67.unr = phi i64 [ %indvars.iv67.ph, %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader371 ], [ %indvars.iv.next68.prol, %_ZN6hermes12CompactArray6trySetEjj.exit.us15.prol ]
  %i.kx = add nsw i64 %wide.trip.count85, -1
  %i.ky = icmp eq i64 %indvars.iv67.ph, %i.kx
  br i1 %i.ky, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13

_ZNK6hermes12CompactArray3getEj.exit.us13.us:     ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol.loopexit, %_ZNK6hermes12CompactArray3getEj.exit.us13.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.3, %_ZNK6hermes12CompactArray3getEj.exit.us13.us ], [ %indvars.iv62.unr, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.prol.loopexit ] ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv62
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !20
  %i.lb = zext i8 %i.la to i16
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv62
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !15
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next63
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !20
  %i.lf = zext i8 %i.le to i16
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next63
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !15
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next63.1
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !20
  %i.lj = zext i8 %i.li to i16
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next63.1
  store i16 %i.lj, ptr %i.lk, align 2, !tbaa !15
  %indvars.iv.next63.2 = add nuw nsw i64 %indvars.iv62, 3 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next63.2
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !20
  %i.ln = zext i8 %i.lm to i16
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next63.2
  store i16 %i.ln, ptr %i.lo, align 2, !tbaa !15
  %indvars.iv.next63.3 = add nuw nsw i64 %indvars.iv62, 4 ; 2 uses
  %exitcond66.not.3 = icmp eq i64 %indvars.iv.next63.3, %wide.trip.count85
  br i1 %exitcond66.not.3, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us, !llvm.loop !60

_ZNK6hermes12CompactArray3getEj.exit.us13.us28:   ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol.loopexit, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28
  %indvars.iv57 = phi i64 [ %indvars.iv.next58.3, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28 ], [ %indvars.iv57.unr, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.prol.loopexit ] ; 6 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv57
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !15
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv57
  store i16 %i.lq, ptr %i.lr, align 2, !tbaa !15
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next58
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !15
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next58
  store i16 %i.lt, ptr %i.lu, align 2, !tbaa !15
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next58.1
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !15
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next58.1
  store i16 %i.lw, ptr %i.lx, align 2, !tbaa !15
  %indvars.iv.next58.2 = add nuw nsw i64 %indvars.iv57, 3 ; 2 uses
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.next58.2
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !15
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next58.2
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !15
  %indvars.iv.next58.3 = add nuw nsw i64 %indvars.iv57, 4 ; 2 uses
  %exitcond61.not.3 = icmp eq i64 %indvars.iv.next58.3, %wide.trip.count85
  br i1 %exitcond61.not.3, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28, !llvm.loop !61

_ZNK6hermes12CompactArray3getEj.exit.us13:        ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.prol.loopexit, %_ZN6hermes12CompactArray6trySetEjj.exit.us15.1
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %_ZN6hermes12CompactArray6trySetEjj.exit.us15.1 ], [ %indvars.iv67.unr, %_ZNK6hermes12CompactArray3getEj.exit.us13.prol.loopexit ] ; 4 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv67
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !3  ; 2 uses
  %i.md = icmp ult i32 %i.mc, 65536
  br i1 %i.md, label %bb.i, label %_ZN6hermes12CompactArray6trySetEjj.exit.us15

bb.i:                                             ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13
  %i.me = trunc nuw i32 %i.mc to i16
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv67
  store i16 %i.me, ptr %i.mf, align 2, !tbaa !15
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us15

_ZN6hermes12CompactArray6trySetEjj.exit.us15:     ; preds = %bb.i, %_ZNK6hermes12CompactArray3getEj.exit.us13
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next68
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !3  ; 2 uses
  %i.mi = icmp ult i32 %i.mh, 65536
  br i1 %i.mi, label %bb.j, label %_ZN6hermes12CompactArray6trySetEjj.exit.us15.1

bb.j:                                             ; preds = %_ZN6hermes12CompactArray6trySetEjj.exit.us15
  %i.mj = trunc nuw i32 %i.mh to i16
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next68
  store i16 %i.mj, ptr %i.mk, align 2, !tbaa !15
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us15.1

_ZN6hermes12CompactArray6trySetEjj.exit.us15.1:   ; preds = %bb.j, %_ZN6hermes12CompactArray6trySetEjj.exit.us15
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %indvars.iv.next68.1, %wide.trip.count85
  br i1 %exitcond71.not.1, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13, !llvm.loop !62

.lr.ph.split.us16:                                ; preds = %.lr.ph
  switch i32 %i.k, label %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader [
    i32 0, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader
    i32 1, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader
  ]

_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader: ; preds = %.lr.ph.split.us16
  %min.iters.check = icmp ult i32 %i.j, 8
  br i1 %min.iters.check, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader379, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader
  %n.vec = and i64 %wide.trip.count85, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %wide.load = load <4 x i16>, ptr %i.ml, align 2, !tbaa !15
  %wide.load106 = load <4 x i16>, ptr %i.mm, align 2, !tbaa !15
  %i.mn = zext <4 x i16> %wide.load to <4 x i32>
  %i.mo = zext <4 x i16> %wide.load106 to <4 x i32>
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store <4 x i32> %i.mn, ptr %i.mp, align 4, !tbaa !3
  store <4 x i32> %i.mo, ptr %i.mq, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mr = icmp eq i64 %index.next, %n.vec
  br i1 %i.mr, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count85
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader379

_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader379: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33

_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader: ; preds = %.lr.ph.split.us16
  %min.iters.check109 = icmp ult i32 %i.j, 12
  br i1 %min.iters.check109, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader377, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader
  %i.ms = shl nuw nsw i64 %wide.trip.count85, 2
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.ms
  %scevgep107 = getelementptr i8, ptr %i.m, i64 %wide.trip.count85
  %bound0 = icmp ult ptr %i.h, %scevgep107
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader377, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck
  %n.vec112 = and i64 %wide.trip.count85, 4294967288 ; 3 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next117, %vector.body113 ] ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.m, i64 %index114 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %wide.load115 = load <4 x i8>, ptr %i.mt, align 1, !tbaa !20, !alias.scope !64
  %wide.load116 = load <4 x i8>, ptr %i.mu, align 1, !tbaa !20, !alias.scope !64
  %i.mv = zext <4 x i8> %wide.load115 to <4 x i32>
  %i.mw = zext <4 x i8> %wide.load116 to <4 x i32>
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index114 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <4 x i32> %i.mv, ptr %i.mx, align 4, !tbaa !3, !alias.scope !67, !noalias !64
  store <4 x i32> %i.mw, ptr %i.my, align 4, !tbaa !3, !alias.scope !67, !noalias !64
  %index.next117 = add nuw i64 %index114, 8       ; 2 uses
  %i.mz = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.mz, label %middle.block118, label %vector.body113, !llvm.loop !69

middle.block118:                                  ; preds = %vector.body113
  %cmp.n119 = icmp eq i64 %n.vec112, %wide.trip.count85
  br i1 %cmp.n119, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader377

_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader377: ; preds = %vector.memcheck, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader, %middle.block118
  %indvars.iv47.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader ], [ %n.vec112, %middle.block118 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count85, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.prol.loopexit, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.prol

_ZNK6hermes12CompactArray3getEj.exit.us18.us.prol: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader377, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.prol
  %indvars.iv47.prol = phi i64 [ %indvars.iv.next48.prol, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.prol ], [ %indvars.iv47.ph, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader377 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.prol ], [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader377 ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv47.prol
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !20
  %i.nc = zext i8 %i.nb to i32
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv47.prol
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !3
  %indvars.iv.next48.prol = add nuw nsw i64 %indvars.iv47.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_1
