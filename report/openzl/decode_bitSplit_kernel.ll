Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_bitSplit_kernel?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@switch.table.ZL_bitSplitDecode = private unnamed_addr constant [4 x i8] c"\01\02\04\08", align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZL_bitSplitDecode(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %decodeBf16.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 2
  %.not8.i = icmp eq i64 %6, 3                    ; 3 uses
  %or.cond.i = and i1 %.not.i, %.not8.i
  br i1 %or.cond.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.preheader.preheader
  %i.b = load i8, ptr %5, align 1, !tbaa !11
  switch i8 %i.b, label %isFp64Pattern.exit.thread [
    i8 7, label %bb.c
    i8 10, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %.not10.i = icmp eq i8 %i.d, 8
  br i1 %.not10.i, label %bb.d, label %isFp64Pattern.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %.not11.i = icmp eq i8 %i.f, 1
  br i1 %.not11.i, label %bb.e, label %isFp64Pattern.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %4, align 8, !tbaa !13
  %.not12.i = icmp eq i64 %i.g, 1
  br i1 %.not12.i, label %bb.f, label %isFp64Pattern.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %.not13.i = icmp eq i64 %i.i, 1
  br i1 %.not13.i, label %isBf16Pattern.exit, label %isFp64Pattern.exit.thread

isBf16Pattern.exit:                               ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %.not14.i = icmp eq i64 %i.k, 1
  br i1 %.not14.i, label %iter.check290, label %isFp64Pattern.exit.thread

iter.check290:                                    ; preds = %isBf16Pattern.exit
  %i.l = load ptr, ptr %3, align 8, !tbaa !15     ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 7 uses
  %min.iters.check262 = icmp ult i64 %2, 4
  br i1 %min.iters.check262, label %vec.epilog.scalar.ph292.preheader, label %vector.memcheck263

vector.memcheck263:                               ; preds = %iter.check290
  %i.q = shl i64 %2, 1
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 3 uses
  %i.s = getelementptr i8, ptr %i.l, i64 %2
  %bound0264 = icmp ult ptr %0, %i.s
  %bound0264.a = icmp ult ptr %i.l, %i.r
  %found.conflict266 = and i1 %bound0264, %bound0264.a
  %7 = getelementptr i8, ptr %i.n, i64 %2
  %bound0267 = icmp ult ptr %0, %7
  %bound1268 = icmp ult ptr %i.n, %i.r
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %found.conflict266, %found.conflict269
  %8 = getelementptr i8, ptr %i.p, i64 %2
  %bound0271 = icmp ult ptr %0, %8
  %bound1272 = icmp ult ptr %i.p, %i.r
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %conflict.rdx270, %found.conflict273
  br i1 %conflict.rdx274, label %vec.epilog.scalar.ph292.preheader, label %vector.main.loop.iter.check275

vector.main.loop.iter.check275:                   ; preds = %vector.memcheck263
  %min.iters.check276 = icmp ult i64 %2, 16
  br i1 %min.iters.check276, label %vec.epilog.ph294, label %vector.ph277

vector.ph277:                                     ; preds = %vector.main.loop.iter.check275
  %i.t = and i64 %2, 12
  %n.vec278 = and i64 %2, -16                     ; 4 uses
  br label %vector.body279

vector.body279:                                   ; preds = %vector.ph277, %vector.body279
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next287, %vector.body279 ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %index280 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load281 = load <8 x i8>, ptr %i.u, align 1, !tbaa !11, !alias.scope !50
  %wide.load282 = load <8 x i8>, ptr %i.v, align 1, !tbaa !11, !alias.scope !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %index280 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.load283 = load <8 x i8>, ptr %i.w, align 1, !tbaa !11, !alias.scope !51
  %wide.load284 = load <8 x i8>, ptr %i.x, align 1, !tbaa !11, !alias.scope !51
  %i.y = zext <8 x i8> %wide.load283 to <8 x i16>
  %i.z = zext <8 x i8> %wide.load284 to <8 x i16>
  %i.aa = shl nuw nsw <8 x i16> %i.y, splat (i16 7)
  %i.ab = shl nuw nsw <8 x i16> %i.z, splat (i16 7)
  %i.ac = zext <8 x i8> %wide.load281 to <8 x i16>
  %i.ad = zext <8 x i8> %wide.load282 to <8 x i16>
  %i.ae = or <8 x i16> %i.aa, %i.ac
  %i.af = or <8 x i16> %i.ab, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 %index280 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %wide.load285 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !11, !alias.scope !52
  %wide.load286 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !11, !alias.scope !52
  %i.ai = zext <8 x i8> %wide.load285 to <8 x i16>
  %i.aj = zext <8 x i8> %wide.load286 to <8 x i16>
  %i.ak = shl <8 x i16> %i.ai, splat (i16 15)
  %i.al = shl <8 x i16> %i.aj, splat (i16 15)
  %i.am = or disjoint <8 x i16> %i.ae, %i.ak
  %i.an = or disjoint <8 x i16> %i.af, %i.al
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index280 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <8 x i16> %i.am, ptr %i.ao, align 2, !tbaa !17, !alias.scope !53, !noalias !54
  store <8 x i16> %i.an, ptr %i.ap, align 2, !tbaa !17, !alias.scope !53, !noalias !54
  %index.next287 = add nuw i64 %index280, 16      ; 2 uses
  %i.aq = icmp eq i64 %index.next287, %n.vec278
  br i1 %i.aq, label %middle.block288, label %vector.body279, !llvm.loop !25

middle.block288:                                  ; preds = %vector.body279
  %cmp.n289 = icmp eq i64 %2, %n.vec278
  br i1 %cmp.n289, label %decodeBf16.exit, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block288
  %min.epilog.iters.check293 = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check293, label %vec.epilog.scalar.ph292.preheader, label %vec.epilog.ph294, !prof !57

vec.epilog.ph294:                                 ; preds = %vector.main.loop.iter.check275, %vec.epilog.iter.check291
  %vec.epilog.resume.val295 = phi i64 [ %n.vec278, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check275 ]
  %n.vec296 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body297

vec.epilog.vector.body297:                        ; preds = %vec.epilog.vector.body297, %vec.epilog.ph294
  %index298 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph294 ], [ %index.next302, %vec.epilog.vector.body297 ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %index298
  %wide.load299 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !11, !alias.scope !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %index298
  %wide.load300 = load <4 x i8>, ptr %i.as, align 1, !tbaa !11, !alias.scope !51
  %i.at = zext <4 x i8> %wide.load300 to <4 x i16>
  %i.au = shl nuw nsw <4 x i16> %i.at, splat (i16 7)
  %i.av = zext <4 x i8> %wide.load299 to <4 x i16>
  %i.aw = or <4 x i16> %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 %index298
  %wide.load301 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !11, !alias.scope !52
  %i.ay = zext <4 x i8> %wide.load301 to <4 x i16>
  %i.az = shl <4 x i16> %i.ay, splat (i16 15)
  %i.ba = or disjoint <4 x i16> %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index298
  store <4 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !17, !alias.scope !53, !noalias !54
  %index.next302 = add nuw i64 %index298, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next302, %n.vec296
  br i1 %i.bc, label %vec.epilog.middle.block303, label %vec.epilog.vector.body297, !llvm.loop !26

vec.epilog.middle.block303:                       ; preds = %vec.epilog.vector.body297
  %cmp.n304 = icmp eq i64 %2, %n.vec296
  br i1 %cmp.n304, label %decodeBf16.exit, label %vec.epilog.scalar.ph292.preheader

vec.epilog.scalar.ph292.preheader:                ; preds = %iter.check290, %vector.memcheck263, %vec.epilog.iter.check291, %vec.epilog.middle.block303
  %.017.i.ph = phi i64 [ 0, %iter.check290 ], [ 0, %vector.memcheck263 ], [ %n.vec278, %vec.epilog.iter.check291 ], [ %n.vec296, %vec.epilog.middle.block303 ] ; 7 uses
  %.neg317 = or disjoint i64 %.017.i.ph, 1
  %xtraiter313 = and i64 %2, 1
  %lcmp.mod314.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod314.not, label %vec.epilog.scalar.ph292.prol.loopexit, label %vec.epilog.scalar.ph292.prol

vec.epilog.scalar.ph292.prol:                     ; preds = %vec.epilog.scalar.ph292.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.017.i.ph
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 %.017.i.ph
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bh = zext i8 %i.bg to i16
  %i.bi = shl nuw nsw i16 %i.bh, 7
  %i.bj = zext i8 %i.be to i16
  %i.bk = or i16 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 %.017.i.ph
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bn = zext i8 %i.bm to i16
  %i.bo = shl i16 %i.bn, 15
  %i.bp = or disjoint i16 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.017.i.ph
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !17
  %i.br = or disjoint i64 %.017.i.ph, 1
  br label %vec.epilog.scalar.ph292.prol.loopexit

vec.epilog.scalar.ph292.prol.loopexit:            ; preds = %vec.epilog.scalar.ph292.prol, %vec.epilog.scalar.ph292.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %vec.epilog.scalar.ph292.preheader ], [ %i.br, %vec.epilog.scalar.ph292.prol ]
  %i.bs = icmp eq i64 %2, %.neg317
  br i1 %i.bs, label %decodeBf16.exit, label %vec.epilog.scalar.ph292

vec.epilog.scalar.ph292:                          ; preds = %vec.epilog.scalar.ph292.prol.loopexit, %vec.epilog.scalar.ph292
  %.017.i = phi i64 [ %i.cw, %vec.epilog.scalar.ph292 ], [ %.017.i.unr, %vec.epilog.scalar.ph292.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 %.017.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 %.017.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = zext i8 %i.bw to i16
  %i.by = shl nuw nsw i16 %i.bx, 7
  %i.bz = zext i8 %i.bu to i16
  %i.ca = or i16 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 %.017.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = zext i8 %i.cc to i16
  %i.ce = shl i16 %i.cd, 15
  %i.cf = or disjoint i16 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.017.i
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !17
  %i.ch = add nuw i64 %.017.i, 1                  ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %i.cm = zext i8 %i.cl to i16
  %i.cn = shl nuw nsw i16 %i.cm, 7
  %i.co = zext i8 %i.cj to i16
  %i.cp = or i16 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ch
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = zext i8 %i.cr to i16
  %i.ct = shl i16 %i.cs, 15
  %i.cu = or disjoint i16 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ch
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !17
  %i.cw = add nuw i64 %.017.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.cw, %2
  br i1 %exitcond.not.i.1, label %decodeBf16.exit, label %vec.epilog.scalar.ph292, !llvm.loop !27

bb.g:                                             ; preds = %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11
  %.not10.i67 = icmp eq i8 %i.cy, 5
  br i1 %.not10.i67, label %bb.h, label %isFp64Pattern.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11
  %.not11.i68 = icmp eq i8 %i.da, 1
  br i1 %.not11.i68, label %bb.i, label %isFp64Pattern.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.db = load i64, ptr %4, align 8, !tbaa !13
  %.not12.i69 = icmp eq i64 %i.db, 2
  br i1 %.not12.i69, label %bb.j, label %isFp64Pattern.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !13
  %.not13.i70 = icmp eq i64 %i.dd, 1
  br i1 %.not13.i70, label %isFp16Pattern.exit, label %isFp64Pattern.exit.thread

isFp16Pattern.exit:                               ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !13
  %.not14.i71 = icmp eq i64 %i.df, 1
  br i1 %.not14.i71, label %iter.check, label %isFp64Pattern.exit.thread

iter.check:                                       ; preds = %isFp16Pattern.exit
  %i.dg = load ptr, ptr %3, align 8, !tbaa !15    ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !15 ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !15 ; 7 uses
  %min.iters.check211 = icmp ult i64 %2, 4
  br i1 %min.iters.check211, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck212

vector.memcheck212:                               ; preds = %iter.check
  %i.dl = shl i64 %2, 1                           ; 2 uses
  %i.dm = getelementptr i8, ptr %0, i64 %i.dl     ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dg, i64 %i.dl
  %bound0213 = icmp ult ptr %0, %i.dn
  %bound0213.a = icmp ult ptr %i.dg, %i.dm
  %found.conflict215 = and i1 %bound0213, %bound0213.a
  %9 = getelementptr i8, ptr %i.di, i64 %2
  %bound0216 = icmp ult ptr %0, %9
  %bound1217 = icmp ult ptr %i.di, %i.dm
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %found.conflict215, %found.conflict218
  %10 = getelementptr i8, ptr %i.dk, i64 %2
  %bound0220 = icmp ult ptr %0, %10
  %bound1221 = icmp ult ptr %i.dk, %i.dm
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %conflict.rdx219, %found.conflict222
  br i1 %conflict.rdx223, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck212
  %min.iters.check224 = icmp ult i64 %2, 16
  br i1 %min.iters.check224, label %vec.epilog.ph, label %vector.ph225

vector.ph225:                                     ; preds = %vector.main.loop.iter.check
  %i.do = and i64 %2, 12
  %n.vec226 = and i64 %2, -16                     ; 4 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.ph225, %vector.body227
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next235, %vector.body227 ] ; 5 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %index228 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load229 = load <8 x i16>, ptr %i.dp, align 2, !tbaa !17, !alias.scope !58
  %wide.load230 = load <8 x i16>, ptr %i.dq, align 2, !tbaa !17, !alias.scope !58
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 %index228 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %wide.load231 = load <8 x i8>, ptr %i.dr, align 1, !tbaa !11, !alias.scope !59
  %wide.load232 = load <8 x i8>, ptr %i.ds, align 1, !tbaa !11, !alias.scope !59
  %i.dt = zext <8 x i8> %wide.load231 to <8 x i16>
  %i.du = zext <8 x i8> %wide.load232 to <8 x i16>
  %i.dv = shl <8 x i16> %i.dt, splat (i16 10)
  %i.dw = shl <8 x i16> %i.du, splat (i16 10)
  %i.dx = or <8 x i16> %i.dv, %wide.load229
  %i.dy = or <8 x i16> %i.dw, %wide.load230
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index228 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %wide.load233 = load <8 x i8>, ptr %i.dz, align 1, !tbaa !11, !alias.scope !60
  %wide.load234 = load <8 x i8>, ptr %i.ea, align 1, !tbaa !11, !alias.scope !60
  %i.eb = zext <8 x i8> %wide.load233 to <8 x i16>
  %i.ec = zext <8 x i8> %wide.load234 to <8 x i16>
  %i.ed = shl <8 x i16> %i.eb, splat (i16 15)
  %i.ee = shl <8 x i16> %i.ec, splat (i16 15)
  %i.ef = or <8 x i16> %i.dx, %i.ed
  %i.eg = or <8 x i16> %i.dy, %i.ee
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index228 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <8 x i16> %i.ef, ptr %i.eh, align 2, !tbaa !17, !alias.scope !61, !noalias !62
  store <8 x i16> %i.eg, ptr %i.ei, align 2, !tbaa !17, !alias.scope !61, !noalias !62
  %index.next235 = add nuw i64 %index228, 16      ; 2 uses
  %i.ej = icmp eq i64 %index.next235, %n.vec226
  br i1 %i.ej, label %middle.block236, label %vector.body227, !llvm.loop !33

middle.block236:                                  ; preds = %vector.body227
  %cmp.n237 = icmp eq i64 %2, %n.vec226
  br i1 %cmp.n237, label %decodeBf16.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block236
  %min.epilog.iters.check = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec226, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec238 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index239 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 5 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %index239
  %wide.load240 = load <4 x i16>, ptr %i.ek, align 2, !tbaa !17, !alias.scope !58
  %i.el = getelementptr inbounds nuw i8, ptr %i.di, i64 %index239
  %wide.load241 = load <4 x i8>, ptr %i.el, align 1, !tbaa !11, !alias.scope !59
  %i.em = zext <4 x i8> %wide.load241 to <4 x i16>
  %i.en = shl <4 x i16> %i.em, splat (i16 10)
  %i.eo = or <4 x i16> %i.en, %wide.load240
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index239
  %wide.load242 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !11, !alias.scope !60
  %i.eq = zext <4 x i8> %wide.load242 to <4 x i16>
  %i.er = shl <4 x i16> %i.eq, splat (i16 15)
  %i.es = or <4 x i16> %i.eo, %i.er
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index239
  store <4 x i16> %i.es, ptr %i.et, align 2, !tbaa !17, !alias.scope !61, !noalias !62
  %index.next243 = add nuw i64 %index239, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next243, %n.vec238
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %2, %n.vec238
  br i1 %cmp.n244, label %decodeBf16.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck212, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.i72.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck212 ], [ %n.vec226, %vec.epilog.iter.check ], [ %n.vec238, %vec.epilog.middle.block ] ; 7 uses
  %.neg316 = or disjoint i64 %.017.i72.ph, 1
  %xtraiter311 = and i64 %2, 1
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %.017.i72.ph
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 %.017.i72.ph
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = zext i8 %i.ey to i16
  %i.fa = shl i16 %i.ez, 10
  %i.fb = or i16 %i.fa, %i.ew
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.017.i72.ph
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !11
  %i.fe = zext i8 %i.fd to i16
  %i.ff = shl i16 %i.fe, 15
  %i.fg = or i16 %i.fb, %i.ff
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.017.i72.ph
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !17
  %i.fi = or disjoint i64 %.017.i72.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.017.i72.unr = phi i64 [ %.017.i72.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fi, %vec.epilog.scalar.ph.prol ]
  %i.fj = icmp eq i64 %2, %.neg316
  br i1 %i.fj, label %decodeBf16.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.017.i72 = phi i64 [ %i.gl, %vec.epilog.scalar.ph ], [ %.017.i72.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %.017.i72
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.di, i64 %.017.i72
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !11
  %i.fo = zext i8 %i.fn to i16
  %i.fp = shl i16 %i.fo, 10
  %i.fq = or i16 %i.fp, %i.fl
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.017.i72
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !11
  %i.ft = zext i8 %i.fs to i16
  %i.fu = shl i16 %i.ft, 15
  %i.fv = or i16 %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.017.i72
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !17
  %i.fx = add nuw i64 %.017.i72, 1                ; 4 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fx
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !11
  %i.gc = zext i8 %i.gb to i16
  %i.gd = shl i16 %i.gc, 10
  %i.ge = or i16 %i.gd, %i.fz
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fx
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11
  %i.gh = zext i8 %i.gg to i16
  %i.gi = shl i16 %i.gh, 15
  %i.gj = or i16 %i.ge, %i.gi
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fx
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !17
  %i.gl = add nuw i64 %.017.i72, 2                ; 2 uses
  %exitcond.not.i73.1 = icmp eq i64 %i.gl, %2
  br i1 %exitcond.not.i73.1, label %decodeBf16.exit, label %vec.epilog.scalar.ph, !llvm.loop !35

bb.k:                                             ; preds = %.preheader.preheader
  %.not.i74 = icmp eq i64 %1, 4
  %or.cond.i76 = and i1 %.not.i74, %.not8.i
  br i1 %or.cond.i76, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.gm = load i8, ptr %5, align 1, !tbaa !11
  %.not9.i78 = icmp eq i8 %i.gm, 23
  br i1 %.not9.i78, label %bb.m, label %isFp64Pattern.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !11
  %.not10.i79 = icmp eq i8 %i.go, 8
  br i1 %.not10.i79, label %bb.n, label %isFp64Pattern.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !11
  %.not11.i80 = icmp eq i8 %i.gq, 1
  br i1 %.not11.i80, label %bb.o, label %isFp64Pattern.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.gr = load i64, ptr %4, align 8, !tbaa !13
  %.not12.i81 = icmp eq i64 %i.gr, 4
  br i1 %.not12.i81, label %bb.p, label %isFp64Pattern.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !13
  %.not13.i82 = icmp eq i64 %i.gt, 1
  br i1 %.not13.i82, label %isFp32Pattern.exit, label %isFp64Pattern.exit.thread

isFp32Pattern.exit:                               ; preds = %bb.p
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !13
  %.not14.i83 = icmp eq i64 %i.gv, 1
  br i1 %.not14.i83, label %bb.q, label %isFp64Pattern.exit.thread

bb.q:                                             ; preds = %isFp32Pattern.exit
  %i.gw = load ptr, ptr %3, align 8, !tbaa !15    ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !15 ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !15 ; 6 uses
  %min.iters.check168 = icmp ult i64 %2, 12
  br i1 %min.iters.check168, label %scalar.ph167.preheader, label %vector.memcheck169

vector.memcheck169:                               ; preds = %bb.q
  %i.hb = shl i64 %2, 2                           ; 2 uses
  %i.hc = getelementptr i8, ptr %0, i64 %i.hb     ; 3 uses
  %i.hd = getelementptr i8, ptr %i.gw, i64 %i.hb
  %bound0170 = icmp ult ptr %0, %i.hd
  %bound0170.a = icmp ult ptr %i.gw, %i.hc
  %found.conflict172 = and i1 %bound0170, %bound0170.a
  %11 = getelementptr i8, ptr %i.gy, i64 %2
  %bound0173 = icmp ult ptr %0, %11
  %bound1174 = icmp ult ptr %i.gy, %i.hc
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %found.conflict172, %found.conflict175
  %12 = getelementptr i8, ptr %i.ha, i64 %2
  %bound0177 = icmp ult ptr %0, %12
  %bound1178 = icmp ult ptr %i.ha, %i.hc
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  br i1 %conflict.rdx180, label %scalar.ph167.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck169
  %n.vec182 = and i64 %2, -8                      ; 3 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next191, %vector.body183 ] ; 5 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index184 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load185 = load <4 x i32>, ptr %i.he, align 4, !tbaa !19, !alias.scope !63
  %wide.load186 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !19, !alias.scope !63
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 %index184 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %wide.load187 = load <4 x i8>, ptr %i.hg, align 1, !tbaa !11, !alias.scope !64
  %wide.load188 = load <4 x i8>, ptr %i.hh, align 1, !tbaa !11, !alias.scope !64
  %i.hi = zext <4 x i8> %wide.load187 to <4 x i32>
  %i.hj = zext <4 x i8> %wide.load188 to <4 x i32>
  %i.hk = shl nuw nsw <4 x i32> %i.hi, splat (i32 23)
  %i.hl = shl nuw nsw <4 x i32> %i.hj, splat (i32 23)
  %i.hm = or <4 x i32> %i.hk, %wide.load185
  %i.hn = or <4 x i32> %i.hl, %wide.load186
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ha, i64 %index184 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %wide.load189 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !11, !alias.scope !65
  %wide.load190 = load <4 x i8>, ptr %i.hp, align 1, !tbaa !11, !alias.scope !65
  %i.hq = zext <4 x i8> %wide.load189 to <4 x i32>
  %i.hr = zext <4 x i8> %wide.load190 to <4 x i32>
  %i.hs = shl <4 x i32> %i.hq, splat (i32 31)
  %i.ht = shl <4 x i32> %i.hr, splat (i32 31)
  %i.hu = or <4 x i32> %i.hm, %i.hs
  %i.hv = or <4 x i32> %i.hn, %i.ht
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index184 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <4 x i32> %i.hu, ptr %i.hw, align 4, !tbaa !19, !alias.scope !66, !noalias !67
  store <4 x i32> %i.hv, ptr %i.hx, align 4, !tbaa !19, !alias.scope !66, !noalias !67
  %index.next191 = add nuw i64 %index184, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next191, %n.vec182
  br i1 %i.hy, label %middle.block192, label %vector.body183, !llvm.loop !41

middle.block192:                                  ; preds = %vector.body183
  %cmp.n193 = icmp eq i64 %2, %n.vec182
  br i1 %cmp.n193, label %decodeBf16.exit, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %vector.memcheck169, %bb.q, %middle.block192
  %.017.i84.ph = phi i64 [ 0, %vector.memcheck169 ], [ 0, %bb.q ], [ %n.vec182, %middle.block192 ] ; 7 uses
  %.neg315 = or disjoint i64 %.017.i84.ph, 1
  %xtraiter309 = and i64 %2, 1
  %lcmp.mod310.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %scalar.ph167.prol.loopexit, label %scalar.ph167.prol

scalar.ph167.prol:                                ; preds = %scalar.ph167.preheader
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.017.i84.ph
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.017.i84.ph
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !11
  %i.id = zext i8 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 23
  %i.if = or i32 %i.ie, %i.ia
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.017.i84.ph
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !11
  %i.ii = zext i8 %i.ih to i32
  %i.ij = shl i32 %i.ii, 31
  %i.ik = or i32 %i.if, %i.ij
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i84.ph
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !19
  %i.im = or disjoint i64 %.017.i84.ph, 1
  br label %scalar.ph167.prol.loopexit

scalar.ph167.prol.loopexit:                       ; preds = %scalar.ph167.prol, %scalar.ph167.preheader
  %.017.i84.unr = phi i64 [ %.017.i84.ph, %scalar.ph167.preheader ], [ %i.im, %scalar.ph167.prol ]
  %i.in = icmp eq i64 %2, %.neg315
  br i1 %i.in, label %decodeBf16.exit, label %scalar.ph167

scalar.ph167:                                     ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167
  %.017.i84 = phi i64 [ %i.jp, %scalar.ph167 ], [ %.017.i84.unr, %scalar.ph167.prol.loopexit ] ; 6 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.017.i84
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !19
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.017.i84
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !11
  %i.is = zext i8 %i.ir to i32
  %i.it = shl nuw nsw i32 %i.is, 23
  %i.iu = or i32 %i.it, %i.ip
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.017.i84
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !11
  %i.ix = zext i8 %i.iw to i32
  %i.iy = shl i32 %i.ix, 31
  %i.iz = or i32 %i.iu, %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.017.i84
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !19
  %i.jb = add nuw i64 %.017.i84, 1                ; 4 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !19
  %i.je = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.jb
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !11
  %i.jg = zext i8 %i.jf to i32
  %i.jh = shl nuw nsw i32 %i.jg, 23
  %i.ji = or i32 %i.jh, %i.jd
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.jb
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !11
  %i.jl = zext i8 %i.jk to i32
  %i.jm = shl i32 %i.jl, 31
  %i.jn = or i32 %i.ji, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jb
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !19
  %i.jp = add nuw i64 %.017.i84, 2                ; 2 uses
  %exitcond.not.i85.1 = icmp eq i64 %i.jp, %2
  br i1 %exitcond.not.i85.1, label %decodeBf16.exit, label %scalar.ph167, !llvm.loop !42

bb.r:                                             ; preds = %bb.k
  %.not.i86 = icmp eq i64 %1, 8
  %or.cond.i88 = and i1 %.not.i86, %.not8.i
  br i1 %or.cond.i88, label %bb.s, label %isFp64Pattern.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.jq = load i8, ptr %5, align 1, !tbaa !11
  %.not9.i90 = icmp eq i8 %i.jq, 52
  br i1 %.not9.i90, label %bb.t, label %isFp64Pattern.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !11
  %.not10.i91 = icmp eq i8 %i.js, 11
  br i1 %.not10.i91, label %bb.u, label %isFp64Pattern.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !11
  %.not11.i92 = icmp eq i8 %i.ju, 1
  br i1 %.not11.i92, label %bb.v, label %isFp64Pattern.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.jv = load i64, ptr %4, align 8, !tbaa !13
  %.not12.i93 = icmp eq i64 %i.jv, 8
  br i1 %.not12.i93, label %bb.w, label %isFp64Pattern.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !13
  %.not13.i94 = icmp eq i64 %i.jx, 2
  br i1 %.not13.i94, label %isFp64Pattern.exit, label %isFp64Pattern.exit.thread

isFp64Pattern.exit:                               ; preds = %bb.w
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !13
  %.not14.i95 = icmp eq i64 %i.jz, 1
  br i1 %.not14.i95, label %bb.x, label %isFp64Pattern.exit.thread

bb.x:                                             ; preds = %isFp64Pattern.exit
  %i.ka = load ptr, ptr %3, align 8, !tbaa !15    ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !15 ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !15 ; 6 uses
  %min.iters.check = icmp ult i64 %2, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.x
  %i.kf = shl i64 %2, 3                           ; 2 uses
  %i.kg = getelementptr i8, ptr %0, i64 %i.kf     ; 3 uses
  %i.kh = getelementptr i8, ptr %i.ka, i64 %i.kf
  %bound0 = icmp ult ptr %0, %i.kh
  %bound1 = icmp ult ptr %i.ka, %i.kg
  %found.conflict = and i1 %bound0, %bound1
  %13 = shl i64 %2, 1
  %14 = getelementptr i8, ptr %i.kc, i64 %13
  %bound0140 = icmp ult ptr %0, %14
  %bound1141 = icmp ult ptr %i.kc, %i.kg
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx = or i1 %found.conflict, %found.conflict142
  %15 = getelementptr i8, ptr %i.ke, i64 %2
  %bound0143 = icmp ult ptr %0, %15
  %bound1144 = icmp ult ptr %i.ke, %i.kg
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx, %found.conflict145
  br i1 %conflict.rdx146, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %index ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %wide.load = load <2 x i64>, ptr %i.ki, align 8, !tbaa !13, !alias.scope !68
  %wide.load147 = load <2 x i64>, ptr %i.kj, align 8, !tbaa !13, !alias.scope !68
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %index ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %wide.load148 = load <2 x i16>, ptr %i.kk, align 2, !tbaa !17, !alias.scope !69
  %wide.load149 = load <2 x i16>, ptr %i.kl, align 2, !tbaa !17, !alias.scope !69
  %i.km = zext <2 x i16> %wide.load148 to <2 x i64>
  %i.kn = zext <2 x i16> %wide.load149 to <2 x i64>
  %i.ko = shl <2 x i64> %i.km, splat (i64 52)
  %i.kp = shl <2 x i64> %i.kn, splat (i64 52)
  %i.kq = or <2 x i64> %i.ko, %wide.load
  %i.kr = or <2 x i64> %i.kp, %wide.load147
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 %index ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %wide.load150 = load <2 x i8>, ptr %i.ks, align 1, !tbaa !11, !alias.scope !70
  %wide.load151 = load <2 x i8>, ptr %i.kt, align 1, !tbaa !11, !alias.scope !70
  %i.ku = zext <2 x i8> %wide.load150 to <2 x i64>
  %i.kv = zext <2 x i8> %wide.load151 to <2 x i64>
  %i.kw = shl <2 x i64> %i.ku, splat (i64 63)
  %i.kx = shl <2 x i64> %i.kv, splat (i64 63)
  %i.ky = or <2 x i64> %i.kq, %i.kw
  %i.kz = or <2 x i64> %i.kr, %i.kx
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <2 x i64> %i.ky, ptr %i.la, align 8, !tbaa !13, !alias.scope !71, !noalias !72
  store <2 x i64> %i.kz, ptr %i.lb, align 8, !tbaa !13, !alias.scope !71, !noalias !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lc = icmp eq i64 %index.next, %n.vec
  br i1 %i.lc, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %decodeBf16.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.x, %middle.block
  %.017.i96.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.x ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.017.i96.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.017.i96.ph
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !13
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %.017.i96.ph
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !17
  %i.lh = zext i16 %i.lg to i64
  %i.li = shl i64 %i.lh, 52
  %i.lj = or i64 %i.li, %i.le
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.017.i96.ph
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !11
  %i.lm = zext i8 %i.ll to i64
  %i.ln = shl i64 %i.lm, 63
  %i.lo = or i64 %i.lj, %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i96.ph
  store i64 %i.lo, ptr %i.lp, align 8, !tbaa !13
  %i.lq = or disjoint i64 %.017.i96.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i96.unr = phi i64 [ %.017.i96.ph, %scalar.ph.preheader ], [ %i.lq, %scalar.ph.prol ]
  %i.lr = icmp eq i64 %2, %.neg
  br i1 %i.lr, label %decodeBf16.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i96 = phi i64 [ %i.mt, %scalar.ph ], [ %.017.i96.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.017.i96
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !13
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %.017.i96
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !17
  %i.lw = zext i16 %i.lv to i64
  %i.lx = shl i64 %i.lw, 52
  %i.ly = or i64 %i.lx, %i.lt
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.017.i96
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !11
  %i.mb = zext i8 %i.ma to i64
  %i.mc = shl i64 %i.mb, 63
  %i.md = or i64 %i.ly, %i.mc
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i96
  store i64 %i.md, ptr %i.me, align 8, !tbaa !13
  %i.mf = add nuw i64 %.017.i96, 1                ; 4 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.mf
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !13
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %i.mf
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !17
  %i.mk = zext i16 %i.mj to i64
  %i.ml = shl i64 %i.mk, 52
  %i.mm = or i64 %i.ml, %i.mh
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.mf
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !11
  %i.mp = zext i8 %i.mo to i64
  %i.mq = shl i64 %i.mp, 63
  %i.mr = or i64 %i.mm, %i.mq
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.mf
  store i64 %i.mr, ptr %i.ms, align 8, !tbaa !13
  %i.mt = add nuw i64 %.017.i96, 2                ; 2 uses
  %exitcond.not.i97.1 = icmp eq i64 %i.mt, %2
  br i1 %exitcond.not.i97.1, label %decodeBf16.exit, label %scalar.ph, !llvm.loop !49

isFp64Pattern.exit.thread:                        ; preds = %bb.b, %isBf16Pattern.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.g, %bb.h, %bb.i, %bb.j, %isFp16Pattern.exit, %bb.m, %bb.n, %bb.l, %bb.o, %bb.p, %isFp32Pattern.exit, %bb.t, %bb.u, %bb.s, %bb.v, %bb.r, %bb.w, %isFp64Pattern.exit
  %i.mu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.mv = icmp eq i64 %i.mu, 1
  br i1 %i.mv, label %.split, label %decodeBf16.exit

.split:                                           ; preds = %isFp64Pattern.exit.thread
  %i.mw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true) ; 2 uses
  %i.mx = icmp samesign ult i64 %i.mw, 4
  br i1 %i.mx, label %switch.lookup, label %decodeBf16.exit

switch.lookup:                                    ; preds = %.split
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ZL_bitSplitDecode, i64 %i.mw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  tail call fastcc void @decodeElements(ptr noundef %0, i64 noundef %switch.ext, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6)
  br label %decodeBf16.exit

decodeBf16.exit:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph167.prol.loopexit, %scalar.ph167, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph292.prol.loopexit, %vec.epilog.scalar.ph292, %middle.block, %middle.block192, %middle.block236, %vec.epilog.middle.block, %middle.block288, %vec.epilog.middle.block303, %.split, %switch.lookup, %isFp64Pattern.exit.thread, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decodeElements(ptr nofree noundef writeonly captures(none) %0, i64 noundef range(i64 1, 9) %1, i64 noundef range(i64 1, 0) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %6, 0
  %i.a = tail call range(i64 1, 5) i64 @llvm.ctpop.i64(i64 %1)
  %i.b = icmp eq i64 %i.a, 1                      ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true) ; 2 uses
  br i1 %.not, label %.split47, label %.preheader.us

.preheader.us:                                    ; preds = %bb.a, %bb.l
  %.04246.us = phi i64 [ %i.ap, %bb.l ], [ 0, %bb.a ] ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.g
  %.03945.us = phi i64 [ 0, %.preheader.us ], [ %i.ah, %bb.g ] ; 7 uses
  %.04044.us = phi i64 [ 0, %.preheader.us ], [ %i.ag, %bb.g ] ; 2 uses
  %.04143.us = phi i64 [ 0, %.preheader.us ], [ %i.ac, %bb.g ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.03945.us
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.e)
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %.split.us, label %bb.g

.split.us:                                        ; preds = %bb.b
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true)
  switch i64 %i.h, label %bb.g [
    i64 0, label %bb.f
    i64 1, label %bb.e
    i64 2, label %bb.d
    i64 3, label %bb.c
  ]

bb.c:                                             ; preds = %.split.us
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03945.us
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.04246.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  br label %bb.g

bb.d:                                             ; preds = %.split.us
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03945.us
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.04246.us
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %i.q = zext i32 %i.p to i64
  br label %bb.g

bb.e:                                             ; preds = %.split.us
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03945.us
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %.04246.us
  %i.u = load i16, ptr %i.t, align 2, !tbaa !17
  %i.v = zext i16 %i.u to i64
  br label %bb.g

bb.f:                                             ; preds = %.split.us
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03945.us
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.04246.us
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.split.us, %bb.b
  %.0.us = phi i64 [ 0, %.split.us ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ], [ %i.q, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.b ]
  %i.ab = shl i64 %.0.us, %.04044.us
end_hunk_0
