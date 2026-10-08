Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mg_biome?download=true
inline.NumInlined: 835
inline.NumDeleted: 329
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16BiomeGenOriginal9getBiomesEPsN4core8vector3dIsEE:bb.a
  %indvars24 = trunc i64 %indvars.iv to i16
  %i.x = sext i16 %i.w to i64
  %i.y = mul nuw nsw i64 %indvars.iv25, %i.x
  %i.z = add nsw i64 %i.y, %indvars.iv
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99
  %sext = shl i64 %i.z, 32
  %i.ad = ashr exact i64 %sext, 32                ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !65 ; 2 uses
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ad
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !65 ; 2 uses
  %i.al = add i16 %indvars24, %.sroa.0.0.extract.trunc ; 2 uses
  %i.am = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ad
  %i.an = load i16, ptr %i.am, align 2, !tbaa !39 ; 5 uses
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !78  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !72
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ugt i64 %i.av, 8
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ax = sext i16 %i.an to i32
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.o, %bb.b
  %.057.lcssa.i = phi ptr [ null, %bb.b ], [ %.259.i, %bb.o ] ; 2 uses
  %.054.lcssa.i = phi ptr [ null, %bb.b ], [ %.256.i, %bb.o ] ; 4 uses
  %.051.lcssa.i = phi float [ f0x7F7FFFFF, %bb.b ], [ %.253.i, %bb.o ]
  %.050.lcssa.i = phi float [ f0x7F7FFFFF, %bb.b ], [ %.2.i, %bb.o ]
  %i.ay = sitofp i16 %i.an to float
  %i.az = fadd nsz float %i.af, %i.ak
  %i.ba = call nsz float @llvm.fmuladd.f32(float %i.az, float f0x3F666666, float %i.ay)
  %i.bb = fptosi float %i.ba to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.bb, i64 noundef -2720673578348880933)
  %.not.i = icmp eq ptr %.054.lcssa.i, null
  %i.bc = fcmp nsz ugt float %.050.lcssa.i, %.051.lcssa.i
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.bc
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.c:                                             ; preds = %bb.o, %.lr.ph.i
  %i.bd = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.cv, %bb.o ] ; 2 uses
  %.04974.i = phi i64 [ 1, %.lr.ph.i ], [ %i.cu, %bb.o ] ; 2 uses
  %.05073.i = phi float [ f0x7F7FFFFF, %.lr.ph.i ], [ %.2.i, %bb.o ] ; 11 uses
  %.05172.i = phi float [ f0x7F7FFFFF, %.lr.ph.i ], [ %.253.i, %bb.o ] ; 11 uses
  %.05471.i = phi ptr [ null, %.lr.ph.i ], [ %.256.i, %bb.o ] ; 10 uses
  %.05770.i = phi ptr [ null, %.lr.ph.i ], [ %.259.i, %bb.o ] ; 10 uses
  %i.be = trunc i64 %.04974.i to i32
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(44) %i.bd, i32 noundef %i.be), !inline_history !161 ; 13 uses
  %.not68.i = icmp eq ptr %i.bi, null
  br i1 %.not68.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 190
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !101
  %i.bm = icmp sgt i16 %i.bl, %i.an
  br i1 %i.bm, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 196
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 198
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !104 ; 2 uses
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 212
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !66
  %i.bt = sext i16 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = icmp slt i32 %i.bu, %i.ax
  br i1 %i.bv, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = load i16, ptr %i.bj, align 2, !tbaa !105
  %i.bx = icmp sgt i16 %i.bw, %i.al
  br i1 %i.bx, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load i16, ptr %i.bn, align 4, !tbaa !106
  %i.bz = icmp slt i16 %i.by, %i.al
  br i1 %i.bz, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 194
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !107
  %i.cc = icmp slt i16 %i.p, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !108
  %i.cf = icmp sgt i16 %i.p, %i.ce
  br i1 %i.cf, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 204
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !109
  %i.ci = fsub nsz float %i.af, %i.ch             ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !110
  %i.cl = fsub nsz float %i.ak, %i.ck             ; 2 uses
  %i.cm = fmul nsz float %i.cl, %i.cl
  %i.cn = call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.cp = load float, ptr %i.co, align 8, !tbaa !67 ; 2 uses
  %i.cq = fcmp nsz ogt float %i.cp, 0.000000e+00
  %i.cr = fdiv nsz float %i.cn, %i.cp
  %.0.i = select nsz i1 %i.cq, float %i.cr, float %i.cn ; 4 uses
  %.not69.i = icmp slt i16 %i.bp, %i.an
  br i1 %.not69.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = fcmp nsz olt float %.0.i, %.05172.i
  br i1 %i.cs, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ct = fcmp nsz olt float %.0.i, %.05073.i
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.259.i = phi ptr [ %.05770.i, %bb.c ], [ %.05770.i, %bb.i ], [ %.05770.i, %bb.h ], [ %.05770.i, %bb.g ], [ %.05770.i, %bb.f ], [ %.05770.i, %bb.e ], [ %.05770.i, %bb.d ], [ %i.bi, %bb.l ], [ %.05770.i, %bb.k ], [ %.05770.i, %bb.n ], [ %.05770.i, %bb.m ] ; 2 uses
  %.256.i = phi ptr [ %.05471.i, %bb.c ], [ %.05471.i, %bb.i ], [ %.05471.i, %bb.h ], [ %.05471.i, %bb.g ], [ %.05471.i, %bb.f ], [ %.05471.i, %bb.e ], [ %.05471.i, %bb.d ], [ %.05471.i, %bb.l ], [ %.05471.i, %bb.k ], [ %i.bi, %bb.n ], [ %.05471.i, %bb.m ] ; 2 uses
  %.253.i = phi nsz float [ %.05172.i, %bb.c ], [ %.05172.i, %bb.i ], [ %.05172.i, %bb.h ], [ %.05172.i, %bb.g ], [ %.05172.i, %bb.f ], [ %.05172.i, %bb.e ], [ %.05172.i, %bb.d ], [ %.0.i, %bb.l ], [ %.05172.i, %bb.k ], [ %.05172.i, %bb.n ], [ %.05172.i, %bb.m ] ; 2 uses
  %.2.i = phi nsz float [ %.05073.i, %bb.c ], [ %.05073.i, %bb.i ], [ %.05073.i, %bb.h ], [ %.05073.i, %bb.g ], [ %.05073.i, %bb.f ], [ %.05073.i, %bb.e ], [ %.05073.i, %bb.d ], [ %.05073.i, %bb.l ], [ %.05073.i, %bb.k ], [ %.0.i, %bb.n ], [ %.05073.i, %bb.m ] ; 2 uses
  %i.cu = add nuw i64 %.04974.i, 1                ; 2 uses
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !78  ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !71
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !72
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = icmp ult i64 %i.cu, %i.dd
  br i1 %i.de, label %bb.c, label %._crit_edge.i, !llvm.loop !2

bb.p:                                             ; preds = %._crit_edge.i
  %i.df = sext i16 %i.an to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 212
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !66
  %i.di = sext i16 %i.dh to i32
  %i.dj = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef %i.di)
  %i.dk = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 198
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !104
  %i.dm = sext i16 %i.dl to i32
  %i.dn = sub nsw i32 %i.df, %i.dm
  %.not66.i = icmp slt i32 %i.dj, %i.dn
  br i1 %.not66.i, label %bb.q, label %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %.not67.i = icmp eq ptr %.057.lcssa.i, null
  br i1 %.not67.i, label %bb.r, label %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !78  ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call noundef ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(44) %i.do, i32 noundef 0), !inline_history !161
  br label %_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit

_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE.exit: ; preds = %bb.p, %bb.q, %bb.r
  %.060.i = phi ptr [ %.054.lcssa.i, %bb.p ], [ %i.ds, %bb.r ], [ %.057.lcssa.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dt = getelementptr inbounds nuw i8, ptr %.060.i, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !162
  %i.dv = trunc i32 %i.du to i16
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.ad
  store i16 %i.dv, ptr %i.dx, align 2, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = load i16, ptr %i.a, align 2, !tbaa !90  ; 3 uses
  %i.dz = sext i16 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next, %i.dz
  br i1 %i.ea, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK16BiomeGenOriginal15getBiomeAtPointEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i48 %1) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.01.0.extract.trunc = zext i48 %1 to i64
  %.sroa.32.0.extract.shift = lshr i48 %1, 32
  %.sroa.32.0.extract.trunc = zext nneg i48 %.sroa.32.0.extract.shift to i64
  %sext3 = shl nuw i64 %.sroa.32.0.extract.trunc, 48
  %2 = ashr exact i64 %sext3, 48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i16, ptr %i.b, align 4, !tbaa !163
  %i.d = sext i16 %i.c to i64
  %i.e = sub nsw i64 %2, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.g = load i16, ptr %i.f, align 2, !tbaa !90
  %i.h = sext i16 %i.g to i64
  %i.i = mul nsw i64 %i.e, %i.h
  %sext4 = shl i64 %.sroa.01.0.extract.trunc, 48
  %i.j = ashr exact i64 %sext4, 48
  %i.k = load i16, ptr %i.a, align 8, !tbaa !164
  %i.l = sext i16 %i.k to i64
  %i.m = sub nsw i64 %i.j, %i.l
  %i.n = add nsw i64 %i.m, %i.i
  %sext = shl i64 %i.n, 32
  %i.o = ashr exact i64 %sext, 32                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.o
  %i.u = load float, ptr %i.t, align 4, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !99
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.o
  %i.aa = load float, ptr %i.z, align 4, !tbaa !65
  %i.ab = tail call noundef ptr @_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE(ptr noundef nonnull readonly align 8 dereferenceable(120) %0, float noundef %i.u, float noundef %i.aa, i48 %1)
  ret ptr %i.ab
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK16BiomeGenOriginal15getBiomeAtIndexEmN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1, i48 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load float, ptr %i.e, align 4, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1
  %i.l = load float, ptr %i.k, align 4, !tbaa !65
  %i.m = tail call noundef ptr @_ZNK16BiomeGenOriginal18calcBiomeFromNoiseEffN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(120) %0, float noundef %i.f, float noundef %i.l, i48 %2)
  ret ptr %i.m
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #1

declare noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK5Biome5cloneEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #21 ; 21 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.a, i8 0, i64 224, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 16, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !32
  store i8 0, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  invoke void @_ZN12NodeResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.d)
          to label %bb.c unwind label %bb.b, !inline_history !0

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6ObjDef, i64 16), ptr %i.a, align 16, !tbaa !16
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !36
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #22, !inline_history !1
  br label %.body

bb.c:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV5Biome, i64 16), ptr %i.a, align 16, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV5Biome, i64 64), ptr %i.d, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 130 ; 2 uses
  store <8 x i16> splat (i16 127), ptr %i.j, align 2, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store <4 x i16> <i16 127, i16 127, i16 127, i16 0>, ptr %i.l, align 16, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  store i16 -31007, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 186
  store i16 0, ptr %i.n, align 2, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 188 ; 2 uses
  store i16 0, ptr %i.o, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 190 ; 2 uses
  store i48 -133171788019999, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 196 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.q, ptr noundef nonnull align 2 dereferenceable(6) @_ZL27MAX_MAP_GENERATION_LIMIT_V3, i64 6, i1 false), !tbaa.struct !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 204 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.r, align 4, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 212 ; 2 uses
  store i16 0, ptr %i.s, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !67
  tail call void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73) %i.u, ptr noundef nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.w = load <8 x i16>, ptr %i.v, align 2, !tbaa !39
  store <8 x i16> %i.w, ptr %i.j, align 2, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.x) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load <4 x i16>, ptr %i.z, align 8, !tbaa !39
  store <4 x i16> %i.aa, ptr %i.l, align 16, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = load <2 x i16>, ptr %i.ab, align 8, !tbaa !39
  store <2 x i16> %i.ac, ptr %i.m, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !63
  store i16 %i.ae, ptr %i.o, align 4, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.p, ptr noundef nonnull align 2 dereferenceable(6) %i.af, i64 6, i1 false), !tbaa.struct !64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.q, ptr noundef nonnull align 4 dereferenceable(6) %i.ag, i64 6, i1 false), !tbaa.struct !64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !65
  store <2 x float> %i.ai, ptr %i.r, align 4, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !66
  store i16 %i.ak, ptr %i.s, align 4, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load float, ptr %i.al, align 8, !tbaa !67
  store float %i.am, ptr %i.t, align 8, !tbaa !67
  ret ptr %i.a

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 224) #22
  resume { ptr, i32 } %i.e
}

declare void @_ZNK6ObjDef7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZNK12NodeResolver7cloneToEPS_(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = load ptr, ptr %1, align 8, !tbaa !111    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.i = load ptr, ptr %0, align 8, !tbaa !111    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, !prof !166

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 2
  br i1 %i.p, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.o, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 2
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i16, ptr %i.c, align 2, !tbaa !39
  store i16 %i.r, ptr %i.o, align 2, !tbaa !39
  br label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit

_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !111    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #22
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit: ; preds = %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit, %bb.h
end_hunk_0
