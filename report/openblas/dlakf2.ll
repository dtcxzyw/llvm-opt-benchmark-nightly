Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlakf2?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b3 = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dlakf2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %7 to i64                  ; 2 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = load i32, ptr %3, align 4, !tbaa !35     ; 5 uses
  %narrow = xor i32 %i.e, -1
  %i.f = sext i32 %narrow to i64                  ; 6 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %6, i64 %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %5, i64 %i.f
  %i.i = getelementptr inbounds [8 x i8], ptr %4, i64 %i.f
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.f
  %i.k = load i32, ptr %8, align 4, !tbaa !35     ; 35 uses
  %narrow118 = xor i32 %i.k, -1                   ; 3 uses
  %i.l = sext i32 %narrow118 to i64               ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %7, i64 %i.l ; 34 uses
  %i.n = load i32, ptr %0, align 4, !tbaa !35
  %i.o = load i32, ptr %1, align 4, !tbaa !35
  %i.p = mul i32 %i.o, %i.n                       ; 7 uses
  %i.q = shl i32 %i.p, 1
  store i32 %i.q, ptr %i.d, align 4, !tbaa !35
  call void @dlaset_(ptr noundef nonnull @.str, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b3, ptr noundef nonnull @c_b3, ptr noundef %7, ptr noundef nonnull %8) #5
  %i.r = load i32, ptr %1, align 4, !tbaa !35     ; 3 uses
  %.not142 = icmp slt i32 %i.r, 1
  br i1 %.not142, label %._crit_edge170.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = load i32, ptr %0, align 4, !tbaa !35     ; 12 uses
  %.not123133 = icmp slt i32 %i.s, 1
  %i.t = add i32 %i.p, -1
  br i1 %.not123133, label %._crit_edge170.split, label %.preheader129.lr.ph.preheader

.preheader129.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.u = sext i32 %i.e to i64                     ; 14 uses
  %i.v = add nuw i32 %i.s, 1
  %wide.trip.count181 = zext i32 %i.v to i64      ; 8 uses
  %i.w = add nsw i64 %wide.trip.count181, -2      ; 2 uses
  %i.x = add i32 %i.p, 2                          ; 2 uses
  %i.y = shl nuw i32 %i.s, 1                      ; 2 uses
  %i.z = add i64 %i.c, -16
  %i.aa = zext i32 %i.x to i64
  %i.ab = zext i32 %i.y to i64
  %i.ac = zext nneg i32 %i.s to i64               ; 10 uses
  %i.ad = add nsw i64 %wide.trip.count181, -2     ; 2 uses
  %i.ae = shl nuw i32 %i.s, 1                     ; 2 uses
  %i.af = add i64 %i.c, -16
  %i.ag = zext i32 %i.ae to i64
  %i.ah = zext nneg i32 %i.s to i64
  %i.ai = zext nneg i32 %i.s to i64
  %min.iters.check247 = icmp ult i32 %i.s, 4
  %ident.check239 = icmp ne i32 %i.k, 1
  %ident.check240 = icmp ne i32 %i.e, 1
  %i.aj = trunc i64 %i.ad to i32
  %i.ak = icmp ugt i64 %i.ad, 4294967295
  %i.al = or i1 %ident.check239, %ident.check240
  %invariant.op421 = or i1 %i.ak, %i.al
  %min.iters.check249 = icmp ult i32 %i.s, 16
  %i.am = and i64 %i.ac, 12
  %n.vec251 = and i64 %i.ac, 2147483632           ; 4 uses
  %i.an = or disjoint i64 %n.vec251, 1
  %cmp.n260 = icmp eq i64 %n.vec251, %i.ac
  %min.epilog.iters.check265 = icmp eq i64 %i.am, 0
  %n.vec267 = and i64 %i.ac, 2147483644           ; 3 uses
  %i.ao = or disjoint i64 %n.vec267, 1
  %cmp.n273 = icmp eq i64 %n.vec267, %i.ac
  %min.iters.check = icmp ult i32 %i.s, 4
  %ident.check = icmp ne i32 %i.k, 1
  %ident.check221 = icmp ne i32 %i.e, 1
  %i.ap = trunc i64 %i.w to i32
  %i.aq = icmp ugt i64 %i.w, 4294967295
  %i.ar = or i1 %ident.check, %ident.check221
  %invariant.op427 = or i1 %i.aq, %i.ar
  %min.iters.check228 = icmp ult i32 %i.s, 16
  %i.as = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 2147483632              ; 4 uses
  %i.at = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  %n.vec232 = and i64 %i.ac, 2147483644           ; 3 uses
  %i.au = or disjoint i64 %n.vec232, 1
  %cmp.n236 = icmp eq i64 %n.vec232, %i.ac
  br label %.preheader129.lr.ph

.lr.ph169:                                        ; preds = %._crit_edge140
  %.pr = load i32, ptr %0, align 4, !tbaa !35     ; 19 uses
  %i.av = add i32 %i.p, 1                         ; 3 uses
  %i.aw = add i32 %i.p, -1
  %.not121149 = icmp slt i32 %.pr, 1
  br i1 %.not121149, label %._crit_edge170.split, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %.lr.ph169
  %i.ax = add nuw i32 %.pr, 1
  %i.ay = add nuw i32 %i.r, 1
  %i.az = sext i32 %i.e to i64
  %wide.trip.count212 = zext i32 %i.ay to i64     ; 4 uses
  %wide.trip.count197 = zext i32 %i.ax to i64     ; 6 uses
  %i.ba = add nsw i64 %wide.trip.count197, -2     ; 2 uses
  %i.bb = add i32 %i.k, 1                         ; 3 uses
  %i.bc = mul i32 %i.k, %i.av
  %i.bd = add i32 %i.p, %i.bc
  %i.be = add i32 %i.bd, 1
  %i.bf = mul i32 %i.k, %.pr
  %i.bg = or i64 %i.u, %i.f                       ; 2 uses
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = shl nsw i64 %i.u, 3
  %i.bj = add nsw i64 %i.bg, %wide.trip.count212
  %i.bk = shl nsw i64 %i.bj, 3
  %i.bl = add nsw i64 %wide.trip.count197, -2     ; 3 uses
  %i.bm = add i32 %i.k, 1                         ; 4 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul i64 %i.bl, %i.bn
  %i.bp = shl nsw i64 %i.l, 3                     ; 2 uses
  %9 = add i64 %i.bo, %i.l
  %10 = shl i64 %9, 3                             ; 2 uses
  %scevgep284 = getelementptr i8, ptr %7, i64 %10
  %i.bq = mul i32 %i.k, %i.av                     ; 3 uses
  %i.br = add i32 %i.p, %i.bq
  %i.bs = add i32 %i.br, 1
  %i.bt = mul i32 %i.k, %.pr
  %scevgep286 = getelementptr i8, ptr %7, i64 %i.bp
  %i.bu = zext nneg i32 %.pr to i64               ; 10 uses
  %i.bv = add i32 %i.bq, 1
  %i.bw = mul i32 %i.k, %.pr
  %i.bx = or i64 %i.u, %i.f                       ; 2 uses
  %i.by = shl nsw i64 %i.bx, 3
  %i.bz = shl nsw i64 %i.u, 3
  %i.ca = add nsw i64 %i.bx, %wide.trip.count212
  %i.cb = shl nsw i64 %i.ca, 3
  %scevgep341 = getelementptr i8, ptr %7, i64 %10
  %i.cc = add i32 %i.bq, 1
  %i.cd = mul i32 %i.k, %.pr
  %scevgep343 = getelementptr i8, ptr %7, i64 %i.bp
  %i.ce = zext nneg i32 %.pr to i64
  %i.cf = zext nneg i32 %.pr to i64
  %i.cg = getelementptr i8, ptr %4, i64 %i.by
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = getelementptr i8, ptr %4, i64 %i.cb
  %i.cj = getelementptr i8, ptr %6, i64 %i.bh
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = getelementptr i8, ptr %6, i64 %i.bk
  %min.iters.check351 = icmp ult i32 %.pr, 4
  %i.cm = icmp slt i32 %i.bm, 0                   ; 2 uses
  %i.cn = select i1 %i.cm, i32 %narrow118, i32 %i.bm
  %i.co = trunc i64 %i.bl to i32
  %mul335 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.cn, i32 %i.co) ; 2 uses
  %mul.result336 = extractvalue { i32, i1 } %mul335, 0 ; 2 uses
  %mul.overflow337 = extractvalue { i32, i1 } %mul335, 1
  %i.cp = icmp ugt i64 %i.bl, 4294967295
  %i.cq = icmp ne i32 %i.bm, 0
  %i.cr = and i1 %i.cp, %i.cq
  %invariant.op455 = or i1 %mul.overflow337, %i.cr
  %min.iters.check353 = icmp ult i32 %.pr, 16
  %i.cs = and i64 %i.bu, 12
  %n.vec355 = and i64 %i.bu, 2147483632           ; 4 uses
  %i.ct = or disjoint i64 %n.vec355, 1            ; 2 uses
  %broadcast.splatinsert360 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat361 = shufflevector <4 x i32> %broadcast.splatinsert360, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n377 = icmp eq i64 %n.vec355, %i.bu
  %min.epilog.iters.check383 = icmp eq i64 %i.cs, 0
  %n.vec385 = and i64 %i.bu, 2147483644           ; 3 uses
  %i.cu = or disjoint i64 %n.vec385, 1
  %broadcast.splatinsert390 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat391 = shufflevector <4 x i32> %broadcast.splatinsert390, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n404 = icmp eq i64 %n.vec385, %i.bu
  %min.iters.check289 = icmp ult i32 %.pr, 4
  %i.cv = icmp slt i32 %i.bb, 0                   ; 2 uses
  %i.cw = select i1 %i.cv, i32 %narrow118, i32 %i.bb
  %i.cx = trunc i64 %i.ba to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.cw, i32 %i.cx) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.cy = icmp ugt i64 %i.ba, 4294967295
  %i.cz = icmp ne i32 %i.bb, 0
  %i.da = and i1 %i.cy, %i.cz
  %invariant.op457 = or i1 %mul.overflow, %i.da
  %min.iters.check291 = icmp ult i32 %.pr, 16
  %i.db = and i64 %i.bu, 12
  %n.vec293 = and i64 %i.bu, 2147483632           ; 4 uses
  %i.dc = or disjoint i64 %n.vec293, 1            ; 2 uses
  %broadcast.splatinsert296 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat297 = shufflevector <4 x i32> %broadcast.splatinsert296, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n307 = icmp eq i64 %n.vec293, %i.bu
  %min.epilog.iters.check312 = icmp eq i64 %i.db, 0
  %n.vec314 = and i64 %i.bu, 2147483644           ; 3 uses
  %i.dd = or disjoint i64 %n.vec314, 1
  %broadcast.splatinsert319 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat320 = shufflevector <4 x i32> %broadcast.splatinsert319, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n332 = icmp eq i64 %n.vec314, %i.bu
  br label %.lr.ph161

.preheader129.lr.ph:                              ; preds = %.preheader129.lr.ph.preheader, %._crit_edge140
  %indvar226 = phi i64 [ 0, %.preheader129.lr.ph.preheader ], [ %indvar.next227, %._crit_edge140 ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader129.lr.ph.preheader ], [ %indvar.next, %._crit_edge140 ] ; 2 uses
  %.0110144 = phi i32 [ 1, %.preheader129.lr.ph.preheader ], [ %i.jf, %._crit_edge140 ] ; 3 uses
  %.0111143 = phi i32 [ 1, %.preheader129.lr.ph.preheader ], [ %i.jg, %._crit_edge140 ] ; 2 uses
  %i.de = mul i64 %indvar226, %i.ag
  %i.df = add i64 %i.de, 2
  %i.dg = trunc i64 %indvar226 to i32
  %i.dh = mul i32 %i.ae, %i.dg
  %i.di = add i32 %i.dh, 2
  %i.dj = mul i64 %indvar226, %i.ab
  %i.dk = add i64 %i.dj, %i.aa
  %i.dl = mul i32 %i.y, %indvar
  %i.dm = add i32 %i.x, %i.dl
  %i.dn = add nsw i32 %.0110144, -1               ; 15 uses
  br label %iter.check262

..preheader130_crit_edge:                         ; preds = %._crit_edge
  %invariant.op141 = add i32 %.0110144, %i.t
  br label %iter.check

iter.check262:                                    ; preds = %.preheader129.lr.ph, %._crit_edge
  %indvar244 = phi i64 [ 0, %.preheader129.lr.ph ], [ %indvar.next245, %._crit_edge ] ; 3 uses
  %indvar241 = phi i32 [ 0, %.preheader129.lr.ph ], [ %indvar.next242, %._crit_edge ] ; 2 uses
  %indvars.iv178 = phi i64 [ 1, %.preheader129.lr.ph ], [ %indvars.iv.next179, %._crit_edge ] ; 3 uses
  %i.do = trunc nuw nsw i64 %indvars.iv178 to i32
  %i.dp = add i32 %i.dn, %i.do                    ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv178 ; 7 uses
  br i1 %min.iters.check247, label %vec.epilog.scalar.ph263.preheader, label %vector.scevcheck238

vector.scevcheck238:                              ; preds = %iter.check262
  %i.dq = shl i64 %indvar244, 3
  %i.dr = add i64 %i.dq, %i.a
  %i.ds = sub i64 %i.af, %i.dr
  %i.dt = add i64 %i.df, %indvar244
  %i.du = shl i64 %i.dt, 32
  %i.dv = ashr exact i64 %i.du, 29
  %i.dw = add i64 %i.ds, %i.dv
  %i.dx = add i32 %i.di, %indvar241               ; 2 uses
  %i.dy = add i32 %i.dx, %i.aj
  %i.dz = icmp slt i32 %i.dy, %i.dx
  %.reass422 = or i1 %i.dz, %invariant.op421
  %i.ea = add i64 %i.dw, -1
  %diff.check246 = icmp ult i64 %i.ea, 127
  %or.cond = select i1 %.reass422, i1 true, i1 %diff.check246
  br i1 %or.cond, label %vec.epilog.scalar.ph263.preheader, label %vector.main.loop.iter.check248

vector.main.loop.iter.check248:                   ; preds = %vector.scevcheck238
  br i1 %min.iters.check249, label %vec.epilog.ph266, label %vector.ph250

vector.ph250:                                     ; preds = %vector.main.loop.iter.check248
  %invariant.op = add i32 %i.dn, %i.dp
  br label %vector.body252

vector.body252:                                   ; preds = %vector.ph250, %vector.body252
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next258, %vector.body252 ] ; 2 uses
  %i.eb = or disjoint i64 %index253, 1            ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eb ; 4 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 32
  %i.ee = getelementptr i8, ptr %i.ec, i64 64
  %i.ef = getelementptr i8, ptr %i.ec, i64 96
  %wide.load254 = load <4 x double>, ptr %i.ec, align 8, !tbaa !37
  %wide.load255 = load <4 x double>, ptr %i.ed, align 8, !tbaa !37
  %wide.load256 = load <4 x double>, ptr %i.ee, align 8, !tbaa !37
  %wide.load257 = load <4 x double>, ptr %i.ef, align 8, !tbaa !37
  %i.eg = trunc nuw nsw i64 %i.eb to i32
  %.reass = add i32 %i.eg, %invariant.op
  %i.eh = sext i32 %.reass to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.eh ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  store <4 x double> %wide.load254, ptr %i.ei, align 8, !tbaa !37
  store <4 x double> %wide.load255, ptr %i.ej, align 8, !tbaa !37
  store <4 x double> %wide.load256, ptr %i.ek, align 8, !tbaa !37
  store <4 x double> %wide.load257, ptr %i.el, align 8, !tbaa !37
  %index.next258 = add nuw i64 %index253, 16      ; 2 uses
  %i.em = icmp eq i64 %index.next258, %n.vec251
  br i1 %i.em, label %middle.block259, label %vector.body252, !llvm.loop !8

middle.block259:                                  ; preds = %vector.body252
  br i1 %cmp.n260, label %._crit_edge, label %vec.epilog.iter.check264

vec.epilog.iter.check264:                         ; preds = %middle.block259
  br i1 %min.epilog.iters.check265, label %vec.epilog.scalar.ph263.preheader, label %vec.epilog.ph266, !prof !41

vec.epilog.ph266:                                 ; preds = %vector.main.loop.iter.check248, %vec.epilog.iter.check264
  %vec.epilog.resume.val261 = phi i64 [ %n.vec251, %vec.epilog.iter.check264 ], [ 0, %vector.main.loop.iter.check248 ]
  %invariant.op419 = add i32 %i.dn, %i.dp
  br label %vec.epilog.vector.body268

vec.epilog.vector.body268:                        ; preds = %vec.epilog.vector.body268, %vec.epilog.ph266
  %index269 = phi i64 [ %vec.epilog.resume.val261, %vec.epilog.ph266 ], [ %index.next271, %vec.epilog.vector.body268 ] ; 2 uses
  %i.en = or disjoint i64 %index269, 1            ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.en
  %wide.load270 = load <4 x double>, ptr %i.eo, align 8, !tbaa !37
  %i.ep = trunc nuw nsw i64 %i.en to i32
  %.reass420 = add i32 %i.ep, %invariant.op419
  %i.eq = sext i32 %.reass420 to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.eq
  store <4 x double> %wide.load270, ptr %i.er, align 8, !tbaa !37
  %index.next271 = add nuw i64 %index269, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next271, %n.vec267
  br i1 %i.es, label %vec.epilog.middle.block272, label %vec.epilog.vector.body268, !llvm.loop !9

vec.epilog.middle.block272:                       ; preds = %vec.epilog.vector.body268
  br i1 %cmp.n273, label %._crit_edge, label %vec.epilog.scalar.ph263.preheader

vec.epilog.scalar.ph263.preheader:                ; preds = %iter.check262, %vector.scevcheck238, %vec.epilog.iter.check264, %vec.epilog.middle.block272
  %indvars.iv.ph = phi i64 [ 1, %vector.scevcheck238 ], [ 1, %iter.check262 ], [ %i.an, %vec.epilog.iter.check264 ], [ %i.ao, %vec.epilog.middle.block272 ] ; 4 uses
  %i.et = sub nsw i64 %wide.trip.count181, %indvars.iv.ph
  %i.eu = sub nsw i64 %i.ah, %indvars.iv.ph
  %xtraiter = and i64 %i.et, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph263.prol.loopexit, label %vec.epilog.scalar.ph263.prol

vec.epilog.scalar.ph263.prol:                     ; preds = %vec.epilog.scalar.ph263.preheader, %vec.epilog.scalar.ph263.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph263.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph263.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph263.prol ], [ 0, %vec.epilog.scalar.ph263.preheader ]
  %i.ev = mul nsw i64 %indvars.iv.prol, %i.u
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ev
  %i.ew = load double, ptr %gep.prol, align 8, !tbaa !37
  %i.ex = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.ey = add i32 %i.dn, %i.ex
  %i.ez = mul nsw i32 %i.ey, %i.k
  %i.fa = add nsw i32 %i.dp, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fb
  store double %i.ew, ptr %i.fc, align 8, !tbaa !37
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph263.prol.loopexit, label %vec.epilog.scalar.ph263.prol, !llvm.loop !10

vec.epilog.scalar.ph263.prol.loopexit:            ; preds = %vec.epilog.scalar.ph263.prol, %vec.epilog.scalar.ph263.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph263.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph263.prol ]
  %i.fd = icmp ult i64 %i.eu, 3
  br i1 %i.fd, label %._crit_edge, label %vec.epilog.scalar.ph263

vec.epilog.scalar.ph263:                          ; preds = %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph263 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph263.prol.loopexit ] ; 6 uses
  %i.fe = mul nsw i64 %indvars.iv, %i.u
end_hunk_0
