Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/spatialorder?download=true
inline.NumInlined: 27
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN7meshoptL12computeOrderEPyPKfmmb:bb.a
  %i.dc = shl nsw <2 x i64> %i.cz, splat (i64 16)
  %i.dd = and <2 x i64> %i.dc, splat (i64 4278190080)
  %i.de = or disjoint <2 x i64> %i.db, %i.dd
  %i.df = or disjoint <2 x i64> %i.de, %i.da
  %i.dg = and <2 x i64> %i.df, splat (i64 4222128928850175)
  %i.dh = mul nuw nsw <2 x i64> %i.dg, splat (i64 257)
  %i.di = and <2 x i64> %i.dh, splat (i64 4223155694530575)
  %i.dj = mul nuw nsw <2 x i64> %i.di, splat (i64 17)
  %i.dk = and <2 x i64> %i.dj, splat (i64 54901024028897475)
  %i.dl = mul nuw nsw <2 x i64> %i.dk, splat (i64 10)
  %i.dm = and <2 x i64> %i.dl, splat (i64 329406144173384850)
  %i.dn = or disjoint <2 x i64> %i.dm, %i.cy
  %i.do = sext <2 x i32> %i.ck to <2 x i64>       ; 2 uses
  %i.dp = and <2 x i64> %i.do, splat (i64 1048575) ; 2 uses
  %i.dq = shl nuw nsw <2 x i64> %i.dp, splat (i64 32)
  %i.dr = shl nsw <2 x i64> %i.do, splat (i64 16)
  %i.ds = and <2 x i64> %i.dr, splat (i64 4278190080)
  %i.dt = or disjoint <2 x i64> %i.dq, %i.ds
  %i.du = or disjoint <2 x i64> %i.dt, %i.dp
  %i.dv = and <2 x i64> %i.du, splat (i64 4222128928850175)
  %i.dw = mul nuw nsw <2 x i64> %i.dv, splat (i64 257)
  %i.dx = and <2 x i64> %i.dw, splat (i64 4223155694530575)
  %i.dy = mul nuw nsw <2 x i64> %i.dx, splat (i64 17)
  %i.dz = and <2 x i64> %i.dy, splat (i64 54901024028897475)
  %i.ea = mul nuw nsw <2 x i64> %i.dz, splat (i64 20)
  %i.eb = and <2 x i64> %i.ea, splat (i64 658812288346769700)
  %i.ec = or disjoint <2 x i64> %i.dn, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index102
  store <2 x i64> %i.ec, ptr %i.ed, align 8, !tbaa !28
  %index.next103 = add nuw i64 %index102, 2       ; 2 uses
  %i.ee = icmp eq i64 %index.next103, %n.vec92
  br i1 %i.ee, label %middle.block104, label %vector.body101, !llvm.loop !55

middle.block104:                                  ; preds = %vector.body101
  %cmp.n105 = icmp eq i64 %2, %n.vec92
  br i1 %cmp.n105, label %._crit_edge62, label %.lr.ph61.split.us.preheader108

.lr.ph61.split.us.preheader108:                   ; preds = %.lr.ph61.split.us.preheader, %middle.block104
  %.059.us.ph = phi i64 [ 0, %.lr.ph61.split.us.preheader ], [ %n.vec92, %middle.block104 ]
  %i.ef = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.eg = insertelement <2 x float> %i.ef, float %.sroa.975.0, i64 1
  %i.eh = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph61.split.us

.lr.ph61.split.us:                                ; preds = %.lr.ph61.split.us.preheader108, %.lr.ph61.split.us
  %.059.us = phi i64 [ %i.gb, %.lr.ph61.split.us ], [ %.059.us.ph, %.lr.ph61.split.us.preheader108 ] ; 3 uses
  %i.ej = mul i64 %.059.us, %i.a
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ej ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !31
  %i.em = fsub float %i.el, %i.c
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float %i.p, float 5.000000e-01)
  %i.eo = fptosi float %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.eq = load <2 x float>, ptr %i.ep, align 4, !tbaa !31
  %i.er = fsub <2 x float> %i.eq, %i.eg
  %i.es = sext i32 %i.eo to i64                   ; 2 uses
  %i.et = and i64 %i.es, 1048575                  ; 2 uses
  %i.eu = shl nuw nsw i64 %i.et, 32
  %i.ev = shl nsw i64 %i.es, 16
  %i.ew = and i64 %i.ev, 4278190080
  %i.ex = or disjoint i64 %i.eu, %i.ew
  %i.ey = or disjoint i64 %i.ex, %i.et
  %i.ez = and i64 %i.ey, 4222128928850175
  %i.fa = mul nuw nsw i64 %i.ez, 257
  %i.fb = and i64 %i.fa, 4223155694530575
  %i.fc = mul nuw nsw i64 %i.fb, 17
  %i.fd = and i64 %i.fc, 54901024028897475
  %i.fe = mul nuw nsw i64 %i.fd, 5
  %i.ff = and i64 %i.fe, 164703072086692425
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.ei, <2 x float> splat (float 5.000000e-01))
  %i.fh = fptosi <2 x float> %i.fg to <2 x i32>
  %i.fi = sext <2 x i32> %i.fh to <2 x i64>       ; 2 uses
  %i.fj = and <2 x i64> %i.fi, splat (i64 1048575) ; 2 uses
  %i.fk = shl nuw nsw <2 x i64> %i.fj, splat (i64 32)
  %i.fl = shl nsw <2 x i64> %i.fi, splat (i64 16)
  %i.fm = and <2 x i64> %i.fl, splat (i64 4278190080)
  %i.fn = or disjoint <2 x i64> %i.fk, %i.fm
  %i.fo = or disjoint <2 x i64> %i.fn, %i.fj
  %i.fp = and <2 x i64> %i.fo, splat (i64 4222128928850175)
  %i.fq = mul nuw nsw <2 x i64> %i.fp, splat (i64 257)
  %i.fr = and <2 x i64> %i.fq, splat (i64 4223155694530575)
  %i.fs = mul nuw nsw <2 x i64> %i.fr, splat (i64 17)
  %i.ft = and <2 x i64> %i.fs, splat (i64 54901024028897475)
  %i.fu = mul nuw nsw <2 x i64> %i.ft, <i64 10, i64 20>
  %i.fv = and <2 x i64> %i.fu, <i64 329406144173384850, i64 658812288346769700> ; 2 uses
  %i.fw = extractelement <2 x i64> %i.fv, i64 0
  %i.fx = or disjoint i64 %i.fw, %i.ff
  %i.fy = extractelement <2 x i64> %i.fv, i64 1
  %i.fz = or disjoint i64 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.059.us
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !28
  %i.gb = add nuw i64 %.059.us, 1                 ; 2 uses
  %exitcond67.not = icmp eq i64 %i.gb, %2
  br i1 %exitcond67.not, label %._crit_edge62, label %.lr.ph61.split.us, !llvm.loop !56

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.975.1 = phi float [ %..2, %.lr.ph ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %.sroa.0.1 = phi float [ %i.gm, %.lr.ph ], [ f0xFF7FFFFF, %bb.a ] ; 2 uses
  %.05258 = phi i64 [ %i.gq, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.gc = phi <4 x float> [ %i.gp, %.lr.ph ], [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.a ] ; 3 uses
  %i.gd = mul i64 %.05258, %i.a
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gd
  %i.gf = load <3 x float>, ptr %i.ge, align 4, !tbaa !31 ; 3 uses
  %i.gg = shufflevector <3 x float> %i.gf, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1> ; 3 uses
  %i.gh = fcmp ogt <4 x float> %i.gc, %i.gg
  %i.gi = fcmp olt <4 x float> %i.gc, %i.gg
  %i.gj = shufflevector <4 x i1> %i.gi, <4 x i1> %i.gh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gk = extractelement <3 x float> %i.gf, i64 0 ; 2 uses
  %i.gl = fcmp olt float %.sroa.0.1, %i.gk
  %i.gm = select i1 %i.gl, float %i.gk, float %.sroa.0.1 ; 2 uses
  %i.gn = extractelement <3 x float> %i.gf, i64 2 ; 2 uses
  %i.go = fcmp ogt float %.sroa.975.1, %i.gn
  %..2 = select i1 %i.go, float %i.gn, float %.sroa.975.1 ; 2 uses
  %i.gp = select <4 x i1> %i.gj, <4 x float> %i.gg, <4 x float> %i.gc ; 2 uses
  %i.gq = add nuw i64 %.05258, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge62:                                    ; preds = %.lr.ph61.split, %.lr.ph61.split.us, %middle.block, %middle.block104, %._crit_edge
  ret void

.lr.ph61.split:                                   ; preds = %.lr.ph61.split.preheader109, %.lr.ph61.split
  %.059 = phi i64 [ %i.hm, %.lr.ph61.split ], [ %.059.ph, %.lr.ph61.split.preheader109 ] ; 3 uses
  %i.gr = mul i64 %.059, %i.a
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gr ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !31
  %i.gu = fsub float %i.gt, %i.c
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.p, float 5.000000e-01)
  %i.gw = fptosi float %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gy = sext i32 %i.gw to i64
  %i.gz = load <2 x float>, ptr %i.gx, align 4, !tbaa !31
  %i.ha = fsub <2 x float> %i.gz, %i.be
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.bg, <2 x float> splat (float 5.000000e-01))
  %i.hc = fptosi <2 x float> %i.hb to <2 x i32>   ; 2 uses
  %i.hd = sext <2 x i32> %i.hc to <2 x i64>
  %i.he = zext <2 x i32> %i.hc to <2 x i64>
  %i.hf = shufflevector <2 x i64> %i.hd, <2 x i64> %i.he, <2 x i32> <i32 0, i32 3>
  %i.hg = shl <2 x i64> %i.hf, <i64 20, i64 40>   ; 2 uses
  %i.hh = extractelement <2 x i64> %i.hg, i64 0
  %i.hi = or i64 %i.hh, %i.gy
  %i.hj = extractelement <2 x i64> %i.hg, i64 1
  %i.hk = or i64 %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.059
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !28
  %i.hm = add nuw i64 %.059, 1                    ; 2 uses
  %exitcond66.not = icmp eq i64 %i.hm, %2
  br i1 %exitcond66.not, label %._crit_edge62, label %.lr.ph61.split, !llvm.loop !57
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !29
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #13
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_spatialSortTriangles(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.meshopt_Allocator, align 8   ; 10 uses
  %i.a = udiv i64 %2, 3                           ; 5 uses
  %i.b = lshr i64 %5, 2                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  %i.c = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.d = icmp ugt i64 %2, 4611686018427387905
  %i.e = mul i64 %i.a, 12
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = invoke noundef ptr %i.c(i64 noundef %i.f)
          to label %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit unwind label %bb.b, !inline_history !58 ; 3 uses

_ZN17meshopt_Allocator8allocateIfEEPT_m.exit:     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  store i64 1, ptr %i.h, align 8, !tbaa !18
  store ptr %i.g, ptr %6, align 8, !tbaa !19
  %.not = icmp ult i64 %2, 3                      ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit
  %i.i = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.j = icmp ugt i64 %2, -4611686018427387905
  %i.k = shl nuw i64 %i.a, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = invoke noundef ptr %i.i(i64 noundef %i.l)
          to label %bb.c unwind label %bb.g, !inline_history !1 ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.lr.ph:                                           ; preds = %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit, %.lr.ph
  %.07279 = phi i64 [ %i.bb, %.lr.ph ], [ 0, %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit ] ; 2 uses
  %i.o = mul nuw i64 %.07279, 3                   ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !20
  %7 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %7, align 4, !tbaa !20
  %8 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i32, ptr %8, align 4, !tbaa !20
  %i.t = zext i32 %i.q to i64
  %i.u = mul i64 %i.b, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u ; 3 uses
  %i.w = zext i32 %i.r to i64
  %i.x = mul i64 %i.b, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.x ; 3 uses
  %i.z = zext i32 %i.s to i64
  %i.aa = mul i64 %i.b, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa ; 3 uses
  %i.ac = load float, ptr %i.v, align 4, !tbaa !31
  %i.ad = load float, ptr %i.y, align 4, !tbaa !31
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = load float, ptr %i.ab, align 4, !tbaa !31
  %i.ag = fadd float %i.ae, %i.af
  %i.ah = fdiv float %i.ag, 3.000000e+00
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.o ; 3 uses
  store float %i.ah, ptr %i.ai, align 4, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !31
  %i.an = fadd float %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !31
  %i.aq = fadd float %i.an, %i.ap
  %i.ar = fdiv float %i.aq, 3.000000e+00
  %9 = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float %i.ar, ptr %9, align 4, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !31
  %i.aw = fadd float %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !31
  %i.az = fadd float %i.aw, %i.ay
  %i.ba = fdiv float %i.az, 3.000000e+00
  %10 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store float %i.ba, ptr %10, align 4, !tbaa !31
  %i.bb = add nuw nsw i64 %.07279, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !59

bb.c:                                             ; preds = %._crit_edge
  store i64 2, ptr %i.h, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.m, ptr %i.bc, align 8, !tbaa !19
  invoke void @meshopt_spatialSortRemap(ptr noundef %i.m, ptr noundef %i.g, i64 noundef %i.a, i64 noundef 12)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bd = icmp eq ptr %0, %1
  br i1 %i.bd, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.bf = icmp ugt i64 %2, 4611686018427387903
  %i.bg = shl i64 %2, 2                           ; 2 uses
  %i.bh = select i1 %i.bf, i64 -1, i64 %i.bg
  %i.bi = invoke noundef ptr %i.be(i64 noundef %i.bh)
          to label %bb.f unwind label %bb.h, !inline_history !1 ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bi, ptr align 4 %1, i64 %i.bg, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge, %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.bm = phi i64 [ 3, %bb.f ], [ 2, %bb.d ]
  %.0 = phi ptr [ %i.bi, %bb.f ], [ %1, %bb.d ]
  br i1 %.not, label %.lr.ph.i.preheader, label %.lr.ph82

.lr.ph.i.preheader:                               ; preds = %.lr.ph82, %bb.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.04.i = phi i64 [ %i.br, %bb.j ], [ %i.bm, %.lr.ph.i.preheader ] ; 2 uses
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !29
  %i.bo = getelementptr [8 x i8], ptr %6, i64 %.04.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19
  invoke void %i.bn(ptr noundef %i.bq)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.br = add nsw i64 %.04.i, -1                  ; 2 uses
  %.not.i = icmp eq i64 %i.br, 0
  br i1 %.not.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !3

bb.k:                                             ; preds = %.lr.ph.i
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #13
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

.lr.ph82:                                         ; preds = %bb.i, %.lr.ph82
  %.06880 = phi i64 [ %i.cl, %.lr.ph82 ], [ 0, %bb.i ] ; 3 uses
  %.idx = mul nuw i64 %.06880, 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.06880
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !20
  %i.cc = mul i32 %i.cb, 3                        ; 3 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cd
  store i32 %i.bv, ptr %i.ce, align 4, !tbaa !20
  %i.cf = add i32 %i.cc, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  store i32 %i.bx, ptr %i.ch, align 4, !tbaa !20
  %i.ci = add i32 %i.cc, 2
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cj
  store i32 %i.bz, ptr %i.ck, align 4, !tbaa !20
  %i.cl = add nuw nsw i64 %.06880, 1              ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cl, %i.a
  br i1 %exitcond85.not, label %.lr.ph.i.preheader, label %.lr.ph82, !llvm.loop !60

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.b ], [ %i.bl, %bb.h ], [ %i.bk, %bb.g ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_spatialClusterPoints(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.meshopt_Allocator, align 8   ; 12 uses
  %i.a = alloca [256 x [2 x i32]], align 16       ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, i8 0, i64 200, i1 false)
  %i.b = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.c = icmp ugt i64 %2, 2305843009213693951
  %i.d = shl i64 %2, 3                            ; 2 uses
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = invoke noundef ptr %i.b(i64 noundef %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !0 ; 10 uses

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  store i64 1, ptr %i.g, align 8, !tbaa !18
  store ptr %i.f, ptr %5, align 8, !tbaa !19
  %i.h = lshr i64 %3, 2                           ; 4 uses
  %.not.i = icmp eq i64 %2, 0                     ; 6 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.sroa.975.0.i = phi float [ f0x7F7FFFFF, %bb.b ], [ %..2.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0.0.i = phi float [ f0xFF7FFFFF, %bb.b ], [ %i.by, %.lr.ph.i ]
  %i.i = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.b ], [ %i.cb, %.lr.ph.i ] ; 7 uses
  %i.j = extractelement <4 x float> %i.i, i64 3   ; 2 uses
  %i.k = fsub float %.sroa.0.0.i, %i.j            ; 2 uses
  %i.l = fcmp olt float %i.k, 0.000000e+00
  %i.m = select i1 %i.l, float 0.000000e+00, float %i.k ; 2 uses
  %shift = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.i, %shift
  %i.n = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.o = fcmp olt float %i.n, %i.m
  %i.p = select i1 %i.o, float %i.m, float %i.n   ; 2 uses
  %i.q = extractelement <4 x float> %i.i, i64 0
  %i.r = fsub float %i.q, %.sroa.975.0.i          ; 2 uses
  %i.s = fcmp olt float %i.r, %i.p
  %i.t = select i1 %i.s, float %i.p, float %i.r   ; 2 uses
  %i.u = fcmp oeq float %i.t, 0.000000e+00
  %i.v = fdiv float 6.553500e+04, %i.t
  %i.w = select i1 %i.u, float 0.000000e+00, float %i.v ; 3 uses
  br i1 %.not.i, label %_ZN7meshoptL12computeOrderEPyPKfmmb.exit, label %.lr.ph61.split.i.preheader

.lr.ph61.split.i.preheader:                       ; preds = %._crit_edge.i
  %min.iters.check = icmp eq i64 %2, 1
  br i1 %min.iters.check, label %.lr.ph61.split.i.preheader180, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph61.split.i.preheader
  %n.vec = and i64 %2, -2                         ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splatinsert99 = insertelement <2 x float> poison, float %i.w, i64 0
  %broadcast.splat100 = shufflevector <2 x float> %broadcast.splatinsert99, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splat102 = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splatinsert103 = insertelement <2 x float> poison, float %.sroa.975.0.i, i64 0
  %broadcast.splat104 = shufflevector <2 x float> %broadcast.splatinsert103, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.x = or disjoint i64 %index, 1
  %i.y = mul i64 %index, %i.h
  %i.z = mul i64 %i.x, %i.h
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.y ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z ; 3 uses
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !31
  %i.ad = load float, ptr %i.ab, align 4, !tbaa !31
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = fsub <2 x float> %i.af, %broadcast.splat
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %broadcast.splat100, <2 x float> splat (float 5.000000e-01))
  %i.ai = fptosi <2 x float> %i.ah to <2 x i32>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.al = load float, ptr %i.aj, align 4, !tbaa !31
  %i.am = load float, ptr %i.ak, align 4, !tbaa !31
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.am, i64 1
  %i.ap = fsub <2 x float> %i.ao, %broadcast.splat102
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %broadcast.splat100, <2 x float> splat (float 5.000000e-01))
  %i.ar = fptosi <2 x float> %i.aq to <2 x i32>
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.au = load float, ptr %i.as, align 4, !tbaa !31
  %i.av = load float, ptr %i.at, align 4, !tbaa !31
  %i.aw = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.av, i64 1
  %i.ay = fsub <2 x float> %i.ax, %broadcast.splat104
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %broadcast.splat100, <2 x float> splat (float 5.000000e-01))
  %i.ba = fptosi <2 x float> %i.az to <2 x i32>
  %i.bb = sext <2 x i32> %i.ai to <2 x i64>
end_hunk_0
