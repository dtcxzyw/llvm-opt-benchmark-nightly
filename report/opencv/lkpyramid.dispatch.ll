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
  %4 = shl nuw nsw i32 %i.f, 1
  %5 = and i32 %4, 254
  %6 = zext nneg i32 %5 to i64                    ; 8 uses
  %7 = getelementptr i8, ptr %i.ad, i64 %i.bk
  %8 = getelementptr i8, ptr %7, i64 %6
  %scevgep = getelementptr i8, ptr %8, i64 2
  %9 = getelementptr i8, ptr %i.ad, i64 %6
  %scevgep161 = getelementptr i8, ptr %9, i64 2
  %i.bl = add nsw i64 %i.bk, -2
  %i.bm = sub nsw i64 %i.bl, %6
  %scevgep162 = getelementptr i8, ptr %i.ad, i64 %i.bm
  %10 = sub nuw nsw i64 -2, %6
  %scevgep163.a = getelementptr i8, ptr %i.ad, i64 %10
  %i.bn = getelementptr i8, ptr %i.ad, i64 %i.bk
  %i.bo = getelementptr i8, ptr %i.bn, i64 %6
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.ae
  %scevgep164.a = getelementptr i8, ptr %i.bp, i64 2
  %i.bq = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.br = getelementptr i8, ptr %i.bq, i64 %6
  %scevgep165 = getelementptr i8, ptr %i.br, i64 2
  %11 = add nsw i64 %i.bk, %i.ae
  %12 = add nsw i64 %11, -2
  %i.bs = sub nsw i64 %12, %6
  %scevgep166 = getelementptr i8, ptr %i.ad, i64 %i.bs
  %13 = add nsw i64 %i.ae, -2
  %14 = sub nsw i64 %13, %6
  %scevgep167 = getelementptr i8, ptr %i.ad, i64 %14
  %i.bt = getelementptr i8, ptr %i.ad, i64 %i.bk
  %scevgep168 = getelementptr i8, ptr %i.bt, i64 %i.ae
  %i.bu = add nsw i64 %wide.trip.count130, -1
  %i.bv = mul i64 %i.aw, %i.bu
  %i.bw = shl nuw nsw i64 %wide.trip.count, 2
  %i.bx = getelementptr i8, ptr %i.au, i64 %i.bv
  %scevgep169 = getelementptr i8, ptr %i.bx, i64 %i.bw ; 5 uses
  %i.by = mul i64 %i.aw, %i.bh
  %scevgep170 = getelementptr i8, ptr %i.au, i64 %i.by ; 5 uses
  %i.bz = shl nsw i64 %i.bg, 1                    ; 5 uses
  %i.ca = add nsw i64 %i.bz, %i.ae                ; 2 uses
  %i.cb = shl nuw nsw i64 %i.bf, 1                ; 3 uses
  %i.cc = shl nuw nsw i64 %i.be, 1                ; 3 uses
  %i.cd = add nsw i64 %i.ae, -2                   ; 2 uses
  %i.ce = and i32 %i.f, 127
  %i.cf = zext nneg i32 %i.ce to i64              ; 3 uses
  %i.cg = add nuw nsw i64 %i.bf, %i.cf
  %i.ch = shl nuw nsw i64 %i.cg, 1                ; 3 uses
  %i.ci = add nuw nsw i64 %i.be, %i.cf
  %i.cj = shl nuw nsw i64 %i.ci, 1                ; 2 uses
  %i.ck = add nsw i64 %i.cb, %i.ae
  %i.cl = add nsw i64 %i.cc, %i.ae
  %i.cm = add nsw i64 %i.bg, %i.cf
  %i.cn = shl nsw i64 %i.cm, 1                    ; 3 uses
  %i.co = add nsw i64 %i.ch, %i.ae
  %i.cp = add nsw i64 %i.cj, %i.ae
  %i.cq = add nsw i64 %i.cn, %i.ae
  %scevgep303 = getelementptr i8, ptr %i.an, i64 %wide.trip.count ; 2 uses
  %i.cr = add nsw i64 %wide.trip.count130, -1
  %i.cs = mul i64 %i.ap, %i.cr
  %i.ct = getelementptr i8, ptr %i.an, i64 %i.cs
  %scevgep304.a = getelementptr i8, ptr %i.ct, i64 %wide.trip.count ; 2 uses
  %i.cu = mul i64 %i.ap, %i.bh
  %scevgep305 = getelementptr i8, ptr %i.an, i64 %i.cu ; 2 uses
  %i.cv = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ad, i64 %i.cv
  %scevgep306 = getelementptr i8, ptr %i.cw, i64 %i.ae ; 4 uses
  %scevgep307 = getelementptr i8, ptr %i.ad, i64 %i.cv
  %i.cx = insertelement <4 x ptr> poison, ptr %scevgep304.a, i64 0
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %scevgep306, i64 1
  %i.cz = insertelement <4 x ptr> poison, ptr %i.ad, i64 0
  %i.da = shufflevector <4 x ptr> %i.cz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %15 = insertelement <4 x ptr> poison, ptr %scevgep305, i64 0
  %16 = insertelement <4 x ptr> %15, ptr %i.af, i64 1
  %i.db = insertelement <4 x ptr> poison, ptr %scevgep307, i64 0
  %17 = shufflevector <4 x ptr> %i.db, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check309.a = icmp ult i32 %i.i, 16
  %stride.check317 = icmp slt i64 %i.ap, 0
  %bound0327 = icmp ult ptr %i.af, %scevgep304.a
  %bound1328 = icmp ult ptr %scevgep305, %scevgep306
  %found.conflict329 = and i1 %bound0327, %bound1328
  %n.vec340 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n348 = icmp eq i64 %n.vec340, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dc = add nsw i64 %wide.trip.count, -1
  %min.iters.check222 = icmp samesign ult i32 %i.g, 23
  %i.dd = or disjoint i64 %i.cn, 1
  %diff.check = icmp ult i64 %i.dd, 15
  %i.de = or disjoint i64 %i.cq, 1
  %diff.check226 = icmp ult i64 %i.de, 15
  %conflict.rdx227 = or i1 %diff.check, %diff.check226
  %i.df = or disjoint i64 %i.ch, 1
  %diff.check230 = icmp samesign ult i64 %i.df, 15
  %conflict.rdx231 = or i1 %conflict.rdx227, %diff.check230
  %i.dg = or disjoint i64 %i.cp, 1
  %diff.check232 = icmp ult i64 %i.dg, 15
  %conflict.rdx233 = or i1 %conflict.rdx231, %diff.check232
  %i.dh = or disjoint i64 %i.co, 1
  %diff.check234 = icmp ult i64 %i.dh, 15
  %conflict.rdx235 = or i1 %conflict.rdx233, %diff.check234
  %i.di = sub nsw i64 %i.ae, %i.cn
  %i.dj = add nsw i64 %i.di, -3
  %diff.check236 = icmp ult i64 %i.dj, 15
  %conflict.rdx237 = or i1 %conflict.rdx235, %diff.check236
  %i.dk = sub nsw i64 %i.cc, %i.bz
  %diff.check238 = icmp ugt i64 %i.dk, -16
  %conflict.rdx239 = or i1 %conflict.rdx237, %diff.check238
  %i.dl = sub nsw i64 %i.cb, %i.bz
  %diff.check240 = icmp ugt i64 %i.dl, -16
  %conflict.rdx241 = or i1 %conflict.rdx239, %diff.check240
  %i.dm = sub nsw i64 %i.bz, %i.cl
  %diff.check242 = icmp ugt i64 %i.dm, -16
  %conflict.rdx243 = or i1 %conflict.rdx241, %diff.check242
  %i.dn = sub nsw i64 %i.bz, %i.ck
  %diff.check244 = icmp ugt i64 %i.dn, -16
  %conflict.rdx245 = or i1 %conflict.rdx243, %diff.check244
  %i.do = sub nsw i64 %i.cj, %i.cd
  %diff.check246 = icmp ugt i64 %i.do, -16
  %conflict.rdx247 = or i1 %conflict.rdx245, %diff.check246
  %i.dp = sub nsw i64 %i.ch, %i.cd
  %diff.check248 = icmp ugt i64 %i.dp, -16
  %conflict.rdx249 = or i1 %conflict.rdx247, %diff.check248
  %i.dq = sub nsw i64 %i.cc, %i.ca
  %diff.check250 = icmp ugt i64 %i.dq, -16
  %conflict.rdx251 = or i1 %conflict.rdx249, %diff.check250
  %i.dr = sub nsw i64 %i.cb, %i.ca
  %diff.check252 = icmp ugt i64 %i.dr, -16
  %conflict.rdx253 = or i1 %conflict.rdx251, %diff.check252
  %n.vec255 = and i64 %i.y, 248                   ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec255, %i.y
  %min.iters.check = icmp ult i32 %i.i, 8
  %bound0 = icmp ult ptr %scevgep170, %scevgep168
  %bound1 = icmp ult ptr %i.af, %scevgep169
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.aw, 0
  %i.ds = or i1 %found.conflict, %stride.check
  %bound0171 = icmp ult ptr %scevgep170, %scevgep166
  %bound1172 = icmp ult ptr %scevgep167, %scevgep169
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx = or i1 %i.ds, %found.conflict173
  %bound0174 = icmp ult ptr %scevgep170, %scevgep164.a
  %bound1175 = icmp ult ptr %scevgep165, %scevgep169
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx, %found.conflict176
  %bound0178 = icmp ult ptr %scevgep170, %scevgep162
  %bound1179 = icmp ult ptr %scevgep163.a, %scevgep169
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
  %i.dt = icmp sgt i64 %indvars.iv127, 0
  %i.du = add i64 %indvars.iv127, 4294967295
  %i.dv = select i1 %i.dt, i64 %i.du, i64 %i.al
  %sext135 = shl i64 %i.dv, 32
  %i.dw = ashr exact i64 %sext135, 32
  %i.dx = mul i64 %i.ap, %i.dw                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.an, i64 %i.dx  ; 6 uses
  %i.dz = mul i64 %i.ap, %indvars.iv127
  %i.ea = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.dz ; 4 uses
  %i.eb = icmp slt i64 %indvars.iv127, %i.bi
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 3 uses
  %i.ec = select i1 %i.eb, i64 %indvars.iv.next128, i64 %i.bj
  %i.ed = mul i64 %i.ap, %i.ec                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.an, i64 %i.ed  ; 6 uses
  %i.ef = mul i64 %i.aw, %indvars.iv127
  %i.eg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ef ; 2 uses
  br i1 %i.ax, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %min.iters.check309.a, label %.lr.ph.preheader354, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph.preheader
  %i.eh = getelementptr i8, ptr %scevgep303, i64 %i.ed ; 2 uses
  %i.ei = getelementptr i8, ptr %scevgep303, i64 %i.dx ; 2 uses
  %i.ej = insertelement <4 x ptr> %16, ptr %i.ee, i64 2
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %i.dy, i64 3
  %i.el = icmp ult <4 x ptr> %i.ek, %17
  %i.em = insertelement <4 x ptr> %i.cy, ptr %i.eh, i64 2
  %i.en = insertelement <4 x ptr> %i.em, ptr %i.ei, i64 3
  %i.eo = icmp ugt <4 x ptr> %i.en, %i.da
  %18 = and <4 x i1> %i.eo, %i.el
  %bound0331 = icmp ult ptr %i.af, %i.eh
  %bound1332 = icmp ult ptr %i.ee, %scevgep306
  %found.conflict333 = and i1 %bound0331, %bound1332
  %bound0335 = icmp ult ptr %i.af, %i.ei
  %bound1336 = icmp ult ptr %i.dy, %scevgep306
  %found.conflict337 = and i1 %bound0335, %bound1336
  %19 = bitcast <4 x i1> %18 to i4
  %20 = icmp ne i4 %19, 0
  %op.rdx = or i1 %20, %found.conflict329
  %op.rdx350 = or i1 %found.conflict333, %found.conflict337
  %op.rdx351 = or i1 %op.rdx, %op.rdx350
  %op.rdx352 = or i1 %op.rdx351, %stride.check317
  br i1 %op.rdx352, label %.lr.ph.preheader354, label %vector.body341

vector.body341:                                   ; preds = %vector.memcheck310, %vector.body341
  %index342 = phi i64 [ %index.next346, %vector.body341 ], [ 0, %vector.memcheck310 ] ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index342
  %wide.load343 = load <8 x i8>, ptr %i.ep, align 1, !tbaa !49, !alias.scope !50
  %i.eq = zext <8 x i8> %wide.load343 to <8 x i32> ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 %index342
  %wide.load344 = load <8 x i8>, ptr %i.er, align 1, !tbaa !49, !alias.scope !51
  %i.es = zext <8 x i8> %wide.load344 to <8 x i32> ; 2 uses
  %i.et = add nuw nsw <8 x i32> %i.es, %i.eq
  %i.eu = mul nuw nsw <8 x i32> %i.et, splat (i32 3)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 %index342
  %wide.load345 = load <8 x i8>, ptr %i.ev, align 1, !tbaa !49, !alias.scope !52
  %i.ew = zext <8 x i8> %wide.load345 to <8 x i32>
  %i.ex = mul nuw nsw <8 x i32> %i.ew, splat (i32 10)
  %i.ey = add nuw nsw <8 x i32> %i.eu, %i.ex
  %i.ez = sub nsw <8 x i32> %i.es, %i.eq
  %i.fa = trunc nuw nsw <8 x i32> %i.ey to <8 x i16>
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index342
  store <8 x i16> %i.fa, ptr %i.fb, align 16, !tbaa !54, !alias.scope !55, !noalias !56
  %i.fc = trunc nsw <8 x i32> %i.ez to <8 x i16>
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index342
  store <8 x i16> %i.fc, ptr %i.fd, align 16, !tbaa !54, !alias.scope !57, !noalias !58
  %index.next346 = add nuw i64 %index342, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next346, %n.vec340
  br i1 %i.fe, label %middle.block347, label %vector.body341, !llvm.loop !14

middle.block347:                                  ; preds = %vector.body341
  br i1 %cmp.n348, label %._crit_edge, label %.lr.ph.preheader354

.lr.ph.preheader354:                              ; preds = %vector.memcheck310, %.lr.ph.preheader, %middle.block347
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck310 ], [ 0, %.lr.ph.preheader ], [ %n.vec340, %middle.block347 ] ; 8 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader354
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.ph
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !49
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.ph
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !49
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = add nuw nsw i32 %i.fk, %i.fh
  %i.fm = mul nuw nsw i32 %i.fl, 3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.ph
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !49
  %i.fp = zext i8 %i.fo to i32
  %i.fq = mul nuw nsw i32 %i.fp, 10
  %i.fr = add nuw nsw i32 %i.fm, %i.fq
  %i.fs = sub nsw i32 %i.fk, %i.fh
  %i.ft = trunc nuw nsw i32 %i.fr to i16
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.ph
  store i16 %i.ft, ptr %i.fu, align 16, !tbaa !54
  %i.fv = trunc nsw i32 %i.fs to i16
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.ph
  store i16 %i.fv, ptr %i.fw, align 16, !tbaa !54
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader354
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader354 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.fx = icmp eq i64 %indvars.iv.ph, %i.dc
  br i1 %i.fx, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !49
  %i.ga = zext i8 %i.fz to i32                    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !49
  %i.gd = zext i8 %i.gc to i32                    ; 2 uses
  %i.ge = add nuw nsw i32 %i.gd, %i.ga
  %i.gf = mul nuw nsw i32 %i.ge, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !49
  %i.gi = zext i8 %i.gh to i32
  %i.gj = mul nuw nsw i32 %i.gi, 10
  %i.gk = add nuw nsw i32 %i.gf, %i.gj
  %i.gl = sub nsw i32 %i.gd, %i.ga
  %i.gm = trunc nuw nsw i32 %i.gk to i16
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !54
  %i.go = trunc nsw i32 %i.gl to i16
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !49
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !49
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = add nuw nsw i32 %i.gv, %i.gs
  %i.gx = mul nuw nsw i32 %i.gw, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !49
  %i.ha = zext i8 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.ha, 10
  %i.hc = add nuw nsw i32 %i.gx, %i.hb
  %i.hd = sub nsw i32 %i.gv, %i.gs
  %i.he = trunc nuw nsw i32 %i.hc to i16
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.next
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !54
  %i.hg = trunc nsw i32 %i.hd to i16
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !54
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block347, %bb.c
  %brmerge = select i1 %min.iters.check222, i1 true, i1 %conflict.rdx253
  br i1 %brmerge, label %scalar.ph221.preheader, label %vector.body256

vector.body256:                                   ; preds = %._crit_edge, %vector.body256
  %index257 = phi i64 [ %index.next262, %vector.body256 ], [ 0, %._crit_edge ] ; 5 uses
  %i.hi = add nuw nsw i64 %index257, %i.be        ; 2 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hi
  %wide.load258 = load <8 x i16>, ptr %i.hj, align 2, !tbaa !54
  %i.hk = sub nsw i64 %index257, %i.bd            ; 2 uses
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.hk
  store <8 x i16> %wide.load258, ptr %i.hl, align 2, !tbaa !54
  %i.hm = add nuw nsw i64 %index257, %i.bf        ; 2 uses
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hm
  %wide.load259 = load <8 x i16>, ptr %i.hn, align 2, !tbaa !54
  %i.ho = add nsw i64 %index257, %i.bg            ; 2 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ho
  store <8 x i16> %wide.load259, ptr %i.hp, align 2, !tbaa !54
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.hi
  %wide.load260 = load <8 x i16>, ptr %i.hq, align 2, !tbaa !54
  %i.hr = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.hk
  store <8 x i16> %wide.load260, ptr %i.hr, align 2, !tbaa !54
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.hm
  %wide.load261 = load <8 x i16>, ptr %i.hs, align 2, !tbaa !54
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ho
  store <8 x i16> %wide.load261, ptr %i.ht, align 2, !tbaa !54
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.hu, label %middle.block263, label %vector.body256, !llvm.loop !16

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
  %i.hv = add nuw nsw i64 %index, %i.bd           ; 2 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hv
  %wide.load = load <4 x i16>, ptr %i.hw, align 2, !tbaa !54, !alias.scope !62
  %i.hx = sub nsw i64 %index, %i.bd               ; 2 uses
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.hx
  %wide.load186 = load <4 x i16>, ptr %i.hy, align 2, !tbaa !54, !alias.scope !63
  %i.hz = sub <4 x i16> %wide.load, %wide.load186
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.hv
  %wide.load187 = load <4 x i16>, ptr %i.ia, align 2, !tbaa !54, !alias.scope !64
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.hx
  %wide.load188 = load <4 x i16>, ptr %i.ib, align 2, !tbaa !54, !alias.scope !65
  %i.ic = add <4 x i16> %wide.load188, %wide.load187
  %i.id = mul <4 x i16> %i.ic, splat (i16 3)
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index
  %wide.load189 = load <4 x i16>, ptr %i.ie, align 8, !tbaa !54, !alias.scope !66
  %i.if = mul <4 x i16> %wide.load189, splat (i16 10)
  %i.ig = add <4 x i16> %i.id, %i.if
  %i.ih = shl nuw nsw i64 %index, 2
  %i.ii = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ih
  %interleaved.vec = shufflevector <4 x i16> %i.hz, <4 x i16> %i.ig, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.ii, align 2, !tbaa !54, !alias.scope !67, !noalias !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge112, label %.lr.ph111.preheader353

.lr.ph111.preheader353:                           ; preds = %.lr.ph111.preheader, %middle.block
  %indvars.iv122.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph111.preheader ]
  br label %.lr.ph111

scalar.ph221:                                     ; preds = %scalar.ph221.preheader, %scalar.ph221
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %scalar.ph221 ], [ %indvars.iv117.ph, %scalar.ph221.preheader ] ; 5 uses
  %i.ik = add nuw nsw i64 %indvars.iv117, %i.be   ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ik
  %i.im = load i16, ptr %i.il, align 2, !tbaa !54
  %i.in = sub nsw i64 %indvars.iv117, %i.bd       ; 2 uses
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.in
  store i16 %i.im, ptr %i.io, align 2, !tbaa !54
  %i.ip = add nuw nsw i64 %indvars.iv117, %i.bf   ; 2 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !54
  %i.is = add nsw i64 %indvars.iv117, %i.bg       ; 2 uses
  %i.it = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.is
  store i16 %i.ir, ptr %i.it, align 2, !tbaa !54
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ik
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !54
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.in
  store i16 %i.iv, ptr %i.iw, align 2, !tbaa !54
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ip
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !54
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.is
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !54
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %i.y
  br i1 %exitcond121.not, label %.preheader, label %scalar.ph221, !llvm.loop !25

.lr.ph111:                                        ; preds = %.lr.ph111.preheader353, %.lr.ph111
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.lr.ph111 ], [ %indvars.iv122.ph, %.lr.ph111.preheader353 ] ; 5 uses
  %i.ja = add nuw nsw i64 %indvars.iv122, %i.bd   ; 2 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !54
  %i.jd = sub nsw i64 %indvars.iv122, %i.bd       ; 2 uses
  %i.je = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !54
  %i.jg = sub i16 %i.jc, %i.jf
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ja
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !54
  %i.jj = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.jd
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !54
  %i.jl = add i16 %i.jk, %i.ji
  %i.jm = mul i16 %i.jl, 3
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv122
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !54
  %i.jp = mul i16 %i.jo, 10
  %i.jq = add i16 %i.jm, %i.jp
  %.idx = shl nuw nsw i64 %indvars.iv122, 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx ; 2 uses
  store i16 %i.jg, ptr %i.jr, align 2, !tbaa !54
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  store i16 %i.jq, ptr %i.js, align 2, !tbaa !54
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
!16 = distinct !{!16, !59, !60, !61}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !59, !60, !61}
!25 = distinct !{!25, !59, !60}
!26 = distinct !{!26, !59, !60}
!27 = distinct !{!27, !59}
!28 = !{!"any pointer", !4, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"p1 _ZTSN2cv12MatAllocatorE", !28, i64 0}
!31 = !{!"p1 _ZTSN2cv8UMatDataE", !28, i64 0}
!32 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!33 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !32, i64 4, !5, i64 8, !4, i64 12}
!34 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!35 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !30, i64 56, !31, i64 64, !33, i64 72, !34, i64 128}
!36 = !{!35, !5, i64 8}
!37 = !{!35, !5, i64 12}
!38 = !{!35, !5, i64 0}
!39 = !{!"p1 short", !28, i64 0}
!40 = !{!"long", !4, i64 0}
!41 = !{!"_ZTSN2cv10AutoBufferIsLm520EEE", !39, i64 0, !40, i64 8, !4, i64 16}
!42 = !{!41, !39, i64 0}
!43 = !{!41, !40, i64 8}
!44 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!45 = !{!44, !5, i64 0}
!46 = !{!44, !5, i64 4}
!47 = !{!35, !29, i64 24}
!48 = !{!40, !40, i64 0}
!49 = !{!4, !4, i64 0}
!50 = !{!9}
!51 = !{!10}
!52 = !{!11}
!53 = !{!"short", !4, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!12}
!56 = !{!13, !11, !10, !9}
!57 = !{!13}
!58 = !{!11, !10, !9}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!18}
!63 = !{!19}
!64 = !{!20}
!65 = !{!21}
!66 = !{!22}
!67 = !{!23}
!68 = !{!22, !21, !20, !19, !18}
end_hunk_0
