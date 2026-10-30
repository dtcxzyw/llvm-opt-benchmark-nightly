Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/local_to_model_job?download=true
inline.NumInlined: 17
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ozz::math::Float4x4" = type { [4 x <4 x float>] }

@constinit = private unnamed_addr constant [4 x <4 x float>] [<4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation15LocalToModelJob8ValidateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = shl i64 %i.c, 32
  %i.e = ashr exact i64 %i.d, 32                  ; 2 uses
  %i.f = add nsw i64 %i.e, 3
  %i.g = lshr i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp uge i64 %i.l, %i.e
  %i.n = and i1 %i.m, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.n, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation15LocalToModelJob3RunEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca [4 x %"struct.ozz::math::Float4x4"], align 16 ; 21 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit

_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = shl i64 %i.c, 32
  %i.e = ashr exact i64 %i.d, 32                  ; 2 uses
  %i.f = add nsw i64 %i.e, 3
  %i.g = lshr i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp uge i64 %i.l, %i.e
  %i.n = and i1 %i.m, %i.j
  br i1 %i.n, label %bb.b, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread

bb.b:                                             ; preds = %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %spec.select = select i1 %i.s, ptr @constinit, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = add nsw i32 %i.u, 1
  %i.w = trunc i64 %i.c to i32
  %i.x = tail call noundef i32 @llvm.smin.i32(i32 %i.v, i32 %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !34, !range !35, !noundef !36 ; 2 uses
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac
  %i.ae = tail call noundef i32 @llvm.smax.i32(i32 %i.ad, i32 0) ; 3 uses
  %i.af = icmp slt i32 %i.ae, %i.x
  br i1 %i.af, label %bb.c, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ag = trunc nuw i8 %i.ab to i1
  br i1 %i.ag, label %bb.d, label %.lr.ph63

bb.d:                                             ; preds = %bb.c
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !38
  %i.ak = sext i16 %i.aj to i32
  %.not64 = icmp sgt i32 %i.z, %i.ak
  br i1 %.not64, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = zext nneg i32 %i.x to i64
  br label %.outer

.outer:                                           ; preds = %._crit_edge.loopexit, %.lr.ph63
  %.02761.ph.a = phi i32 [ %i.er, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph63 ] ; 4 uses
  %i.bd = lshr i32 %.02761.ph.a, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw [160 x i8], ptr %i.bf, i64 %i.be ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bj = load <4 x float>, ptr %i.bh, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bl = load <4 x float>, ptr %i.bk, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bn = load <4 x float>, ptr %i.bm, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bp = load <4 x float>, ptr %i.bo, align 16, !tbaa !40, !noalias !41 ; 3 uses
  %i.bq = load <4 x float>, ptr %i.bi, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bu = load <4 x float>, ptr %i.bt, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bv = load <4 x float>, ptr %i.bg, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bx = load <4 x float>, ptr %i.bw, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bz = load <4 x float>, ptr %i.by, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.ca = fmul <4 x float> %i.bj, %i.bj           ; 2 uses
  %i.cb = fmul <4 x float> %i.bj, %i.bl           ; 2 uses
  %i.cc = fmul <4 x float> %i.bj, %i.bn           ; 2 uses
  %i.cd = fmul <4 x float> %i.bj, %i.bp           ; 2 uses
  %i.ce = fmul <4 x float> %i.bl, %i.bl           ; 2 uses
  %i.cf = fmul <4 x float> %i.bl, %i.bn           ; 2 uses
  %i.cg = fmul <4 x float> %i.bl, %i.bp           ; 2 uses
  %i.ch = fmul <4 x float> %i.bn, %i.bn           ; 2 uses
  %i.ci = fmul <4 x float> %i.bn, %i.bp           ; 2 uses
  %i.cj = fadd <4 x float> %i.ce, %i.ch
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.cl = fmul <4 x float> %i.bq, %i.ck           ; 2 uses
  %i.cm = fmul <4 x float> %i.bq, splat (float 2.000000e+00) ; 2 uses
  %i.cn = fadd <4 x float> %i.cb, %i.ci
  %i.co = fmul <4 x float> %i.cm, %i.cn           ; 2 uses
  %i.cp = fsub <4 x float> %i.cc, %i.cg
  %i.cq = fmul <4 x float> %i.cm, %i.cp           ; 2 uses
  %i.cr = fmul <4 x float> %i.bs, splat (float 2.000000e+00) ; 2 uses
  %i.cs = fsub <4 x float> %i.cb, %i.ci
  %i.ct = fmul <4 x float> %i.cs, %i.cr           ; 2 uses
  %i.cu = fadd <4 x float> %i.ca, %i.ch
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.cw = fmul <4 x float> %i.bs, %i.cv           ; 2 uses
  %i.cx = fadd <4 x float> %i.cf, %i.cd
  %i.cy = fmul <4 x float> %i.cx, %i.cr           ; 2 uses
  %i.cz = fmul <4 x float> %i.bu, splat (float 2.000000e+00) ; 2 uses
  %i.da = fadd <4 x float> %i.cc, %i.cg
  %i.db = fmul <4 x float> %i.da, %i.cz           ; 2 uses
  %i.dc = fsub <4 x float> %i.cf, %i.cd
  %i.dd = fmul <4 x float> %i.dc, %i.cz           ; 2 uses
  %i.de = fadd <4 x float> %i.ca, %i.ce
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.dg = fmul <4 x float> %i.df, %i.bu           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.cl, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.di = shufflevector <4 x float> %i.co, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dk = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dl = shufflevector <4 x float> %i.cl, <4 x float> %i.cq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.co, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.do = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dp = shufflevector <4 x float> %i.ct, <4 x float> %i.cy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.cw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ds = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dt = shufflevector <4 x float> %i.ct, <4 x float> %i.cy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.du = shufflevector <4 x float> %i.cw, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dw = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dx = shufflevector <4 x float> %i.db, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ea = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.eb = shufflevector <4 x float> %i.db, <4 x float> %i.dg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.dd, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ee = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ef = shufflevector <4 x float> %i.bv, <4 x float> %i.bz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.bx, <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ei = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ej = shufflevector <4 x float> %i.bv, <4 x float> %i.bz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ek = shufflevector <4 x float> %i.bx, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.em = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.en = and i32 %.02761.ph.a, -4
  %i.eo = add nuw nsw i32 %i.en, 4                ; 2 uses
  %i.ep = icmp slt i32 %.02761.ph.a, %i.eo
  br label %bb.e

bb.e:                                             ; preds = %.outer, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  store <4 x float> %i.dj, ptr %1, align 16, !tbaa !40
  store <4 x float> %i.dk, ptr %i.am, align 16, !tbaa !40
  store <4 x float> %i.dn, ptr %i.an, align 16, !tbaa !40
  store <4 x float> %i.do, ptr %i.ao, align 16, !tbaa !40
  store <4 x float> %i.dr, ptr %i.ap, align 16, !tbaa !40
  store <4 x float> %i.ds, ptr %i.aq, align 16, !tbaa !40
  store <4 x float> %i.dv, ptr %i.ar, align 16, !tbaa !40
  store <4 x float> %i.dw, ptr %i.as, align 16, !tbaa !40
  store <4 x float> %i.dz, ptr %i.at, align 16, !tbaa !40
  store <4 x float> %i.ea, ptr %i.au, align 16, !tbaa !40
  store <4 x float> %i.ed, ptr %i.av, align 16, !tbaa !40
  store <4 x float> %i.ee, ptr %i.aw, align 16, !tbaa !40
  store <4 x float> %i.eh, ptr %i.ax, align 16, !tbaa !40
  store <4 x float> %i.ei, ptr %i.ay, align 16, !tbaa !40
  store <4 x float> %i.el, ptr %i.az, align 16, !tbaa !40
  store <4 x float> %i.em, ptr %i.ba, align 16, !tbaa !40
  br i1 %i.ep, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %2 = zext nneg i32 %.02761.ph.a to i64
  %i.eq = zext nneg i32 %i.eo to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.er = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br i1 %i.hl, label %.outer, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.e, !llvm.loop !26

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv
  %i.et = load i16, ptr %i.es, align 2, !tbaa !38 ; 2 uses
  %i.eu = icmp eq i16 %i.et, -1
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !43 ; 2 uses
  %i.ev = sext i16 %i.et to i64
  %i.ew = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %i.ev
  %i.ex = select i1 %i.eu, ptr %spec.select, ptr %i.ew ; 4 uses
  %i.ey = and i64 %indvars.iv, 3
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.ey ; 4 uses
  %i.fa = load <4 x float>, ptr %i.ez, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = load <4 x float>, ptr %i.ex, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fd = fmul <4 x float> %i.fb, %i.fc
  %i.fe = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fg = load <4 x float>, ptr %i.ff, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fh = fmul <4 x float> %i.fe, %i.fg
  %i.fi = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fl = fmul <4 x float> %i.fi, %i.fk
  %i.fm = fadd <4 x float> %i.fd, %i.fl
  %i.fn = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fq = fmul <4 x float> %i.fn, %i.fp
  %i.fr = fadd <4 x float> %i.fh, %i.fq
  %i.fs = fadd <4 x float> %i.fm, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fu = load <4 x float>, ptr %i.ft, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = fmul <4 x float> %i.fc, %i.fv
  %i.fx = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fy = fmul <4 x float> %i.fg, %i.fx
  %i.fz = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ga = fmul <4 x float> %i.fk, %i.fz
  %i.gb = fadd <4 x float> %i.ga, %i.fw
  %i.gc = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gd = fmul <4 x float> %i.fp, %i.gc
  %i.ge = fadd <4 x float> %i.gd, %i.fy
  %i.gf = fadd <4 x float> %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.gh = load <4 x float>, ptr %i.gg, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = fmul <4 x float> %i.fc, %i.gi
  %i.gk = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gl = fmul <4 x float> %i.fg, %i.gk
  %i.gm = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gn = fmul <4 x float> %i.fk, %i.gm
  %i.go = fadd <4 x float> %i.gn, %i.gj
  %i.gp = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gq = fmul <4 x float> %i.fp, %i.gp
  %i.gr = fadd <4 x float> %i.gq, %i.gl
  %i.gs = fadd <4 x float> %i.go, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.gu = load <4 x float>, ptr %i.gt, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gw = fmul <4 x float> %i.fc, %i.gv
  %i.gx = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gy = fmul <4 x float> %i.fg, %i.gx
  %i.gz = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ha = fmul <4 x float> %i.fk, %i.gz
  %i.hb = fadd <4 x float> %i.ha, %i.gw
  %i.hc = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hd = fmul <4 x float> %i.fp, %i.hc
  %i.he = fadd <4 x float> %i.hd, %i.gy
  %i.hf = fadd <4 x float> %i.hb, %i.he
  %i.hg = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv ; 4 uses
  store <4 x float> %i.fs, ptr %i.hg, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <4 x float> %i.gf, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  store <4 x float> %i.gs, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  store <4 x float> %i.hf, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %3 = icmp samesign ult i64 %indvars.iv.next, %i.bc
  br i1 %3, label %bb.f, label %._crit_edge.loopexit.thread

._crit_edge.loopexit.thread:                      ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread

bb.f:                                             ; preds = %.lr.ph
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !38
  %i.hj = sext i16 %i.hi to i32
  %i.hk = load i32, ptr %i.y, align 8, !tbaa !33
  %i.hl = icmp sle i32 %i.hk, %i.hj               ; 2 uses
  %i.hm = icmp samesign ult i64 %indvars.iv.next, %i.eq
  %i.hn = select i1 %i.hm, i1 %i.hl, i1 false
  br i1 %i.hn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !29

_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread: ; preds = %._crit_edge.loopexit, %._crit_edge.loopexit.thread, %bb.b, %bb.d, %bb.a, %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit
  %.0.i57 = phi i1 [ false, %bb.a ], [ false, %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit ], [ true, %bb.d ], [ true, %._crit_edge.loopexit.thread ], [ true, %bb.b ], [ true, %._crit_edge.loopexit ]
  ret i1 %.0.i57
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN3ozz9animation8SkeletonE", !9, i64 0}
!11 = !{!"p1 _ZTSN3ozz4math8Float4x4E", !9, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"p1 _ZTSN3ozz4math12SoaTransformE", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN3ozz4spanIKNS_4math12SoaTransformEEE", !13, i64 0, !14, i64 8}
!16 = !{!"_ZTSN3ozz4spanINS_4math8Float4x4EEE", !11, i64 0, !14, i64 8}
!17 = !{!"_ZTSN3ozz9animation15LocalToModelJobE", !10, i64 0, !11, i64 8, !6, i64 16, !6, i64 20, !12, i64 24, !15, i64 32, !16, i64 48}
!18 = !{!17, !10, i64 0}
!19 = !{!"p1 short", !9, i64 0}
!20 = !{!"_ZTSN3ozz4spanIsEE", !19, i64 0, !14, i64 8}
!21 = !{!20, !14, i64 8}
!22 = !{!15, !14, i64 8}
!23 = !{!16, !14, i64 8}
!24 = distinct !{!24, i1 true, !"_ZN3ozz4math11SoaFloat4x410FromAffineERKNS0_9SoaFloat3ERKNS0_13SoaQuaternionES4_"}
!25 = distinct !{!25, !24, !"_ZN3ozz4math11SoaFloat4x410FromAffineERKNS0_9SoaFloat3ERKNS0_13SoaQuaternionES4_: argument 0"}
!26 = distinct !{!26, !42}
!27 = distinct !{!27, i1 true, !"_ZN3ozz4mathmlERKNS0_8Float4x4ES3_"}
!28 = distinct !{!28, !27, !"_ZN3ozz4mathmlERKNS0_8Float4x4ES3_: argument 0"}
!29 = distinct !{!29, !42}
!30 = !{!20, !19, i64 0}
!31 = !{!17, !11, i64 8}
!32 = !{!17, !6, i64 20}
!33 = !{!17, !6, i64 16}
!34 = !{!17, !12, i64 24}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!"short", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!15, !13, i64 0}
!40 = !{!5, !5, i64 0}
!41 = !{!25}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!16, !11, i64 0}
!44 = !{!28}
end_hunk_0
