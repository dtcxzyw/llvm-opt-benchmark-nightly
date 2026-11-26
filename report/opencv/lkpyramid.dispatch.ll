Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lkpyramid.dispatch?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cv::AutoBuffer" = type { ptr, i64, [520 x i16] }

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail12cpu_baseline23ScharrDerivInvoker_SIMDERKNS_3MatERS2_RKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::AutoBuffer", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 4 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !38
  %i.f = lshr i32 %i.e, 5                         ; 3 uses
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = add nuw nsw i32 %i.g, 1                  ; 6 uses
  %i.i = mul i32 %i.h, %i.d                       ; 6 uses
  %i.j = add nsw i32 %i.d, 2
  %i.k = mul nsw i32 %i.h, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 15
  %i.n = and i64 %i.m, 8589934576                 ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.p = shl nsw i32 %i.o, 1
  %i.q = add nsw i32 %i.p, 64                     ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.i.i = icmp ugt i32 %i.q, 520
  store i64 %i.r, ptr %i.t, align 8, !tbaa !43
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIsLm520EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.u = shl nuw nsw i64 %i.r, 1
  %.inv.i.i = icmp sgt i32 %i.o, -33
  %i.v = select i1 %.inv.i.i, i64 %i.u, i64 -1
  %i.w = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #6 ; 2 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !42
  br label %_ZN2cv10AutoBufferIsLm520EEC2Em.exit

_ZN2cv10AutoBufferIsLm520EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.x = phi ptr [ %i.s, %bb.a ], [ %i.w, %bb.b ] ; 3 uses
  %i.y = zext nneg i32 %i.h to i64                ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 15
  %i.ac = and i64 %i.ab, -16
  %i.ad = inttoptr i64 %i.ac to ptr               ; 29 uses
  %sext = shl i64 %i.n, 32
  %i.ae = ashr exact i64 %sext, 31                ; 15 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae  ; 23 uses
  %i.ag = load i32, ptr %2, align 4, !tbaa !45    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46 ; 2 uses
  %i.aj = icmp slt i32 %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %_ZN2cv10AutoBufferIsLm520EEC2Em.exit
  %i.ak = icmp sgt i32 %i.b, 1
  %i.al = zext i1 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !48 ; 6 uses
  %i.aq = add nsw i32 %i.b, -1
  %i.ar = call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %i.as = add nsw i32 %i.ar, -2
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !48 ; 4 uses
  %i.ax = icmp sgt i32 %i.i, 0                    ; 2 uses
  %i.ay = icmp sgt i32 %i.d, 1
  %i.az = select i1 %i.ay, i32 %i.h, i32 0
  %i.ba = call i32 @llvm.smax.i32(i32 %i.d, i32 2)
  %i.bb = add nsw i32 %i.ba, -2
  %i.bc = mul i32 %i.h, %i.bb
  %i.bd = zext nneg i32 %i.h to i64               ; 6 uses
  %i.be = zext nneg i32 %i.az to i64              ; 4 uses
  %i.bf = zext i32 %i.bc to i64                   ; 4 uses
  %i.bg = sext i32 %i.i to i64                    ; 4 uses
  %i.bh = sext i32 %i.ag to i64                   ; 3 uses
  %i.bi = sext i32 %i.aq to i64
  %wide.trip.count130 = sext i32 %i.ai to i64     ; 3 uses
  %i.bj = sext i32 %i.as to i64
  %wide.trip.count = zext i32 %i.i to i64         ; 12 uses
  %wide.trip.count125 = zext nneg i32 %i.i to i64
  %i.bk = shl nuw nsw i64 %wide.trip.count, 1     ; 5 uses
  %i.bl = shl nuw nsw i32 %i.f, 1
  %i.bm = and i32 %i.bl, 254
  %i.bn = zext nneg i32 %i.bm to i64              ; 8 uses
  %i.bo = getelementptr i8, ptr %i.ad, i64 %i.bk
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bn
  %scevgep = getelementptr i8, ptr %i.bp, i64 2
  %i.bq = getelementptr i8, ptr %i.ad, i64 %i.bn
  %scevgep161 = getelementptr i8, ptr %i.bq, i64 2
  %i.br = add nsw i64 %i.bk, -2
  %i.bs = sub nsw i64 %i.br, %i.bn
  %scevgep162 = getelementptr i8, ptr %i.ad, i64 %i.bs
  %i.bt = sub nuw nsw i64 -2, %i.bn
  %scevgep163 = getelementptr i8, ptr %i.ad, i64 %i.bt
  %i.bu = getelementptr i8, ptr %i.ad, i64 %i.bk
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bn
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.ae
  %scevgep164 = getelementptr i8, ptr %i.bw, i64 2
  %i.bx = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bn
  %scevgep165 = getelementptr i8, ptr %i.by, i64 2
  %i.bz = add nsw i64 %i.bk, %i.ae
  %i.ca = add nsw i64 %i.bz, -2
  %i.cb = sub nsw i64 %i.ca, %i.bn
  %scevgep166 = getelementptr i8, ptr %i.ad, i64 %i.cb
  %i.cc = add nsw i64 %i.ae, -2
  %i.cd = sub nsw i64 %i.cc, %i.bn
  %scevgep167 = getelementptr i8, ptr %i.ad, i64 %i.cd
  %i.ce = getelementptr i8, ptr %i.ad, i64 %i.bk
  %scevgep168 = getelementptr i8, ptr %i.ce, i64 %i.ae
  %i.cf = add nsw i64 %wide.trip.count130, -1
  %i.cg = mul i64 %i.aw, %i.cf
  %i.ch = shl nuw nsw i64 %wide.trip.count, 2
  %i.ci = getelementptr i8, ptr %i.au, i64 %i.cg
  %scevgep169 = getelementptr i8, ptr %i.ci, i64 %i.ch ; 5 uses
  %i.cj = mul i64 %i.aw, %i.bh
  %scevgep170 = getelementptr i8, ptr %i.au, i64 %i.cj ; 5 uses
  %i.ck = shl nsw i64 %i.bg, 1                    ; 5 uses
  %i.cl = add nsw i64 %i.ck, %i.ae                ; 2 uses
  %i.cm = shl nuw nsw i64 %i.bf, 1                ; 3 uses
  %i.cn = shl nuw nsw i64 %i.be, 1                ; 3 uses
  %i.co = add nsw i64 %i.ae, -2                   ; 2 uses
  %i.cp = and i32 %i.f, 127
  %i.cq = zext nneg i32 %i.cp to i64              ; 3 uses
  %i.cr = add nuw nsw i64 %i.bf, %i.cq
  %i.cs = shl nuw nsw i64 %i.cr, 1                ; 2 uses
  %i.ct = add nuw nsw i64 %i.be, %i.cq
  %i.cu = shl nuw nsw i64 %i.ct, 1                ; 2 uses
  %i.cv = add nsw i64 %i.cm, %i.ae
  %i.cw = add nsw i64 %i.cn, %i.ae
  %i.cx = add nsw i64 %i.bg, %i.cq
  %i.cy = shl nsw i64 %i.cx, 1                    ; 3 uses
  %i.cz = add nsw i64 %i.cs, %i.ae
  %i.da = add nsw i64 %i.cu, %i.ae
  %i.db = add nsw i64 %i.cy, %i.ae
  %scevgep303 = getelementptr i8, ptr %i.an, i64 %wide.trip.count ; 2 uses
  %i.dc = add nsw i64 %wide.trip.count130, -1
  %i.dd = mul i64 %i.ap, %i.dc
  %i.de = getelementptr i8, ptr %i.an, i64 %i.dd
  %scevgep304 = getelementptr i8, ptr %i.de, i64 %wide.trip.count ; 2 uses
  %i.df = mul i64 %i.ap, %i.bh
  %scevgep305 = getelementptr i8, ptr %i.an, i64 %i.df ; 2 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.dh = getelementptr i8, ptr %i.ad, i64 %i.dg
  %scevgep306 = getelementptr i8, ptr %i.dh, i64 %i.ae ; 4 uses
  %scevgep307 = getelementptr i8, ptr %i.ad, i64 %i.dg
  %i.di = insertelement <4 x ptr> poison, ptr %scevgep304, i64 0
  %i.dj = insertelement <4 x ptr> %i.di, ptr %scevgep306, i64 1
  %i.dk = insertelement <4 x ptr> poison, ptr %i.ad, i64 0
  %i.dl = shufflevector <4 x ptr> %i.dk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dm = insertelement <4 x ptr> poison, ptr %scevgep305, i64 0
  %i.dn = insertelement <4 x ptr> %i.dm, ptr %i.af, i64 1
  %i.do = insertelement <4 x ptr> poison, ptr %scevgep307, i64 0
  %i.dp = shufflevector <4 x ptr> %i.do, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check309 = icmp ult i32 %i.i, 16
  %stride.check317 = icmp slt i64 %i.ap, 0
  %bound0327.a = icmp ult ptr %i.af, %scevgep304
  %bound1328.a = icmp ult ptr %scevgep305, %scevgep306
  %found.conflict329.a = and i1 %bound0327.a, %bound1328.a
  %n.vec340 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n348 = icmp eq i64 %n.vec340, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dq = add nsw i64 %wide.trip.count, -1
  %diff.check.a = icmp samesign ult i32 %i.g, 15
  %i.dr = or disjoint i64 %i.cy, 1
  %diff.check226.a = icmp ult i64 %i.dr, 15
  %i.ds = or disjoint i64 %i.db, 1
  %diff.check230.a = icmp ult i64 %i.ds, 15
  %conflict.rdx231.a = or i1 %diff.check226.a, %diff.check230.a
  %i.dt = or disjoint i64 %i.da, 1
  %diff.check232.a = icmp ult i64 %i.dt, 15
  %conflict.rdx233.a = or i1 %conflict.rdx231.a, %diff.check232.a
  %i.du = or disjoint i64 %i.cz, 1
  %diff.check234.a = icmp ult i64 %i.du, 15
  %conflict.rdx235.a = or i1 %conflict.rdx233.a, %diff.check234.a
  %i.dv = sub nsw i64 %i.ae, %i.cy
  %i.dw = add nsw i64 %i.dv, -3
  %diff.check236.a = icmp ult i64 %i.dw, 15
  %conflict.rdx237.a = or i1 %conflict.rdx235.a, %diff.check236.a
  %i.dx = sub nsw i64 %i.cn, %i.ck
  %diff.check238.a = icmp ugt i64 %i.dx, -16
  %conflict.rdx239.a = or i1 %conflict.rdx237.a, %diff.check238.a
  %i.dy = sub nsw i64 %i.cm, %i.ck
  %diff.check240.a = icmp ugt i64 %i.dy, -16
  %conflict.rdx241.a = or i1 %conflict.rdx239.a, %diff.check240.a
  %i.dz = sub nsw i64 %i.ck, %i.cw
  %diff.check242.a = icmp ugt i64 %i.dz, -16
  %conflict.rdx243.a = or i1 %conflict.rdx241.a, %diff.check242.a
  %i.ea = sub nsw i64 %i.ck, %i.cv
  %diff.check244.a = icmp ugt i64 %i.ea, -16
  %conflict.rdx245.a = or i1 %conflict.rdx243.a, %diff.check244.a
  %i.eb = sub nsw i64 %i.cu, %i.co
  %diff.check246 = icmp ugt i64 %i.eb, -16
  %conflict.rdx247 = or i1 %conflict.rdx245.a, %diff.check246
  %i.ec = sub nsw i64 %i.cs, %i.co
  %diff.check248 = icmp ugt i64 %i.ec, -16
  %conflict.rdx249 = or i1 %conflict.rdx247, %diff.check248
  %i.ed = sub nsw i64 %i.cn, %i.cl
  %diff.check250 = icmp ugt i64 %i.ed, -16
  %conflict.rdx251 = or i1 %conflict.rdx249, %diff.check250
  %i.ee = sub nsw i64 %i.cm, %i.cl
  %diff.check252 = icmp ugt i64 %i.ee, -16
  %conflict.rdx253 = or i1 %conflict.rdx251, %diff.check252
  %n.vec255 = and i64 %i.y, 248                   ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec255, %i.y
  %min.iters.check = icmp ult i32 %i.i, 8
  %bound0 = icmp ult ptr %scevgep170, %scevgep168
  %bound1 = icmp ult ptr %i.af, %scevgep169
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.aw, 0
  %i.ef = or i1 %found.conflict, %stride.check
  %bound0171 = icmp ult ptr %scevgep170, %scevgep166
  %bound1172 = icmp ult ptr %scevgep167, %scevgep169
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx = or i1 %i.ef, %found.conflict173
  %bound0174 = icmp ult ptr %scevgep170, %scevgep164
  %bound1175 = icmp ult ptr %scevgep165, %scevgep169
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx, %found.conflict176
  %bound0178 = icmp ult ptr %scevgep170, %scevgep162
  %bound1179 = icmp ult ptr %scevgep163, %scevgep169
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  %bound0182 = icmp ult ptr %scevgep170, %scevgep
  %bound1183 = icmp ult ptr %scevgep161, %scevgep169
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph114, %._crit_edge112
  %indvars.iv127 = phi i64 [ %i.bh, %.lr.ph114 ], [ %indvars.iv.next128, %._crit_edge112 ] ; 6 uses
  %i.eg = icmp sgt i64 %indvars.iv127, 0
  %i.eh = add i64 %indvars.iv127, 4294967295
  %i.ei = select i1 %i.eg, i64 %i.eh, i64 %i.al
  %sext135 = shl i64 %i.ei, 32
  %i.ej = ashr exact i64 %sext135, 32
  %i.ek = mul i64 %i.ap, %i.ej                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.an, i64 %i.ek  ; 6 uses
  %i.em = mul i64 %i.ap, %indvars.iv127
  %i.en = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.em ; 4 uses
  %i.eo = icmp slt i64 %indvars.iv127, %i.bi
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 3 uses
  %i.ep = select i1 %i.eo, i64 %indvars.iv.next128, i64 %i.bj
  %i.eq = mul i64 %i.ap, %i.ep                    ; 2 uses
  %i.er = getelementptr i8, ptr %i.an, i64 %i.eq  ; 6 uses
  %i.es = mul i64 %i.aw, %indvars.iv127
  %i.et = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.es ; 2 uses
  br i1 %i.ax, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %min.iters.check309, label %.lr.ph.preheader354, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph.preheader
  %i.eu = getelementptr i8, ptr %scevgep303, i64 %i.eq ; 2 uses
  %i.ev = getelementptr i8, ptr %scevgep303, i64 %i.ek ; 2 uses
  %i.ew = insertelement <4 x ptr> %i.dn, ptr %i.er, i64 2
  %i.ex = insertelement <4 x ptr> %i.ew, ptr %i.el, i64 3
  %i.ey = icmp ult <4 x ptr> %i.ex, %i.dp
  %i.ez = insertelement <4 x ptr> %i.dj, ptr %i.eu, i64 2
  %i.fa = insertelement <4 x ptr> %i.ez, ptr %i.ev, i64 3
  %i.fb = icmp ugt <4 x ptr> %i.fa, %i.dl
  %i.fc = and <4 x i1> %i.fb, %i.ey
  %bound0331 = icmp ult ptr %i.af, %i.eu
  %bound1332 = icmp ult ptr %i.er, %scevgep306
  %found.conflict333 = and i1 %bound0331, %bound1332
  %bound0335 = icmp ult ptr %i.af, %i.ev
  %bound1336 = icmp ult ptr %i.el, %scevgep306
  %found.conflict337 = and i1 %bound0335, %bound1336
  %i.fd = bitcast <4 x i1> %i.fc to i4
  %i.fe = icmp ne i4 %i.fd, 0
  %op.rdx = or i1 %i.fe, %found.conflict329.a
  %op.rdx350 = or i1 %found.conflict333, %found.conflict337
  %op.rdx351 = or i1 %op.rdx, %op.rdx350
  %op.rdx352 = or i1 %op.rdx351, %stride.check317
  br i1 %op.rdx352, label %.lr.ph.preheader354, label %vector.body341

vector.body341:                                   ; preds = %vector.memcheck310, %vector.body341
  %index342 = phi i64 [ %index.next346, %vector.body341 ], [ 0, %vector.memcheck310 ] ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 %index342
  %wide.load343 = load <8 x i8>, ptr %i.ff, align 1, !tbaa !49, !alias.scope !50
  %i.fg = zext <8 x i8> %wide.load343 to <8 x i32> ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 %index342
  %wide.load344 = load <8 x i8>, ptr %i.fh, align 1, !tbaa !49, !alias.scope !51
  %i.fi = zext <8 x i8> %wide.load344 to <8 x i32> ; 2 uses
  %i.fj = add nuw nsw <8 x i32> %i.fi, %i.fg
  %i.fk = mul nuw nsw <8 x i32> %i.fj, splat (i32 3)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 %index342
  %wide.load345 = load <8 x i8>, ptr %i.fl, align 1, !tbaa !49, !alias.scope !52
  %i.fm = zext <8 x i8> %wide.load345 to <8 x i32>
  %i.fn = mul nuw nsw <8 x i32> %i.fm, splat (i32 10)
  %i.fo = add nuw nsw <8 x i32> %i.fk, %i.fn
  %i.fp = sub nsw <8 x i32> %i.fi, %i.fg
  %i.fq = trunc nuw nsw <8 x i32> %i.fo to <8 x i16>
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index342
  store <8 x i16> %i.fq, ptr %i.fr, align 16, !tbaa !54, !alias.scope !55, !noalias !56
  %i.fs = trunc nsw <8 x i32> %i.fp to <8 x i16>
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index342
  store <8 x i16> %i.fs, ptr %i.ft, align 16, !tbaa !54, !alias.scope !57, !noalias !58
  %index.next346 = add nuw i64 %index342, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next346, %n.vec340
  br i1 %i.fu, label %middle.block347, label %vector.body341, !llvm.loop !14

middle.block347:                                  ; preds = %vector.body341
  br i1 %cmp.n348, label %._crit_edge, label %.lr.ph.preheader354

.lr.ph.preheader354:                              ; preds = %vector.memcheck310, %.lr.ph.preheader, %middle.block347
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck310 ], [ 0, %.lr.ph.preheader ], [ %n.vec340, %middle.block347 ] ; 8 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader354
  %i.fv = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv.ph
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !49
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv.ph
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !49
  %i.ga = zext i8 %i.fz to i32                    ; 2 uses
  %i.gb = add nuw nsw i32 %i.ga, %i.fx
  %i.gc = mul nuw nsw i32 %i.gb, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.ph
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !49
  %i.gf = zext i8 %i.ge to i32
  %i.gg = mul nuw nsw i32 %i.gf, 10
  %i.gh = add nuw nsw i32 %i.gc, %i.gg
  %i.gi = sub nsw i32 %i.ga, %i.fx
  %i.gj = trunc nuw nsw i32 %i.gh to i16
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.ph
  store i16 %i.gj, ptr %i.gk, align 16, !tbaa !54
  %i.gl = trunc nsw i32 %i.gi to i16
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.ph
  store i16 %i.gl, ptr %i.gm, align 16, !tbaa !54
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader354
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader354 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.gn = icmp eq i64 %indvars.iv.ph, %i.dq
  br i1 %i.gn, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !49
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !49
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  %i.gu = add nuw nsw i32 %i.gt, %i.gq
  %i.gv = mul nuw nsw i32 %i.gu, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !49
  %i.gy = zext i8 %i.gx to i32
  %i.gz = mul nuw nsw i32 %i.gy, 10
  %i.ha = add nuw nsw i32 %i.gv, %i.gz
  %i.hb = sub nsw i32 %i.gt, %i.gq
  %i.hc = trunc nuw nsw i32 %i.ha to i16
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !54
  %i.he = trunc nsw i32 %i.hb to i16
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv.next
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !49
  %i.hi = zext i8 %i.hh to i32                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv.next
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !49
  %i.hl = zext i8 %i.hk to i32                    ; 2 uses
  %i.hm = add nuw nsw i32 %i.hl, %i.hi
  %i.hn = mul nuw nsw i32 %i.hm, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !49
  %i.hq = zext i8 %i.hp to i32
  %i.hr = mul nuw nsw i32 %i.hq, 10
  %i.hs = add nuw nsw i32 %i.hn, %i.hr
  %i.ht = sub nsw i32 %i.hl, %i.hi
  %i.hu = trunc nuw nsw i32 %i.hs to i16
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.next
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !54
  %i.hw = trunc nsw i32 %i.ht to i16
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !54
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block347, %bb.c
  %brmerge = select i1 %diff.check.a, i1 true, i1 %conflict.rdx253
  br i1 %brmerge, label %scalar.ph221.preheader, label %vector.body256

vector.body256:                                   ; preds = %._crit_edge, %vector.body256
  %index257 = phi i64 [ %index.next262, %vector.body256 ], [ 0, %._crit_edge ] ; 5 uses
  %i.hy = add nuw nsw i64 %index257, %i.be        ; 2 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hy
  %wide.load258 = load <8 x i16>, ptr %i.hz, align 2, !tbaa !54
  %i.ia = sub nsw i64 %index257, %i.bd            ; 2 uses
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ia
  store <8 x i16> %wide.load258, ptr %i.ib, align 2, !tbaa !54
  %i.ic = add nuw nsw i64 %index257, %i.bf        ; 2 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ic
  %wide.load259 = load <8 x i16>, ptr %i.id, align 2, !tbaa !54
  %i.ie = add nsw i64 %index257, %i.bg            ; 2 uses
  %i.if = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ie
  store <8 x i16> %wide.load259, ptr %i.if, align 2, !tbaa !54
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.hy
  %wide.load260 = load <8 x i16>, ptr %i.ig, align 2, !tbaa !54
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ia
  store <8 x i16> %wide.load260, ptr %i.ih, align 2, !tbaa !54
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ic
  %wide.load261 = load <8 x i16>, ptr %i.ii, align 2, !tbaa !54
  %i.ij = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ie
  store <8 x i16> %wide.load261, ptr %i.ij, align 2, !tbaa !54
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.ik, label %middle.block263, label %vector.body256, !llvm.loop !16

middle.block263:                                  ; preds = %vector.body256
  br i1 %cmp.n264, label %.preheader, label %scalar.ph221.preheader

scalar.ph221.preheader:                           ; preds = %._crit_edge, %middle.block263
  %indvars.iv117.ph = phi i64 [ %n.vec255, %middle.block263 ], [ 0, %._crit_edge ]
  br label %scalar.ph221

.preheader:                                       ; preds = %scalar.ph221, %middle.block263
  br i1 %i.ax, label %.lr.ph111.preheader, label %._crit_edge112

.lr.ph111.preheader:                              ; preds = %.preheader
  %brmerge355 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx185
  br i1 %brmerge355, label %.lr.ph111.preheader353, label %vector.body

vector.body:                                      ; preds = %.lr.ph111.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph111.preheader ] ; 5 uses
  %i.il = add nuw nsw i64 %index, %i.bd           ; 2 uses
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.il
  %wide.load = load <4 x i16>, ptr %i.im, align 2, !tbaa !54, !alias.scope !62
  %i.in = sub nsw i64 %index, %i.bd               ; 2 uses
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.in
  %wide.load186 = load <4 x i16>, ptr %i.io, align 2, !tbaa !54, !alias.scope !63
  %i.ip = sub <4 x i16> %wide.load, %wide.load186
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.il
  %wide.load187 = load <4 x i16>, ptr %i.iq, align 2, !tbaa !54, !alias.scope !64
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.in
  %wide.load188 = load <4 x i16>, ptr %i.ir, align 2, !tbaa !54, !alias.scope !65
  %i.is = add <4 x i16> %wide.load188, %wide.load187
  %i.it = mul <4 x i16> %i.is, splat (i16 3)
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index
  %wide.load189 = load <4 x i16>, ptr %i.iu, align 8, !tbaa !54, !alias.scope !66
  %i.iv = mul <4 x i16> %wide.load189, splat (i16 10)
  %i.iw = add <4 x i16> %i.it, %i.iv
  %i.ix = shl nuw nsw i64 %index, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ix
  %interleaved.vec = shufflevector <4 x i16> %i.ip, <4 x i16> %i.iw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.iy, align 2, !tbaa !54, !alias.scope !67, !noalias !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge112, label %.lr.ph111.preheader353

.lr.ph111.preheader353:                           ; preds = %.lr.ph111.preheader, %middle.block
  %indvars.iv122.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph111.preheader ]
  br label %.lr.ph111

scalar.ph221:                                     ; preds = %scalar.ph221.preheader, %scalar.ph221
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %scalar.ph221 ], [ %indvars.iv117.ph, %scalar.ph221.preheader ] ; 5 uses
  %i.ja = add nuw nsw i64 %indvars.iv117, %i.be   ; 2 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !54
  %i.jd = sub nsw i64 %indvars.iv117, %i.bd       ; 2 uses
  %i.je = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.jd
  store i16 %i.jc, ptr %i.je, align 2, !tbaa !54
  %i.jf = add nuw nsw i64 %indvars.iv117, %i.bf   ; 2 uses
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !54
  %i.ji = add nsw i64 %indvars.iv117, %i.bg       ; 2 uses
  %i.jj = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ji
  store i16 %i.jh, ptr %i.jj, align 2, !tbaa !54
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ja
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !54
  %i.jm = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.jd
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !54
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.jf
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !54
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ji
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !54
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %i.y
  br i1 %exitcond121.not, label %.preheader, label %scalar.ph221, !llvm.loop !25

.lr.ph111:                                        ; preds = %.lr.ph111.preheader353, %.lr.ph111
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.lr.ph111 ], [ %indvars.iv122.ph, %.lr.ph111.preheader353 ] ; 5 uses
  %i.jq = add nuw nsw i64 %indvars.iv122, %i.bd   ; 2 uses
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !54
  %i.jt = sub nsw i64 %indvars.iv122, %i.bd       ; 2 uses
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.jt
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !54
  %i.jw = sub i16 %i.js, %i.jv
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.jq
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !54
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.jt
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !54
  %i.kb = add i16 %i.ka, %i.jy
  %i.kc = mul i16 %i.kb, 3
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv122
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !54
  %i.kf = mul i16 %i.ke, 10
  %i.kg = add i16 %i.kc, %i.kf
  %.idx = shl nuw nsw i64 %indvars.iv122, 2
  %i.kh = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx ; 2 uses
  store i16 %i.jw, ptr %i.kh, align 2, !tbaa !54
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  store i16 %i.kg, ptr %i.ki, align 2, !tbaa !54
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge112, label %.lr.ph111, !llvm.loop !26

._crit_edge112:                                   ; preds = %.lr.ph111, %middle.block, %.preheader
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge115, label %bb.c, !llvm.loop !27

._crit_edge115:                                   ; preds = %._crit_edge112, %_ZN2cv10AutoBufferIsLm520EEC2Em.exit
  %.not.i.i107 = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i107, label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge115
  call void @_ZdaPv(ptr noundef nonnull %i.x) #7
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit

_ZN2cv10AutoBufferIsLm520EED2Ev.exit:             ; preds = %._crit_edge115, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail23ScharrDerivInvoker_implERKNS_3MatERS1_RKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN2cv6detail12cpu_baseline23ScharrDerivInvoker_SIMDERKNS_3MatERS2_RKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !59, !60, !61}
!15 = distinct !{!15, !59, !60}
end_hunk_0
