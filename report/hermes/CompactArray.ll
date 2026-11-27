Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CompactArray?download=true
inline.NumInlined: 17
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes12CompactArray7scaleUpEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 !guid !29 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %.fr37 = freeze i32 %i.c
  %i.d = add i32 %.fr37, 1                        ; 3 uses
  %i.e = zext i32 %i.a to i64
  %i.f = zext nneg i32 %i.d to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedCallocEmm(i64 noundef %i.e, i64 noundef %i.g) #4 ; 55 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !34     ; 13 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i32, ptr %i.b, align 4, !tbaa !35   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 44 uses
  %switch = icmp ult i32 %i.j, 3
  tail call void @llvm.assume(i1 %switch)
  %wide.trip.count85 = zext i32 %i.i to i64       ; 39 uses
  switch i32 %i.d, label %.lr.ph.split [
    i32 0, label %.lr.ph.split.us
    i32 1, label %.lr.ph.split.us11
    i32 2, label %.lr.ph.split.us16
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph
  switch i32 %i.j, label %_ZNK6hermes12CompactArray3getEj.exit.us.preheader [
    i32 0, label %iter.check282
    i32 1, label %iter.check247
  ]

iter.check247:                                    ; preds = %.lr.ph.split.us
  %min.iters.check203 = icmp ult i32 %i.i, 4
  br i1 %min.iters.check203, label %_ZNK6hermes12CompactArray3getEj.exit.us.us23.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %iter.check247
  %min.iters.check205 = icmp ult i32 %i.i, 16
  br i1 %min.iters.check205, label %vec.epilog.ph251, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %i.m = and i64 %wide.trip.count85, 12
  %n.vec207 = and i64 %wide.trip.count85, 4294967280 ; 4 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.ph206, %pred.store.continue243
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next244, %pred.store.continue243 ] ; 18 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index209 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load210 = load <8 x i16>, ptr %i.n, align 2, !tbaa !39 ; 9 uses
  %wide.load211 = load <8 x i16>, ptr %i.o, align 2, !tbaa !39 ; 9 uses
  %i.p = icmp ult <8 x i16> %wide.load210, splat (i16 256) ; 8 uses
  %i.q = icmp ult <8 x i16> %wide.load211, splat (i16 256) ; 8 uses
  %i.r = extractelement <8 x i1> %i.p, i64 0
  br i1 %i.r, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %vector.body208
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.t = bitcast <8 x i16> %wide.load210 to <16 x i8>
  %i.u = extractelement <16 x i8> %i.t, i64 0
  store i8 %i.u, ptr %i.s, align 1, !tbaa !40
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %vector.body208
  %i.v = extractelement <8 x i1> %i.p, i64 1
  br i1 %i.v, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = bitcast <8 x i16> %wide.load210 to <16 x i8>
  %i.z = extractelement <16 x i8> %i.y, i64 2
  store i8 %i.z, ptr %i.x, align 1, !tbaa !40
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.aa = extractelement <8 x i1> %i.p, i64 2
  br i1 %i.aa, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = bitcast <8 x i16> %wide.load210 to <16 x i8>
  %i.ae = extractelement <16 x i8> %i.ad, i64 4
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !40
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.af = extractelement <8 x i1> %i.p, i64 3
  br i1 %i.af, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.ai = bitcast <8 x i16> %wide.load210 to <16 x i8>
  %i.aj = extractelement <16 x i8> %i.ai, i64 6
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !40
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.ak = extractelement <8 x i1> %i.p, i64 4
  br i1 %i.ak, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = bitcast <8 x i16> %wide.load210 to <16 x i8>
  %i.ao = extractelement <16 x i8> %i.an, i64 8
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !40
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %i.ap = extractelement <8 x i1> %i.p, i64 5
  br i1 %i.ap, label %pred.store.if222, label %pred.store.continue223

pred.store.if222:                                 ; preds = %pred.store.continue221
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %i.as = bitcast <8 x i16> %wide.load210 to <16 x i8>
  %i.at = extractelement <16 x i8> %i.as, i64 10
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !40
  br label %pred.store.continue223

pred.store.continue223:                           ; preds = %pred.store.if222, %pred.store.continue221
  %i.au = extractelement <8 x i1> %i.p, i64 6
  br i1 %i.au, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %pred.store.continue223
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.ax = bitcast <8 x i16> %wide.load210 to <16 x i8>
  %i.ay = extractelement <16 x i8> %i.ax, i64 12
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !40
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %pred.store.continue223
  %i.az = extractelement <8 x i1> %i.p, i64 7
  br i1 %i.az, label %pred.store.if226, label %pred.store.continue227

pred.store.if226:                                 ; preds = %pred.store.continue225
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  %i.bc = bitcast <8 x i16> %wide.load210 to <16 x i8>
  %i.bd = extractelement <16 x i8> %i.bc, i64 14
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !40
  br label %pred.store.continue227

pred.store.continue227:                           ; preds = %pred.store.if226, %pred.store.continue225
  %i.be = extractelement <8 x i1> %i.q, i64 0
  br i1 %i.be, label %pred.store.if228, label %pred.store.continue229

pred.store.if228:                                 ; preds = %pred.store.continue227
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = bitcast <8 x i16> %wide.load211 to <16 x i8>
  %i.bi = extractelement <16 x i8> %i.bh, i64 0
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !40
  br label %pred.store.continue229

pred.store.continue229:                           ; preds = %pred.store.if228, %pred.store.continue227
  %i.bj = extractelement <8 x i1> %i.q, i64 1
  br i1 %i.bj, label %pred.store.if230, label %pred.store.continue231

pred.store.if230:                                 ; preds = %pred.store.continue229
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %i.bm = bitcast <8 x i16> %wide.load211 to <16 x i8>
  %i.bn = extractelement <16 x i8> %i.bm, i64 2
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !40
  br label %pred.store.continue231

pred.store.continue231:                           ; preds = %pred.store.if230, %pred.store.continue229
  %i.bo = extractelement <8 x i1> %i.q, i64 2
  br i1 %i.bo, label %pred.store.if232, label %pred.store.continue233

pred.store.if232:                                 ; preds = %pred.store.continue231
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.br = bitcast <8 x i16> %wide.load211 to <16 x i8>
  %i.bs = extractelement <16 x i8> %i.br, i64 4
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !40
  br label %pred.store.continue233

pred.store.continue233:                           ; preds = %pred.store.if232, %pred.store.continue231
  %i.bt = extractelement <8 x i1> %i.q, i64 3
  br i1 %i.bt, label %pred.store.if234, label %pred.store.continue235

pred.store.if234:                                 ; preds = %pred.store.continue233
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = bitcast <8 x i16> %wide.load211 to <16 x i8>
  %i.bx = extractelement <16 x i8> %i.bw, i64 6
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !40
  br label %pred.store.continue235

pred.store.continue235:                           ; preds = %pred.store.if234, %pred.store.continue233
  %i.by = extractelement <8 x i1> %i.q, i64 4
  br i1 %i.by, label %pred.store.if236, label %pred.store.continue237

pred.store.if236:                                 ; preds = %pred.store.continue235
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 %index209
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
end_hunk_0
begin_hunk_1_@_ZN6hermes12CompactArray7scaleUpEv:bb.a
  %i.ij = extractelement <8 x i16> %i.ii, i64 4
  store i16 %i.ij, ptr %i.ih, align 2, !tbaa !39
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.ik = extractelement <4 x i1> %i.hb, i64 3
  br i1 %i.ik, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index181
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 14
  %i.in = bitcast <4 x i32> %wide.load183 to <8 x i16>
  %i.io = extractelement <8 x i16> %i.in, i64 6
  store i16 %i.io, ptr %i.im, align 2, !tbaa !39
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %index.next198 = add nuw i64 %index181, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next198, %n.vec179
  br i1 %i.ip, label %middle.block199, label %vector.body180, !llvm.loop !19

middle.block199:                                  ; preds = %pred.store.continue197
  %cmp.n200 = icmp eq i64 %n.vec179, %wide.trip.count85
  br i1 %cmp.n200, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader327

_ZNK6hermes12CompactArray3getEj.exit.us13.preheader327: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader, %middle.block199
  %indvars.iv67.ph = phi i64 [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader ], [ %n.vec179, %middle.block199 ]
  br label %_ZNK6hermes12CompactArray3getEj.exit.us13

_ZNK6hermes12CompactArray3getEj.exit.us13.us:     ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader, %_ZNK6hermes12CompactArray3getEj.exit.us13.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %_ZNK6hermes12CompactArray3getEj.exit.us13.us ], [ %indvars.iv62.ph, %_ZNK6hermes12CompactArray3getEj.exit.us13.us.preheader ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv62
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !40
  %i.is = zext i8 %i.ir to i16
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv62
  store i16 %i.is, ptr %i.it, align 2, !tbaa !39
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count85
  br i1 %exitcond66.not, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us, !llvm.loop !20

_ZNK6hermes12CompactArray3getEj.exit.us13.us28:   ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28 ], [ %indvars.iv57.ph, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28.preheader ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv57
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !39
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv57
  store i16 %i.iv, ptr %i.iw, align 2, !tbaa !39
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count85
  br i1 %exitcond61.not, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13.us28, !llvm.loop !21

_ZNK6hermes12CompactArray3getEj.exit.us13:        ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader327, %_ZN6hermes12CompactArray6trySetEjj.exit.us15
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %_ZN6hermes12CompactArray6trySetEjj.exit.us15 ], [ %indvars.iv67.ph, %_ZNK6hermes12CompactArray3getEj.exit.us13.preheader327 ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv67
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !6  ; 2 uses
  %i.iz = icmp ult i32 %i.iy, 65536
  br i1 %i.iz, label %bb.d, label %_ZN6hermes12CompactArray6trySetEjj.exit.us15

bb.d:                                             ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us13
  %i.ja = trunc nuw i32 %i.iy to i16
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv67
  store i16 %i.ja, ptr %i.jb, align 2, !tbaa !39
  br label %_ZN6hermes12CompactArray6trySetEjj.exit.us15

_ZN6hermes12CompactArray6trySetEjj.exit.us15:     ; preds = %bb.d, %_ZNK6hermes12CompactArray3getEj.exit.us13
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count85
  br i1 %exitcond71.not, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us13, !llvm.loop !22

.lr.ph.split.us16:                                ; preds = %.lr.ph
  %min.iters.check120 = icmp ult i32 %i.i, 8      ; 3 uses
  switch i32 %i.j, label %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader [
    i32 0, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader
    i32 1, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader
  ]

_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader: ; preds = %.lr.ph.split.us16
  br i1 %min.iters.check120, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader335, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader
  %n.vec = and i64 %wide.trip.count85, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %wide.load = load <4 x i16>, ptr %i.jc, align 2, !tbaa !39
  %wide.load106 = load <4 x i16>, ptr %i.jd, align 2, !tbaa !39
  %i.je = zext <4 x i16> %wide.load to <4 x i32>
  %i.jf = zext <4 x i16> %wide.load106 to <4 x i32>
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store <4 x i32> %i.je, ptr %i.jg, align 4, !tbaa !6
  store <4 x i32> %i.jf, ptr %i.jh, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count85
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader335

_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader335: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33

_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader: ; preds = %.lr.ph.split.us16
  br i1 %min.iters.check120, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader333, label %vector.ph109

vector.ph109:                                     ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader
  %n.vec110 = and i64 %wide.trip.count85, 4294967288 ; 3 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.l, i64 %index112 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %wide.load113 = load <4 x i8>, ptr %i.jj, align 1, !tbaa !40
  %wide.load114 = load <4 x i8>, ptr %i.jk, align 1, !tbaa !40
  %i.jl = zext <4 x i8> %wide.load113 to <4 x i32>
  %i.jm = zext <4 x i8> %wide.load114 to <4 x i32>
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index112 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store <4 x i32> %i.jl, ptr %i.jn, align 4, !tbaa !6
  store <4 x i32> %i.jm, ptr %i.jo, align 4, !tbaa !6
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.jp, label %middle.block116, label %vector.body111, !llvm.loop !24

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %n.vec110, %wide.trip.count85
  br i1 %cmp.n117, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader333

_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader333: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader, %middle.block116
  %indvars.iv47.ph = phi i64 [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader ], [ %n.vec110, %middle.block116 ]
  br label %_ZNK6hermes12CompactArray3getEj.exit.us18.us

_ZNK6hermes12CompactArray3getEj.exit.us18.preheader: ; preds = %.lr.ph.split.us16
  br i1 %min.iters.check120, label %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader331, label %vector.ph121

vector.ph121:                                     ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader
  %n.vec122 = and i64 %wide.trip.count85, 4294967288 ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index124 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load125 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !6
  %wide.load126 = load <4 x i32>, ptr %i.jr, align 4, !tbaa !6
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index124 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store <4 x i32> %wide.load125, ptr %i.js, align 4, !tbaa !6
  store <4 x i32> %wide.load126, ptr %i.jt, align 4, !tbaa !6
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %i.ju = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.ju, label %middle.block128, label %vector.body123, !llvm.loop !25

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %n.vec122, %wide.trip.count85
  br i1 %cmp.n129, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader331

_ZNK6hermes12CompactArray3getEj.exit.us18.preheader331: ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader, %middle.block128
  %indvars.iv52.ph = phi i64 [ 0, %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader ], [ %n.vec122, %middle.block128 ]
  br label %_ZNK6hermes12CompactArray3getEj.exit.us18

_ZNK6hermes12CompactArray3getEj.exit.us18.us:     ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader333, %_ZNK6hermes12CompactArray3getEj.exit.us18.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %_ZNK6hermes12CompactArray3getEj.exit.us18.us ], [ %indvars.iv47.ph, %_ZNK6hermes12CompactArray3getEj.exit.us18.us.preheader333 ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv47
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !40
  %i.jx = zext i8 %i.jw to i32
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv47
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !6
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count85
  br i1 %exitcond51.not, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us, !llvm.loop !26

_ZNK6hermes12CompactArray3getEj.exit.us18.us33:   ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader335, %_ZNK6hermes12CompactArray3getEj.exit.us18.us33
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6hermes12CompactArray3getEj.exit.us18.us33 ], [ %indvars.iv.ph, %_ZNK6hermes12CompactArray3getEj.exit.us18.us33.preheader335 ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !39
  %i.kb = zext i16 %i.ka to i32
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count85
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us18.us33, !llvm.loop !27

_ZNK6hermes12CompactArray3getEj.exit.us18:        ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader331, %_ZNK6hermes12CompactArray3getEj.exit.us18
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %_ZNK6hermes12CompactArray3getEj.exit.us18 ], [ %indvars.iv52.ph, %_ZNK6hermes12CompactArray3getEj.exit.us18.preheader331 ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv52
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !6
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv52
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !6
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count85
  br i1 %exitcond56.not, label %._crit_edge, label %_ZNK6hermes12CompactArray3getEj.exit.us18, !llvm.loop !28

._crit_edge:                                      ; preds = %_ZNK6hermes12CompactArray3getEj.exit.us18.us33, %_ZNK6hermes12CompactArray3getEj.exit.us18.us, %_ZNK6hermes12CompactArray3getEj.exit.us18, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28, %_ZNK6hermes12CompactArray3getEj.exit.us13.us, %_ZN6hermes12CompactArray6trySetEjj.exit.us15, %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25, %_ZNK6hermes12CompactArray3getEj.exit.us.us, %_ZN6hermes12CompactArray6trySetEjj.exit.us, %middle.block, %middle.block116, %middle.block128, %middle.block141, %vec.epilog.middle.block, %middle.block160, %vec.epilog.middle.block173, %middle.block199, %middle.block245, %vec.epilog.middle.block266, %middle.block280, %vec.epilog.middle.block293, %middle.block321, %.._crit_edge_crit_edge
  %i.kg = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.l, %middle.block199 ], [ %i.l, %middle.block245 ], [ %i.l, %middle.block280 ], [ %i.l, %middle.block321 ], [ %i.l, %middle.block116 ], [ %i.l, %middle.block128 ], [ %i.l, %middle.block141 ], [ %i.l, %middle.block160 ], [ %i.l, %middle.block ], [ %i.l, %_ZNK6hermes12CompactArray3getEj.exit.us18.us ], [ %i.l, %vec.epilog.middle.block293 ], [ %i.l, %_ZN6hermes12CompactArray6trySetEjj.exit.us ], [ %i.l, %vec.epilog.middle.block266 ], [ %i.l, %_ZNK6hermes12CompactArray3getEj.exit.us.us ], [ %i.l, %_ZN6hermes12CompactArray6trySetEjj.exit.us.us25 ], [ %i.l, %vec.epilog.middle.block173 ], [ %i.l, %_ZN6hermes12CompactArray6trySetEjj.exit.us15 ], [ %i.l, %vec.epilog.middle.block ], [ %i.l, %_ZNK6hermes12CompactArray3getEj.exit.us13.us ], [ %i.l, %_ZNK6hermes12CompactArray3getEj.exit.us13.us28 ], [ %i.l, %_ZNK6hermes12CompactArray3getEj.exit.us18 ], [ %i.l, %_ZNK6hermes12CompactArray3getEj.exit.us18.us33 ]
  store i32 %i.a, ptr %0, align 8, !tbaa !6
  store i32 %i.d, ptr %i.b, align 4, !tbaa !46
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.kh, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.kg) #4
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph
  unreachable
}

declare noalias noundef nonnull ptr @_ZN6hermes13checkedCallocEmm(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = distinct !{!7, !41, !42, !43}
!8 = distinct !{!8, !41, !42, !43}
!9 = distinct !{!9, !41, !42, !43}
!10 = distinct !{!10, !41, !42, !43}
!11 = distinct !{!11, !41, !42, !43}
!12 = distinct !{!12, !41, !43, !42}
!13 = distinct !{!13, !41, !43, !42}
!14 = distinct !{!14, !41, !43, !42}
!15 = distinct !{!15, !41, !42, !43}
!16 = distinct !{!16, !41, !42, !43}
!17 = distinct !{!17, !41, !42, !43}
!18 = distinct !{!18, !41, !42, !43}
!19 = distinct !{!19, !41, !42, !43}
!20 = distinct !{!20, !41, !43, !42}
!21 = distinct !{!21, !41, !43, !42}
!22 = distinct !{!22, !41, !43, !42}
!23 = distinct !{!23, !41, !42, !43}
!24 = distinct !{!24, !41, !42, !43}
!25 = distinct !{!25, !41, !42, !43}
!26 = distinct !{!26, !41, !43, !42}
!27 = distinct !{!27, !41, !43, !42}
!28 = distinct !{!28, !41, !43, !42}
!29 = !{i64 -5433259502582782170}
!30 = !{!"_ZTSN6hermes12CompactArray5ScaleE", !4, i64 0}
!31 = !{!"any pointer", !4, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"_ZTSN6hermes12CompactArrayE", !5, i64 0, !30, i64 4, !32, i64 8}
!34 = !{!33, !5, i64 0}
!35 = !{!33, !30, i64 4}
!36 = !{!32, !32, i64 0}
!37 = !{!33, !32, i64 8}
!38 = !{!"short", !4, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!4, !4, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", i32 4, i32 12}
!45 = !{!"branch_weights", i32 4, i32 28}
!46 = !{!30, !30, i64 0}
end_hunk_1
