Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHeightfieldTerrainShape?download=true
inline.NumInlined: 333
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK22ProcessTrianglesAction4execEii:bb.a
  %i.yw = sitofp i32 %1 to float
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xv, i64 72
  %i.yy = load float, ptr %i.yx, align 8, !tbaa !41
  %i.yz = insertelement <2 x float> poison, float %i.yv, i64 0
  %i.za = insertelement <2 x float> %i.yz, float %i.yy, i64 1
  %i.zb = fmul <2 x float> %i.za, <float 5.000000e-01, float 1.000000e+00>
  %i.zc = insertelement <2 x float> poison, float %i.yw, i64 0
  %i.zd = insertelement <2 x float> %i.zc, float %i.xz, i64 1
  %i.ze = fsub <2 x float> %i.zd, %i.zb
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xv, i64 104
  %i.zg = load float, ptr %i.zf, align 8, !tbaa !32
  %i.zh = fmul float %i.zg, 5.000000e-01
  %i.zi = sitofp i32 %i.qk to float
  %i.zj = fsub float %i.zi, %i.zh
  %i.zk = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float 0.000000e+00, ptr %i.zk, align 4, !tbaa !41
  br label %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit115

bb.am:                                            ; preds = %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit108
  %i.zl = getelementptr inbounds nuw i8, ptr %i.xv, i64 100
  %i.zm = sitofp <2 x i32> %i.qn to <2 x float>
  %i.zn = load <2 x float>, ptr %i.zl, align 4, !tbaa !41
  %i.zo = fmul <2 x float> %i.zn, splat (float 5.000000e-01)
  %i.zp = fsub <2 x float> %i.zm, %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xv, i64 76
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !41
  %i.zs = fsub float %i.xz, %i.zr
  %i.zt = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float 0.000000e+00, ptr %i.zt, align 4, !tbaa !41
  br label %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit115

_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit115: ; preds = %._crit_edge.i109, %bb.ak, %bb.al, %bb.am
  %i.zu = phi float [ %.pre25.i114, %._crit_edge.i109 ], [ %i.zs, %bb.am ], [ %i.zj, %bb.al ], [ %i.ys, %bb.ak ]
  %i.zv = phi <2 x float> [ %i.yc, %._crit_edge.i109 ], [ %i.zp, %bb.am ], [ %i.ze, %bb.al ], [ %i.yn, %bb.ak ]
  %i.zw = getelementptr inbounds nuw i8, ptr %i.xv, i64 132
  %i.zx = load <2 x float>, ptr %i.zw, align 4, !tbaa !41
  %i.zy = fmul <2 x float> %i.zv, %i.zx
  store <2 x float> %i.zy, ptr %i.qo, align 16, !tbaa !41
  %i.zz = getelementptr inbounds nuw i8, ptr %i.xv, i64 140
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !41
  %i.aab = fmul float %i.zu, %i.aaa
  store float %i.aab, ptr %i.sv, align 8, !tbaa !41
  %i.aac = load ptr, ptr %0, align 8, !tbaa !52   ; 13 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !10
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 136
  %i.aaf = load ptr, ptr %i.aae, align 8
  %i.aag = call noundef float %i.aaf(ptr noundef nonnull align 8 dereferenceable(208) %i.aac, i32 noundef %i.sy, i32 noundef %i.qk), !inline_history !47 ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aac, i64 128
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !40
  switch i32 %i.aai, label %._crit_edge.i116 [
    i32 0, label %bb.an
    i32 1, label %bb.ao
    i32 2, label %bb.ap
  ]

._crit_edge.i116:                                 ; preds = %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit115
  %i.aaj = load <2 x float>, ptr %i.ta, align 16, !tbaa !41
  %.pre25.i121 = load float, ptr %i.vh, align 8, !tbaa !41
  br label %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit122

bb.an:                                            ; preds = %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit115
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aac, i64 68
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aac, i64 100
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !31
  %i.aan = load float, ptr %i.aak, align 4, !tbaa !41
  %i.aao = insertelement <2 x float> poison, float %i.aan, i64 0
  %i.aap = insertelement <2 x float> %i.aao, float %i.aam, i64 1
  %i.aaq = fmul <2 x float> %i.aap, <float 1.000000e+00, float 5.000000e-01>
  %i.aar = sitofp i32 %i.sy to float
  %i.aas = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.aat = insertelement <2 x float> %i.aas, float %i.aar, i64 1
  %i.aau = fsub <2 x float> %i.aat, %i.aaq
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aac, i64 104
  %i.aaw = load float, ptr %i.aav, align 8, !tbaa !32
  %i.aax = fmul float %i.aaw, 5.000000e-01
  %i.aay = sitofp i32 %i.qk to float
  %i.aaz = fsub float %i.aay, %i.aax
  %i.aba = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float 0.000000e+00, ptr %i.aba, align 4, !tbaa !41
  br label %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit122

bb.ao:                                            ; preds = %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit115
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aac, i64 100
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !31
  %i.abd = sitofp i32 %i.sy to float
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aac, i64 72
  %i.abf = load float, ptr %i.abe, align 8, !tbaa !41
  %i.abg = insertelement <2 x float> poison, float %i.abc, i64 0
  %i.abh = insertelement <2 x float> %i.abg, float %i.abf, i64 1
  %i.abi = fmul <2 x float> %i.abh, <float 5.000000e-01, float 1.000000e+00>
  %i.abj = insertelement <2 x float> poison, float %i.abd, i64 0
  %i.abk = insertelement <2 x float> %i.abj, float %i.aag, i64 1
  %i.abl = fsub <2 x float> %i.abk, %i.abi
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aac, i64 104
  %i.abn = load float, ptr %i.abm, align 8, !tbaa !32
  %i.abo = fmul float %i.abn, 5.000000e-01
  %i.abp = sitofp i32 %i.qk to float
  %i.abq = fsub float %i.abp, %i.abo
  %i.abr = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float 0.000000e+00, ptr %i.abr, align 4, !tbaa !41
  br label %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit122

bb.ap:                                            ; preds = %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit115
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aac, i64 100
  %i.abt = add nuw nsw <2 x i32> %i.qm, splat (i32 1)
  %i.abu = sitofp <2 x i32> %i.abt to <2 x float>
  %i.abv = load <2 x float>, ptr %i.abs, align 4, !tbaa !41
  %i.abw = fmul <2 x float> %i.abv, splat (float 5.000000e-01)
  %i.abx = fsub <2 x float> %i.abu, %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %i.aac, i64 76
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !41
  %i.aca = fsub float %i.aag, %i.abz
  %i.acb = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float 0.000000e+00, ptr %i.acb, align 4, !tbaa !41
  br label %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit122

_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit122: ; preds = %._crit_edge.i116, %bb.an, %bb.ao, %bb.ap
  %i.acc = phi float [ %.pre25.i121, %._crit_edge.i116 ], [ %i.aca, %bb.ap ], [ %i.abq, %bb.ao ], [ %i.aaz, %bb.an ]
  %i.acd = phi <2 x float> [ %i.aaj, %._crit_edge.i116 ], [ %i.abx, %bb.ap ], [ %i.abl, %bb.ao ], [ %i.aau, %bb.an ]
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aac, i64 132
  %i.acf = load <2 x float>, ptr %i.ace, align 4, !tbaa !41
  %i.acg = fmul <2 x float> %i.acd, %i.acf
  store <2 x float> %i.acg, ptr %i.ta, align 16, !tbaa !41
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aac, i64 140
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !41
  %i.acj = fmul float %i.acc, %i.aci
  store float %i.acj, ptr %i.vh, align 8, !tbaa !41
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit122, %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit80
  %.sink127.in = phi ptr [ %i.vj, %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit122 ], [ %i.gx, %_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3.exit80 ]
  %.sink127 = load ptr, ptr %.sink127.in, align 8, !tbaa !55 ; 2 uses
  %i.ack = load ptr, ptr %.sink127, align 8, !tbaa !10
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  %i.acm = load ptr, ptr %i.acl, align 8
  call void %i.acm(ptr noundef nonnull align 8 dereferenceable(8) %.sink127, ptr noundef nonnull %3, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.a, %bb.aq
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z11gridRaycastI22ProcessTrianglesActionEvRT_RK9btVector3S5_Pi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !41
  %i.b = load float, ptr %1, align 4, !tbaa !41
  %i.c = fsub float %i.a, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !41
  %i.h = fsub float %i.e, %i.g                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !41
  %i.m = fsub float %i.j, %i.l                    ; 2 uses
  %i.n = fmul float %i.h, %i.h
  %i.o = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.o)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fpext float %sqrt.i.i to double
  %i.r = fcmp olt double %i.q, 1.000000e-04
  br i1 %i.r, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %3, align 4, !tbaa !44
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !41
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.t
  %i.x = load float, ptr %i.w, align 4, !tbaa !41 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !41
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aa
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !41 ; 6 uses
  %i.af = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.v, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = fsub <2 x float> %i.ag, %i.ai           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aj, %i.aj
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = extractelement <2 x float> %i.aj, i64 1 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.am) ; 3 uses
  %i.an = fpext float %sqrt to double
  %i.ao = fcmp olt double %i.an, 1.000000e-04
  %i.ap = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fdiv <2 x float> %i.aj, %i.aq
  %i.as = insertelement <2 x i1> poison, i1 %i.ao, i64 0
  %i.at = shufflevector <2 x i1> %i.as, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.au = select <2 x i1> %i.at, <2 x float> zeroinitializer, <2 x float> %i.ar ; 4 uses
  %i.av = extractelement <2 x float> %i.au, i64 1
  %4 = fcmp ule float %i.av, 0.000000e+00         ; 2 uses
  %5 = fcmp olt <2 x float> %i.au, zeroinitializer ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 1          ; 2 uses
  %7 = sext i1 %6 to i32
  %i.aw = select i1 %4, i32 %7, i32 1             ; 2 uses
  %i.ax = extractelement <2 x float> %i.au, i64 0
  %8 = fcmp ule float %i.ax, 0.000000e+00         ; 2 uses
  %9 = extractelement <2 x i1> %5, i64 0          ; 2 uses
  %10 = sext i1 %9 to i32
  %i.ay = select i1 %8, i32 %10, i32 1            ; 2 uses
  %.not = icmp eq i32 %i.aw, 0                    ; 2 uses
  %.not78 = icmp eq i32 %i.ay, 0                  ; 2 uses
  %i.az = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.au)
  %i.ba = fdiv <2 x float> splat (float 1.000000e+00), %i.az ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 1 ; 3 uses
  %i.bc = select i1 %.not, float f0x4B18967F, float %i.bb ; 2 uses
  %i.bd = extractelement <2 x float> %i.ba, i64 0 ; 3 uses
  %i.be = select i1 %.not78, float f0x4B18967F, float %i.bd ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = tail call noundef float @llvm.ceil.f32(float %i.x)
  %i.bg = fsub float %i.bf, %i.x
  %i.bh = fmul float %i.bb, %i.bg
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bi = tail call noundef float @llvm.floor.f32(float %i.x)
  %i.bj = fsub float %i.x, %i.bi
  %i.bk = fmul float %i.bb, %i.bj
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.071 = phi float [ %i.bh, %bb.d ], [ %i.bk, %bb.e ], [ f0x4B18967F, %bb.b ] ; 2 uses
  br i1 %.not78, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = tail call noundef float @llvm.ceil.f32(float %i.ae)
  %i.bm = fsub float %i.bl, %i.ae
  %i.bn = fmul float %i.bd, %i.bm
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bo = tail call noundef float @llvm.floor.f32(float %i.ae)
  %i.bp = fsub float %i.ae, %i.bo
  %i.bq = fmul float %i.bd, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %.0 = phi float [ %i.bn, %bb.h ], [ %i.bq, %bb.i ], [ f0x4B18967F, %bb.f ] ; 2 uses
  %i.br = tail call noundef float @llvm.floor.f32(float %i.x)
  %i.bs = fptosi float %i.br to i32
  %i.bt = tail call noundef float @llvm.floor.f32(float %i.ae)
  %i.bu = fptosi float %i.bt to i32
  %i.bv = fcmp oeq float %.071, 0.000000e+00      ; 2 uses
  %narrow = and i1 %6, %i.bv
  %spec.select = sext i1 %narrow to i32
  %.sroa.0.0 = add nsw i32 %i.bs, %spec.select
  %.172 = select i1 %i.bv, float %i.bc, float %.071
  %i.bw = fcmp oeq float %.0, 0.000000e+00        ; 2 uses
  %narrow92 = and i1 %9, %i.bw
  %spec.select91 = sext i1 %narrow92 to i32
  %.sroa.9.0 = add nsw i32 %i.bu, %spec.select91
  %.1 = select i1 %i.bw, float %i.be, float %.0
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %bb.j ], [ %.sroa.9.2, %bb.n ] ; 3 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.j ], [ %.sroa.0.2, %bb.n ] ; 3 uses
  %.273 = phi float [ %.172, %bb.j ], [ %.374, %bb.n ] ; 4 uses
  %.2 = phi float [ %.1, %bb.j ], [ %.3, %bb.n ]  ; 4 uses
  %i.bx = fcmp olt float %.273, %.2
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %.sroa.0.1, %i.aw
  %i.bz = fadd float %i.bc, %.273
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ca = add nsw i32 %.sroa.9.1, %i.ay
  %i.cb = fadd float %i.be, %.2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.24.1 = phi float [ %.273, %bb.l ], [ %.2, %bb.m ]
  %.sroa.9.2 = phi i32 [ %.sroa.9.1, %bb.l ], [ %i.ca, %bb.m ]
  %.sroa.0.2 = phi i32 [ %i.by, %bb.l ], [ %.sroa.0.1, %bb.m ]
  %.374 = phi float [ %i.bz, %bb.l ], [ %.273, %bb.m ]
  %.3 = phi float [ %.2, %bb.l ], [ %i.cb, %bb.m ]
  %i.cc = fcmp ogt float %.sroa.24.1, %sqrt
  tail call void @_ZNK22ProcessTrianglesAction4execEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.sroa.0.1, i32 noundef %.sroa.9.1)
  br i1 %i.cc, label %.loopexit, label %bb.k, !llvm.loop !89

.loopexit:                                        ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z11gridRaycastI20ProcessVBoundsActionEvRT_RK9btVector3S5_Pi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %4 = alloca %"struct.(anonymous namespace)::GridRaycastState", align 4 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = load float, ptr %2, align 4, !tbaa !41
  %i.b = load float, ptr %1, align 4, !tbaa !41
  %i.c = fsub float %i.a, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !41
  %i.h = fsub float %i.e, %i.g                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !41
  %i.m = fsub float %i.j, %i.l                    ; 2 uses
  %i.n = fmul float %i.h, %i.h
  %i.o = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.o)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %sqrt.i.i, ptr %i.q, align 4, !tbaa !62
  %i.r = fpext float %sqrt.i.i to double
  %i.s = fcmp olt double %i.r, 1.000000e-04
  br i1 %i.s, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %3, align 4, !tbaa !44
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %2, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !41
  %i.x = getelementptr inbounds [4 x i8], ptr %1, i64 %i.u
  %i.y = load float, ptr %i.x, align 4, !tbaa !41 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !44
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !41
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %i.af = load float, ptr %i.ae, align 4, !tbaa !41 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.w, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.y, i64 1
  %i.al = fsub <2 x float> %i.ai, %i.ak           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.al, %i.al
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ao) ; 5 uses
  store float %sqrt, ptr %i.ag, align 4, !tbaa !63
  %i.ap = fpext float %sqrt to double
  %i.aq = fcmp olt double %i.ap, 1.000000e-04
  %i.ar = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x float> %i.al, %i.as
  %i.au = insertelement <2 x i1> poison, i1 %i.aq, i64 0
  %i.av = shufflevector <2 x i1> %i.au, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aw = select <2 x i1> %i.av, <2 x float> zeroinitializer, <2 x float> %i.at ; 4 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 1
  %i.ay = fcmp ule float %i.ax, 0.000000e+00      ; 2 uses
  %i.az = fcmp olt <2 x float> %i.aw, zeroinitializer ; 2 uses
  %i.ba = extractelement <2 x i1> %i.az, i64 1    ; 2 uses
  %i.bb = sext i1 %i.ba to i32
  %i.bc = select i1 %i.ay, i32 %i.bb, i32 1       ; 2 uses
  %i.bd = extractelement <2 x float> %i.aw, i64 0
  %i.be = fcmp ule float %i.bd, 0.000000e+00      ; 2 uses
  %i.bf = extractelement <2 x i1> %i.az, i64 0    ; 2 uses
  %i.bg = sext i1 %i.bf to i32
  %i.bh = select i1 %i.be, i32 %i.bg, i32 1       ; 2 uses
  %.not = icmp eq i32 %i.bc, 0                    ; 2 uses
  %.not78 = icmp eq i32 %i.bh, 0                  ; 2 uses
  %i.bi = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aw)
  %i.bj = fdiv <2 x float> splat (float 1.000000e+00), %i.bi ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 1 ; 3 uses
  %i.bl = select i1 %.not, float f0x4B18967F, float %i.bk ; 2 uses
  %i.bm = extractelement <2 x float> %i.bj, i64 0 ; 3 uses
  %i.bn = select i1 %.not78, float f0x4B18967F, float %i.bm ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = tail call noundef float @llvm.ceil.f32(float %i.y)
  %i.bp = fsub float %i.bo, %i.y
  %i.bq = fmul float %i.bk, %i.bp
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.br = tail call noundef float @llvm.floor.f32(float %i.y)
  %i.bs = fsub float %i.y, %i.br
  %i.bt = fmul float %i.bk, %i.bs
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.071 = phi float [ %i.bq, %bb.d ], [ %i.bt, %bb.e ], [ f0x4B18967F, %bb.b ] ; 3 uses
  br i1 %.not78, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.be, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = tail call noundef float @llvm.ceil.f32(float %i.af)
  %i.bv = fsub float %i.bu, %i.af
  %i.bw = fmul float %i.bm, %i.bv
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bx = tail call noundef float @llvm.floor.f32(float %i.af)
  %i.by = fsub float %i.af, %i.bx
  %i.bz = fmul float %i.bm, %i.by
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %.0 = phi float [ %i.bw, %bb.h ], [ %i.bz, %bb.i ], [ f0x4B18967F, %bb.f ] ; 3 uses
  %i.ca = tail call noundef float @llvm.floor.f32(float %i.y)
  %i.cb = fptosi float %i.ca to i32               ; 4 uses
  store i32 %i.cb, ptr %4, align 4, !tbaa !91
  %i.cc = tail call noundef float @llvm.floor.f32(float %i.af)
  %i.cd = fptosi float %i.cc to i32               ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !92
  %i.cf = fcmp oeq float %.071, 0.000000e+00
  br i1 %i.cf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cg = fadd float %i.bl, %.071                 ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.ch, ptr %4, align 4, !tbaa !91
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ci = phi i32 [ %i.ch, %bb.l ], [ %i.cb, %bb.k ], [ %i.cb, %bb.j ]
  %.172 = phi float [ %i.cg, %bb.l ], [ %i.cg, %bb.k ], [ %.071, %bb.j ]
  %i.cj = fcmp oeq float %.0, 0.000000e+00
  br i1 %i.cj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ck = fadd float %i.bn, %.0                   ; 2 uses
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !92
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.cm = phi i32 [ %i.cl, %bb.o ], [ %i.cd, %bb.n ], [ %i.cd, %bb.m ]
  %.1 = phi float [ %i.ck, %bb.o ], [ %i.ck, %bb.n ], [ %.0, %bb.m ]
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 20
end_hunk_0
begin_hunk_1_@llvm.ceil.f32
; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK20ProcessVBoundsActionclERKN12_GLOBAL__N_116GridRaycastStateE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 6 uses
  %3 = alloca %class.btVector3, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65   ; 3 uses
  %i.e = icmp slt i32 %i.b, 0
  %i.f = icmp slt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %.not = icmp slt i32 %i.b, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %.not25 = icmp slt i32 %i.d, %i.j
  %or.cond27 = select i1 %.not, i1 %.not25, i1 false
  br i1 %or.cond27, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !104, !nonnull !46, !align !105
  %i.l = mul nuw nsw i32 %i.h, %i.d
  %i.m = add nuw nsw i32 %i.l, %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.sroa.05.0.copyload = load float, ptr %i.q, align 4, !tbaa !41 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !63 ; 2 uses
  %i.t = fpext float %i.s to double
  %i.u = fcmp ogt double %i.t, 1.000000e-04
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !60
  %i.x = sitofp i32 %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load float, ptr %i.y, align 4, !tbaa !62
  %i.aa = fmul float %i.z, %i.x
  %i.ab = fdiv float %i.aa, %i.s                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !66
  %i.ae = fmul float %i.ad, %i.ab                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !67
  %i.ah = fmul float %i.ag, %i.ab                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = load float, ptr %i.ak, align 4, !tbaa !41 ; 2 uses
  %i.am = fmul float %i.ae, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = load float, ptr %i.an, align 4, !tbaa !41 ; 2 uses
  %i.ap = fadd float %i.am, %i.ao
  %.sroa.3.12.vec.insert.i30 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i30, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !34
  %i.aq = fmul float %i.ah, %i.al
  %i.ar = load <2 x float>, ptr %i.aj, align 4, !tbaa !41 ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = fmul float %i.as, %i.ae
  %i.au = extractelement <2 x float> %i.ar, i64 1
  %i.av = fmul float %i.ae, %i.au
  %i.aw = load <2 x float>, ptr %i.ai, align 4, !tbaa !41 ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  %i.ay = fadd float %i.at, %i.ax
  %i.az = extractelement <2 x float> %i.aw, i64 1
  %i.ba = fadd float %i.av, %i.az                 ; 3 uses
  %.sroa.0.0.vec.insert.i28 = insertelement <2 x float> poison, float %i.ay, i64 0
  %.sroa.0.4.vec.insert.i29 = insertelement <2 x float> %.sroa.0.0.vec.insert.i28, float %i.ba, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i29, ptr %2, align 8
  %i.bb = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.ar, %i.bc
  %i.be = fadd <2 x float> %i.bd, %i.aw
  %i.bf = fadd float %i.aq, %i.ao
  %.sroa.3.12.vec.insert.i40 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  store <2 x float> %i.be, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i40, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !34
  %i.bg = fcmp ogt float %i.ba, %.sroa.5.0.copyload
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !44
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !41
  %i.bo = fcmp ogt float %i.bn, %.sroa.5.0.copyload
  br i1 %i.bo, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bp = fcmp olt float %i.ba, %.sroa.05.0.copyload
  br i1 %i.bp, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !44
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !41
  %i.bx = fcmp olt float %i.bw, %.sroa.05.0.copyload
  br i1 %i.bx, label %bb.i, label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !48
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59
  call void @_Z11gridRaycastIK22ProcessTrianglesActionEvRT_RK9btVector3S6_Pi(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.cc)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z11gridRaycastIK22ProcessTrianglesActionEvRT_RK9btVector3S6_Pi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !41
  %i.b = load float, ptr %1, align 4, !tbaa !41
  %i.c = fsub float %i.a, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !41
  %i.h = fsub float %i.e, %i.g                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !41
  %i.m = fsub float %i.j, %i.l                    ; 2 uses
  %i.n = fmul float %i.h, %i.h
  %i.o = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.o)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fpext float %sqrt.i.i to double
  %i.r = fcmp olt double %i.q, 1.000000e-04
  br i1 %i.r, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %3, align 4, !tbaa !44
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !41
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.t
  %i.x = load float, ptr %i.w, align 4, !tbaa !41 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !41
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aa
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !41 ; 6 uses
  %i.af = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.v, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = fsub <2 x float> %i.ag, %i.ai           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aj, %i.aj
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = extractelement <2 x float> %i.aj, i64 1 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.am) ; 3 uses
  %i.an = fpext float %sqrt to double
  %i.ao = fcmp olt double %i.an, 1.000000e-04
  %i.ap = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fdiv <2 x float> %i.aj, %i.aq
  %i.as = insertelement <2 x i1> poison, i1 %i.ao, i64 0
  %i.at = shufflevector <2 x i1> %i.as, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.au = select <2 x i1> %i.at, <2 x float> zeroinitializer, <2 x float> %i.ar ; 4 uses
  %i.av = extractelement <2 x float> %i.au, i64 1
  %4 = fcmp ule float %i.av, 0.000000e+00         ; 2 uses
  %5 = fcmp olt <2 x float> %i.au, zeroinitializer ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 1          ; 2 uses
  %7 = sext i1 %6 to i32
  %i.aw = select i1 %4, i32 %7, i32 1             ; 2 uses
  %i.ax = extractelement <2 x float> %i.au, i64 0
  %8 = fcmp ule float %i.ax, 0.000000e+00         ; 2 uses
  %9 = extractelement <2 x i1> %5, i64 0          ; 2 uses
  %10 = sext i1 %9 to i32
  %i.ay = select i1 %8, i32 %10, i32 1            ; 2 uses
  %.not = icmp eq i32 %i.aw, 0                    ; 2 uses
  %.not78 = icmp eq i32 %i.ay, 0                  ; 2 uses
  %i.az = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.au)
  %i.ba = fdiv <2 x float> splat (float 1.000000e+00), %i.az ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 1 ; 3 uses
  %i.bc = select i1 %.not, float f0x4B18967F, float %i.bb ; 2 uses
  %i.bd = extractelement <2 x float> %i.ba, i64 0 ; 3 uses
  %i.be = select i1 %.not78, float f0x4B18967F, float %i.bd ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = tail call noundef float @llvm.ceil.f32(float %i.x)
  %i.bg = fsub float %i.bf, %i.x
  %i.bh = fmul float %i.bb, %i.bg
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bi = tail call noundef float @llvm.floor.f32(float %i.x)
  %i.bj = fsub float %i.x, %i.bi
  %i.bk = fmul float %i.bb, %i.bj
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.071 = phi float [ %i.bh, %bb.d ], [ %i.bk, %bb.e ], [ f0x4B18967F, %bb.b ] ; 2 uses
  br i1 %.not78, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = tail call noundef float @llvm.ceil.f32(float %i.ae)
  %i.bm = fsub float %i.bl, %i.ae
  %i.bn = fmul float %i.bd, %i.bm
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bo = tail call noundef float @llvm.floor.f32(float %i.ae)
  %i.bp = fsub float %i.ae, %i.bo
  %i.bq = fmul float %i.bd, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %.0 = phi float [ %i.bn, %bb.h ], [ %i.bq, %bb.i ], [ f0x4B18967F, %bb.f ] ; 2 uses
  %i.br = tail call noundef float @llvm.floor.f32(float %i.x)
  %i.bs = fptosi float %i.br to i32
  %i.bt = tail call noundef float @llvm.floor.f32(float %i.ae)
  %i.bu = fptosi float %i.bt to i32
  %i.bv = fcmp oeq float %.071, 0.000000e+00      ; 2 uses
  %narrow = and i1 %6, %i.bv
  %spec.select = sext i1 %narrow to i32
  %.sroa.0.0 = add nsw i32 %i.bs, %spec.select
  %.172 = select i1 %i.bv, float %i.bc, float %.071
  %i.bw = fcmp oeq float %.0, 0.000000e+00        ; 2 uses
  %narrow92 = and i1 %9, %i.bw
  %spec.select91 = sext i1 %narrow92 to i32
  %.sroa.9.0 = add nsw i32 %i.bu, %spec.select91
  %.1 = select i1 %i.bw, float %i.be, float %.0
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %bb.j ], [ %.sroa.9.2, %bb.n ] ; 3 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.j ], [ %.sroa.0.2, %bb.n ] ; 3 uses
  %.273 = phi float [ %.172, %bb.j ], [ %.374, %bb.n ] ; 4 uses
  %.2 = phi float [ %.1, %bb.j ], [ %.3, %bb.n ]  ; 4 uses
  %i.bx = fcmp olt float %.273, %.2
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %.sroa.0.1, %i.aw
  %i.bz = fadd float %i.bc, %.273
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ca = add nsw i32 %.sroa.9.1, %i.ay
  %i.cb = fadd float %i.be, %.2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.24.1 = phi float [ %.273, %bb.l ], [ %.2, %bb.m ]
  %.sroa.9.2 = phi i32 [ %.sroa.9.1, %bb.l ], [ %i.ca, %bb.m ]
  %.sroa.0.2 = phi i32 [ %i.by, %bb.l ], [ %.sroa.0.1, %bb.m ]
  %.374 = phi float [ %i.bz, %bb.l ], [ %.273, %bb.m ]
  %.3 = phi float [ %.2, %bb.l ], [ %i.cb, %bb.m ]
  %i.cc = fcmp ogt float %.sroa.24.1, %sqrt
  tail call void @_ZNK22ProcessTrianglesAction4execEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.sroa.0.1, i32 noundef %.sroa.9.1)
  br i1 %i.cc, label %.loopexit, label %bb.k, !llvm.loop !106

.loopexit:                                        ; preds = %bb.n, %bb.a
  ret void
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTS18btAlignedAllocatorIN25btHeightfieldTerrainShape5RangeELj16EE"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN25btHeightfieldTerrainShape5RangeE", !12, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"_ZTS20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE", !11, i64 0, !6, i64 4, !6, i64 8, !13, i64 16, !14, i64 24}
!16 = !{!15, !14, i64 24}
!17 = !{!15, !13, i64 16}
!18 = !{!15, !6, i64 4}
!19 = !{!15, !6, i64 8}
!20 = !{!"_ZTS16btCollisionShape", !6, i64 8, !12, i64 16, !6, i64 24, !6, i64 28}
!21 = !{!"float", !5, i64 0}
!22 = !{!"_ZTS14btConcaveShape", !20, i64 0, !21, i64 32}
!23 = !{!"_ZTS9btVector3", !5, i64 0}
!24 = !{!"_ZTS14PHY_ScalarType", !5, i64 0}
!25 = !{!"p1 _ZTS17btTriangleInfoMap", !12, i64 0}
!26 = !{!"_ZTS25btHeightfieldTerrainShape", !22, i64 0, !23, i64 36, !23, i64 52, !23, i64 68, !6, i64 84, !6, i64 88, !21, i64 92, !21, i64 96, !21, i64 100, !21, i64 104, !21, i64 108, !5, i64 112, !24, i64 120, !14, i64 124, !14, i64 125, !14, i64 126, !14, i64 127, !6, i64 128, !23, i64 132, !15, i64 152, !6, i64 184, !6, i64 188, !6, i64 192, !21, i64 196, !25, i64 200}
!27 = !{!26, !21, i64 196}
!28 = !{!26, !25, i64 200}
!29 = !{!26, !6, i64 84}
!30 = !{!26, !6, i64 88}
!31 = !{!26, !21, i64 100}
!32 = !{!26, !21, i64 104}
!33 = !{!26, !21, i64 108}
!34 = !{!5, !5, i64 0}
!35 = !{!26, !24, i64 120}
!36 = !{!26, !14, i64 124}
!37 = !{!26, !14, i64 125}
!38 = !{!26, !14, i64 126}
!39 = !{!26, !14, i64 127}
!40 = !{!26, !6, i64 128}
!41 = !{!21, !21, i64 0}
!42 = !{!26, !6, i64 192}
!43 = !{i8 0, i8 2}
!44 = !{!6, !6, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{}
!47 = !{ptr @_ZNK25btHeightfieldTerrainShape9getVertexEiiR9btVector3}
!48 = !{i64 0, i64 16, !34}
!49 = !{!"p1 _ZTS25btHeightfieldTerrainShape", !12, i64 0}
!50 = !{!"p1 _ZTS18btTriangleCallback", !12, i64 0}
!51 = !{!"_ZTS22ProcessTrianglesAction", !49, i64 0, !14, i64 8, !14, i64 9, !6, i64 12, !6, i64 16, !50, i64 24}
!52 = !{!51, !49, i64 0}
!53 = !{!51, !14, i64 8}
!54 = !{!51, !14, i64 9}
!55 = !{!51, !50, i64 24}
!56 = !{!"p1 _ZTS20btAlignedObjectArrayIN25btHeightfieldTerrainShape5RangeEE", !12, i64 0}
!57 = !{!"p1 int", !12, i64 0}
!58 = !{!"_ZTS20ProcessVBoundsAction", !56, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !23, i64 20, !23, i64 36, !23, i64 52, !57, i64 72, !51, i64 80}
!59 = !{!58, !57, i64 72}
!60 = !{!58, !6, i64 16}
!61 = !{!"_ZTSN12_GLOBAL__N_116GridRaycastStateE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28}
!62 = !{!61, !21, i64 28}
!63 = !{!61, !21, i64 24}
!64 = !{!61, !6, i64 8}
!65 = !{!61, !6, i64 12}
!66 = !{!61, !21, i64 20}
!67 = !{!61, !21, i64 16}
!68 = !{!22, !21, i64 32}
!69 = !{!20, !6, i64 8}
!70 = !{!26, !21, i64 92}
!71 = !{!26, !21, i64 96}
!72 = !{!26, !6, i64 184}
!73 = !{!26, !6, i64 188}
!74 = !{ptr @_ZN25btHeightfieldTerrainShapeD2Ev}
!75 = distinct !{!75, i1 false, !"_ZNK11btMatrix3x38absoluteEv"}
!76 = distinct !{!76, !75, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!77 = !{!76}
!78 = !{!"double", !5, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"short", !5, i64 0}
!81 = !{!80, !80, i64 0}
!82 = distinct !{!82, !45}
!83 = distinct !{!83, !45}
!84 = !{!56, !56, i64 0}
!85 = !{!49, !49, i64 0}
!86 = !{!14, !14, i64 0}
!87 = !{!50, !50, i64 0}
!88 = !{i64 0, i64 8, !85, i64 8, i64 1, !86, i64 9, i64 1, !86, i64 12, i64 4, !44, i64 16, i64 4, !44, i64 24, i64 8, !87}
!89 = distinct !{!89, !45}
!90 = distinct !{!90, !45}
!91 = !{!61, !6, i64 0}
!92 = !{!61, !6, i64 4}
!93 = distinct !{!93, !45, !100, !101}
!94 = distinct !{!94, !102}
!95 = distinct !{!95, !45, !100}
!96 = distinct !{!96, !45}
!97 = distinct !{!97, !45}
!98 = distinct !{!98, !45}
!99 = distinct !{!99, !45}
!100 = !{!"llvm.loop.isvectorized", i32 1}
!101 = !{!"llvm.loop.unroll.runtime.disable"}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = !{!58, !6, i64 8}
!104 = !{!58, !56, i64 0}
!105 = !{i64 8}
!106 = distinct !{!106, !45}
end_hunk_1
